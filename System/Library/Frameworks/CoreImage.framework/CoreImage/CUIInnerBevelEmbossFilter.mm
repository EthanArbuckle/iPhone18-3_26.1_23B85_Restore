@interface CUIInnerBevelEmbossFilter
- (id)outputImage;
@end

@implementation CUIInnerBevelEmbossFilter

- (id)outputImage
{
  v55[1] = *MEMORY[0x1E69E9840];
  if ([(NSNumber *)self->super.inputSize unsignedIntValue]> 0x31)
  {
    unsignedIntValue = 50;
  }

  else
  {
    unsignedIntValue = [(NSNumber *)self->super.inputSize unsignedIntValue];
  }

  [(NSNumber *)self->super.inputSoften doubleValue];
  inputImage = self->super.inputImage;
  if (!inputImage)
  {
    return 0;
  }

  v6 = fmax(v4, 0.0);
  v7 = fmin(v6, 50.0);
  v8 = fmax(unsignedIntValue * 0.21, 0.5);
  _kernelInvertMask = [(CUIInnerBevelEmbossFilter *)self _kernelInvertMask];
  v10 = *MEMORY[0x1E695F040];
  v11 = *(MEMORY[0x1E695F040] + 8);
  v12 = *(MEMORY[0x1E695F040] + 16);
  v13 = *(MEMORY[0x1E695F040] + 24);
  v55[0] = inputImage;
  v14 = [_kernelInvertMask applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v55, 1), v10, v11, v12, v13}];
  v15 = v14;
  if (v8 != 0.5 || v7 > 4.0)
  {
    v17 = _CUIMappedBlurImageWithSize(v14, fmin(v6, 2.0), 0);
    v18 = _CUIMappedBlurImageWithSize(v17, unsignedIntValue, 0);
    if (v8 == 0.5)
    {
      v52 = xmmword_19CF2A938;
      v53 = unk_19CF2A948;
      v54 = 0xBFC4CCCCCCCCCCCDLL;
      v50 = xmmword_19CF2A918;
      v51 = unk_19CF2A928;
      v19 = [(CIImage *)v18 filteredImage:@"CIConvolution3X3" keysAndValues:@"inputWeights", [CIVector vectorWithValues:&v50 count:9], @"inputBias", &unk_1F1085248, 0];
    }

    else
    {
      v37 = [CIVector vectorWithX:-v8 Y:v8];
      _kernel = [(CUIOuterBevelEmbossFilter *)self _kernel];
      [(CIImage *)v18 extent];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __40__CUIInnerBevelEmbossFilter_outputImage__block_invoke;
      v43[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v44 = v8;
      v47[0] = v18;
      v47[1] = v37;
      v19 = [_kernel applyWithExtent:v43 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v47, 2), v39, v40, v41, v42}];
    }
  }

  else
  {
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v54 = 0;
    v52 = 0x3FF0000000000000uLL;
    v48[3] = 0u;
    memset(v48, 0, 32);
    v49 = 0;
    v48[2] = 0x3FF0000000000000uLL;
    if (v7 > 0.0)
    {
      v21 = 1;
      do
      {
        convolve(&v50, dbl_19CF2A900);
        convolve(v48, dbl_19CF2A900);
        v22 = v21++;
      }

      while (v7 > v22);
    }

    convolve(&v50, dbl_19CF2A900);
    convolve(v48, dbl_19CF2A900);
    convolve(&v50, dbl_19CF2A900);
    v19 = [-[CIImage filteredImage:keysAndValues:](v15 filteredImage:@"CIConvolution9Horizontal" keysAndValues:{@"inputWeights", +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", &v50, 9, convolve(v48, dbl_19CF2A8E8).n128_f64[0]), @"inputBias", &unk_1F10851B8, 0), "filteredImage:keysAndValues:", @"CIConvolution9Vertical", @"inputWeights", +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", v48, 9), @"inputBias", &unk_1F1085248, 0}];
  }

  v23 = v19;
  _kernelC = [(CUIOuterBevelEmbossFilter *)self _kernelC];
  [v23 extent];
  inputHighlightColor = self->super.inputHighlightColor;
  v46[0] = v23;
  v46[1] = inputHighlightColor;
  v46[2] = self->super.inputShadowColor;
  v30 = [_kernelC applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v46, 3), v26, v27, v28, v29}];
  _kernelMultiplyByMask = [(CUIInnerBevelEmbossFilter *)self _kernelMultiplyByMask];
  [(CIImage *)self->super.inputImage extent];
  v32 = self->super.inputImage;
  v45[0] = v30;
  v45[1] = v32;
  return [_kernelMultiplyByMask applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v45, 2), v33, v34, v35, v36}];
}

double __40__CUIInnerBevelEmbossFilter_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -ceilf(fabsf(*(a1 + 32)) + 0.5);
  *&result = CGRectInset(*&a2, v5, v5);
  return result;
}

@end