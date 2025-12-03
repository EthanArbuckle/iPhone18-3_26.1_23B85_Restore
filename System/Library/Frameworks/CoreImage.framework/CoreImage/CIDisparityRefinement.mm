@interface CIDisparityRefinement
+ (id)customAttributes;
- (id)_propagateDisparity;
- (id)_propagateDisparityCombined;
- (id)_propagateDisparityR1;
- (id)_propagateDisparityR1Combined;
- (id)generatePyramidLevel:(id)level useMetal:(BOOL)metal;
- (id)initialConversionForSize:(CGSize)size useMetal:(BOOL)metal;
- (id)outputImage;
- (id)outputImageUsingMetal:(BOOL)metal;
- (id)propagateDisparity:(id)disparity pyramids:(id *)pyramids useMetal:(BOOL)metal computedPyramidLevels:(int)levels;
- (id)shiftmapLevelZeroWithSize:(CGSize)size useMetal:(BOOL)metal;
- (id)smoothDisparityImage:(id)image useMetal:(BOOL)metal;
@end

@implementation CIDisparityRefinement

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryColorAdjustment";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryBuiltIn";
  v13[4] = @"CICategoryApplePrivate";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  v15[1] = @"11";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"10.13";
  v14[3] = @"inputPropagateKernel";
  v11[0] = @"CIAttributeSliderMin";
  v11[1] = @"CIAttributeSliderMax";
  v12[0] = &unk_1F10833C8;
  v12[1] = &unk_1F10833D8;
  v11[2] = @"CIAttributeMin";
  v11[3] = @"CIAttributeMax";
  v12[2] = &unk_1F10833C8;
  v12[3] = &unk_1F10833D8;
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F10833E8;
  v12[5] = @"CIAttributeTypeScalar";
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v14[4] = @"inputSmoothSigma";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F10833C8;
  v10[1] = &unk_1F10833E8;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F10833C8;
  v10[3] = &unk_1F10833E8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10833F8;
  v10[5] = @"CIAttributeTypeScalar";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v14[5] = @"inputPropogateMinWeightSum";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F10833C8;
  v8[1] = &unk_1F1083408;
  v8[2] = &unk_1F10833C8;
  v8[3] = &unk_1F1083408;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1083418;
  v8[5] = @"CIAttributeTypeScalar";
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputPropogateSigmaLuma";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F10833C8;
  v6[1] = &unk_1F1083428;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F10833C8;
  v6[3] = &unk_1F1083428;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1083438;
  v6[5] = @"CIAttributeTypeScalar";
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v14[7] = @"inputPropogateSigmaChroma";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F10833C8;
  v4[1] = &unk_1F1083428;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F10833C8;
  v4[3] = &unk_1F1083428;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10833D8;
  v4[5] = @"CIAttributeTypeScalar";
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)_propagateDisparity
{
  if ([CIDisparityRefinement _propagateDisparity]::onceToken != -1)
  {
    [CIDisparityRefinement _propagateDisparity];
  }

  return [CIDisparityRefinement _propagateDisparity]::kernel;
}

CIKernel *__44__CIDisparityRefinement__propagateDisparity__block_invoke()
{
  result = [CIKernel kernelWithString:@"float _local_yuvWeightG(vec4 pix1, vec4 pix2, vec2 sigmaLumaChmaRecip)\n{\n    vec3 yuv = pix1.xyz - pix2.xyz;\n    yuv.xyz = (yuv.xyz * yuv.xyz) * sigmaLumaChmaRecip.xyy;\n    return exp(-(yuv.x+yuv.y+yuv.z));\n}\n\nkernel vec4 _CIPropagateDisparity(sampler inDispMap, sampler yuv0, sampler yuv1, vec4 params)\n{\n    int   radius        = int(params.x); \n    vec2  sigmaLCRecip  = params.yz;\n    float pmws          = params.w; \n    vec2  dc            = destCoord();\n\n    vec2 gidHalf = floor(0.5*dc) + vec2(0.5);\n\n    vec4  ref           = sample(yuv0, samplerTransform(yuv0, dc));\n    float sow           = 0.0;\n    float sowd          = 0.0;\n    \n    for (int y = -radius; y <= radius; y++) {\n        for (int x = -radius; x <= radius; x++) {\n        \t vec2 p  = vec2(float(x), float(y));\n            vec4 p2 = sample(yuv1, samplerTransform(yuv1, gidHalf + p));\n            float d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + p)).r;\n            float w = _local_yuvWeightG(ref, p2, sigmaLCRecip);\n            sow+= w; sowd+= w * d;\n        }\n    }\n    float alt = sample(inDispMap, samplerTransform(inDispMap, gidHalf)).r;\n    float rc = (sow < pmws) ? alt : (sowd / sow);\n\t\n\treturn vec4(rc, rc, rc, 1.0);\n}\n\n"];
  [CIDisparityRefinement _propagateDisparity]::kernel = result;
  return result;
}

- (id)_propagateDisparityR1
{
  if ([CIDisparityRefinement _propagateDisparityR1]::onceToken != -1)
  {
    [CIDisparityRefinement _propagateDisparityR1];
  }

  return [CIDisparityRefinement _propagateDisparityR1]::kernel;
}

CIKernel *__46__CIDisparityRefinement__propagateDisparityR1__block_invoke()
{
  result = [CIKernel kernelWithString:@"float _local_yuvWeight(vec4 pix1, vec4 pix2, vec2 sigmaLumaChmaRecip)\n{\n    vec3 yuv = pix1.xyz - pix2.xyz;\n    yuv.xyz = (yuv.xyz * yuv.xyz) * sigmaLumaChmaRecip.xyy;\n    return exp(-(yuv.x+yuv.y+yuv.z));\n}\n\nkernel vec4 _CIPropagateDisparityR1(sampler inDispMap, sampler yuv0, sampler yuv1, vec4 params)\n{\n    vec2  sigmaLCRecip  = params.yz;\n    float pmws          = params.w; \n    vec2  dc            = destCoord();\n\n    vec2 gidHalf = floor(0.5*dc) + vec2(0.5);\n\n    vec4  ref           = sample(yuv0, samplerTransform(yuv0, dc));\n    float sow           = 0.0;\n    float sowd          = 0.0;\n    \n    vec4 p;\n    float d, w;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2(-1.0, -1.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2(-1.0, -1.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2( 0.0, -1.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2( 0.0, -1.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2( 1.0, -1.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2( 1.0, -1.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2(-1.0, 0.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2(-1.0, 0.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2( 0.0, 0.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2( 0.0, 0.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    float alt = d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2( 1.0, 0.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2( 1.0, 0.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2(-1.0, 1.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2(-1.0, 1.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2( 0.0, 1.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2( 0.0, 1.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    p = sample(yuv1, samplerTransform(yuv1, gidHalf + vec2( 1.0, 1.0)));\n    d = sample(inDispMap, samplerTransform(inDispMap, gidHalf + vec2( 1.0, 1.0))).r;\n    w = _local_yuvWeight(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * d;\n    float rc = (sow < pmws) ? alt : (sowd / sow);\n\t\n\treturn vec4(rc, rc, rc, 1.0);\n}\n\n"];
  [CIDisparityRefinement _propagateDisparityR1]::kernel = result;
  return result;
}

- (id)_propagateDisparityR1Combined
{
  if ([CIDisparityRefinement _propagateDisparityR1Combined]::onceToken != -1)
  {
    [CIDisparityRefinement _propagateDisparityR1Combined];
  }

  return [CIDisparityRefinement _propagateDisparityR1Combined]::kernel;
}

CIKernel *__54__CIDisparityRefinement__propagateDisparityR1Combined__block_invoke()
{
  result = [CIKernel kernelWithString:@"float _local_yuvWeightC(vec4 pix1, vec4 pix2, vec2 sigmaLumaChmaRecip)\n{\n    vec3 yuv = pix1.xyz - pix2.xyz;\n    yuv.xyz = (yuv.xyz * yuv.xyz) * sigmaLumaChmaRecip.xyy;\n    return exp(-(yuv.x+yuv.y+yuv.z));\n}\n\nkernel vec4 _CIPropagateDisparityR1C(sampler image, sampler yuv0, vec4 params)\n{\n    vec2  sigmaLCRecip  = params.yz;\n    float pmws          = params.w; \n    vec2  dc            = destCoord();\n\n    vec2 gidHalf = floor(0.5*dc) + vec2(0.5);\n\n    vec4  ref           = sample(yuv0, samplerTransform(yuv0, dc));\n    float sow           = 0.0;\n    float sowd          = 0.0;\n    \n    vec4 p;\n    float w;\n    p = sample(image, samplerTransform(image, gidHalf + vec2(-1.0, -1.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2( 0.0, -1.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2( 1.0, -1.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2(-1.0, 0.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    float alt = p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2( 1.0, 0.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2(-1.0, 1.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2( 0.0, 1.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    p = sample(image, samplerTransform(image, gidHalf + vec2( 1.0, 1.0)));\n    w = _local_yuvWeightC(ref, p, sigmaLCRecip);\n    sow+= w; sowd+= w * p.a;\n    float rc = (sow < pmws) ? alt : (sowd / sow);\n\t\n\treturn vec4(rc, rc, rc, 1.0);\n}\n\n"];
  [CIDisparityRefinement _propagateDisparityR1Combined]::kernel = result;
  return result;
}

- (id)_propagateDisparityCombined
{
  if ([CIDisparityRefinement _propagateDisparityCombined]::onceToken != -1)
  {
    [CIDisparityRefinement _propagateDisparityCombined];
  }

  return [CIDisparityRefinement _propagateDisparityCombined]::kernel;
}

CIKernel *__52__CIDisparityRefinement__propagateDisparityCombined__block_invoke()
{
  result = [CIKernel kernelWithString:@"float _local_yuvWeightG2(vec4 pix1, vec4 pix2, vec2 sigmaLumaChmaRecip)\n{\n    vec3 yuv = pix1.xyz - pix2.xyz;\n    yuv.xyz = (yuv.xyz * yuv.xyz) * sigmaLumaChmaRecip.xyy;\n    return exp(-(yuv.x+yuv.y+yuv.z));\n}\n\nkernel vec4 _CIPropagateDisparityRC(sampler image, sampler yuv0, vec4 params)\n{\n    int   radius        = int(params.x); \n    vec2  sigmaLCRecip  = params.yz;\n    float pmws          = params.w; \n    vec2  dc            = destCoord();\n\n    vec2 gidHalf = floor(0.5*dc) + vec2(0.5);\n\n    vec4  ref           = sample(yuv0, samplerTransform(yuv0, dc));\n    float sow           = 0.0;\n    float sowd          = 0.0;\n    \n    for (int y = -radius; y <= radius; y++) {\n        for (int x = -radius; x <= radius; x++) {\n            vec4  p = sample(image, samplerTransform(image, gidHalf + vec2(float(x), float(y))));\n            float w = _local_yuvWeightG2(ref, p, sigmaLCRecip);\n            sow+= w; sowd+= w * p.a;\n        }\n    }\n    float alt = sample(image, samplerTransform(image, gidHalf)).r;\n    float rc = (sow < pmws) ? alt : (sowd / sow);\n\t\n\treturn vec4(rc, rc, rc, 1.0);\n}\n\n"];
  [CIDisparityRefinement _propagateDisparityCombined]::kernel = result;
  return result;
}

- (id)initialConversionForSize:(CGSize)size useMetal:(BOOL)metal
{
  metalCopy = metal;
  height = size.height;
  width = size.width;
  v37[3] = *MEMORY[0x1E69E9840];
  colorSpace = [(CIImage *)self->inputImage colorSpace];
  if (colorSpace)
  {
    v9 = [(CIImage *)self->inputImage imageByColorMatchingWorkingSpaceToColorSpace:colorSpace];
  }

  else
  {
    v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v9 = [(CIImage *)self->inputImage imageByColorMatchingWorkingSpaceToColorSpace:v10];
    CGColorSpaceRelease(v10);
  }

  v36[0] = @"inputRVector";
  v37[0] = [CIVector vectorWithX:0.2126 Y:0.7152 Z:0.0722 W:0.0];
  v36[1] = @"inputGVector";
  v37[1] = [CIVector vectorWithX:-0.114572 Y:-0.385428 Z:0.5 W:0.5];
  v36[2] = @"inputBVector";
  v37[2] = [CIVector vectorWithX:0.5 Y:-0.454153 Z:-0.045847 W:0.5];
  v11 = -[CIImage imageByApplyingFilter:withInputParameters:](v9, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3]);
  saveImage(v11, @"/tmp/yuvImageUsingConstants.tiff", 0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  [(CIImage *)self->inputImage extent];
  v13 = v12 / width;
  v32 = v13;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  [(CIImage *)self->inputImage extent];
  v15 = v14 / height;
  v28 = v15;
  _initialConversionRGB = [(CIDisparityRefinement *)self _initialConversionRGB];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__CIDisparityRefinement_initialConversionForSize_useMetal___block_invoke;
  v24[3] = &unk_1E75C2500;
  v24[4] = &v29;
  v24[5] = &v25;
  v35[0] = v11;
  v35[1] = [CIVector vectorWithX:v30[6] Y:v26[6]];
  v17 = [_initialConversionRGB applyWithExtent:v24 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v35, 2), 0.0, 0.0, width, height}];
  v23 = 0;
  v34 = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v33 = [CIVector vectorWithX:-2.0 Y:-2.0];
  v19 = +[CIGenericMetalProcessor applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:](CIGenericMetalProcessor, "applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:", @"kernel_InitialConversion", v18, &unk_1F1085578, [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1], 0, 0, 0.0, 0.0, width, height, &v23);
  if (v19)
  {
    v20 = metalCopy;
  }

  else
  {
    v20 = 0;
  }

  if (v20 && v23 == 0)
  {
    v17 = v19;
  }

  if (metalCopy)
  {
    v21 = @"/tmp/initialConversion-Metal.tiff";
  }

  else
  {
    v21 = @"/tmp/initialConversion-CI.tiff";
  }

  saveImage(v17, v21, 0);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v17;
}

double __59__CIDisparityRefinement_initialConversionForSize_useMetal___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v8.origin.x = a2 * v5;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v8.origin.y = a3 * v6;
  v8.size.width = a4 * v5;
  v8.size.height = a5 * v6;
  *&result = CGRectInset(v8, -2.0, -2.0);
  return result;
}

- (id)shiftmapLevelZeroWithSize:(CGSize)size useMetal:(BOOL)metal
{
  metalCopy = metal;
  height = size.height;
  width = size.width;
  v28[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputDisparityImage extent];
  v9 = v8;
  v10 = v9 / width;
  [(CIImage *)self->inputDisparityImage extent];
  v12 = v11;
  inputDisparityImage = self->inputDisparityImage;
  v14 = v12 / height;
  v15 = v10;
  v16 = v14;
  CGAffineTransformMakeScale(&v24, 1.0 / v15, 1.0 / v14);
  v17 = [(CIImage *)inputDisparityImage imageByApplyingTransform:&v24];
  v24.a = 0.0;
  v28[0] = self->inputDisparityImage;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v27 = [CIVector vectorWithX:v15 Y:v16];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v25 = @"scaleFactors";
  v26 = [CIVector vectorWithX:v15 Y:v16];
  v20 = +[CIGenericMetalProcessor applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:](CIGenericMetalProcessorSingleChannel, "applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:", @"kernel_UpscaleShiftmap", v18, 0, 0, v19, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1], 0.0, 0.0, width, height, &v24);
  if (v20)
  {
    v21 = metalCopy;
  }

  else
  {
    v21 = 0;
  }

  if (v21 && *&v24.a == 0)
  {
    v17 = v20;
  }

  if (metalCopy)
  {
    v22 = @"/tmp/upsampledShiftmap-Metal.tiff";
  }

  else
  {
    v22 = @"/tmp/upsampledShiftmap-CI.tiff";
  }

  saveImage(v17, v22, 1);
  return v17;
}

- (id)generatePyramidLevel:(id)level useMetal:(BOOL)metal
{
  metalCopy = metal;
  v25[1] = *MEMORY[0x1E69E9840];
  [level extent];
  v8 = v7 * 0.5;
  v10 = v9 * 0.5;
  v12 = v11 * 0.5;
  v14 = v13 * 0.5;
  _pyramidGenerateLevel = [(CIDisparityRefinement *)self _pyramidGenerateLevel];
  v25[0] = level;
  v16 = [_pyramidGenerateLevel applyWithExtent:&__block_literal_global_109 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v25, 1), v8, v10, v12, v14}];
  v22 = 0;
  levelCopy = level;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&levelCopy count:1];
  v23 = [CIVector vectorWithX:-1.0 Y:-1.0];
  v18 = +[CIGenericMetalProcessor applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:](CIGenericMetalProcessor, "applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:", @"kernel_PyramidGenerateLevel", v17, &unk_1F1085590, [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1], 0, 0, v8, v10, v12, v14, &v22);
  if (v22)
  {
    v19 = 0;
  }

  else
  {
    v19 = metalCopy;
  }

  if (v19 && v18 != 0)
  {
    v16 = v18;
  }

  if (metalCopy)
  {
    v20 = @"/tmp/pyramidLevel1-Metal.tiff";
  }

  else
  {
    v20 = @"/tmp/pyramidLevel1-CI.tiff";
  }

  saveImage(v16, v20, 0);
  return v16;
}

- (id)smoothDisparityImage:(id)image useMetal:(BOOL)metal
{
  v55[2] = *MEMORY[0x1E69E9840];
  if (image)
  {
    metalCopy = metal;
    [(CIVector *)self->inputOriginalSize CGPointValue];
    v8 = v7;
    v10 = v9;
    [(CIImage *)self->inputImage extent];
    v12 = v11;
    v14 = v13;
    [(CIImage *)self->inputDisparityImage extent];
    v16 = v15;
    v18 = v17;
    [(NSNumber *)self->inputScale floatValue];
    v19 = shiftmapSize(v12, v14, v16, v18, v8, v10);
    v21 = v20;
    [(NSNumber *)self->inputSmoothSigma floatValue];
    LODWORD(v12) = v22;
    [(NSNumber *)self->inputPropagateSigmaLuma floatValue];
    v46 = v23;
    [(NSNumber *)self->inputPropagateSigmaChma floatValue];
    v45 = v24;
    v25 = *&v12 * (*&v12 + *&v12);
    v26 = [objc_msgSend(image "imageByClampingToExtent")];
    if (v25 <= 0.0001)
    {
      v27 = 0.0001;
    }

    else
    {
      v27 = v25;
    }

    v28 = exp(-1.0 / v27);
    v29 = exp(-1.41421356 / v27);
    v30 = v28 * 4.0 + 1.0 + v29 * 4.0;
    v31 = 1.0 / v30;
    v32 = [CIVector vectorWithX:"vectorWithX:Y:Z:" Y:? Z:?];
    _smoothDisparity = [(CIDisparityRefinement *)self _smoothDisparity];
    v55[0] = v26;
    v55[1] = v32;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    v53[0] = @"kCIKernelOutputFormat";
    v53[1] = @"kCIImageAlphaOne";
    v54[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
    v54[1] = MEMORY[0x1E695E118];
    v35 = [_smoothDisparity applyWithExtent:&__block_literal_global_124 roiCallback:v34 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v54, v53, 2), 0.0, 0.0, v19, v21}];
    v49 = 0;
    if (metalCopy)
    {
      [(NSNumber *)self->inputPropagateKernel floatValue];
      v47[1] = v36;
      [(NSNumber *)self->inputPropagateMinWeightSum floatValue];
      v48 = vmul_f32(__PAIR64__(v45, v46), vadd_f32(__PAIR64__(v45, v46), __PAIR64__(v45, v46)));
      v47[2] = v37;
      *v47 = v27;
      v38 = [MEMORY[0x1E695DEF0] dataWithBytes:v47 length:20];
      v52 = v26;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      v50 = @"config";
      v51 = v38;
      v40 = +[CIGenericMetalProcessor applyWithExtent:shader:inputs:arguments:error:](CIGenericMetalProcessorSingleChannel, "applyWithExtent:shader:inputs:arguments:error:", @"kernel_SmoothDisparity", v39, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1], &v49, 0.0, 0.0, v19, v21);
      v41 = v49 == 0;
    }

    else
    {
      v40 = 0;
      v41 = 1;
    }

    if (v41 && metalCopy && v40 != 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = v35;
    }

    if (v28 == 0.0 && v29 == 0.0 && v31 == 1.0)
    {
      v43 = [v26 imageByCroppingToRect:{0.0, 0.0, v19, v21}];
    }

    if (metalCopy)
    {
      v44 = @"/tmp/smoothDisparity-Metal.tiff";
    }

    else
    {
      v44 = @"/tmp/smoothDisparity-CI.tiff";
    }

    saveImage(v43, v44, 1);
    return v43;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

- (id)propagateDisparity:(id)disparity pyramids:(id *)pyramids useMetal:(BOOL)metal computedPyramidLevels:(int)levels
{
  metalCopy = metal;
  v80[2] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputSmoothSigma floatValue];
  v11 = v10;
  [(NSNumber *)self->inputPropagateSigmaLuma floatValue];
  v63 = v12;
  [(NSNumber *)self->inputPropagateSigmaChma floatValue];
  v61 = v13;
  [(NSNumber *)self->inputPropagateMinWeightSum floatValue];
  v15 = v14;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  [(NSNumber *)self->inputPropagateKernel floatValue];
  v72 = v16;
  v80[0] = disparity;
  v80[1] = 0;
  [(NSNumber *)self->inputPropagateKernel floatValue];
  v59 = vmul_f32(__PAIR64__(v61, v63), vadd_f32(__PAIR64__(v61, v63), __PAIR64__(v61, v63)));
  v64 = [CIVector vectorWithX:v17 Y:65025.0 / v59.f32[0] Z:65025.0 / v59.f32[1] W:v15];
  if (fabs(v70[6] + -1.0) >= 0.001)
  {
    _propagateDisparity = [(CIDisparityRefinement *)self _propagateDisparity];
  }

  else
  {
    _propagateDisparity = [(CIDisparityRefinement *)self _propagateDisparityR1];
  }

  if (levels >= 2)
  {
    v18 = 0;
    v19 = v11 * (v11 + v11);
    v20 = levels + 1;
    v21 = &pyramids[levels - 2];
    while (1)
    {
      imageByClampingToExtent = [disparity imageByClampingToExtent];
      imageByClampingToExtent2 = [*v21 imageByClampingToExtent];
      imageByClampingToExtent3 = [v21[1] imageByClampingToExtent];
      if (!imageByClampingToExtent)
      {
        break;
      }

      if (!imageByClampingToExtent2)
      {
        break;
      }

      v25 = imageByClampingToExtent3;
      if (!imageByClampingToExtent3)
      {
        break;
      }

      [*v21 extent];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __84__CIDisparityRefinement_propagateDisparity_pyramids_useMetal_computedPyramidLevels___block_invoke;
      v68[3] = &unk_1E75C2528;
      v68[4] = &v69;
      v79[0] = imageByClampingToExtent;
      v79[1] = imageByClampingToExtent2;
      v79[2] = v25;
      v79[3] = v64;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:4];
      v77[0] = @"kCIKernelOutputFormat";
      v35 = [MEMORY[0x1E696AD98] numberWithInt:2053];
      v77[1] = @"kCIImageAlphaOne";
      v78[0] = v35;
      v78[1] = MEMORY[0x1E695E118];
      v36 = [_propagateDisparity applyWithExtent:v68 roiCallback:v34 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v78, v77, 2), v27, v29, v31, v33}];
      v37 = v36;
      if (metalCopy)
      {
        v67 = 0;
        v38 = [CIVector vectorWithX:-v70[6] Y:-v70[6]];
        [(NSNumber *)self->inputPropagateKernel floatValue];
        v65[1] = v39;
        [(NSNumber *)self->inputPropagateMinWeightSum floatValue];
        v66 = v59;
        v65[2] = v40;
        *v65 = v19;
        v41 = [MEMORY[0x1E695DEF0] dataWithBytes:v65 length:20];
        [*v21 extent];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;
        imageByClampingToExtent4 = [disparity imageByClampingToExtent];
        v52 = *v21;
        v51 = v21[1];
        v76[0] = imageByClampingToExtent4;
        v76[1] = v52;
        v76[2] = [v51 imageByClampingToExtent];
        v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
        v75[0] = v38;
        v75[1] = [CIVector vectorWithX:0.0 Y:0.0];
        v75[2] = v38;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
        v73 = @"config";
        v74 = v41;
        v55 = +[CIGenericMetalProcessor applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:](CIGenericMetalProcessorSingleChannel, "applyWithExtent:shader:inputs:roiMethods:insetRects:scaleFactors:arguments:error:", @"kernel_PropagateDisparity", v53, &unk_1F10855A8, v54, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1], v43, v45, v47, v49, &v67);
        if (v55)
        {
          v56 = v67 == 0;
        }

        else
        {
          v56 = 0;
        }

        if (v56)
        {
          disparity = v55;
        }

        else
        {
          disparity = v37;
        }

        v57 = "Metal";
      }

      else
      {
        v57 = "CI";
        disparity = v36;
      }

      saveImage(disparity, [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/propagateDisparity_%d-%s.tiff", v20 - 2, v57], 1);
      v18 ^= 1u;
      v80[v18] = disparity;
      --v20;
      --v21;
      if (v20 <= 2)
      {
        goto LABEL_21;
      }
    }

    disparity = v80[v18];
  }

LABEL_21:
  _Block_object_dispose(&v69, 8);
  return disparity;
}

double __84__CIDisparityRefinement_propagateDisparity_pyramids_useMetal_computedPyramidLevels___block_invoke(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2 != 1)
  {
    v7.origin.x = result * 0.5;
    v7.origin.y = a4 * 0.5;
    v7.size.width = a5 * 0.5;
    v7.size.height = a6 * 0.5;
    v6 = -*(*(*(a1 + 32) + 8) + 24);
    *&result = CGRectInset(v7, v6, v6);
  }

  return result;
}

- (id)outputImageUsingMetal:(BOOL)metal
{
  v43[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    goto LABEL_18;
  }

  inputDisparityImage = self->inputDisparityImage;
  if (!inputDisparityImage)
  {
    goto LABEL_18;
  }

  metalCopy = metal;
  v6 = 1;
  saveImage(inputDisparityImage, @"/tmp/inputToDisparity.tiff", 1);
  [(CIVector *)self->inputOriginalSize CGPointValue];
  v8 = v7;
  v10 = v9;
  [(CIImage *)self->inputImage extent];
  v12 = v11;
  v14 = v13;
  [(CIImage *)self->inputDisparityImage extent];
  v16 = v15;
  v18 = v17;
  [(NSNumber *)self->inputScale floatValue];
  v19 = shiftmapSize(v12, v14, v16, v18, v8, v10);
  v21 = v20;
  v22 = v19;
  v23 = vcvtps_u32_f32(v22);
  v24 = v20;
  v25 = vcvtps_u32_f32(v24);
  [(CIImage *)self->inputDisparityImage extent];
  v27 = vcvtmd_u64_f64(v26);
  [(CIImage *)self->inputDisparityImage extent];
  v29 = 2 * vcvtmd_u64_f64(v28);
  if (2 * v27 <= v23 && v29 <= v25)
  {
    do
    {
      v31 = v6;
      v6 = (v6 + 1);
      if (v31 > 2)
      {
        break;
      }

      v23 = (v23 + 1) >> 1;
      if (v23 < 2 * v27)
      {
        break;
      }

      v25 = (v25 + 1) >> 1;
    }

    while (v25 >= v29);
  }

  memset(v43, 0, 24);
  v32 = [(CIDisparityRefinement *)self initialConversionForSize:metalCopy useMetal:v19, v21];
  v42 = v32;
  if (v32)
  {
    if (v6 >= 2)
    {
      v33 = v32;
      v34 = v43;
      v35 = v6 - 1;
      do
      {
        v33 = [(CIDisparityRefinement *)self generatePyramidLevel:v33 useMetal:metalCopy];
        *v34++ = v33;
        --v35;
      }

      while (v35);
    }

    [v43[(v6 - 1) - 1] extent];
    metalCopy = [(CIDisparityRefinement *)self smoothDisparityImage:[(CIDisparityRefinement *)self propagateDisparity:[(CIDisparityRefinement *)self shiftmapLevelZeroWithSize:metalCopy useMetal:v36 pyramids:v37] useMetal:&v42 computedPyramidLevels:metalCopy useMetal:v6], metalCopy];
    v39 = metalCopy;
    if (metalCopy)
    {
      v40 = @"/tmp/smoothed-Metal.tiff";
    }

    else
    {
      v40 = @"/tmp/smoothed-CI.tiff";
    }

    saveImage(metalCopy, v40, 1);
    return v39;
  }

  else
  {
LABEL_18:

    return +[CIImage emptyImage];
  }
}

- (id)outputImage
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (self->inputImage && self->inputDisparityImage)
  {
    v3 = [(CIDisparityRefinement *)self outputImageUsingMetal:0];
    v4 = [(CIDisparityRefinement *)self outputImageUsingMetal:1];
    if (v4)
    {
      v6[0] = v3;
      v6[1] = v4;
      return +[CIImage imageWithArrayOfImages:selector:](CIImage, "imageWithArrayOfImages:selector:", [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2], &__block_literal_global_169);
    }

    return v3;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end