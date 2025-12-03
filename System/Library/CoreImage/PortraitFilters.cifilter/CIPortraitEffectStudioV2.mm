@interface CIPortraitEffectStudioV2
+ (id)customAttributes;
- (id)_applyFaceProtectStudio;
- (id)_faceVignetteStudio;
- (id)_prepareDepth;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPortraitEffectStudioV2

+ (id)customAttributes
{
  v8[0] = kCIAttributeFilterCategories;
  v7[0] = kCICategoryColorEffect;
  v7[1] = kCICategoryVideo;
  v7[2] = kCICategoryInterlaced;
  v7[3] = kCICategoryNonSquarePixels;
  v7[4] = kCICategoryStillImage;
  v7[5] = kCICategoryBuiltIn;
  v7[6] = kCICategoryApplePrivate;
  v9[0] = [NSArray arrayWithObjects:v7 count:7];
  v9[1] = @"10";
  v8[1] = kCIAttributeFilterAvailable_iOS;
  v8[2] = kCIAttributeFilterAvailable_Mac;
  v9[2] = @"10.11";
  v8[3] = @"inputKickLight";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeSliderMin;
  v6[0] = &off_7A150;
  v6[1] = &off_7A150;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_7A0F0;
  v6[3] = &off_7A110;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_7A120;
  v6[5] = kCIAttributeTypeScalar;
  v9[3] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputFaceLight";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_7A150;
  v4[1] = &off_7A150;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_7A0F0;
  v4[3] = &off_79E50;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_7A120;
  v4[5] = kCIAttributeTypeScalar;
  v9[4] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (void)setDefaults
{
  [(CIPortraitEffectLightV2 *)self setInputSmooth:&off_7A180];
  [(CIPortraitEffectLightV2 *)self setInputEnrich:&off_7A160];
  [(CIPortraitEffectLightV2 *)self setInputLocalContrast:&off_7A1A0];
  [(CIPortraitEffectStudioV2 *)self setInputKickLight:&off_7A1D0];
  [(CIPortraitEffectStudioV2 *)self setInputFaceLight:&off_79E50];
  [(CIPortraitEffectV2 *)self setInputStrength:&off_7A170];
  [(CIPortraitEffectStudioV2 *)self setInputDepthThreshold:&off_7A160];
  [(CIPortraitEffectLightV2 *)self setInputEyes:&off_79DE0];
  [(CIPortraitEffectV2 *)self setInputScale:&off_7A110];
  [(CIPortraitEffectLightV2 *)self setInputTeeth:&off_7A1B0];
  [(CIPortraitEffectV2 *)self setInputRenderProxy:&off_7A140];

  [(CIPortraitEffectV2 *)self setInputGenerateSpillMatte:&off_7A140];
}

- (id)_prepareDepth
{
  if (qword_8CC80 != -1)
  {
    sub_4A7DC();
  }

  return qword_8CC78;
}

- (id)_faceVignetteStudio
{
  if (qword_8CC90 != -1)
  {
    sub_4A7F0();
  }

  return qword_8CC88;
}

- (id)_applyFaceProtectStudio
{
  if (qword_8CCA0 != -1)
  {
    sub_4A804();
  }

  return qword_8CC98;
}

- (id)outputImage
{
  selfCopy = self;
  result = self->super.super.inputImage;
  if (!result)
  {
    return result;
  }

  [result extent];
  v218 = v5;
  v219 = v4;
  v225 = v6;
  v217 = v7;
  v237.receiver = selfCopy;
  v237.super_class = CIPortraitEffectStudioV2;
  v8 = [(CIPortraitEffectLightV2 *)&v237 getDraftMode:&off_7A8C0];
  [(NSNumber *)selfCopy->super.super.inputRenderProxy floatValue];
  v10 = v9;
  if ([v8 intValue] > 0 || v10 > 0.0)
  {
    inputImage = selfCopy->super.super.inputImage;
  }

  else
  {
    v236.receiver = selfCopy;
    v236.super_class = CIPortraitEffectStudioV2;
    inputImage = [(CIPortraitEffectLightV2 *)&v236 outputImage];
  }

  v226 = [objc_msgSend(objc_msgSend(inputImage imageByApplyingFilter:@"CISmartToneFilter" withInputParameters:{&off_7DB58), "imageByApplyingFilter:withInputParameters:", @"CIHighKey", &off_7DB80), "imageByApplyingFilter:withInputParameters:", @"CIVibrance", &off_7DBA8}];
  v12 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v13 = [CIImage imageWithColor:v12];
  [(CIImage *)selfCopy->super.super.inputImage extent];
  v228 = [(CIImage *)v13 imageByCroppingToRect:?];
  v14 = [CIImage imageWithColor:v12];
  [(CIImage *)selfCopy->super.super.inputImage extent];
  v227 = [(CIImage *)v14 imageByCroppingToRect:?];
  inputFaceLandmarkArray = selfCopy->super.super.inputFaceLandmarkArray;
  if (inputFaceLandmarkArray)
  {
    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v16 = [(NSArray *)inputFaceLandmarkArray countByEnumeratingWithState:&v232 objects:v262 count:16];
    if (v16)
    {
      v17 = v16;
      v224 = *v233;
      v215 = inputFaceLandmarkArray;
      v216 = selfCopy;
      do
      {
        v18 = 0;
        v220 = v17;
        do
        {
          if (*v233 != v224)
          {
            objc_enumerationMutation(inputFaceLandmarkArray);
          }

          v19 = *(*(&v232 + 1) + 8 * v18);
          if ([v19 objectForKeyedSubscript:@"faceJunkinessIndex"])
          {
            [objc_msgSend(v19 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
            v21 = v20 < -0.2;
          }

          else
          {
            v21 = 0;
          }

          if ([v19 objectForKeyedSubscript:@"faceBoundingBox"])
          {
            [objc_msgSend(objc_msgSend(v19 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
            v23 = v22 > 0.15;
          }

          else
          {
            v23 = 0;
          }

          if ([v19 objectForKeyedSubscript:@"roll"])
          {
            [objc_msgSend(v19 objectForKeyedSubscript:{@"roll", "floatValue"}];
            v25 = fabsf(v24) < 1.05;
          }

          else
          {
            v25 = 1;
          }

          if (v21 && v23 && v25)
          {
            v217 = [[LightingFacePoints alloc] initWithFaceLandmarkDictionary:v19 forImageRect:v219, v218, v225, v217];
            v27 = [v19 objectForKeyedSubscript:@"orientation"];
            [(LightingFacePoints *)v217 centerNose];
            v29 = v28;
            [(LightingFacePoints *)v217 centerNose];
            v31 = v30;
            [(LightingFacePoints *)v217 faceWidth];
            v33 = v32 * 0.4;
            [(LightingFacePoints *)v217 faceHeight];
            v35 = v34 * 0.3;
            v230 = v27;
            v223 = v18;
            if ([v27 intValue] == 6 || (v36 = objc_msgSend(v27, "intValue"), v37 = 0.0, v36 == 8))
            {
              v38 = v33;
              v37 = 1.5708;
            }

            else
            {
              v38 = v35;
              v35 = v33;
            }

            v229 = v37;
            v39 = v29;
            v40 = v31;
            v221 = v40;
            v222 = v39;
            v41 = __sincosf_stret(v37);
            v42 = (v41.__cosval * v41.__cosval);
            v43 = (v41.__sinval * v41.__sinval);
            v44 = sin(v229 + v229);
            v45 = [CIVector vectorWithX:v42 / ((v35 + v35) * v35) + v43 / ((v38 + v38) * v38) Y:v44 / (v38 * 4.0 * v38) - v44 / (v35 * 4.0 * v35) Z:v43 / ((v35 + v35) * v35) + v42 / ((v38 + v38) * v38) W:0.7];
            v46 = [CIVector vectorWithX:v222 Y:v221];
            _faceVignetteStudio = [(CIPortraitEffectStudioV2 *)selfCopy _faceVignetteStudio];
            [(CIImage *)selfCopy->super.super.inputImage extent];
            v261[0] = v228;
            v261[1] = v46;
            v261[2] = v45;
            v228 = [_faceVignetteStudio applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v261, 3), v48, v49, v50, v51}];
            [(LightingFacePoints *)v217 faceWidth];
            v53 = v52 / v225;
            v54 = v53;
            v55 = fmin(v53 * 1.05, 1.0);
            [(LightingFacePoints *)v217 centerNose];
            v57 = v56;
            [(LightingFacePoints *)v217 centerNose];
            v59 = v58;
            [(LightingFacePoints *)v217 faceWidth];
            v61 = v60 * 0.35;
            [(LightingFacePoints *)v217 faceHeight];
            v63 = v62 * 3.5 * v55;
            v64 = (v61 + v61) * v61;
            v65 = v63;
            v66 = (v65 + v65) * v65;
            v67 = v42 / v64 + v43 / v66;
            v68 = v43 / v64;
            v69 = LODWORD(v229);
            v70 = [CIVector vectorWithX:v67 Y:v44 / (v65 * 4.0 * v65) - v44 / (v61 * 4.0 * v61) Z:v68 + v42 / v66 W:0.7];
            v71 = [CIVector vectorWithX:v57 Y:v59];
            [(CIImage *)selfCopy->super.super.inputImage extent];
            v260[0] = v227;
            v260[1] = v71;
            v260[2] = v70;
            v227 = [_faceVignetteStudio applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v260, 3), v72, v73, v74, v75}];
            leftKickLights = [(LightingFacePoints *)v217 leftKickLights];
            v77 = [CIVector vectorWithCGPoint:*leftKickLights, leftKickLights[1]];
            leftKickLights2 = [(LightingFacePoints *)v217 leftKickLights];
            v79 = [CIVector vectorWithCGPoint:leftKickLights2[1].x, leftKickLights2[1].y];
            leftKickLights3 = [(LightingFacePoints *)v217 leftKickLights];
            v81 = [CIVector vectorWithCGPoint:leftKickLights3[2].x, leftKickLights3[2].y];
            rightKickLights = [(LightingFacePoints *)v217 rightKickLights];
            v83 = [CIVector vectorWithCGPoint:*rightKickLights, rightKickLights[1]];
            rightKickLights2 = [(LightingFacePoints *)v217 rightKickLights];
            v85 = [CIVector vectorWithCGPoint:rightKickLights2[1].x, rightKickLights2[1].y];
            v86 = selfCopy;
            rightKickLights3 = [(LightingFacePoints *)v217 rightKickLights];
            v88 = [CIVector vectorWithCGPoint:rightKickLights3[2].x, rightKickLights3[2].y];
            [(NSNumber *)v86->super.super.inputScale floatValue];
            v258[0] = @"inputImage";
            v258[1] = @"inputPt1";
            v90 = fmin(v54 + v54, 1.0) * v89;
            v259[0] = v226;
            v259[1] = v77;
            v258[2] = @"inputPt2";
            v258[3] = @"inputPt3";
            v259[2] = v79;
            v259[3] = v81;
            v258[4] = @"inputPt4";
            v258[5] = @"inputPt5";
            v259[4] = v83;
            v259[5] = v85;
            v259[6] = v88;
            v258[6] = @"inputPt6";
            v258[7] = @"inputWidth";
            v259[7] = [NSNumber numberWithDouble:v90 * 50.0];
            v259[8] = &off_7A1F0;
            v258[8] = @"inputRotate";
            v258[9] = @"inputOrientation";
            v258[10] = @"inputStrength";
            inputKickLight = v86->inputKickLight;
            v259[9] = v230;
            v259[10] = inputKickLight;
            v92 = [v226 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v259, v258, 11)}];
            [(LightingFacePoints *)v217 centerNose];
            v93 = [CIVector vectorWithCGPoint:?];
            [(LightingFacePoints *)v217 bottomShadow];
            v94 = [CIVector vectorWithCGPoint:?];
            [(LightingFacePoints *)v217 bottomShadow];
            v95 = [CIVector vectorWithCGPoint:?];
            v256[0] = @"inputImage";
            v256[1] = @"inputCenter1";
            v257[0] = v92;
            v257[1] = v93;
            v256[2] = @"inputBottom1";
            v256[3] = @"inputCenter2";
            v257[2] = v94;
            v257[3] = v95;
            v256[4] = @"inputHeight1";
            [(LightingFacePoints *)v217 faceHeight];
            v257[4] = [NSNumber numberWithDouble:v96 * 0.75];
            v256[5] = @"inputWidth1";
            [(LightingFacePoints *)v217 faceWidth];
            v257[5] = [NSNumber numberWithDouble:v97 * 0.45];
            v256[6] = @"inputHeight2";
            [(LightingFacePoints *)v217 faceHeight];
            v257[6] = [NSNumber numberWithDouble:v98 * 0.55];
            v256[7] = @"inputWidth2";
            [(LightingFacePoints *)v217 faceWidth];
            v257[7] = [NSNumber numberWithDouble:v99 * 0.55];
            v257[8] = &off_7A1F0;
            v256[8] = @"inputRotate2";
            v256[9] = @"inputContrast";
            v257[9] = &off_7A120;
            v257[10] = &off_7A110;
            v256[10] = @"inputBrighten";
            v256[11] = @"inputStrength";
            [(NSNumber *)v86->inputFaceLight floatValue];
            v257[11] = [NSNumber numberWithDouble:v100 * 0.9];
            v101 = [v92 imageByApplyingFilter:@"CIPortraitLightingFront" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v257, v256, 12)}];
            if ([v230 intValue] == 6 || objc_msgSend(v230, "intValue") == 8)
            {
              v69 = 1070141403;
            }

            [(LightingFacePoints *)v217 centerNose];
            v103 = v102;
            [(LightingFacePoints *)v217 centerNose];
            v105 = v104;
            [(LightingFacePoints *)v217 centerChin];
            v107 = v106;
            [(LightingFacePoints *)v217 centerChin];
            v109 = [CIVector vectorWithX:v103 Y:v105 Z:v107 W:v108];
            v254[0] = @"inputImage";
            v254[1] = @"inputCenter";
            v255[0] = v101;
            v255[1] = v109;
            v255[2] = &off_7A200;
            v254[2] = @"inputStrength";
            v254[3] = @"inputRotate";
            LODWORD(v110) = v69;
            v255[3] = [NSNumber numberWithFloat:v110];
            v254[4] = @"inputWidth";
            [(LightingFacePoints *)v217 faceWidth];
            v255[4] = [NSNumber numberWithDouble:v111 * 0.275];
            v254[5] = @"inputHeight";
            [(LightingFacePoints *)v217 faceHeight];
            v255[5] = [NSNumber numberWithDouble:v112 * 0.45];
            v113 = [v101 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v255, v254, 6)}];
            leftNose = [(LightingFacePoints *)v217 leftNose];
            v115 = [CIVector vectorWithCGPoint:*leftNose, leftNose[1]];
            leftNose2 = [(LightingFacePoints *)v217 leftNose];
            v117 = [CIVector vectorWithCGPoint:leftNose2[1].x, leftNose2[1].y];
            leftNose3 = [(LightingFacePoints *)v217 leftNose];
            v119 = [CIVector vectorWithCGPoint:leftNose3[2].x, leftNose3[2].y];
            rightNose = [(LightingFacePoints *)v217 rightNose];
            v121 = [CIVector vectorWithCGPoint:*rightNose, rightNose[1]];
            rightNose2 = [(LightingFacePoints *)v217 rightNose];
            v123 = [CIVector vectorWithCGPoint:rightNose2[1].x, rightNose2[1].y];
            rightNose3 = [(LightingFacePoints *)v217 rightNose];
            v125 = [CIVector vectorWithCGPoint:rightNose3[2].x, rightNose3[2].y];
            v252[0] = @"inputImage";
            v252[1] = @"inputPt1";
            v253[0] = v113;
            v253[1] = v115;
            v252[2] = @"inputPt2";
            v252[3] = @"inputPt3";
            v253[2] = v117;
            v253[3] = v119;
            v252[4] = @"inputPt4";
            v252[5] = @"inputPt5";
            v253[4] = v121;
            v253[5] = v123;
            v253[6] = v125;
            v252[6] = @"inputPt6";
            v252[7] = @"inputWidth";
            *&v126 = v90 * 40.0;
            v253[7] = [NSNumber numberWithFloat:v126];
            v253[8] = &off_7A1F0;
            v252[8] = @"inputRotate";
            v252[9] = @"inputOrientation";
            v252[10] = @"inputStrength";
            v253[9] = v230;
            v253[10] = &off_7A210;
            v127 = [v113 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v253, v252, 11)}];
            [(LightingFacePoints *)v217 centerChin];
            v129 = v128;
            [(LightingFacePoints *)v217 centerChin];
            v131 = v130;
            [(LightingFacePoints *)v217 centerChin];
            v133 = v132;
            [(LightingFacePoints *)v217 centerChin];
            v135 = [CIVector vectorWithX:v129 Y:v131 Z:v133 W:v134];
            v250[0] = @"inputImage";
            v250[1] = @"inputCenter";
            v251[0] = v127;
            v251[1] = v135;
            v251[2] = &off_7A220;
            v250[2] = @"inputStrength";
            v250[3] = @"inputRotate";
            LODWORD(v136) = v69;
            v251[3] = [NSNumber numberWithFloat:v136];
            v251[4] = &off_7A110;
            v250[4] = @"inputDarken";
            v250[5] = @"inputWidth";
            [(LightingFacePoints *)v217 faceWidth];
            v251[5] = [NSNumber numberWithDouble:v137 * 0.035];
            v250[6] = @"inputHeight";
            [(LightingFacePoints *)v217 faceWidth];
            v251[6] = [NSNumber numberWithDouble:v138 * 0.035];
            v139 = [v127 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v251, v250, 7)}];
            noseStrobe = [(LightingFacePoints *)v217 noseStrobe];
            v141 = [CIVector vectorWithCGPoint:*noseStrobe, noseStrobe[1]];
            noseStrobe2 = [(LightingFacePoints *)v217 noseStrobe];
            v143 = [CIVector vectorWithCGPoint:noseStrobe2[1].x, noseStrobe2[1].y];
            v248[0] = @"inputImage";
            v248[1] = @"inputCenter1";
            v249[0] = v139;
            v249[1] = v141;
            v249[2] = v143;
            v248[2] = @"inputCenter2";
            v248[3] = @"inputWidth";
            *&v144 = v90 * 45.0;
            v249[3] = [NSNumber numberWithFloat:v144];
            v249[4] = &off_7A1F0;
            v248[4] = @"inputRotate";
            v248[5] = @"inputOrientation";
            v249[5] = v230;
            v248[6] = @"inputStrength";
            [(NSNumber *)[(CIPortraitEffectV2 *)v216 inputStrength] floatValue];
            v249[6] = [NSNumber numberWithDouble:v145 * 1.2];
            v146 = [v139 imageByApplyingFilter:@"CIPortraitLightingStrobeV2" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v249, v248, 7)}];
            [(LightingFacePoints *)v217 centerNose];
            v148 = v147;
            [(LightingFacePoints *)v217 centerNose];
            v150 = v149;
            [(LightingFacePoints *)v217 centerChin];
            v152 = v151;
            [(LightingFacePoints *)v217 centerChin];
            v154 = [CIVector vectorWithX:v148 Y:v150 Z:v152 W:v153];
            [(LightingFacePoints *)v217 leftEye];
            v156 = v155;
            [(LightingFacePoints *)v217 leftEye];
            v158 = v157;
            [(LightingFacePoints *)v217 rightEye];
            v160 = v159;
            [(LightingFacePoints *)v217 rightEye];
            v162 = [CIVector vectorWithX:v156 Y:v158 Z:v160 W:v161];
            v246[0] = @"inputImage";
            v246[1] = @"inputCenter";
            v247[0] = v146;
            v247[1] = v154;
            v246[2] = @"inputEyes";
            v246[3] = @"inputStrength";
            v247[2] = v162;
            v247[3] = &off_79D40;
            v246[4] = @"inputRotate";
            selfCopy = v216;
            LODWORD(v163) = v69;
            v247[4] = [NSNumber numberWithFloat:v163];
            v246[5] = @"inputScale";
            *&v164 = v90;
            v247[5] = [NSNumber numberWithFloat:v164];
            v246[6] = @"inputWidth";
            [(LightingFacePoints *)v217 faceWidth];
            v247[6] = [NSNumber numberWithDouble:v165 * 0.4];
            v246[7] = @"inputHeight";
            [(LightingFacePoints *)v217 faceHeight];
            v247[7] = [NSNumber numberWithDouble:v166 * 0.35];
            v226 = [v146 imageByApplyingFilter:@"CIPortraitLightingStudio" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v247, v246, 8)}];

            inputFaceLandmarkArray = v215;
            v17 = v220;
            v18 = v223;
          }

          v18 = v18 + 1;
        }

        while (v17 != v18);
        v17 = [(NSArray *)inputFaceLandmarkArray countByEnumeratingWithState:&v232 objects:v262 count:16];
      }

      while (v17);
    }
  }

  _applyFaceProtectStudio = [(CIPortraitEffectStudioV2 *)selfCopy _applyFaceProtectStudio];
  v168 = [objc_msgSend(objc_msgSend(v226 imageByApplyingFilter:@"CIHighKey" withInputParameters:{&off_7DBD0), "imageByApplyingFilter:withInputParameters:", @"CIExposureAdjust", &off_7DBF8), "imageByApplyingFilter:withInputParameters:", @"CISmartToneFilter", &off_7DC20}];
  [(CIImage *)selfCopy->super.super.inputImage extent];
  v245[0] = v226;
  v245[1] = v168;
  v245[2] = v228;
  v245[3] = v227;
  v173 = [objc_msgSend(_applyFaceProtectStudio applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v245, 4), v169, v170, v171, v172), "imageByApplyingFilter:withInputParameters:", @"CIVibrance", &off_7DC48}];
  inputMatte = selfCopy->super.super.inputMatte;
  if (inputMatte)
  {
    [(CIImage *)selfCopy->super.super.inputMatte extent];
    v176 = v175;
    [(CIImage *)selfCopy->super.super.inputImage extent];
    if (v176 != v177)
    {
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v179 = v178;
      [(CIImage *)selfCopy->super.super.inputMatte extent];
      v181 = v180;
      v182 = v179 / v181;
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v184 = v183;
      [(CIImage *)selfCopy->super.super.inputMatte extent];
      v186 = v185;
      CGAffineTransformMakeScale(&v231, v182, (v184 / v186));
      inputMatte = [(CIImage *)inputMatte imageByApplyingTransform:&v231];
    }

    v187 = selfCopy->super.super.inputImage;
    v243[0] = @"inputBackgroundImage";
    v243[1] = @"inputMaskImage";
    v244[0] = v187;
    v244[1] = inputMatte;
    v188 = [NSDictionary dictionaryWithObjects:v244 forKeys:v243 count:2];
    v189 = v173;
  }

  else
  {
    inputBlurMap = selfCopy->super.super.inputBlurMap;
    if (!inputBlurMap)
    {
      goto LABEL_42;
    }

    [(CIImage *)selfCopy->super.super.inputBlurMap extent];
    v192 = v191;
    [(CIImage *)selfCopy->super.super.inputImage extent];
    if (v192 != v193)
    {
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v195 = v194;
      [(CIImage *)selfCopy->super.super.inputBlurMap extent];
      v197 = v196;
      v198 = v195 / v197;
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v200 = v199;
      [(CIImage *)selfCopy->super.super.inputBlurMap extent];
      v202 = v201;
      CGAffineTransformMakeScale(&v231, v198, (v200 / v202));
      inputBlurMap = [(CIImage *)inputBlurMap imageByApplyingTransform:&v231];
    }

    _prepareDepth = [(CIPortraitEffectStudioV2 *)selfCopy _prepareDepth];
    [(CIImage *)selfCopy->super.super.inputImage extent];
    inputDepthThreshold = selfCopy->inputDepthThreshold;
    v242[0] = inputBlurMap;
    v242[1] = inputDepthThreshold;
    v209 = [_prepareDepth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v242, 2), v205, v206, v207, v208}];
    v210 = selfCopy->super.super.inputImage;
    v240[0] = @"inputBackgroundImage";
    v240[1] = @"inputMaskImage";
    v241[0] = v173;
    v241[1] = v209;
    v188 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:2];
    v189 = v210;
  }

  v173 = [(CIImage *)v189 imageByApplyingFilter:@"CIBlendWithMask" withInputParameters:v188];
LABEL_42:
  [(NSNumber *)selfCopy->super.super.inputStrength floatValue];
  if (v211 < 1.0)
  {
    [(NSNumber *)selfCopy->super.super.inputStrength floatValue];
    *&v213 = powf(v212, 0.75);
    v214 = selfCopy->super.super.inputImage;
    v238[0] = @"inputBackgroundImage";
    v238[1] = @"inputAmount";
    v239[0] = v214;
    v239[1] = [NSNumber numberWithFloat:v213];
    v173 = [(CIImage *)v173 imageByApplyingFilter:@"CIMix" withInputParameters:[NSDictionary dictionaryWithObjects:v239 forKeys:v238 count:2]];
  }

  return [(CIImage *)v173 _imageByRenderingToIntermediate];
}

@end