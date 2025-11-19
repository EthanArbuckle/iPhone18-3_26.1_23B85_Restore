@interface CheapRandomness
- (id)outputImage;
@end

@implementation CheapRandomness

- (id)outputImage
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_noise];
  v4 = *MEMORY[0x1E695F040];
  v5 = *(MEMORY[0x1E695F040] + 8);
  v6 = *(MEMORY[0x1E695F040] + 16);
  v7 = *(MEMORY[0x1E695F040] + 24);
  inputScale = self->inputScale;
  v15[0] = self->inputDither;
  v15[1] = inputScale;
  v9 = -[CIColorKernel applyWithExtent:roiCallback:arguments:](v3, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_22, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2], v4, v5, v6, v7);
  [(NSNumber *)self->inputScale floatValue];
  if (v10 > 1.0)
  {
    v11 = self->inputScale;
    v13 = @"inputRadius";
    v14 = v11;
    return [v9 imageByApplyingFilter:@"CIBoxBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
  }

  return v9;
}

@end