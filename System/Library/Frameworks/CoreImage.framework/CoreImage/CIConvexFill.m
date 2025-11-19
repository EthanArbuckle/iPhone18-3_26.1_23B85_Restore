@interface CIConvexFill
- (id)outputImage;
@end

@implementation CIConvexFill

- (id)outputImage
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695F040];
  v4 = *(MEMORY[0x1E695F040] + 8);
  v6 = *(MEMORY[0x1E695F040] + 16);
  v5 = *(MEMORY[0x1E695F040] + 24);
  v14 = 0;
  inputCenter = self->inputCenter;
  v17[0] = self->inputImage;
  v17[1] = inputCenter;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{2, 0}];
  v16[0] = self->inputThreshold;
  v15[0] = @"kThreshold";
  v15[1] = @"kAreaThresholdLo";
  v9 = MEMORY[0x1E696AD98];
  [(CIVector *)self->inputAreaThresholdLoHi X];
  v16[1] = [v9 numberWithDouble:?];
  v15[2] = @"kAreaThresholdHi";
  v10 = MEMORY[0x1E696AD98];
  [(CIVector *)self->inputAreaThresholdLoHi Y];
  v11 = [v10 numberWithDouble:?];
  v15[3] = @"kSplatArea";
  inputSplat = self->inputSplat;
  v16[2] = v11;
  v16[3] = inputSplat;
  return +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](ConvexFillProcessor, "applyWithExtent:inputs:arguments:error:", v8, [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4], &v14, v3, v4, v6, v5);
}

@end