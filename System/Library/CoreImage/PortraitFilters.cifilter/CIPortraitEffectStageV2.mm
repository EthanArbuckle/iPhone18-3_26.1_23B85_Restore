@interface CIPortraitEffectStageV2
+ (id)customAttributes;
- (id)_CIApplyBlackDepth;
- (id)_CIApplyStageNoFeather;
- (id)_CIApplyStageNoFeatherWithSpillRatio;
- (id)_CIPrepareBlackDepth;
- (id)_CIPrepareBlackDisparity;
- (id)_CIRefineBlackDepth;
- (id)_applyRefinedMatte;
- (id)_applyVignetteStage;
- (id)_faceProtect;
- (id)_faceVignette;
- (id)_getRefinedMatte;
- (id)blendDepth;
- (id)invertRed;
- (id)outputImage;
- (id)thresholdAndApplyMatte;
- (id)thresholdMatte;
- (void)setDefaults;
@end

@implementation CIPortraitEffectStageV2

- (void)setDefaults
{
  [(CIPortraitEffectLightV2 *)self setInputSmooth:&off_79E20];
  [(CIPortraitEffectLightV2 *)self setInputEnrich:&off_7A120];
  [(CIPortraitEffectLightV2 *)self setInputEyes:&off_79E20];
  [(CIPortraitEffectLightV2 *)self setInputLocalContrast:&off_7A260];
  [(CIPortraitEffectV2 *)self setInputStrength:&off_7A110];
  [(CIPortraitEffectContourV2 *)self setInputDepthThreshold:&off_7A160];
  [(CIPortraitEffectV2 *)self setInputScale:&off_7A110];
  [(CIPortraitEffectLightV2 *)self setInputTeeth:&off_7A1B0];
  [(CIPortraitEffectStageV2 *)self setInputUseAbsoluteDisparity:&__kCFBooleanFalse];
  [(CIPortraitEffectStageV2 *)self setInputSharpenRadius:&off_7A270];
  [(CIPortraitEffectStageV2 *)self setInputGrainAmount:&off_79EC0];
  [(CIPortraitEffectV2 *)self setInputRenderProxy:&off_7A140];

  [(CIPortraitEffectV2 *)self setInputGenerateSpillMatte:&off_7A140];
}

+ (id)customAttributes
{
  v10[0] = kCIAttributeFilterCategories;
  v9[0] = kCICategoryColorAdjustment;
  v9[1] = kCICategoryVideo;
  v9[2] = kCICategoryStillImage;
  v9[3] = kCICategoryBuiltIn;
  v9[4] = kCICategoryApplePrivate;
  v11[0] = [NSArray arrayWithObjects:v9 count:5];
  v11[1] = @"11";
  v10[1] = kCIAttributeFilterAvailable_iOS;
  v10[2] = kCIAttributeFilterAvailable_Mac;
  v11[2] = @"10.13";
  v10[3] = @"inputUseAbsoluteDisparity";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeType;
  v8[0] = &__kCFBooleanFalse;
  v8[1] = kCIAttributeTypeBoolean;
  v11[3] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputSharpenRadius";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeType;
  v6[0] = &off_7A270;
  v6[1] = kCIAttributeTypeScalar;
  v11[4] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v10[5] = @"inputGrainAmount";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeType;
  v4[0] = &off_79EC0;
  v4[1] = kCIAttributeTypeScalar;
  v11[5] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)_CIPrepareBlackDisparity
{
  if (qword_8CD20 != -1)
  {
    sub_4A8A4();
  }

  return qword_8CD18;
}

- (id)_CIPrepareBlackDepth
{
  if (qword_8CD30 != -1)
  {
    sub_4A8B8();
  }

  return qword_8CD28;
}

- (id)_CIApplyBlackDepth
{
  if (qword_8CD40 != -1)
  {
    sub_4A8CC();
  }

  return qword_8CD38;
}

- (id)_CIApplyStageNoFeather
{
  if (qword_8CD50 != -1)
  {
    sub_4A8E0();
  }

  return qword_8CD48;
}

- (id)_CIApplyStageNoFeatherWithSpillRatio
{
  if (qword_8CD60 != -1)
  {
    sub_4A8F4();
  }

  return qword_8CD58;
}

- (id)_getRefinedMatte
{
  if (qword_8CD70 != -1)
  {
    sub_4A908();
  }

  return qword_8CD68;
}

- (id)_applyRefinedMatte
{
  if (qword_8CD80 != -1)
  {
    sub_4A91C();
  }

  return qword_8CD78;
}

- (id)_CIRefineBlackDepth
{
  if (qword_8CD90 != -1)
  {
    sub_4A930();
  }

  return qword_8CD88;
}

- (id)_faceVignette
{
  if (qword_8CDA0 != -1)
  {
    sub_4A944();
  }

  return qword_8CD98;
}

- (id)_faceProtect
{
  if (qword_8CDB0 != -1)
  {
    sub_4A958();
  }

  return qword_8CDA8;
}

- (id)_applyVignetteStage
{
  if (qword_8CDC0 != -1)
  {
    sub_4A96C();
  }

  return qword_8CDB8;
}

- (id)invertRed
{
  if (qword_8CDD0 != -1)
  {
    sub_4A980();
  }

  return qword_8CDC8;
}

- (id)blendDepth
{
  if (qword_8CDE0 != -1)
  {
    sub_4A994();
  }

  return qword_8CDD8;
}

- (id)thresholdMatte
{
  if ((atomic_load_explicit(&qword_8CDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8CDF0))
  {
    qword_8CDE8 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_thresholdMatteV2(__sample matte, __sample blurMatte, float low, float high) \n { \n float m = smoothstep(low, high, matte.r)*blurMatte.r; \n matte.rgb *= m; \n return matte; \n } \n"];
    __cxa_guard_release(&qword_8CDF0);
  }

  return qword_8CDE8;
}

- (id)thresholdAndApplyMatte
{
  if ((atomic_load_explicit(&qword_8CE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8CE00))
  {
    qword_8CDF8 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_thresholdAndApplyMatteV2(__sample im, __sample matte, __sample m2, vec4 params, float edgeGamma) \n { \n float low = params.x; float high = params.y; float gamma = params.z; float gain = params.w; float m = smoothstep(low, high, pow(matte.r, gamma+edgeGamma*m2.r)); \n im.rgb *= m; \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n im.rgb = pow(im.rgb, vec3(1.0+gain-gain*matte.r)); \n im.rgb = mix(.5*im.rgb*im.rgb, im.rgb, 1.0-m2.r); \n float r = im.r/(im.r+im.g+im.b+0.00001); \n float sat = max(min(1.0, (1.0-r)), 0.0); \n float y = dot(im.rgb, vec3(.3333333)); \n im.rgb = mix(sat*(im.rgb-y)+y, im.rgb, m); \n return im; \n } \n"];
    __cxa_guard_release(&qword_8CE00);
  }

  return qword_8CDF8;
}

- (id)outputImage
{
  if (!self->super.super.super.inputImage)
  {
    return 0;
  }

  selfCopy = self;
  inputDisparity = self->super.super.super.inputDisparity;
  if (inputDisparity && (v4 = [(CIImage *)inputDisparity depthData]) != 0 && [(AVDepthData *)v4 depthDataAccuracy]== &dword_0 + 1)
  {
    v5 = 1;
  }

  else
  {
    [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue];
    v5 = 0;
  }

  p_info = &@"kernel vec4 _pf_eyeBrightenSoftlight (__sample uCb, __sample m, float str) \n { \n float g = .75*(1.0-dot(uCb.rgb, vec3(.333333))); \n vec4 uCf = vec4(g, g, g, 1.0); \n vec4 D = compare(uCb-0.25, ((16.0*uCb-12.0)*uCb+4.0)*uCb, sqrt(uCb)); \n vec4 Ct = clamp(uCb + (2.0*uCf-1.0) * compare(uCf - 0.5, uCb*(1.0-uCb), D-uCb), 0.0, 1.0); \n vec4 bright = Ct; \n uCf.rgb = mix(uCb.rgb, bright.rgb, m.r); \n uCf.rgb = mix(uCb.rgb, uCf.rgb, str); \n return uCf; \n }".info;
  v280.receiver = selfCopy;
  v280.super_class = CIPortraitEffectStageV2;
  result = [(CIPortraitEffectContourV2 *)&v280 outputImage];
  v8 = result;
  p_isa = &selfCopy->super.super.super.super.super.isa;
  if (selfCopy->super.super.super.inputMatte)
  {
    v257 = v5;
    v9 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v10 = [(CIImage *)v9 imageByCroppingToRect:?];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v12 = v11;
    v261 = v12;
    [(CIImage *)selfCopy->super.super.super.inputMatte extent];
    v14 = v13;
    v259 = v14;
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v16 = v15;
    v260 = v16;
    [(CIImage *)selfCopy->super.super.super.inputMatte extent];
    v18 = v17;
    inputFaceLandmarkArray = selfCopy->super.super.super.inputFaceLandmarkArray;
    v264 = v8;
    v271 = v10;
    if (inputFaceLandmarkArray)
    {
      v256 = v17;
      if ([(NSArray *)inputFaceLandmarkArray count])
      {
        v278 = 0u;
        v279 = 0u;
        v276 = 0u;
        v277 = 0u;
        obj = selfCopy->super.super.super.inputFaceLandmarkArray;
        v20 = [(NSArray *)obj countByEnumeratingWithState:&v276 objects:v317 count:16];
        if (v20)
        {
          v263 = 0;
          v21 = 0;
          v22 = @"faceJunkinessIndex";
          v23 = *v277;
          v262 = *v277;
          do
          {
            v24 = 0;
            v266 = v20;
            do
            {
              if (*v277 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v276 + 1) + 8 * v24);
              if ([v25 objectForKeyedSubscript:v22])
              {
                [objc_msgSend(v25 objectForKeyedSubscript:{v22), "floatValue"}];
                v27 = v26 < -0.2;
              }

              else
              {
                v27 = 0;
              }

              if ([v25 objectForKeyedSubscript:@"faceBoundingBox"])
              {
                [objc_msgSend(objc_msgSend(v25 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
                v29 = v28 > 0.15;
              }

              else
              {
                v29 = 0;
              }

              if ([v25 objectForKeyedSubscript:@"roll"])
              {
                [objc_msgSend(v25 objectForKeyedSubscript:{@"roll", "floatValue"}];
                v31 = fabsf(v30) < 1.05;
              }

              else
              {
                v31 = 1;
              }

              if (v27 && v29 && v31)
              {
                v32 = [LightingFacePoints alloc];
                [p_isa[9] extent];
                v33 = [(LightingFacePoints *)v32 initWithFaceLandmarkDictionary:v25 forImageRect:?];
                v34 = v22;
                v35 = v33;
                [(LightingFacePoints *)v33 faceWidth];
                v37 = v36;
                [p_isa[9] extent];
                v39 = v37 / v38;
                v40 = fmax(fmin(v39 * 1.05, 1.0), 0.36);
                v263 = [objc_msgSend(v25 objectForKeyedSubscript:{@"orientation", "intValue"}];
                if (v263 - 5 >= 4)
                {
                  v41 = 0.0;
                }

                else
                {
                  v41 = 1.5708;
                }

                [(LightingFacePoints *)v35 centerChin];
                *&v42 = v42;
                v269 = *&v42;
                [(LightingFacePoints *)v35 centerChin];
                v44 = v43;
                v268 = v44;
                [(LightingFacePoints *)v35 faceWidth];
                v46 = v40;
                v47 = v45 * 1.5 * v46;
                [(LightingFacePoints *)v35 faceHeight];
                *&v46 = v48 * 4.5 * v46;
                v49 = __sincosf_stret(v41);
                v50 = sin(v41 + v41);
                v51 = [CIVector vectorWithX:(v49.__cosval * v49.__cosval) / ((v47 + v47) * v47) + (v49.__sinval * v49.__sinval) / ((*&v46 + *&v46) * *&v46) Y:(v50 / (*&v46 * 4.0 * *&v46) - v50 / (v47 * 4.0 * v47)) Z:(v49.__sinval * v49.__sinval) / ((v47 + v47) * v47) + (v49.__cosval * v49.__cosval) / ((*&v46 + *&v46) * *&v46) W:0.7];
                v52 = [CIVector vectorWithX:v269 Y:v268];
                _faceVignette = [p_isa _faceVignette];
                v20 = v266;
                [p_isa[9] extent];
                v316[0] = v264;
                v316[1] = v271;
                ++v21;
                v316[2] = v52;
                v316[3] = v51;
                v271 = [_faceVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v316, 4), v54, v55, v56, v57}];

                v22 = v34;
                v23 = v262;
              }

              v24 = v24 + 1;
            }

            while (v20 != v24);
            v20 = [(NSArray *)obj countByEnumeratingWithState:&v276 objects:v317 count:16];
          }

          while (v20);
          LODWORD(v20) = v21 > 0;
          selfCopy = p_isa;
          p_info = (@"kernel vec4 _pf_eyeBrightenSoftlight (__sample uCb, __sample m, float str) \n { \n float g = .75*(1.0-dot(uCb.rgb, vec3(.333333))); \n vec4 uCf = vec4(g, g, g, 1.0); \n vec4 D = compare(uCb-0.25, ((16.0*uCb-12.0)*uCb+4.0)*uCb, sqrt(uCb)); \n vec4 Ct = clamp(uCb + (2.0*uCf-1.0) * compare(uCf - 0.5, uCb*(1.0-uCb), D-uCb), 0.0, 1.0); \n vec4 bright = Ct; \n uCf.rgb = mix(uCb.rgb, bright.rgb, m.r); \n uCf.rgb = mix(uCb.rgb, uCf.rgb, str); \n return uCf; \n }" + 8);
        }

        else
        {
          v263 = 0;
        }
      }

      else
      {
        v263 = 0;
        LODWORD(v20) = 0;
      }

      v18 = v256;
    }

    else
    {
      v263 = 0;
      LODWORD(v20) = 0;
    }

    v142 = v261 / v259;
    v143 = p_info[298];
    v275.receiver = selfCopy;
    v275.super_class = v143;
    v144 = v260 / v18;
    v145 = [(CIPortraitEffectLightV2 *)&v275 getRefinedMatteMode:&off_7A8C0];
    if (selfCopy->super.super.super.inputSpillCorrectedRatioImage || (-[NSNumber floatValue](selfCopy->super.super.super.inputGenerateSpillMatte, "floatValue"), v146 > 0.0) || ([v145 floatValue], v147 > 0.0))
    {
      inputMatte = selfCopy->super.super.super.inputMatte;
      [(NSNumber *)selfCopy->super.super.super.inputGenerateSpillMatte floatValue];
      if (v149 <= 0.0 && ([v145 floatValue], v150 <= 0.0))
      {
        if (selfCopy->super.super.super.inputSpillCorrectedRatioImage)
        {
          inputSpillCorrectedRatioImage = selfCopy->super.super.super.inputSpillCorrectedRatioImage;
        }

        else
        {
          inputSpillCorrectedRatioImage = inputMatte;
        }

        v155 = v264;
      }

      else
      {
        v151 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        v152 = p_info[298];
        v274.receiver = selfCopy;
        v274.super_class = v152;
        v153 = [(CIPortraitEffectLightV2 *)&v274 getRenderSpillCache:&off_7A140];
        v154 = selfCopy->super.super.super.inputMatte;
        v314[0] = @"inputMatte";
        v314[1] = @"bgColor";
        v315[0] = v154;
        v315[1] = v151;
        v314[2] = @"inputRenderCache";
        v315[2] = v153;
        v155 = v264;
        inputSpillCorrectedRatioImage = [v264 imageByApplyingFilter:@"CIPortraitEffectSpillCorrection" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v315, v314, 3)}];
      }

      _getRefinedMatte = [(CIPortraitEffectStageV2 *)selfCopy _getRefinedMatte];
      [(CIImage *)inputSpillCorrectedRatioImage extent];
      v313 = inputSpillCorrectedRatioImage;
      v162 = [_getRefinedMatte applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v313, 1), v158, v159, v160, v161}];
      v163 = [objc_msgSend(v162 "imageByClampingToExtent")];
      [v162 extent];
      v164 = [v163 imageByCroppingToRect:?];
      v311 = @"inputBackgroundImage";
      v312 = v164;
      v165 = [v162 imageByApplyingFilter:@"CIMultiplyBlendMode" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v312, &v311, 1)}];
      v309 = @"inputBackgroundImage";
      v310 = v164;
      v166 = [v162 imageByApplyingFilter:@"CIDifferenceBlendMode" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v310, &v309, 1)}];
      [v165 extent];
      v168 = v167;
      [v155 extent];
      if (v168 != v169)
      {
        imageByClampingToExtent = [v165 imageByClampingToExtent];
        CGAffineTransformMakeScale(&v273, v142, v144);
        v171 = [imageByClampingToExtent imageByApplyingTransform:&v273];
        [v155 extent];
        v165 = [v171 imageByCroppingToRect:?];
        CGAffineTransformMakeScale(&v273, v142, v144);
        v166 = [v166 imageByApplyingTransform:&v273];
      }

      _applyRefinedMatte = [(CIPortraitEffectStageV2 *)selfCopy _applyRefinedMatte];
      [v155 extent];
      v174 = v173;
      v176 = v175;
      v178 = v177;
      v180 = v179;
      v308[0] = v155;
      v308[1] = v165;
      v308[2] = v166;
      v181 = [NSArray arrayWithObjects:v308 count:3];
      v182 = _applyRefinedMatte;
      v183 = v174;
      v184 = v176;
      v185 = v178;
      v186 = v180;
    }

    else
    {
      thresholdMatte = [(CIPortraitEffectStageV2 *)selfCopy thresholdMatte];
      imageByClampingToExtent2 = [(CIImage *)selfCopy->super.super.super.inputMatte imageByClampingToExtent];
      CGAffineTransformMakeScale(&v273, 0.5, 0.5);
      v208 = [(CIImage *)imageByClampingToExtent2 imageByApplyingTransform:&v273];
      v209 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_red(__sample s) { return s.xxxw; }"];
      [(CIImage *)v208 extent];
      v211 = v210;
      v213 = v212;
      v215 = v214;
      v217 = v216;
      v307 = v208;
      v218 = [NSArray arrayWithObjects:&v307 count:1];
      v305 = kCIKernelOutputFormat;
      v306 = [NSNumber numberWithInt:kCIFormatR8];
      v219 = [v209 applyWithExtent:v218 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v306, &v305, 1), v211, v213, v215, v217}];
      [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
      v221 = v220 * 5.0;
      [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
      v223 = *&v222;
      if ((v257 & 1) != 0 || [p_isa[31] BOOLValue])
      {
        *&v222 = v221 * 2.75;
        v223 = v223 * 1.25;
      }

      else
      {
        *&v222 = v221 * 1.75;
      }

      if (v263)
      {
        if (v263 - 5 >= 4)
        {
          v224 = 1.5708;
        }

        else
        {
          v224 = 0.0;
        }

        v303[0] = @"inputRadius";
        v304[0] = [NSNumber numberWithFloat:v222];
        v303[1] = @"inputAngle";
        *&v225 = v224;
        v304[1] = [NSNumber numberWithFloat:v225];
        v226 = [objc_msgSend(v219 imageByApplyingFilter:@"CIMotionBlur" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v304, v303, 2)), "imageByApplyingGaussianBlurWithSigma:", v223}];
        selfCopy = p_isa;
      }

      else
      {
        selfCopy = p_isa;
        [p_isa[18] floatValue];
        v226 = [v219 imageByApplyingGaussianBlurWithSigma:v227 * 8.0];
      }

      v301 = @"inputRadius";
      [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
      v302 = [NSNumber numberWithDouble:v228 * -3.0];
      v229 = [v219 imageByApplyingFilter:@"CICheapMorphology" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v302, &v301, 1)}];
      v299 = @"inputBackgroundImage";
      v300 = v229;
      v230 = [v226 imageByApplyingFilter:@"CIDifferenceBlendMode" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v300, &v299, 1)}];
      CGAffineTransformMakeScale(&v273, 2.0, 2.0);
      v231 = [v226 imageByApplyingTransform:&v273];
      CGAffineTransformMakeScale(&v273, 2.0, 2.0);
      v232 = [v230 imageByApplyingTransform:&v273];
      [(CIImage *)selfCopy->super.super.super.inputMatte extent];
      v298[0] = imageByClampingToExtent2;
      v298[1] = v231;
      v298[2] = &off_7A120;
      v298[3] = &off_7A160;
      v237 = [thresholdMatte applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v298, 4), v233, v234, v235, v236}];
      CGAffineTransformMakeScale(&v273, v142, v144);
      v238 = [v237 imageByApplyingTransform:&v273];
      [v264 extent];
      v239 = [v238 imageByCroppingToRect:?];
      CGAffineTransformMakeScale(&v273, v142, v144);
      v240 = [v232 imageByApplyingTransform:&v273];
      [v264 extent];
      v241 = [v240 imageByCroppingToRect:?];
      thresholdAndApplyMatte = [(CIPortraitEffectStageV2 *)selfCopy thresholdAndApplyMatte];
      v243 = 0.5;
      v244 = 0.100000001;
      v245 = 1059481190;
      v246 = 2.20000005;
      if ((v257 & 1) == 0 && ![(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
      {
        v244 = 0.0;
        v246 = 1.75;
        v243 = 0.400000006;
        v245 = 1036831949;
      }

      v247 = [CIVector vectorWithX:v244 Y:1.0 Z:v243 W:v246];
      [v264 extent];
      v249 = v248;
      v251 = v250;
      v253 = v252;
      v255 = v254;
      v297[0] = v264;
      v297[1] = v239;
      v297[2] = v241;
      v297[3] = v247;
      LODWORD(v248) = v245;
      v297[4] = [NSNumber numberWithFloat:v248];
      v181 = [NSArray arrayWithObjects:v297 count:5];
      v182 = thresholdAndApplyMatte;
      v183 = v249;
      v184 = v251;
      v185 = v253;
      v186 = v255;
    }

    v187 = [v182 applyWithExtent:v181 arguments:{v183, v184, v185, v186}];
    [(NSNumber *)selfCopy->inputSharpenRadius floatValue];
    v189 = v188;
    [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
    *&v191 = v189 * v190;
    v296[0] = &off_79E40;
    v295[0] = @"inputSharpness";
    v295[1] = @"inputRadius";
    v296[1] = [NSNumber numberWithFloat:v191];
    v192 = [v187 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v296, v295, 2)}];
    if (v20)
    {
      _applyVignetteStage = [(CIPortraitEffectStageV2 *)selfCopy _applyVignetteStage];
      [(CIImage *)selfCopy->super.super.super.inputImage extent];
      v195 = v194;
      v197 = v196;
      v199 = v198;
      v201 = v200;
      v294[0] = v192;
      v294[1] = v271;
      LODWORD(v194) = 1061997773;
      v294[2] = [NSNumber numberWithFloat:v194];
      v192 = [_applyVignetteStage applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v294, 3), v195, v197, v199, v201}];
    }

    [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
    v203 = v202;
    [(NSNumber *)selfCopy->inputGrainAmount floatValue];
    *&v205 = v203 * v204;
    v292[0] = @"inputAmount";
    v206 = [NSNumber numberWithFloat:v205];
    v292[1] = @"inputISO";
    v293[0] = v206;
    v293[1] = &off_7A8A8;
    v140 = [NSDictionary dictionaryWithObjects:v293 forKeys:v292 count:2];
    v141 = v192;
    return [v141 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:v140];
  }

  if (selfCopy->super.super.super.inputBlurMap)
  {
    v258 = v5;
    v58 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v59 = [(CIImage *)v58 imageByCroppingToRect:?];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v60 = 0.5;
    v62 = v61 * 0.5;
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v64 = v63 * 0.5;
    v65 = v62;
    v66 = v65 * 0.3;
    v67 = v64;
    v68 = v64 * 0.3;
    v69 = [CIVector vectorWithX:1.0 / ((v66 + v66) * v66) + 0.0 / ((v68 + v68) * v68) Y:0.0 / (v68 * 4.0 * v68) - 0.0 / (v66 * 4.0 * v66) Z:0.0 / ((v66 + v66) * v66) + 1.0 / ((v68 + v68) * v68) W:0.7];
    v70 = [CIVector vectorWithX:v65 Y:v67];
    _faceVignette2 = [(CIPortraitEffectStageV2 *)selfCopy _faceVignette];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v291[0] = v8;
    v291[1] = v59;
    v291[2] = v70;
    v291[3] = v69;
    v272 = [_faceVignette2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v291, 4), v72, v73, v74, v75}];
    inputBlurMap = selfCopy->super.super.super.inputBlurMap;
    _CIPrepareBlackDepth = [(CIPortraitEffectStageV2 *)selfCopy _CIPrepareBlackDepth];
    [(CIImage *)selfCopy->super.super.super.inputBlurMap extent];
    v290[0] = inputBlurMap;
    v290[1] = &off_79DE0;
    v82 = [objc_msgSend(_CIPrepareBlackDepth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v290, 2), v78, v79, v80, v81), "imageByClampingToExtent"}];
    CGAffineTransformMakeScale(&v273, 0.5, 0.5);
    v83 = [v82 imageByApplyingTransform:&v273];
    [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
    v85 = [v83 imageByApplyingGaussianBlurWithSigma:v84 * 8.0];
    v86 = [v83 imageByApplyingFilter:@"CICheapMorphology" withInputParameters:&off_7DD38];
    v288 = @"inputBackgroundImage";
    v289 = v86;
    v87 = [v85 imageByApplyingFilter:@"CIDifferenceBlendMode" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v289, &v288, 1)}];
    CGAffineTransformMakeScale(&v273, 2.0, 2.0);
    v88 = [v85 imageByApplyingTransform:&v273];
    CGAffineTransformMakeScale(&v273, 2.0, 2.0);
    v89 = [v87 imageByApplyingTransform:&v273];
    thresholdMatte2 = [(CIPortraitEffectStageV2 *)selfCopy thresholdMatte];
    [v82 extent];
    v287[0] = v82;
    v287[1] = v88;
    v287[2] = &off_7A120;
    v287[3] = &off_7A160;
    v95 = [thresholdMatte2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v287, 4), v91, v92, v93, v94}];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    *&v65 = v96;
    [(CIImage *)selfCopy->super.super.super.inputBlurMap extent];
    v98 = v97;
    *&v65 = *&v65 / v98;
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    *&v67 = v99;
    [(CIImage *)selfCopy->super.super.super.inputBlurMap extent];
    v101 = v100;
    v102 = *&v65;
    v103 = (*&v67 / v101);
    CGAffineTransformMakeScale(&v273, v102, v103);
    v104 = [v95 imageByApplyingTransform:&v273];
    [v8 extent];
    v105 = [v104 imageByCroppingToRect:?];
    CGAffineTransformMakeScale(&v273, v102, v103);
    v106 = [v89 imageByApplyingTransform:&v273];
    [v8 extent];
    v107 = [v106 imageByCroppingToRect:?];
    thresholdAndApplyMatte2 = [(CIPortraitEffectStageV2 *)selfCopy thresholdAndApplyMatte];
    v109 = 2.20000005;
    v110 = 1059481190;
    v111 = 0.100000001;
    if ((v258 & 1) == 0 && ![(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
    {
      v109 = 1.75;
      v111 = 0.0;
      v110 = 1036831949;
      v60 = 0.400000006;
    }

    v112 = [CIVector vectorWithX:v111 Y:1.0 Z:v60 W:v109];
    [v8 extent];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v286[0] = v8;
    v286[1] = v105;
    v286[2] = v107;
    v286[3] = v112;
    LODWORD(v113) = v110;
    v286[4] = [NSNumber numberWithFloat:v113];
    v121 = [thresholdAndApplyMatte2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v286, 5), v114, v116, v118, v120}];
    [(NSNumber *)selfCopy->inputSharpenRadius floatValue];
    LODWORD(v114) = v122;
    [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
    *&v124 = *&v114 * v123;
    v284[0] = @"inputSharpness";
    v284[1] = @"inputRadius";
    v285[0] = &off_79E40;
    v285[1] = [NSNumber numberWithFloat:v124];
    v125 = [v121 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v285, v284, 2)}];
    _applyVignetteStage2 = [(CIPortraitEffectStageV2 *)selfCopy _applyVignetteStage];
    [(CIImage *)selfCopy->super.super.super.inputImage extent];
    v128 = v127;
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v283[0] = v125;
    v283[1] = v272;
    LODWORD(v127) = 1061997773;
    v283[2] = [NSNumber numberWithFloat:v127];
    v135 = [_applyVignetteStage2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v283, 3), v128, v130, v132, v134}];
    [(NSNumber *)selfCopy->super.super.super.inputScale floatValue];
    LODWORD(v128) = v136;
    [(NSNumber *)selfCopy->inputGrainAmount floatValue];
    *&v138 = *&v128 * v137;
    v281[0] = @"inputAmount";
    v139 = [NSNumber numberWithFloat:v138];
    v281[1] = @"inputISO";
    v282[0] = v139;
    v282[1] = &off_7A8A8;
    v140 = [NSDictionary dictionaryWithObjects:v282 forKeys:v281 count:2];
    v141 = v135;
    return [v141 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:v140];
  }

  return result;
}

@end