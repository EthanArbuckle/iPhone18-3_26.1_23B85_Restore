@interface CIPortraitEffectContour
- (id)_applyVignette;
- (id)_blendSingleChannelMask;
- (id)_faceVignette;
- (id)_mixKernel;
- (id)_prepareDepth;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIPortraitEffectContour

- (void)setDefaults
{
  [(CIPortraitEffect *)self setInputSmooth:&off_7A640];
  [(CIPortraitEffect *)self setInputEnrich:&off_7A650];
  [(CIPortraitEffect *)self setInputLocalContrast:&off_7A660];
  [(CIPortraitEffectContour *)self setInputKickLight:&off_7A670];
  [(CIPortraitEffectContour *)self setInputFaceLight:&off_7A680];
  [(CIPortraitEffect *)self setInputStrength:&off_7A690];
  [(CIPortraitEffect *)self setInputEyes:&off_7A5E0];
  [(CIPortraitEffectContour *)self setInputContour:&off_7A540];
  [(CIPortraitEffectContour *)self setInputDepthThreshold:&off_7A6A0];

  [(CIPortraitEffect *)self setInputScale:&off_7A580];
}

- (id)_prepareDepth
{
  if (qword_8CFF8 != -1)
  {
    sub_4B538();
  }

  return qword_8CFF0;
}

- (id)_mixKernel
{
  if (qword_8D008 != -1)
  {
    sub_4B54C();
  }

  return qword_8D000;
}

- (id)_blendSingleChannelMask
{
  if (qword_8D018 != -1)
  {
    sub_4B560();
  }

  return qword_8D010;
}

- (id)_faceVignette
{
  if (qword_8D028 != -1)
  {
    sub_4B574();
  }

  return qword_8D020;
}

- (id)_applyVignette
{
  if (qword_8D038 != -1)
  {
    sub_4B588();
  }

  return qword_8D030;
}

- (id)outputImage
{
  selfCopy = self;
  result = self->super.inputImage;
  if (result)
  {
    [result extent];
    v309 = v5;
    v310 = v4;
    v7 = v6;
    v308 = v8;
    inputImage = selfCopy->super.inputImage;
    v369[0] = @"inputImage";
    v369[1] = @"inputSmooth";
    inputSmooth = selfCopy->super.inputSmooth;
    v370[0] = inputImage;
    v370[1] = inputSmooth;
    inputEnrich = selfCopy->super.inputEnrich;
    v369[2] = @"inputEnrich";
    v369[3] = @"inputLocalContrast";
    inputLocalContrast = selfCopy->super.inputLocalContrast;
    v370[2] = inputEnrich;
    v370[3] = inputLocalContrast;
    inputEyes = selfCopy->super.inputEyes;
    v369[4] = @"inputEyes";
    v369[5] = @"inputFaceLandmarkArray";
    inputFaceLandmarkArray = selfCopy->super.inputFaceLandmarkArray;
    if (!inputFaceLandmarkArray)
    {
      inputFaceLandmarkArray = &__NSArray0__struct;
    }

    v370[4] = inputEyes;
    v370[5] = inputFaceLandmarkArray;
    v369[6] = @"inputScale";
    v370[6] = selfCopy->super.inputScale;
    v15 = [(CIImage *)inputImage imageByApplyingFilter:@"CIPortraitEffectLight" withInputParameters:[NSDictionary dictionaryWithObjects:v370 forKeys:v369 count:7]];
    v16 = [CIImage imageWithColor:[CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]];
    [(CIImage *)selfCopy->super.inputImage extent];
    v17 = [(CIImage *)v16 imageByCroppingToRect:?];
    [(NSNumber *)selfCopy->inputContour floatValue];
    v19 = &NSIntegralRectWithOptions_ptr;
    if (selfCopy->super.inputFaceLandmarkArray)
    {
      v311 = v17;
      v291 = v18;
      v296 = v15;
      p_isa = &selfCopy->super.super.super.isa;
      obj = objc_alloc_init(NSMutableArray);
      v335 = 0u;
      v336 = 0u;
      v337 = 0u;
      v338 = 0u;
      v20 = selfCopy->super.inputFaceLandmarkArray;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v335 objects:v368 count:16];
      v299 = v7;
      if (v21)
      {
        v22 = v21;
        v316 = *v336;
        v23 = v296;
        v312 = v20;
        do
        {
          v24 = 0;
          v314 = v22;
          do
          {
            if (*v336 != v316)
            {
              objc_enumerationMutation(v20);
            }

            v317 = v24;
            v25 = *(*(&v335 + 1) + 8 * v24);
            if ([v25 objectForKeyedSubscript:@"faceJunkinessIndex"])
            {
              [objc_msgSend(v25 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
              v27 = v26 > -0.2;
            }

            else
            {
              v27 = 1;
            }

            if ([v25 objectForKeyedSubscript:@"faceBoundingBox"])
            {
              [objc_msgSend(objc_msgSend(v25 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
              v29 = v28 < 0.15;
            }

            else
            {
              v29 = 1;
            }

            if ([v25 objectForKeyedSubscript:@"roll"])
            {
              [objc_msgSend(v25 objectForKeyedSubscript:{@"roll", "floatValue"}];
              v31 = fabsf(v30) > 1.05;
            }

            else
            {
              v31 = 0;
            }

            if (!v27 && !v29 && !v31)
            {
              v32 = [objc_msgSend(v25 objectForKeyedSubscript:{@"orientation", "intValue"}];
              [(CIImage *)v23 extent];
              width = v405.size.width;
              height = v405.size.height;
              if (CGRectIsInfinite(v405))
              {
                v35 = *&CGAffineTransformIdentity.c;
                *&v334.a = *&CGAffineTransformIdentity.a;
                *&v334.c = v35;
                *&v334.tx = *&CGAffineTransformIdentity.tx;
                v36 = 0uLL;
              }

              else
              {
                v371.b = 0.0;
                v371.c = 0.0;
                v371.a = 1.0;
                v371.d = 1.0;
                v371.tx = 0.0;
                v371.ty = 0.0;
                v373 = 0;
                v374 = 0;
                v372 = 0xBFF0000000000000;
                v375 = 0x3FF0000000000000;
                v376 = width;
                v377 = xmmword_54BD0;
                v378 = 0;
                v379 = 0;
                v380 = 0xBFF0000000000000;
                v381 = width;
                v382 = height;
                v383 = 0x3FF0000000000000;
                v384 = 0;
                v385 = 0;
                v386 = xmmword_54BE0;
                v387 = height;
                v388 = xmmword_54BD0;
                v389 = xmmword_54BE0;
                v390 = height;
                v391 = width;
                v392 = xmmword_54BD0;
                v393 = 0x3FF0000000000000;
                v394 = 0;
                v395 = 0;
                v396 = width;
                v397 = xmmword_54BF0;
                v36 = 0uLL;
                v399 = 0u;
                v400 = 0u;
                v398 = 0x3FF0000000000000;
                v401 = 0x3FF0000000000000;
                v402 = xmmword_54BE0;
                v403 = height;
                v404 = 0;
                if ((v32 - 9) >= 0xFFFFFFF8)
                {
                  v37 = v32 - 1;
                }

                else
                {
                  v37 = 0;
                }

                v38 = &v371 + v37;
                v39 = *&v38->a;
                v40 = *&v38->tx;
                *&v334.c = *&v38->c;
                *&v334.tx = v40;
                *&v334.a = v39;
              }

              *&v371.tx = v36;
              *&v371.c = v36;
              *&v371.a = v36;
              v333 = v334;
              CGAffineTransformInvert(&v371, &v333);
              v41 = v23;
              if (v32 != 1)
              {
                v41 = [(CIImage *)v23 imageByApplyingOrientation:v32];
              }

              [(CIImage *)v41 extent];
              v43 = v42;
              if ([v25 sanityCheckStatus] == 1)
              {
                [v25 coreImageROIrect];
                v45 = v44;
                v47 = v46;
                v49 = v48;
                v51 = v50;
                [v25 imageWidthScale];
                v53 = v43 / v52;
                CGAffineTransformMakeScale(&v333, v53, v53);
                v406.origin.x = v45;
                v406.origin.y = v47;
                v406.size.width = v49;
                v406.size.height = v51;
                v407 = CGRectApplyAffineTransform(v406, &v333);
                v408 = NSIntegralRectWithOptions(v407, 0xF00uLL);
                v409 = CGRectInset(v408, v408.size.width * -0.300000012 + v408.size.width * -0.300000012, v408.size.height * -0.300000012);
                v333 = v371;
                v410 = CGRectApplyAffineTransform(v409, &v333);
                x = v410.origin.x;
                y = v410.origin.y;
                v56 = v410.size.width;
                v57 = v410.size.height;
                v58 = objc_alloc_init(NSMutableDictionary);
                v59 = objc_alloc_init(NSMutableArray);
                [v59 addObject:v25];
                [v58 setValue:+[NSValue valueWithRect:](NSValue forKey:{"valueWithRect:", x, y, v56, v57), @"unionRect"}];
                [v58 setValue:v59 forKey:@"faceLandmarksArray"];
                v60 = objc_alloc_init(NSMutableArray);
                v329 = 0u;
                v330 = 0u;
                v331 = 0u;
                v332 = 0u;
                v61 = [obj countByEnumeratingWithState:&v329 objects:v367 count:16];
                if (v61)
                {
                  v62 = v61;
                  v63 = *v330;
                  do
                  {
                    for (i = 0; i != v62; i = i + 1)
                    {
                      if (*v330 != v63)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v65 = *(*(&v329 + 1) + 8 * i);
                      [objc_msgSend(v65 objectForKeyedSubscript:{@"unionRect", "rectValue"}];
                      v67 = v66;
                      v69 = v68;
                      v71 = v70;
                      v73 = v72;
                      v411.origin.x = x;
                      v411.origin.y = y;
                      v411.size.width = v56;
                      v411.size.height = v57;
                      v414.origin.x = v67;
                      v414.origin.y = v69;
                      v414.size.width = v71;
                      v414.size.height = v73;
                      if (CGRectIntersectsRect(v411, v414))
                      {
                        v412.origin.x = v67;
                        v412.origin.y = v69;
                        v412.size.width = v71;
                        v412.size.height = v73;
                        v415.origin.x = x;
                        v415.origin.y = y;
                        v415.size.width = v56;
                        v415.size.height = v57;
                        v413 = CGRectUnion(v412, v415);
                        x = v413.origin.x;
                        y = v413.origin.y;
                        v56 = v413.size.width;
                        v57 = v413.size.height;
                        [v59 addObjectsFromArray:{objc_msgSend(v65, "objectForKeyedSubscript:", @"faceLandmarksArray"}];
                        [v58 setValue:+[NSValue valueWithRect:](NSValue forKey:{"valueWithRect:", x, y, v56, v57), @"unionRect"}];
                        [v58 setValue:v59 forKey:@"faceLandmarksArray"];
                      }

                      else
                      {
                        [v60 addObject:v65];
                      }
                    }

                    v62 = [obj countByEnumeratingWithState:&v329 objects:v367 count:16];
                  }

                  while (v62);
                }

                [v60 addObject:v58];

                obj = v60;
                v23 = v296;
                v7 = v299;
                v20 = v312;
                v22 = v314;
              }
            }

            v24 = v317 + 1;
          }

          while ((v317 + 1) != v22);
          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v335 objects:v368 count:16];
        }

        while (v22);
      }

      else
      {
        v23 = v296;
      }

      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      v293 = [obj countByEnumeratingWithState:&v325 objects:v366 count:16];
      if (v293)
      {
        v91 = 0;
        v292 = *v326;
        v92 = 1.0;
        v297 = vdupq_n_s64(0x400921FB54442D18uLL);
        v93 = &off_54000;
        while (2)
        {
          v94 = 0;
          do
          {
            v295 = v91;
            if (*v326 != v292)
            {
              objc_enumerationMutation(obj);
            }

            v294 = v94;
            v95 = *(*(&v325 + 1) + 8 * v94);
            [objc_msgSend(v95 objectForKeyedSubscript:{@"unionRect", "rectValue"}];
            v91 = [(CIImage *)v23 imageByCroppingToRect:?];
            v96 = [v95 objectForKeyedSubscript:@"faceLandmarksArray"];
            v321 = 0u;
            v322 = 0u;
            v323 = 0u;
            v324 = 0u;
            v300 = v96;
            v313 = [v96 countByEnumeratingWithState:&v321 objects:v365 count:16];
            if (v313)
            {
              v97 = *v322;
              v298 = *v322;
              do
              {
                v98 = 0;
                do
                {
                  if (*v322 != v97)
                  {
                    objc_enumerationMutation(v300);
                  }

                  v318 = v98;
                  v99 = *(*(&v321 + 1) + 8 * v98);
                  v308 = [[LightingFacePoints alloc] initWithFaceLandmarkDictionary:v99 forImageRect:v310, v309, v7, v308];
                  if ([v99 objectForKeyedSubscript:@"faceJunkinessIndex"])
                  {
                    [objc_msgSend(v99 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
                    v102 = v101 < -0.2;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  if ([v99 objectForKeyedSubscript:@"faceOrientationIndex"])
                  {
                    [objc_msgSend(v99 objectForKeyedSubscript:{@"faceOrientationIndex", "floatValue"}];
                    v104 = v103;
                  }

                  else
                  {
                    v104 = 0.0;
                  }

                  if ([v99 objectForKeyedSubscript:@"faceBoundingBox"])
                  {
                    [objc_msgSend(objc_msgSend(v99 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
                    v106 = v105 > *(v93 + 820);
                  }

                  else
                  {
                    v106 = 0;
                  }

                  if ([v99 objectForKeyedSubscript:@"roll"])
                  {
                    [objc_msgSend(v99 objectForKeyedSubscript:{@"roll", "floatValue"}];
                    v108 = fabsf(v107) < 1.05;
                  }

                  else
                  {
                    v108 = 1;
                  }

                  if (v102 && v106 && v108)
                  {
                    v306 = v104;
                    v109 = [v99 objectForKeyedSubscript:@"orientation"];
                    [(LightingFacePoints *)v308 faceWidth];
                    v111 = v110 / v7;
                    [p_isa[18] floatValue];
                    v113 = fmin(v111 * 1.8, v92);
                    v114 = v113 * v112;
                    v315 = v114;
                    v115 = fmin(v113 * 1.05, v92);
                    v307 = v115;
                    v116 = fmin(v111 * 1.05, v92);
                    [(LightingFacePoints *)v308 centerNose];
                    v118 = v117;
                    [(LightingFacePoints *)v308 centerNose];
                    v120 = v119;
                    [(LightingFacePoints *)v308 centerChin];
                    v122 = v121;
                    [(LightingFacePoints *)v308 centerChin];
                    v124 = [CIVector vectorWithX:v118 Y:v120 Z:v122 W:v123];
                    [(LightingFacePoints *)v308 leftEye];
                    v126 = v125;
                    [(LightingFacePoints *)v308 leftEye];
                    v128 = v127;
                    [(LightingFacePoints *)v308 rightEye];
                    v130 = v129;
                    [(LightingFacePoints *)v308 rightEye];
                    v301 = [CIVector vectorWithX:v126 Y:v128 Z:v130 W:v131];
                    if ([v109 intValue] == 6 || (v132 = 0.0, objc_msgSend(v109, "intValue") == 8))
                    {
                      v132 = 1.5708;
                    }

                    [(LightingFacePoints *)v308 centerNose];
                    *&v133 = v133;
                    v305 = *&v133;
                    [(LightingFacePoints *)v308 centerNose];
                    v135 = v134;
                    [(LightingFacePoints *)v308 faceWidth];
                    v137 = v136 * 0.525;
                    [(LightingFacePoints *)v308 faceHeight];
                    v139 = v138 * 3.0 * v116;
                    v140 = __sincosf_stret(v132);
                    v141 = sin(v132 + v132);
                    v142 = [CIVector vectorWithX:(v140.__cosval * v140.__cosval) / ((v137 + v137) * v137) + (v140.__sinval * v140.__sinval) / ((v139 + v139) * v139) Y:(v141 / (v139 * 4.0 * v139) - v141 / (v137 * 4.0 * v137)) Z:(v140.__sinval * v140.__sinval) / ((v137 + v137) * v137) + (v140.__cosval * v140.__cosval) / ((v139 + v139) * v139) W:0.7];
                    v143 = [CIVector vectorWithX:v305 Y:v135];
                    _faceVignette = [p_isa _faceVignette];
                    [p_isa[9] extent];
                    v364[0] = v91;
                    v364[1] = v311;
                    v364[2] = v143;
                    v364[3] = v142;
                    v311 = [_faceVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v364, 4), v145, v146, v147, v148}];
                    v362[0] = @"inputImage";
                    v362[1] = @"inputCenter";
                    v363[0] = v91;
                    v363[1] = v124;
                    v362[2] = @"inputStrength";
                    v304 = v307;
                    v303 = vsubq_f64(xmmword_54EA0, vabsq_f64(vdivq_f64(vmulq_n_f64(xmmword_55550, v306), v297)));
                    v149 = v303.f64[1];
                    v150 = v149 + 1.4;
                    v151 = vmovn_s64(vcltzq_f64(v303));
                    v302 = v151.i8[0];
                    if (v151.i8[4])
                    {
                      v150 = 1.4;
                    }

                    v363[2] = [NSNumber numberWithDouble:v150];
                    v362[3] = @"inputRotate";
                    *&v152 = v132;
                    v363[3] = [NSNumber numberWithFloat:v152];
                    v363[4] = &off_7A580;
                    v362[4] = @"inputDarken";
                    v362[5] = @"inputWidth";
                    [(LightingFacePoints *)v308 faceWidth];
                    v363[5] = [NSNumber numberWithDouble:v153 * 0.175];
                    v362[6] = @"inputHeight";
                    [(LightingFacePoints *)v308 faceHeight];
                    v363[6] = [NSNumber numberWithDouble:v154 * 0.35];
                    v155 = [(CIImage *)v91 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:[NSDictionary dictionaryWithObjects:v363 forKeys:v362 count:7]];
                    v360[0] = @"inputImage";
                    v360[1] = @"inputCenter";
                    v361[0] = v155;
                    v361[1] = v124;
                    v361[2] = v301;
                    v360[2] = @"inputEyes";
                    v360[3] = @"inputStrength";
                    v361[3] = [NSNumber numberWithDouble:v307 * 0.85];
                    v360[4] = @"inputRotate";
                    *&v156 = v132;
                    v361[4] = [NSNumber numberWithFloat:v156];
                    v360[5] = @"inputScale";
                    *&v157 = v315;
                    v361[5] = [NSNumber numberWithFloat:v157];
                    v360[6] = @"inputWidth";
                    [(LightingFacePoints *)v308 faceWidth];
                    v361[6] = [NSNumber numberWithDouble:v158 * 0.4];
                    v360[7] = @"inputHeight";
                    [(LightingFacePoints *)v308 faceHeight];
                    v361[7] = [NSNumber numberWithDouble:v159 * 0.35];
                    v160 = [(CIImage *)v155 imageByApplyingFilter:@"CIPortraitLightingContour" withInputParameters:[NSDictionary dictionaryWithObjects:v361 forKeys:v360 count:8]];
                    [(LightingFacePoints *)v308 centerChin];
                    v162 = v161;
                    [(LightingFacePoints *)v308 centerChin];
                    v164 = v163;
                    [(LightingFacePoints *)v308 centerChin];
                    v166 = v165;
                    [(LightingFacePoints *)v308 centerChin];
                    v168 = [CIVector vectorWithX:v162 Y:v164 Z:v166 W:v167];
                    v358[0] = @"inputImage";
                    v358[1] = @"inputCenter";
                    v359[0] = v160;
                    v359[1] = v168;
                    v359[2] = &off_7A6B0;
                    v358[2] = @"inputStrength";
                    v358[3] = @"inputRotate";
                    *&v169 = v132;
                    v359[3] = [NSNumber numberWithFloat:v169];
                    v359[4] = &off_7A580;
                    v358[4] = @"inputDarken";
                    v358[5] = @"inputWidth";
                    [(LightingFacePoints *)v308 faceWidth];
                    v359[5] = [NSNumber numberWithDouble:v170 * 0.035];
                    v358[6] = @"inputHeight";
                    [(LightingFacePoints *)v308 faceWidth];
                    v359[6] = [NSNumber numberWithDouble:v171 * 0.035];
                    v172 = [(CIImage *)v160 imageByApplyingFilter:@"CIPortraitLightingSpot" withInputParameters:[NSDictionary dictionaryWithObjects:v359 forKeys:v358 count:7]];
                    v173 = *([(LightingFacePoints *)v308 rightKickLights]+ 4);
                    *&v173 = (v173 + *[(LightingFacePoints *)v308 leftKickLights]) * 0.5;
                    v174 = *([(LightingFacePoints *)v308 rightKickLights]+ 5);
                    v175 = (v174 + *([(LightingFacePoints *)v308 leftKickLights]+ 1)) * 0.5;
                    v176 = [CIVector vectorWithX:*&v173 Y:v175];
                    v177 = v303.f64[0];
                    v178 = v177;
                    if (v302)
                    {
                      v178 = 0.0;
                    }

                    v356[0] = @"inputCenter";
                    v356[1] = @"inputChin";
                    v357[0] = v176;
                    v357[1] = v168;
                    v356[2] = @"inputStrength";
                    v357[2] = [NSNumber numberWithDouble:v178 * v304];
                    v356[3] = @"inputFaceOrientation";
                    *&v179 = v306;
                    v357[3] = [NSNumber numberWithFloat:v179];
                    v357[4] = v109;
                    v356[4] = @"inputOrientation";
                    v356[5] = @"inputWidth";
                    [(LightingFacePoints *)v308 faceWidth];
                    v357[5] = [NSNumber numberWithFloat:?];
                    v356[6] = @"inputHeight";
                    [(LightingFacePoints *)v308 faceHeight];
                    v357[6] = [NSNumber numberWithFloat:?];
                    v180 = [(CIImage *)v172 imageByApplyingFilter:@"CIPortraitLightingNeckContour" withInputParameters:[NSDictionary dictionaryWithObjects:v357 forKeys:v356 count:7]];
                    [(LightingFacePoints *)v308 centerNose];
                    v181 = [CIVector vectorWithCGPoint:?];
                    [(LightingFacePoints *)v308 bottomShadow];
                    v182 = [CIVector vectorWithCGPoint:?];
                    [p_isa[23] floatValue];
                    v184 = v183 * v307;
                    v354[0] = @"inputImage";
                    v354[1] = @"inputCenter1";
                    v355[0] = v180;
                    v355[1] = v181;
                    v354[2] = @"inputBottom1";
                    v354[3] = @"inputCenter2";
                    v355[2] = v182;
                    v355[3] = v181;
                    v354[4] = @"inputHeight1";
                    [(LightingFacePoints *)v308 faceHeight];
                    v355[4] = [NSNumber numberWithDouble:v185 * 0.45];
                    v354[5] = @"inputWidth1";
                    [(LightingFacePoints *)v308 faceWidth];
                    v355[5] = [NSNumber numberWithDouble:v186 * 0.35];
                    v354[6] = @"inputHeight2";
                    [(LightingFacePoints *)v308 faceHeight];
                    v355[6] = [NSNumber numberWithDouble:v187 * 0.85];
                    v354[7] = @"inputWidth2";
                    [(LightingFacePoints *)v308 faceWidth];
                    v355[7] = [NSNumber numberWithDouble:v188 * 0.55];
                    v355[8] = &off_7A540;
                    v354[8] = @"inputContrast";
                    v354[9] = @"inputBrighten";
                    v355[9] = [NSNumber numberWithDouble:v304 * 1.5];
                    v354[10] = @"inputStrength";
                    *&v189 = v184;
                    v355[10] = [NSNumber numberWithFloat:v189];
                    v190 = [(CIImage *)v180 imageByApplyingFilter:@"CIPortraitLightingFront" withInputParameters:[NSDictionary dictionaryWithObjects:v355 forKeys:v354 count:11]];
                    leftContour = [(LightingFacePoints *)v308 leftContour];
                    v192 = [CIVector vectorWithCGPoint:leftContour[1].x, leftContour[1].y];
                    leftContour2 = [(LightingFacePoints *)v308 leftContour];
                    v194 = [CIVector vectorWithCGPoint:leftContour2[2].x, leftContour2[2].y];
                    leftContour3 = [(LightingFacePoints *)v308 leftContour];
                    v196 = [CIVector vectorWithCGPoint:leftContour3[3].x, leftContour3[3].y];
                    rightContour = [(LightingFacePoints *)v308 rightContour];
                    v198 = [CIVector vectorWithCGPoint:rightContour[1].x, rightContour[1].y];
                    rightContour2 = [(LightingFacePoints *)v308 rightContour];
                    v200 = [CIVector vectorWithCGPoint:rightContour2[2].x, rightContour2[2].y];
                    rightContour3 = [(LightingFacePoints *)v308 rightContour];
                    v202 = [CIVector vectorWithCGPoint:rightContour3[3].x, rightContour3[3].y];
                    v92 = 1.0;
                    v203 = 1.0 - fabs(v306 * 0.85 / 3.14159265);
                    if (v203 <= 0.0)
                    {
                      v203 = 0.0;
                    }

                    v204 = v203;
                    [p_isa[22] floatValue];
                    v206 = (v205 * v307) * v204;
                    v352[0] = @"inputImage";
                    v352[1] = @"inputPt1";
                    v353[0] = v190;
                    v353[1] = v192;
                    v352[2] = @"inputPt2";
                    v352[3] = @"inputPt3";
                    v353[2] = v194;
                    v353[3] = v196;
                    v352[4] = @"inputPt4";
                    v352[5] = @"inputPt5";
                    v353[4] = v198;
                    v353[5] = v200;
                    v353[6] = v202;
                    v352[6] = @"inputPt6";
                    v352[7] = @"inputWidth";
                    *&v207 = v315 * 40.0;
                    v353[7] = [NSNumber numberWithFloat:v207];
                    v353[8] = &off_7A610;
                    v352[8] = @"inputRotate";
                    v352[9] = @"inputOrientation";
                    v353[9] = v109;
                    v352[10] = @"inputStrength";
                    v353[10] = [NSNumber numberWithDouble:v206 * 0.8];
                    v208 = [v190 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v353, v352, 11)}];
                    leftContour4 = [(LightingFacePoints *)v308 leftContour];
                    v210 = [CIVector vectorWithCGPoint:*leftContour4, leftContour4[1]];
                    leftContour5 = [(LightingFacePoints *)v308 leftContour];
                    v212 = [CIVector vectorWithCGPoint:leftContour5[1].x, leftContour5[1].y];
                    leftContour6 = [(LightingFacePoints *)v308 leftContour];
                    v214 = [CIVector vectorWithCGPoint:leftContour6[2].x, leftContour6[2].y];
                    rightContour4 = [(LightingFacePoints *)v308 rightContour];
                    v216 = [CIVector vectorWithCGPoint:rightContour4[2].x, rightContour4[2].y];
                    rightContour5 = [(LightingFacePoints *)v308 rightContour];
                    v218 = [CIVector vectorWithCGPoint:rightContour5[3].x, rightContour5[3].y];
                    rightContour6 = [(LightingFacePoints *)v308 rightContour];
                    v220 = [CIVector vectorWithCGPoint:rightContour6[4].x, rightContour6[4].y];
                    v350[0] = @"inputImage";
                    v350[1] = @"inputPt1";
                    v351[0] = v208;
                    v351[1] = v210;
                    v350[2] = @"inputPt2";
                    v350[3] = @"inputPt3";
                    v351[2] = v212;
                    v351[3] = v214;
                    v350[4] = @"inputPt4";
                    v350[5] = @"inputPt5";
                    v351[4] = v216;
                    v351[5] = v218;
                    v351[6] = v220;
                    v350[6] = @"inputPt6";
                    v350[7] = @"inputWidth";
                    *&v221 = v315 * 40.0;
                    v351[7] = [NSNumber numberWithFloat:v221];
                    v351[8] = &off_7A610;
                    v350[8] = @"inputRotate";
                    v350[9] = @"inputOrientation";
                    v351[9] = v109;
                    v350[10] = @"inputStrength";
                    *&v222 = v206;
                    v351[10] = [NSNumber numberWithFloat:v222];
                    v223 = [v208 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v351, v350, 11)}];
                    leftNose = [(LightingFacePoints *)v308 leftNose];
                    v225 = [CIVector vectorWithCGPoint:*leftNose, leftNose[1]];
                    leftNose2 = [(LightingFacePoints *)v308 leftNose];
                    v227 = [CIVector vectorWithCGPoint:leftNose2[1].x, leftNose2[1].y];
                    leftNose3 = [(LightingFacePoints *)v308 leftNose];
                    v229 = [CIVector vectorWithCGPoint:leftNose3[2].x, leftNose3[2].y];
                    rightNose = [(LightingFacePoints *)v308 rightNose];
                    v231 = [CIVector vectorWithCGPoint:*rightNose, rightNose[1]];
                    rightNose2 = [(LightingFacePoints *)v308 rightNose];
                    v233 = [CIVector vectorWithCGPoint:rightNose2[1].x, rightNose2[1].y];
                    rightNose3 = [(LightingFacePoints *)v308 rightNose];
                    v235 = [CIVector vectorWithCGPoint:rightNose3[2].x, rightNose3[2].y];
                    v348[0] = @"inputImage";
                    v348[1] = @"inputPt1";
                    v349[0] = v223;
                    v349[1] = v225;
                    v348[2] = @"inputPt2";
                    v348[3] = @"inputPt3";
                    v349[2] = v227;
                    v349[3] = v229;
                    v348[4] = @"inputPt4";
                    v348[5] = @"inputPt5";
                    v349[4] = v231;
                    v349[5] = v233;
                    v348[6] = @"inputPt6";
                    v348[7] = @"inputCenterBottom";
                    v349[6] = v235;
                    v349[7] = &off_7A580;
                    v348[8] = @"inputWidth";
                    *&v236 = v315 * 30.0;
                    v349[8] = [NSNumber numberWithFloat:v236];
                    v349[9] = &off_7A610;
                    v348[9] = @"inputRotate";
                    v348[10] = @"inputOrientation";
                    v349[10] = v109;
                    v348[11] = @"inputStrength";
                    v349[11] = [NSNumber numberWithDouble:v304 * -0.3];
                    v237 = [v223 imageByApplyingFilter:@"CIPortraitLightingSide" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v349, v348, 12)}];
                    noseStrobe = [(LightingFacePoints *)v308 noseStrobe];
                    v239 = [CIVector vectorWithCGPoint:*noseStrobe, noseStrobe[1]];
                    noseStrobe2 = [(LightingFacePoints *)v308 noseStrobe];
                    v241 = [CIVector vectorWithCGPoint:noseStrobe2[1].x, noseStrobe2[1].y];
                    v346[0] = @"inputImage";
                    v346[1] = @"inputCenter1";
                    v347[0] = v237;
                    v347[1] = v239;
                    v347[2] = v241;
                    v346[2] = @"inputCenter2";
                    v346[3] = @"inputWidth";
                    *&v242 = v315 * 45.0;
                    v347[3] = [NSNumber numberWithFloat:v242];
                    v347[4] = &off_7A610;
                    v346[4] = @"inputRotate";
                    v346[5] = @"inputOrientation";
                    v347[5] = v109;
                    v346[6] = @"inputStrength";
                    v347[6] = [NSNumber numberWithDouble:v304];
                    v91 = [v237 imageByApplyingFilter:@"CIPortraitLightingStrobe" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v347, v346, 7)}];
                    v7 = v299;
                    v93 = &off_54000;
                    v97 = v298;
                  }

                  v98 = v318 + 1;
                }

                while (v313 != (v318 + 1));
                v313 = [v300 countByEnumeratingWithState:&v321 objects:v365 count:16];
              }

              while (v313);
            }

            if (!v91)
            {
              v91 = v295;
              v23 = v296;
              goto LABEL_89;
            }

            if (v295)
            {
              v91 = [(CIImage *)v91 imageByCompositingOverImage:?];
            }

            v94 = v294 + 1;
            v23 = v296;
          }

          while ((v294 + 1) != v293);
          v293 = [obj countByEnumeratingWithState:&v325 objects:v366 count:16];
          if (v293)
          {
            continue;
          }

          break;
        }

LABEL_89:
        if (v91)
        {
          v15 = [(CIImage *)v91 imageByCompositingOverImage:v23];
        }

        else
        {
          v15 = v23;
        }

        v19 = &NSIntegralRectWithOptions_ptr;
        v90 = v311;
        selfCopy = p_isa;
      }

      else
      {
        v15 = v23;
        v19 = &NSIntegralRectWithOptions_ptr;
        v90 = v311;
      }
    }

    else
    {
      [(CIImage *)selfCopy->super.inputImage extent];
      v75 = v74 * 0.5;
      [(CIImage *)selfCopy->super.inputImage extent];
      v77 = v76 * 0.5;
      v78 = v75;
      v79 = v75 * 0.3;
      v80 = v77;
      v81 = v77 * 0.3;
      v82 = [CIVector vectorWithX:1.0 / ((v79 + v79) * v79) + 0.0 / ((v81 + v81) * v81) Y:0.0 / (v81 * 4.0 * v81) - 0.0 / (v79 * 4.0 * v79) Z:0.0 / ((v79 + v79) * v79) + 1.0 / ((v81 + v81) * v81) W:0.7];
      v83 = [CIVector vectorWithX:v78 Y:v80];
      v84 = v17;
      _faceVignette2 = [(CIPortraitEffectContour *)selfCopy _faceVignette];
      [(CIImage *)selfCopy->super.inputImage extent];
      v345[0] = v15;
      v345[1] = v84;
      v345[2] = v83;
      v345[3] = v82;
      v90 = [_faceVignette2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v345, 4), v86, v87, v88, v89}];
      v291 = 1041865114;
    }

    _applyVignette = [(CIPortraitEffectContour *)selfCopy _applyVignette];
    [(CIImage *)selfCopy->super.inputImage extent];
    v344[0] = v15;
    v344[1] = v90;
    v344[2] = &off_7A580;
    v248 = [_applyVignette applyWithExtent:objc_msgSend(v19[254] arguments:{"arrayWithObjects:count:", v344, 3), v244, v245, v246, v247}];
    [(NSNumber *)selfCopy->inputContour floatValue];
    if (v249 > 0.01)
    {
      [(NSNumber *)selfCopy->super.inputScale floatValue];
      v251 = 220.0 / v250;
      [v248 extent];
      v253 = v251 / v252;
      [(NSNumber *)selfCopy->super.inputScale floatValue];
      v255 = 220.0 / v254;
      [v248 extent];
      v343[0] = [CIVector vectorWithX:v253 Y:v255 / v256];
      v342[0] = @"inputScale";
      v342[1] = @"inputStrength";
      LODWORD(v257) = v291;
      v343[1] = [NSNumber numberWithFloat:v257];
      v248 = [v248 imageByApplyingFilter:@"CIPortraitLocalContrast" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v343, v342, 2)}];
    }

    inputDepthMap = selfCopy->inputDepthMap;
    if (inputDepthMap)
    {
      _prepareDepth = [(CIPortraitEffectContour *)selfCopy _prepareDepth];
      [(CIImage *)inputDepthMap extent];
      inputDepthThreshold = selfCopy->inputDepthThreshold;
      v341[0] = inputDepthMap;
      v341[1] = inputDepthThreshold;
      v265 = [_prepareDepth applyWithExtent:objc_msgSend(v19[254] arguments:{"arrayWithObjects:count:", v341, 2), v261, v262, v263, v264}];
      [(CIImage *)selfCopy->inputDepthMap extent];
      v267 = v266;
      [(CIImage *)selfCopy->super.inputImage extent];
      if (v267 != v268)
      {
        [(CIImage *)selfCopy->super.inputImage extent];
        v270 = v269;
        [(CIImage *)selfCopy->inputDepthMap extent];
        v272 = v271;
        v273 = v270 / v272;
        [(CIImage *)selfCopy->super.inputImage extent];
        v275 = v274;
        [(CIImage *)selfCopy->inputDepthMap extent];
        v277 = v276;
        CGAffineTransformMakeScale(&v371, v273, (v275 / v277));
        v265 = [v265 imageByApplyingTransform:&v371];
      }

      v278 = [v248 imageByApplyingFilter:@"CIVibrance" withInputParameters:&off_7DE50];
      _blendSingleChannelMask = [(CIPortraitEffectContour *)selfCopy _blendSingleChannelMask];
      [(CIImage *)selfCopy->super.inputImage extent];
      v280 = selfCopy->super.inputImage;
      v340[0] = v278;
      v340[1] = v280;
      v340[2] = v265;
      v248 = [_blendSingleChannelMask applyWithExtent:objc_msgSend(v19[254] arguments:{"arrayWithObjects:count:", v340, 3), v281, v282, v283, v284}];
    }

    [(NSNumber *)selfCopy->super.inputStrength floatValue];
    if (v285 < 1.0)
    {
      _mixKernel = [(CIPortraitEffectContour *)selfCopy _mixKernel];
      [(CIImage *)selfCopy->super.inputImage extent];
      v339[0] = selfCopy->super.inputImage;
      v339[1] = v248;
      v339[2] = selfCopy->super.inputStrength;
      v248 = [_mixKernel applyWithExtent:objc_msgSend(v19[254] arguments:{"arrayWithObjects:count:", v339, 3), v287, v288, v289, v290}];
    }

    return [v248 _imageByRenderingToIntermediate];
  }

  return result;
}

@end