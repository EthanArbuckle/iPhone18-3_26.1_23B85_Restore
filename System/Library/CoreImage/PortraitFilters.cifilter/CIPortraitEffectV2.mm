@interface CIPortraitEffectV2
+ (id)customAttributes;
- (id)backgroundPreviewCubePath;
- (id)previewCubePath;
- (id)standbyCubePath;
- (void)prewarm:(id)a3;
- (void)prewarmFullSizeRender:(id)a3;
- (void)prewarmWithContext:(id)a3 andProxyRendering:(BOOL)a4;
@end

@implementation CIPortraitEffectV2

- (void)prewarm:(id)a3
{
  if ((sub_189F0(kCIPortraitFilterV2ProxySizeBinaryArchive, a3) & 1) == 0)
  {

    [(CIPortraitEffectV2 *)self prewarmWithContext:a3 andProxyRendering:1];
  }
}

- (void)prewarmFullSizeRender:(id)a3
{
  if ((sub_189F0(kCIPortraitFilterV2FullSizeBinaryArchive, a3) & 1) == 0)
  {

    [(CIPortraitEffectV2 *)self prewarmWithContext:a3 andProxyRendering:0];
  }
}

- (void)prewarmWithContext:(id)a3 andProxyRendering:(BOOL)a4
{
  v4 = a4;
  context = objc_autoreleasePoolPush();
  if (!a3)
  {
    v24[0] = kCIContextWorkingFormat;
    v25[0] = [NSNumber numberWithInt:kCIFormatRGBAh];
    v25[1] = &off_7A890;
    v24[1] = kCIContextIntermediateMemoryTarget;
    v24[2] = kCIContextCacheIntermediates;
    v24[3] = kCIContextUseMetalRenderer;
    v25[2] = &__kCFBooleanFalse;
    v25[3] = &__kCFBooleanTrue;
    a3 = [CIContext contextWithOptions:[NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:4]];
  }

  v6 = malloc_type_calloc(0x20uLL, 0x80uLL, 0x6E1F1EB9uLL);
  v7 = [CIRenderDestination alloc];
  v17 = v6;
  v8 = [v7 initWithBitmapData:v6 width:32 height:32 bytesPerRow:128 format:kCIFormatRGBA8];
  v9 = 0.0;
  v10 = [[CIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v11 = [CIImage imageWithColor:v10];
  do
  {
    [a3 prepareRender:-[CIImage imageByApplyingGaussianBlurWithSigma:](v11 fromRect:"imageByApplyingGaussianBlurWithSigma:" toDestination:v9) atPoint:v8 error:{0, 0.0, 0.0, objc_msgSend(v8, "width"), objc_msgSend(v8, "height"), CGPointZero.x, CGPointZero.y}];
    v9 = v9 + 0.1;
  }

  while (v9 < 20.0);
  v12 = objc_alloc_init(PortraitEffetcPrewarm);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [&off_7DFF0 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(&off_7DFF0);
        }

        [(PortraitEffetcPrewarm *)v12 run:*(*(&v19 + 1) + 8 * v16) withContext:a3 withFaceScales:&off_7E008 withProxyRendering:v4];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [&off_7DFF0 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [(PortraitEffetcPrewarm *)v12 run:@"CIPortraitEffectContourV2" withContext:a3 withFaceScales:&off_7E020 withProxyRendering:v4];
  [(PortraitEffetcPrewarm *)v12 run:@"CIPortraitEffectStageV2" withContext:a3 withFaceScales:&off_7E038 withProxyRendering:v4];

  free(v17);
  objc_autoreleasePoolPop(context);
}

+ (id)customAttributes
{
  v12[0] = kCIAttributeFilterCategories;
  v11[0] = kCICategoryColorEffect;
  v11[1] = kCICategoryVideo;
  v11[2] = kCICategoryInterlaced;
  v11[3] = kCICategoryNonSquarePixels;
  v11[4] = kCICategoryStillImage;
  v11[5] = kCICategoryBuiltIn;
  v11[6] = kCICategoryApplePrivate;
  v13[0] = [NSArray arrayWithObjects:v11 count:7];
  v13[1] = @"10";
  v12[1] = kCIAttributeFilterAvailable_iOS;
  v12[2] = kCIAttributeFilterAvailable_Mac;
  v13[2] = @"10.11";
  v12[3] = @"inputStrength";
  v9[0] = kCIAttributeMin;
  v9[1] = kCIAttributeSliderMin;
  v10[0] = &off_7A120;
  v10[1] = &off_7A120;
  v9[2] = kCIAttributeSliderMax;
  v9[3] = kCIAttributeDefault;
  v10[2] = &off_7A110;
  v10[3] = &off_79E50;
  v9[4] = kCIAttributeIdentity;
  v9[5] = kCIAttributeType;
  v10[4] = &off_7A110;
  v10[5] = kCIAttributeTypeScalar;
  v13[3] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputScale";
  v7[0] = kCIAttributeMin;
  v7[1] = kCIAttributeSliderMin;
  v8[0] = &off_7A130;
  v8[1] = &off_7A130;
  v7[2] = kCIAttributeSliderMax;
  v7[3] = kCIAttributeDefault;
  v8[2] = &off_7A110;
  v8[3] = &off_7A110;
  v7[4] = kCIAttributeIdentity;
  v7[5] = kCIAttributeType;
  v8[4] = &off_7A110;
  v8[5] = kCIAttributeTypeScalar;
  v13[4] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputRenderProxy";
  v5[0] = kCIAttributeMin;
  v5[1] = kCIAttributeDefault;
  v6[0] = &off_7A140;
  v6[1] = &off_7A140;
  v5[2] = kCIAttributeIdentity;
  v5[3] = kCIAttributeType;
  v6[2] = &off_7A110;
  v6[3] = kCIAttributeTypeScalar;
  v13[5] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v12[6] = @"inputGenerateSpillMatte";
  v3[0] = kCIAttributeMin;
  v3[1] = kCIAttributeDefault;
  v4[0] = &off_7A140;
  v4[1] = &off_7A140;
  v3[2] = kCIAttributeIdentity;
  v3[3] = kCIAttributeType;
  v4[2] = &off_7A110;
  v4[3] = kCIAttributeTypeScalar;
  v13[6] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)previewCubePath
{
  result = [(CIPortraitEffectV2 *)self previewCubeName];
  if (result)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(CIPortraitEffectV2 *)self previewCubeName];

    return [(NSBundle *)v4 pathForResource:v5 ofType:@"scube"];
  }

  return result;
}

- (id)standbyCubePath
{
  result = [(CIPortraitEffectV2 *)self standbyCubeName];
  if (result)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(CIPortraitEffectV2 *)self standbyCubeName];

    return [(NSBundle *)v4 pathForResource:v5 ofType:@"scube"];
  }

  return result;
}

- (id)backgroundPreviewCubePath
{
  result = [(CIPortraitEffectV2 *)self backgroundPreviewCubeName];
  if (result)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(CIPortraitEffectV2 *)self backgroundPreviewCubeName];

    return [(NSBundle *)v4 pathForResource:v5 ofType:@"scube"];
  }

  return result;
}

@end