@interface CIEdgeWork
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIEdgeWork

- (id)outputImage
{
  v29[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  v4 = fmaxf(v3, 0.0);
  inputImage = self->inputImage;
  v6 = (v4 * 0.158 + 4.842) * v4 * 0.7;
  v28[0] = @"inputRVector";
  v29[0] = [CIVector vectorWithX:0.299 Y:0.587 Z:0.114];
  v28[1] = @"inputGVector";
  v29[1] = [CIVector vectorWithX:0.299 Y:0.587 Z:0.114];
  v28[2] = @"inputBVector";
  v29[2] = [CIVector vectorWithX:0.299 Y:0.587 Z:0.114];
  v7 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3]);
  v8 = [(CIImage *)v7 imageByApplyingGaussianBlurWithSigma:v4];
  _CIEdgeWork = [(CIEdgeWork *)self _CIEdgeWork];
  [(CIImage *)v8 extent];
  v27[0] = v7;
  v27[1] = v8;
  v14 = [_CIEdgeWork applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v27, 2), v10, v11, v12, v13}];
  [(CIImage *)v7 extent];
  v15 = [objc_msgSend(v14 "imageByCroppingToRect:{"imageByApplyingGaussianBlurWithSigma:", v4}")];
  _CIEdgeWorkContrast = [(CIEdgeWork *)self _CIEdgeWorkContrast];
  [v15 extent];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26[0] = v15;
  *&v17 = v6;
  v26[1] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  return [_CIEdgeWorkContrast applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v26, 2), v18, v20, v22, v24}];
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryStylize";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10838F8;
  v4[1] = &unk_1F10838F8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083908;
  v4[3] = &unk_1F1083918;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end