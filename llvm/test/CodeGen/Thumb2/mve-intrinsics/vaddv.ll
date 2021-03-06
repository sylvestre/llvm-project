; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=thumbv8.1m.main -mattr=+mve.fp -verify-machineinstrs -o - %s | FileCheck %s

define arm_aapcs_vfpcc i32 @test_vaddvq_s8(<16 x i8> %a) {
; CHECK-LABEL: test_vaddvq_s8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddv.s8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v16i8(<16 x i8> %a, i32 0)
  ret i32 %0
}

define arm_aapcs_vfpcc i32 @test_vaddvq_s16(<8 x i16> %a) {
; CHECK-LABEL: test_vaddvq_s16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddv.s16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v8i16(<8 x i16> %a, i32 0)
  ret i32 %0
}

define arm_aapcs_vfpcc i32 @test_vaddvq_s32(<4 x i32> %a) {
; CHECK-LABEL: test_vaddvq_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddv.s32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v4i32(<4 x i32> %a, i32 0)
  ret i32 %0
}

define arm_aapcs_vfpcc i32 @test_vaddvq_u8(<16 x i8> %a) {
; CHECK-LABEL: test_vaddvq_u8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddv.u8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v16i8(<16 x i8> %a, i32 1)
  ret i32 %0
}

define arm_aapcs_vfpcc i32 @test_vaddvq_u16(<8 x i16> %a) {
; CHECK-LABEL: test_vaddvq_u16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddv.u16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v8i16(<8 x i16> %a, i32 1)
  ret i32 %0
}

define arm_aapcs_vfpcc i32 @test_vaddvq_u32(<4 x i32> %a) {
; CHECK-LABEL: test_vaddvq_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddv.u32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v4i32(<4 x i32> %a, i32 1)
  ret i32 %0
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_s8(i32 %a, <16 x i8> %b) {
; CHECK-LABEL: test_vaddvaq_s8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddva.s8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v16i8(<16 x i8> %b, i32 0)
  %1 = add i32 %0, %a
  ret i32 %1
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_s16(i32 %a, <8 x i16> %b) {
; CHECK-LABEL: test_vaddvaq_s16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddva.s16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v8i16(<8 x i16> %b, i32 0)
  %1 = add i32 %0, %a
  ret i32 %1
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_s32(i32 %a, <4 x i32> %b) {
; CHECK-LABEL: test_vaddvaq_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddva.s32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v4i32(<4 x i32> %b, i32 0)
  %1 = add i32 %0, %a
  ret i32 %1
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_u8(i32 %a, <16 x i8> %b) {
; CHECK-LABEL: test_vaddvaq_u8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddva.u8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v16i8(<16 x i8> %b, i32 1)
  %1 = add i32 %0, %a
  ret i32 %1
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_u16(i32 %a, <8 x i16> %b) {
; CHECK-LABEL: test_vaddvaq_u16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddva.u16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v8i16(<8 x i16> %b, i32 1)
  %1 = add i32 %0, %a
  ret i32 %1
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_u32(i32 %a, <4 x i32> %b) {
; CHECK-LABEL: test_vaddvaq_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddva.u32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i32 @llvm.arm.mve.addv.v4i32(<4 x i32> %b, i32 1)
  %1 = add i32 %0, %a
  ret i32 %1
}

define arm_aapcs_vfpcc i32 @test_vaddvq_p_s8(<16 x i8> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvq_p_s8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvt.s8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <16 x i1> @llvm.arm.mve.pred.i2v.v16i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v16i8.v16i1(<16 x i8> %a, i32 0, <16 x i1> %1)
  ret i32 %2
}

define arm_aapcs_vfpcc i32 @test_vaddvq_p_s16(<8 x i16> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvq_p_s16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvt.s16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <8 x i1> @llvm.arm.mve.pred.i2v.v8i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v8i16.v8i1(<8 x i16> %a, i32 0, <8 x i1> %1)
  ret i32 %2
}

define arm_aapcs_vfpcc i32 @test_vaddvq_p_s32(<4 x i32> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvq_p_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvt.s32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v4i32.v4i1(<4 x i32> %a, i32 0, <4 x i1> %1)
  ret i32 %2
}

define arm_aapcs_vfpcc i32 @test_vaddvq_p_u8(<16 x i8> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvq_p_u8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvt.u8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <16 x i1> @llvm.arm.mve.pred.i2v.v16i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v16i8.v16i1(<16 x i8> %a, i32 1, <16 x i1> %1)
  ret i32 %2
}

define arm_aapcs_vfpcc i32 @test_vaddvq_p_u16(<8 x i16> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvq_p_u16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvt.u16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <8 x i1> @llvm.arm.mve.pred.i2v.v8i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v8i16.v8i1(<8 x i16> %a, i32 1, <8 x i1> %1)
  ret i32 %2
}

define arm_aapcs_vfpcc i32 @test_vaddvq_p_u32(<4 x i32> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvq_p_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvt.u32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v4i32.v4i1(<4 x i32> %a, i32 1, <4 x i1> %1)
  ret i32 %2
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_p_s8(i32 %a, <16 x i8> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvaq_p_s8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r1
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvat.s8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <16 x i1> @llvm.arm.mve.pred.i2v.v16i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v16i8.v16i1(<16 x i8> %b, i32 0, <16 x i1> %1)
  %3 = add i32 %2, %a
  ret i32 %3
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_p_s16(i32 %a, <8 x i16> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvaq_p_s16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r1
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvat.s16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <8 x i1> @llvm.arm.mve.pred.i2v.v8i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v8i16.v8i1(<8 x i16> %b, i32 0, <8 x i1> %1)
  %3 = add i32 %2, %a
  ret i32 %3
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_p_s32(i32 %a, <4 x i32> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvaq_p_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r1
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvat.s32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v4i32.v4i1(<4 x i32> %b, i32 0, <4 x i1> %1)
  %3 = add i32 %2, %a
  ret i32 %3
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_p_u8(i32 %a, <16 x i8> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvaq_p_u8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r1
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvat.u8 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <16 x i1> @llvm.arm.mve.pred.i2v.v16i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v16i8.v16i1(<16 x i8> %b, i32 1, <16 x i1> %1)
  %3 = add i32 %2, %a
  ret i32 %3
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_p_u16(i32 %a, <8 x i16> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvaq_p_u16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r1
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvat.u16 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <8 x i1> @llvm.arm.mve.pred.i2v.v8i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v8i16.v8i1(<8 x i16> %b, i32 1, <8 x i1> %1)
  %3 = add i32 %2, %a
  ret i32 %3
}

define arm_aapcs_vfpcc i32 @test_vaddvaq_p_u32(i32 %a, <4 x i32> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddvaq_p_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r1
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddvat.u32 r0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i32 @llvm.arm.mve.addv.predicated.v4i32.v4i1(<4 x i32> %b, i32 1, <4 x i1> %1)
  %3 = add i32 %2, %a
  ret i32 %3
}

define arm_aapcs_vfpcc i64 @test_vaddlvq_s32(<4 x i32> %a) {
; CHECK-LABEL: test_vaddlvq_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddlv.s32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i64 @llvm.arm.mve.addlv.v4i32(<4 x i32> %a, i32 0)
  ret i64 %0
}

define arm_aapcs_vfpcc i64 @test_vaddlvq_u32(<4 x i32> %a) {
; CHECK-LABEL: test_vaddlvq_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddlv.u32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i64 @llvm.arm.mve.addlv.v4i32(<4 x i32> %a, i32 1)
  ret i64 %0
}

define arm_aapcs_vfpcc i64 @test_vaddlvaq_s32(i64 %a, <4 x i32> %b) {
; CHECK-LABEL: test_vaddlvaq_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddlva.s32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i64 @llvm.arm.mve.addlv.v4i32(<4 x i32> %b, i32 0)
  %1 = add i64 %0, %a
  ret i64 %1
}

define arm_aapcs_vfpcc i64 @test_vaddlvaq_u32(i64 %a, <4 x i32> %b) {
; CHECK-LABEL: test_vaddlvaq_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vaddlva.u32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = tail call i64 @llvm.arm.mve.addlv.v4i32(<4 x i32> %b, i32 1)
  %1 = add i64 %0, %a
  ret i64 %1
}

define arm_aapcs_vfpcc i64 @test_vaddlvq_p_s32(<4 x i32> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddlvq_p_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddlvt.s32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i64 @llvm.arm.mve.addlv.predicated.v4i32.v4i1(<4 x i32> %a, i32 0, <4 x i1> %1)
  ret i64 %2
}

define arm_aapcs_vfpcc i64 @test_vaddlvq_p_u32(<4 x i32> %a, i16 zeroext %p) {
; CHECK-LABEL: test_vaddlvq_p_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r0
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddlvt.u32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i64 @llvm.arm.mve.addlv.predicated.v4i32.v4i1(<4 x i32> %a, i32 1, <4 x i1> %1)
  ret i64 %2
}

define arm_aapcs_vfpcc i64 @test_vaddlvaq_p_s32(i64 %a, <4 x i32> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddlvaq_p_s32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r2
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddlvat.s32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i64 @llvm.arm.mve.addlv.predicated.v4i32.v4i1(<4 x i32> %b, i32 0, <4 x i1> %1)
  %3 = add i64 %2, %a
  ret i64 %3
}

define arm_aapcs_vfpcc i64 @test_vaddlvaq_p_u32(i64 %a, <4 x i32> %b, i16 zeroext %p) {
; CHECK-LABEL: test_vaddlvaq_p_u32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmsr p0, r2
; CHECK-NEXT:    vpst
; CHECK-NEXT:    vaddlvat.u32 r0, r1, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext i16 %p to i32
  %1 = tail call <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32 %0)
  %2 = tail call i64 @llvm.arm.mve.addlv.predicated.v4i32.v4i1(<4 x i32> %b, i32 1, <4 x i1> %1)
  %3 = add i64 %2, %a
  ret i64 %3
}

declare <16 x i1> @llvm.arm.mve.pred.i2v.v16i1(i32)
declare <8 x i1> @llvm.arm.mve.pred.i2v.v8i1(i32)
declare <4 x i1> @llvm.arm.mve.pred.i2v.v4i1(i32)

declare i32 @llvm.arm.mve.addv.v16i8(<16 x i8>, i32)
declare i32 @llvm.arm.mve.addv.v8i16(<8 x i16>, i32)
declare i32 @llvm.arm.mve.addv.v4i32(<4 x i32>, i32)
declare i64 @llvm.arm.mve.addlv.v4i32(<4 x i32>, i32)

declare i32 @llvm.arm.mve.addv.predicated.v16i8.v16i1(<16 x i8>, i32, <16 x i1>)
declare i32 @llvm.arm.mve.addv.predicated.v8i16.v8i1(<8 x i16>, i32, <8 x i1>)
declare i32 @llvm.arm.mve.addv.predicated.v4i32.v4i1(<4 x i32>, i32, <4 x i1>)
declare i64 @llvm.arm.mve.addlv.predicated.v4i32.v4i1(<4 x i32>, i32, <4 x i1>)
