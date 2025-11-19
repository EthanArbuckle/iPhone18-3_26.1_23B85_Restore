@interface RedEyeGlintFinder
- (id)outputImage;
@end

@implementation RedEyeGlintFinder

- (id)outputImage
{
  v22[3] = *MEMORY[0x1E69E9840];
  if (outputImage_onceToken_0 != -1)
  {
    [RedEyeGlintFinder outputImage];
  }

  [(CIVector *)self->inputThresholds X];
  v4 = v3;
  [(CIVector *)self->inputThresholds Y];
  v6 = v5;
  [(CIVector *)self->inputThresholds Z];
  *&v7 = v7;
  v8 = 1.0 / (1.0 - v4);
  v9 = 1.0 / (1.0 - v6);
  v10 = 1.0 / (1.0 - *&v7);
  v11 = v8 + -1.0;
  v12 = v9 + -1.0;
  v13 = v10 + -1.0;
  v14 = [CIVector vectorWithX:v8 Y:v9 Z:v10 W:0.0];
  v15 = [CIVector vectorWithX:v11 Y:v12 Z:v13 W:0.0];
  v16 = [outputImage_kernels objectAtIndexedSubscript:0];
  [(CIImage *)self->inputImage extent];
  v22[0] = self->inputImage;
  v22[1] = v14;
  v22[2] = v15;
  return [v16 applyWithExtent:&__block_literal_global_5_2 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v22, 3), v17, v18, v19, v20}];
}

NSArray *__32__RedEyeGlintFinder_outputImage__block_invoke()
{
  result = +[CIKernel kernelsWithString:](CIColorKernel, "kernelsWithString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:{"kernel vec4 _redEyeGlintfinder(__sample a, vec4 factors, vec4 offsets) { vec4 b = max(sqrt(a)*factors - offsets, vec4(0.0)); float y = b.r * b.g * b.b; return vec4(y, y, y, 1.0); }"}]);
  outputImage_kernels = result;
  return result;
}

@end