@interface CIPortraitEffectCommercial
+ (id)customAttributes;
- (id)_mixKernel;
- (id)_prepareDepth;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPortraitEffectCommercial

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
  v6[0] = &off_7A510;
  v6[1] = &off_7A510;
  v5[2] = kCIAttributeSliderMax;
  v5[3] = kCIAttributeDefault;
  v6[2] = &off_7A520;
  v6[3] = &off_7A580;
  v5[4] = kCIAttributeIdentity;
  v5[5] = kCIAttributeType;
  v6[4] = &off_7A540;
  v6[5] = kCIAttributeTypeScalar;
  v9[3] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputFaceLight";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeSliderMin;
  v4[0] = &off_7A510;
  v4[1] = &off_7A510;
  v3[2] = kCIAttributeSliderMax;
  v3[3] = kCIAttributeDefault;
  v4[2] = &off_7A520;
  v4[3] = &off_7A5B0;
  v3[4] = kCIAttributeIdentity;
  v3[5] = kCIAttributeType;
  v4[4] = &off_7A540;
  v4[5] = kCIAttributeTypeScalar;
  v9[4] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (void)setDefaults
{
  [(CIPortraitEffect *)self setInputSmooth:&off_7A530];
  [(CIPortraitEffect *)self setInputEnrich:&off_7A5C0];
  [(CIPortraitEffect *)self setInputLocalContrast:&off_7A5D0];
  [(CIPortraitEffectCommercial *)self setInputKickLight:&off_7A520];
  [(CIPortraitEffectCommercial *)self setInputFaceLight:&off_7A5B0];
  [(CIPortraitEffect *)self setInputStrength:&off_7A570];
  [(CIPortraitEffectCommercial *)self setInputDepthThreshold:&off_7A550];
  [(CIPortraitEffect *)self setInputEyes:&off_7A5E0];

  [(CIPortraitEffect *)self setInputScale:&off_7A580];
}

- (id)_prepareDepth
{
  if (qword_8CFD8 != -1)
  {
    sub_4B510();
  }

  return qword_8CFD0;
}

- (id)_mixKernel
{
  if (qword_8CFE8 != -1)
  {
    sub_4B524();
  }

  return qword_8CFE0;
}

- (id)outputImage
{
  result = self->super.inputImage;
  if (result)
  {
    [result extent];
    v118 = v4;
    v119 = v3;
    v116 = v6;
    v117 = v5;
    v7 = [[(CIImage *)self->super.inputImage imageByApplyingFilter:@"CISmartToneFilter" withInputParameters:&off_7DE00] imageByApplyingFilter:@"CIVibrance" withInputParameters:&off_7DE28];
    inputFaceLandmarkArray = self->super.inputFaceLandmarkArray;
    inputImage = self->super.inputImage;
    if (inputFaceLandmarkArray)
    {
      v149[0] = @"inputImage";
      v149[1] = @"inputSmooth";
      inputSmooth = self->super.inputSmooth;
      v150[0] = v7;
      v150[1] = inputSmooth;
      inputEnrich = self->super.inputEnrich;
      v149[2] = @"inputEnrich";
      v149[3] = @"inputLocalContrast";
      inputLocalContrast = self->super.inputLocalContrast;
      v150[2] = inputEnrich;
      v150[3] = inputLocalContrast;
      v149[4] = @"inputFaceLandmarkArray";
      v149[5] = @"inputEyes";
      inputEyes = self->super.inputEyes;
      v150[4] = inputFaceLandmarkArray;
      v150[5] = inputEyes;
      v149[6] = @"inputScale";
      v150[6] = self->super.inputScale;
      v14 = v150;
      v15 = v149;
      v16 = 7;
    }

    else
    {
      v147[0] = @"inputImage";
      v147[1] = @"inputSmooth";
      v17 = self->super.inputSmooth;
      v148[0] = v7;
      v148[1] = v17;
      v18 = self->super.inputEnrich;
      v147[2] = @"inputEnrich";
      v147[3] = @"inputLocalContrast";
      v19 = self->super.inputLocalContrast;
      v148[2] = v18;
      v148[3] = v19;
      v147[4] = @"inputScale";
      v148[4] = self->super.inputScale;
      v14 = v148;
      v15 = v147;
      v16 = 5;
    }

    v20 = [(CIImage *)inputImage imageByApplyingFilter:@"CIPortraitEffectLight" withInputParameters:[NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16]];
    v21 = self->super.inputFaceLandmarkArray;
    if (v21)
    {
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v22 = [(NSArray *)v21 countByEnumeratingWithState:&v128 objects:v146 count:16];
      if (v22)
      {
        v23 = v22;
        v124 = *v129;
        v115 = v21;
        do
        {
          v24 = 0;
          v120 = v23;
          do
          {
            if (*v129 != v124)
            {
              objc_enumerationMutation(v21);
            }

            v25 = *(*(&v128 + 1) + 8 * v24);
            if ([v25 objectForKeyedSubscript:@"faceJunkinessIndex"])
            {
              [objc_msgSend(v25 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
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
              v32 = [[LightingFacePoints alloc] initWithFaceLandmarkDictionary:v25 forImageRect:v119, v118, v117, v116];
              v33 = [(LightingFacePoints *)v32 leftKickLights];
              v123 = [CIVector vectorWithCGPoint:*v33, v33[1]];
              v34 = [(LightingFacePoints *)v32 leftKickLights];
              v122 = [CIVector vectorWithCGPoint:v34[1].x, v34[1].y];
              v35 = [(LightingFacePoints *)v32 leftKickLights];
              v121 = [CIVector vectorWithCGPoint:v35[2].x, v35[2].y];
              v36 = [(LightingFacePoints *)v32 rightKickLights];
              v37 = [CIVector vectorWithCGPoint:*v36, v36[1]];
              v38 = v20;
              v39 = [(LightingFacePoints *)v32 rightKickLights];
              v40 = [CIVector vectorWithCGPoint:v39[1].x, v39[1].y];
              v41 = [(LightingFacePoints *)v32 rightKickLights];
              v42 = [CIVector vectorWithCGPoint:v41[2].x, v41[2].y];
              v126 = [v25 objectForKeyedSubscript:@"orientation"];
              [(LightingFacePoints *)v32 faceWidth];
              v44 = v43 / v117;
              [(NSNumber *)self->super.inputScale floatValue];
              v144[0] = @"inputImage";
              v144[1] = @"inputPt1";
              v46 = fmin(v44 + v44, 1.0) * v45;
              v145[0] = v38;
              v145[1] = v123;
              v144[2] = @"inputPt2";
              v144[3] = @"inputPt3";
              v145[2] = v122;
              v145[3] = v121;
              v144[4] = @"inputPt4";
              v144[5] = @"inputPt5";
              v145[4] = v37;
              v145[5] = v40;
              v145[6] = v42;
              v144[6] = @"inputPt6";
              v144[7] = @"inputWidth";
              v145[7] = [NSNumber numberWithDouble:v46 * 50.0];
              v145[8] = &off_7A610;
              v144[8] = @"inputRotate";
              v144[9] = @"inputOrientation";
              v144[10] = @"inputStrength";
              inputKickLight = self->inputKickLight;
              v145[9] = v126;
              v145[10] = inputKickLight;
              v48 = [(CIImage *)v38 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:[NSDictionary dictionaryWithObjects:v145 forKeys:v144 count:11]];
              [(LightingFacePoints *)v32 centerNose];
              v49 = [CIVector vectorWithCGPoint:?];
              [(LightingFacePoints *)v32 bottomShadow];
              v50 = [CIVector vectorWithCGPoint:?];
              [(LightingFacePoints *)v32 bottomShadow];
              v51 = [CIVector vectorWithCGPoint:?];
              v142[0] = @"inputImage";
              v142[1] = @"inputCenter1";
              v143[0] = v48;
              v143[1] = v49;
              v142[2] = @"inputBottom1";
              v142[3] = @"inputCenter2";
              v143[2] = v50;
              v143[3] = v51;
              v142[4] = @"inputHeight1";
              [(LightingFacePoints *)v32 faceHeight];
              v143[4] = [NSNumber numberWithDouble:v52 * 0.75];
              v142[5] = @"inputWidth1";
              [(LightingFacePoints *)v32 faceWidth];
              v143[5] = [NSNumber numberWithDouble:v53 * 0.45];
              v142[6] = @"inputHeight2";
              [(LightingFacePoints *)v32 faceHeight];
              v143[6] = [NSNumber numberWithDouble:v54 * 0.55];
              v142[7] = @"inputWidth2";
              [(LightingFacePoints *)v32 faceWidth];
              v143[7] = [NSNumber numberWithDouble:v55 * 0.55];
              v143[8] = &off_7A610;
              v142[8] = @"inputRotate2";
              v142[9] = @"inputContrast";
              v143[9] = &off_7A540;
              v143[10] = &off_7A580;
              v142[10] = @"inputBrighten";
              v142[11] = @"inputStrength";
              v143[11] = self->inputFaceLight;
              v56 = [(CIImage *)v48 imageByApplyingFilter:@"CIPortraitLightingFront" withInputParameters:[NSDictionary dictionaryWithObjects:v143 forKeys:v142 count:12]];
              if ([v126 intValue] == 6 || (v57 = 0, objc_msgSend(v126, "intValue") == 8))
              {
                v57 = 1070141403;
              }

              [(LightingFacePoints *)v32 centerNose];
              v59 = v58;
              [(LightingFacePoints *)v32 centerNose];
              v61 = v60;
              [(LightingFacePoints *)v32 centerChin];
              v63 = v62;
              [(LightingFacePoints *)v32 centerChin];
              v65 = [CIVector vectorWithX:v59 Y:v61 Z:v63 W:v64];
              v140[0] = @"inputImage";
              v140[1] = @"inputCenter";
              v141[0] = v56;
              v141[1] = v65;
              v141[2] = &off_7A620;
              v140[2] = @"inputStrength";
              v140[3] = @"inputRotate";
              LODWORD(v66) = v57;
              v141[3] = [NSNumber numberWithFloat:v66];
              v140[4] = @"inputWidth";
              [(LightingFacePoints *)v32 faceWidth];
              v141[4] = [NSNumber numberWithDouble:v67 * 0.275];
              v140[5] = @"inputHeight";
              [(LightingFacePoints *)v32 faceHeight];
              v141[5] = [NSNumber numberWithDouble:v68 * 0.45];
              v69 = [(CIImage *)v56 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:[NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:6]];
              [(LightingFacePoints *)v32 centerChin];
              v71 = v70;
              [(LightingFacePoints *)v32 centerChin];
              v73 = v72;
              [(LightingFacePoints *)v32 centerChin];
              v75 = v74;
              [(LightingFacePoints *)v32 centerChin];
              v77 = [CIVector vectorWithX:v71 Y:v73 Z:v75 W:v76];
              v138[0] = @"inputImage";
              v138[1] = @"inputCenter";
              v139[0] = v69;
              v139[1] = v77;
              v139[2] = &off_7A630;
              v138[2] = @"inputStrength";
              v138[3] = @"inputRotate";
              LODWORD(v78) = v57;
              v139[3] = [NSNumber numberWithFloat:v78];
              v139[4] = &off_7A580;
              v138[4] = @"inputDarken";
              v138[5] = @"inputWidth";
              [(LightingFacePoints *)v32 faceWidth];
              v139[5] = [NSNumber numberWithDouble:v79 * 0.035];
              v138[6] = @"inputHeight";
              [(LightingFacePoints *)v32 faceWidth];
              v139[6] = [NSNumber numberWithDouble:v80 * 0.035];
              v81 = [(CIImage *)v69 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:[NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:7]];
              v82 = [(LightingFacePoints *)v32 noseStrobe];
              v83 = [CIVector vectorWithCGPoint:*v82, v82[1]];
              v84 = [(LightingFacePoints *)v32 noseStrobe];
              v85 = [CIVector vectorWithCGPoint:v84[1].x, v84[1].y];
              v136[0] = @"inputImage";
              v136[1] = @"inputCenter1";
              v137[0] = v81;
              v137[1] = v83;
              v137[2] = v85;
              v136[2] = @"inputCenter2";
              v136[3] = @"inputWidth";
              *&v86 = v46 * 45.0;
              v137[3] = [NSNumber numberWithFloat:v86];
              v137[4] = &off_7A610;
              v136[4] = @"inputRotate";
              v136[5] = @"inputOrientation";
              v137[5] = v126;
              v136[6] = @"inputStrength";
              [(NSNumber *)[(CIPortraitEffect *)self inputStrength] floatValue];
              v137[6] = [NSNumber numberWithDouble:v87 * 1.2];
              v20 = [(CIImage *)v81 imageByApplyingFilter:@"CIPortraitLightingStrobe" withInputParameters:[NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:7]];

              v21 = v115;
              v23 = v120;
            }

            v24 = v24 + 1;
          }

          while (v23 != v24);
          v23 = [(NSArray *)v21 countByEnumeratingWithState:&v128 objects:v146 count:16];
        }

        while (v23);
      }
    }

    inputDepthMap = self->inputDepthMap;
    if (inputDepthMap)
    {
      [(CIImage *)self->inputDepthMap extent];
      v90 = v89;
      [(CIImage *)self->super.inputImage extent];
      if (v90 != v91)
      {
        [(CIImage *)self->super.inputImage extent];
        v93 = v92;
        [(CIImage *)self->inputDepthMap extent];
        v95 = v94;
        v96 = v93 / v95;
        [(CIImage *)self->super.inputImage extent];
        v98 = v97;
        [(CIImage *)self->inputDepthMap extent];
        v100 = v99;
        CGAffineTransformMakeScale(&v127, v96, (v98 / v100));
        inputDepthMap = [(CIImage *)inputDepthMap imageByApplyingTransform:&v127];
      }

      v101 = [(CIPortraitEffectCommercial *)self _prepareDepth];
      [(CIImage *)self->super.inputImage extent];
      inputDepthThreshold = self->inputDepthThreshold;
      v135[0] = inputDepthMap;
      v135[1] = inputDepthThreshold;
      v107 = [v101 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v135, 2), v103, v104, v105, v106}];
      v108 = self->super.inputImage;
      v133[0] = @"inputBackgroundImage";
      v133[1] = @"inputMaskImage";
      v134[0] = v20;
      v134[1] = v107;
      v20 = [(CIImage *)v108 imageByApplyingFilter:@"CIBlendWithMask" withInputParameters:[NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2]];
    }

    [(NSNumber *)self->super.inputStrength floatValue];
    if (v109 < 1.0)
    {
      v110 = [(CIPortraitEffectCommercial *)self _mixKernel];
      [(CIImage *)self->super.inputImage extent];
      v132[0] = self->super.inputImage;
      v132[1] = v20;
      v132[2] = self->super.inputStrength;
      v20 = [v110 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v132, 3), v111, v112, v113, v114}];
    }

    return [(CIImage *)v20 _imageByRenderingToIntermediate];
  }

  return result;
}

@end