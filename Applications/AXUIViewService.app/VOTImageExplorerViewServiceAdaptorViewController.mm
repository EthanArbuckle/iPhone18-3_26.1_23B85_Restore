@interface VOTImageExplorerViewServiceAdaptorViewController
- (AXMVoiceOverVisionEngine)visionEngine;
- (BOOL)_isAssetLocallyAvailable;
- (id)_assetLocalIdentifier;
- (id)_explorerImage;
- (id)_imageURL;
- (id)_photoLibraryURL;
- (id)_screenGrabImage;
- (id)_visionFeatureDescriptionOptions;
- (void)_dismiss;
- (void)_populateCaptionAndMetadata;
- (void)_reloadImageViewIfNeeded;
- (void)_setupRemoteProxy;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation VOTImageExplorerViewServiceAdaptorViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VOTImageExplorerViewServiceAdaptorViewController;
  [(VOTImageExplorerViewServiceAdaptorViewController *)&v10 viewDidLoad];
  v3 = objc_alloc_init(VOTImageExplorerViewController);
  [(VOTImageExplorerViewServiceAdaptorViewController *)self setImageExplorerViewController:v3];

  v4 = [(VOTImageExplorerViewServiceAdaptorViewController *)self imageExplorerViewController];
  [v4 setDelegate:self];

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create("VOTImageExplorer-Vision", v5);
  axVisionQueue = self->_axVisionQueue;
  self->_axVisionQueue = v6;

  v8 = +[NSMutableArray array];
  detailData = self->_detailData;
  self->_detailData = v8;
}

- (AXMVoiceOverVisionEngine)visionEngine
{
  visionEngine = self->_visionEngine;
  if (!visionEngine)
  {
    v4 = objc_alloc_init(AXMVoiceOverVisionEngine);
    v5 = self->_visionEngine;
    self->_visionEngine = v4;

    visionEngine = self->_visionEngine;
  }

  return visionEngine;
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = VOTLogImageExplorer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000133E4();
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VOTLogImageExplorer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001347C();
  }

  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:AXVoiceOverImageExplorerVisionResultData];

  v11 = objc_opt_class();
  v12 = AXMSecureCodingClasses();
  v28 = 0;
  v13 = [NSKeyedUnarchiver axmSecurelyUnarchiveData:v10 withExpectedClass:v11 otherAllowedClasses:v12 error:&v28];
  v14 = v28;
  [(VOTImageExplorerViewServiceAdaptorViewController *)self setVisionResult:v13];

  v15 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0 || v14)
  {
    v18 = VOTLogImageExplorer();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100013540();
    }
  }

  else
  {
    v16 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];

    if (v16)
    {
      v17 = [v6 userInfo];
      v18 = [v17 objectForKeyedSubscript:AXVoiceOverImageExplorerElementInfoData];

      v27 = 0;
      v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v27];
      v20 = v27;
      [(VOTImageExplorerViewServiceAdaptorViewController *)self setElementInfo:v19];

      v21 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0 || v20)
      {
        v26 = VOTLogImageExplorer();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1000135FC();
        }
      }

      else
      {
        v23 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];

        if (v23)
        {
          v24 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
          v25 = [v24 hostAppName];
          [(VOTImageExplorerViewServiceAdaptorViewController *)self setHostAppName:v25];

          [(VOTImageExplorerViewServiceAdaptorViewController *)self _populateCaptionAndMetadata];
          if (v7)
          {
            v7[2](v7);
          }

          goto LABEL_20;
        }

        v26 = VOTLogImageExplorer();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1000136B8();
        }
      }

LABEL_20:
      goto LABEL_21;
    }

    v18 = VOTLogImageExplorer();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100013748();
    }
  }

LABEL_21:
}

- (void)_setupRemoteProxy
{
  v2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _remoteViewControllerProxy];
  [v2 setDismissalAnimationStyle:2];
  [v2 setOrientationChangedEventsEnabled:0];
  [v2 setAllowsMenuButtonDismissal:1];
  [v2 setWallpaperTunnelActive:0];
  [v2 setWallpaperStyle:4 withDuration:0.3];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100006804;
  v2[3] = &unk_100028758;
  v2[4] = self;
  [(VOTImageExplorerViewServiceAdaptorViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

- (BOOL)_isAssetLocallyAvailable
{
  v2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v3 = [v2 assetMetadataFeature];
  v4 = [v3 assetMetadata];
  v5 = [v4 assetLocallyAvailable];

  return v5;
}

- (id)_assetLocalIdentifier
{
  v2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v3 = [v2 assetMetadataFeature];
  v4 = [v3 assetMetadata];
  v5 = [v4 localIdentifier];

  return v5;
}

- (id)_screenGrabImage
{
  v3 = [UIImage alloc];
  v4 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v5 = [v4 image];
  v6 = [v3 initWithCIImage:v5];

  return v6;
}

- (id)_imageURL
{
  v2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v3 = [v2 assetMetadataFeature];
  v4 = [v3 assetMetadata];
  v5 = [v4 url];

  return v5;
}

- (id)_photoLibraryURL
{
  v2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v3 = [v2 assetMetadataFeature];
  v4 = [v3 assetMetadata];
  v5 = [v4 photoLibraryURL];

  return v5;
}

- (id)_explorerImage
{
  v3 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _isAssetLocallyAvailable];
  v4 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _assetLocalIdentifier];
  v5 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _imageURL];
  v6 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _screenGrabImage];
  v7 = 0;
  if (v4 && v3)
  {
    v8 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _photoAssetDataWithNetWorkAccess:0];
    v9 = VOTLogImageExplorer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000137D8();
    }

    v10 = [UIImage alloc];
    v11 = [v8 imageData];
    v7 = [v10 initWithData:v11];
  }

  if (!v7 && v6)
  {
    v12 = VOTLogImageExplorer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100013924();
    }

    v7 = v6;
    goto LABEL_21;
  }

  if (v7 || !v5)
  {
    goto LABEL_17;
  }

  if (+[AXUIViewServiceUtilities axTCCAllowsPhotoLibraryAccess])
  {
    v13 = VOTLogImageExplorer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = 138412802;
      v21 = v19;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v4;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ - Using url : %@ localIdentifier : %@", &v20, 0x20u);
    }

    v14 = [UIImage alloc];
    v15 = [v5 path];
    v7 = [v14 initWithContentsOfFile:v15];

LABEL_17:
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v16 = VOTLogImageExplorer();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_100013894();
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (void)_reloadImageViewIfNeeded
{
  v3 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _assetLocalIdentifier];
  if (![(VOTImageExplorerViewServiceAdaptorViewController *)self _isAssetLocallyAvailable]&& v3)
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = sub_100007024;
    v18[4] = sub_100007034;
    v19 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = sub_100007024;
    v16[4] = sub_100007034;
    v17 = 0;
    v4 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v5 = [(VOTImageExplorerViewServiceAdaptorViewController *)self axVisionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000703C;
    block[3] = &unk_100028908;
    objc_copyWeak(&v14, &location);
    v9 = v3;
    v10 = self;
    v12 = v18;
    v13 = v16;
    v11 = v4;
    v6 = v4;
    dispatch_async(v5, block);

    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100007448;
    v7[3] = &unk_100028930;
    v7[4] = self;
    v7[5] = v16;
    v7[6] = v18;
    dispatch_async(&_dispatch_main_q, v7);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(v16, 8);

    _Block_object_dispose(v18, 8);
  }
}

- (void)_populateCaptionAndMetadata
{
  v3 = +[NSMutableArray array];
  v4 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
  v5 = [v4 axLabel];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _screenGrabImage];
    if (v7)
    {
      v8 = v7;
      v9 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _assetLocalIdentifier];

      if (!v9)
      {
        v10 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
        v11 = [v10 axLabel];
        [v3 axSafelyAddObject:v11];
      }
    }
  }

  v12 = sub_10000CCD4(@"VoiceOverImageExplorer.caption.title");
  v13 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
  v14 = [v13 customContent];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100007AFC;
  v68[3] = &unk_100028958;
  v62 = v12;
  v69 = v62;
  v15 = [v14 ax_filteredArrayUsingBlock:v68];

  if ([v15 count])
  {
    v16 = [v15 firstObject];
    v17 = [v16 value];
    [v3 axSafelyAddObject:v17];
  }

  if ([v3 count])
  {
    v18 = [[VOTImageExplorerDetailData alloc] initWithKey:v62 values:v3];
    v19 = [(VOTImageExplorerViewServiceAdaptorViewController *)self detailData];
    [v19 axSafelyAddObject:v18];
  }

  v20 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v21 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _visionFeatureDescriptionOptions];
  v22 = [v20 detectedCaptionFeatureDescriptionWithOptions:v21];

  if ([v22 length])
  {
    v23 = [v22 axCapitalizeFirstLetter];

    v24 = [VOTImageExplorerDetailData alloc];
    v25 = sub_10000CCD4(@"VoiceOverImageExplorer.imgDesc");
    v73 = v23;
    v26 = [NSArray arrayWithObjects:&v73 count:1];
    v27 = [(VOTImageExplorerDetailData *)v24 initWithKey:v25 values:v26];

    v28 = [(VOTImageExplorerViewServiceAdaptorViewController *)self detailData];
    [v28 axSafelyAddObject:v27];

    v22 = v23;
  }

  v58 = v22;
  v59 = v15;
  v60 = v3;
  v29 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  v30 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _visionFeatureDescriptionOptions];
  v31 = [v29 detectedSceneClassificationFeatureDescriptionWithOptions:v30];

  if ([v31 length])
  {
    v32 = [VOTImageExplorerDetailData alloc];
    v33 = sub_10000CCD4(@"VoiceOverImageExplorer.scenes");
    v72 = v31;
    v34 = [NSArray arrayWithObjects:&v72 count:1];
    v35 = [(VOTImageExplorerDetailData *)v32 initWithKey:v33 values:v34];

    v36 = [(VOTImageExplorerViewServiceAdaptorViewController *)self detailData];
    [v36 axSafelyAddObject:v35];
  }

  v57 = v31;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v61 = self;
  v37 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
  v38 = [v37 customContent];

  obj = v38;
  v39 = [v38 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v65;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v65 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v64 + 1) + 8 * i);
        v44 = [v43 label];
        if (v44)
        {
          v45 = v44;
          v46 = [v43 value];
          if (v46)
          {
            v47 = v46;
            v48 = [v43 label];
            v49 = sub_10000CCD4(@"VoiceOverImageExplorer.faces.title");
            if ([v48 isEqualToString:v49])
            {
            }

            else
            {
              v50 = [v43 label];
              v51 = [v50 isEqualToString:v62];

              if (v51)
              {
                continue;
              }

              v52 = [VOTImageExplorerDetailData alloc];
              v53 = [v43 label];
              v54 = [v43 value];
              v70 = v54;
              v55 = [NSArray arrayWithObjects:&v70 count:1];
              v45 = [(VOTImageExplorerDetailData *)v52 initWithKey:v53 values:v55];

              v47 = [(VOTImageExplorerViewServiceAdaptorViewController *)v61 detailData];
              [v47 axSafelyAddObject:v45];
            }
          }
        }
      }

      v40 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v40);
  }

  v56 = VOTLogImageExplorer();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    sub_100013C5C(v61);
  }
}

- (id)_visionFeatureDescriptionOptions
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 voiceOverDiscoveredSensitiveContentFeedback];

  v8[0] = AXMFeatureDescriptionOptionLocale;
  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  v9[0] = v4;
  v8[1] = AXMFeatureDescriptionOptionModifyForSensitiveContent;
  v5 = [NSNumber numberWithInt:v3 == 0];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end