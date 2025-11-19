@interface CUIOuterBevelEmbossFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CUIOuterBevelEmbossFilter

+ (id)customAttributes
{
  v14[5] = *MEMORY[0x1E69E9840];
  v13[0] = @"inputSize";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeSliderMin";
  v12[0] = &unk_1F10851B8;
  v12[1] = &unk_1F10851B8;
  v11[2] = @"CIAttributeSliderMax";
  v11[3] = @"CIAttributeMax";
  v12[2] = &unk_1F10851C8;
  v12[3] = &unk_1F10851F8;
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F1085218;
  v12[5] = @"CIAttributeTypeScalar";
  v14[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v13[1] = @"inputSoften";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F10851B8;
  v10[1] = &unk_1F10851B8;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F10851C8;
  v10[3] = &unk_1F10851F8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10851B8;
  v10[5] = @"CIAttributeTypeScalar";
  v14[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v13[2] = @"inputAngle";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F10851B8;
  v8[1] = &unk_1F1085228;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeType";
  v8[2] = &unk_1F1085238;
  v8[3] = @"CIAttributeTypeAngle";
  v14[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v13[3] = @"inputHighlightColor";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v6[1] = @"CIAttributeTypeColor";
  v14[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v13[4] = @"inputShadowColor";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0, @"CIAttributeDefault"];
  v4[1] = @"CIAttributeTypeColor";
  v14[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
}

- (id)outputImage
{
  v48 = *MEMORY[0x1E69E9840];
  if ([(NSNumber *)self->inputSize unsignedIntValue]> 0x31)
  {
    v3 = 50;
  }

  else
  {
    v3 = [(NSNumber *)self->inputSize unsignedIntValue];
  }

  [(NSNumber *)self->inputSoften doubleValue];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  v6 = fmax(v4, 0.0);
  v7 = fmin(v6, 50.0);
  v8 = fmax(v3 * 0.21, 0.5);
  [(CIImage *)self->inputImage extent];
  if (v8 != 0.5 || v7 > 4.0)
  {
    v10 = _CUIMappedBlurImageWithSize(inputImage, fmin(v6, 2.0), 0);
    v11 = _CUIMappedBlurImageWithSize(v10, v3, 0);
    [(CIImage *)v11 extent];
    if (v8 == 0.5)
    {
      v49 = CGRectInset(*&v12, -1.0, -1.0);
      x = v49.origin.x;
      y = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;
      v43 = xmmword_19CF2A8A0;
      v44 = unk_19CF2A8B0;
      v45 = xmmword_19CF2A8C0;
      v46 = unk_19CF2A8D0;
      v47 = 0x3FC0000000000000;
      v20 = [(CIImage *)v11 filteredImage:@"CIConvolution3X3" keysAndValues:@"inputWeights", [CIVector vectorWithValues:&v43 count:9], @"inputBias", &unk_1F1085248, 0];
    }

    else
    {
      v52 = CGRectInset(*&v12, -v8, -v8);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      v31 = [CIVector vectorWithX:v8 Y:-v8];
      v32 = [(CUIOuterBevelEmbossFilter *)self _kernel];
      [(CIImage *)v11 extent];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __40__CUIOuterBevelEmbossFilter_outputImage__block_invoke;
      v37[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v38 = v8;
      v40[0] = v11;
      v40[1] = v31;
      v20 = [v32 applyWithExtent:v37 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v40, 2), v33, v34, v35, v36}];
    }
  }

  else
  {
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v47 = 0;
    v45 = 0x3FF0000000000000uLL;
    v41[3] = 0u;
    memset(v41, 0, 32);
    v42 = 0;
    v41[2] = 0x3FF0000000000000uLL;
    if (v7 > 0.0)
    {
      v22 = 1;
      do
      {
        convolve(&v43, dbl_19CF2A900);
        convolve(v41, dbl_19CF2A900);
        v23 = v22++;
      }

      while (v7 > v23);
    }

    convolve(&v43, dbl_19CF2A900);
    convolve(v41, dbl_19CF2A900);
    convolve(&v43, dbl_19CF2A900);
    [(CIImage *)inputImage extent:convolve(v41];
    v51 = CGRectInset(v50, -4.0, -4.0);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;
    v20 = [-[CIImage filteredImage:keysAndValues:](inputImage filteredImage:@"CIConvolution9Horizontal" keysAndValues:{@"inputWeights", +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", &v43, 9), @"inputBias", &unk_1F10851B8, 0), "filteredImage:keysAndValues:", @"CIConvolution9Vertical", @"inputWeights", +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", v41, 9), @"inputBias", &unk_1F1085248, 0}];
  }

  v24 = v20;
  v25 = [(CUIOuterBevelEmbossFilter *)self _kernelC];
  [v24 extent];
  inputHighlightColor = self->inputHighlightColor;
  v39[0] = v24;
  v39[1] = inputHighlightColor;
  v39[2] = self->inputShadowColor;
  return [objc_msgSend(v25 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v39, 3), v27, v28, v29, v30), "imageByCroppingToRect:", x, y, width, height}];
}

double __40__CUIOuterBevelEmbossFilter_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -ceilf(fabsf(*(a1 + 32)) + 0.5);
  *&result = CGRectInset(*&a2, v5, v5);
  return result;
}

@end