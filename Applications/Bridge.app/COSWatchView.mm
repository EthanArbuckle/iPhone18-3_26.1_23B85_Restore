@interface COSWatchView
+ (id)_screenCache;
- (unint64_t)deviceSize;
- (void)applyScreenStyle;
- (void)setAssociatedDevice:(id)a3;
- (void)setScreenStyle:(unint64_t)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setWatchFaceFilePath:(id)a3;
- (void)updateWatchFace;
@end

@implementation COSWatchView

+ (id)_screenCache
{
  if (qword_1002BD5A0 != -1)
  {
    sub_1001899D4();
  }

  v3 = qword_1002BD598;

  return v3;
}

- (void)applyScreenStyle
{
  v3 = [(COSWatchView *)self watchScreenImageView];

  if (v3)
  {
    screenStyle = self->_screenStyle;
    v8 = [(COSWatchView *)self watchScreenImageView];
    v5 = [v8 layer];
    v6 = v5;
    if (screenStyle == 1)
    {
      v7 = [CAFilter filterWithType:kCAFilterMultiplyBlendMode];
      [v6 setCompositingFilter:v7];
    }

    else
    {
      [v5 setCompositingFilter:0];
    }
  }
}

- (void)setScreenStyle:(unint64_t)a3
{
  screenStyle = self->_screenStyle;
  self->_screenStyle = a3;
  if (screenStyle != a3)
  {
    [(COSWatchView *)self applyScreenStyle];
  }
}

- (void)setAssociatedDevice:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_associatedDevice, a3);
  v6 = [(NRDevice *)self->_associatedDevice valueForProperty:NRDevicePropertyIsAltAccount];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    snapshotProvider = self->_snapshotProvider;
    self->_snapshotProvider = 0;

    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[COSWatchView setAssociatedDevice:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: tinker device, using static screen image", &v15, 0xCu);
    }

    v10 = sub_10002D528(@"Screen-Carousel-v10");
    [(COSWatchView *)self setScreenImageName:v10];
  }

  else
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[COSWatchView setAssociatedDevice:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
    }

    if (self->_associatedDevice && BPSDeviceHasCapabilityForString())
    {
      v12 = [(NRDevice *)self->_associatedDevice valueForProperty:NRDevicePropertyPairingID];
      v13 = [[NTKLibrarySelectedFaceSnapshotProvider alloc] initWithDeviceUUID:v12];
      v14 = self->_snapshotProvider;
      self->_snapshotProvider = v13;

      [(NTKLibrarySelectedFaceSnapshotProvider *)self->_snapshotProvider setDelegate:self];
    }

    [(COSWatchView *)self updateWatchFace];
  }
}

- (void)setWatchFaceFilePath:(id)a3
{
  objc_storeStrong(&self->_watchFaceFilePath, a3);

  [(COSWatchView *)self updateWatchFace];
}

- (unint64_t)deviceSize
{
  associatedDevice = self->_associatedDevice;
  if (associatedDevice)
  {
    v4 = [(NRDevice *)associatedDevice valueForProperty:NRDevicePropertyProductType];
    if (v4)
    {
      v5 = [(NRDevice *)self->_associatedDevice valueForProperty:NRDevicePropertyArtworkTraits];
      v6 = MGGetBoolAnswer();
      v7 = pbb_bridge_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 && v5)
      {
        if (v8)
        {
          *buf = 136315138;
          v16 = "[COSWatchView deviceSize]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyArtworkTraits to get PBBDeviceSize", buf, 0xCu);
        }

        v9 = [v5 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
        [v9 unsignedIntegerValue];

        v10 = BPSVariantSizeForArtworkDeviceSubType();
      }

      else
      {
        if (v8)
        {
          *buf = 136315138;
          v16 = "[COSWatchView deviceSize]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyProductType to get PBBDeviceSize", buf, 0xCu);
        }

        v10 = BPSVariantSizeForProductType();
      }

      v11 = v10;
    }

    else
    {
      v5 = pbb_bridge_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_associatedDevice;
        *buf = 136315394;
        v16 = "[COSWatchView deviceSize]";
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: ERROR: product type for %@ is nil, setting size to generic which will break layout", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = COSWatchView;
    return [(COSWatchView *)&v14 deviceSize];
  }

  return v11;
}

- (void)updateWatchFace
{
  if (self->_associatedDevice && BPSDeviceHasCapabilityForString())
  {
    v3 = [(NRDevice *)self->_associatedDevice valueForProperty:NRDevicePropertyPairingID];
    v4 = v3;
    if (v3)
    {
      v5 = [(NSString *)v3 UUIDString];
      v6 = [NSNumber numberWithUnsignedInteger:[(COSWatchView *)self style]];
      v7 = [NSString stringWithFormat:@"%@.%@", v5, v6];
    }

    else
    {
      v7 = 0;
    }

    v26 = [(NTKLibrarySelectedFaceSnapshotProvider *)self->_snapshotProvider snapshotImage];
    [(COSWatchView *)self screenImageSize];
    if (v26)
    {
      v29 = v27;
      v30 = v28;
      v18 = [v26 imageByPreparingThumbnailOfSize:?];

      v31 = pbb_bridge_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v60 = v18;
        v61 = 2048;
        v62 = v29;
        v63 = 2048;
        v64 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "COSWatchView: generated %@ with size: (%f,%f)", buf, 0x20u);
      }

      if (!v4 || !v18)
      {
        goto LABEL_22;
      }

      v32 = +[COSWatchView _screenCache];
      [v32 setObject:v18 forKey:v7];
    }

    else
    {
      v32 = +[COSWatchView _screenCache];
      v18 = [v32 objectForKey:v7];
    }

LABEL_22:
    goto LABEL_40;
  }

  watchFaceFilePath = self->_watchFaceFilePath;
  if (watchFaceFilePath)
  {
    v4 = watchFaceFilePath;
    goto LABEL_7;
  }

  if (self->_staticSnapShot)
  {
    [(COSWatchView *)self screenImageSize];
    v20 = v19;
    v22 = v21;
    staticSnapShot = self->_staticSnapShot;
    v24 = +[UIScreen mainScreen];
    [v24 scale];
    v18 = [BPSThumbnailGenerator scaledImageForImage:staticSnapShot desiredSize:v20 scale:v22, v25];

    goto LABEL_12;
  }

  associatedDevice = self->_associatedDevice;
  if (!associatedDevice)
  {
    v4 = 0;
LABEL_39:
    v18 = 0;
    goto LABEL_40;
  }

  v18 = [(NRDevice *)associatedDevice valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  if (!v18)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_40;
  }

  v34 = +[NSFileManager defaultManager];
  v57 = 0;
  v35 = [v34 contentsOfDirectoryAtPath:v18 error:&v57];
  v36 = v57;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v37 = v35;
  v38 = [v37 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v54;
LABEL_27:
    v41 = 0;
    while (1)
    {
      if (*v54 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v42 = *(*(&v53 + 1) + 8 * v41);
      [v42 rangeOfString:@"ActiveWatchFace" options:8];
      if (v43)
      {
        break;
      }

      if (v39 == ++v41)
      {
        v39 = [v37 countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v39)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    v44 = v42;

    if (!v44)
    {
      goto LABEL_37;
    }

    v4 = [v18 stringByAppendingPathComponent:v44];
  }

  else
  {
LABEL_33:

    v44 = 0;
LABEL_37:
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_39;
  }

LABEL_7:
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v4];

  if (!v10)
  {
    goto LABEL_39;
  }

  v11 = [UIImage imageWithContentsOfFile:v4];
  [(COSWatchView *)self screenImageSize];
  if (!v11)
  {
    goto LABEL_39;
  }

  v14 = v12;
  v15 = v13;
  v16 = +[UIScreen mainScreen];
  [v16 scale];
  v18 = [BPSThumbnailGenerator scaledImageForImage:v11 desiredSize:v14 scale:v15, v17];

LABEL_40:
  v45 = [(COSWatchView *)self watchScreenImageView];
  v46 = 1;
  [v45 setContentMode:1];

  v47 = [(COSWatchView *)self watchScreenImageView];
  [v47 setImage:v18];

  [(COSWatchView *)self layoutWatchScreenImageView];
  v48 = [(COSWatchView *)self deviceSize];
  v49 = 18.0;
  if (v48 != 19 && v48 != 25)
  {
    if ((v48 & 0xFFFFFFFFFFFFFFFELL) == 0x14)
    {
      v49 = 18.0;
    }

    else
    {
      v49 = 12.0;
    }

    if (v48 <= 0x15 && ((1 << v48) & 0x306000) != 0)
    {
      v46 = 1;
    }

    else
    {
      v46 = 0;
      v49 = 0.0;
    }
  }

  v50 = [(COSWatchView *)self watchScreenImageView];
  v51 = [v50 layer];
  [v51 setCornerRadius:v49];

  v52 = [(COSWatchView *)self watchScreenImageView];
  [v52 setClipsToBounds:v46];

  [(COSWatchView *)self setNeedsLayout];
  [(COSWatchView *)self applyScreenStyle];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = COSWatchView;
  [(COSWatchView *)&v6 setUserInteractionEnabled:?];
  v5 = 0.5;
  if (v3)
  {
    v5 = 1.0;
  }

  [(COSWatchView *)self setAlpha:v5];
}

@end