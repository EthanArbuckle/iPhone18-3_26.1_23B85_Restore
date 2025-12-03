@interface CIPortraitEffectStageWhite
- (id)_CIPrepareWhiteDepth;
- (id)_applyRefinedWhiteMatte;
- (id)_applyWhiteNoFeather;
- (id)_getRefinedWhiteMatte;
- (id)outputImage;
- (id)thresholdAndApplyWhiteBG;
- (id)thresholdWhiteMatte;
- (void)setDefaults;
@end

@implementation CIPortraitEffectStageWhite

- (id)thresholdAndApplyWhiteBG
{
  if ((atomic_load_explicit(&qword_8CE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8CE10))
  {
    qword_8CE08 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_thresholdAndApplyWhiteBG(__sample im, __sample matte, __sample m2, float low, float high, float gamma, float gain) \n { \n float m = smoothstep(low, high, pow(matte.r, gamma+.5*m2.r)); \n im.rgb = mix(vec3(1.0), im.rgb, m); \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n im.rgb = pow(im.rgb, vec3(1.0+gain-gain*m)); \n im.rgb = mix(.5*im.rgb*im.rgb, im.rgb, 1.0-m2.r); \n float r = im.r/(im.r+im.g+im.b+0.00001); \n float sat = max(min(1.0, (1.3-.9*r)), 0.0); \n float y = dot(im.rgb, vec3(.3333333)); \n im.rgb = mix(sat*(im.rgb-y)+y, im.rgb, m); \n return im; \n } \n"];
    __cxa_guard_release(&qword_8CE10);
  }

  return qword_8CE08;
}

- (id)thresholdWhiteMatte
{
  if ((atomic_load_explicit(&qword_8CE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8CE20))
  {
    qword_8CE18 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_thresholdWhiteMatte(__sample matte, __sample blurMatte, float low, float high) \n { \n float m = smoothstep(low, high, matte.r)*blurMatte.r; \n matte.rgb *= m; \n return matte; \n } \n"];
    __cxa_guard_release(&qword_8CE20);
  }

  return qword_8CE18;
}

- (id)_CIPrepareWhiteDepth
{
  if (qword_8CE30 != -1)
  {
    sub_4A9A8();
  }

  return qword_8CE28;
}

- (id)_applyWhiteNoFeather
{
  if (qword_8CE40 != -1)
  {
    sub_4A9BC();
  }

  return qword_8CE38;
}

- (id)_getRefinedWhiteMatte
{
  if (qword_8CE50 != -1)
  {
    sub_4A9D0();
  }

  return qword_8CE48;
}

- (id)_applyRefinedWhiteMatte
{
  if (qword_8CE60 != -1)
  {
    sub_4A9E4();
  }

  return qword_8CE58;
}

- (void)setDefaults
{
  [(CIPortraitEffectLightV2 *)self setInputSmooth:&off_7A2A0];
  [(CIPortraitEffectLightV2 *)self setInputEnrich:&off_7A190];
  [(CIPortraitEffectLightV2 *)self setInputLocalContrast:&off_7A2B0];
  [(CIPortraitEffectStudioV2 *)self setInputKickLight:&off_7A0F0];
  [(CIPortraitEffectStudioV2 *)self setInputFaceLight:&off_79E50];
  [(CIPortraitEffectV2 *)self setInputStrength:&off_7A170];
  [(CIPortraitEffectStudioV2 *)self setInputDepthThreshold:&off_7A160];
  [(CIPortraitEffectLightV2 *)self setInputEyes:&off_7A170];
  [(CIPortraitEffectV2 *)self setInputScale:&off_7A110];
  [(CIPortraitEffectStageWhite *)self setInputSharpenRadius:&off_7A290];
  [(CIPortraitEffectLightV2 *)self setInputTeeth:&off_7A1B0];
  [(CIPortraitEffectStageWhite *)self setInputGrainAmount:&off_7A2C0];
  [(CIPortraitEffectV2 *)self setInputRenderProxy:&off_7A140];

  [(CIPortraitEffectV2 *)self setInputGenerateSpillMatte:&off_7A140];
}

- (id)outputImage
{
  result = self->super.super.super.inputImage;
  if (result && (self->super.super.super.inputMatte || self->super.super.super.inputBlurMap))
  {
    v117.receiver = self;
    v117.super_class = CIPortraitEffectStageWhite;
    outputImage = [(CIPortraitEffectStudioV2 *)&v117 outputImage];
    if (self->super.super.super.inputMatte)
    {
      v116.receiver = self;
      v116.super_class = CIPortraitEffectStageWhite;
      v5 = [(CIPortraitEffectLightV2 *)&v116 getRefinedMatteMode:&off_7A8C0];
      if (self->super.super.super.inputSpillCorrectedRatioImage || (v6 = v5, -[NSNumber floatValue](self->super.super.super.inputGenerateSpillMatte, "floatValue"), v7 > 0.0) || ([v6 floatValue], v8 = 1.0, v9 > 0.0))
      {
        v8 = 0.5;
      }

      [(CIImage *)self->super.super.super.inputImage extent];
      v11 = v10;
      [(CIImage *)self->super.super.super.inputMatte extent];
      v13 = v12;
      v14 = v11 / v13;
      [(CIImage *)self->super.super.super.inputImage extent];
      v16 = v15;
      [(CIImage *)self->super.super.super.inputMatte extent];
      v18 = v17;
      v19 = v16 / v18;
      thresholdWhiteMatte = [(CIPortraitEffectStageWhite *)self thresholdWhiteMatte];
      imageByClampingToExtent = [(CIImage *)self->super.super.super.inputMatte imageByClampingToExtent];
      CGAffineTransformMakeScale(&v115, 0.5, 0.5);
      v22 = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:&v115];
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      v24 = [(CIImage *)v22 imageByApplyingGaussianBlurWithSigma:v23 * 8.0];
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      v26 = [(CIImage *)v24 imageByApplyingGaussianBlurWithSigma:v8 * (v25 * 12.0)];
      CGAffineTransformMakeScale(&v115, 2.0, 2.0);
      v27 = [(CIImage *)v24 imageByApplyingTransform:&v115];
      CGAffineTransformMakeScale(&v115, 2.0, 2.0);
      v28 = [(CIImage *)v26 imageByApplyingTransform:&v115];
      [(CIImage *)self->super.super.super.inputMatte extent];
      v138[0] = imageByClampingToExtent;
      v138[1] = v27;
      v138[2] = &off_7A120;
      v138[3] = &off_7A160;
      v33 = [thresholdWhiteMatte applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v138, 4), v29, v30, v31, v32}];
      inputMatte = self->super.super.super.inputMatte;
      v136 = @"inputBackgroundImage";
      v137 = inputMatte;
      v35 = [(CIImage *)v28 imageByApplyingFilter:@"CIDifferenceBlendMode" withInputParameters:[NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1]];
      CGAffineTransformMakeScale(&v115, v14, v19);
      v36 = [v33 imageByApplyingTransform:&v115];
      [outputImage extent];
      v37 = [v36 imageByCroppingToRect:?];
      CGAffineTransformMakeScale(&v115, v14, v19);
      v38 = [(CIImage *)v35 imageByApplyingTransform:&v115];
      [outputImage extent];
      v39 = [(CIImage *)v38 imageByCroppingToRect:?];
      thresholdAndApplyWhiteBG = [(CIPortraitEffectStageWhite *)self thresholdAndApplyWhiteBG];
      v41 = dbl_54EB0[v8 < 1.0];
      [outputImage extent];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v135[0] = outputImage;
      v135[1] = v37;
      v135[2] = v39;
      v135[3] = &off_7A120;
      v135[4] = &off_7A110;
      *&v42 = v41;
      v135[5] = [NSNumber numberWithFloat:v42];
      v135[6] = &off_7A250;
      v50 = [thresholdAndApplyWhiteBG applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v135, 7), v43, v45, v47, v49}];
      [(NSNumber *)self->inputSharpenRadius floatValue];
      v52 = v51;
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      *&v54 = v52 * v53;
      v133[0] = @"inputSharpness";
      v133[1] = @"inputRadius";
      v134[0] = &off_79E40;
      v134[1] = [NSNumber numberWithFloat:v54];
      v55 = [v50 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v134, v133, 2)}];
      v131 = kCIInputEVKey;
      v132 = &off_7A1B0;
      v56 = [v55 imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v132, &v131, 1)}];
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      v58 = v57;
      [(NSNumber *)self->inputGrainAmount floatValue];
      *&v60 = v58 * v59;
      v129[0] = @"inputAmount";
      v61 = [NSNumber numberWithFloat:v60];
      v129[1] = @"inputISO";
      v130[0] = v61;
      v130[1] = &off_7A8A8;
      v62 = v130;
      v63 = v129;
    }

    else
    {
      if (!self->super.super.super.inputBlurMap)
      {
        return [objc_msgSend(outputImage imageByApplyingFilter:{@"CIPhotoEffectStageMono", "imageByApplyingFilter:withInputParameters:", @"CISmartBlackAndWhite", &off_7DDB0}];
      }

      [(CIImage *)self->super.super.super.inputImage extent];
      v65 = v64;
      [(CIImage *)self->super.super.super.inputBlurMap extent];
      v67 = v66;
      v68 = v65 / v67;
      [(CIImage *)self->super.super.super.inputImage extent];
      v70 = v69;
      [(CIImage *)self->super.super.super.inputBlurMap extent];
      v72 = v71;
      v73 = v70 / v72;
      thresholdWhiteMatte2 = [(CIPortraitEffectStageWhite *)self thresholdWhiteMatte];
      inputBlurMap = self->super.super.super.inputBlurMap;
      _CIPrepareWhiteDepth = [(CIPortraitEffectStageWhite *)self _CIPrepareWhiteDepth];
      [(CIImage *)self->super.super.super.inputBlurMap extent];
      v128[0] = inputBlurMap;
      v128[1] = &off_79DE0;
      v81 = [objc_msgSend(_CIPrepareWhiteDepth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v128, 2), v77, v78, v79, v80), "imageByClampingToExtent"}];
      CGAffineTransformMakeScale(&v115, 0.5, 0.5);
      v82 = [v81 imageByApplyingTransform:&v115];
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      v84 = [v82 imageByApplyingGaussianBlurWithSigma:v83 * 8.0];
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      v86 = [v84 imageByApplyingGaussianBlurWithSigma:v85 * 12.0];
      CGAffineTransformMakeScale(&v115, 2.0, 2.0);
      v87 = [v84 imageByApplyingTransform:&v115];
      CGAffineTransformMakeScale(&v115, 2.0, 2.0);
      v88 = [v86 imageByApplyingTransform:&v115];
      [(CIImage *)self->super.super.super.inputBlurMap extent];
      v127[0] = v81;
      v127[1] = v87;
      v127[2] = &off_7A120;
      v127[3] = &off_7A160;
      v93 = [thresholdWhiteMatte2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v127, 4), v89, v90, v91, v92}];
      v125 = @"inputBackgroundImage";
      v126 = v93;
      v94 = [v88 imageByApplyingFilter:@"CIDifferenceBlendMode" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v126, &v125, 1)}];
      CGAffineTransformMakeScale(&v115, v68, v73);
      v95 = [v93 imageByApplyingTransform:&v115];
      [outputImage extent];
      v96 = [v95 imageByCroppingToRect:?];
      CGAffineTransformMakeScale(&v115, v68, v73);
      v97 = [v94 imageByApplyingTransform:&v115];
      [outputImage extent];
      v98 = [v97 imageByCroppingToRect:?];
      thresholdAndApplyWhiteBG2 = [(CIPortraitEffectStageWhite *)self thresholdAndApplyWhiteBG];
      [outputImage extent];
      v124[0] = outputImage;
      v124[1] = v96;
      v124[2] = v98;
      v124[3] = &off_7A120;
      v124[4] = &off_7A110;
      v124[5] = &off_79E20;
      v124[6] = &off_7A250;
      v104 = [thresholdAndApplyWhiteBG2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v124, 7), v100, v101, v102, v103}];
      [(NSNumber *)self->inputSharpenRadius floatValue];
      v106 = v105;
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      *&v108 = v106 * v107;
      v122[0] = @"inputSharpness";
      v122[1] = @"inputRadius";
      v123[0] = &off_79E40;
      v123[1] = [NSNumber numberWithFloat:v108];
      v109 = [v104 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v123, v122, 2)}];
      v120 = kCIInputEVKey;
      v121 = &off_7A1B0;
      v56 = [v109 imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v121, &v120, 1)}];
      [(NSNumber *)self->super.super.super.inputScale floatValue];
      v111 = v110;
      [(NSNumber *)self->inputGrainAmount floatValue];
      *&v113 = v111 * v112;
      v118[0] = @"inputAmount";
      v114 = [NSNumber numberWithFloat:v113];
      v118[1] = @"inputISO";
      v119[0] = v114;
      v119[1] = &off_7A8A8;
      v62 = v119;
      v63 = v118;
    }

    outputImage = [v56 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v62, v63, 2)}];
    return [objc_msgSend(outputImage imageByApplyingFilter:{@"CIPhotoEffectStageMono", "imageByApplyingFilter:withInputParameters:", @"CISmartBlackAndWhite", &off_7DDB0}];
  }

  return result;
}

@end