@interface CIRoundedQRCodeGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIRoundedQRCodeGenerator

+ (id)customAttributes
{
  v29[0] = kCIAttributeFilterCategories;
  v28[0] = kCICategoryGenerator;
  v28[1] = kCICategoryStillImage;
  v28[2] = kCICategoryBuiltIn;
  v13 = [NSArray arrayWithObjects:v28 count:3];
  v30[0] = v13;
  v30[1] = @"19";
  v29[1] = kCIAttributeFilterAvailable_iOS;
  v29[2] = kCIAttributeFilterAvailable_Mac;
  v30[2] = @"16.0";
  v30[3] = &__NSDictionary0__struct;
  v29[3] = @"inputMessage";
  v29[4] = @"inputCorrectionLevel";
  v26 = kCIAttributeDefault;
  v27 = @"M";
  v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v30[4] = v12;
  v29[5] = @"inputScale";
  v24[0] = kCIAttributeMin;
  v24[1] = kCIAttributeSliderMin;
  v25[0] = &off_1DC28;
  v25[1] = &off_1DC40;
  v24[2] = kCIAttributeSliderMax;
  v24[3] = kCIAttributeMax;
  v25[2] = &off_1DC58;
  v25[3] = &off_1DC70;
  v24[4] = kCIAttributeDefault;
  v24[5] = kCIAttributeType;
  v25[4] = &off_1DC40;
  v25[5] = kCIAttributeTypeScalar;
  v11 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:6];
  v30[5] = v11;
  v29[6] = @"inputRoundedMarkers";
  v22[0] = kCIAttributeMin;
  v22[1] = kCIAttributeMax;
  v23[0] = &off_1DC88;
  v23[1] = &off_1DCA0;
  v22[2] = kCIAttributeDefault;
  v22[3] = kCIAttributeType;
  v23[2] = &off_1DCB8;
  v23[3] = kCIAttributeTypeInteger;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  v30[6] = v10;
  v29[7] = @"inputRoundedData";
  v20[0] = kCIAttributeMin;
  v20[1] = kCIAttributeMax;
  v21[0] = &__kCFBooleanFalse;
  v21[1] = &__kCFBooleanTrue;
  v20[2] = kCIAttributeDefault;
  v20[3] = kCIAttributeType;
  v21[2] = &__kCFBooleanTrue;
  v21[3] = kCIAttributeTypeBoolean;
  v2 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
  v30[7] = v2;
  v29[8] = @"inputCenterSpaceSize";
  v18[0] = kCIAttributeMin;
  v18[1] = kCIAttributeSliderMin;
  v19[0] = &off_1DE68;
  v19[1] = &off_1DE78;
  v18[2] = kCIAttributeSliderMax;
  v18[3] = kCIAttributeMax;
  v19[2] = &off_1DE88;
  v19[3] = &off_1DE88;
  v18[4] = kCIAttributeDefault;
  v18[5] = kCIAttributeType;
  v19[4] = &off_1DE98;
  v19[5] = kCIAttributeTypeScalar;
  v3 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:6];
  v30[8] = v3;
  v29[9] = @"inputColor0";
  v16[0] = kCIAttributeDefault;
  v4 = +[CIColor whiteColor];
  v16[1] = kCIAttributeType;
  v17[0] = v4;
  v17[1] = kCIAttributeTypeColor;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v30[9] = v5;
  v29[10] = @"inputColor1";
  v14[0] = kCIAttributeDefault;
  v6 = +[CIColor blackColor];
  v14[1] = kCIAttributeType;
  v15[0] = v6;
  v15[1] = kCIAttributeTypeColor;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v30[10] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:11];

  return v8;
}

- (id)outputImage
{
  v3 = [CIFilter filterWithName:@"CIQRCodeGenerator"];
  [v3 setValue:self->super.super.inputMessage forKey:@"inputMessage"];
  [v3 setValue:self->super.inputCorrectionLevel forKey:@"inputCorrectionLevel"];
  outputImage = [v3 outputImage];
  v5 = outputImage;
  if (outputImage)
  {
    [outputImage extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(NSNumber *)self->inputScale floatValue];
    v15 = fminf(fmaxf(v14, 8.0), 64.0);
    v16 = [(NSString *)self->super.inputCorrectionLevel isEqual:@"Q"];
    if (([(NSString *)self->super.inputCorrectionLevel isEqual:@"L"]& 1) != 0 || (!v16 ? (v17 = 0.33333) : (v17 = 0.25), [(NSString *)self->super.inputCorrectionLevel isEqual:@"M"]))
    {
      v17 = 0.0;
    }

    [v5 extent];
    if (v18 < 31.0)
    {
      v17 = 0.0;
    }

    [(NSNumber *)self->inputScale floatValue];
    v20 = fminf(fmaxf(v19, 0.0), v17);
    intValue = [(NSNumber *)self->inputRoundedMarkers intValue];
    bOOLValue = [(NSNumber *)self->inputRoundedData BOOLValue];
    v23 = [CIKernel cachedKernelWithString:@"float rrect (vec2 lo, vec2 hi, float radius, vec2 dc) \n { \n float side = min(hi.x-lo.x, hi.y-lo.y) \n radius = min(radius, side/3.0); \n vec2 v = max(min(dc - (lo + radius), 0.0), dc - (hi - radius)); \n return clamp((radius - length(v) + 0.5), 0.0, 1.0); \n } \n float k_Finder (float k, float scale, vec2 p, vec2 dc, vec2 o) \n { \n if (p.x < o.x || p.y < o.y || p.x > o.x + 9.0 || p.y > o.y + 9.0) \n return k; \n k = 1.0; \n vec2 lo = (o+vec2(1, 1)) * scale + 1.0; \n vec2 hi = (o+vec2(8, 8)) * scale - 1.0; \n k -= rrect(lo, hi, 1.5 * scale, dc); \n lo = (o+vec2(2, 2)) * scale + 1.0; \n hi = (o+vec2(7, 7)) * scale - 1.0; \n k += rrect(lo, hi, 0.75 * scale, dc); \n lo = (o+vec2(3, 3)) * scale + 1.0; \n hi = (o+vec2(6, 6)) * scale - 1.0; \n k -= rrect(lo, hi, 0.5 * scale, dc); \n return k; \n } \n float k_Align (float k, float scale, vec2 p, vec2 dc, vec2 o) \n { \n if (p.x < o.x || p.y < o.y || p.x > o.x + 5.0 || p.y > o.y + 5.0) \n return k; \n k = 1.0; \n vec2 lo = (o+vec2(0, 0)) * scale + 1.0 + 0.2*scale; \n vec2 hi = (o+vec2(5, 5)) * scale - 1.0 - 0.2*scale; \n k -= rrect(lo, hi, 1.25 * scale, dc); \n lo = (o+vec2(1, 1)) * scale + 1.0; \n hi = (o+vec2(4, 4)) * scale - 1.0; \n k += rrect(lo, hi, 0.5 * scale, dc); \n lo = (o+vec2(2, 2)) * scale; \n hi = (o+vec2(3, 3)) * scale; \n k -= rrect(lo, hi, 0.25 * scale, dc); \n return k; \n } \n kernel vec4 qrScaler (sampler image, float scale, float centerArea, float roundData, float roundMarker, __color c0, __color c1) { \n vec2 dc = destCoord(); \n vec2 dcSnapped = (floor(dc/scale)+0.5)*scale; \n vec2 ssize = samplerSize(image); \n vec2 p = floor(dc/scale)+0.5; \n vec4 c = sample(image, samplerTransform(image, p)); \n float k = c.r; \n if (roundData > 0.5) \n { \n float dist = length(dc-dcSnapped); \n float mixer = clamp(dist+1.0-scale*0.5, 0.0, 1.0); \n k = mix(k, 1.0, mixer); \n } \n if (roundMarker > 0.5) \n { \n k = k_Finder(k, scale, p, dc, vec2(0, 0)); \n k = k_Finder(k, scale, p, dc, vec2(0, ssize.y-9.0)); \n k = k_Finder(k, scale, p, dc, vec2(ssize.x-9.0, ssize.y-9.0)); \n } \n if (roundMarker > 1.5 && ssize.x>=46.0 && ssize.x<=73.0) \n { \n float Min = 5.0; \n float Max = (ssize.x-10.0); \n float Mid = (Min + Max) * 0.5; \n k = k_Align(k, scale, p, dc, vec2(Min, Mid)); \n k = k_Align(k, scale, p, dc, vec2(Mid, Min)); \n k = k_Align(k, scale, p, dc, vec2(Mid, Mid)); \n k = k_Align(k, scale, p, dc, vec2(Mid, Max)); \n k = k_Align(k, scale, p, dc, vec2(Max, Min)); \n k = k_Align(k, scale, p, dc, vec2(Max, Mid)); \n } \n if (centerArea > 0.0) \n { \n vec2 lo = floor(ssize*(0.5 - 0.5*centerArea)); \n vec2 hi = ceil(ssize*(0.5 + 0.5*centerArea)); \n if (hi.x - lo.x >= 7.0) \n { \n lo *= scale; \n hi *= scale; k = max(k, rrect(lo, hi, 0.5 * scale, dc)); \n lo += scale; \n hi -= scale; \n k -= rrect(lo, hi, 1.5 * scale, dc); \n } \n } \n if (roundMarker > 1.5 && ssize.x>=25.0 && ssize.x<=45.0) \n { \n float Min = 5.0; \n float Max = (ssize.x-10.0); \n k = k_Align(k, scale, p, dc, vec2(Max, Min)); \n } \n return mix(c1, c0, k) * c.a; \n } \n"];;
    v24 = v15;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_23E4;
    v40[3] = &unk_1C470;
    v40[4] = v7;
    v40[5] = v9;
    *&v40[6] = v11;
    *&v40[7] = v13;
    v41[0] = v5;
    v39 = [NSNumber numberWithFloat:COERCE_DOUBLE(LODWORD(v15))];
    v41[1] = v39;
    *&v25 = v20;
    v38 = [NSNumber numberWithFloat:v25];
    v41[2] = v38;
    v37 = [NSNumber numberWithBool:bOOLValue];
    v41[3] = v37;
    v26 = [NSNumber numberWithInt:intValue];
    v41[4] = v26;
    inputColor0 = self->inputColor0;
    v28 = inputColor0;
    if (!inputColor0)
    {
      v28 = +[CIColor whiteColor];
    }

    v29 = v11 * v24;
    v30 = v13 * v24;
    v41[5] = v28;
    inputColor1 = self->inputColor1;
    v32 = inputColor1;
    if (!inputColor1)
    {
      v32 = +[CIColor blackColor];
    }

    v41[6] = v32;
    v33 = [NSArray arrayWithObjects:v41 count:7];
    v34 = v23;
    v35 = [v23 applyWithExtent:v40 roiCallback:v33 arguments:{0.0, 0.0, v29, v30}];

    if (inputColor1)
    {
      if (inputColor0)
      {
LABEL_16:

        v5 = v35;
        goto LABEL_17;
      }
    }

    else
    {

      if (inputColor0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  return v5;
}

@end