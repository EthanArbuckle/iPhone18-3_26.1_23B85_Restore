@interface CIColorCubesMixedWithMask
+ (id)customAttributes;
- (BOOL)_checkInputs;
- (id)outputImage;
@end

@implementation CIColorCubesMixedWithMask

+ (id)customAttributes
{
  v14[8] = *MEMORY[0x1E69E9840];
  v13[0] = @"CIAttributeFilterCategories";
  v12[0] = @"CICategoryColorEffect";
  v12[1] = @"CICategoryVideo";
  v12[2] = @"CICategoryInterlaced";
  v12[3] = @"CICategoryNonSquarePixels";
  v12[4] = @"CICategoryStillImage";
  v12[5] = @"CICategoryHighDynamicRange";
  v12[6] = @"CICategoryBuiltIn";
  v14[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];
  v14[1] = @"11";
  v13[1] = @"CIAttributeFilterAvailable_iOS";
  v13[2] = @"CIAttributeFilterAvailable_Mac";
  v14[2] = @"10.13";
  v13[3] = @"inputCubeDimension";
  v10[0] = @"CIAttributeMin";
  v10[1] = @"CIAttributeMax";
  v11[0] = &unk_1F1081908;
  v11[1] = &unk_1F1081920;
  v10[2] = @"CIAttributeDefault";
  v10[3] = @"CIAttributeIdentity";
  v11[2] = &unk_1F1081908;
  v11[3] = &unk_1F1081908;
  v10[4] = @"CIAttributeType";
  v11[4] = @"CIAttributeTypeCount";
  v14[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];
  v13[4] = @"inputCube0Data";
  v8[0] = @"CIAttributeDefault";
  if (defaultCube(void)::onceToken != -1)
  {
    +[CIColorCube customAttributes];
  }

  v8[1] = @"CIAttributeIdentity";
  v9[0] = defaultCube(void)::data;
  v9[1] = defaultCube(void)::data;
  v14[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v13[5] = @"inputCube1Data";
  v6[0] = @"CIAttributeDefault";
  if (defaultCube(void)::onceToken != -1)
  {
    +[CIColorCube customAttributes];
  }

  v6[1] = @"CIAttributeIdentity";
  v7[0] = defaultCube(void)::data;
  v7[1] = defaultCube(void)::data;
  v14[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v13[6] = @"inputExtrapolate";
  v4[0] = @"CIAttributeDefault";
  v4[1] = @"CIAttributeMin";
  v5[0] = MEMORY[0x1E695E110];
  v5[1] = MEMORY[0x1E695E110];
  v4[2] = @"CIAttributeMax";
  v4[3] = @"CIAttributeType";
  v5[2] = MEMORY[0x1E695E118];
  v5[3] = @"CIAttributeTypeBoolean";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v13[7] = @"inputColorSpace";
  v14[6] = v2;
  v14[7] = MEMORY[0x1E695E0F8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];
}

- (BOOL)_checkInputs
{
  v3 = [(NSNumber *)self->inputCubeDimension intValue];
  if ((v3 - 129) > 0xFFFFFF80)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = (4 * v4 * v4 * v4);
        if ([(NSData *)self->inputCube0Data length]== 4 * v5 || [(NSData *)self->inputCube0Data length]== v5)
        {
          if ([(NSData *)self->inputCube1Data length]== 4 * v5 || [(NSData *)self->inputCube1Data length]== v5)
          {
            return 1;
          }

          NSLog(&cfstr_CicolorcubeInp_5.isa);
        }

        else
        {
          NSLog(&cfstr_CicolorcubeInp_4.isa);
        }
      }

      else
      {
        NSLog(&cfstr_CicolorcubeInp_3.isa);
      }
    }

    else
    {
      NSLog(&cfstr_CicolorcubeInp_2.isa);
    }
  }

  else
  {
    NSLog(&cfstr_CicolorcubeInp.isa, 128);
  }

  return 0;
}

- (id)outputImage
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || ![(CIColorCubesMixedWithMask *)self _checkInputs])
  {
    return 0;
  }

  if (self->inputColorSpace)
  {
    v3 = @"CIColorCubeWithColorSpace";
  }

  else
  {
    v3 = @"CIColorCube";
  }

  v4 = [CIFilter filterWithName:v3];
  [(CIFilter *)v4 setValue:self->inputImage forKey:@"inputImage"];
  [(CIFilter *)v4 setValue:self->inputCubeDimension forKey:@"inputCubeDimension"];
  [(CIFilter *)v4 setValue:self->inputExtrapolate forKey:@"inputExtrapolate"];
  inputColorSpace = self->inputColorSpace;
  if (inputColorSpace)
  {
    [(CIFilter *)v4 setValue:inputColorSpace forKey:@"inputColorSpace"];
  }

  [(CIFilter *)v4 setValue:self->inputCube0Data forKey:@"inputCubeData"];
  v6 = [(CIFilter *)v4 outputImage];
  [(CIFilter *)v4 setValue:self->inputCube1Data forKey:@"inputCubeData"];
  v7 = [(CIFilter *)v4 outputImage];
  v10[0] = @"inputBackgroundImage";
  v10[1] = @"inputMaskImage";
  v11[0] = v6;
  inputMaskImage = self->inputMaskImage;
  if (!inputMaskImage)
  {
    inputMaskImage = +[CIImage emptyImage];
  }

  v11[1] = inputMaskImage;
  return -[CIImage imageByApplyingFilter:withInputParameters:](v7, "imageByApplyingFilter:withInputParameters:", @"CIBlendWithMask", [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2]);
}

@end