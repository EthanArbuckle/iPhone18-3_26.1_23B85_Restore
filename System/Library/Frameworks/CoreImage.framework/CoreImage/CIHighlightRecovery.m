@interface CIHighlightRecovery
- (id)outputImage;
@end

@implementation CIHighlightRecovery

- (id)outputImage
{
  v40 = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(&unk_1F1085668, "count") + 1}];
    v4 = [(NSDictionary *)self->inputTuningParameters objectForKeyedSubscript:@"HighlightRecovery"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [&unk_1F1085668 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v34;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(&unk_1F1085668);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          if (![v4 valueForKey:v9])
          {
            NSLog(&cfstr_RequiredParame.isa, v9);
            return 0;
          }

          v10 = MEMORY[0x1E696AD98];
          SDOFHighlightRecoveryValue(v9, self->inputTuningParameters);
          [v3 setObject:objc_msgSend(v10 forKeyedSubscript:{"numberWithFloat:"), v9}];
        }

        v6 = [&unk_1F1085668 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = MEMORY[0x1E696AD98];
    SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
    [v3 setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithFloat:"), @"maxBlur"}];
    [v3 setObject:self->inputApertureScaling forKeyedSubscript:@"apertureScaling"];
    inputScale = self->inputScale;
    if (inputScale)
    {
      [(NSNumber *)inputScale floatValue];
      v14 = v13;
    }

    else
    {
      v14 = 1.0;
    }

    v17 = roundf(v14 * [objc_msgSend(v3 objectForKeyedSubscript:{@"iterations", "intValue"}]);
    v18 = [(NSNumber *)[(CIHighlightRecovery *)self inputDraftMode] integerValue];
    if (v18 == 1)
    {
      v17 = roundf(v17 / 3.0);
    }

    else if (v18 == 2)
    {
      v17 = [objc_msgSend(v3 objectForKeyedSubscript:{@"iterations", "intValue"}];
    }

    *&v19 = v17;
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v19), @"iterations"}];
    inputImage = self->inputImage;
    if (v17 != 0.0)
    {
      v37[0] = @"inputIterations";
      *&v20 = v17;
      v38[0] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      v37[1] = @"inputScale";
      *&v21 = v14;
      v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
      inputApertureScaling = self->inputApertureScaling;
      v38[1] = v22;
      v38[2] = inputApertureScaling;
      v37[2] = @"inputApertureScaling";
      v37[3] = @"inputMaxBlur";
      v38[3] = [v3 objectForKeyedSubscript:@"maxBlur"];
      v37[4] = @"inputBlurRadius";
      [objc_msgSend(v3 objectForKeyedSubscript:{@"blurRadiusT0", "floatValue"}];
      v25 = v24;
      [objc_msgSend(v3 objectForKeyedSubscript:{@"blurRadiusT1", "floatValue"}];
      v38[4] = [CIVector vectorWithX:v25 Y:v26];
      v37[5] = @"inputMaxIntensity";
      [objc_msgSend(v3 objectForKeyedSubscript:{@"maxIntensityT0", "floatValue"}];
      v28 = v27;
      [objc_msgSend(v3 objectForKeyedSubscript:{@"maxIntensityT1", "floatValue"}];
      v38[5] = [CIVector vectorWithX:v28 Y:v29];
      v37[6] = @"inputMinIntensity";
      [objc_msgSend(v3 objectForKeyedSubscript:{@"minIntensityT0", "floatValue"}];
      v31 = v30;
      [objc_msgSend(v3 objectForKeyedSubscript:{@"minIntensityT1", "floatValue"}];
      v38[6] = [CIVector vectorWithX:v31 Y:v32];
      return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CISDOFHighlightRecovery", [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:7]);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end