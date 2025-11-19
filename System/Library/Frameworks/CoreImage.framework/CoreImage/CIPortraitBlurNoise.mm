@interface CIPortraitBlurNoise
- (id)_kernel;
- (id)_kernelMetal;
- (id)outputImage;
@end

@implementation CIPortraitBlurNoise

- (id)_kernel
{
  if ([CIPortraitBlurNoise _kernel]::onceToken != -1)
  {
    [CIPortraitBlurNoise _kernel];
  }

  return [CIPortraitBlurNoise _kernel]::k;
}

CIColorKernel *__30__CIPortraitBlurNoise__kernel__block_invoke()
{
  result = [CIColorKernel kernelWithString:@"vec2 __pseudo_randKY( vec2 pos)\n{\nfloat rand1 = mod(12.63 * pos.x - 57.3 * pos.y * pos.y, 0.01369) \n+ mod(75.833 * pos.y - 37.135 * pos.x * pos.x, 0.014) \n+ mod(39.7 * pos.x * pos.y + 21.7 * pos.x * pos.y * pos.y, 0.0879);\nvec2 rand2 = fract(3576.7453 * vec2( rand1, 2.0 * rand1));\nvec2 rand3 = fract(vec2(7.7387 * (rand2.x + rand2.y), 33.707 * (rand2.x - rand2.y)));\nreturn rand3;\n}\nkernel vec4 _CIPortraitBlurNoise(__sample pixBlurred, vec4 params)\n{\n    float lumaNoiseAmpl = params.x;\n    float lumaNoiseModelCoeff = params.y;\n    vec2 randVal = __pseudo_randKY( destCoord() / params.zw);\n    float noiseLuma = clamp( sqrt( -2.0 * log(randVal.x)) * cos( 6.2832 * randVal.y), -5.0, 5.0);\n    vec4 kRGB_to_Y = vec4( 0.299, 0.587, 0.114, 0.0);\n    float outLuma = dot( pixBlurred, kRGB_to_Y);\n    float addLumaNoiseLevel = lumaNoiseAmpl * mix( 1.0, outLuma, lumaNoiseModelCoeff);\n    vec4 pixOut = clamp( pixBlurred + (noiseLuma * addLumaNoiseLevel), 0.0, 1.0);\n    pixOut.w = pixBlurred.w;\n\t return pixOut;\n}\n"];
  [CIPortraitBlurNoise _kernel]::k = result;
  return result;
}

- (id)_kernelMetal
{
  if ([CIPortraitBlurNoise _kernelMetal]::onceToken != -1)
  {
    [CIPortraitBlurNoise _kernelMetal];
  }

  return [CIPortraitBlurNoise _kernelMetal]::k;
}

id __35__CIPortraitBlurNoise__kernelMetal__block_invoke()
{
  result = [CIColorKernel SDOFV2MetalKernelNamed:@"_CIPortraitBlurNoiseM"];
  [CIPortraitBlurNoise _kernelMetal]::k = result;
  return result;
}

- (id)outputImage
{
  v24[2] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  v4 = v3;
  v6 = v5;
  if ([(NSNumber *)self->inputUseMetal BOOLValue])
  {
    v7 = [(CIPortraitBlurNoise *)self _kernelMetal];
  }

  else
  {
    v7 = [(CIPortraitBlurNoise *)self _kernel];
  }

  v8 = v7;
  if (!v7)
  {
    v8 = [(CIPortraitBlurNoise *)self _kernel];
  }

  [(CIImage *)self->inputImage extent];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v24[0] = self->inputImage;
  [(NSNumber *)self->inputLumaNoiseAmpl floatValue];
  v18 = v17;
  [(NSNumber *)self->inputLumaNoiseModelCoeff floatValue];
  v24[1] = [CIVector vectorWithX:v18 Y:v19 Z:v4 W:v6];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v22 = @"kCIKernelOutputFormat";
  v23 = [MEMORY[0x1E696AD98] numberWithInt:264];
  return [v8 applyWithExtent:v20 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v23, &v22, 1), v10, v12, v14, v16}];
}

@end