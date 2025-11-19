@interface CIConfidenceThreshold
+ (id)customAttributes;
- (id)outputImage;
- (id)thresholdKernel;
- (id)transitionDepthsKernel;
@end

@implementation CIConfidenceThreshold

- (id)thresholdKernel
{
  if (qword_8C888 != -1)
  {
    sub_4929C();
  }

  return qword_8C880;
}

+ (id)customAttributes
{
  v8[0] = kCIAttributeFilterCategories;
  v7[0] = kCICategoryColorAdjustment;
  v7[1] = kCICategoryStillImage;
  v7[2] = kCICategoryBuiltIn;
  v7[3] = kCICategoryApplePrivate;
  v9[0] = [NSArray arrayWithObjects:v7 count:4];
  v9[1] = @"11";
  v8[1] = kCIAttributeFilterAvailable_iOS;
  v8[2] = kCIAttributeFilterAvailable_Mac;
  v9[2] = @"10.13";
  v8[3] = @"inputNeedsGammaCorrection";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeType;
  v6[0] = &__kCFBooleanTrue;
  v6[1] = kCIAttributeTypeBoolean;
  v9[3] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[4] = @"inputScale";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeType;
  v4[0] = &off_799C0;
  v4[1] = kCIAttributeTypeScalar;
  v9[4] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)transitionDepthsKernel
{
  if (qword_8C898 != -1)
  {
    sub_492B0();
  }

  return qword_8C890;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    [(NSNumber *)self->inputScale floatValue];
    inputImage = self->inputImage;
    CGAffineTransformMakeScale(&v40, v4, v4);
    v5 = [(CIImage *)inputImage imageByApplyingTransform:&v40];
    [(CIImage *)v5 extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v46 = kCIKernelOutputFormat;
    v47 = [NSNumber numberWithInt:kCIFormatRh];
    v14 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v15 = [[[[(CIImage *)v5 imageByClampingToExtent] imageByApplyingFilter:@"PFSobelHV"] imageByCroppingToRect:v7 imageByClampingToExtent:v9];
    v44 = kCIInputRadiusKey;
    v45 = &off_799D0;
    v16 = [[(CIImage *)v15 imageByApplyingFilter:@"CIMorphologyMaximum" withInputParameters:[NSDictionary dictionaryWithObjects:&v44 forKeys:1 count:?]], "imageByCroppingToRect:", v7, v9, v11, v13];
    v17 = [(CIConfidenceThreshold *)self transitionDepthsKernel];
    v43[0] = v16;
    v43[1] = v5;
    v18 = [v17 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v43, 2), v14, v7, v9, v11, v13}];
    v40.a = 0.0;
    *&v40.b = &v40;
    *&v40.c = 0x4010000000;
    *&v40.d = "";
    *&v40.tx = 0u;
    v41 = 0u;
    [v18 extent];
    v40.tx = v19;
    v40.ty = v20;
    *&v41 = v21;
    *(&v41 + 1) = v22;
    [(CIVector *)self->inputFocusRect CGRectValue];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    CGAffineTransformMakeScale(&v39, v11, v13);
    v49.origin.x = v24;
    v49.origin.y = v26;
    v49.size.width = v28;
    v49.size.height = v30;
    v50 = CGRectApplyAffineTransform(v49, &v39);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    v35 = [(CIConfidenceThreshold *)self thresholdKernel];
    v42[0] = v18;
    v42[1] = v5;
    v42[2] = [CIVector vectorWithCGRect:x, y, width, height, _NSConcreteStackBlock, 3221225472, sub_3DF0, &unk_749C8, &v40];
    v42[3] = [CIVector vectorWithX:*(*&v40.b + 48) Y:*(*&v40.b + 56)];
    v36 = [objc_msgSend(v35 applyWithExtent:&v38 roiCallback:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v42, 4), v14, 0.0, 0.0, 1.0, 1.0), "imageByClampingToExtent"}];
    _Block_object_dispose(&v40, 8);
    return v36;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end