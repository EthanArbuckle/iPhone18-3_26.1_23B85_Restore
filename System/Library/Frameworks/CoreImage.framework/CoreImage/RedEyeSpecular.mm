@interface RedEyeSpecular
- (id)outputImage;
@end

@implementation RedEyeSpecular

- (id)outputImage
{
  v13[6] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_spec];
  v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_drr_spec_debug];
  if ([(NSNumber *)self->inputDebugFlag intValue]> 0)
  {
    v3 = v4;
  }

  [(CIImage *)self->inputImage extent];
  inputSource = self->inputSource;
  v13[0] = self->inputImage;
  v13[1] = inputSource;
  inputSpecIntensity = self->inputSpecIntensity;
  v13[2] = self->inputSpecularMask;
  v13[3] = inputSpecIntensity;
  inputDebugFlag = self->inputDebugFlag;
  v13[4] = self->inputSpecularThreshold;
  v13[5] = inputDebugFlag;
  return -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6], v8, v9, v10, v11);
}

@end