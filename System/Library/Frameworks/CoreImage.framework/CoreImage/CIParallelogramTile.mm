@interface CIParallelogramTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIParallelogramTile

- (id)outputImage
{
  v43[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAngle floatValue];
  v4 = v3;
  [(NSNumber *)self->inputAcuteAngle floatValue];
  v6 = v5;
  [(NSNumber *)self->inputWidth floatValue];
  v39 = v7;
  inputCenter = self->inputCenter;
  [(CIVector *)inputCenter X];
  v37 = v9;
  [(CIVector *)inputCenter Y];
  v10.f64[0] = v37;
  v10.f64[1] = v11;
  v12 = vcvt_f32_f64(v10);
  v13 = __sincosf_stret(v4);
  v38 = vmul_n_f32(__PAIR64__(LODWORD(v13.__sinval), LODWORD(v13.__cosval)), v39);
  v14 = __sincosf_stret(v4 + v6);
  v15 = vmul_n_f32(__PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval)), v39);
  v16 = v15.f32[1];
  v17 = (-v38.f32[1] * v15.f32[0]) + (v38.f32[0] * v15.f32[1]);
  if (fabsf(v17) >= 0.01)
  {
    v21 = 0.5 / v17;
    v22 = v15.f32[1] * v21;
    v23 = v21 * -v38.f32[1];
    v24 = -(v15.f32[0] * v21);
    v25 = v38.f32[0] * v21;
    v26 = vadd_f32(v38, v12);
    v27 = vadd_f32(v15, v12);
    v28 = vadd_f32(v15, v26);
    *&v29 = vminnm_f32(v12, vminnm_f32(v26, vminnm_f32(v27, v28)));
    *(&v29 + 1) = vsub_f32(vmaxnm_f32(v12, vmaxnm_f32(v26, vmaxnm_f32(v27, v28))), *&v29);
    v34 = v29;
    v35 = v15.f32[0];
    v30 = [(CIKernel *)CIWarpKernel kernelWithInternalRepresentation:&CI::_parallelogramTile];
    v31 = *(MEMORY[0x1E695F040] + 8);
    v36 = *MEMORY[0x1E695F040];
    v32 = *(MEMORY[0x1E695F040] + 16);
    v40 = *(MEMORY[0x1E695F040] + 24);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __34__CIParallelogramTile_outputImage__block_invoke;
    v41[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v42 = v34;
    inputImage = self->inputImage;
    v43[0] = self->inputCenter;
    v43[1] = [CIVector vectorWithX:v22 Y:v24 Z:v23 W:v25];
    v43[2] = [CIVector vectorWithX:v38.f32[0] Y:v35 Z:v38.f32[1] W:v16];
    return -[CIWarpKernel applyWithExtent:roiCallback:inputImage:arguments:](v30, "applyWithExtent:roiCallback:inputImage:arguments:", v41, inputImage, [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3], v36, v31, v32, v40);
  }

  else
  {
    v18 = vrndm_f32(v12);
    v19 = [(CIImage *)self->inputImage imageByCroppingToRect:v18.f32[0], v18.f32[1], 1.0, 1.0, *&v38];

    return [(CIImage *)v19 imageByClampingToExtent];
  }
}

double __34__CIParallelogramTile_outputImage__block_invoke(uint64_t a1)
{
  v2.origin.x = COERCE_FLOAT(*(a1 + 32));
  v2.origin.y = COERCE_FLOAT(HIDWORD(*(a1 + 32)));
  v2.size.width = COERCE_FLOAT(*(a1 + 40));
  v2.size.height = COERCE_FLOAT(HIDWORD(*(a1 + 32)));
  *&result = CGRectInset(v2, -0.5, -0.5);
  return result;
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTileEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"9";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputAcuteAngle";
  v5[0] = @"CIAttributeSliderMin";
  v6[0] = [MEMORY[0x1E696AD98] numberWithDouble:-3.14159265];
  v5[1] = @"CIAttributeSliderMax";
  v6[1] = [MEMORY[0x1E696AD98] numberWithDouble:3.14159265];
  v5[2] = @"CIAttributeDefault";
  v6[2] = [MEMORY[0x1E696AD98] numberWithDouble:1.57079633];
  v5[3] = @"CIAttributeIdentity";
  v5[4] = @"CIAttributeType";
  v6[3] = [MEMORY[0x1E696AD98] numberWithDouble:1.57079633];
  v6[4] = @"CIAttributeTypeAngle";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputWidth";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10844B8;
  v4[1] = &unk_1F10844C8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10844D8;
  v4[3] = &unk_1F10844E8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10844E8;
  v4[5] = @"CIAttributeTypeDistance";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end