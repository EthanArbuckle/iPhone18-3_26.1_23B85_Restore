@interface CIAttributedTextImageGenerator
+ (id)customAttributes;
- (id)outputImage;
- (void)outputImage;
@end

@implementation CIAttributedTextImageGenerator

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGenerator";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"11";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.13";
  v8[3] = @"inputScaleFactor";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084E78;
  v6[1] = &unk_1F1084EA8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084EB8;
  v6[3] = &unk_1F1082328;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputPadding";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082340;
  v4[1] = &unk_1F1082340;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1082358;
  v4[3] = &unk_1F1082370;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082340;
  v4[5] = @"CIAttributeTypeInteger";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (self->inputText)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = ci_logger_api();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CIAttributedTextImageGenerator *)v13 outputImage];
      }

      return 0;
    }

    inputText = self->inputText;
  }

  else
  {
    inputText = 0;
  }

  if (![(NSAttributedString *)inputText length])
  {
    return 0;
  }

  [(NSNumber *)self->inputScaleFactor floatValue];
  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = v4;
  [(NSNumber *)self->inputPadding floatValue];
  v7 = v6;
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  v9 = self->inputText;
  v15[0] = @"kCIImageTextScaleFactor";
  *&v10 = v5;
  v16[0] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v16[1] = v8;
  v15[1] = @"CIImageColorSpace";
  v15[2] = @"kCIImageTextPadding";
  LODWORD(v11) = v7;
  v16[2] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v12 = +[CIImage imageWithAttributedString:format:options:](CIImage, "imageWithAttributedString:format:options:", v9, 264, [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3]);
  CGColorSpaceRelease(v8);
  return v12;
}

- (void)outputImage
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIAttributedTextImageGenerator outputImage]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s inputText must be a NSAttributedString.", &v1, 0xCu);
}

@end