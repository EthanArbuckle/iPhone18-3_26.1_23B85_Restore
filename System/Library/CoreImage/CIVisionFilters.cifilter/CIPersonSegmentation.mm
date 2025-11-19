@interface CIPersonSegmentation
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPersonSegmentation

+ (id)customAttributes
{
  v6[0] = kCIAttributeFilterCategories;
  v5[0] = kCICategoryVideo;
  v5[1] = kCICategoryStillImage;
  v5[2] = kCICategoryBuiltIn;
  v5[3] = kCICategoryStylize;
  v7[0] = [NSArray arrayWithObjects:v5 count:4];
  v7[1] = @"15";
  v6[1] = kCIAttributeFilterAvailable_iOS;
  v6[2] = kCIAttributeFilterAvailable_Mac;
  v7[2] = @"12.0";
  v6[3] = @"inputQualityLevel";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeMax;
  v4[0] = &off_45C8;
  v4[1] = &off_45E0;
  v3[2] = kCIAttributeSliderMin;
  v3[3] = kCIAttributeSliderMax;
  v4[2] = &off_45C8;
  v4[3] = &off_45E0;
  v3[4] = kCIAttributeDefault;
  v3[5] = kCIAttributeType;
  v4[4] = &off_45C8;
  v4[5] = kCIAttributeTypeInteger;
  v7[3] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (!inputImage || ([(CIImage *)inputImage extent], CGRectIsInfinite(v40)))
  {
    v4 = sub_13F0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1CAC(self, v4);
    }

    return +[CIImage emptyImage];
  }

  v36 = 0;
  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v14 = [(NSNumber *)self->inputQualityLevel unsignedIntValue];
  if (v14 >= 3 || self->inputQualityLevel == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16 == 1)
  {
    v17 = 384.0;
    *&v18 = 512.0;
    goto LABEL_15;
  }

  if (v16 == 2)
  {
    v17 = 256.0;
    *&v18 = 192.0;
LABEL_15:
    v19 = *&v18;
    goto LABEL_17;
  }

  v17 = 1512.0;
  v19 = 2016.0;
LABEL_17:
  v20 = [(CIImage *)self->inputImage imageByClampingToExtent];
  CGAffineTransformMakeTranslation(&v35, -v6, -v8);
  v21 = [(CIImage *)v20 imageByApplyingTransform:&v35];
  CGAffineTransformMakeScale(&v35, v19 / v10, v17 / v12);
  v22 = [[[(CIImage *)v21 imageByApplyingTransform:&v35] imageByCroppingToRect:0.0 imageByColorMatchingWorkingSpaceToColorSpace:v19, v17], "imageByColorMatchingWorkingSpaceToColorSpace:", v13];
  [(CIImage *)v22 extent];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v39 = v22;
  v31 = [NSArray arrayWithObjects:&v39 count:1];
  v37[0] = @"rect";
  [(CIImage *)v22 extent];
  v32 = [CIVector vectorWithCGRect:?];
  v37[1] = @"q";
  v38[0] = v32;
  v38[1] = [NSNumber numberWithUnsignedInteger:v16];
  v33 = [+[CIPersonSegmentationKernel applyWithExtent:inputs:arguments:error:](CIPersonSegmentationKernel applyWithExtent:v31 inputs:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary arguments:"dictionaryWithObjects:forKeys:count:" error:{v38, v37, 2), &v36, v24, v26, v28, v30), "imageByColorMatchingColorSpaceToWorkingSpace:", v13}];
  CGColorSpaceRelease(v13);
  if (v36)
  {
    return +[CIImage emptyImage];
  }

  return v33;
}

@end