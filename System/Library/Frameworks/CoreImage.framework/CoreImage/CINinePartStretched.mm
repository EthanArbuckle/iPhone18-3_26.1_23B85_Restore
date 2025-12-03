@interface CINinePartStretched
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CINinePartStretched

- (id)outputImage
{
  v39[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputGrowAmount = self->inputGrowAmount;
  [(CIVector *)inputGrowAmount X];
  v36 = v4;
  [(CIVector *)inputGrowAmount Y];
  v5.f64[0] = v36;
  v5.f64[1] = v6;
  v7 = vmaxnm_f32(vcvt_f32_f64(v5), 0);
  v8 = v7.f32[0];
  v9 = v7.f32[1];
  if (v7.f32[0] < 0.001 && v9 < 0.001)
  {
    return self->inputImage;
  }

  inputBreakpoint0 = self->inputBreakpoint0;
  v37 = v7;
  [(CIVector *)inputBreakpoint0 X];
  v33 = v12;
  [(CIVector *)inputBreakpoint0 Y];
  v13.f64[0] = v33;
  v13.f64[1] = v14;
  v15 = vcvt_f32_f64(v13);
  inputBreakpoint1 = self->inputBreakpoint1;
  [(CIVector *)inputBreakpoint1 X];
  v34 = v17;
  [(CIVector *)inputBreakpoint1 Y];
  v18.f64[0] = v34;
  v18.f64[1] = v19;
  v20 = vcvt_f32_f64(v18);
  v21 = vminnm_f32(v15, v20);
  v22 = vmaxnm_f32(v15, v20);
  v28 = v21;
  v35 = vdiv_f32(vsub_f32(v22, v21), vsub_f32(vadd_f32(v37, v22), v21));
  [(CIImage *)self->inputImage extent];
  width = v40.size.width;
  x = v40.origin.x;
  height = v40.size.height;
  y = v40.origin.y;
  if (!CGRectIsInfinite(v40))
  {
    v23.f64[0] = x;
    v24.f64[0] = width;
    v23.f64[1] = y;
    *&v23.f64[0] = vcvt_f32_f64(v23);
    v24.f64[1] = height;
    *&v24.f64[0] = vadd_f32(vcvt_f32_f64(v24), *&v23.f64[0]);
    *&v23.f64[0] = vmaxnm_f32(vminnm_f32(vadd_f32(v28, vdiv_f32(vsub_f32(*&v23.f64[0], v28), v35)), vadd_f32(v37, *&v23.f64[0])), *&v23.f64[0]);
    x = *v23.f64;
    v25 = *(v23.f64 + 1);
    *&v23.f64[0] = vsub_f32(vmaxnm_f32(vminnm_f32(vadd_f32(v28, vdiv_f32(vsub_f32(*&v24.f64[0], v28), v35)), vadd_f32(v37, *&v24.f64[0])), *&v24.f64[0]), *&v23.f64[0]);
    y = v25;
    width = *v23.f64;
    height = *(v23.f64 + 1);
  }

  _kernel = [(CINinePartStretched *)self _kernel];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __34__CINinePartStretched_outputImage__block_invoke;
  v38[3] = &__block_descriptor_56_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v38[4] = v28;
  v38[5] = v37;
  inputImage = self->inputImage;
  v38[6] = v35;
  v39[0] = [CIVector vectorWithX:v28.f32[0] Y:v28.f32[1]];
  v39[1] = [CIVector vectorWithX:v8 Y:v9];
  v39[2] = [CIVector vectorWithX:v35.f32[0] Y:v35.f32[1]];
  return [_kernel applyWithExtent:v38 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v39, 3), x, y, width, height}];
}

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"10";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.12";
  v10[3] = @"inputBreakpoint0";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v8[1] = [CIVector vectorWithX:50.0 Y:50.0];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputBreakpoint1";
  v5[1] = @"CIAttributeDefault";
  v6[0] = @"CIAttributeTypePosition";
  v5[0] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v10[5] = @"inputGrowAmount";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeOffset";
  v3[0] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:100.0 Y:100.0];
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

@end