@interface CIPortraitBlur
+ (id)customAttributes;
- (id)_kernel;
- (id)_kernelMetal;
- (id)_kernelWithShapesMetal;
- (id)_kernelsWithShapes;
- (id)_ourBlendKernelMetal;
- (id)outputImage;
- (id)outputImage:(BOOL)a3;
- (id)outputImageV2;
- (id)outputImageV3;
@end

@implementation CIPortraitBlur

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryColorAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v11[4] = @"CICategoryApplePrivate";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v13[1] = @"11";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.13";
  v12[3] = @"inputLumaNoiseScale";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1084698;
  v10[1] = &unk_1F10846A8;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1084698;
  v10[3] = &unk_1F10846A8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10846B8;
  v10[5] = @"CIAttributeTypeScalar";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputAperture";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F10846C8;
  v8[1] = &unk_1F10846D8;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1084698;
  v8[3] = &unk_1F10846D8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1084698;
  v8[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputShape";
  v5 = @"CIAttributeClass";
  v6 = @"NSString";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v12[6] = @"inputDraftMode";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1082040;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082058;
  v4[3] = &unk_1F1082040;
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)_kernel
{
  if ([CIPortraitBlur _kernel]::onceToken != -1)
  {
    [CIPortraitBlur _kernel];
  }

  return [CIPortraitBlur _kernel]::k;
}

CIKernel *__25__CIPortraitBlur__kernel__block_invoke()
{
  result =  [CIKernel kernelWithString:@"vec2 _pseudo_randPBN( vec2 pos)\n{\n    float rand1 = mod(12.63 * pos.x - 57.3 * pos.y * pos.y, 0.01369) + mod(75.833 * pos.y - 37.135 * pos.x * pos.x, 0.014) + mod(39.7 * pos.x * pos.y + 21.7 * pos.x * pos.y * pos.y, 0.0879);\n\n    vec2 rand2 = fract(3576.7453 * vec2( rand1, 2.0 * rand1));\n    return fract(vec2(7.7387 * (rand2.x + rand2.y), 33.707 * (rand2.x - rand2.y)));\n}\n\nvec4 _pixWeight( vec4 sampledPix, vec2 offset, float basePixRawR, float distWeight, vec2 spatialWeightSoftMinMax, float highlightBoostGain, vec2 relativeWeightThreshold) {\n    float sampleR = 1.0 / sqrt(offset.x*offset.x + offset.y*offset.y);\n    float spatialWeight = clamp(spatialWeightSoftMinMax.x * sampledPix.w * sampleR + spatialWeightSoftMinMax.y, 0.0, 1.0);\n    float colorWeight = highlightBoostGain * (sampledPix.x + sampledPix.y + sampledPix.z) + 1.0; \n    float backgroundWeight = (3.0 - 2.0 * sampledPix.w);\n    float rwT = clamp(relativeWeightThreshold.x * (sampledPix.w - basePixRawR) + relativeWeightThreshold.y, 0.0, 1.0);\n    float relativeWeight = rwT * rwT * (3.0 - 2.0 * rwT); \n    float totalWeight = distWeight * spatialWeight * colorWeight * backgroundWeight * relativeWeight;\n    return vec4( totalWeight * sampledPix.xyz, totalWeight);\n}\nfloat _ushortMultiply(float a, float multiplier) {\n   int q = int(a) * int(multiplier);\n   int r = q/65536;\n   int m = q - r * 65536;\n   float mf = float(m);\n   return mf + compare(mf, 65535.0, 0.0);\n}\nkernel vec4 _CIPortraitBlur(sampler image, vec4 sizeAndScale, vec3 p0, vec4 p1, vec2 relativeWeightThreshold) \n{\n   float maxBlurInPixels         = p0.x;\n   float sharpRadius             = p0.y;\n   float highlightBoostGain      = p0.z;\n   vec2 spatialWeightSoftMinMax  = p1.xy;\n   float basePixelWeight         = p1.z;\n   int numSamples                = int(p1.w);\n    vec2 dc = destCoord();\n    vec4 basePix = sample(image, samplerCoord(image));\n    float rawBlurRadius = basePix.w * basePix.w;\n    float blurRadius = rawBlurRadius * maxBlurInPixels;\n    vec4 outRGB;\n    if (blurRadius >= sharpRadius)\n    {\n      vec4 pixSum = vec4(basePix.xyz * basePixelWeight, basePixelWeight);\n\t   vec2 randXY = _pseudo_randPBN(dc/sizeAndScale.xy) * sizeAndScale.zw * 65536.0;\n      for (int i = 0; i < numSamples; i++)\n      {\n           vec2 randXY2 = (1./32767.5) * randXY - 1.0; \n           float randDist = randXY2.x*randXY2.x + randXY2.y*randXY2.y;\n           float randNorm0 = max(abs(randXY2.x), abs(randXY2.y));\n           float randShape = randNorm0 / sqrt(randDist);\n           vec2  samplePos = randShape * rawBlurRadius * randXY2;\n           float randW = randShape * randShape;\n           samplePos.y = -samplePos.y;\n           randXY.x = _ushortMultiply(randXY.x, 28563.0);\n           randXY.y = _ushortMultiply(randXY.y, 44519.0);\n\t        vec4 pix = sample( image, samplerTransform(image, dc + maxBlurInPixels * samplePos));\n           pix.w = pix.w * pix.w;\n           pixSum += _pixWeight(pix, samplePos, rawBlurRadius, randW, spatialWeightSoftMinMax, highlightBoostGain, relativeWeightThreshold);\n        }\n        outRGB.xyz = pixSum.w > 0.0 ?  vec3(pixSum.xyz / pixSum.w) : basePix.xyz;\n        outRGB.w = basePix.w;\n    }\n    else\n    {\n        outRGB = basePix;\n    }\n\treturn outRGB;\n}\n\n"];
  [CIPortraitBlur _kernel]::k = result;
  return result;
}

- (id)_kernelMetal
{
  if ([CIPortraitBlur _kernelMetal]::onceToken != -1)
  {
    [CIPortraitBlur _kernelMetal];
  }

  return [CIPortraitBlur _kernelMetal]::k;
}

id __30__CIPortraitBlur__kernelMetal__block_invoke()
{
  result = [CIKernel SDOFV2MetalKernelNamed:@"_CIPortraitBlurM"];
  [CIPortraitBlur _kernelMetal]::k = result;
  return result;
}

- (id)_kernelWithShapesMetal
{
  if ([CIPortraitBlur _kernelWithShapesMetal]::onceToken != -1)
  {
    [CIPortraitBlur _kernelWithShapesMetal];
  }

  return [CIPortraitBlur _kernelWithShapesMetal]::k;
}

id __40__CIPortraitBlur__kernelWithShapesMetal__block_invoke()
{
  result = [CIKernel SDOFV2MetalKernelNamed:@"_CIPortraitBlurShapeM"];
  [CIPortraitBlur _kernelWithShapesMetal]::k = result;
  return result;
}

- (id)_kernelsWithShapes
{
  if ([CIPortraitBlur _kernelsWithShapes]::onceToken != -1)
  {
    [CIPortraitBlur _kernelsWithShapes];
  }

  return [CIPortraitBlur _kernelsWithShapes]::k;
}

CIKernel *__36__CIPortraitBlur__kernelsWithShapes__block_invoke()
{
  result = [CIKernel kernelWithString:&cfstr_Vec2PseudoRand_1];
  [CIPortraitBlur _kernelsWithShapes]::k = result;
  return result;
}

- (id)_ourBlendKernelMetal
{
  if ([CIPortraitBlur _ourBlendKernelMetal]::onceToken != -1)
  {
    [CIPortraitBlur _ourBlendKernelMetal];
  }

  return [CIPortraitBlur _ourBlendKernelMetal]::k;
}

id __38__CIPortraitBlur__ourBlendKernelMetal__block_invoke()
{
  result = [CIColorKernel SDOFV2MetalKernelNamed:@"_CIPortraitBlurBlendWithMaskFromAlphaM"];
  [CIPortraitBlur _ourBlendKernelMetal]::k = result;
  return result;
}

- (id)outputImage:(BOOL)a3
{
  v3 = a3;
  v152[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  inputBlurmapImage = self->inputBlurmapImage;
  [(CIImage *)inputBlurmapImage extent];
  v7 = v6;
  [(CIImage *)self->inputImage extent];
  if (vabdd_f64(v7, v8) > 0.001)
  {
    [(CIImage *)self->inputBlurmapImage extent];
    v10 = v9;
    [(CIImage *)self->inputImage extent];
    v12 = v10 / v11;
    [(CIImage *)self->inputBlurmapImage extent];
    v14 = v13;
    [(CIImage *)self->inputImage extent];
    v16 = v14 / v15;
    [(CIImage *)self->inputImage extent];
    v18 = v17;
    [(CIImage *)self->inputBlurmapImage extent];
    if (v18 <= v19)
    {
      v20 = self->inputBlurmapImage;
      CGAffineTransformMakeScale(&v135, 1.0 / v12, 1.0 / v16);
      inputBlurmapImage = [(CIImage *)v20 imageByApplyingTransform:&v135];
    }

    else
    {
      CGAffineTransformMakeScale(&v135, v12, v16);
      inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v135];
    }
  }

  v151[0] = @"inputBlurmapImage";
  v151[1] = @"inputUseMetal";
  v152[0] = inputBlurmapImage;
  v152[1] = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v21 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIPortraitBlurPreProcess", [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:2]);
  saveImage(v21, @"/tmp/preprocessed-CI.tiff", 0);
  [(CIImage *)v21 extent];
  v24 = v22;
  v25 = v23;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2020000000;
  if (v22 <= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = v22;
  }

  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  *&v134[3] = v26 * v27;
  if (v3)
  {
    v28 = [(CIPortraitBlur *)self _kernelMetal];
  }

  else
  {
    v28 = [(CIPortraitBlur *)self _kernel];
  }

  v29 = v28;
  if (!v28)
  {
    v29 = [(CIPortraitBlur *)self _kernel];
  }

  [(NSNumber *)self->inputScale floatValue];
  v31 = 1.0;
  if (v30 > 0.0)
  {
    v31 = 1.0 / v30;
  }

  v32 = [CIVector vectorWithX:v24 Y:v25 Z:v31 W:v31];
  v125 = v29;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v34 = v33;
  SDOFRenderingValue(&cfstr_Sharpradius.isa, self->inputTuningParameters);
  v36 = v35;
  SDOFRenderingValue(&cfstr_Highlightboost.isa, self->inputTuningParameters);
  v37 = v24 * v34;
  v39 = [CIVector vectorWithX:v37 Y:v36 Z:v38];
  SDOFRenderingValue(&cfstr_Nsamples.isa, self->inputTuningParameters);
  v41 = v40;
  if (v31 > 1.0)
  {
    v42 = 1.0 / v31;
    v43 = sqrtf(v42) * v41;
    v44 = v41 * 0.5;
    if (v44 >= v43)
    {
      v41 = v44;
    }

    else
    {
      v41 = v43;
    }
  }

  SDOFRenderingValue(&cfstr_Spatialweights.isa, self->inputTuningParameters);
  v46 = v45;
  SDOFRenderingValue(&cfstr_Spatialweights_0.isa, self->inputTuningParameters);
  v48 = v47;
  v130 = v31;
  SDOFRenderingValue(&cfstr_Relativeweight.isa, self->inputTuningParameters);
  v50 = v49;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v52 = v51;
  SDOFRenderingValue(&cfstr_Relativeweight.isa, self->inputTuningParameters);
  v54 = v53;
  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v56 = v55;
  v128 = v39;
  v129 = v32;
  SDOFRenderingValue(&cfstr_Basepixelweigh.isa, self->inputTuningParameters);
  v127 = [CIVector vectorWithX:(1.0 / (v48 - v46)) Y:-((1.0 / (v48 - v46)) * v46) Z:v57 W:v41];
  v58 = [CIVector vectorWithX:(0.5 / (v50 / v52)) Y:(((0.5 / (v50 / v52)) * v54) / v56)];
  v59 = [(CIImage *)v21 imageByClampingToExtent];
  v126 = v21;
  inputShape = self->inputShape;
  if (!inputShape || [(NSString *)self->inputShape isEqualToString:&stru_1F1040378])
  {
LABEL_24:
    v62 = *MEMORY[0x1E695F040];
    v63 = *(MEMORY[0x1E695F040] + 8);
    v65 = *(MEMORY[0x1E695F040] + 16);
    v64 = *(MEMORY[0x1E695F040] + 24);
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __30__CIPortraitBlur_outputImage___block_invoke;
    v133[3] = &unk_1E75C2528;
    v133[4] = v134;
    v150[0] = v59;
    v150[1] = v129;
    v150[2] = v128;
    v150[3] = v127;
    v150[4] = v58;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:5];
    v67 = v3;
    v148 = @"kCIKernelOutputFormat";
    v149 = [MEMORY[0x1E696AD98] numberWithInt:264];
    v68 = [v125 applyWithExtent:v133 roiCallback:v66 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v149, &v148, 1), v62, v63, v65, v64}];
  }

  else
  {
    v61 = 0;
    while (!-[NSString isEqualToString:](inputShape, "isEqualToString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:off_1E75C37A0[v61]]))
    {
      if (++v61 == 8)
      {
        goto LABEL_24;
      }
    }

    v67 = v3;
    if (v3)
    {
      v111 = [(CIPortraitBlur *)self _kernelWithShapesMetal];
    }

    else
    {
      v111 = [(CIPortraitBlur *)self _kernelsWithShapes];
    }

    v112 = v111;
    if (!v111)
    {
      v112 = [(CIPortraitBlur *)self _kernelsWithShapes];
    }

    v113 = [(CIImage *)self->inputImage properties];
    v114 = 0.0;
    if (v113)
    {
      v115 = [(NSDictionary *)v113 objectForKey:*MEMORY[0x1E696DE78]];
      if (v115)
      {
        v116 = [v115 intValue];
        v117 = (v116 - 9) >= 0xFFFFFFF8 ? v116 - 3 : -3;
        if (v117 <= 5)
        {
          v114 = flt_19CF28858[v117];
        }
      }
    }

    v118 = __sincosf_stret(v114);
    v119 = [CIVector vectorWithX:v118.__cosval Y:v118.__sinval Z:v118.__sinval W:-v118.__cosval];
    v120 = *MEMORY[0x1E695F040];
    v121 = *(MEMORY[0x1E695F040] + 8);
    v123 = *(MEMORY[0x1E695F040] + 16);
    v122 = *(MEMORY[0x1E695F040] + 24);
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __30__CIPortraitBlur_outputImage___block_invoke_2;
    v132[3] = &unk_1E75C2528;
    v132[4] = v134;
    v147[0] = v59;
    v147[1] = v129;
    v147[2] = v128;
    v147[3] = v127;
    v147[4] = v58;
    v147[5] = v119;
    v147[6] = [MEMORY[0x1E696AD98] numberWithFloat:COERCE_DOUBLE(COERCE_UNSIGNED_INT(v61))];
    v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:7];
    v145 = @"kCIKernelOutputFormat";
    v146 = [MEMORY[0x1E696AD98] numberWithInt:264];
    v68 = [v112 applyWithExtent:v132 roiCallback:v124 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v146, &v145, 1), v120, v121, v123, v122}];
  }

  v69 = v68;
  [(CIImage *)inputImage extent];
  saveImage([v69 imageByCroppingToRect:?], @"/tmp/blur-CI.tiff", 0);
  SDOFRenderingValue(&cfstr_Antialiasblurs.isa, self->inputTuningParameters);
  v71 = v70;
  v144[0] = MEMORY[0x1E695E118];
  v143[0] = @"inputHorizontalBlur";
  v143[1] = @"inputMaxBlur";
  *&v72 = v37;
  v144[1] = [MEMORY[0x1E696AD98] numberWithFloat:v72];
  v143[2] = @"inputAntiAliasBlurStrength";
  LODWORD(v73) = v71;
  v144[2] = [MEMORY[0x1E696AD98] numberWithFloat:v73];
  v143[3] = @"inputUseMetal";
  v144[3] = [MEMORY[0x1E696AD98] numberWithBool:v67];
  v74 = [v69 imageByApplyingFilter:@"CIPortraitBlurDirectionalBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v144, v143, 4)}];
  [(CIImage *)inputImage extent];
  saveImage([v74 imageByCroppingToRect:?], @"/tmp/blur-X-CI.tiff", 0);
  v142[0] = MEMORY[0x1E695E110];
  v141[0] = @"inputHorizontalBlur";
  v141[1] = @"inputMaxBlur";
  *&v75 = v37;
  v142[1] = [MEMORY[0x1E696AD98] numberWithFloat:v75];
  v141[2] = @"inputAntiAliasBlurStrength";
  LODWORD(v76) = v71;
  v142[2] = [MEMORY[0x1E696AD98] numberWithFloat:v76];
  v141[3] = @"inputUseMetal";
  v142[3] = [MEMORY[0x1E696AD98] numberWithBool:v67];
  v77 = [v74 imageByApplyingFilter:@"CIPortraitBlurDirectionalBlur" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v142, v141, 4)}];
  [(CIImage *)inputImage extent];
  saveImage([v77 imageByCroppingToRect:?], @"/tmp/blur-Y-CI.tiff", 0);
  [(NSNumber *)self->inputLumaNoiseScale floatValue];
  v79 = v78 / v130;
  v80 = 1.5;
  if (v130 < 1.5)
  {
    v139[0] = @"inputLumaNoiseAmpl";
    *&v80 = v79;
    v140[0] = [MEMORY[0x1E696AD98] numberWithFloat:v80];
    v139[1] = @"inputLumaNoiseModelCoeff";
    v81 = MEMORY[0x1E696AD98];
    SDOFRenderingValue(&cfstr_Lumanoisemodel.isa, self->inputTuningParameters);
    v140[1] = [v81 numberWithFloat:?];
    v139[2] = @"inputExtent";
    [(CIImage *)v126 extent];
    v140[2] = [CIVector vectorWithCGRect:?];
    v139[3] = @"inputUseMetal";
    v140[3] = [MEMORY[0x1E696AD98] numberWithBool:v67];
    v77 = [v77 imageByApplyingFilter:@"CIPortraitBlurNoise" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v140, v139, 4)}];
    [(CIImage *)inputImage extent];
    saveImage([v77 imageByCroppingToRect:?], @"/tmp/blur-NoiseAddedHalfRes-CI.tiff", 0);
  }

  v82 = [v77 _imageByRenderingToIntermediate];
  [(CIImage *)self->inputImage extent];
  v84 = v83;
  [(CIImage *)inputImage extent];
  v86 = v85;
  [(CIImage *)self->inputImage extent];
  v88 = v87;
  [(CIImage *)inputImage extent];
  v89 = v84 / v86;
  v91 = v88 / v90;
  CGAffineTransformMakeScale(&v135, v89, v91);
  v92 = [v82 imageByApplyingTransform:&v135];
  [(CIImage *)self->inputImage extent];
  saveImage([v92 imageByCroppingToRect:?], @"/tmp/upsampledBlurredImage.tiff", 0);
  v93 = 1.5;
  if (v130 >= 1.5)
  {
    v137[0] = @"inputLumaNoiseAmpl";
    *&v93 = v79;
    v138[0] = [MEMORY[0x1E696AD98] numberWithFloat:v93];
    v137[1] = @"inputLumaNoiseModelCoeff";
    v94 = MEMORY[0x1E696AD98];
    SDOFRenderingValue(&cfstr_Lumanoisemodel.isa, self->inputTuningParameters);
    v138[1] = [v94 numberWithFloat:?];
    v137[2] = @"inputExtent";
    [(CIImage *)v126 extent];
    v138[2] = [CIVector vectorWithCGRect:?];
    v137[3] = @"inputUseMetal";
    v138[3] = [MEMORY[0x1E696AD98] numberWithBool:v67];
    v92 = [v92 imageByApplyingFilter:@"CIPortraitBlurNoise" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v138, v137, 4)}];
    [(CIImage *)inputImage extent];
    saveImage([v92 imageByCroppingToRect:?], @"/tmp/blur-NoiseAddedFullRes-CI.tiff", 0);
  }

  SDOFRenderingValue(&cfstr_Maxblur.isa, self->inputTuningParameters);
  v96 = v95;
  SDOFRenderingValue(&cfstr_Sharpradius.isa, self->inputTuningParameters);
  v98 = v97;
  SDOFRenderingValue(&cfstr_Softradius.isa, self->inputTuningParameters);
  v100 = v99;
  [(CIImage *)inputImage extent];
  v102 = [CIVector vectorWithX:v96 Y:v98 Z:v100 W:v101];
  if (v67)
  {
    v103 = [(CIPortraitBlur *)self _ourBlendKernelMetal];
  }

  else
  {
    v103 = [(CIPortraitBlur *)self _ourBlendKernel];
  }

  v104 = v103;
  if (!v103)
  {
    v104 = [(CIPortraitBlur *)self _ourBlendKernel];
  }

  [(CIImage *)self->inputImage extent];
  v136[0] = self->inputImage;
  v136[1] = v92;
  v136[2] = v102;
  v109 = [v104 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v136, 3), v105, v106, v107, v108}];
  [(CIImage *)self->inputImage extent];
  saveImage([v109 imageByCroppingToRect:?], @"/tmp/finalBlend.tiff", 0);
  _Block_object_dispose(v134, 8);
  return v109;
}

double __30__CIPortraitBlur_outputImage___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -*(*(*(a1 + 32) + 8) + 24);
  *&result = CGRectInset(*&a2, v5, v5);
  return result;
}

double __30__CIPortraitBlur_outputImage___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = -*(*(*(a1 + 32) + 8) + 24);
  *&result = CGRectInset(*&a2, v5, v5);
  return result;
}

- (id)outputImageV2
{
  v3 = [(CIPortraitBlur *)self outputImage:0];
  if ([CIPortraitBlur outputImageV2]::onceToken != -1)
  {
    [CIPortraitBlur outputImageV2];
  }

  if ([CIPortraitBlur outputImageV2]::disableHandWrittenMetal)
  {
    return v3;
  }

  v4 = [(CIPortraitBlur *)self outputImage:1];
  if (!v4)
  {
    return v3;
  }

  return [CIImage imageForRenderingWithMetal:v4 orNonMetal:v3];
}

uint64_t __31__CIPortraitBlur_outputImageV2__block_invoke()
{
  v0 = getenv("CI_DISABLE_PORTRAIT_METAL");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = [CIPortraitBlur outputImageV2]::disableHandWrittenMetal;
  }

  [CIPortraitBlur outputImageV2]::disableHandWrittenMetal = result != 0;
  return result;
}

- (id)outputImageV3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [CIFilter metalFilterWithName:@"CIPortraitBlurV2"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CIFilter *)self inputKeys];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setValue:-[CIPortraitBlur valueForKey:](self forKey:{"valueForKey:", *(*(&v10 + 1) + 8 * v8)), *(*(&v10 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [v3 outputImage];
}

- (id)outputImage
{
  if ([CIPortraitBlur outputImage]::onceTokenNP != -1)
  {
    [CIPortraitBlur outputImage];
  }

  if ((-[CIPortraitBlur outputImage]::enableNewPortraitCodePath & 1) != 0 && (inputTuningParameters = self->inputTuningParameters) != 0 && (v4 = -[NSDictionary objectForKeyedSubscript:](inputTuningParameters, "objectForKeyedSubscript:", @"Version")) != 0 && ([v4 integerValue] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    return [(CIPortraitBlur *)self outputImageV3];
  }

  else
  {

    return [(CIPortraitBlur *)self outputImageV2];
  }
}

uint64_t __29__CIPortraitBlur_outputImage__block_invoke()
{
  v0 = getenv("CI_ENABLE_NEW_PORTRAIT");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = [CIPortraitBlur outputImage]::enableNewPortraitCodePath;
  }

  [CIPortraitBlur outputImage]::enableNewPortraitCodePath = result != 0;
  return result;
}

@end