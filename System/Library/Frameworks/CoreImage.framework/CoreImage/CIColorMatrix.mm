@interface CIColorMatrix
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorMatrix

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryColorAdjustment";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryInterlaced";
  v13[4] = @"CICategoryNonSquarePixels";
  v13[5] = @"CICategoryHighDynamicRange";
  v13[6] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:7];
  v15[1] = @"5";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.4";
  v14[3] = @"inputRVector";
  v11[0] = @"CIAttributeDefault";
  v12[0] = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v11[1] = @"CIAttributeIdentity";
  v12[1] = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[4] = @"inputGVector";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeIdentity";
  v10[0] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v10[1] = [CIVector vectorWithX:0.0 Y:1.0 Z:0.0 W:0.0];
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v14[5] = @"inputBVector";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeIdentity";
  v8[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
  v8[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:1.0 W:0.0];
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v14[6] = @"inputAVector";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeIdentity";
  v6[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v6[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v14[7] = @"inputBiasVector";
  v3[1] = @"CIAttributeIdentity";
  v4[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0, @"CIAttributeDefault"];
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v29[20] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  if (CGRectIsEmpty(v30))
  {
    return self->inputImage;
  }

  [(CIVector *)self->inputRVector X];
  v29[0] = v5;
  [(CIVector *)self->inputRVector Y];
  v29[1] = v6;
  [(CIVector *)self->inputRVector Z];
  v29[2] = v7;
  [(CIVector *)self->inputRVector W];
  v29[3] = v8;
  [(CIVector *)self->inputGVector X];
  v29[4] = v9;
  [(CIVector *)self->inputGVector Y];
  v29[5] = v10;
  [(CIVector *)self->inputGVector Z];
  v29[6] = v11;
  [(CIVector *)self->inputGVector W];
  v29[7] = v12;
  [(CIVector *)self->inputBVector X];
  v29[8] = v13;
  [(CIVector *)self->inputBVector Y];
  v29[9] = v14;
  [(CIVector *)self->inputBVector Z];
  v29[10] = v15;
  [(CIVector *)self->inputBVector W];
  v29[11] = v16;
  [(CIVector *)self->inputAVector X];
  v29[12] = v17;
  [(CIVector *)self->inputAVector Y];
  v29[13] = v18;
  [(CIVector *)self->inputAVector Z];
  v29[14] = v19;
  [(CIVector *)self->inputAVector W];
  v29[15] = v20;
  [(CIVector *)self->inputBiasVector X];
  v29[16] = v21;
  [(CIVector *)self->inputBiasVector Y];
  v29[17] = v22;
  [(CIVector *)self->inputBiasVector Z];
  v29[18] = v23;
  [(CIVector *)self->inputBiasVector W];
  v29[19] = v24;
  is_identity = CI::ColorMatrixImage::is_identity(v29, v25);
  v27 = self->inputImage;
  if (!is_identity)
  {
    [(CIImage *)v27 _internalRepresentation];
    operator new();
  }

  return v27;
}

@end