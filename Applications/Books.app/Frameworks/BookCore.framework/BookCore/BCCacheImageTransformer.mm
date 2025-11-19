@interface BCCacheImageTransformer
- (BCCacheImageTransformer)init;
- (CGImage)doRestrictedProcessing:(CGImage *)a3;
- (id)_bookFilter:(id)a3;
- (unint64_t)coverEffectStyleForImage:(id)a3;
- (unint64_t)coverEffectsContentForImage:(id)a3;
- (void)_applyBookFilter:(id)a3 toImage:(CGImage *)a4 size:(CGSize)a5 completion:(id)a6;
- (void)transformSource:(id)a3 to:(id)a4 completion:(id)a5;
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

- (id)_bookFilter:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_3422D8 == -1)
  {
    if (v3)
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

- (CGImage)doRestrictedProcessing:(CGImage *)a3
{
  if (!a3)
  {
    return 0;
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);

  return [BCUCoverEffects restrictedImageFrom:a3 size:Width, Height];
}

- (void)transformSource:(id)a3 to:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 quality];
  v12 = BCImageCacheLog();
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1E6790(v8, v9, v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v68 = v8;
    v69 = 2112;
    v70 = v9;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "BCCacheImageTransformer: \nTransforming:\n %@ \ninto:\n %@", buf, 0x16u);
  }

  v14 = [v9 processingOptions];
  v15 = [v9 copy];
  if (v14)
  {
    v16 = [v8 image];
    [v15 setImage:v16];

    [v15 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", objc_msgSend(v8, "quality"))}];
    v17 = [v8 image];

    if (v17)
    {
      v18 = mainScreenScaleFactor();
      v19 = +[BCCoverEffects effectIdentifierWithRTL:style:content:nightMode:](BCCoverEffects, "effectIdentifierWithRTL:style:content:nightMode:", ([v9 processingOptions] >> 7) & 1, -[BCCacheImageTransformer coverEffectStyleForImage:](self, "coverEffectStyleForImage:", v9), -[BCCacheImageTransformer coverEffectsContentForImage:](self, "coverEffectsContentForImage:", v9), (objc_msgSend(v9, "processingOptions") >> 6) & 1);
      [v9 imageSize];
      v21 = v20;
      v23 = v22;
      [v8 imageSize];
      v25 = v24;
      [v9 imageSize];
      if (v25 < v26)
      {
        [v8 imageSize];
        v28 = v27;
        [v9 imageSize];
        if (v28 < v29 && [v15 quality] != 2)
        {
          [v15 setQuality:101];
        }
      }

      v30 = v21 / v18;
      v31 = v23 / v18;
      v32 = [v9 processingOptions];
      v33 = [v8 image];
      v34 = [v33 CGImage];
      if ((v32 & 0x400) != 0)
      {
        v34 = [(BCCacheImageTransformer *)self doRestrictedProcessing:v34];
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_67CEC;
      v61[3] = &unk_2CA1C0;
      v66 = v18;
      v62 = v15;
      v63 = v9;
      v64 = v8;
      v65 = v10;
      [(BCCacheImageTransformer *)self _applyBookFilter:v19 toImage:v34 size:v61 completion:v30, v31];

      goto LABEL_29;
    }

    v56 = objc_retainBlock(v10);
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

  [v15 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", objc_msgSend(v8, "quality"))}];
  v35 = [v8 image];
  v36 = [v35 CGImage];

  if (v36)
  {
    Width = CGImageGetWidth(v36);
    Height = CGImageGetHeight(v36);
    [v9 imageSize];
    v40 = v39;
    [v9 imageSize];
    v42 = v41;
    [v8 imageSize];
    v44 = v42 * v43;
    [v8 imageSize];
    v46 = round(v44 / v45);
    v47 = BCImageCacheLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = [v8 identifier];
      [v8 imageSize];
      NSStringFromCGSize(v75);
      v49 = v60 = Height;
      [v9 imageSize];
      v50 = NSStringFromCGSize(v76);
      v77.width = v40;
      v77.height = v46;
      v51 = NSStringFromCGSize(v77);
      *buf = 138413058;
      v68 = v48;
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
    CGContextDrawImage(v53, v78, v36);
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
    v58 = [v8 image];
    [v15 setImage:v58];
  }

  [v15 setUnknownAspectRatio:0];
  [BICCacheStats logDescribedImage:v15 withComment:@"CacheTransformWithProcessingOptionNone"];
  v59 = objc_retainBlock(v10);
  v19 = v59;
  if (v59)
  {
    v57 = v59[2];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_applyBookFilter:(id)a3 toImage:(CGImage *)a4 size:(CGSize)a5 completion:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a6;
  v12 = [(BCCacheImageTransformer *)self _bookFilter:a3];
  v13 = v12;
  if (a4 && v12)
  {
    v14 = mainScreenScaleFactor();
    v15 = TUIPriorityDefault;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_68028;
    v23[3] = &unk_2CA1E8;
    v23[4] = self;
    v24 = v11;
    LODWORD(v16) = v15;
    v17 = [v13 newOperationWithImage:a4 size:0 contentsScale:1 priority:0 options:v23 waitForCPUSynchronization:width logKey:height completion:{v14, v16}];
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
    v19 = objc_retainBlock(v11);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, a4, 0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }
  }
}

- (unint64_t)coverEffectStyleForImage:(id)a3
{
  v3 = a3;
  if (([v3 processingOptions] & 2) != 0)
  {
    v4 = 1;
  }

  else if (([v3 processingOptions] & 4) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = ([v3 processingOptions] >> 2) & 2;
  }

  return v4;
}

- (unint64_t)coverEffectsContentForImage:(id)a3
{
  v3 = a3;
  if (([v3 processingOptions] & 0x10) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = ([v3 processingOptions] & 0x100) == 0;
  }

  return v4;
}

@end