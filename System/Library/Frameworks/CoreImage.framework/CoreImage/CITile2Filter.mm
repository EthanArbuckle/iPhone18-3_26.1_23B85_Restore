@interface CITile2Filter
+ (id)customAttributes;
- (CGRect)_roiRect;
- (double)_roiArea;
- (float32x2_t)_roiCenter;
- (id)_singlePixelImage;
- (id)outputImage;
@end

@implementation CITile2Filter

+ (id)customAttributes
{
  v15[7] = *MEMORY[0x1E69E9840];
  v2 = atan(1.0) * 4.0;
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryTileEffect";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v15[1] = @"6";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.5";
  v14[3] = @"inputCenter";
  v11[0] = @"CIAttributeDefault";
  v11[1] = @"CIAttributeType";
  v12[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v12[1] = @"CIAttributeTypePosition";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputAngle";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1084858;
  v10[1] = &unk_1F1084868;
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeIdentity";
  v10[2] = &unk_1F1084878;
  v10[3] = &unk_1F1084878;
  v9[4] = @"CIAttributeType";
  v10[4] = @"CIAttributeTypeAngle";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v14[5] = @"inputAcuteAngle";
  v7[0] = @"CIAttributeSliderMin";
  v8[0] = [MEMORY[0x1E696AD98] numberWithDouble:-v2];
  v7[1] = @"CIAttributeSliderMax";
  v8[1] = [MEMORY[0x1E696AD98] numberWithDouble:v2];
  v7[2] = @"CIAttributeDefault";
  v3 = v2 * 0.5;
  v8[2] = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v7[3] = @"CIAttributeIdentity";
  v7[4] = @"CIAttributeType";
  v8[3] = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v8[4] = @"CIAttributeTypeAngle";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v14[6] = @"inputWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084878;
  v6[1] = &unk_1F1084888;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084898;
  v6[3] = &unk_1F10848A8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10848A8;
  v6[5] = @"CIAttributeTypeDistance";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];
}

- (CGRect)_roiRect
{
  [(NSNumber *)self->super.inputWidth doubleValue];
  v4 = v3;
  [(NSNumber *)self->super.inputAngle doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputAcuteAngle doubleValue];
  v8 = v7;
  v9 = __sincos_stret(v6);
  v10 = v4 * v9.__cosval;
  v11 = v4 * v9.__sinval;
  v12 = __sincos_stret(v6 + v8);
  v13 = v4 * v12.__cosval;
  v14 = v4 * v12.__sinval;
  [(CIVector *)self->super.inputCenter X];
  v32 = v15;
  [(CIVector *)self->super.inputCenter Y];
  v16.f64[0] = v32;
  v16.f64[1] = v17;
  v18 = vcvt_f32_f64(v16);
  *v16.f64 = v10;
  v19 = v11;
  *(v16.f64 + 1) = v19;
  *&v16.f64[0] = vadd_f32(*&v16.f64[0], v18);
  v20.f32[0] = v13;
  v21 = v14;
  v20.f32[1] = v21;
  v22 = vadd_f32(v20, v18);
  v23.f32[0] = v10 + v13;
  v24 = v11 + v14;
  v23.f32[1] = v24;
  v25 = vadd_f32(v23, v18);
  v26 = vminnm_f32(vminnm_f32(vminnm_f32(v18, *&v16.f64[0]), v22), v25);
  v29 = vsub_f32(vmaxnm_f32(vmaxnm_f32(vmaxnm_f32(v18, *&v16.f64[0]), v22), v25), v26);
  v30 = v29.f32[0];
  v31 = v29.f32[1];

  v27 = v26.f32[0];
  v28 = v26.f32[1];
  return CGRectIntegral(*(&v30 - 2));
}

- (double)_roiArea
{
  [(NSNumber *)self->super.inputWidth doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputAcuteAngle doubleValue];
  return v4 * v4 * fabs(sin(v5));
}

- (float32x2_t)_roiCenter
{
  [a1[13] doubleValue];
  v3 = v2;
  [a1[12] doubleValue];
  v5 = v4;
  [a1[14] doubleValue];
  v7 = v6;
  v8 = __sincos_stret(v5);
  v9 = __sincos_stret(v5 + v7);
  [a1[11] X];
  v16 = v10;
  [a1[11] Y];
  v11.f64[0] = v16;
  v11.f64[1] = v12;
  v13 = vcvt_f32_f64(v11);
  v14.f32[0] = v3 * v9.__cosval * 0.5 + v3 * v8.__cosval * 0.5;
  *v11.f64 = v3 * v9.__sinval * 0.5 + v3 * v8.__sinval * 0.5;
  v14.i32[1] = LODWORD(v11.f64[0]);
  return vadd_f32(v14, v13);
}

- (id)_singlePixelImage
{
  [(CITile2Filter *)self _roiArea];
  if (v3 >= 1.0)
  {
    return 0;
  }

  [(CITile2Filter *)self _roiCenter];
  v5 = vrndm_f32(v4);
  v6 = [(CIImage *)self->super.inputImage imageByCroppingToRect:v5.f32[0], v5.f32[1], 1.0, 1.0];

  return [(CIImage *)v6 imageByClampingToExtent];
}

- (id)outputImage
{
  v40[3] = *MEMORY[0x1E69E9840];
  if (!self->super.inputImage || !self->super.inputCenter)
  {
    return 0;
  }

  v3 = [(CITile2Filter *)self _singlePixelImage];
  if (!v3)
  {
    [(NSNumber *)self->super.inputWidth doubleValue];
    v5 = v4;
    [(NSNumber *)self->super.inputAngle doubleValue];
    v7 = v6;
    [(NSNumber *)self->inputAcuteAngle doubleValue];
    v9 = v8;
    [(CIVector *)self->super.inputCenter X];
    v11 = v10;
    [(CIVector *)self->super.inputCenter Y];
    v13 = v12;
    v14 = __sincos_stret(v7);
    v15 = __sincos_stret(v7 + v9);
    v36 = v5 * v14.__cosval;
    v37 = v5 * v14.__sinval;
    v38 = v5 * v15.__cosval;
    v39 = v5 * v15.__sinval;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x5012000000;
    v33[3] = __Block_byref_object_copy__15;
    v33[4] = __Block_byref_object_dispose__15;
    v33[5] = &unk_19D0E11CF;
    v34 = 0u;
    v35 = 0u;
    [(CITile2Filter *)self _roiRect];
    *&v34 = v16;
    *(&v34 + 1) = v17;
    *&v35 = v18;
    *(&v35 + 1) = v19;
    affine::inverse(&v36, v32);
    v20 = [CIVector vectorWithX:v32[0] * 0.5 Y:v32[2] * 0.5 Z:v32[1] * 0.5 W:v32[3] * 0.5];
    v21 = [CIVector vectorWithX:v36 Y:v38 Z:v37 W:v39];
    v22 = [(CITileFilter *)self _kernel];
    v23 = v11;
    v24 = v13;
    v25 = *MEMORY[0x1E695F040];
    v26 = *(MEMORY[0x1E695F040] + 8);
    v28 = *(MEMORY[0x1E695F040] + 16);
    v27 = *(MEMORY[0x1E695F040] + 24);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __28__CITile2Filter_outputImage__block_invoke;
    v31[3] = &unk_1E75C2528;
    v31[4] = v33;
    inputImage = self->super.inputImage;
    v40[0] = [CIVector vectorWithX:v23 Y:v24];
    v40[1] = v20;
    v40[2] = v21;
    v3 = [v22 applyWithExtent:v31 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v40, 3), v25, v26, v28, v27}];
    _Block_object_dispose(v33, 8);
  }

  return v3;
}

@end