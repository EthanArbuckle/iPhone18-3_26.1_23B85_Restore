@interface CISmartGradient
+ (id)customAttributes;
- (id)_scaleHuePi;
- (id)_scaleHueZeroOne;
- (id)findPeakHue:(id)hue chromaMin:(float)min hueRange:(float)range;
- (id)findPeakHue_Renderless:(id)renderless chromaMin:(id)min hueRange:(id)range;
- (id)outputImage;
@end

@implementation CISmartGradient

+ (id)customAttributes
{
  v16[0] = kCIAttributeFilterCategories;
  v15[0] = kCICategoryColorEffect;
  v15[1] = kCICategoryVideo;
  v15[2] = kCICategoryStillImage;
  v15[3] = kCICategoryApplePrivate;
  v17[0] = [NSArray arrayWithObjects:v15 count:4];
  v17[1] = @"13";
  v16[1] = kCIAttributeFilterAvailable_iOS;
  v16[2] = kCIAttributeFilterAvailable_Mac;
  v17[2] = @"10.15";
  v16[3] = @"inputReturnSmartColor";
  v13[0] = kCIAttributeDefault;
  v13[1] = kCIAttributeType;
  v14[0] = &__kCFBooleanFalse;
  v14[1] = kCIAttributeTypeScalar;
  v17[3] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[4] = @"inputHueRange";
  v11[0] = kCIAttributeDefault;
  v11[1] = kCIAttributeMax;
  v12[0] = &off_79AF0;
  v12[1] = &off_79B00;
  v11[2] = kCIAttributeMin;
  v11[3] = kCIAttributeType;
  v12[2] = &off_79B10;
  v12[3] = kCIAttributeTypeScalar;
  v17[4] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v16[5] = @"inputChromaMin";
  v9[0] = kCIAttributeDefault;
  v9[1] = kCIAttributeMax;
  v10[0] = &off_79B10;
  v10[1] = &off_79B20;
  v9[2] = kCIAttributeMin;
  v9[3] = kCIAttributeType;
  v10[2] = &off_79B10;
  v10[3] = kCIAttributeTypeScalar;
  v17[5] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v16[6] = @"inputMaxDimension";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeType;
  v8[0] = &off_79B30;
  v8[1] = kCIAttributeTypeScalar;
  v17[6] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v16[7] = @"inputWidth";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeType;
  v6[0] = &off_79B40;
  v6[1] = kCIAttributeTypeScalar;
  v17[7] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v16[8] = @"inputHeight";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeType;
  v4[0] = &off_7A848;
  v4[1] = kCIAttributeTypeScalar;
  v17[8] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:9];
}

- (id)_scaleHueZeroOne
{
  if (qword_8CB68 != -1)
  {
    sub_4A3E4();
  }

  return qword_8CB60;
}

- (id)_scaleHuePi
{
  if (qword_8CB78 != -1)
  {
    sub_4A3F8();
  }

  return qword_8CB70;
}

- (id)findPeakHue:(id)hue chromaMin:(float)min hueRange:(float)range
{
  _scaleHueZeroOne = [(CISmartGradient *)self _scaleHueZeroOne];
  [hue extent];
  v151[0] = hue;
  v151[1] = &off_79B50;
  v14 = [_scaleHueZeroOne applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v151, 2), v10, v11, v12, v13}];
  v149 = kCIContextWorkingFormat;
  v150 = [NSNumber numberWithInt:kCIFormatRGBAh];
  v15 = [CIContext contextWithOptions:[NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1]];
  [hue extent];
  v153 = CGRectIntegral(v152);
  x = v153.origin.x;
  y = v153.origin.y;
  width = v153.size.width;
  height = v153.size.height;
  v20 = v153.size.width;
  v21 = v153.size.height;
  v22 = 4 * v153.size.width;
  v23 = [NSMutableData dataWithLength:v22 * v153.size.height];
  bytes = [(NSMutableData *)v23 bytes];
  mutableBytes = [(NSMutableData *)v23 mutableBytes];
  v26 = kCIFormatRGBA8;
  [(CIContext *)v15 render:v14 toBitmap:mutableBytes rowBytes:v22 bounds:kCIFormatRGBA8 format:0 colorSpace:x, y, width, height];
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v27 = vcvtad_u64_f64(min * 255.0);
  if (v21 < 1)
  {
    goto LABEL_11;
  }

  v28 = 0;
  v29 = (bytes + 2);
  v30 = 1;
  do
  {
    v31 = v20 & 0x7FFFFFFF;
    v32 = v29;
    if (v20 >= 1)
    {
      do
      {
        v33 = *v32;
        v34 = vcvtd_n_f64_u32(*(v32 - 1), 3uLL);
        if (v33 > v27)
        {
          v30 = 0;
          v35 = vcvtmd_s64_f64(v34);
          *(&v141 + v35) = *(&v141 + v35) + 1.0;
        }

        if (v33 >= v27)
        {
          v36 = vcvtmd_s64_f64(v34);
          *(&v133 + v36) = *(&v133 + v36) + 1.0;
        }

        v32 += 4;
        --v31;
      }

      while (v31);
    }

    ++v28;
    v29 += v22;
  }

  while (v28 != (v21 & 0x7FFFFFFF));
  if (v30)
  {
LABEL_11:
    v37 = 0;
    v145 = v137;
    v146 = v138;
    v147 = v139;
    v148 = v140;
    v141 = v133;
    v142 = v134;
    v143 = v135;
    v144 = v136;
  }

  else
  {
    v37 = 1;
  }

  v38 = 0;
  v39 = 0.0;
  v40 = 0.0;
  do
  {
    if (*(&v141 + v38) > v40)
    {
      v40 = *(&v141 + v38);
      v39 = v38;
    }

    ++v38;
  }

  while (v38 != 32);
  bzero(v132, 0xC00uLL);
  if (v21 < 1)
  {
    v63 = 0.0;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = range * 3.14159265 / 180.0;
    v45 = ((v39 / 31.0) + (v39 / 31.0)) * 3.14159265 + -3.14159265;
    v46 = v45;
    v47 = (v44 * 0.5);
    v48 = v47 + -3.14159265;
    v49 = 3.14159265 - v47;
    v50 = (bytes + 2);
    v51 = vdup_n_s32(0x3B808081u);
    do
    {
      v52 = v20 & 0x7FFFFFFF;
      v53 = v50;
      if (v20 >= 1)
      {
        do
        {
          v41.i8[0] = *(v53 - 1);
          v41.f32[0] = v41.u32[0];
          v54 = ((v41.f32[0] * 0.0039216) + (v41.f32[0] * 0.0039216)) * 3.14159265 + -3.14159265;
          v55 = v54;
          if ((v48 <= v46 || v49 >= v55) && (v49 >= v46 || v48 <= v55))
          {
            v56 = v45 - v54;
          }

          else
          {
            v56 = v45 + v54;
          }

          v57 = *v53;
          v58 = fabsf(v56);
          if (v58 < v44)
          {
            v59 = v37;
          }

          else
          {
            v59 = 0;
          }

          v60 = v59 == 1 && v57 > v27;
          if (v60 || (v58 > v44 ? (v61 = 1) : (v61 = v37), (v61 & 1) == 0 && v57 >= v27))
          {
            v62 = &v132[3 * *(v53 - 2)];
            *v62 = *v62 + 1.0;
            v41.f32[1] = v57;
            *(v62 + 1) = vmla_f32(*(v62 + 1), v51, v41);
            ++v43;
          }

          v53 += 4;
          --v52;
        }

        while (v52);
      }

      ++v42;
      v50 += v22;
    }

    while (v42 != (v21 & 0x7FFFFFFF));
    v63 = v43;
  }

  if ([(NSNumber *)self->inputReturnSmartColor BOOLValue])
  {
    v64 = 0;
    v65 = 0.0;
    v66 = v132;
    v67 = 0.0;
    do
    {
      v68 = *v66;
      v66 += 3;
      v69 = v68;
      if (v68 > v67)
      {
        v67 = v69;
        v65 = v64;
      }

      ++v64;
    }

    while (v64 != 256);
    v70 = &v132[3 * v65];
    v71 = v70[1] / *v70;
    v72 = v70[2] / *v70;
    v73 = v65 / 255.0;
    v74 = CGColorSpaceCreateWithName(kCGColorSpaceLinearSRGB);
    v75 = [CIColor colorWithRed:v74 green:v73 blue:v71 alpha:v72 colorSpace:1.0];
    CGColorSpaceRelease(v74);
    v76 = [CIImage imageWithColor:v75];
    _scaleHuePi = [(CISmartGradient *)self _scaleHuePi];
    [(CIImage *)v76 extent];
    v131[0] = v76;
    v131[1] = &off_79B50;
    v82 = [objc_msgSend(_scaleHuePi applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v131, 2), v78, v79, v80, v81), "imageByApplyingFilter:withInputParameters:", @"CIIPTtoSRGB", &off_7C438}];
    [(NSNumber *)self->inputWidth floatValue];
    v84 = v83;
    [(NSNumber *)self->inputHeight floatValue];
    return [v82 imageByCroppingToRect:{0.0, 0.0, v84, v85}];
  }

  else
  {
    [(NSNumber *)self->inputHeight floatValue];
    v88 = v87 / v63;
    v89 = vcvtas_u32_f32((v87 / v63) * v63);
    v90 = [[NSMutableData alloc] initWithLength:4 * v89];
    mutableBytes2 = [v90 mutableBytes];
    v92 = 0;
    v93 = 0;
    v94 = mutableBytes2 + 1;
    v95 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      v96 = &v132[3 * v92];
      v97 = vcvtas_u32_f32(v88 * *v96);
      if (v97)
      {
        v98 = vdivq_f64(vmulq_f64(vcvtq_f64_f32(*(v96 + 1)), v95), vdupq_lane_s64(COERCE__INT64(*v96), 0));
        v99 = vbicq_s8(v98, vcltzq_f64(v98));
        v100 = vmovn_s64(vcgtq_f64(v95, v99));
        v101 = v100.i8[4];
        if (v100.i8[0])
        {
          v102 = v99.f64[0];
        }

        else
        {
          v102 = 255.0;
        }

        v103 = llround(v102);
        v104 = v99.f64[1];
        if ((v101 & 1) == 0)
        {
          v104 = 255.0;
        }

        v105 = llround(v104);
        v106 = &v94[4 * v93];
        v107 = 1;
        do
        {
          *(v106 - 1) = v92;
          *v106 = v103;
          v106[1] = v105;
          v108 = v107 + 1;
          v106[2] = -1;
          if (v107 >= v97)
          {
            break;
          }

          v109 = v93 + v107;
          v106 += 4;
          ++v107;
        }

        while (v109 <= v89);
        v93 = v93 + v108 - 1;
      }

      if (v92 > 0xFE)
      {
        break;
      }

      ++v92;
    }

    while (v93 <= v89);
    v110 = v93 - 1;
    v111 = (v93 - 1);
    v112 = CGColorSpaceCreateWithName(kCGColorSpaceLinearSRGB);
    v111 = [CIImage imageWithBitmapData:v90 bytesPerRow:4 size:v26 format:v112 colorSpace:1.0, v111];
    CGColorSpaceRelease(v112);
    if (v111)
    {
      [(CIImage *)v111 extent];
      imageByClampingToExtent = [[(CIImage *)v111 imageBySettingAlphaOneInExtent:?] imageByClampingToExtent];
      [(NSNumber *)self->inputHeight floatValue];
      v129 = @"inputScale";
      *&v116 = v110 / v115;
      v130 = [NSNumber numberWithFloat:v116];
      v117 = [(CIImage *)imageByClampingToExtent imageByApplyingFilter:@"CISoftCubicUpsample" withInputParameters:[NSDictionary dictionaryWithObjects:&v130 forKeys:&v129 count:1]];
      [(NSNumber *)self->inputWidth floatValue];
      v119 = v118;
      [(NSNumber *)self->inputHeight floatValue];
      v121 = v120;
      v120 = [(CIImage *)v117 imageByCroppingToRect:0.0, 0.0, v119, v120];
      _scaleHuePi2 = [(CISmartGradient *)self _scaleHuePi];
      [(CIImage *)v120 extent];
      v128[0] = v120;
      v128[1] = &off_79B50;
      return [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(_scaleHuePi2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v128, 2), v124, v125, v126, v127), "imageByApplyingFilter:withInputParameters:", @"CIIPTtoSRGB", &off_7C460), "imageByClampingToExtent"), "imageByApplyingGaussianBlurWithSigma:", 500.0), "imageByCroppingToRect:", 0.0, 0.0, v119, v121), "imageByApplyingFilter:withInputParameters:", @"CIDither", &off_7C488}];
    }

    else
    {
      return 0;
    }
  }
}

- (id)findPeakHue_Renderless:(id)renderless chromaMin:(id)min hueRange:(id)range
{
  [renderless extent];
  if (renderless && (v13 = v9, v14 = v10, v15 = v11, v16 = v12, !CGRectIsInfinite(*&v9)))
  {
    memset(&v55, 0, sizeof(v55));
    [renderless extent];
    v19 = v18;
    [renderless extent];
    CGAffineTransformMakeScale(&v55, v19, v20);
    v70 = v55;
    v71.origin.x = v13;
    v71.origin.y = v14;
    v71.size.width = v15;
    v71.size.height = v16;
    v72 = CGRectApplyAffineTransform(v71, &v70);
    v69 = kCIInputExtentKey;
    *&v70.a = [CIVector vectorWithCGRect:v72.origin.x, v72.origin.y, v72.size.width, v72.size.height];
    v17 = [renderless imageByApplyingFilter:@"CIAreaAverage" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v70, &v69, 1)}];
  }

  else
  {
    v17 = 0;
  }

  _scaleHueZeroOne = [(CISmartGradient *)self _scaleHueZeroOne];
  [renderless extent];
  v68[0] = renderless;
  v68[1] = &off_79B50;
  v67[0] = [_scaleHueZeroOne applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v68, 2), v22, v23, v24, v25}];
  v67[1] = v17;
  v26 = [NSArray arrayWithObjects:v67 count:2];
  [-[NSArray objectAtIndexedSubscript:](v26 objectAtIndexedSubscript:{0), "extent"}];
  v66[0] = [CIVector vectorWithCGRect:?];
  [-[NSArray objectAtIndexedSubscript:](v26 objectAtIndexedSubscript:{1), "extent"}];
  v66[1] = [CIVector vectorWithCGRect:?];
  v27 = [NSArray arrayWithObjects:v66 count:2];
  v64[0] = @"imageExtents";
  v64[1] = @"chromaMin";
  v65[0] = v27;
  v65[1] = min;
  v64[2] = @"hueRange";
  v65[2] = range;
  v28 = [CIHueChromaHistProcessor applyWithExtent:v26 inputs:[NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3] arguments:0 error:0.0, 0.0, 256.0, 1.0];
  if ([(NSNumber *)self->inputReturnSmartColor BOOLValue])
  {
    v63 = v28;
    v29 = [NSArray arrayWithObjects:&v63 count:1];
    v61 = @"imageExtent";
    [v28 extent];
    v62 = [CIVector vectorWithCGRect:?];
    v30 = [+[CIAveColorProcessor applyWithExtent:inputs:arguments:error:](CIAveColorProcessor applyWithExtent:v29 inputs:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary arguments:"dictionaryWithObjects:forKeys:count:" error:{&v62, &v61, 1), 0, 0.0, 0.0, 1.0, 1.0), "imageByClampingToExtent"}];
    _scaleHuePi = [(CISmartGradient *)self _scaleHuePi];
    [v30 extent];
    v60[0] = v30;
    v60[1] = &off_79B50;
    v36 = [objc_msgSend(_scaleHuePi applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v60, 2), v32, v33, v34, v35), "imageByApplyingFilter:withInputParameters:", @"CIIPTtoSRGB", &off_7C4B0}];
    [(NSNumber *)self->inputWidth floatValue];
    v38 = v37;
    [(NSNumber *)self->inputHeight floatValue];
    return [v36 imageByCroppingToRect:{0.0, 0.0, v38, v39}];
  }

  else
  {
    intValue = [(NSNumber *)self->inputHeight intValue];
    v59 = v28;
    v42 = [NSArray arrayWithObjects:&v59 count:1];
    v57 = @"imageExtent";
    [v28 extent];
    v58 = [CIVector vectorWithCGRect:?];
    result = [CIColorGradientProcessor applyWithExtent:v42 inputs:[NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1] arguments:0 error:0.0, 0.0, 1.0, intValue];
    if (result)
    {
      v43 = result;
      [result extent];
      v44 = [objc_msgSend(v43 "imageBySettingAlphaOneInExtent:"imageByClampingToExtent"")];
      [(NSNumber *)self->inputWidth floatValue];
      v46 = v45;
      [(NSNumber *)self->inputHeight floatValue];
      v48 = v47;
      v49 = [v44 imageByCroppingToRect:{0.0, 0.0, v46, v47}];
      _scaleHuePi2 = [(CISmartGradient *)self _scaleHuePi];
      [v49 extent];
      v56[0] = v49;
      v56[1] = &off_79B50;
      return [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(_scaleHuePi2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v56, 2), v51, v52, v53, v54), "imageByApplyingFilter:withInputParameters:", @"CIIPTtoSRGB", &off_7C4D8), "imageByClampingToExtent"), "imageByApplyingGaussianBlurWithSigma:", 500.0), "imageByCroppingToRect:", 0.0, 0.0, v46, v48), "imageByApplyingFilter:withInputParameters:", @"CIDither", &off_7C500}];
    }
  }

  return result;
}

- (id)outputImage
{
  result = self->inputImage;
  if (result)
  {
    [result extent];
    v5 = v4;
    [(CIImage *)self->inputImage extent];
    if (v5 >= v6)
    {
      v5 = v6;
    }

    [(NSNumber *)self->inputMaxDimension floatValue];
    v8 = v7 / v5;
    inputImage = self->inputImage;
    if (v8 < 1.0)
    {
      CGAffineTransformMakeScale(&v10, v8, v8);
      inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v10];
    }

    result = [(CISmartGradient *)self findPeakHue_Renderless:[(CIImage *)inputImage imageByApplyingFilter:@"CISRGBtoIPT" withInputParameters:&off_7C528] chromaMin:self->inputChromaMin hueRange:self->inputHueRange];
    if (!result)
    {
      return self->inputImage;
    }
  }

  return result;
}

@end