@interface CUISDFClamp
- (id)outputImage;
@end

@implementation CUISDFClamp

- (id)outputImage
{
  v21[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [CIKernel kernelWithInternalRepresentation:&CI::_clampToFrame];
    if (v4)
    {
      v5 = v4;
      [(CIImage *)inputImage extent];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(CIImage *)inputImage extent];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __26__CUISDFClamp_outputImage__block_invoke;
      v20[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v20[4] = v7;
      v20[5] = v9;
      v20[6] = v11;
      v20[7] = v13;
      inputFrame = self->inputFrame;
      v21[0] = inputImage;
      v21[1] = inputFrame;
      return -[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", v20, [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2], v15, v16, v17, v18);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end