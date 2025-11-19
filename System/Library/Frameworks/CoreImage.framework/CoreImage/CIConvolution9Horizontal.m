@interface CIConvolution9Horizontal
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIConvolution9Horizontal

+ (id)customAttributes
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = +[CIVector vectorWithValues:count:](CIVector, "vectorWithValues:count:", &+[CIConvolution9Horizontal customAttributes]::default_values, 9);
  v3 = [objc_msgSend(objc_opt_class() "description")];
  v13[0] = @"CIAttributeFilterCategories";
  v12[0] = @"CICategoryStylize";
  v12[1] = @"CICategoryVideo";
  v12[2] = @"CICategoryStillImage";
  v12[3] = @"CICategoryHighDynamicRange";
  v12[4] = @"CICategoryBuiltIn";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v5 = @"7";
  if (v3)
  {
    v5 = @"15";
  }

  v14[0] = v4;
  v14[1] = v5;
  v13[1] = @"CIAttributeFilterAvailable_iOS";
  v13[2] = @"CIAttributeFilterAvailable_Mac";
  if (v3)
  {
    v6 = @"12.0";
  }

  else
  {
    v6 = @"10.9";
  }

  v14[2] = v6;
  v13[3] = @"inputWeights";
  v10[0] = @"CIAttributeIdentity";
  v10[1] = @"CIAttributeDefault";
  v11[0] = v2;
  v11[1] = v2;
  v14[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v13[4] = @"inputBias";
  v8[0] = @"CIAttributeType";
  v8[1] = @"CIAttributeIdentity";
  v9[0] = @"CIAttributeTypeScalar";
  v9[1] = &unk_1F1083178;
  v8[2] = @"CIAttributeDefault";
  v9[2] = &unk_1F1083178;
  v14[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputBias floatValue];
  if (v3 != 0.0)
  {
    return 0;
  }

  inputWeights = self->inputWeights;
  [(CIVector *)inputWeights valueAtIndex:0];
  if (v6 != 0.0)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 8)
    {
      break;
    }

    ++v7;
    v9 = v8 == 3 ? 1.0 : 0.0;
    [(CIVector *)inputWeights valueAtIndex:v8 + 1];
  }

  while (v10 == v9);
  return v8 > 7;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  inputWeights = self->inputWeights;
  if (!inputWeights || [(CIVector *)inputWeights count]!= 9)
  {
    return 0;
  }

  if ([(CIConvolution9Horizontal *)self _isIdentity])
  {
    v4 = self->inputImage;

    return v4;
  }

  [(NSNumber *)self->inputBias doubleValue];
  v8 = v7;
  v9 = [objc_msgSend(objc_opt_class() "description")];
  v10 = v9;
  v6 = apply1DConvolution(self->inputImage, self->inputWeights, v8, 1u, v9);
  v11 = CI_ENABLE_MPS();
  if ((v10 & 1) != 0 || !v11)
  {
    return v6;
  }

  v12 = [CIConvolutionProcessor applyConToImage:self->inputImage width:9 height:1 bias:self->inputWeights weights:v8];

  return [CIImage imageForRenderingWithMPS:v12 orNonMPS:v6];
}

@end