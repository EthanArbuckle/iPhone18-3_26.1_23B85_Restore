@interface CIKeystoneCorrection
+ (id)customAttributes;
- (CIFilter)outputRotationFilter;
- (double)outputTransform;
- (id).cxx_construct;
- (id)outputImage;
- (void)computeCameraIntrinsics;
@end

@implementation CIKeystoneCorrection

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryGeometryAdjustment";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"13";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.15";
  v14[3] = @"inputFocalLength";
  v11[0] = @"CIAttributeType";
  v11[1] = @"CIAttributeDefault";
  v12[0] = @"CIAttributeTypeScalar";
  v12[1] = &unk_1F1081FC8;
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputTopLeft";
  v9 = @"CIAttributeType";
  v10 = @"CIAttributeTypePosition";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[5] = @"inputTopRight";
  v7 = @"CIAttributeType";
  v8 = @"CIAttributeTypePosition";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v14[6] = @"inputBottomRight";
  v5 = @"CIAttributeType";
  v6 = @"CIAttributeTypePosition";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v14[7] = @"inputBottomLeft";
  v3 = @"CIAttributeType";
  v4 = @"CIAttributeTypePosition";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
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
  [self computeCameraIntrinsics];
  *v2.f32 = CI::Perspective::getRotation([self computeRotation], *(self + 176), *(self + 180), *(self + 184));
  v5 = 0;
  v6 = vaddq_f32(v4, vmlaq_f32(vmulq_f32(v2, 0), 0, v3));
  v7 = vdupq_laneq_s32(v6, 2);
  v8 = vdivq_f32(v6, v7);
  v7.f32[0] = -*v8.i32;
  *v8.i32 = -*&v8.i32[1];
  __asm { FMOV            V5.4S, #1.0 }

  v14 = vzip1q_s32(vzip2q_s32(vdupq_lane_s32(*v7.f32, 0), _Q5), v8);
  v15 = *(self + 80);
  v16 = *(self + 96);
  v17 = *(self + 112);
  v29 = xmmword_19CF28470;
  v30 = xmmword_19CF28480;
  v31 = v14;
  do
  {
    *(&v32 + v5) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v29 + v5))), v16, *(&v29 + v5), 1), v17, *(&v29 + v5), 2);
    v5 += 16;
  }

  while (v5 != 48);
  v18 = 0;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v29 = v2;
  v30 = v3;
  v31 = v4;
  do
  {
    *(&v32 + v18) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v29 + v18))), v20, *(&v29 + v18), 1), v21, *(&v29 + v18), 2);
    v18 += 16;
  }

  while (v18 != 48);
  v22 = 0;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v26 = *(self + 144);
  v27 = *(self + 160);
  v29 = *(self + 128);
  v30 = v26;
  v31 = v27;
  do
  {
    *(&v32 + v22) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*(&v29 + v22))), v24, *(&v29 + v22), 1), v25, *(&v29 + v22), 2);
    v22 += 16;
  }

  while (v22 != 48);
  return *v32.i64;
}

- (CIFilter)outputRotationFilter
{
  [(CIKeystoneCorrection *)self computeCameraIntrinsics];
  [(CIKeystoneCorrection *)self computeRotation];
  v3 = [CIFilter filterWithName:@"CIPerspectiveRotate"];
  [(CIFilter *)v3 setValue:self->inputImage forKey:@"inputImage"];
  [(CIFilter *)v3 setValue:self->inputFocalLength forKey:@"inputFocalLength"];
  *&v4 = self->pitch;
  -[CIFilter setValue:forKey:](v3, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v4], @"inputPitch");
  *&v5 = self->yaw;
  -[CIFilter setValue:forKey:](v3, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v5], @"inputYaw");
  *&v6 = self->roll;
  -[CIFilter setValue:forKey:](v3, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v6], @"inputRoll");
  return v3;
}

- (id)outputImage
{
  result = self->inputImage;
  if (result && self->inputBottomLeft && self->inputTopLeft && self->inputTopRight && self->inputBottomRight)
  {
    [(CIKeystoneCorrection *)self outputTransform];
    inputImage = self->inputImage;

    return perspectiveTransformImage(inputImage, v4);
  }

  return result;
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