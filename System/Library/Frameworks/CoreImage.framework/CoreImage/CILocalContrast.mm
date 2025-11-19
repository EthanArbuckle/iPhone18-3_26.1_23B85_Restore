@interface CILocalContrast
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CILocalContrast

+ (id)customAttributes
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorAdjustment";
  v9[1] = @"CICategoryStillImage";
  v9[2] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  v10[1] = @"inputStrength";
  v7[0] = @"CIAttributeClass";
  v2 = objc_opt_class();
  v8[0] = NSStringFromClass(v2);
  v8[1] = &unk_1F1084058;
  v7[1] = @"CIAttributeDefault";
  v7[2] = @"CIAttributeMin";
  v8[2] = &unk_1F1084068;
  v8[3] = &unk_1F1084078;
  v7[3] = @"CIAttributeMax";
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v11[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[2] = @"inputScale";
  v5[0] = @"CIAttributeClass";
  v3 = objc_opt_class();
  v6[0] = NSStringFromClass(v3);
  v6[1] = &unk_1F1084088;
  v5[1] = @"CIAttributeDefault";
  v5[2] = @"CIAttributeMin";
  v6[2] = &unk_1F1084098;
  v6[3] = &unk_1F10840A8;
  v5[3] = @"CIAttributeMax";
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v11[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:{3, v5[0]}];
}

- (id)outputImage
{
  v37[5] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  v36[0] = @"inputRVector";
  v37[0] = [CIVector vectorWithX:0.333333 Y:0.333333 Z:0.333333 W:0.0];
  v36[1] = @"inputGVector";
  v37[1] = [CIVector vectorWithX:0.333333 Y:0.333333 Z:0.333333 W:0.0];
  v36[2] = @"inputBVector";
  v37[2] = [CIVector vectorWithX:0.333333 Y:0.333333 Z:0.333333 W:0.0];
  v36[3] = @"inputAVector";
  v37[3] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v36[4] = @"inputBiasVector";
  v37[4] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v4 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:5]);
  [(NSNumber *)self->inputScale floatValue];
  v6 = v5;
  [(CIImage *)self->inputImage extent];
  v8 = v7;
  v9 = v6 / v8;
  [(NSNumber *)self->inputScale floatValue];
  v11 = v10;
  [(CIImage *)self->inputImage extent];
  v13 = v12;
  v14 = v11 / v13;
  v15 = [(CIImage *)v4 imageByClampingToExtent];
  CGAffineTransformMakeScale(&v32, v9, v14);
  v16 = [[(CIImage *)v15 imageByApplyingTransform:&v32] imageByApplyingGaussianBlurWithSigma:5.0];
  [(NSNumber *)self->inputScale floatValue];
  v18 = v17;
  [(NSNumber *)self->inputScale floatValue];
  v20 = [(CIImage *)v16 imageByCroppingToRect:0.0, 0.0, v18, v19];
  v21 = self->inputImage;
  v35[0] = v20;
  v34[0] = @"inputSmallImage";
  v34[1] = @"inputSpatialSigma";
  LODWORD(v22) = 5.0;
  v35[1] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v34[2] = @"inputLumaSigma";
  LODWORD(v23) = 1041865114;
  v35[2] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v24 = -[CIImage imageByApplyingFilter:withInputParameters:](v21, "imageByApplyingFilter:withInputParameters:", @"CIEdgePreserveUpsampleFilter", [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3]);
  [(CIImage *)self->inputImage extent];
  v25 = [(CIImage *)v24 imageByCroppingToRect:?];
  v26 = [(CILocalContrast *)self _kernelLocalContrast];
  [(CIImage *)self->inputImage extent];
  v33[0] = self->inputImage;
  v33[1] = v25;
  v33[2] = self->inputStrength;
  return [v26 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v33, 3), v27, v28, v29, v30}];
}

@end