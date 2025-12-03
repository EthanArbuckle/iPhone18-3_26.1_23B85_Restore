@interface CIPortraitEffectLightV2
+ (id)customAttributes;
- (id)_cheapEdgePreserve;
- (id)_enrichV2;
- (id)_eyeBlurV2;
- (id)_eyeBrightenSoftlight;
- (id)_eyeBrightenV2;
- (id)_featherEdge;
- (id)_protectEyesNose;
- (id)_textureAdd;
- (id)_textureDiff;
- (id)_whitenTeeth;
- (id)enrichImage:(id)image;
- (id)eyeBlurForLandmarks:(id)landmarks;
- (id)getDraftMode:(id)mode;
- (id)getRefinedMatteMode:(id)mode;
- (id)getRenderSpillCache:(id)cache;
- (id)imageForLandmarks:(id)landmarks;
- (id)maskForLandmarks:(id)landmarks withFilterNamed:(id)named;
- (id)outputImage;
- (id)processEyesIn:(id)in withEyeBlur:(id)blur landmarks:(id)landmarks;
- (id)processSkinIn:(id)in withFaceMask:(id)mask;
- (id)processTeethIn:(id)in withFaceMask:(id)mask;
- (id)processTeethIn:(id)in withTeethMask:(id)mask;
- (id)protectEyesNose:(id)nose withFaceMask:(id)mask withOrientation:(int)orientation;
- (void)setDefaults;
@end

@implementation CIPortraitEffectLightV2

+ (id)customAttributes
{
  v14[0] = kCIAttributeFilterCategories;
  v13[0] = kCICategoryColorEffect;
  v13[1] = kCICategoryVideo;
  v13[2] = kCICategoryInterlaced;
  v13[3] = kCICategoryNonSquarePixels;
  v13[4] = kCICategoryStillImage;
  v13[5] = kCICategoryBuiltIn;
  v13[6] = kCICategoryApplePrivate;
  v15[0] = [NSArray arrayWithObjects:v13 count:7];
  v15[1] = @"12";
  v14[1] = kCIAttributeFilterAvailable_iOS;
  v14[2] = kCIAttributeFilterAvailable_Mac;
  v15[2] = @"10.13";
  v14[3] = @"inputSmooth";
  v11[0] = kCIAttributeMin;
  v11[1] = kCIAttributeSliderMin;
  v12[0] = &off_7A150;
  v12[1] = &off_7A150;
  v11[2] = kCIAttributeSliderMax;
  v11[3] = kCIAttributeDefault;
  v12[2] = &off_7A0F0;
  v12[3] = &off_79CA0;
  v11[4] = kCIAttributeIdentity;
  v11[5] = kCIAttributeType;
  v12[4] = &off_7A120;
  v12[5] = kCIAttributeTypeScalar;
  v15[3] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:6];
  v14[4] = @"inputEnrich";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeSliderMin;
  v10[0] = &off_7A120;
  v10[1] = &off_7A120;
  v9[2] = kCIAttributeSliderMax;
  v9[3] = kCIAttributeDefault;
  v10[2] = &off_7A0F0;
  v10[3] = &off_7A160;
  v9[4] = kCIAttributeIdentity;
  v9[5] = kCIAttributeType;
  v10[4] = &off_7A120;
  v10[5] = kCIAttributeTypeScalar;
  v15[4] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v14[5] = @"inputTeeth";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_7A120;
  v8[1] = &off_7A120;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeDefault;
  v8[2] = &off_7A0F0;
  v8[3] = &off_79C40;
  v7[4] = kCIAttributeIdentity;
  v7[5] = kCIAttributeType;
  v8[4] = &off_7A120;
  v8[5] = kCIAttributeTypeScalar;
  v15[5] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:6];
  v14[6] = @"inputEyes";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeSliderMin;
  v6[0] = &off_7A120;
  v6[1] = &off_7A120;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_7A0F0;
  v6[3] = &off_7A170;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_7A120;
  v6[5] = kCIAttributeTypeScalar;
  v15[6] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v14[7] = @"inputLocalContrast";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_7A150;
  v4[1] = &off_7A150;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_7A0F0;
  v4[3] = &off_7A120;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_7A120;
  v4[5] = kCIAttributeTypeScalar;
  v15[7] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)getDraftMode:(id)mode
{
  if (qword_8CBC0 != -1)
  {
    sub_4A6AC();
  }

  if (dword_8C760 < 0)
  {
    return mode;
  }

  return [NSNumber numberWithInt:?];
}

- (id)getRefinedMatteMode:(id)mode
{
  if (qword_8CBC8 != -1)
  {
    sub_4A6C0();
  }

  if (dword_8C764 < 0)
  {
    return mode;
  }

  return [NSNumber numberWithInt:?];
}

- (id)getRenderSpillCache:(id)cache
{
  if (qword_8CBD0 != -1)
  {
    sub_4A6D4();
  }

  if (dword_8C768 < 0)
  {
    return cache;
  }

  return [NSNumber numberWithInt:?];
}

- (void)setDefaults
{
  [(CIPortraitEffectLightV2 *)self setInputSmooth:&off_7A180];
  [(CIPortraitEffectLightV2 *)self setInputEnrich:&off_7A190];
  [(CIPortraitEffectLightV2 *)self setInputTeeth:&off_79C40];
  [(CIPortraitEffectLightV2 *)self setInputLocalContrast:&off_7A1A0];
  [(CIPortraitEffectV2 *)self setInputStrength:&off_7A170];
  [(CIPortraitEffectLightV2 *)self setInputEyes:&off_79DE0];
  [(CIPortraitEffectV2 *)self setInputScale:&off_7A110];
  [(CIPortraitEffectV2 *)self setInputRenderProxy:&off_7A140];

  [(CIPortraitEffectV2 *)self setInputGenerateSpillMatte:&off_7A140];
}

- (id)_whitenTeeth
{
  if (qword_8CBE0 != -1)
  {
    sub_4A6E8();
  }

  return qword_8CBD8;
}

- (id)_enrichV2
{
  if (qword_8CBF0 != -1)
  {
    sub_4A6FC();
  }

  return qword_8CBE8;
}

- (id)_eyeBrightenV2
{
  if (qword_8CC00 != -1)
  {
    sub_4A710();
  }

  return qword_8CBF8;
}

- (id)_eyeBrightenSoftlight
{
  if (qword_8CC10 != -1)
  {
    sub_4A724();
  }

  return qword_8CC08;
}

- (id)_textureDiff
{
  if (qword_8CC20 != -1)
  {
    sub_4A738();
  }

  return qword_8CC18;
}

- (id)_textureAdd
{
  if (qword_8CC30 != -1)
  {
    sub_4A74C();
  }

  return qword_8CC28;
}

- (id)_cheapEdgePreserve
{
  if (qword_8CC40 != -1)
  {
    sub_4A760();
  }

  return qword_8CC38;
}

- (id)_protectEyesNose
{
  if (qword_8CC50 != -1)
  {
    sub_4A774();
  }

  return qword_8CC48;
}

- (id)_eyeBlurV2
{
  if (qword_8CC60 != -1)
  {
    sub_4A788();
  }

  return qword_8CC58;
}

- (id)_featherEdge
{
  if (qword_8CC70 != -1)
  {
    sub_4A79C();
  }

  return qword_8CC68;
}

- (id)maskForLandmarks:(id)landmarks withFilterNamed:(id)named
{
  inputImage = self->super.inputImage;
  CGAffineTransformMakeScale(&v10, 0.25, 0.25);
  v7 = [(CIImage *)inputImage imageByApplyingTransform:&v10];
  v11 = @"inputFaceLandmarks";
  landmarksCopy = landmarks;
  result = [(CIImage *)v7 imageByApplyingFilter:named withInputParameters:[NSDictionary dictionaryWithObjects:&landmarksCopy forKeys:&v11 count:1]];
  if (result)
  {
    v9 = result;
    CGAffineTransformMakeScale(&v10, 0.25, 0.25);
    return [objc_msgSend(v9 imageByApplyingTransform:{&v10), "imageByApplyingFilter:withInputParameters:", @"CISoftCubicUpsample", &off_7DB30}];
  }

  return result;
}

- (id)eyeBlurForLandmarks:(id)landmarks
{
  [(NSNumber *)self->inputEyes floatValue];
  if (!landmarks || fabsf(v5) < 1.0e-10)
  {
    return 0;
  }

  v7 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v8 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v9 = [LightingFacePoints alloc];
  [(CIImage *)self->super.inputImage extent];
  v10 = [(LightingFacePoints *)v9 initWithFaceLandmarkDictionary:landmarks forImageRect:?];
  v11 = [CIFilter filterWithName:@"CIGaussianGradient"];
  if ([landmarks objectForKeyedSubscript:@"faceJunkinessIndex"])
  {
    [objc_msgSend(landmarks objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
    v13 = v12 < -0.2;
  }

  else
  {
    v13 = 0;
  }

  if ([landmarks objectForKeyedSubscript:@"faceBoundingBox"])
  {
    [objc_msgSend(objc_msgSend(landmarks objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
    v15 = v14 > 0.15;
  }

  else
  {
    v15 = 0;
  }

  if ([landmarks objectForKeyedSubscript:@"roll"])
  {
    [objc_msgSend(landmarks objectForKeyedSubscript:{@"roll", "floatValue"}];
    v17 = fabsf(v16) < 1.05;
  }

  else
  {
    v17 = 1;
  }

  v18 = 0;
  v19 = v13 && v15;
  v20 = 0;
  if (v19 == 1 && v17)
  {
    [(LightingFacePoints *)v10 leftEye];
    v22 = v21;
    v24 = v23;
    [(LightingFacePoints *)v10 rightEye];
    *&v25 = sqrt((v24 - v26) * (v24 - v26) + (v22 - v25) * (v22 - v25));
    *&v22 = *&v25 * 0.4335;
    [(LightingFacePoints *)v10 leftEye];
    [(CIFilter *)v11 setValue:[CIVector vectorWithCGPoint:?], @"inputCenter"];
    LODWORD(v27) = LODWORD(v22);
    [(CIFilter *)v11 setValue:[NSNumber forKey:"numberWithFloat:" numberWithFloat:v27], @"inputRadius"];
    [(CIFilter *)v11 setValue:v8 forKey:@"inputColor0"];
    [(CIFilter *)v11 setValue:v7 forKey:@"inputColor1"];
    outputImage = [(CIFilter *)v11 outputImage];
    [(LightingFacePoints *)v10 rightEye];
    [(CIFilter *)v11 setValue:[CIVector vectorWithCGPoint:?], @"inputCenter"];
    v131 = @"inputBackgroundImage";
    outputImage2 = [(CIFilter *)v11 outputImage];
    v18 = [(CIImage *)outputImage imageByApplyingFilter:@"CIAdditionCompositing" withInputParameters:[NSDictionary dictionaryWithObjects:&outputImage2 forKeys:&v131 count:1]];
    v29 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0]];
    [(CIImage *)self->super.inputImage extent];
    v30 = [(CIImage *)v29 imageByCroppingToRect:?];
    v31 = [objc_msgSend(landmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
    v32 = *[(LightingFacePoints *)v10 leftEyeOutline];
    v33 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 4);
    v34 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 3);
    v35 = v34 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 7);
    v36 = fabsf(v35) * 1.05;
    v37 = *[(LightingFacePoints *)v10 leftEyeOutline];
    v38 = v37 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 4);
    *&v39 = atan2f(v36, v38);
    v40 = v31 - 5;
    if (v31 - 5 > 3)
    {
      v49 = v32 - v33;
      v43 = fabsf(v49);
      v48 = *&v39 + 1.57079633;
    }

    else
    {
      v41 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 1);
      v42 = v41 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 5);
      v43 = fabsf(v42);
      v44 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 2);
      v45 = v44 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 6);
      v36 = fabsf(v45) * 1.05;
      v46 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 1);
      v47 = v46 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 5);
      v48 = atan2f(v36, -v47);
    }

    v50 = __sincosf_stret(v48);
    v51 = (v43 * 0.175);
    v52 = sin(v48 + v48);
    v53 = [CIVector vectorWithX:(v50.__cosval * v50.__cosval) / ((v51 + v51) * v51) + (v50.__sinval * v50.__sinval) / ((v36 + v36) * v36) Y:(v52 / (v36 * 4.0 * v36) - v52 / (v51 * 4.0 * v51)) Z:(v50.__sinval * v50.__sinval) / ((v51 + v51) * v51) + (v50.__cosval * v50.__cosval) / ((v36 + v36) * v36) W:1.0];
    v54 = *[(LightingFacePoints *)v10 rightEyeOutline];
    v55 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 4);
    v56 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 3);
    v57 = v56 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 7);
    v58 = fabsf(v57) * 1.05;
    v59 = *[(LightingFacePoints *)v10 rightEyeOutline];
    v60 = v59 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 4);
    *&v61 = atan2f(v58, -v60);
    if (v40 > 3)
    {
      v70 = v54 - v55;
      v64 = fabsf(v70);
      v69 = *&v61 + 1.57079633;
    }

    else
    {
      v62 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 1);
      v63 = v62 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 5);
      v64 = fabsf(v63);
      v65 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 2);
      v66 = v65 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 6);
      v58 = fabsf(v66) * 1.05;
      v67 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 1);
      v68 = v67 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 5);
      v69 = atan2f(v58, v68);
    }

    v71 = __sincosf_stret(v69);
    v72 = (v64 * 0.175);
    v73 = sin(v69 + v69);
    v74 = [CIVector vectorWithX:(v71.__cosval * v71.__cosval) / ((v72 + v72) * v72) + (v71.__sinval * v71.__sinval) / ((v58 + v58) * v58) Y:(v73 / (v58 * 4.0 * v58) - v73 / (v72 * 4.0 * v72)) Z:(v71.__sinval * v71.__sinval) / ((v72 + v72) * v72) + (v71.__cosval * v71.__cosval) / ((v58 + v58) * v58) W:1.0];
    [(LightingFacePoints *)v10 leftEye];
    v76 = v75;
    [(LightingFacePoints *)v10 leftEye];
    v78 = v77;
    [(LightingFacePoints *)v10 rightEye];
    v80 = v79;
    [(LightingFacePoints *)v10 rightEye];
    v82 = [CIVector vectorWithX:v76 Y:v78 Z:v80 W:v81];
    v83 = *[(LightingFacePoints *)v10 leftEyeOutline];
    v84 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 4);
    v85 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 3);
    v86 = v85 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 7);
    v87 = fabsf(v86) * 1.45;
    v88 = *[(LightingFacePoints *)v10 leftEyeOutline];
    v89 = v88 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 4);
    *&v90 = atan2f(v87, v89);
    if (v40 > 3)
    {
      v99 = v83 - v84;
      v93 = fabsf(v99);
      v98 = *&v90 + 1.57079633;
    }

    else
    {
      v91 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 1);
      v92 = v91 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 5);
      v93 = fabsf(v92);
      v94 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 2);
      v95 = v94 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 6);
      v87 = fabsf(v95) * 1.45;
      v96 = *([(LightingFacePoints *)v10 leftEyeOutline]+ 1);
      v97 = v96 - *([(LightingFacePoints *)v10 leftEyeOutline]+ 5);
      v98 = atan2f(v87, -v97);
    }

    v100 = __sincosf_stret(v98);
    v101 = (v93 * 0.45);
    v102 = sin(v98 + v98);
    v103 = [CIVector vectorWithX:(v100.__cosval * v100.__cosval) / ((v101 + v101) * v101) + (v100.__sinval * v100.__sinval) / ((v87 + v87) * v87) Y:(v102 / (v87 * 4.0 * v87) - v102 / (v101 * 4.0 * v101)) Z:(v100.__sinval * v100.__sinval) / ((v101 + v101) * v101) + (v100.__cosval * v100.__cosval) / ((v87 + v87) * v87) W:1.0];
    v104 = *[(LightingFacePoints *)v10 rightEyeOutline];
    v105 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 4);
    v106 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 3);
    v107 = v106 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 7);
    v108 = fabsf(v107) * 1.45;
    v109 = *[(LightingFacePoints *)v10 rightEyeOutline];
    v110 = v109 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 4);
    *&v111 = atan2f(v108, -v110);
    if (v40 > 3)
    {
      v120 = v104 - v105;
      v114 = fabsf(v120);
      v119 = *&v111 + 1.57079633;
    }

    else
    {
      v112 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 1);
      v113 = v112 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 5);
      v114 = fabsf(v113);
      v115 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 2);
      v116 = v115 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 6);
      v108 = fabsf(v116) * 1.45;
      v117 = *([(LightingFacePoints *)v10 rightEyeOutline]+ 1);
      v118 = v117 - *([(LightingFacePoints *)v10 rightEyeOutline]+ 5);
      v119 = atan2f(v108, v118);
    }

    v121 = __sincosf_stret(v119);
    v122 = (v114 * 0.45);
    v123 = sin(v119 + v119);
    v124 = [CIVector vectorWithX:(v121.__cosval * v121.__cosval) / ((v122 + v122) * v122) + (v121.__sinval * v121.__sinval) / ((v108 + v108) * v108) Y:(v123 / (v108 * 4.0 * v108) - v123 / (v122 * 4.0 * v122)) Z:(v121.__sinval * v121.__sinval) / ((v122 + v122) * v122) + (v121.__cosval * v121.__cosval) / ((v108 + v108) * v108) W:1.0];
    _eyeBlurV2 = [(CIPortraitEffectLightV2 *)self _eyeBlurV2];
    [(CIImage *)self->super.inputImage extent];
    v130[0] = v30;
    v130[1] = v82;
    v130[2] = v53;
    v130[3] = v74;
    v130[4] = v103;
    v130[5] = v124;
    v20 = [_eyeBlurV2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v130, 6), v126, v127, v128, v129}];
  }

  [(CIImage *)v18 extent];
  return [v20 imageByCroppingToRect:?];
}

- (id)protectEyesNose:(id)nose withFaceMask:(id)mask withOrientation:(int)orientation
{
  if (!nose)
  {
    return 0;
  }

  v9 = *[nose leftEyeOutline];
  v10 = *([nose leftEyeOutline] + 4);
  v11 = *([nose leftEyeOutline] + 3);
  v12 = v11 - *([nose leftEyeOutline] + 7);
  v13 = fabsf(v12) * 1.3;
  v14 = *[nose leftEyeOutline];
  v15 = v14 - *([nose leftEyeOutline] + 4);
  *&v16 = atan2f(v13, v15);
  v17 = orientation - 5;
  if ((orientation - 5) > 3)
  {
    v27 = v9 - v10;
    v20 = fabsf(v27);
    v25 = *&v16 + 1.57079633;
  }

  else
  {
    v18 = *([nose leftEyeOutline] + 1);
    v19 = v18 - *([nose leftEyeOutline] + 5);
    v20 = fabsf(v19);
    v21 = *([nose leftEyeOutline] + 2);
    v22 = v21 - *([nose leftEyeOutline] + 6);
    v13 = fabsf(v22) * 1.3;
    v23 = *([nose leftEyeOutline] + 1);
    v24 = v23 - *([nose leftEyeOutline] + 5);
    v25 = atan2f(v13, -v24);
  }

  v28 = __sincosf_stret(v25);
  v29 = (v20 * 0.3);
  v30 = sin(v25 + v25);
  v31 = [CIVector vectorWithX:(v28.__sinval * v28.__sinval) / ((v13 + v13) * v13) + (v28.__cosval * v28.__cosval) / ((v29 + v29) * v29) Y:(v30 / (v13 * 4.0 * v13) - v30 / (v29 * 4.0 * v29)) Z:(v28.__cosval * v28.__cosval) / ((v13 + v13) * v13) + (v28.__sinval * v28.__sinval) / ((v29 + v29) * v29) W:1.0];
  v32 = *[nose rightEyeOutline];
  v33 = *([nose rightEyeOutline] + 4);
  v34 = *([nose rightEyeOutline] + 3);
  v35 = v34 - *([nose rightEyeOutline] + 7);
  v36 = fabsf(v35) * 1.3;
  v37 = *[nose rightEyeOutline];
  v38 = v37 - *([nose rightEyeOutline] + 4);
  *&v39 = atan2f(v36, -v38);
  if (v17 > 3)
  {
    v48 = v32 - v33;
    v42 = fabsf(v48);
    v47 = *&v39 + 1.57079633;
  }

  else
  {
    v40 = *([nose rightEyeOutline] + 1);
    v41 = v40 - *([nose rightEyeOutline] + 5);
    v42 = fabsf(v41);
    v43 = *([nose rightEyeOutline] + 2);
    v44 = v43 - *([nose rightEyeOutline] + 6);
    v36 = fabsf(v44) * 1.3;
    v45 = *([nose rightEyeOutline] + 1);
    v46 = v45 - *([nose rightEyeOutline] + 5);
    v47 = atan2f(v36, v46);
  }

  v105 = v42 * 0.3;
  v49 = __sincosf_stret(v47);
  v50 = (v49.__cosval * v49.__cosval);
  v51 = (v49.__sinval * v49.__sinval);
  v52 = sin(v47 + v47);
  v53 = [CIVector vectorWithX:v51 / ((v36 + v36) * v36) + v50 / ((v105 + v105) * v105) Y:v52 / (v36 * 4.0 * v36) - v52 / (v105 * 4.0 * v105) Z:v50 / ((v36 + v36) * v36) + v51 / ((v105 + v105) * v105) W:1.0];
  [nose leftEye];
  v55 = v54;
  [nose leftEye];
  v57 = v56;
  [nose rightEye];
  v59 = v58;
  [nose rightEye];
  v61 = [CIVector vectorWithX:v55 Y:v57 Z:v59 W:v60];
  v62 = ((v42 * 0.3) * 1.25);
  v63 = (v36 * 1.25);
  v64 = [CIVector vectorWithX:v51 / ((v63 + v63) * v63) + v50 / ((v62 + v62) * v62) Y:v52 / (v63 * 4.0 * v63) - v52 / (v62 * 4.0 * v62) Z:v50 / ((v63 + v63) * v63) + v51 / ((v62 + v62) * v62) W:1.0];
  [nose noseTip];
  v66 = v65;
  [nose noseTip];
  v67 = [CIVector vectorWithX:v66 Y:?];
  _protectEyesNose = [(CIPortraitEffectLightV2 *)self _protectEyesNose];
  [mask extent];
  v109[0] = mask;
  v109[1] = v61;
  v109[2] = v31;
  v109[3] = v53;
  v109[4] = v67;
  v109[5] = v64;
  v73 = [_protectEyesNose applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v109, 6), v69, v70, v71, v72}];
  v74 = [CIImage imageWithColor:[CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]];
  [v73 extent];
  v75 = [(CIImage *)v74 imageByCroppingToRect:?];
  [v73 extent];
  v77 = v76;
  [v73 extent];
  v79 = v78;
  [v73 extent];
  v81 = v80;
  [v73 extent];
  v83 = v81 + v82;
  [v73 extent];
  v85 = v84;
  [v73 extent];
  v87 = [CIVector vectorWithX:v77 Y:v79 Z:v83 W:v85 + v86];
  [v73 extent];
  v89 = v88;
  [v73 extent];
  v91 = v90;
  [v73 extent];
  if (v89 >= v91)
  {
    v94 = v92;
  }

  else
  {
    v94 = v93;
  }

  v95 = v94 * 0.055;
  _featherEdge = [(CIPortraitEffectLightV2 *)self _featherEdge];
  [v73 extent];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v108[0] = v75;
  v108[1] = v87;
  *&v97 = v95;
  v108[2] = [NSNumber numberWithFloat:v97];
  v106 = @"inputBackgroundImage";
  v107 = v73;
  return [objc_msgSend(_featherEdge applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v108, 3), v98, v100, v102, v104), "imageByApplyingFilter:withInputParameters:", @"CIMultiplyBlendMode", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v107, &v106, 1)}];
}

- (id)processSkinIn:(id)in withFaceMask:(id)mask
{
  [(NSNumber *)self->inputSmooth floatValue];
  v8 = v7;
  [(NSNumber *)self->inputLocalContrast floatValue];
  v10 = fabsf(v8);
  if (v10 >= 1.0e-10 || fabsf(v9) >= 1.0e-10)
  {
    v55 = v8;
    [in extent];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(NSNumber *)self->super.inputScale floatValue];
    v20 = v19;
    v21 = (v19 * 1.5);
    v22 = [objc_msgSend(in "imageByClampingToExtent")];
    v67[0] = in;
    v67[1] = v22;
    v67[2] = &off_7A1B0;
    v23 = [-[CIPortraitEffectLightV2 _textureDiff](self "_textureDiff")];
    v24 = [v22 imageByApplyingGaussianBlurWithSigma:v21 * 3.0];
    v66[0] = in;
    v66[1] = v24;
    v66[2] = &off_7A1C0;
    v25 = [-[CIPortraitEffectLightV2 _textureDiff](self "_textureDiff")];
    v26 = [v24 imageByCroppingToRect:{v12, v14, v16, v18}];
    v27 = [v23 imageByCroppingToRect:{v12, v14, v16, v18}];
    v28 = [v25 imageByCroppingToRect:{v12, v14, v16, v18}];
    if (v10 >= 1.0e-10)
    {
      CGAffineTransformMakeScale(&v56, 0.25, 0.25);
      v29 = [v26 imageByApplyingTransform:&v56];
      [mask extent];
      v31 = v30;
      [(CIImage *)self->super.inputImage extent];
      v33 = v31 / v32;
      [mask extent];
      v35 = v34;
      [(CIImage *)self->super.inputImage extent];
      v37 = v35 / v36;
      if (v33 < v37)
      {
        v37 = v33;
      }

      v38 = v37 + v37;
      v39 = v38;
      v40 = v39;
      if (v38 >= 1.0)
      {
        v41 = 1.0;
      }

      else
      {
        v41 = v40;
      }

      v42 = [objc_msgSend(v29 "imageByClampingToExtent")];
      CGAffineTransformMakeScale(&v56, 4.0, 4.0);
      v43 = [objc_msgSend(v42 imageByApplyingTransform:{&v56), "imageByCroppingToRect:", v12, v14, v16, v18}];
      _cheapEdgePreserve = [(CIPortraitEffectLightV2 *)self _cheapEdgePreserve];
      v65[0] = in;
      v65[1] = v43;
      v26 = [_cheapEdgePreserve applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v65, 2), v12, v14, v16, v18}];
    }

    v63[0] = @"inputAmount";
    v45 = [NSNumber numberWithDouble:v20 * 0.2];
    v63[1] = @"inputISO";
    v64[0] = v45;
    v64[1] = &off_7A8A8;
    v46 = [v26 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v64, v63, 2)}];
    _textureAdd = [(CIPortraitEffectLightV2 *)self _textureAdd];
    v62[0] = v46;
    v62[1] = v28;
    v62[2] = &off_79E50;
    v48 = [_textureAdd applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v62, 3), v12, v14, v16, v18}];
    _textureAdd2 = [(CIPortraitEffectLightV2 *)self _textureAdd];
    v61[0] = v48;
    v61[1] = v27;
    v61[2] = &off_7A1D0;
    v50 = [_textureAdd2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v61, 3), v12, v14, v16, v18}];
    v59[0] = kCIInputBackgroundImageKey;
    v59[1] = kCIInputMaskImageKey;
    v60[0] = in;
    v60[1] = mask;
    v51 = [v50 imageByApplyingFilter:@"CIBlendWithBlueMask" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v60, v59, 2)}];
    v52 = v51;
    *&v53 = v55;
    if (v55 >= 1.0)
    {
      return v51;
    }

    else
    {
      v57[0] = @"inputBackgroundImage";
      v57[1] = @"inputAmount";
      v58[0] = in;
      v58[1] = [NSNumber numberWithFloat:v53];
      return [v52 imageByApplyingFilter:@"CIMix" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v58, v57, 2)}];
    }
  }

  return in;
}

- (id)processTeethIn:(id)in withFaceMask:(id)mask
{
  [(NSNumber *)self->inputTeeth floatValue];
  v8 = v7;
  [in extent];
  v12 = v11;
  v14 = v13;
  if (fabsf(v8) >= 1.0e-10)
  {
    v15 = v9;
    v16 = v10;
    _whitenTeeth = [(CIPortraitEffectLightV2 *)self _whitenTeeth];
    v19[0] = in;
    v19[1] = mask;
    v19[2] = self->inputTeeth;
    return [_whitenTeeth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v19, 3), v12, v14, v15, v16}];
  }

  return in;
}

- (id)processTeethIn:(id)in withTeethMask:(id)mask
{
  [(NSNumber *)self->inputTeeth floatValue];
  v8 = v7;
  [mask extent];
  v10 = v9;
  [(CIImage *)self->super.inputImage extent];
  if (v10 != v11)
  {
    [(CIImage *)self->super.inputImage extent];
    v13 = v12;
    [mask extent];
    v15 = v14;
    v16 = v13 / v15;
    [(CIImage *)self->super.inputImage extent];
    v18 = v17;
    [mask extent];
    v20 = v19;
    CGAffineTransformMakeScale(&v34, v16, (v18 / v20));
    mask = [mask imageByApplyingTransform:&v34];
  }

  [in extent];
  v24 = v23;
  v26 = v25;
  if (fabsf(v8) >= 1.0e-10)
  {
    v27 = v21;
    v28 = v22;
    _whitenTeeth = [(CIPortraitEffectLightV2 *)self _whitenTeeth];
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    v35[0] = in;
    v35[1] = mask;
    v35[2] = self->inputTeeth;
    return [objc_msgSend(objc_msgSend(_whitenTeeth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v35, 3), CGRectInfinite.origin.x, y, width, height), "imageByCroppingToRect:", v24, v26, v27, v28), "imageByInsertingIntermediate:", 0}];
  }

  return in;
}

- (id)processEyesIn:(id)in withEyeBlur:(id)blur landmarks:(id)landmarks
{
  if (!blur)
  {
    sub_4A7B0();
  }

  [(NSNumber *)self->inputEyes floatValue];
  v10 = v9;
  [blur extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [objc_msgSend(in "imageByCroppingToRect:"_imageByRenderingToIntermediate"")];
  _eyeBrightenV2 = [(CIPortraitEffectLightV2 *)self _eyeBrightenV2];
  v38[0] = v19;
  v38[1] = blur;
  v38[2] = self->inputEyes;
  v21 = [_eyeBrightenV2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v38, 3), v12, v14, v16, v18}];
  _eyeBrightenSoftlight = [(CIPortraitEffectLightV2 *)self _eyeBrightenSoftlight];
  v37[0] = v21;
  v37[1] = blur;
  [(NSNumber *)self->inputEyes floatValue];
  v37[2] = [NSNumber numberWithDouble:v23 * 0.6];
  v24 = [_eyeBrightenSoftlight applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v37, 3), v12, v14, v16, v18}];
  v25 = [(CIPortraitEffectLightV2 *)self eyeBlurForLandmarks:landmarks];
  v35[0] = kCIInputBackgroundImageKey;
  v35[1] = kCIInputMaskImageKey;
  v36[0] = v19;
  v36[1] = v25;
  v26 = [v24 imageByApplyingFilter:@"CIBlendWithRedMask" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v36, v35, 2)}];
  v27 = v10 * 1.2;
  *&v27 = v27;
  v28 = v10 * 2.19;
  v33[0] = @"inputSharpness";
  v33[1] = @"inputRadius";
  v34[0] = [NSNumber numberWithFloat:v27];
  *&v29 = v28;
  v34[1] = [NSNumber numberWithFloat:v29];
  v31[0] = kCIInputBackgroundImageKey;
  v31[1] = kCIInputMaskImageKey;
  v32[0] = v26;
  v32[1] = v25;
  return [objc_msgSend(objc_msgSend(v26 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v34, v33, 2)), "imageByApplyingFilter:withInputParameters:", @"CIBlendWithBlueMask", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v32, v31, 2)), "imageByCompositingOverImage:", in}];
}

- (id)imageForLandmarks:(id)landmarks
{
  if (!self->super.inputImage)
  {
    return 0;
  }

  v5 = [(CIPortraitEffectLightV2 *)self eyeBlurForLandmarks:?];
  v6 = v5;
  if (v5)
  {
    [v5 extent];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  if (self->super.inputFaceMask)
  {
    v78 = height;
    v15 = [LightingFacePoints alloc];
    [(CIImage *)self->super.inputImage extent];
    v16 = [(LightingFacePoints *)v15 initWithFaceLandmarkDictionary:landmarks forImageRect:?];
    [(LightingFacePoints *)v16 faceRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [objc_msgSend(landmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
    memset(&v81, 0, sizeof(v81));
    [(CIImage *)self->super.inputFaceMask extent];
    sub_1C2E4(v25, &v81, v26, v27, v28);
    v79 = v81;
    memset(&v80, 0, sizeof(v80));
    CGAffineTransformInvert(&v80, &v79);
    v79 = v81;
    v84.origin.x = v18;
    v84.origin.y = v20;
    v84.size.width = v22;
    v84.size.height = v24;
    v85 = CGRectApplyAffineTransform(v84, &v79);
    v86 = CGRectInset(v85, 0.0, v85.size.height * -0.6);
    v29 = v86.origin.x;
    v30 = v86.origin.y;
    v31 = v86.size.width;
    v32 = v86.size.height;
    v94 = CGRectOffset(v86, 0.0, v86.size.height * -0.333);
    v87.origin.x = v29;
    v87.origin.y = v30;
    v87.size.width = v31;
    v87.size.height = v32;
    v88 = CGRectUnion(v87, v94);
    v79 = v80;
    v89 = CGRectApplyAffineTransform(v88, &v79);
    v33 = v89.origin.x;
    v34 = v89.origin.y;
    v35 = v89.size.width;
    v36 = v89.size.height;
    [(CIImage *)self->super.inputImage extent];
    v95.origin.x = v37;
    v95.origin.y = v38;
    v95.size.width = v39;
    v95.size.height = v40;
    v90.origin.x = v33;
    v90.origin.y = v34;
    v90.size.width = v35;
    v90.size.height = v36;
    v91 = CGRectIntersection(v90, v95);
    v41 = v91.origin.x;
    v42 = v91.origin.y;
    v43 = v91.size.width;
    v44 = v91.size.height;
    [(CIImage *)self->super.inputFaceMask extent];
    v46 = v45;
    [(CIImage *)self->super.inputImage extent];
    if (v46 == v47)
    {
      inputFaceMask = self->super.inputFaceMask;
    }

    else
    {
      [(CIImage *)self->super.inputImage extent];
      v49 = v48;
      [(CIImage *)self->super.inputFaceMask extent];
      v51 = v50;
      v77 = v49 / v51;
      [(CIImage *)self->super.inputImage extent];
      v52 = v44;
      v53 = v43;
      v54 = v42;
      v55 = v41;
      v56 = width;
      v57 = y;
      v58 = x;
      v60 = v59;
      [(CIImage *)self->super.inputFaceMask extent];
      v62 = v61;
      v63 = v60 / v62;
      x = v58;
      y = v57;
      width = v56;
      v41 = v55;
      v42 = v54;
      v43 = v53;
      v44 = v52;
      v64 = self->super.inputFaceMask;
      CGAffineTransformMakeScale(&v79, v77, v63);
      inputFaceMask = [(CIImage *)v64 imageByApplyingTransform:&v79];
    }

    v66 = [(CIPortraitEffectLightV2 *)self protectEyesNose:v16 withFaceMask:[(CIImage *)inputFaceMask imageByCroppingToRect:v41 withOrientation:v42, v43, v44], v25];

    height = v78;
    if (v66)
    {
      goto LABEL_13;
    }

    return 0;
  }

  v66 = [(CIPortraitEffectLightV2 *)self faceMaskForLandmarks:landmarks];
  if (!v66)
  {
    return 0;
  }

LABEL_13:
  [v66 extent];
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  v93 = CGRectUnion(v92, v96);
  v69 = v93.origin.x;
  v70 = v93.origin.y;
  v71 = v93.size.width;
  v72 = v93.size.height;
  v73 = [objc_msgSend(v66 "imageByClampingToExtent")];
  v74 = [(CIImage *)self->super.inputImage imageByCroppingToRect:v69, v70, v71, v72];
  v67 = [(CIPortraitEffectLightV2 *)self processSkinIn:v74 withFaceMask:v73];
  if (!self->super.inputFaceMask)
  {
    v67 = [(CIPortraitEffectLightV2 *)self processTeethIn:v67 withFaceMask:v73];
  }

  if (self->super.inputTeethMask)
  {
    v67 = [(CIPortraitEffectLightV2 *)self processTeethIn:v67 withTeethMask:?];
  }

  if (v67)
  {
    if (v6)
    {
      v67 = [(CIPortraitEffectLightV2 *)self processEyesIn:v67 withEyeBlur:v6 landmarks:landmarks];
    }

    [(NSNumber *)self->super.inputStrength floatValue];
    if (v75 < 1.0)
    {
      v82[0] = @"inputBackgroundImage";
      v82[1] = @"inputAmount";
      inputStrength = self->super.inputStrength;
      v83[0] = v74;
      v83[1] = inputStrength;
      return [v67 imageByApplyingFilter:@"CIMix" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v83, v82, 2)}];
    }
  }

  return v67;
}

- (id)enrichImage:(id)image
{
  [(NSNumber *)self->inputEnrich floatValue];
  if (fabsf(v5) >= 1.0e-10)
  {
    _enrichV2 = [(CIPortraitEffectLightV2 *)self _enrichV2];
    v7 = [CIVector vectorWithX:0.0799999982 Y:0.400249988 Z:0.0 W:0.548565447];
    [image extent];
    inputEnrich = self->inputEnrich;
    v14[0] = image;
    v14[1] = inputEnrich;
    v14[2] = v7;
    return [_enrichV2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v14, 3), v9, v10, v11, v12}];
  }

  return image;
}

- (id)outputImage
{
  inputImage = self->super.inputImage;
  if (!inputImage)
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->super.inputFaceLandmarkArray;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if ([v7 objectForKeyedSubscript:@"faceJunkinessIndex"])
        {
          [objc_msgSend(v7 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
          v9 = v8 < -0.2;
        }

        else
        {
          v9 = 0;
        }

        if ([v7 objectForKeyedSubscript:@"faceBoundingBox"])
        {
          [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
          v11 = v10 > 0.15;
        }

        else
        {
          v11 = 0;
        }

        if ([v7 objectForKeyedSubscript:@"roll"])
        {
          [objc_msgSend(v7 objectForKeyedSubscript:{@"roll", "floatValue"}];
          v13 = fabsf(v12) < 1.05;
        }

        else
        {
          v13 = 1;
        }

        if (v9 && v11 && v13)
        {
          v14 = [(CIPortraitEffectLightV2 *)self imageForLandmarks:v7];
          if (v14)
          {
            inputImage = [v14 imageByCompositingOverImage:inputImage];
          }
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return [(CIPortraitEffectLightV2 *)self enrichImage:inputImage];
}

@end