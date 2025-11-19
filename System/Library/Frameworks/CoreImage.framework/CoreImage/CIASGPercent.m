@interface CIASGPercent
+ (id)customAttributes;
- (id)outputImageScale:(double)a3 outset:(int)a4 hKernel:(id)a5 vKernel:(id)a6;
@end

@implementation CIASGPercent

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryGeometryAdjustment";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v3[4] = @"CICategoryApplePrivate";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"12";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.14";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImageScale:(double)a3 outset:(int)a4 hKernel:(id)a5 vKernel:(id)a6
{
  v33[1] = *MEMORY[0x1E69E9840];
  v11 = [[(CIImage *)self->inputImage imageByClampingToExtent] imageBySamplingNearest];
  v12 = MEMORY[0x1E695F040];
  v13 = *MEMORY[0x1E695F040];
  v14 = *(MEMORY[0x1E695F040] + 8);
  v15 = *(MEMORY[0x1E695F040] + 16);
  v16 = *(MEMORY[0x1E695F040] + 24);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __56__CIASGPercent_outputImageScale_outset_hKernel_vKernel___block_invoke;
  v30[3] = &__block_descriptor_44_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v30[4] = a3;
  v31 = a4;
  v33[0] = v11;
  v17 = [objc_msgSend(a5 applyWithExtent:v30 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v33, 1), v13, v14, v15, v16), "imageBySamplingNearest"}];
  v18 = *v12;
  v19 = v12[1];
  v20 = v12[2];
  v21 = v12[3];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __56__CIASGPercent_outputImageScale_outset_hKernel_vKernel___block_invoke_2;
  v28[3] = &__block_descriptor_44_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v28[4] = a3;
  v29 = a4;
  v32 = v17;
  v22 = [a6 applyWithExtent:v28 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v32, 1), v18, v19, v20, v21}];
  [(CIImage *)self->inputImage extent];
  if (!CGRectIsInfinite(v34))
  {
    [(CIImage *)self->inputImage extent];
    v35.origin.x = v23 * a3;
    v35.origin.y = v24 * a3;
    v35.size.width = v25 * a3;
    v35.size.height = v26 * a3;
    v36 = CGRectIntegral(v35);
    return [v22 imageByCroppingToRect:{v36.origin.x, v36.origin.y, v36.size.width, v36.size.height}];
  }

  return v22;
}

double __56__CIASGPercent_outputImageScale_outset_hKernel_vKernel___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  *&v5 = v5;
  v6 = a2;
  v7.f32[0] = a4 + v6;
  v7.f32[1] = v6;
  v8 = vcvt_f32_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(vrndm_f32(v7), vdup_lane_s32(*&v5, 0))), vdupq_n_s64(0x3FDFEF9DB22D0E56uLL))));
  v9 = v8.f32[1];
  v10 = (v8.f32[0] - v8.f32[1]);
  *&result = CGRectInset(*(&a3 - 1), -*(a1 + 40), 0.0);
  return result;
}

double __56__CIASGPercent_outputImageScale_outset_hKernel_vKernel___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  *&v5 = v5;
  v6 = a3;
  v7.f32[0] = a5 + v6;
  v7.f32[1] = v6;
  v8 = vcvt_f32_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(vrndm_f32(v7), vdup_lane_s32(*&v5, 0))), vdupq_n_s64(0x3FDFEF9DB22D0E56uLL))));
  v9 = v8.f32[1];
  v10 = (v8.f32[0] - v8.f32[1]);
  *&result = CGRectInset(*&a2, 0.0, -*(a1 + 40));
  return result;
}

@end