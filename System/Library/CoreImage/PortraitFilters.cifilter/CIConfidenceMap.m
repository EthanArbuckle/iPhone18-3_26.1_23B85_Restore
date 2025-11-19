@interface CIConfidenceMap
+ (id)customAttributes;
- (id)_confidenceExtractRed;
- (id)extractLuminance:(id)a3;
- (id)outputImage;
@end

@implementation CIConfidenceMap

+ (id)customAttributes
{
  v4[0] = kCIAttributeFilterCategories;
  v3[0] = kCICategoryColorAdjustment;
  v3[1] = kCICategoryVideo;
  v3[2] = kCICategoryStillImage;
  v3[3] = kCICategoryBuiltIn;
  v3[4] = kCICategoryApplePrivate;
  v5[0] = [NSArray arrayWithObjects:v3 count:5];
  v5[1] = @"11";
  v4[1] = kCIAttributeFilterAvailable_iOS;
  v4[2] = kCIAttributeFilterAvailable_Mac;
  v5[2] = @"10.13";
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)_confidenceExtractRed
{
  if (qword_8C958 != -1)
  {
    sub_493A0();
  }

  return qword_8C950;
}

- (id)extractLuminance:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 colorSpace];
  v6 = v5;
  if (!v5)
  {
    v6 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  }

  v7 = [+[CIImage imageYCC444:matrix:fullRange:colorSpace:](CIImage imageYCC444:objc_msgSend(a3 matrix:"imageByApplyingFilter:" fullRange:@"CILinearToSRGBToneCurve" colorSpace:{709, 1, 0), "imageByApplyingFilter:", @"CISRGBToneCurveToLinear"}];
  v8 = [(CIConfidenceMap *)self _confidenceExtractRed];
  [v7 extent];
  v15 = v7;
  v13 = [v8 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v15, 1), v9, v10, v11, v12}];
  if (!v5)
  {
    CGColorSpaceRelease(v6);
  }

  return v13;
}

- (id)outputImage
{
  result = self->inputImage;
  if (result)
  {
    if (self->inputDisparityImage)
    {
      v4 = [NSNumber numberWithInt:kCIFormatRh];
      inputImage = self->inputImage;
      inputDisparityImage = self->inputDisparityImage;
      [(CIImage *)inputDisparityImage extent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(CIImage *)inputDisparityImage extent];
      IsInfinite = CGRectIsInfinite(v57);
      v16 = 1.0;
      v17 = 1.0;
      if (!IsInfinite)
      {
        [(CIImage *)inputImage extent:1.0];
        v18 = CGRectIsInfinite(v58);
        v16 = 1.0;
        v17 = 1.0;
        if (!v18)
        {
          [(CIImage *)inputDisparityImage extent:1.0];
          v20 = v19;
          [(CIImage *)inputImage extent];
          v22 = v20 / v21;
          [(CIImage *)inputDisparityImage extent];
          v24 = v23;
          [(CIImage *)inputImage extent];
          v26 = v24 / v25;
          v17 = v22;
          v16 = v26;
        }
      }

      if (v17 != 1.0 || v16 != 1.0)
      {
        CGAffineTransformMakeScale(&v46, v17, v16);
        inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v46];
      }

      v27 = [(CIConfidenceMap *)self extractLuminance:inputImage];
      if (v27)
      {
        v28 = [v27 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
        if (qword_8C9C8 != -1)
        {
          sub_493B4();
        }

        v29 = qword_8C9C0;
        if (qword_8C9D8 != -1)
        {
          sub_493DC();
        }

        v30 = qword_8C9D0;
        [(CIImage *)inputDisparityImage extent];
        v60 = CGRectInset(v59, -1.0, -1.0);
        x = v60.origin.x;
        y = v60.origin.y;
        width = v60.size.width;
        height = v60.size.height;
        v55 = [(CIImage *)inputDisparityImage imageByClampingToExtent];
        v35 = [NSArray arrayWithObjects:&v55 count:1];
        v36 = kCIKernelOutputFormat;
        v53 = kCIKernelOutputFormat;
        v54 = v4;
        v37 = [objc_msgSend(v29 applyWithExtent:&stru_74B68 roiCallback:v35 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v54, &v53, 1), x, y, width, height), "imageByCroppingToRect:", v8, v10, v12, v14}];
        if (qword_8C9E8 != -1)
        {
          sub_49404();
        }

        v38 = qword_8C9E0;
        v52[0] = [v37 imageByClampingToExtent];
        v52[1] = [CIVector vectorWithX:1.0 Y:7.0];
        v52[2] = [v28 imageByClampingToExtent];
        v39 = [NSArray arrayWithObjects:v52 count:3];
        v50 = v36;
        v51 = v4;
        v40 = [objc_msgSend(objc_msgSend(v38 applyWithExtent:&stru_74B88 roiCallback:v39 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v51, &v50, 1), CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height), "imageByCroppingToRect:", v8, v10, v12, v14), "imageByClampingToExtent"}];
        v48 = kCIInputRadiusKey;
        v49 = &off_79A00;
        v41 = [objc_msgSend(v40 imageByApplyingFilter:@"CIGaussianBlur" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v49, &v48, 1)), "imageByCroppingToRect:", v8, v10, v12, v14}];
        [v41 extent];
        v47 = v41;
        return [objc_msgSend(v30 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v47, 1), v42, v43, v44, v45), "imageByCroppingToRect:", v8, v10, v12, v14}];
      }

      else
      {
        return +[CIImage emptyImage];
      }
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }

  return result;
}

@end