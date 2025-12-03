@interface CIAreaReductionFilter
- (id)outputImage;
@end

@implementation CIAreaReductionFilter

- (id)outputImage
{
  v65[3] = *MEMORY[0x1E69E9840];
  offsetAndCrop = [(CIReductionFilter *)self offsetAndCrop];
  if (offsetAndCrop && (v4 = offsetAndCrop, [offsetAndCrop extent], !CGRectIsEmpty(v67)))
  {
    if (-[CIAreaReductionFilter _reduce4X4](self, "_reduce4X4") && ([v4 extent], v6 > 2.0))
    {
      v7 = 0;
      while (1)
      {
        [v4 extent];
        if (v8 <= 2.0)
        {
          break;
        }

        [v4 extent];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        _reduce4X4 = [(CIAreaReductionFilter *)self _reduce4X4];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __36__CIAreaReductionFilter_outputImage__block_invoke;
        v60[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v60[4] = v10;
        *&v60[5] = v12;
        *&v60[6] = v14;
        *&v60[7] = v16;
        v65[0] = v4;
        v65[1] = [CIVector vectorWithX:v14 Y:v16];
        v18 = (v7 + 1);
        v65[2] = [MEMORY[0x1E696AD98] numberWithInt:v7];
        v4 = [_reduce4X4 applyWithExtent:v60 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v65, 3), v10, v12, ceil(v14 * 0.25), ceil(v16 * 0.25)}];
        [v4 extent];
        v7 = v18;
        if (v19 <= 2.0)
        {
          goto LABEL_13;
        }
      }

      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

LABEL_13:
    if ([(CIAreaReductionFilter *)self _reduce2X2])
    {
      [v4 extent];
      if (v20 > 1.0)
      {
        while (1)
        {
          [v4 extent];
          if (v21 <= 1.0)
          {
            break;
          }

          [v4 extent];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          _reduce2X2 = [(CIAreaReductionFilter *)self _reduce2X2];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __36__CIAreaReductionFilter_outputImage__block_invoke_2;
          v59[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          *&v59[4] = v23;
          *&v59[5] = v25;
          *&v59[6] = v27;
          *&v59[7] = v29;
          v64[0] = v4;
          v64[1] = [CIVector vectorWithX:v27 Y:v29];
          v31 = (v18 + 1);
          v64[2] = [MEMORY[0x1E696AD98] numberWithInt:v18];
          v4 = [_reduce2X2 applyWithExtent:v59 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v64, 3), v23, v25, ceil(v27 * 0.5), ceil(v29 * 0.5)}];
          [v4 extent];
          v18 = v31;
          if (v32 <= 1.0)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v31 = v18;
LABEL_19:
    [v4 extent];
    if (v33 <= 1.0)
    {
      v43 = v31;
    }

    else
    {
      do
      {
        [v4 extent];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        _reduce1X4 = [(CIAreaReductionFilter *)self _reduce1X4];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __36__CIAreaReductionFilter_outputImage__block_invoke_3;
        v58[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v58[4] = v35;
        *&v58[5] = v37;
        *&v58[6] = v39;
        *&v58[7] = v41;
        v63[0] = v4;
        v63[1] = [MEMORY[0x1E696AD98] numberWithDouble:v41];
        v43 = (v31 + 1);
        v63[2] = [MEMORY[0x1E696AD98] numberWithInt:v31];
        v4 = [_reduce1X4 applyWithExtent:v58 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v63, 3), v35, v37, v39, ceil(v41 * 0.25)}];
        [v4 extent];
        v31 = v43;
      }

      while (v44 > 1.0);
    }

    [v4 extent];
    if (v45 > 1.0)
    {
      do
      {
        [v4 extent];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;
        _reduce4X1 = [(CIAreaReductionFilter *)self _reduce4X1];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __36__CIAreaReductionFilter_outputImage__block_invoke_4;
        v57[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v57[4] = v47;
        *&v57[5] = v49;
        *&v57[6] = v51;
        *&v57[7] = v53;
        v62[0] = v4;
        v62[1] = [MEMORY[0x1E696AD98] numberWithDouble:v51];
        v62[2] = [MEMORY[0x1E696AD98] numberWithInt:v43];
        v4 = [_reduce4X1 applyWithExtent:v57 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v62, 3), v47, v49, ceil(v51 * 0.25), v53}];
        [v4 extent];
        v43 = (v43 + 1);
      }

      while (v55 > 1.0);
    }

    _reduceCrop = [(CIReductionFilter *)self _reduceCrop];
    v61 = v4;
    return [_reduceCrop applyWithExtent:&__block_literal_global_62 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v61, 1), 0.0, 0.0, 1.0, 1.0}];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

void __36__CIAreaReductionFilter_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  ReductionROIwh(*&a2, 4.0, 4.0, v5, v6);
}

float __36__CIAreaReductionFilter_outputImage__block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  ReductionROIwh(*&a2, 2.0, 2.0, v5, v6);
  return result;
}

@end