@interface BCCacheImageTransformer
- (BCCacheImageTransformer)init;
- (CGImage)doRestrictedProcessing:(CGImage *)processing;
- (id)_bookFilter:(id)filter;
- (unint64_t)coverEffectStyleForImage:(id)image;
- (unint64_t)coverEffectsContentForImage:(id)image;
- (void)_applyBookFilter:(id)filter toImage:(CGImage *)image size:(CGSize)size completion:(id)completion;
- (void)transformSource:(id)source to:(id)to completion:(id)completion;
@end

@implementation BCCacheImageTransformer

- (BCCacheImageTransformer)init
{
  v6.receiver = self;
  v6.super_class = BCCacheImageTransformer;
  v2 = [(BCCacheImageTransformer *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    renderOperations = v2->_renderOperations;
    v2->_renderOperations = v3;

    v2->_accessLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)_bookFilter:(id)filter
{
  filterCopy = filter;
  v4 = filterCopy;
  if (qword_3422D8 == -1)
  {
    if (filterCopy)
    {
LABEL_3:
      v5 = [qword_3422D0 objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E677C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (CGImage)doRestrictedProcessing:(CGImage *)processing
{
  if (!processing)
  {
    return 0;
  }

  Width = CGImageGetWidth(processing);
  Height = CGImageGetHeight(processing);

  return [BCUCoverEffects restrictedImageFrom:processing size:Width, Height];
}

- (void)transformSource:(id)source to:(id)to completion:(id)completion
{
  sourceCopy = source;
  toCopy = to;
  completionCopy = completion;
  quality = [sourceCopy quality];
  v12 = BCImageCacheLog();
  v13 = v12;
  if (quality == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E6790(sourceCopy, toCopy, v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v68 = sourceCopy;
    v69 = 2112;
    v70 = toCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "BCCacheImageTransformer: \nTransforming:\n %@ \ninto:\n %@", buf, 0x16u);
  }

  processingOptions = [toCopy processingOptions];
  v15 = [toCopy copy];
  if (processingOptions)
  {
    image = [sourceCopy image];
    [v15 setImage:image];

    [v15 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", objc_msgSend(sourceCopy, "quality"))}];
    image2 = [sourceCopy image];

    if (image2)
    {
      v18 = mainScreenScaleFactor();
      v19 = +[BCCoverEffects effectIdentifierWithRTL:style:content:nightMode:](BCCoverEffects, "effectIdentifierWithRTL:style:content:nightMode:", ([toCopy processingOptions] >> 7) & 1, -[BCCacheImageTransformer coverEffectStyleForImage:](self, "coverEffectStyleForImage:", toCopy), -[BCCacheImageTransformer coverEffectsContentForImage:](self, "coverEffectsContentForImage:", toCopy), (objc_msgSend(toCopy, "processingOptions") >> 6) & 1);
      [toCopy imageSize];
      v21 = v20;
      v23 = v22;
      [sourceCopy imageSize];
      v25 = v24;
      [toCopy imageSize];
      if (v25 < v26)
      {
        [sourceCopy imageSize];
        v28 = v27;
        [toCopy imageSize];
        if (v28 < v29 && [v15 quality] != 2)
        {
          [v15 setQuality:101];
        }
      }

      v30 = v21 / v18;
      v31 = v23 / v18;
      processingOptions2 = [toCopy processingOptions];
      image3 = [sourceCopy image];
      cGImage = [image3 CGImage];
      if ((processingOptions2 & 0x400) != 0)
      {
        cGImage = [(BCCacheImageTransformer *)self doRestrictedProcessing:cGImage];
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_67CEC;
      v61[3] = &unk_2CA1C0;
      v66 = v18;
      v62 = v15;
      v63 = toCopy;
      v64 = sourceCopy;
      v65 = completionCopy;
      [(BCCacheImageTransformer *)self _applyBookFilter:v19 toImage:cGImage size:v61 completion:v30, v31];

      goto LABEL_29;
    }

    v56 = objc_retainBlock(completionCopy);
    v19 = v56;
    if (!v56)
    {
      goto LABEL_29;
    }

    v57 = v56[2];
LABEL_28:
    v57();
    goto LABEL_29;
  }

  [v15 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", objc_msgSend(sourceCopy, "quality"))}];
  image4 = [sourceCopy image];
  cGImage2 = [image4 CGImage];

  if (cGImage2)
  {
    Width = CGImageGetWidth(cGImage2);
    Height = CGImageGetHeight(cGImage2);
    [toCopy imageSize];
    v40 = v39;
    [toCopy imageSize];
    v42 = v41;
    [sourceCopy imageSize];
    v44 = v42 * v43;
    [sourceCopy imageSize];
    v46 = round(v44 / v45);
    v47 = BCImageCacheLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      identifier = [sourceCopy identifier];
      [sourceCopy imageSize];
      NSStringFromCGSize(v75);
      v49 = v60 = Height;
      [toCopy imageSize];
      v50 = NSStringFromCGSize(v76);
      v77.width = v40;
      v77.height = v46;
      v51 = NSStringFromCGSize(v77);
      *buf = 138413058;
      v68 = identifier;
      v69 = 2112;
      v70 = v49;
      v71 = 2112;
      v72 = v50;
      v73 = 2112;
      v74 = v51;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "BCCacheImageTransformer: image:%@, src %@, dest %@ -> final %@", buf, 0x2Au);

      Height = v60;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v53 = CGBitmapContextCreate(0, v40, v46, 8uLL, 0, DeviceRGB, 6u);
    CGContextSetInterpolationQuality(v53, kCGInterpolationHigh);
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = v40;
    v78.size.height = v46;
    CGContextDrawImage(v53, v78, cGImage2);
    Image = CGBitmapContextCreateImage(v53);
    CGContextRelease(v53);
    CGColorSpaceRelease(DeviceRGB);
    v55 = [BICImage imageWithCGImage:Image];
    [v15 setImage:v55];

    if (Width < v40 && Height < v46 && [v15 quality] != 2)
    {
      [v15 setQuality:101];
    }

    CGImageRelease(Image);
  }

  else
  {
    image5 = [sourceCopy image];
    [v15 setImage:image5];
  }

  [v15 setUnknownAspectRatio:0];
  [BICCacheStats logDescribedImage:v15 withComment:@"CacheTransformWithProcessingOptionNone"];
  v59 = objc_retainBlock(completionCopy);
  v19 = v59;
  if (v59)
  {
    v57 = v59[2];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_applyBookFilter:(id)filter toImage:(CGImage *)image size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v12 = [(BCCacheImageTransformer *)self _bookFilter:filter];
  v13 = v12;
  if (image && v12)
  {
    v14 = mainScreenScaleFactor();
    v15 = TUIPriorityDefault;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_68028;
    v23[3] = &unk_2CA1E8;
    v23[4] = self;
    v24 = completionCopy;
    LODWORD(v16) = v15;
    v17 = [v13 newOperationWithImage:image size:0 contentsScale:1 priority:0 options:v23 waitForCPUSynchronization:width logKey:height completion:{v14, v16}];
    [v17 start];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_681A4;
    v21[3] = &unk_2C7BE8;
    v21[4] = self;
    v22 = v17;
    v18 = v17;
    os_unfair_lock_lock(&self->_accessLock);
    sub_681A4(v21);
    os_unfair_lock_unlock(&self->_accessLock);
  }

  else
  {
    v19 = objc_retainBlock(completionCopy);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, image, 0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }
  }
}

- (unint64_t)coverEffectStyleForImage:(id)image
{
  imageCopy = image;
  if (([imageCopy processingOptions] & 2) != 0)
  {
    v4 = 1;
  }

  else if (([imageCopy processingOptions] & 4) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = ([imageCopy processingOptions] >> 2) & 2;
  }

  return v4;
}

- (unint64_t)coverEffectsContentForImage:(id)image
{
  imageCopy = image;
  if (([imageCopy processingOptions] & 0x10) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = ([imageCopy processingOptions] & 0x100) == 0;
  }

  return v4;
}

@end