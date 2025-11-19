@interface CINinePartTiled
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CINinePartTiled

- (id)outputImage
{
  v45[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputGrowAmount = self->inputGrowAmount;
  [(CIVector *)inputGrowAmount X];
  v40 = v4;
  [(CIVector *)inputGrowAmount Y];
  v5.f64[0] = v40;
  v5.f64[1] = v6;
  v7 = vmaxnm_f32(vcvt_f32_f64(v5), 0);
  v8 = v7.f32[0];
  v9 = v7.f32[1];
  v10 = v7.f32[1];
  if (v7.f32[0] < 0.001 && v10 < 0.001)
  {
    return self->inputImage;
  }

  v36 = v7;
  v12 = [(NSNumber *)self->inputFlipYTiles BOOLValue];
  inputBreakpoint0 = self->inputBreakpoint0;
  [(CIVector *)inputBreakpoint0 X];
  v41 = v14;
  [(CIVector *)inputBreakpoint0 Y];
  v15.f64[0] = v41;
  v15.f64[1] = v16;
  v37 = vcvt_f32_f64(v15);
  inputBreakpoint1 = self->inputBreakpoint1;
  [(CIVector *)inputBreakpoint1 X];
  *&v18 = v18;
  LODWORD(v41) = LODWORD(v18);
  [(CIVector *)inputBreakpoint1 Y];
  *&v19 = *&v19;
  v34 = v19;
  v20 = vminnm_f32(v37, __PAIR64__(v19, LODWORD(v41)));
  *&v19 = vmaxnm_f32(v37, __PAIR64__(v19, LODWORD(v41)));
  *&v21 = *&v19 + 0.001;
  v22 = vbsl_s8(vcgtd_f64(0.001, vsub_f32(*&v19, v20).f32[0]), __PAIR64__(DWORD1(v19), v21), *&v19);
  v39 = v20;
  v23 = v20.f32[1];
  if ((*&v22.i32[1] - v20.f32[1]) < 0.001)
  {
    *&v24 = *&v22.i32[1] + 0.001;
    v22.i32[1] = v24;
  }

  v42 = v22;
  [(CIImage *)self->inputImage extent];
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  if (!CGRectIsInfinite(v46))
  {
    height = height + v10;
    width = width + v8;
  }

  v29 = [CIVector vectorWithX:v39.f32[0] Y:v23 Z:*v42.i32 W:*&v42.i32[1]];
  v30.i32[0] = v37.i32[0];
  if (v12)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  *&v30.i32[1] = v9 + v35;
  v38 = vbsl_s8(vdup_n_s32(v31), v30, v37);
  v32 = [(CINinePartTiled *)self _kernelAlt];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __30__CINinePartTiled_outputImage__block_invoke;
  v43[3] = &__block_descriptor_57_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v43[4] = v39;
  v43[5] = v42;
  v43[6] = v36;
  v44 = v12;
  inputImage = self->inputImage;
  v45[0] = v29;
  v45[1] = [CIVector vectorWithX:v8 Y:v10];
  v45[2] = [CIVector vectorWithX:*v38.i32 Y:*&v38.i32[1]];
  return [v32 applyWithExtent:v43 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v45, 3), x, y, width, height}];
}

double __30__CINinePartTiled_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = a3 + a5;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  LODWORD(v10) = HIDWORD(*(a1 + 40));
  LODWORD(v11) = HIDWORD(*(a1 + 32));
  LODWORD(v9) = HIDWORD(*(a1 + 48));
  minMax(a2, a2 + a4, COERCE_FLOAT(*(a1 + 32)), COERCE_FLOAT(*(a1 + 40)), COERCE_FLOAT(*(a1 + 48)), 0, &v15, &v14);
  minMax(a3, v7, v11, v10, v9, *(a1 + 56), &v13, &v12);
  return v15;
}

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryDistortionEffect";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"10";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.12";
  v12[3] = @"inputBreakpoint0";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeDefault";
  v10[0] = @"CIAttributeTypePosition";
  v10[1] = [CIVector vectorWithX:50.0 Y:50.0];
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputBreakpoint1";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v7[0] = @"CIAttributeType";
  v8[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[5] = @"inputGrowAmount";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypeOffset";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:100.0 Y:100.0];
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v12[6] = @"inputFlipYTiles";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeMin";
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeType";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = @"CIAttributeTypeBoolean";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

@end