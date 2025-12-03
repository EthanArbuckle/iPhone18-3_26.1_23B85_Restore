@interface CIPortraitEffectContourV2
- (id)_applyFaceProtect;
- (id)_applyTransparentBorder;
- (id)_applyVignette;
- (id)_blendSingleChannelMask;
- (id)_faceVignette;
- (id)_prepareDepth;
- (id)_transparentBorder;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPortraitEffectContourV2

- (void)setDefaults
{
  [(CIPortraitEffectLightV2 *)self setInputSmooth:&off_79E20];
  [(CIPortraitEffectLightV2 *)self setInputEnrich:&off_79FA0];
  [(CIPortraitEffectLightV2 *)self setInputLocalContrast:&off_7A230];
  [(CIPortraitEffectContourV2 *)self setInputKickLight:&off_7A240];
  [(CIPortraitEffectContourV2 *)self setInputFaceLight:&off_79F80];
  [(CIPortraitEffectV2 *)self setInputStrength:&off_79D10];
  [(CIPortraitEffectLightV2 *)self setInputEyes:&off_79DE0];
  [(CIPortraitEffectContourV2 *)self setInputContour:&off_7A120];
  [(CIPortraitEffectContourV2 *)self setInputDepthThreshold:&off_7A160];
  [(CIPortraitEffectLightV2 *)self setInputTeeth:&off_7A1B0];
  [(CIPortraitEffectV2 *)self setInputScale:&off_7A110];
  [(CIPortraitEffectV2 *)self setInputRenderProxy:&off_7A140];

  [(CIPortraitEffectV2 *)self setInputGenerateSpillMatte:&off_7A140];
}

- (id)_prepareDepth
{
  if (qword_8CCB0 != -1)
  {
    sub_4A818();
  }

  return qword_8CCA8;
}

- (id)_blendSingleChannelMask
{
  if (qword_8CCC0 != -1)
  {
    sub_4A82C();
  }

  return qword_8CCB8;
}

- (id)_faceVignette
{
  if (qword_8CCD0 != -1)
  {
    sub_4A840();
  }

  return qword_8CCC8;
}

- (id)_applyVignette
{
  if (qword_8CCE0 != -1)
  {
    sub_4A854();
  }

  return qword_8CCD8;
}

- (id)_applyFaceProtect
{
  if (qword_8CCF0 != -1)
  {
    sub_4A868();
  }

  return qword_8CCE8;
}

- (id)_transparentBorder
{
  if (qword_8CD00 != -1)
  {
    sub_4A87C();
  }

  return qword_8CCF8;
}

- (id)_applyTransparentBorder
{
  if (qword_8CD10 != -1)
  {
    sub_4A890();
  }

  return qword_8CD08;
}

- (id)outputImage
{
  selfCopy = self;
  result = self->super.super.inputImage;
  if (result)
  {
    [result extent];
    v346 = v5;
    v347 = v4;
    v7 = v6;
    v345 = v8;
    v385.receiver = selfCopy;
    v385.super_class = CIPortraitEffectContourV2;
    v9 = [(CIPortraitEffectLightV2 *)&v385 getDraftMode:&off_7A8C0];
    [(NSNumber *)selfCopy->super.super.inputRenderProxy floatValue];
    v11 = v10;
    v333 = v9;
    v332 = v10;
    if ([v9 intValue] > 0 || v11 > 0.0)
    {
      inputImage = selfCopy->super.super.inputImage;
    }

    else
    {
      v384.receiver = selfCopy;
      v384.super_class = CIPortraitEffectContourV2;
      inputImage = [(CIPortraitEffectLightV2 *)&v384 outputImage];
    }

    v422 = @"inputStrength";
    LODWORD(v12) = 0.25;
    v423 = [NSNumber numberWithFloat:v12];
    v14 = &NSIntegralRectWithOptions_ptr;
    v15 = [inputImage imageByApplyingFilter:@"CIHighKey" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v423, &v422, 1)}];
    v420[0] = @"inputShadows";
    v337 = 1041865114;
    v16 = [NSNumber numberWithFloat:?];
    v420[1] = @"inputContrast";
    v421[0] = v16;
    v421[1] = [NSNumber numberWithFloat:0.0];
    v17 = [v15 imageByApplyingFilter:@"CISmartToneFilter" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v421, v420, 2)}];
    v18 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v19 = [CIImage imageWithColor:v18];
    [(CIImage *)selfCopy->super.super.inputImage extent];
    v20 = [(CIImage *)v19 imageByCroppingToRect:?];
    v21 = [CIImage imageWithColor:v18];
    [(CIImage *)selfCopy->super.super.inputImage extent];
    v349 = [(CIImage *)v21 imageByCroppingToRect:?];
    v350 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0]];
    inputFaceLandmarkArray = selfCopy->super.super.inputFaceLandmarkArray;
    if (inputFaceLandmarkArray && [(NSArray *)inputFaceLandmarkArray count])
    {
      v348 = v20;
      v364 = objc_alloc_init(NSMutableArray);
      v380 = 0u;
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      p_isa = &selfCopy->super.super.super.super.isa;
      obj = selfCopy->super.super.inputFaceLandmarkArray;
      v331 = v17;
      v335 = v7;
      v360 = [(NSArray *)obj countByEnumeratingWithState:&v380 objects:v419 count:16];
      if (v360)
      {
        v358 = *v381;
        do
        {
          v23 = 0;
          do
          {
            if (*v381 != v358)
            {
              objc_enumerationMutation(obj);
            }

            v362 = v23;
            v24 = *(*(&v380 + 1) + 8 * v23);
            if ([v24 objectForKeyedSubscript:@"faceJunkinessIndex"])
            {
              [objc_msgSend(v24 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
              v26 = v25 > -0.2;
            }

            else
            {
              v26 = 1;
            }

            if ([v24 objectForKeyedSubscript:@"faceBoundingBox"])
            {
              [objc_msgSend(objc_msgSend(v24 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
              v28 = v27 < 0.15;
            }

            else
            {
              v28 = 1;
            }

            if ([v24 objectForKeyedSubscript:@"roll"])
            {
              [objc_msgSend(v24 objectForKeyedSubscript:{@"roll", "floatValue"}];
              v30 = fabsf(v29) > 1.05;
            }

            else
            {
              v30 = 0;
            }

            if (!v26 && !v28 && !v30)
            {
              v31 = [objc_msgSend(v24 objectForKeyedSubscript:{@"orientation", "intValue"}];
              memset(&v379, 0, sizeof(v379));
              [v17 extent];
              sub_1C2E4(v31, &v379, v32, v33, v34);
              v377 = v379;
              memset(&v378, 0, sizeof(v378));
              CGAffineTransformInvert(&v378, &v377);
              [v17 extent];
              v377 = v379;
              v425 = CGRectApplyAffineTransform(v424, &v377);
              PathBoundingBox = CGPathGetPathBoundingBox([[[FaceLandmarks alloc] initWithFaceLandmarks:v24 forImageRect:v425.origin.x headPerimeter:v425.size.width]);
              v427 = NSIntegralRectWithOptions(PathBoundingBox, 0xF00uLL);
              v428 = CGRectInset(v427, v427.size.width * -0.899999976 + v427.size.width * -0.899999976, v427.size.height * -0.899999976);
              v377 = v378;
              v429 = CGRectApplyAffineTransform(v428, &v377);
              x = v429.origin.x;
              y = v429.origin.y;
              width = v429.size.width;
              height = v429.size.height;
              v39 = objc_alloc_init(NSMutableDictionary);
              v40 = objc_alloc_init(NSMutableArray);
              [v40 addObject:v24];
              [v39 setValue:+[NSValue valueWithRect:](NSValue forKey:{"valueWithRect:", x, y, width, height), @"unionRect"}];
              [v39 setValue:v40 forKey:@"faceLandmarksArray"];
              v41 = objc_alloc_init(NSMutableArray);
              v373 = 0u;
              v374 = 0u;
              v375 = 0u;
              v376 = 0u;
              v42 = [v364 countByEnumeratingWithState:&v373 objects:v418 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v374;
                do
                {
                  for (i = 0; i != v43; i = i + 1)
                  {
                    if (*v374 != v44)
                    {
                      objc_enumerationMutation(v364);
                    }

                    v46 = *(*(&v373 + 1) + 8 * i);
                    [objc_msgSend(v46 objectForKeyedSubscript:{@"unionRect", "rectValue"}];
                    v48 = v47;
                    v50 = v49;
                    v52 = v51;
                    v54 = v53;
                    v430.origin.x = x;
                    v430.origin.y = y;
                    v430.size.width = width;
                    v430.size.height = height;
                    v435.origin.x = v48;
                    v435.origin.y = v50;
                    v435.size.width = v52;
                    v435.size.height = v54;
                    if (CGRectIntersectsRect(v430, v435))
                    {
                      v431.origin.x = v48;
                      v431.origin.y = v50;
                      v431.size.width = v52;
                      v431.size.height = v54;
                      v436.origin.x = x;
                      v436.origin.y = y;
                      v436.size.width = width;
                      v436.size.height = height;
                      v432 = CGRectUnion(v431, v436);
                      x = v432.origin.x;
                      y = v432.origin.y;
                      width = v432.size.width;
                      height = v432.size.height;
                      [v40 addObjectsFromArray:{objc_msgSend(v46, "objectForKeyedSubscript:", @"faceLandmarksArray"}];
                      [v39 setValue:+[NSValue valueWithRect:](NSValue forKey:{"valueWithRect:", x, y, width, height), @"unionRect"}];
                      [v39 setValue:v40 forKey:@"faceLandmarksArray"];
                    }

                    else
                    {
                      [v41 addObject:v46];
                    }
                  }

                  v43 = [v364 countByEnumeratingWithState:&v373 objects:v418 count:16];
                }

                while (v43);
              }

              [v41 addObject:v39];

              v364 = v41;
              v17 = v331;
              v7 = v335;
            }

            v23 = v362 + 1;
          }

          while ((v362 + 1) != v360);
          v360 = [(NSArray *)obj countByEnumeratingWithState:&v380 objects:v419 count:16];
        }

        while (v360);
      }

      v371 = 0u;
      v372 = 0u;
      v369 = 0u;
      v370 = 0u;
      v55 = v348;
      v328 = [v364 countByEnumeratingWithState:&v369 objects:v417 count:16];
      if (v328)
      {
        v56 = 0;
        v327 = *v370;
        v57 = &OBJC_METACLASS___PFBoxBlur3_7;
        v58 = 1.0;
        while (2)
        {
          v59 = 0;
          do
          {
            if (*v370 != v327)
            {
              objc_enumerationMutation(v364);
            }

            v329 = v59;
            v330 = v56;
            v60 = *(*(&v369 + 1) + 8 * v59);
            [objc_msgSend(v60 objectForKeyedSubscript:{@"unionRect", v327), "rectValue"}];
            v62 = v61;
            v64 = v63;
            v66 = v65;
            v68 = v67;
            v69 = [(CIImage *)v350 imageByCroppingToRect:?];
            v359 = [v17 imageByCroppingToRect:{v62, v64, v66, v68}];
            v70 = [v60 objectForKeyedSubscript:@"faceLandmarksArray"];
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
            v368 = 0u;
            v336 = v70;
            v352 = [v70 countByEnumeratingWithState:&v365 objects:v416 count:16];
            if (v352)
            {
              v71 = *v366;
              v72 = v69;
              v334 = *v366;
              do
              {
                v73 = 0;
                do
                {
                  if (*v366 != v71)
                  {
                    objc_enumerationMutation(v336);
                  }

                  v361 = v73;
                  v74 = *(*(&v365 + 1) + 8 * v73);
                  v75 = [objc_alloc(&v57[91]) initWithFaceLandmarkDictionary:v74 forImageRect:{v347, v346, v7, v345}];
                  CGAffineTransformMakeScale(&v379, 0.05, 0.05);
                  v433.origin.x = v347;
                  v433.origin.y = v346;
                  v433.size.width = v7;
                  v433.size.height = v345;
                  v434 = CGRectApplyAffineTransform(v433, &v379);
                  v363 = [objc_alloc(&v57[91]) initWithFaceLandmarkDictionary:v74 forImageRect:{v434.origin.x, v434.origin.y, v434.size.width, v434.size.height}];
                  if ([v74 objectForKeyedSubscript:@"faceJunkinessIndex"])
                  {
                    [objc_msgSend(v74 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
                    v77 = v76 < -0.2;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if ([v74 objectForKeyedSubscript:@"faceOrientationIndex"])
                  {
                    [objc_msgSend(v74 objectForKeyedSubscript:{@"faceOrientationIndex", "floatValue"}];
                    v79 = v78;
                  }

                  else
                  {
                    v79 = 0.0;
                  }

                  v354 = v79;
                  if ([v74 objectForKeyedSubscript:@"faceBoundingBox"])
                  {
                    [objc_msgSend(objc_msgSend(v74 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
                    v81 = v80 > 0.15;
                  }

                  else
                  {
                    v81 = 0;
                  }

                  if ([v74 objectForKeyedSubscript:@"roll"])
                  {
                    [objc_msgSend(v74 objectForKeyedSubscript:{@"roll", "floatValue"}];
                    v83 = fabsf(v82) < 1.05;
                  }

                  else
                  {
                    v83 = 1;
                  }

                  if (v77 && v81 && v83)
                  {
                    v84 = [v74 objectForKeyedSubscript:@"orientation"];
                    [v75 faceWidth];
                    v86 = v85;
                    [p_isa[18] floatValue];
                    v342 = v87;
                    [v75 centerNose];
                    v89 = v88;
                    [v75 centerNose];
                    v91 = v90;
                    [v75 centerChin];
                    v93 = v92;
                    [v75 centerChin];
                    v95 = [CIVector vectorWithX:v89 Y:v91 Z:v93 W:v94];
                    [v75 leftEye];
                    v97 = v96;
                    [v75 leftEye];
                    v99 = v98;
                    [v75 rightEye];
                    v101 = v100;
                    [v75 rightEye];
                    v343 = [CIVector vectorWithX:v97 Y:v99 Z:v101 W:v102];
                    [v75 centerNose];
                    v104 = v103;
                    [v75 centerNose];
                    v106 = v105;
                    [v75 faceWidth];
                    v108 = v107 * 0.45;
                    [v75 faceHeight];
                    v110 = v109 * 0.35;
                    v351 = v72;
                    v344 = v84;
                    if ([v84 intValue] == 6 || (v111 = objc_msgSend(v84, "intValue"), v112 = 0.0, v111 == 8))
                    {
                      v113 = v108;
                      v112 = 1.5708;
                    }

                    else
                    {
                      v113 = v110;
                      v110 = v108;
                    }

                    v114 = v86 / v7;
                    v341 = fmin(v114 * 1.8, v58);
                    *&v115 = fmin(v341 * 1.05, v58);
                    *&v116 = fmin(v114 * 1.05, v58);
                    *v340 = __PAIR64__(v116, v115);
                    v117 = v104;
                    v118 = v106;
                    v338 = v118;
                    v339 = v117;
                    v119 = v112;
                    obja = v112;
                    v120 = __sincosf_stret(v112);
                    v121 = (v120.__cosval * v120.__cosval);
                    v122 = (v120.__sinval * v120.__sinval);
                    v123 = sin(v119 + v119);
                    v124 = [CIVector vectorWithX:v121 / ((v110 + v110) * v110) + v122 / ((v113 + v113) * v113) Y:v123 / (v113 * 4.0 * v113) - v123 / (v110 * 4.0 * v110) Z:v122 / ((v110 + v110) * v110) + v121 / ((v113 + v113) * v113) W:0.7];
                    v125 = [CIVector vectorWithX:v339 Y:v338];
                    _faceVignette = [p_isa _faceVignette];
                    [p_isa[9] extent];
                    v415[0] = v359;
                    v415[1] = v349;
                    v415[2] = v125;
                    v415[3] = v124;
                    v349 = [_faceVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v415, 4), v127, v128, v129, v130}];
                    [v75 centerNose];
                    v132 = v131;
                    [v75 centerNose];
                    v134 = v133;
                    [v75 faceWidth];
                    v136 = v135 * 0.35;
                    [v75 faceHeight];
                    v138 = v137 * 3.5 * *&v340[4];
                    v139 = (v136 + v136) * v136;
                    v140 = [CIVector vectorWithX:v121 / v139 + v122 / ((v138 + v138) * v138) Y:v123 / (v138 * 4.0 * v138) - v123 / (v136 * 4.0 * v136) Z:v122 / v139 + v121 / ((v138 + v138) * v138) W:0.7];
                    v141 = [CIVector vectorWithX:v132 Y:v134];
                    [p_isa[9] extent];
                    v414[0] = v359;
                    v414[1] = v348;
                    v414[2] = v141;
                    v414[3] = v140;
                    v348 = [_faceVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v414, 4), v142, v143, v144, v145}];
                    v412[0] = @"inputImage";
                    v412[1] = @"inputCenter";
                    v413[0] = v359;
                    v413[1] = v95;
                    v412[2] = @"inputStrength";
                    v146 = *v340;
                    *&v340[4] = vsubq_f64(xmmword_54EA0, vabsq_f64(vdivq_f64(vmulq_n_f64(xmmword_54E90, v354), vdupq_n_s64(0x400921FB54442D18uLL))));
                    v147 = *&v340[12];
                    v148 = v147 + 0.9;
                    v149 = vmovn_s64(vcltzq_f64(*&v340[4]));
                    v355 = v149.i8[0];
                    if (v149.i8[4])
                    {
                      v148 = 0.9;
                    }

                    v413[2] = [NSNumber numberWithDouble:v148];
                    v412[3] = @"inputRotate";
                    *&v150 = obja;
                    v413[3] = [NSNumber numberWithFloat:v150];
                    v413[4] = &off_7A110;
                    v412[4] = @"inputDarken";
                    v412[5] = @"inputWidth";
                    [v75 faceWidth];
                    v413[5] = [NSNumber numberWithDouble:v151 * 0.15];
                    v412[6] = @"inputHeight";
                    [v75 faceHeight];
                    v413[6] = [NSNumber numberWithDouble:v152 * 0.325];
                    v153 = [v359 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v413, v412, 7)}];
                    [v75 centerChin];
                    v155 = v154;
                    [v75 centerChin];
                    v157 = v156;
                    [v75 centerChin];
                    v159 = v158;
                    [v75 centerChin];
                    v161 = [CIVector vectorWithX:v155 Y:v157 Z:v159 W:v160];
                    v410[0] = @"inputImage";
                    v410[1] = @"inputCenter";
                    v411[0] = v153;
                    v411[1] = v161;
                    v411[2] = &off_7A250;
                    v410[2] = @"inputStrength";
                    v410[3] = @"inputRotate";
                    *&v162 = obja;
                    v411[3] = [NSNumber numberWithFloat:v162];
                    v411[4] = &off_7A110;
                    v410[4] = @"inputDarken";
                    v410[5] = @"inputWidth";
                    [v75 faceWidth];
                    v411[5] = [NSNumber numberWithDouble:v163 * 0.04];
                    v410[6] = @"inputHeight";
                    [v75 faceWidth];
                    v411[6] = [NSNumber numberWithDouble:v164 * 0.04];
                    v165 = [v153 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v411, v410, 7)}];
                    [v75 centerNose];
                    v166 = [CIVector vectorWithCGPoint:?];
                    [v75 bottomShadow];
                    v167 = [CIVector vectorWithCGPoint:?];
                    [p_isa[30] floatValue];
                    *&v155 = v168 * *v340;
                    v408[0] = @"inputImage";
                    v408[1] = @"inputCenter1";
                    v409[0] = v165;
                    v409[1] = v166;
                    v408[2] = @"inputBottom1";
                    v408[3] = @"inputCenter2";
                    v409[2] = v167;
                    v409[3] = v166;
                    v408[4] = @"inputHeight1";
                    [v75 faceHeight];
                    v409[4] = [NSNumber numberWithDouble:v169 * 0.4];
                    v408[5] = @"inputWidth1";
                    [v75 faceWidth];
                    v409[5] = [NSNumber numberWithDouble:v170 * 0.3];
                    v408[6] = @"inputHeight2";
                    [v75 faceHeight];
                    v409[6] = [NSNumber numberWithDouble:v171 * 0.85];
                    v408[7] = @"inputWidth2";
                    [v75 faceWidth];
                    v409[7] = [NSNumber numberWithDouble:v172 * 0.55];
                    v409[8] = &off_7A120;
                    v408[8] = @"inputContrast";
                    v408[9] = @"inputBrighten";
                    v409[9] = [NSNumber numberWithDouble:v146];
                    v408[10] = @"inputStrength";
                    LODWORD(v173) = LODWORD(v155);
                    v409[10] = [NSNumber numberWithFloat:v173];
                    v174 = [v165 imageByApplyingFilter:@"CIPortraitLightingFront" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v409, v408, 11)}];
                    [v75 centerNose];
                    v176 = v175;
                    [v75 centerNose];
                    v178 = v177;
                    [v75 bottomShadow];
                    v180 = v179;
                    [v75 bottomShadow];
                    v182 = [CIVector vectorWithX:v176 Y:v178 Z:v180 W:v181];
                    v183 = *&v340[4];
                    v184 = v183 * 1.2;
                    if (v355)
                    {
                      v185 = 0.0;
                    }

                    else
                    {
                      v185 = v184;
                    }

                    v406[0] = @"inputImage";
                    v406[1] = @"inputCenter";
                    v407[0] = v174;
                    v407[1] = v182;
                    v406[2] = @"inputHeight";
                    [v75 faceHeight];
                    v407[2] = [NSNumber numberWithDouble:v186 * 0.31];
                    v406[3] = @"inputWidth";
                    [v75 faceWidth];
                    v407[3] = [NSNumber numberWithDouble:v187 * 0.21];
                    v406[4] = @"inputStrength";
                    v407[4] = [NSNumber numberWithDouble:v185];
                    v188 = [v174 imageByApplyingFilter:@"CIPortraitLightingEdge" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v407, v406, 5)}];
                    if ([v333 intValue] <= 1)
                    {
                      *&v189 = v332;
                      if (v332 < 2.0)
                      {
                        v404[0] = @"inputFaceLandmarks";
                        v404[1] = @"inputOrigImage";
                        v190 = p_isa[9];
                        v405[0] = v363;
                        v405[1] = v190;
                        v404[2] = @"inputStrength";
                        v404[3] = @"inputScale";
                        v191 = p_isa[18];
                        v405[2] = &off_79CA0;
                        v405[3] = v191;
                        v188 = [v188 imageByApplyingFilter:@"CIPortraitContour" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v405, v404, 4, v189)}];
                      }
                    }

                    v7 = v335;
                    v192 = v341 * v342;
                    leftNose = [v75 leftNose];
                    v194 = [CIVector vectorWithCGPoint:*leftNose, leftNose[1]];
                    leftNose2 = [v75 leftNose];
                    v196 = [CIVector vectorWithCGPoint:leftNose2[2], leftNose2[3]];
                    leftNose3 = [v75 leftNose];
                    v198 = [CIVector vectorWithCGPoint:leftNose3[4], leftNose3[5]];
                    rightNose = [v75 rightNose];
                    v200 = [CIVector vectorWithCGPoint:*rightNose, rightNose[1]];
                    rightNose2 = [v75 rightNose];
                    v202 = [CIVector vectorWithCGPoint:rightNose2[2], rightNose2[3]];
                    rightNose3 = [v75 rightNose];
                    v204 = [CIVector vectorWithCGPoint:rightNose3[4], rightNose3[5]];
                    v402[0] = @"inputImage";
                    v402[1] = @"inputPt1";
                    v403[0] = v188;
                    v403[1] = v194;
                    v402[2] = @"inputPt2";
                    v402[3] = @"inputPt3";
                    v403[2] = v196;
                    v403[3] = v198;
                    v402[4] = @"inputPt4";
                    v402[5] = @"inputPt5";
                    v403[4] = v200;
                    v403[5] = v202;
                    v402[6] = @"inputPt6";
                    v402[7] = @"inputCenterBottom";
                    v403[6] = v204;
                    v403[7] = &off_7A110;
                    v402[8] = @"inputWidth";
                    *&v205 = v192 * 30.0;
                    v403[8] = [NSNumber numberWithFloat:v205];
                    v403[9] = &off_7A1F0;
                    v402[9] = @"inputRotate";
                    v402[10] = @"inputOrientation";
                    v403[10] = v344;
                    v402[11] = @"inputStrength";
                    v403[11] = [NSNumber numberWithDouble:v146 * -0.3];
                    v206 = [v188 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v403, v402, 12)}];
                    noseStrobe = [v75 noseStrobe];
                    v208 = [CIVector vectorWithCGPoint:*noseStrobe, noseStrobe[1]];
                    noseStrobe2 = [v75 noseStrobe];
                    v210 = [CIVector vectorWithCGPoint:noseStrobe2[2], noseStrobe2[3]];
                    v400[0] = @"inputImage";
                    v400[1] = @"inputCenter1";
                    v401[0] = v206;
                    v401[1] = v208;
                    v401[2] = v210;
                    v400[2] = @"inputCenter2";
                    v400[3] = @"inputWidth";
                    *&v211 = v192 * 45.0;
                    v401[3] = [NSNumber numberWithFloat:v211];
                    v401[4] = &off_7A1F0;
                    v400[4] = @"inputRotate";
                    v400[5] = @"inputOrientation";
                    v401[5] = v344;
                    v400[6] = @"inputStrength";
                    v401[6] = [NSNumber numberWithDouble:v146];
                    v212 = [v206 imageByApplyingFilter:@"CIPortraitLightingStrobeV2" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v401, v400, 7)}];
                    [v75 centerNose];
                    v214 = v213;
                    [v75 centerNose];
                    v216 = v215;
                    [v75 centerChin];
                    v218 = v217;
                    [v75 centerChin];
                    v220 = [CIVector vectorWithX:v214 Y:v216 Z:v218 W:v219];
                    v398[0] = @"inputImage";
                    v398[1] = @"inputCenter";
                    v399[0] = v212;
                    v399[1] = v220;
                    v399[2] = v343;
                    v398[2] = @"inputEyes";
                    v398[3] = @"inputStrength";
                    v399[3] = [NSNumber numberWithDouble:v146 * 1.2];
                    v398[4] = @"inputRotate";
                    *&v221 = obja;
                    v399[4] = [NSNumber numberWithFloat:v221];
                    v398[5] = @"inputScale";
                    *&v222 = v192;
                    v399[5] = [NSNumber numberWithFloat:v222];
                    v398[6] = @"inputWidth";
                    [v75 faceWidth];
                    v399[6] = [NSNumber numberWithDouble:v223 * 0.45];
                    v398[7] = @"inputHeight";
                    [v75 faceHeight];
                    v399[7] = [NSNumber numberWithDouble:v224 * 0.55];
                    v359 = [v212 imageByApplyingFilter:@"CIPortraitLightingContourV2" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v399, v398, 8)}];
                    v72 = v351;
                    v57 = &OBJC_METACLASS___PFBoxBlur3_7;
                    v58 = 1.0;
                    v71 = v334;
                  }

                  if (v72)
                  {
                    [v75 centerNose];
                    v226 = v225;
                    [v75 centerNose];
                    v228 = v227;
                    [v75 faceHeight];
                    v230 = v229 * 0.25;
                    [v75 faceHeight];
                    v232 = v58 / (v230 * v231);
                    v233 = [CIVector vectorWithX:v226 Y:v228 Z:v232];
                    _transparentBorder = [p_isa _transparentBorder];
                    [v359 extent];
                    v397[0] = v72;
                    v397[1] = v233;
                    v72 = [_transparentBorder applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v397, 2), v235, v236, v237, v238}];
                  }

                  v73 = v361 + 1;
                }

                while (v352 != (v361 + 1));
                v352 = [v336 countByEnumeratingWithState:&v365 objects:v416 count:16];
              }

              while (v352);
            }

            else
            {
              v72 = v69;
            }

            if (!v359)
            {
              v56 = v330;
              v17 = v331;
              goto LABEL_91;
            }

            if (v72)
            {
              _applyTransparentBorder = [p_isa _applyTransparentBorder];
              [v359 extent];
              v396[0] = v359;
              v396[1] = v72;
              v359 = [_applyTransparentBorder applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v396, 2), v240, v241, v242, v243}];
            }

            v350 = v72;
            if (v330)
            {
              v56 = [v359 imageByCompositingOverImage:v330];
            }

            else
            {
              v56 = v359;
            }

            v59 = v329 + 1;
            v17 = v331;
          }

          while ((v329 + 1) != v328);
          v328 = [v364 countByEnumeratingWithState:&v369 objects:v417 count:16];
          if (v328)
          {
            continue;
          }

          break;
        }

LABEL_91:
        selfCopy = p_isa;
        if (v56)
        {
          v17 = [v56 imageByCompositingOverImage:v17];
        }

        v337 = 0;
        v14 = &NSIntegralRectWithOptions_ptr;
        v55 = v348;
      }

      else
      {
        v337 = 0;
        v14 = &NSIntegralRectWithOptions_ptr;
        selfCopy = p_isa;
      }
    }

    else
    {
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v245 = v244 * 0.5;
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v247 = v246 * 0.5;
      v248 = v245;
      v249 = v245 * 0.3;
      v250 = v247;
      v251 = v247 * 0.3;
      v252 = [CIVector vectorWithX:1.0 / ((v249 + v249) * v249) + 0.0 / ((v251 + v251) * v251) Y:0.0 / (v251 * 4.0 * v251) - 0.0 / (v249 * 4.0 * v249) Z:0.0 / ((v249 + v249) * v249) + 1.0 / ((v251 + v251) * v251) W:0.7];
      v253 = [CIVector vectorWithX:v248 Y:v250];
      _faceVignette2 = [(CIPortraitEffectContourV2 *)selfCopy _faceVignette];
      [(CIImage *)selfCopy->super.super.inputImage extent];
      v395[0] = v17;
      v395[1] = v20;
      v395[2] = v253;
      v395[3] = v252;
      v55 = [_faceVignette2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v395, 4), v255, v256, v257, v258}];
    }

    _applyFaceProtect = [(CIPortraitEffectContourV2 *)selfCopy _applyFaceProtect];
    v260 = [objc_msgSend(objc_msgSend(v17 imageByApplyingFilter:@"CIHighKey" withInputParameters:{&off_7DC70), "imageByApplyingFilter:withInputParameters:", @"CIExposureAdjust", &off_7DC98), "imageByApplyingFilter:withInputParameters:", @"CISmartToneFilter", &off_7DCC0}];
    [(CIImage *)selfCopy->super.super.inputImage extent];
    v394[0] = v17;
    v394[1] = v260;
    v394[2] = v349;
    v394[3] = v55;
    v265 = [_applyFaceProtect applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v394, 4), v261, v262, v263, v264}];
    [(NSNumber *)selfCopy->inputContour floatValue];
    if (v266 > 0.01)
    {
      [(NSNumber *)selfCopy->super.super.inputScale floatValue];
      v268 = 220.0 / v267;
      [v265 extent];
      v270 = v268 / v269;
      [(NSNumber *)selfCopy->super.super.inputScale floatValue];
      v272 = 220.0 / v271;
      [v265 extent];
      v393[0] = [CIVector vectorWithX:v270 Y:v272 / v273];
      v392[0] = @"inputScale";
      v392[1] = @"inputStrength";
      LODWORD(v274) = v337;
      v393[1] = [NSNumber numberWithFloat:v274];
      v265 = [v265 imageByApplyingFilter:@"CIPortraitLocalContrast" withInputParameters:{objc_msgSend(v14[257], "dictionaryWithObjects:forKeys:count:", v393, v392, 2)}];
    }

    inputMatte = selfCopy->super.super.inputMatte;
    if (inputMatte)
    {
      [(CIImage *)selfCopy->super.super.inputMatte extent];
      v277 = v276;
      [(CIImage *)selfCopy->super.super.inputImage extent];
      if (v277 != v278)
      {
        [(CIImage *)selfCopy->super.super.inputImage extent];
        v280 = v279;
        [(CIImage *)selfCopy->super.super.inputMatte extent];
        v282 = v281;
        v283 = v280 / v282;
        [(CIImage *)selfCopy->super.super.inputImage extent];
        v285 = v284;
        [(CIImage *)selfCopy->super.super.inputMatte extent];
        v287 = v286;
        v288 = v285 / v287;
        imageByClampingToExtent = [(CIImage *)inputMatte imageByClampingToExtent];
        CGAffineTransformMakeScale(&v379, v283, v288);
        v290 = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:&v379];
        [(CIImage *)selfCopy->super.super.inputImage extent];
        inputMatte = [(CIImage *)v290 imageByCroppingToRect:?];
      }

      v291 = [v265 imageByApplyingFilter:@"CIVibrance" withInputParameters:&off_7DCE8];
      v292 = selfCopy->super.super.inputImage;
      v390[0] = @"inputBackgroundImage";
      v390[1] = @"inputMaskImage";
      v391[0] = v292;
      v391[1] = inputMatte;
      v265 = [v291 imageByApplyingFilter:@"CIBlendWithMask" withInputParameters:{objc_msgSend(v14[257], "dictionaryWithObjects:forKeys:count:", v391, v390, 2)}];
    }

    else
    {
      inputBlurMap = selfCopy->super.super.inputBlurMap;
      if (inputBlurMap)
      {
        _prepareDepth = [(CIPortraitEffectContourV2 *)selfCopy _prepareDepth];
        [(CIImage *)inputBlurMap extent];
        inputDepthThreshold = selfCopy->inputDepthThreshold;
        v389[0] = inputBlurMap;
        v389[1] = inputDepthThreshold;
        v300 = [_prepareDepth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v389, 2), v296, v297, v298, v299}];
        [(CIImage *)selfCopy->super.super.inputBlurMap extent];
        v302 = v301;
        [(CIImage *)selfCopy->super.super.inputImage extent];
        if (v302 != v303)
        {
          [(CIImage *)selfCopy->super.super.inputImage extent];
          v305 = v304;
          [(CIImage *)selfCopy->super.super.inputBlurMap extent];
          v307 = v306;
          v308 = v305 / v307;
          [(CIImage *)selfCopy->super.super.inputImage extent];
          v310 = v309;
          [(CIImage *)selfCopy->super.super.inputBlurMap extent];
          v312 = v311;
          CGAffineTransformMakeScale(&v379, v308, (v310 / v312));
          v300 = [v300 imageByApplyingTransform:&v379];
        }

        v313 = [v265 imageByApplyingFilter:@"CIVibrance" withInputParameters:&off_7DD10];
        _blendSingleChannelMask = [(CIPortraitEffectContourV2 *)selfCopy _blendSingleChannelMask];
        [(CIImage *)selfCopy->super.super.inputImage extent];
        v315 = selfCopy->super.super.inputImage;
        v388[0] = v313;
        v388[1] = v315;
        v388[2] = v300;
        v265 = [_blendSingleChannelMask applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v388, 3), v316, v317, v318, v319}];
      }
    }

    [(NSNumber *)selfCopy->super.super.inputStrength floatValue];
    if (v320 < 1.0)
    {
      [(NSNumber *)selfCopy->super.super.inputStrength floatValue];
      v322 = v321 * -0.8;
      [(NSNumber *)selfCopy->super.super.inputStrength floatValue];
      v324 = v323;
      [(NSNumber *)selfCopy->super.super.inputStrength floatValue];
      v326 = v325 * 1.8 + v322 * v324;
      *&v326 = v326;
      v387[0] = selfCopy->super.super.inputImage;
      v386[0] = @"inputBackgroundImage";
      v386[1] = @"inputAmount";
      v387[1] = [NSNumber numberWithFloat:v326];
      v265 = [v265 imageByApplyingFilter:@"CIMix" withInputParameters:{objc_msgSend(v14[257], "dictionaryWithObjects:forKeys:count:", v387, v386, 2)}];
    }

    return [v265 _imageByRenderingToIntermediate];
  }

  return result;
}

@end