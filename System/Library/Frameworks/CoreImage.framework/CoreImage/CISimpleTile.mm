@interface CISimpleTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISimpleTile

+ (id)customAttributes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryTileEffect";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v3[4] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
}

- (id)outputImage
{
  v38[2] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    [result extent];
    width = v40.size.width;
    height = v40.size.height;
    x = v40.origin.x;
    y = v40.origin.y;
    IsInfinite = CGRectIsInfinite(v40);
    inputImage = self->inputImage;
    if (IsInfinite)
    {
      v8 = inputImage;

      return v8;
    }

    else
    {
      imageByClampingToExtent = [(CIImage *)inputImage imageByClampingToExtent];
      v10 = [CIVector vectorWithCGPoint:x, y];
      height = [CIVector vectorWithX:width Y:height Z:1.0 / width W:1.0 / height];
      v12.f64[0] = x;
      v12.f64[1] = y;
      v13 = vcvt_f32_f64(v12);
      [(CIVector *)height X];
      v27 = v14;
      [(CIVector *)height Y];
      v26 = v15;
      [(CIVector *)height Z];
      v25 = v16;
      [(CIVector *)height W];
      v17.f64[0] = v25;
      v17.f64[1] = v18;
      v19.f64[0] = v27;
      v19.f64[1] = v26;
      v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v17);
      _kernel = [(CISimpleTile *)self _kernel];
      v21 = *MEMORY[0x1E695F040];
      v22 = *(MEMORY[0x1E695F040] + 8);
      v23 = *(MEMORY[0x1E695F040] + 16);
      v24 = *(MEMORY[0x1E695F040] + 24);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __27__CISimpleTile_outputImage__block_invoke;
      v31[3] = &__block_descriptor_88_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v33 = x;
      v34 = y;
      v35 = width;
      v36 = height;
      v37 = v13;
      v32 = v28;
      v38[0] = v10;
      v38[1] = height;
      return [_kernel applyWithExtent:v31 roiCallback:imageByClampingToExtent inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v38, 2), v21, v22, v23, v24}];
    }
  }

  return result;
}

double __27__CISimpleTile_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v16 = *(a1 + 32);
  v17 = CGRectStandardize(*&a2);
  v17.size.width = v17.origin.x + v17.size.width;
  y = v17.origin.y;
  *&v17.origin.x = vcvt_f32_f64(v17.origin);
  v9.f32[0] = v5;
  v10 = v6;
  v9.f32[1] = v10;
  v11 = vextq_s8(v16, v16, 8uLL).u64[0];
  v12 = vrndm_f32(vmul_f32(v11, vsub_f32(*&v17.origin.x, v9)));
  *&v17.size.width = v17.size.width;
  *&v17.origin.y = v17.origin.y + v17.size.height;
  HIDWORD(v17.size.width) = LODWORD(v17.origin.y);
  *&v17.size.height = vrndm_f32(vmul_f32(v11, vsub_f32(*&v17.size.width, v9)));
  *&v17.origin.x = vmul_f32(v11, vsub_f32(*&v17.origin.x, v7));
  *&v17.origin.y = vdup_n_s32(0x3F7FFFFFu);
  LODWORD(v13) = vadd_f32(vadd_f32(v7, vmul_f32(*v16.i8, vminnm_f32(vsub_f32(*&v17.origin.x, vrndm_f32(*&v17.origin.x)), *&v17.origin.y))), 0x3F0000003F000000).u32[0];
  *&v17.size.width = vmul_f32(v11, vsub_f32(*&v17.size.width, v7));
  LODWORD(v14) = vadd_f32(vadd_f32(v7, vmul_f32(*v16.i8, vminnm_f32(vsub_f32(*&v17.size.width, vrndm_f32(*&v17.size.width)), *&v17.origin.y))), 0x3F0000003F000000).u32[0];
  if (vceq_f32(v12, *&v17.size.height).u8[0])
  {
    return fminf(v13, v14);
  }

  return v5;
}

@end