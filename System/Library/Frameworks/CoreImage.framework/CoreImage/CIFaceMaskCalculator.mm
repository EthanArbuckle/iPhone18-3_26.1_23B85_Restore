@interface CIFaceMaskCalculator
- (id)metalKernel;
- (id)outputImage;
- (id)outputImage_V4;
@end

@implementation CIFaceMaskCalculator

- (id)metalKernel
{
  if ([CIFaceMaskCalculator metalKernel]::onceToken != -1)
  {
    [CIFaceMaskCalculator metalKernel];
  }

  return [CIFaceMaskCalculator metalKernel]::kernel;
}

id __35__CIFaceMaskCalculator_metalKernel__block_invoke()
{
  result = [CIKernel SDOFV2MetalKernelNamed:@"_FMCalculator"];
  [CIFaceMaskCalculator metalKernel]::kernel = result;
  return result;
}

- (id)outputImage_V4
{
  v57[13] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x5012000000;
    v50 = __Block_byref_object_copy__7;
    v51 = __Block_byref_object_dispose__7;
    v52 = &unk_19D0E11CF;
    v4 = *(MEMORY[0x1E695F050] + 16);
    v53 = *MEMORY[0x1E695F050];
    v54 = v4;
    [(CIImage *)inputImage extent];
    v6 = v5;
    [(CIImage *)self->inputImage extent];
    *&v6 = v6;
    v8 = v7;
    v59.origin.x = addPoints(self->inputFacesLeftEyeX, self->inputFacesLeftEyeY, *(v48 + 6), *&v6, v8);
    *(v48 + 6) = v59;
    v60.origin.x = addPoints(self->inputFacesRightEyeX, self->inputFacesRightEyeY, v59, *&v6, v8);
    *(v48 + 6) = v60;
    v61 = CGRectIntegral(v60);
    *(v48 + 6) = CGRectInset(v61, -1.0, -1.0);
    [(NSNumber *)self->inputMaxBlur floatValue];
    LODWORD(v6) = v9;
    [(NSNumber *)self->inputFacesMaxBlurOnEyes floatValue];
    v11 = v10;
    [(NSNumber *)self->inputFacesMaxBlurDistFromFocus floatValue];
    v13 = v12;
    [(NSNumber *)self->inputFacesEyeToEyebrowRatio floatValue];
    v15 = [CIVector vectorWithX:*&v6 Y:v11 Z:v13 W:v14];
    [(NSNumber *)self->inputFacesLinearBlurGrowthM floatValue];
    LODWORD(v6) = v16;
    [(NSNumber *)self->inputFacesLinearBlurGrowthC floatValue];
    v18 = v17;
    [(NSNumber *)self->inputFacesDistToBlurScaling floatValue];
    v20 = v19;
    [(NSNumber *)self->inputFacesCapMultip floatValue];
    v22 = [CIVector vectorWithX:*&v6 Y:v18 Z:v20 W:v21];
    [(NSNumber *)self->inputFacesGainMultip floatValue];
    v24 = [CIVector vectorWithX:v23 Y:1.0 Z:1.0 W:0.5];
    [(CIImage *)self->inputImage extent];
    v26 = v25;
    [(CIImage *)self->inputImage extent];
    v28 = v27;
    [(NSNumber *)self->inputApertureScaling floatValue];
    v30 = v29;
    [(CIImage *)self->inputImage extent];
    v32 = v31;
    [(CIImage *)self->inputImage extent];
    v33 = v26 / v28;
    v34 = [CIVector vectorWithX:v33 Y:v30 Z:v32 W:?];
    inputFacesCenterX = self->inputFacesCenterX;
    inputFacesCenterY = self->inputFacesCenterY;
    v57[0] = self->inputImage;
    v57[1] = inputFacesCenterX;
    inputFacesLeftEyeX = self->inputFacesLeftEyeX;
    inputFacesLeftEyeY = self->inputFacesLeftEyeY;
    v57[2] = inputFacesCenterY;
    v57[3] = inputFacesLeftEyeX;
    inputFacesRightEyeX = self->inputFacesRightEyeX;
    inputFacesRightEyeY = self->inputFacesRightEyeY;
    v57[4] = inputFacesLeftEyeY;
    v57[5] = inputFacesRightEyeX;
    inputFacesChinX = self->inputFacesChinX;
    v57[6] = inputFacesRightEyeY;
    v57[7] = inputFacesChinX;
    v57[8] = self->inputFacesChinY;
    v57[9] = v15;
    v57[10] = v22;
    v57[11] = v24;
    v57[12] = v34;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:13];
    v43 = [(CIFaceMaskCalculator *)self metalKernel];
    v55 = @"kCIKernelOutputFormat";
    v56 = [MEMORY[0x1E696AD98] numberWithInt:{2056, MEMORY[0x1E69E9820], 3221225472, __38__CIFaceMaskCalculator_outputImage_V4__block_invoke, &unk_1E75C2528, &v47}];
    v44 = [v43 applyWithExtent:&v46 roiCallback:v42 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v56, &v55, 1), 0.0, 0.0, 5.0, 1.0}];
    _Block_object_dispose(&v47, 8);
    return v44;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

- (id)outputImage
{
  v66[4] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    if ([-[CIFaceMaskCalculator valueForKey:](self valueForKey:{@"__inputVersion", "unsignedIntegerValue"}] < 3)
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x5012000000;
      v58 = __Block_byref_object_copy__7;
      v59 = __Block_byref_object_dispose__7;
      v60 = &unk_19D0E11CF;
      v4 = *(MEMORY[0x1E695F050] + 16);
      v61 = *MEMORY[0x1E695F050];
      v62 = v4;
      v71.origin = v61;
      v71.size = v4;
      v68.origin.x = addPoints(self->inputFacesLeftEyeX, self->inputFacesLeftEyeY, v71, 1.0, 1.0);
      *(v56 + 6) = v68;
      v69.origin.x = addPoints(self->inputFacesRightEyeX, self->inputFacesRightEyeY, v68, 1.0, 1.0);
      *(v56 + 6) = v69;
      v70 = CGRectIntegral(v69);
      *(v56 + 6) = CGRectInset(v70, -1.0, -1.0);
      [(NSNumber *)self->inputMaxBlur floatValue];
      v6 = v5;
      [(NSNumber *)self->inputFacesCapMultip floatValue];
      v8 = v7;
      [(NSNumber *)self->inputFacesMaxBlurOnEyes floatValue];
      v10 = v9;
      [(NSNumber *)self->inputFacesMaxBlurDistFromFocus floatValue];
      v12 = [CIVector vectorWithX:v6 Y:v8 Z:v10 W:v11];
      [(NSNumber *)self->inputFacesLinearBlurGrowthM floatValue];
      v14 = v13;
      [(NSNumber *)self->inputFacesLinearBlurGrowthC floatValue];
      v16 = v15;
      [(NSNumber *)self->inputFacesEyeToEyebrowRatio floatValue];
      v18 = v17;
      [(NSNumber *)self->inputFacesDistToBlurScaling floatValue];
      v20 = [CIVector vectorWithX:v14 Y:v16 Z:v18 W:v19];
      [(NSNumber *)self->inputFacesGainMultip floatValue];
      v22 = v21;
      [(CIImage *)self->inputImage extent];
      v24 = v23;
      [(CIImage *)self->inputImage extent];
      v26 = v25;
      [(CIImage *)self->inputImage extent];
      v28 = v27;
      [(CIImage *)self->inputImage extent];
      v29 = v24;
      v30 = v26;
      v53 = [CIVector vectorWithX:v22 Y:(v29 / v30) Z:v28 W:?];
      SDOFFaceMaskValue(@"chinVectorSnapping", self->inputTuningParameters);
      v32 = v31;
      [(NSNumber *)self->inputApertureScaling floatValue];
      v52 = [CIVector vectorWithX:v32 Y:v33 Z:0.0 W:0.0];
      for (i = 0; i != 4; ++i)
      {
        [(CIVector *)self->inputFacesLeftEyeX valueAtIndex:i, v52];
        v35 = 0.0;
        if (v36 != -1.0)
        {
          [(CIVector *)self->inputFacesLeftEyeY valueAtIndex:i];
          if (v37 != -1.0)
          {
            [(CIVector *)self->inputFacesRightEyeX valueAtIndex:i];
            if (v38 != -1.0)
            {
              [(CIVector *)self->inputFacesRightEyeY valueAtIndex:i];
              if (v39 != -1.0)
              {
                [(CIVector *)self->inputFacesCenterX valueAtIndex:i];
                if (v40 != -1.0)
                {
                  [(CIVector *)self->inputFacesCenterY valueAtIndex:i];
                  if (v41 != -1.0)
                  {
                    [(CIVector *)self->inputFacesChinX valueAtIndex:i];
                    if (v42 != -1.0)
                    {
                      [(CIVector *)self->inputFacesChinY valueAtIndex:i];
                      if (v43 == -1.0)
                      {
                        v35 = 0.0;
                      }

                      else
                      {
                        v35 = 1.0;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        *&v66[i] = v35;
      }

      v44 = [CIVector vectorWithValues:v66 count:4];
      inputFacesLeftEyeX = self->inputFacesLeftEyeX;
      v65[0] = self->inputImage;
      v65[1] = inputFacesLeftEyeX;
      inputFacesCenterX = self->inputFacesCenterX;
      v65[2] = self->inputFacesLeftEyeY;
      v65[3] = inputFacesCenterX;
      inputFacesRightEyeX = self->inputFacesRightEyeX;
      v65[4] = self->inputFacesCenterY;
      v65[5] = inputFacesRightEyeX;
      inputFacesChinX = self->inputFacesChinX;
      v65[6] = self->inputFacesRightEyeY;
      v65[7] = inputFacesChinX;
      v65[8] = self->inputFacesChinY;
      v65[9] = v12;
      v65[10] = v20;
      v65[11] = v53;
      v65[12] = v52;
      v65[13] = v44;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:14];
      v50 = [(CIFaceMaskCalculator *)self _kernel];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __35__CIFaceMaskCalculator_outputImage__block_invoke;
      v54[3] = &unk_1E75C2528;
      v54[4] = &v55;
      v63 = @"kCIKernelOutputFormat";
      v64 = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v51 = [v50 applyWithExtent:v54 roiCallback:v49 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v64, &v63, 1), 0.0, 0.0, 5.0, 1.0}];
      _Block_object_dispose(&v55, 8);
      return v51;
    }

    else
    {

      return [(CIFaceMaskCalculator *)self outputImage_V4];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end