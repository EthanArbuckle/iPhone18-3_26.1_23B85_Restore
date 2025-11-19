@interface CIDynamicRender
+ (id)customAttributes;
- ($3CC2805F0189FCCE51047C0D2B5A52A9)calcColorStats:(SEL)a3;
- (id)_rectToHueChroma;
- (id)_softExposure;
- (id)_srgbToIPT;
- (id)captureType:(id)a3;
- (id)outputImage;
- (id)overlayText:(id)a3 strength:(float)a4 captureType:(int)a5 bv:(float)a6;
- (id)sceneLuminance:(id)a3;
- (id)writeDebugData:(id)a3;
@end

@implementation CIDynamicRender

+ (id)customAttributes
{
  v34[0] = kCIAttributeFilterCategories;
  v33[0] = kCICategoryColorAdjustment;
  v33[1] = kCICategoryVideo;
  v33[2] = kCICategoryStillImage;
  v33[3] = kCICategoryApplePrivate;
  v35[0] = [NSArray arrayWithObjects:v33 count:4];
  v34[1] = @"inputStrength";
  v31[0] = kCIAttributeDefault;
  v31[1] = kCIAttributeMax;
  v32[0] = &off_7A310;
  v32[1] = &off_7A320;
  v31[2] = kCIAttributeMin;
  v31[3] = kCIAttributeType;
  v32[2] = &off_7A330;
  v32[3] = kCIAttributeTypeScalar;
  v35[1] = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v34[2] = @"inputIsSunsetSunrise";
  v29[0] = kCIAttributeDefault;
  v29[1] = kCIAttributeMax;
  v30[0] = &off_7A340;
  v30[1] = &off_7A350;
  v29[2] = kCIAttributeMin;
  v29[3] = kCIAttributeType;
  v30[2] = &off_7A340;
  v30[3] = kCIAttributeTypeScalar;
  v35[2] = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v34[3] = @"inputLocalLight";
  v27[0] = kCIAttributeDefault;
  v27[1] = kCIAttributeMax;
  v28[0] = &off_7A360;
  v28[1] = &off_7A350;
  v27[2] = kCIAttributeMin;
  v27[3] = kCIAttributeType;
  v28[2] = &off_7A340;
  v28[3] = kCIAttributeTypeScalar;
  v35[3] = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
  v34[4] = @"inputShadows";
  v25[0] = kCIAttributeDefault;
  v25[1] = kCIAttributeMax;
  v26[0] = &off_7A370;
  v26[1] = &off_7A350;
  v25[2] = kCIAttributeMin;
  v25[3] = kCIAttributeType;
  v26[2] = &off_7A340;
  v26[3] = kCIAttributeTypeScalar;
  v35[4] = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
  v34[5] = @"inputExposure";
  v23[0] = kCIAttributeDefault;
  v23[1] = kCIAttributeMax;
  v24[0] = &off_7A380;
  v24[1] = &off_7A350;
  v23[2] = kCIAttributeMin;
  v23[3] = kCIAttributeType;
  v24[2] = &off_7A340;
  v24[3] = kCIAttributeTypeScalar;
  v35[5] = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  v34[6] = @"inputBrightness";
  v21[0] = kCIAttributeDefault;
  v21[1] = kCIAttributeMax;
  v22[0] = &off_7A390;
  v22[1] = &off_7A350;
  v21[2] = kCIAttributeMin;
  v21[3] = kCIAttributeType;
  v22[2] = &off_7A330;
  v22[3] = kCIAttributeTypeScalar;
  v35[6] = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v34[7] = @"inputHighlights";
  v19[0] = kCIAttributeDefault;
  v19[1] = kCIAttributeMax;
  v20[0] = &off_7A3A0;
  v20[1] = &off_7A350;
  v19[2] = kCIAttributeMin;
  v19[3] = kCIAttributeType;
  v20[2] = &off_7A330;
  v20[3] = kCIAttributeTypeScalar;
  v35[7] = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v34[8] = @"inputContrast";
  v17[0] = kCIAttributeDefault;
  v17[1] = kCIAttributeMax;
  v18[0] = &off_7A3B0;
  v18[1] = &off_7A350;
  v17[2] = kCIAttributeMin;
  v17[3] = kCIAttributeType;
  v18[2] = &off_7A330;
  v18[3] = kCIAttributeTypeScalar;
  v35[8] = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  v34[9] = @"inputWhiteBalance";
  v15[0] = kCIAttributeDefault;
  v15[1] = kCIAttributeMax;
  v16[0] = &off_7A350;
  v16[1] = &off_7A350;
  v15[2] = kCIAttributeMin;
  v15[3] = kCIAttributeType;
  v16[2] = &off_7A340;
  v16[3] = kCIAttributeTypeScalar;
  v35[9] = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
  v34[10] = @"inputSaturation";
  v13[0] = kCIAttributeDefault;
  v13[1] = kCIAttributeMax;
  v14[0] = &off_7A3C0;
  v14[1] = &off_7A320;
  v13[2] = kCIAttributeMin;
  v13[3] = kCIAttributeType;
  v14[2] = &off_7A340;
  v14[3] = kCIAttributeTypeScalar;
  v35[10] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  v34[11] = @"inputBrightSat";
  v11[0] = kCIAttributeDefault;
  v11[1] = kCIAttributeMax;
  v12[0] = &off_7A3D0;
  v12[1] = &off_7A350;
  v11[2] = kCIAttributeMin;
  v11[3] = kCIAttributeType;
  v12[2] = &off_7A340;
  v12[3] = kCIAttributeTypeScalar;
  v35[11] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v34[12] = @"inputConfidence";
  v9[0] = kCIAttributeDefault;
  v9[1] = kCIAttributeMax;
  v10[0] = &off_7A350;
  v10[1] = &off_7A350;
  v9[2] = kCIAttributeMin;
  v9[3] = kCIAttributeType;
  v10[2] = &off_7A340;
  v10[3] = kCIAttributeTypeScalar;
  v35[12] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v34[13] = @"inputLowConfidence";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeMax;
  v8[0] = &off_7A3E0;
  v8[1] = &off_7A350;
  v7[2] = kCIAttributeMin;
  v7[3] = kCIAttributeType;
  v8[2] = &off_7A340;
  v8[3] = kCIAttributeTypeScalar;
  v35[13] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  v34[14] = @"inputHighConfidence";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeMax;
  v6[0] = &off_7A3F0;
  v6[1] = &off_7A350;
  v5[2] = kCIAttributeMin;
  v5[3] = kCIAttributeType;
  v6[2] = &off_7A340;
  v6[3] = kCIAttributeTypeScalar;
  v35[14] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v34[15] = @"inputMaxFaceSize";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeMax;
  v4[0] = &off_7A400;
  v4[1] = &off_7A350;
  v3[2] = kCIAttributeMin;
  v3[3] = kCIAttributeType;
  v4[2] = &off_7A340;
  v4[3] = kCIAttributeTypeScalar;
  v35[15] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:16];
}

- (id)_srgbToIPT
{
  if (qword_8CEE8 != -1)
  {
    sub_4B3A4();
  }

  return qword_8CEE0;
}

- (id)_rectToHueChroma
{
  if (qword_8CEF8 != -1)
  {
    sub_4B3B8();
  }

  return qword_8CEF0;
}

- ($3CC2805F0189FCCE51047C0D2B5A52A9)calcColorStats:(SEL)a3
{
  v4 = __chkstk_darwin(retstr, self, a3, a4);
  v6 = v5;
  v7 = v4;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  v75 = v8;
  context = objc_autoreleasePoolPush();
  v9 = [v7 _srgbToIPT];
  [v6 extent];
  v83 = v6;
  v14 = [v9 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v83, 1), v10, v11, v12, v13}];
  v15 = [v7 _rectToHueChroma];
  [v14 extent];
  v82 = v14;
  v72 = [v15 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v82, 1), v16, v17, v18, v19}];
  v80 = kCIContextWorkingFormat;
  v81 = [NSNumber numberWithInt:kCIFormatRGBAh];
  v73 = [CIContext contextWithOptions:[NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1]];
  [v72 extent];
  v85 = CGRectIntegral(v84);
  x = v85.origin.x;
  y = v85.origin.y;
  width = v85.size.width;
  height = v85.size.height;
  v24 = v85.size.width;
  v25 = v85.size.height;
  v26 = 4 * v85.size.width;
  bzero(v79, 0xB40uLL);
  bzero(v77, 0xB40uLL);
  bzero(v78, 0x320uLL);
  bzero(v76, 0x320uLL);
  v27 = [NSMutableData dataWithLength:v26 * v25];
  v28 = [(NSMutableData *)v27 bytes];
  v29 = CGColorSpaceCreateWithName(kCGColorSpaceLinearSRGB);
  v30 = [(NSMutableData *)v27 mutableBytes];
  [(CIContext *)v73 render:v72 toBitmap:v30 rowBytes:v26 bounds:kCIFormatRGBA8 format:v29 colorSpace:x, y, width, height];
  CGColorSpaceRelease(v29);
  if (v25)
  {
    v34 = 0;
    v35 = v28 + 2;
    do
    {
      v36 = v35;
      for (i = v24; i; --i)
      {
        LOBYTE(v31) = *(v36 - 2);
        LOBYTE(v32) = *(v36 - 1);
        v38 = *&v32 / 255.0;
        LOBYTE(v33) = *v36;
        v39 = llround(v38 * 359.0);
        v40 = v33 / 255.0;
        *&v79[v39] = *&v79[v39] + 1.0;
        v41 = v40;
        v33 = 0x4059000000000000;
        v42 = llround(v41 * 100.0 + -1.0);
        v43 = v42 & ~(v42 >> 31);
        v44 = *&v31 / 255.0;
        v32 = v78[v43] + 1.0;
        v78[v43] = v32;
        v31 = v44;
        if (v31 > 0.9)
        {
          v77[v39] = v77[v39] + 1.0;
          v31 = v76[v43] + 1.0;
          v76[v43] = v31;
        }

        v36 += 4;
      }

      ++v34;
      v35 += v26;
    }

    while (v34 != v25);
  }

  v45 = 0;
  v46 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  do
  {
    v52 = __sincos_stret((v45 / 180.0 + -1.0) * 3.14159265);
    v53 = *&v79[v45];
    v51 = v51 + v52.__cosval * v53;
    v50 = v50 + v52.__sinval * v53;
    v54 = v77[v45];
    v49 = v49 + v53;
    v48 = v48 + v52.__cosval * v54;
    v47 = v47 + v52.__sinval * v54;
    v46 = v46 + v53;
    ++v45;
  }

  while (v45 != 360);
  v55 = v48 / v46;
  v56 = v47 / v46;
  v57 = atan2(v50 / v49, v51 / v49);
  v58 = atan2(v56, v55);
  v59 = log(v50 / v49 * (v50 / v49) + v51 / v49 * (v51 / v49));
  v60 = 0;
  *v75 = v57;
  *(v75 + 8) = sqrt(-v59);
  *(v75 + 24) = v58;
  v61 = 0.0;
  v62 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  do
  {
    v65 = v60 / 99.0;
    v66 = v78[v60];
    v64 = v64 + v65 * v66;
    v63 = v63 + v66;
    v67 = v76[v60];
    v62 = v62 + v65 * v67;
    v61 = v61 + v67;
    ++v60;
  }

  while (v60 != 100);
  *(v75 + 16) = v64 / v63;
  v68 = v62 / v61;
  v69 = v61 <= 0.0;
  v70 = 0.0;
  if (!v69)
  {
    v70 = v68;
  }

  *(v75 + 32) = v70;
  objc_autoreleasePoolPop(context);
  return result;
}

- (id)sceneLuminance:(id)a3
{
  v3 = [a3 properties];
  if (!v3)
  {
    return &off_7A410;
  }

  v4 = [v3 objectForKey:@"{Exif}"];
  if (!v4)
  {
    return &off_7A410;
  }

  v5 = [v4 objectForKey:@"BrightnessValue"];
  if (!v5)
  {
    return &off_7A410;
  }

  [v5 doubleValue];
  v7 = exp2(v6) * 12.5;

  return [NSNumber numberWithDouble:v7];
}

- (id)captureType:(id)a3
{
  v3 = [a3 properties];
  if (!v3)
  {
    return &off_7A8D8;
  }

  v4 = [v3 objectForKey:@"{MakerApple}"];
  v5 = &off_7A8D8;
  if (v4)
  {
    v6 = [v4 objectForKey:@"20"];
    if (v6)
    {
      return v6;
    }
  }

  return v5;
}

- (id)writeDebugData:(id)a3
{
  if (qword_8CF00 != -1)
  {
    sub_4B3CC();
  }

  if (dword_8C850 < 0)
  {
    return a3;
  }

  return [NSNumber numberWithInt:?];
}

- (id)overlayText:(id)a3 strength:(float)a4 captureType:(int)a5 bv:(float)a6
{
  [a3 extent];
  v11 = v10;
  [a3 extent];
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  if (v14 >= 2320.0)
  {
    v15 = @"full";
  }

  else
  {
    v15 = @"proxy";
  }

  if (a5 == 11)
  {
    v16 = @"night mode";
  }

  else
  {
    v16 = @"normal";
  }

  v17 = objc_alloc_init(NSNumberFormatter);
  [v17 setNumberStyle:1];
  [v17 setMaximumFractionDigits:3];
  *&v18 = a4;
  v19 = [v17 stringFromNumber:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v18)}];
  *&v20 = a6;
  v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Strength: %@, CaptureType: %@, BV: %@, size: %@", v19, v16, [v17 stringFromNumber:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v20)}], v15);

  v22 = [CIFilter filterWithName:@"CITextImageGenerator"];
  [(CIFilter *)v22 setValue:v21 forKey:@"inputText"];
  [(CIFilter *)v22 setValue:&off_7A8F0 forKey:@"inputFontSize"];
  v23 = [(CIFilter *)v22 outputImage];
  v24 = [CIImage imageWithColor:[CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]];
  [(CIImage *)v23 extent];
  v25 = [(CIImage *)v23 imageByCompositingOverImage:[(CIImage *)v24 imageByCroppingToRect:?]];

  return [(CIImage *)v25 imageByCompositingOverImage:a3];
}

- (id)_softExposure
{
  if (qword_8CF10 != -1)
  {
    sub_4B3E0();
  }

  return qword_8CF08;
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  [(CIImage *)inputImage extent];
  v5 = v4;
  [(CIImage *)self->inputImage extent];
  if (v5 >= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = 1024.0 / v7;
  v9 = self->inputImage;
  CGAffineTransformMakeScale(&v128, v8, v8);
  v10 = [(CIImage *)v9 imageByApplyingTransform:&v128 highQualityDownsample:1];
  v11 = [(CIDynamicRender *)self sceneLuminance:self->inputImage];
  v12 = [(CIDynamicRender *)self captureType:self->inputImage];
  memset(&v128, 0, 40);
  [(CIDynamicRender *)self calcColorStats:v10];
  v13 = self->inputImage;
  v14 = [(CIImage *)v10 smartToneStatistics];
  v15 = [(CIImage *)v10 localLightStatisticsNoProxy];
  [objc_msgSend(v14 objectForKeyedSubscript:{@"p25", "floatValue"}];
  v17 = v16;
  [objc_msgSend(v14 objectForKeyedSubscript:{@"p50", "floatValue"}];
  v19 = v18;
  [objc_msgSend(v14 objectForKeyedSubscript:{@"p98", "floatValue"}];
  v21 = v20;
  v22 = 0.8;
  if (v19 < 0.18 && v20 < 0.85)
  {
    v23 = 0.18 - v19;
    v22 = powf(v23, 0.75) + 1.0;
  }

  v24 = v21 - v17;
  v25 = 1.5;
  v121 = 1.0;
  if ((v21 - v17) <= 0.5)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 1.5;
  }

  [objc_msgSend(v14 objectForKeyedSubscript:{@"highKey", "floatValue"}];
  v28 = 1.25;
  if (*&v27 >= 0.5)
  {
    v27 = v24;
    v28 = 0.75;
    if (v24 >= 0.4)
    {
      v27 = (v19 - v17);
      v25 = 1.0;
      if (v27 <= 0.2)
      {
        v28 = 1.0;
      }

      else
      {
        v27 = v22 * 1.1;
        v22 = v27;
        v25 = 1.6;
      }
    }
  }

  else
  {
    v25 = 1.0;
  }

  [v11 floatValue];
  if (v30 < 25.0 && [v12 intValue] == 11)
  {
    [v11 floatValue];
    v32 = v31 * 0.013 + 0.675;
    [v11 floatValue];
    v34 = v33 * -0.01 + 1.25;
    v26 = v26 * v28;
    v28 = v28 * v34;
    v22 = v22 * v32;
    [v11 floatValue];
    v36 = v35 * 0.006 + 0.85;
    [v11 floatValue];
    v38 = v37 * 0.016 + 0.6;
    v121 = v38;
    [v11 floatValue];
    v40 = v39 * -0.04 + 1.0;
    [objc_msgSend(v14 objectForKeyedSubscript:{@"blackPoint", "floatValue"}];
    v42 = v40 * v41;
    v122 = v42;
  }

  else
  {
    v122 = 0.0;
    v36 = 1.0;
  }

  [(NSNumber *)self->inputLocalLight floatValue];
  v44 = v22 * v43;
  [(NSNumber *)self->inputShadows floatValue];
  v46 = v22 * v45;
  [(NSNumber *)self->inputExposure floatValue];
  v48 = v47;
  [(NSNumber *)self->inputBrightness floatValue];
  v50 = v28 * v49;
  [(NSNumber *)self->inputHighlights floatValue];
  v52 = v51;
  [(NSNumber *)self->inputContrast floatValue];
  v54 = v26 * v53;
  v139[0] = @"inputLightMap";
  v55 = [v15 objectForKeyedSubscript:@"lightMap"];
  v139[1] = @"inputGuideImage";
  v140[0] = v55;
  v140[1] = v13;
  v56 = [+[CIFilter filterWithName:withInputParameters:](CIFilter outputImage:@"CIDynamicLocalLightMapPrepare"];
  v137[0] = @"inputLocalLight";
  *&v57 = v44;
  v138[0] = [NSNumber numberWithFloat:v57];
  v137[1] = @"inputSmartShadows";
  *&v58 = v46;
  v59 = [NSNumber numberWithFloat:v58];
  v137[2] = @"inputLightMapImage";
  v138[1] = v59;
  v138[2] = v56;
  v60 = [(CIImage *)v13 imageByApplyingFilter:@"CILLFilter" withInputParameters:[NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:3]];
  [(NSNumber *)self->inputSaturation floatValue];
  if (fmax(v128.c, v128.tx) > 0.2)
  {
    v62 = v61 + -0.15;
    v61 = v62;
  }

  v63 = v36 * v61;
  v135[0] = @"inputStrength";
  [(NSNumber *)self->inputBrightSat floatValue];
  *&v65 = v25 * v64;
  v136[0] = [NSNumber numberWithFloat:v65];
  v135[1] = @"inputSat";
  *&v66 = v63;
  v136[1] = [NSNumber numberWithFloat:v66];
  v135[2] = @"inputPShift";
  v67 = 0;
  v136[2] = [NSNumber numberWithFloat:0.0];
  v135[3] = @"inputTShift";
  v136[3] = [NSNumber numberWithFloat:0.0];
  v68 = [(CIImage *)v60 imageByApplyingFilter:@"CIBrightenSat" withInputParameters:[NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:4]];
  [v11 floatValue];
  if (*&v69 <= 1000.0)
  {
    v67 = v48;
  }

  else
  {
    v70 = [(CIDynamicRender *)self _softExposure];
    [(CIImage *)self->inputImage extent];
    v134 = v68;
    v68 = [v70 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v134, 1), v71, v72, v73, v74}];
  }

  v132[0] = @"inputExposure";
  LODWORD(v69) = v67;
  v133[0] = [NSNumber numberWithFloat:v69];
  v132[1] = @"inputBrightness";
  *&v75 = v50;
  v133[1] = [NSNumber numberWithFloat:v75];
  v132[2] = @"inputContrast";
  *&v76 = v54;
  v133[2] = [NSNumber numberWithFloat:v76];
  v132[3] = @"inputHighlights";
  LODWORD(v77) = v52;
  v133[3] = [NSNumber numberWithFloat:v77];
  v132[4] = @"inputBlack";
  *&v78 = v122;
  v133[4] = [NSNumber numberWithFloat:v78];
  v29 = [(CIImage *)v68 imageByApplyingFilter:@"CISmartToneFilter" withInputParameters:[NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:5]];
  [(NSNumber *)self->inputStrength floatValue];
  v79 = 1.0;
  if (v80 < 1.0)
  {
    [(NSNumber *)self->inputStrength floatValue];
    v82 = v81;
    [(NSNumber *)self->inputConfidence floatValue];
    v84 = v83;
    [(NSNumber *)self->inputLowConfidence floatValue];
    v86 = v84 - v85;
    [(NSNumber *)self->inputHighConfidence floatValue];
    v88 = v87;
    [(NSNumber *)self->inputLowConfidence floatValue];
    v90 = (v86 / (v88 - v89));
    if (v90 < 0.0)
    {
      v90 = 0.0;
    }

    v91 = fmin(v90, 1.0);
    v92 = (v91 * -2.0 + 3.0) * (v91 * v91);
    v93 = v92;
    inputFaceBoxArray = self->inputFaceBoxArray;
    if (inputFaceBoxArray)
    {
      v95 = v121;
      if ([(NSArray *)inputFaceBoxArray count])
      {
        v120 = v12;
        v123 = v11;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v96 = self->inputFaceBoxArray;
        v97 = [(NSArray *)v96 countByEnumeratingWithState:&v124 objects:v131 count:16];
        if (v97)
        {
          v98 = v97;
          v99 = *v125;
          v100 = 0.0;
          do
          {
            for (i = 0; i != v98; i = i + 1)
            {
              if (*v125 != v99)
              {
                objc_enumerationMutation(v96);
              }

              v102 = *(*(&v124 + 1) + 8 * i);
              [objc_msgSend(v102 objectForKeyedSubscript:{@"w", "floatValue"}];
              v104 = v103;
              [(CIImage *)self->inputImage extent];
              v106 = v105 * v104;
              [objc_msgSend(v102 objectForKeyedSubscript:{@"h", "floatValue"}];
              v108 = v107;
              [(CIImage *)self->inputImage extent];
              v110 = v109 * v108;
              if (v106 >= v110)
              {
                v110 = v106;
              }

              if (v110 > v100)
              {
                v100 = v110;
              }
            }

            v98 = [(NSArray *)v96 countByEnumeratingWithState:&v124 objects:v131 count:16];
          }

          while (v98);
        }

        else
        {
          v100 = 0.0;
        }

        [(NSNumber *)self->inputMaxFaceSize floatValue];
        v112 = fminf(v100 / v111, 1.0);
        v92 = 1.0 - (v112 * (v112 * v112)) * (v112 * -2.0 + 3.0);
        v79 = v92;
        v11 = v123;
        v12 = v120;
      }
    }

    else
    {
      v95 = v121;
    }

    v113 = self->inputImage;
    v129[0] = @"inputBackgroundImage";
    v129[1] = @"inputAmount";
    v130[0] = v113;
    v114 = v95 * ((v82 * v93) * v79);
    *&v92 = v114;
    v130[1] = [NSNumber numberWithFloat:v92];
    v29 = [(CIImage *)v29 imageByApplyingFilter:@"CIMix" withInputParameters:[NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2]];
    if ([-[CIDynamicRender writeDebugData:](self writeDebugData:{&off_7A908), "intValue"}] >= 1)
    {
      v115 = [v12 intValue];
      [v11 floatValue];
      LODWORD(v117) = v116;
      *&v118 = v114;
      return [(CIDynamicRender *)self overlayText:v29 strength:v115 captureType:v118 bv:v117];
    }
  }

  return v29;
}

@end