@interface CIDynamicFood
+ (id)customAttributes;
- (id)_applyVignette;
- (id)_foodVignette;
- (id)outputImage;
@end

@implementation CIDynamicFood

+ (id)customAttributes
{
  v30[0] = kCIAttributeFilterCategories;
  v29[0] = kCICategoryColorAdjustment;
  v29[1] = kCICategoryVideo;
  v29[2] = kCICategoryStillImage;
  v29[3] = kCICategoryApplePrivate;
  v31[0] = [NSArray arrayWithObjects:v29 count:4];
  v30[1] = @"inputStrength";
  v27[0] = kCIAttributeDefault;
  v27[1] = kCIAttributeMax;
  v28[0] = &off_7A310;
  v28[1] = &off_7A320;
  v27[2] = kCIAttributeMin;
  v27[3] = kCIAttributeType;
  v28[2] = &off_7A340;
  v28[3] = kCIAttributeTypeScalar;
  v31[1] = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[2] = @"inputUnionBox";
  v25[0] = kCIAttributeDefault;
  v25[1] = kCIAttributeMax;
  v26[0] = &off_7A340;
  v26[1] = &off_7A350;
  v25[2] = kCIAttributeMin;
  v25[3] = kCIAttributeType;
  v26[2] = &off_7A340;
  v26[3] = kCIAttributeTypeScalar;
  v31[2] = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
  v30[3] = @"inputVignetteStrength";
  v23[0] = kCIAttributeDefault;
  v23[1] = kCIAttributeMax;
  v24[0] = &off_7A420;
  v24[1] = &off_7A350;
  v23[2] = kCIAttributeMin;
  v23[3] = kCIAttributeType;
  v24[2] = &off_7A340;
  v24[3] = kCIAttributeTypeScalar;
  v31[3] = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  v30[4] = @"inputShadows";
  v21[0] = kCIAttributeDefault;
  v21[1] = kCIAttributeMax;
  v22[0] = &off_7A430;
  v22[1] = &off_7A350;
  v21[2] = kCIAttributeMin;
  v21[3] = kCIAttributeType;
  v22[2] = &off_7A340;
  v22[3] = kCIAttributeTypeScalar;
  v31[4] = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v30[5] = @"inputBrightness";
  v19[0] = kCIAttributeDefault;
  v19[1] = kCIAttributeMax;
  v20[0] = &off_7A440;
  v20[1] = &off_7A350;
  v19[2] = kCIAttributeMin;
  v19[3] = kCIAttributeType;
  v20[2] = &off_7A330;
  v20[3] = kCIAttributeTypeScalar;
  v31[5] = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v30[6] = @"inputHighlights";
  v17[0] = kCIAttributeDefault;
  v17[1] = kCIAttributeMax;
  v18[0] = &off_7A450;
  v18[1] = &off_7A350;
  v17[2] = kCIAttributeMin;
  v17[3] = kCIAttributeType;
  v18[2] = &off_7A330;
  v18[3] = kCIAttributeTypeScalar;
  v31[6] = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  v30[7] = @"inputWhiteBalance";
  v15[0] = kCIAttributeDefault;
  v15[1] = kCIAttributeMax;
  v16[0] = &off_7A460;
  v16[1] = &off_7A350;
  v15[2] = kCIAttributeMin;
  v15[3] = kCIAttributeType;
  v16[2] = &off_7A340;
  v16[3] = kCIAttributeTypeScalar;
  v31[7] = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v30[8] = @"inputSaturation";
  v13[0] = kCIAttributeDefault;
  v13[1] = kCIAttributeMax;
  v14[0] = &off_7A470;
  v14[1] = &off_7A320;
  v13[2] = kCIAttributeMin;
  v13[3] = kCIAttributeType;
  v14[2] = &off_7A340;
  v14[3] = kCIAttributeTypeScalar;
  v31[8] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v30[9] = @"inputBrightSat";
  v11[0] = kCIAttributeDefault;
  v11[1] = kCIAttributeMax;
  v12[0] = &off_7A3C0;
  v12[1] = &off_7A320;
  v11[2] = kCIAttributeMin;
  v11[3] = kCIAttributeType;
  v12[2] = &off_7A340;
  v12[3] = kCIAttributeTypeScalar;
  v31[9] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v30[10] = @"inputConfidence";
  v9[0] = kCIAttributeDefault;
  v9[1] = kCIAttributeMax;
  v10[0] = &off_7A350;
  v10[1] = &off_7A350;
  v9[2] = kCIAttributeMin;
  v9[3] = kCIAttributeType;
  v10[2] = &off_7A340;
  v10[3] = kCIAttributeTypeScalar;
  v31[10] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v30[11] = @"inputLowConfidence";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeMax;
  v8[0] = &off_7A3E0;
  v8[1] = &off_7A350;
  v7[2] = kCIAttributeMin;
  v7[3] = kCIAttributeType;
  v8[2] = &off_7A340;
  v8[3] = kCIAttributeTypeScalar;
  v31[11] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v30[12] = @"inputHighConfidence";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeMax;
  v6[0] = &off_7A3F0;
  v6[1] = &off_7A350;
  v5[2] = kCIAttributeMin;
  v5[3] = kCIAttributeType;
  v6[2] = &off_7A340;
  v6[3] = kCIAttributeTypeScalar;
  v31[12] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v30[13] = @"inputMaxFaceSize";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeMax;
  v4[0] = &off_7A400;
  v4[1] = &off_7A350;
  v3[2] = kCIAttributeMin;
  v3[3] = kCIAttributeType;
  v4[2] = &off_7A340;
  v4[3] = kCIAttributeTypeScalar;
  v31[13] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:14];
}

- (id)_foodVignette
{
  if (qword_8CF20 != -1)
  {
    sub_4B3F4();
  }

  return qword_8CF18;
}

- (id)_applyVignette
{
  if (qword_8CF30 != -1)
  {
    sub_4B408();
  }

  return qword_8CF28;
}

- (id)outputImage
{
  inputImage = self->super.inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  v5 = v4;
  [(CIImage *)self->super.inputImage extent];
  if (v5 >= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = 1024.0 / v7;
  v9 = self->super.inputImage;
  CGAffineTransformMakeScale(&v224, v8, v8);
  v10 = [(CIImage *)v9 imageByApplyingTransform:&v224 highQualityDownsample:1];
  v11 = self->super.inputImage;
  memset(&v224, 0, 40);
  p_info = &@"kernel vec4 _pf_eyeBrightenSoftlight (__sample uCb, __sample m, float str) \n { \n float g = .75*(1.0-dot(uCb.rgb, vec3(.333333))); \n vec4 uCf = vec4(g, g, g, 1.0); \n vec4 D = compare(uCb-0.25, ((16.0*uCb-12.0)*uCb+4.0)*uCb, sqrt(uCb)); \n vec4 Ct = clamp(uCb + (2.0*uCf-1.0) * compare(uCf - 0.5, uCb*(1.0-uCb), D-uCb), 0.0, 1.0); \n vec4 bright = Ct; \n uCf.rgb = mix(uCb.rgb, bright.rgb, m.r); \n uCf.rgb = mix(uCb.rgb, uCf.rgb, str); \n return uCf; \n }".info;
  v223.receiver = self;
  v223.super_class = CIDynamicFood;
  [(CIDynamicRender *)&v223 calcColorStats:v10];
  v13 = self->super.inputImage;
  v222.receiver = self;
  v222.super_class = CIDynamicFood;
  v14 = [(CIDynamicRender *)&v222 sceneLuminance:v13];
  v15 = self->super.inputImage;
  v221.receiver = self;
  v221.super_class = CIDynamicFood;
  v16 = [(CIDynamicRender *)&v221 captureType:v15];
  [(NSNumber *)self->super.inputSaturation floatValue];
  v18 = v17;
  [(NSNumber *)self->super.inputWhiteBalance floatValue];
  v20 = v19;
  [v14 floatValue];
  v21 = &NSIntegralRectWithOptions_ptr;
  v22 = &NSIntegralRectWithOptions_ptr;
  if (v23 >= 150.0)
  {
    v44 = 1.0;
  }

  else
  {
    [v14 floatValue];
    if (v24 >= 100.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 100.0;
    }

    localLightStatisticsNoProxy = [(CIImage *)v10 localLightStatisticsNoProxy];
    v27 = dbl_55540[[v16 intValue] == 11];
    v28 = v18;
    v243[0] = @"inputLightMap";
    v29 = [localLightStatisticsNoProxy objectForKeyedSubscript:@"lightMap"];
    v243[1] = @"inputGuideImage";
    v244[0] = v29;
    v244[1] = v11;
    v30 = [+[CIFilter filterWithName:withInputParameters:](CIFilter outputImage:@"CIDynamicLocalLightMapPrepare"];
    [(NSNumber *)self->super.inputShadows floatValue];
    v32 = v31;
    [v14 floatValue];
    v34 = (v32 * vabds_f32(150.0, v33));
    if (v34 >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0.0;
    }

    [(NSNumber *)self->super.inputShadows floatValue];
    if (v35 >= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v35;
    }

    [v14 floatValue];
    if (v38 < 20.0 && [v16 intValue] != 11)
    {
      [v14 floatValue];
      v40 = vabds_f32(20.0, v39) * 0.0275 + 1.0;
      v37 = v37 * v40;
    }

    v41 = vabds_f32(150.0, v25);
    v42 = v27 + v28;
    [v14 floatValue];
    v44 = 1.0;
    if (*&v43 >= 25.0)
    {
      v22 = &NSIntegralRectWithOptions_ptr;
    }

    else
    {
      v22 = &NSIntegralRectWithOptions_ptr;
      if ([v16 intValue] == 11)
      {
        [v14 floatValue];
        v43 = v45 * 0.016 + 0.6;
        v44 = v43;
      }
    }

    v20 = v20 + (v41 * 0.004);
    v18 = v42;
    v241[0] = @"inputSmartShadows";
    *&v43 = v37;
    v47 = [v22[176] numberWithFloat:v43];
    v241[1] = @"inputLightMapImage";
    v242[0] = v47;
    v242[1] = v30;
    v11 = [(CIImage *)v11 imageByApplyingFilter:@"CILLFilter" withInputParameters:[NSDictionary dictionaryWithObjects:v242 forKeys:v241 count:2]];
  }

  v48 = v20;
  if (v224.d > 0.0 && v48 >= 0.95)
  {
    v49 = [CIVector vectorWithX:7000.0 Y:0.0];
    v239 = @"inputTargetNeutral";
    v240 = v49;
    v11 = [(CIImage *)v11 imageByApplyingFilter:@"CITemperatureAndTint" withInputParameters:[NSDictionary dictionaryWithObjects:&v240 forKeys:&v239 count:1]];
  }

  v50 = v224.c * -0.4;
  v51 = __sincos_stret(v224.a);
  v52 = v50 * v51.__cosval * v48;
  v53 = v50 * v51.__sinval;
  if (v50 * v51.__sinval < -0.05)
  {
    v53 = -0.05;
  }

  v54 = v53 * v48;
  [(NSNumber *)self->super.inputBrightness floatValue];
  v56 = [(CIImage *)v11 _imageByApplyingGamma:v55];
  v238[0] = self->super.inputBrightSat;
  v237[0] = @"inputStrength";
  v237[1] = @"inputSat";
  *&v57 = v18;
  v238[1] = [v22[176] numberWithFloat:v57];
  v237[2] = @"inputPShift";
  *&v58 = v52;
  v238[2] = [v22[176] numberWithFloat:v58];
  v237[3] = @"inputTShift";
  *&v59 = v54;
  v238[3] = [v22[176] numberWithFloat:v59];
  v60 = [v56 imageByApplyingFilter:@"CIBrightenFood" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v238, v237, 4)}];
  v235 = @"inputHighlights";
  inputHighlights = self->super.inputHighlights;
  v46 = [v60 imageByApplyingFilter:@"CISmartToneFilter" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &inputHighlights, &v235, 1)}];
  d = v224.d;
  if (v224.d > 0.0)
  {
    d = 0.95;
    if (v48 > 0.95)
    {
      v62 = [CIImage imageWithColor:[CIColor colorWithRed:0.63 green:0.576 blue:0.94 alpha:0.1]];
      [(CIImage *)self->super.inputImage extent];
      v63 = [(CIImage *)v62 imageByCroppingToRect:?];
      v233 = @"inputBackgroundImage";
      v234 = v46;
      v46 = [(CIImage *)v63 imageByApplyingFilter:@"CIOverlayBlendMode" withInputParameters:[NSDictionary dictionaryWithObjects:&v234 forKeys:&v233 count:1]];
    }
  }

  inputBoundingBoxArray = self->inputBoundingBoxArray;
  if (inputBoundingBoxArray && [(NSArray *)inputBoundingBoxArray count])
  {
    height = 0.0;
    v66 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]];
    [(CIImage *)self->super.inputImage extent];
    v67 = [(CIImage *)v66 imageByCroppingToRect:?];
    [(NSNumber *)self->inputUnionBox floatValue];
    v201 = v14;
    v202 = v16;
    v200 = v44;
    v206 = v46;
    if (v68 <= 0.0)
    {
      v215 = 0uLL;
      v216 = 0uLL;
      v213 = 0uLL;
      v214 = 0uLL;
      v205 = self->inputBoundingBoxArray;
      v113 = [(NSArray *)v205 countByEnumeratingWithState:&v213 objects:v230 count:16];
      if (v113)
      {
        v114 = v113;
        v115 = *v214;
        x = -1000.0;
        width = 0.0;
        y = 0.0;
        do
        {
          for (i = 0; i != v114; i = i + 1)
          {
            if (*v214 != v115)
            {
              objc_enumerationMutation(v205);
            }

            v120 = *(*(&v213 + 1) + 8 * i);
            [objc_msgSend(v120 objectForKeyedSubscript:{@"x", "floatValue"}];
            v122 = v121;
            [(CIImage *)self->super.inputImage extent];
            v124 = v123 * v122;
            [objc_msgSend(v120 objectForKeyedSubscript:{@"y", "floatValue"}];
            v126 = v125;
            [(CIImage *)self->super.inputImage extent];
            v128 = v127 * v126;
            [objc_msgSend(v120 objectForKeyedSubscript:{@"w", "floatValue"}];
            v130 = v129;
            [(CIImage *)self->super.inputImage extent];
            v132 = v131 * v130;
            [objc_msgSend(v120 objectForKeyedSubscript:{@"h", "floatValue"}];
            v134 = v133;
            [(CIImage *)self->super.inputImage extent];
            v136 = v135 * v134;
            v140 = v136;
            if (x >= -900.0)
            {
              v245.origin.x = x;
              v245.origin.y = y;
              v245.size.width = width;
              v245.size.height = height;
              v137 = v124;
              v138 = v128;
              v139 = v132;
              v246 = CGRectUnion(v245, *(&v140 - 3));
              x = v246.origin.x;
              y = v246.origin.y;
              width = v246.size.width;
              height = v246.size.height;
            }

            else
            {
              height = v136;
              width = v132;
              y = v128;
              x = v124;
            }
          }

          v114 = [(NSArray *)v205 countByEnumeratingWithState:&v213 objects:v230 count:16];
        }

        while (v114);
      }

      else
      {
        x = -1000.0;
        width = 0.0;
        y = 0.0;
      }

      v143 = width * 0.45;
      v144 = height * 0.45;
      v145 = [CIVector vectorWithX:0.0 / ((v144 + v144) * v144) + 1.0 / ((v143 + v143) * v143) Y:0.0 / (v144 * 4.0 * v144) - 0.0 / (v143 * 4.0 * v143) Z:1.0 / ((v144 + v144) * v144) + 0.0 / ((v143 + v143) * v143) W:0.7];
      v141 = width * 0.5 + x;
      v142 = height * 0.5 + y;
      v146 = [CIVector vectorWithX:v141 Y:v142];
      _foodVignette = [(CIDynamicFood *)self _foodVignette];
      [(CIImage *)self->super.inputImage extent];
      v229[0] = v206;
      v229[1] = v67;
      v229[2] = v146;
      v229[3] = v145;
      v67 = [_foodVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v229, 4), v148, v149, v150, v151}];
    }

    else
    {
      v219 = 0uLL;
      v220 = 0uLL;
      v217 = 0uLL;
      v218 = 0uLL;
      obj = self->inputBoundingBoxArray;
      v69 = [(NSArray *)obj countByEnumeratingWithState:&v217 objects:v232 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v218;
        do
        {
          for (j = 0; j != v70; j = j + 1)
          {
            if (*v218 != v71)
            {
              objc_enumerationMutation(obj);
            }

            v73 = *(*(&v217 + 1) + 8 * j);
            [objc_msgSend(v73 objectForKeyedSubscript:{@"x", "floatValue"}];
            v75 = v74;
            [(CIImage *)self->super.inputImage extent];
            v77 = v76 * v75;
            [objc_msgSend(v73 objectForKeyedSubscript:{@"y", "floatValue"}];
            v79 = v78;
            [(CIImage *)self->super.inputImage extent];
            v81 = v80 * v79;
            [objc_msgSend(v73 objectForKeyedSubscript:{@"w", "floatValue"}];
            v83 = v82;
            [(CIImage *)self->super.inputImage extent];
            v85 = v84 * v83;
            [objc_msgSend(v73 objectForKeyedSubscript:{@"h", "floatValue"}];
            v87 = v86;
            [(CIImage *)self->super.inputImage extent];
            v89 = v88 * v87;
            v90 = [(NSArray *)self->inputBoundingBoxArray count];
            [(CIImage *)self->super.inputImage extent];
            v92 = v91;
            [(CIImage *)self->super.inputImage extent];
            if (v92 / 3.0 <= v85)
            {
              v95 = v85;
            }

            else
            {
              v94 = v92 / 3.0;
              v95 = v94;
            }

            v96 = v93 / 3.0;
            if (v92 * 0.5 <= v85)
            {
              v98 = v85;
            }

            else
            {
              v97 = v92 * 0.5;
              v98 = v97;
            }

            v99 = v93 * 0.5;
            if (v90 == 1)
            {
              v96 = v99;
              v95 = v98;
            }

            if (v96 <= v89)
            {
              v101 = v89;
            }

            else
            {
              v100 = v96;
              v101 = v100;
            }

            v102 = v95;
            v103 = v102 * 0.5 + v77;
            v104 = v101;
            v105 = v104 * 0.5 + v81;
            *&v102 = v102 * 0.45;
            *&v104 = v104 * 0.45;
            v106 = [CIVector vectorWithX:0.0 / ((*&v104 + *&v104) * *&v104) + 1.0 / ((*&v102 + *&v102) * *&v102) Y:0.0 / (*&v104 * 4.0 * *&v104) - 0.0 / (*&v102 * 4.0 * *&v102) Z:1.0 / ((*&v104 + *&v104) * *&v104) + 0.0 / ((*&v102 + *&v102) * *&v102) W:0.7];
            v107 = [CIVector vectorWithX:v103 Y:v105];
            _foodVignette2 = [(CIDynamicFood *)self _foodVignette];
            [(CIImage *)self->super.inputImage extent];
            v231[0] = v206;
            v231[1] = v67;
            v231[2] = v107;
            v231[3] = v106;
            v67 = [_foodVignette2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v231, 4), v109, v110, v111, v112}];
          }

          v70 = [(NSArray *)obj countByEnumeratingWithState:&v217 objects:v232 count:16];
        }

        while (v70);
      }
    }

    _applyVignette = [(CIDynamicFood *)self _applyVignette];
    [(CIImage *)self->super.inputImage extent];
    v153 = self->super.inputImage;
    v228[0] = v206;
    v228[1] = v153;
    inputVignetteStrength = self->inputVignetteStrength;
    v228[2] = v67;
    v228[3] = inputVignetteStrength;
    v46 = [_applyVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v228, 4), v155, v156, v157, v158}];
    v14 = v201;
    v16 = v202;
    p_info = (@"kernel vec4 _pf_eyeBrightenSoftlight (__sample uCb, __sample m, float str) \n { \n float g = .75*(1.0-dot(uCb.rgb, vec3(.333333))); \n vec4 uCf = vec4(g, g, g, 1.0); \n vec4 D = compare(uCb-0.25, ((16.0*uCb-12.0)*uCb+4.0)*uCb, sqrt(uCb)); \n vec4 Ct = clamp(uCb + (2.0*uCf-1.0) * compare(uCf - 0.5, uCb*(1.0-uCb), D-uCb), 0.0, 1.0); \n vec4 bright = Ct; \n uCf.rgb = mix(uCb.rgb, bright.rgb, m.r); \n uCf.rgb = mix(uCb.rgb, uCf.rgb, str); \n return uCf; \n }" + 8);
    v21 = &NSIntegralRectWithOptions_ptr;
    v22 = &NSIntegralRectWithOptions_ptr;
    v44 = v200;
  }

  [(NSNumber *)self->super.inputStrength floatValue];
  v159 = 1.0;
  if (v160 < 1.0)
  {
    [(NSNumber *)self->super.inputStrength floatValue];
    v162 = v161;
    [(NSNumber *)self->super.inputConfidence floatValue];
    v164 = v163;
    [(NSNumber *)self->super.inputLowConfidence floatValue];
    v166 = v164 - v165;
    [(NSNumber *)self->super.inputHighConfidence floatValue];
    v168 = v167;
    [(NSNumber *)self->super.inputLowConfidence floatValue];
    v170 = (v166 / (v168 - v169));
    if (v170 < 0.0)
    {
      v170 = 0.0;
    }

    v171 = fmin(v170, 1.0);
    v172 = (v171 * -2.0 + 3.0) * (v171 * v171);
    v173 = v172;
    inputFaceBoxArray = self->super.inputFaceBoxArray;
    if (inputFaceBoxArray && [(NSArray *)inputFaceBoxArray count])
    {
      v207 = v46;
      v203 = v16;
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v175 = self->super.inputFaceBoxArray;
      v176 = [(NSArray *)v175 countByEnumeratingWithState:&v209 objects:v227 count:16];
      if (v176)
      {
        v177 = v176;
        v178 = *v210;
        v179 = 0.0;
        do
        {
          for (k = 0; k != v177; k = k + 1)
          {
            if (*v210 != v178)
            {
              objc_enumerationMutation(v175);
            }

            v181 = *(*(&v209 + 1) + 8 * k);
            [objc_msgSend(v181 objectForKeyedSubscript:{@"w", "floatValue"}];
            v183 = v182;
            [(CIImage *)self->super.inputImage extent];
            v185 = v184 * v183;
            [objc_msgSend(v181 objectForKeyedSubscript:{@"h", "floatValue"}];
            v187 = v186;
            [(CIImage *)self->super.inputImage extent];
            v189 = v188 * v187;
            if (v185 >= v189)
            {
              v189 = v185;
            }

            if (v189 > v179)
            {
              v179 = v189;
            }
          }

          v177 = [(NSArray *)v175 countByEnumeratingWithState:&v209 objects:v227 count:16];
        }

        while (v177);
      }

      else
      {
        v179 = 0.0;
      }

      [(NSNumber *)self->super.inputMaxFaceSize floatValue];
      v191 = fminf(v179 / v190, 1.0);
      v172 = 1.0 - (v191 * (v191 * v191)) * (v191 * -2.0 + 3.0);
      v159 = v172;
      p_info = &@"kernel vec4 _pf_eyeBrightenSoftlight (__sample uCb, __sample m, float str) \n { \n float g = .75*(1.0-dot(uCb.rgb, vec3(.333333))); \n vec4 uCf = vec4(g, g, g, 1.0); \n vec4 D = compare(uCb-0.25, ((16.0*uCb-12.0)*uCb+4.0)*uCb, sqrt(uCb)); \n vec4 Ct = clamp(uCb + (2.0*uCf-1.0) * compare(uCf - 0.5, uCb*(1.0-uCb), D-uCb), 0.0, 1.0); \n vec4 bright = Ct; \n uCf.rgb = mix(uCb.rgb, bright.rgb, m.r); \n uCf.rgb = mix(uCb.rgb, uCf.rgb, str); \n return uCf; \n }".info;
      v16 = v203;
      v21 = &NSIntegralRectWithOptions_ptr;
      v22 = &NSIntegralRectWithOptions_ptr;
      v46 = v207;
    }

    v192 = self->super.inputImage;
    v225[0] = @"inputBackgroundImage";
    v225[1] = @"inputAmount";
    v226[0] = v192;
    v193 = v44 * ((v162 * v173) * v159);
    *&v172 = v193;
    v226[1] = [v22[176] numberWithFloat:v172];
    v46 = -[CIImage imageByApplyingFilter:withInputParameters:](v46, "imageByApplyingFilter:withInputParameters:", @"CIMix", [v21[257] dictionaryWithObjects:v226 forKeys:v225 count:2]);
    v194 = p_info[310];
    v208.receiver = self;
    v208.super_class = v194;
    if ([-[CIDynamicRender writeDebugData:](&v208 writeDebugData:{&off_7A908), "intValue"}] >= 1)
    {
      intValue = [v16 intValue];
      [v14 floatValue];
      LODWORD(v197) = v196;
      *&v198 = v193;
      return [(CIDynamicRender *)self overlayText:v46 strength:intValue captureType:v198 bv:v197];
    }
  }

  return v46;
}

@end