@interface QLImageItemTransformer
+ (id)allowedOutputClasses;
+ (id)animatableContentTypes;
- (double)_maximumDimension;
- (id)_contentsFromCGImageSource:(CGImageSource *)source context:(id)context scale:(double)scale;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLImageItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  contextCopy = context;
  v8 = CGImageSourceCreateWithURL(l, 0);
  if (v8)
  {
    v9 = v8;
    v10 = [(QLImageItemTransformer *)self _contentsFromCGImageSource:v8 context:contextCopy scale:1.0];
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  bitmapFormat = [contextCopy bitmapFormat];

  if (bitmapFormat)
  {
    bitmapFormat2 = [contextCopy bitmapFormat];
    colorSpace = [bitmapFormat2 colorSpace];
    if (colorSpace)
    {
      v12 = colorSpace;
      v13 = CGDataProviderCreateWithCFData(dataCopy);
      v14 = CGImageCreate([bitmapFormat2 width], objc_msgSend(bitmapFormat2, "height"), objc_msgSend(bitmapFormat2, "bitsPerComponent"), objc_msgSend(bitmapFormat2, "bitsPerPixel"), objc_msgSend(bitmapFormat2, "bytesPerRow"), v12, objc_msgSend(bitmapFormat2, "bitmapInfo"), v13, 0, 0, kCGRenderingIntentDefault);
      CFRelease(v13);
    }

    else
    {
      v14 = 0;
    }

    v17 = [MEMORY[0x277D755B8] imageWithCGImage:v14 scale:0 orientation:1.0];
    CGImageRelease(v14);
  }

  else
  {
    v15 = CGImageSourceCreateWithData(dataCopy, 0);
    if (v15)
    {
      v16 = v15;
      v17 = [(QLImageItemTransformer *)self _contentsFromCGImageSource:v15 context:contextCopy scale:1.0];
      CFRelease(v16);
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)_contentsFromCGImageSource:(CGImageSource *)source context:(id)context scale:(double)scale
{
  v57[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  Count = CGImageSourceGetCount(source);
  contentType = [contextCopy contentType];

  if (contentType)
  {
    contentType = MEMORY[0x277CE1CB8];
    contentType2 = [contextCopy contentType];
    v13 = [contentType typeWithIdentifier:contentType2];

    animatableContentTypes = [objc_opt_class() animatableContentTypes];
    LODWORD(contentType) = _QLContentTypeConformsToContentTypeInSet();
  }

  if (Count >= 2 && (Helper_x8__OBJC_CLASS___PFImageMetadata = gotLoadHelper_x8__OBJC_CLASS___PFImageMetadata(v11), (contentType & ([*(v16 + 1032) imageSourceIsMonoski:{source, Helper_x8__OBJC_CLASS___PFImageMetadata}] ^ 1)) == 1))
  {
    v17 = [[QLAnimatedImage alloc] initWithImageSource:source];
  }

  else
  {
    v56 = *MEMORY[0x277CD3648];
    v18 = MEMORY[0x277CBEC38];
    v57[0] = MEMORY[0x277CBEC38];
    unsignedIntValue = 1;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v21 = CGImageSourceCopyPropertiesAtIndex(source, 0, v20);
    v22 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CD3450]];
    [v22 floatValue];
    v24 = v23;

    v25 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CD3448]];
    [v25 floatValue];
    v27 = v26;

    v28 = [(__CFDictionary *)v21 objectForKeyedSubscript:*MEMORY[0x277CD3410]];
    v29 = v28;
    if (v28)
    {
      unsignedIntValue = [v28 unsignedIntValue];
    }

    if (v24 >= v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = v24;
    }

    v31 = v30;
    [(QLImageItemTransformer *)self _maximumDimension];
    v33 = v32;
    viewDynamicRange = [contextCopy viewDynamicRange];
    if (v33 <= v31 * 0.5)
    {
      [(QLImageItemTransformer *)self _maximumDimension];
      v44 = QLScaledPlatformImageFromImageSource();
      v45 = MEMORY[0x277D755B8];
      cGImage = [v44 CGImage];
      [v44 scale];
      v17 = [v45 imageWithCGImage:cGImage scale:UIImageOrientationFromCGImageOrientation(objc_msgSend(v44 orientation:{"orientation")), v47}];

      v48 = v20;
    }

    else
    {
      v35 = viewDynamicRange;
      v36 = _os_feature_enabled_impl();
      v37 = *MEMORY[0x277CD3678];
      if (v36 && v35)
      {
        v38 = *MEMORY[0x277CD3580];
        v54[0] = *MEMORY[0x277CD3678];
        v54[1] = v38;
        v39 = *MEMORY[0x277CD3590];
        v55[0] = v18;
        v55[1] = v39;
        v54[2] = *MEMORY[0x277CD3588];
        v55[2] = &unk_284D73138;
        v40 = MEMORY[0x277CBEAC0];
        v41 = v55;
        v42 = v54;
        v43 = 3;
      }

      else
      {
        v52 = *MEMORY[0x277CD3678];
        v53 = v18;
        v40 = MEMORY[0x277CBEAC0];
        v41 = &v53;
        v42 = &v52;
        v43 = 1;
      }

      v48 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:v43];

      ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, v48);
      v17 = [MEMORY[0x277D755B8] imageWithCGImage:ImageAtIndex scale:UIImageOrientationFromCGImageOrientation(unsignedIntValue) orientation:scale];
      if (ImageAtIndex)
      {
        CFRelease(ImageAtIndex);
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];

  return v17;
}

- (double)_maximumDimension
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v9 = v8;

  if (v4 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  return v10 * v9 * 3.0;
}

+ (id)animatableContentTypes
{
  if (animatableContentTypes_onceToken != -1)
  {
    +[QLImageItemTransformer animatableContentTypes];
  }

  v3 = animatableContentTypes_animatableContentTypes;

  return v3;
}

void __48__QLImageItemTransformer_animatableContentTypes__block_invoke()
{
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"public.heics"];
  v1 = *MEMORY[0x277CE1D88];
  v2 = *MEMORY[0x277CE1E10];
  v3 = *MEMORY[0x277CE1EE0];
  v4 = *MEMORY[0x277CE1D90];
  v8 = v0;
  if (v0)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{v1, v2, v3, v4, v0, 0}];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObjects:{v1, v2, v3, v4, 0, v7}];
  }
  v5 = ;
  v6 = animatableContentTypes_animatableContentTypes;
  animatableContentTypes_animatableContentTypes = v5;
}

@end