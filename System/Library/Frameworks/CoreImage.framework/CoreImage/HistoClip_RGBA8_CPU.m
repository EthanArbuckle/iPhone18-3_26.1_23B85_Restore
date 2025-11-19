@interface HistoClip_RGBA8_CPU
- (id)outputImage;
@end

@implementation HistoClip_RGBA8_CPU

- (id)outputImage
{
  v34[5] = *MEMORY[0x1E69E9840];
  v31 = 0;
  v3 = *MEMORY[0x1E695F040];
  v4 = *(MEMORY[0x1E695F040] + 8);
  v6 = *(MEMORY[0x1E695F040] + 16);
  v5 = *(MEMORY[0x1E695F040] + 24);
  inputCenterLeft = self->inputCenterLeft;
  v34[0] = self->inputImage;
  v34[1] = inputCenterLeft;
  inputDetectionLeft = self->inputDetectionLeft;
  v34[2] = self->inputCenterRight;
  v34[3] = inputDetectionLeft;
  v34[4] = self->inputDetectionRight;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
  inputPercentileRepair = self->inputPercentileRepair;
  v32[0] = @"percentileRepair";
  v32[1] = @"percentileSpecular";
  inputPercentileSpecular = self->inputPercentileSpecular;
  inputPercentRepair = self->inputPercentRepair;
  v33[0] = inputPercentileRepair;
  v33[1] = inputPercentileSpecular;
  inputPercentSpecular = self->inputPercentSpecular;
  v32[2] = @"percentRepair";
  v32[3] = @"percentSpecular";
  v33[2] = inputPercentRepair;
  v33[3] = inputPercentSpecular;
  inputInterPeakMinRepair = self->inputInterPeakMinRepair;
  inputMinimum = self->inputMinimum;
  v32[4] = @"interPeakMinRepair";
  v32[5] = @"threshold";
  inputMaxArea = self->inputMaxArea;
  v33[4] = inputInterPeakMinRepair;
  v33[5] = inputMinimum;
  v32[6] = @"area";
  v32[7] = @"centerOffsetLeft";
  inputCenterOffsetLeft = self->inputCenterOffsetLeft;
  inputCenterOffsetRight = self->inputCenterOffsetRight;
  v33[6] = inputMaxArea;
  v33[7] = inputCenterOffsetLeft;
  inputCenterExtentLeft = self->inputCenterExtentLeft;
  v32[8] = @"centerOffsetRight";
  v32[9] = @"centerExtentLeft";
  v33[8] = inputCenterOffsetRight;
  v33[9] = inputCenterExtentLeft;
  inputCenterExtentRight = self->inputCenterExtentRight;
  inputAbortMaxCenterDist = self->inputAbortMaxCenterDist;
  v32[10] = @"centerExtentRight";
  v32[11] = @"abortMaxCenterDist";
  inputMinDensity = self->inputMinDensity;
  v33[10] = inputCenterExtentRight;
  v33[11] = inputAbortMaxCenterDist;
  v32[12] = @"minDensity";
  v32[13] = @"maxRelDensity";
  inputMaxRelDensity = self->inputMaxRelDensity;
  inputDensityRadius = self->inputDensityRadius;
  v33[12] = inputMinDensity;
  v33[13] = inputMaxRelDensity;
  inputMaxAreaRatio = self->inputMaxAreaRatio;
  v32[14] = @"densityRadius";
  v32[15] = @"areaMaxRatio";
  v33[14] = inputDensityRadius;
  v33[15] = inputMaxAreaRatio;
  v33[16] = self->inputTuning;
  v32[16] = @"tuning";
  v32[17] = @"roi";
  [(CIImage *)self->inputImage extent];
  v26 = [CIVector vectorWithCGRect:?];
  inputMinInterDispersion = self->inputMinInterDispersion;
  v33[17] = v26;
  v33[18] = inputMinInterDispersion;
  inputMaxInterDispersion = self->inputMaxInterDispersion;
  v32[18] = @"minInterDispersion";
  v32[19] = @"maxInterDispersion";
  v32[20] = @"minGobalLocalMeanDiff";
  inputMinGobalLocalMeanDiff = self->inputMinGobalLocalMeanDiff;
  v33[19] = inputMaxInterDispersion;
  v33[20] = inputMinGobalLocalMeanDiff;
  return +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](PercentileClipProcessor_RGBA8_CPU, "applyWithExtent:inputs:arguments:error:", v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:21], &v31, v3, v4, v6, v5);
}

@end