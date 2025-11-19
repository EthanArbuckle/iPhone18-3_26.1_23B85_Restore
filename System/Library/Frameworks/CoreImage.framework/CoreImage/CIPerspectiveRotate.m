@interface CIPerspectiveRotate
+ (id)customAttributes;
- (double)outputTransform;
- (id).cxx_construct;
- (id)outputImage;
- (void)computeCameraIntrinsics;
@end

@implementation CIPerspectiveRotate

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryGeometryAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"13";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.15";
  v12[3] = @"inputFocalLength";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeDefault";
  v10[0] = @"CIAttributeTypeScalar";
  v10[1] = &unk_1F1081FC8;
  v9[2] = @"CIAttributeSliderMin";
  v9[3] = @"CIAttributeSliderMax";
  v10[2] = &unk_1F1081FE0;
  v10[3] = &unk_1F1081FF8;
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v12[4] = @"inputPitch";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypeAngle";
  v8[1] = &unk_1F1082010;
  v7[2] = @"CIAttributeIdentity";
  v7[3] = @"CIAttributeSliderMin";
  v8[2] = &unk_1F1082010;
  v8[3] = &unk_1F1084518;
  v7[4] = @"CIAttributeSliderMax";
  v8[4] = &unk_1F1084528;
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v12[5] = @"inputYaw";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeAngle";
  v6[1] = &unk_1F1082010;
  v5[2] = @"CIAttributeIdentity";
  v5[3] = @"CIAttributeSliderMin";
  v6[2] = &unk_1F1082010;
  v6[3] = &unk_1F1084518;
  v5[4] = @"CIAttributeSliderMax";
  v6[4] = &unk_1F1084528;
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v12[6] = @"inputRoll";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeAngle";
  v4[1] = &unk_1F1082010;
  v3[2] = @"CIAttributeIdentity";
  v3[3] = @"CIAttributeSliderMin";
  v4[2] = &unk_1F1082010;
  v4[3] = &unk_1F1084538;
  v3[4] = @"CIAttributeSliderMax";
  v4[4] = &unk_1F1084548;
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (void)computeCameraIntrinsics
{
  [(CIImage *)self->inputImage extent];
  v4.f64[1] = v3;
  *&v3 = v5;
  *&v6 = v6;
  v18 = *&v6;
  v19 = *&v3;
  v20 = vmla_f32(vcvt_f32_f64(v4), 0x3F0000003F000000, __PAIR64__(LODWORD(v6), LODWORD(v3)));
  [(NSNumber *)self->inputFocalLength floatValue];
  v8 = v7 / hypotf(36.0, 24.0);
  v9 = hypotf(v19, v18);
  v11.i64[0] = COERCE_UNSIGNED_INT(v8 * v9);
  v11.u64[1] = v20;
  v21.columns[0].i32[1] = 0;
  v21.columns[0].i64[1] = 0;
  v21.columns[0].f32[0] = v8 * v9;
  *v10.i32 = v21.columns[0].f32[0];
  __asm { FMOV            V3.4S, #1.0 }

  v17 = vzip2q_s32(v11, _Q3);
  *_Q3.i8 = vdup_lane_s32(v20, 1);
  v21.columns[2] = vzip1q_s32(v17, _Q3);
  v21.columns[1] = vzip2q_s32(v21.columns[0].u32[0], vdupq_lane_s32(v10, 0));
  *self->_anon_50 = v21.columns[0].u32[0];
  *&self->_anon_50[16] = v21.columns[1];
  *&self->_anon_50[32] = v21.columns[2];
  v22 = __invert_f3(v21);
  *self->_anon_80 = v22.columns[0].i64[0];
  *&self->_anon_80[8] = v22.columns[0].i32[2];
  *&self->_anon_80[16] = v22.columns[1].i64[0];
  *&self->_anon_80[24] = v22.columns[1].i32[2];
  *&self->_anon_80[32] = v22.columns[2].i64[0];
  *&self->_anon_80[40] = v22.columns[2].i32[2];
}

- (double)outputTransform
{
  [a1 computeCameraIntrinsics];
  [*(a1 + 192) floatValue];
  v3 = v2;
  [*(a1 + 200) floatValue];
  v5 = v4;
  v6 = [*(a1 + 208) floatValue];
  *v8.f32 = CI::Perspective::getRotation(v6, v3, v5, v7);
  v11 = 0;
  v12 = vaddq_f32(v10, vmlaq_f32(vmulq_f32(v8, 0), 0, v9));
  v13 = vdupq_laneq_s32(v12, 2);
  v14 = vdivq_f32(v12, v13);
  v13.f32[0] = -*v14.i32;
  *v14.i32 = -*&v14.i32[1];
  __asm { FMOV            V5.4S, #1.0 }

  v20 = vzip1q_s32(vzip2q_s32(vdupq_lane_s32(*v13.f32, 0), _Q5), v14);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v35 = xmmword_19CF28470;
  v36 = xmmword_19CF28480;
  v37 = v20;
  do
  {
    *(&v38 + v11) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v35 + v11))), v22, *(&v35 + v11), 1), v23, *(&v35 + v11), 2);
    v11 += 16;
  }

  while (v11 != 48);
  v24 = 0;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  do
  {
    *(&v38 + v24) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*(&v35 + v24))), v26, *(&v35 + v24), 1), v27, *(&v35 + v24), 2);
    v24 += 16;
  }

  while (v24 != 48);
  v28 = 0;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = *(a1 + 144);
  v33 = *(a1 + 160);
  v35 = *(a1 + 128);
  v36 = v32;
  v37 = v33;
  do
  {
    *(&v38 + v28) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v35 + v28))), v30, *(&v35 + v28), 1), v31, *(&v35 + v28), 2);
    v28 += 16;
  }

  while (v28 != 48);
  return *v38.i64;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIPerspectiveRotate *)self outputTransform];
  inputImage = self->inputImage;

  return perspectiveTransformImage(inputImage, v3);
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end