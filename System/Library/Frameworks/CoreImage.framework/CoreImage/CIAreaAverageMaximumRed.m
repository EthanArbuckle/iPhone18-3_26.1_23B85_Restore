@interface CIAreaAverageMaximumRed
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAreaAverageMaximumRed

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryReduction";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"19";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"16.0";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v76[3] = *MEMORY[0x1E69E9840];
  v3 = [(CIReductionFilter *)self offsetAndCrop];
  if (v3 && (v4 = v3, [v3 extent], !CGRectIsEmpty(v78)))
  {
    [v4 extent];
    v67 = v6;
    [v4 extent];
    v66 = v7;
    v8 = 1.0;
    if (-[CIAreaAverageMaximumRed _reduce4X4](self, "_reduce4X4") && ([v4 extent], v9 = 2.0, v10 > 2.0))
    {
      v11 = 0;
      while (1)
      {
        [v4 extent];
        if (v12 <= v9)
        {
          break;
        }

        [v4 extent];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v8 = v8 * 16.0;
        v21 = [(CIAreaAverageMaximumRed *)self _reduce4X4];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __38__CIAreaAverageMaximumRed_outputImage__block_invoke;
        v71[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v71[4] = v14;
        *&v71[5] = v16;
        *&v71[6] = v18;
        *&v71[7] = v20;
        v76[0] = v4;
        v76[1] = [CIVector vectorWithX:v18 Y:v20];
        v22 = (v11 + 1);
        v76[2] = [MEMORY[0x1E696AD98] numberWithInt:v11];
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
        v24 = v14;
        v9 = 2.0;
        v4 = [v21 applyWithExtent:v71 roiCallback:v23 arguments:{v24, v16, ceil(v18 * 0.25), ceil(v20 * 0.25)}];
        [v4 extent];
        v11 = v22;
        if (v25 <= 2.0)
        {
          goto LABEL_13;
        }
      }

      v22 = v11;
    }

    else
    {
      v22 = 0;
    }

LABEL_13:
    if ([(CIAreaAverageMaximumRed *)self _reduce2X2])
    {
      [v4 extent];
      if (v26 > 1.0)
      {
        while (1)
        {
          [v4 extent];
          if (v27 <= 1.0)
          {
            break;
          }

          [v4 extent];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v8 = v8 * 4.0;
          v36 = [(CIAreaAverageMaximumRed *)self _reduce2X2];
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __38__CIAreaAverageMaximumRed_outputImage__block_invoke_2;
          v70[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          *&v70[4] = v29;
          *&v70[5] = v31;
          *&v70[6] = v33;
          *&v70[7] = v35;
          v75[0] = v4;
          v75[1] = [CIVector vectorWithX:v33 Y:v35];
          v37 = (v22 + 1);
          v75[2] = [MEMORY[0x1E696AD98] numberWithInt:v22];
          v4 = [v36 applyWithExtent:v70 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v75, 3), v29, v31, ceil(v33 * 0.5), ceil(v35 * 0.5)}];
          [v4 extent];
          v22 = v37;
          if (v38 <= 1.0)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v37 = v22;
LABEL_19:
    [v4 extent];
    v39 = 1.0;
    if (v40 <= 1.0)
    {
      v50 = v37;
    }

    else
    {
      do
      {
        [v4 extent];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v8 = v8 * 4.0;
        v49 = [(CIAreaAverageMaximumRed *)self _reduce1X4];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __38__CIAreaAverageMaximumRed_outputImage__block_invoke_3;
        v69[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v69[4] = v42;
        *&v69[5] = v44;
        *&v69[6] = v46;
        *&v69[7] = v48;
        v74[0] = v4;
        v74[1] = [MEMORY[0x1E696AD98] numberWithDouble:v48];
        v50 = (v37 + 1);
        v74[2] = [MEMORY[0x1E696AD98] numberWithInt:v37];
        v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
        v52 = v42;
        v39 = 1.0;
        v4 = [v49 applyWithExtent:v69 roiCallback:v51 arguments:{v52, v44, v46, ceil(v48 * 0.25)}];
        [v4 extent];
        v37 = v50;
      }

      while (v53 > 1.0);
    }

    [v4 extent];
    if (v54 > v39)
    {
      do
      {
        [v4 extent];
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v8 = v8 * 4.0;
        v63 = [(CIAreaAverageMaximumRed *)self _reduce4X1];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __38__CIAreaAverageMaximumRed_outputImage__block_invoke_4;
        v68[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v68[4] = v56;
        *&v68[5] = v58;
        *&v68[6] = v60;
        *&v68[7] = v62;
        v73[0] = v4;
        v73[1] = [MEMORY[0x1E696AD98] numberWithDouble:v60];
        v73[2] = [MEMORY[0x1E696AD98] numberWithInt:v50];
        v4 = [v63 applyWithExtent:v68 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v73, 3), v56, v58, ceil(v60 * 0.25), v62}];
        [v4 extent];
        v50 = (v50 + 1);
      }

      while (v64 > 1.0);
    }

    v65 = [(CIAreaAverageMaximumRed *)self _reduceCrop];
    v72[0] = v4;
    v72[1] = [MEMORY[0x1E696AD98] numberWithDouble:v8 / (v67 * v66)];
    return [v65 applyWithExtent:&__block_literal_global_202 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v72, 2), 0.0, 0.0, 1.0, 1.0}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

float __38__CIAreaAverageMaximumRed_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  ReductionROIwh(*&a2, 4.0, 4.0, v5, v6);
  return result;
}

float __38__CIAreaAverageMaximumRed_outputImage__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  ReductionROIwh(*&a2, 2.0, 2.0, v5, v6);
  return result;
}

float __38__CIAreaAverageMaximumRed_outputImage__block_invoke_3(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 56);
  ReductionROIh(*&a2, 4.0, v5);
  return result;
}

float __38__CIAreaAverageMaximumRed_outputImage__block_invoke_4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  ReductionROIw(*&a2, 4.0, v5);
  return result;
}

@end