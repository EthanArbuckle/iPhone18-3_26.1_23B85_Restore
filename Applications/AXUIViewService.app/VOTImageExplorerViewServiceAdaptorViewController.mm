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
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
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

  imageExplorerViewController = [(VOTImageExplorerViewServiceAdaptorViewController *)self imageExplorerViewController];
  [imageExplorerViewController setDelegate:self];

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

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = VOTLogImageExplorer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000133E4();
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = VOTLogImageExplorer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001347C();
  }

  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:AXVoiceOverImageExplorerVisionResultData];

  v11 = objc_opt_class();
  v12 = AXMSecureCodingClasses();
  v28 = 0;
  v13 = [NSKeyedUnarchiver axmSecurelyUnarchiveData:v10 withExpectedClass:v11 otherAllowedClasses:v12 error:&v28];
  v14 = v28;
  [(VOTImageExplorerViewServiceAdaptorViewController *)self setVisionResult:v13];

  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
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
    visionResult2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];

    if (visionResult2)
    {
      userInfo2 = [contextCopy userInfo];
      v18 = [userInfo2 objectForKeyedSubscript:AXVoiceOverImageExplorerElementInfoData];

      v27 = 0;
      v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v27];
      v20 = v27;
      [(VOTImageExplorerViewServiceAdaptorViewController *)self setElementInfo:v19];

      elementInfo = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
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
        elementInfo2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];

        if (elementInfo2)
        {
          elementInfo3 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
          hostAppName = [elementInfo3 hostAppName];
          [(VOTImageExplorerViewServiceAdaptorViewController *)self setHostAppName:hostAppName];

          [(VOTImageExplorerViewServiceAdaptorViewController *)self _populateCaptionAndMetadata];
          if (completionCopy)
          {
            completionCopy[2](completionCopy);
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
  _remoteViewControllerProxy = [(VOTImageExplorerViewServiceAdaptorViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setDismissalAnimationStyle:2];
  [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setWallpaperTunnelActive:0];
  [_remoteViewControllerProxy setWallpaperStyle:4 withDuration:0.3];
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
  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  assetMetadataFeature = [visionResult assetMetadataFeature];
  assetMetadata = [assetMetadataFeature assetMetadata];
  assetLocallyAvailable = [assetMetadata assetLocallyAvailable];

  return assetLocallyAvailable;
}

- (id)_assetLocalIdentifier
{
  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  assetMetadataFeature = [visionResult assetMetadataFeature];
  assetMetadata = [assetMetadataFeature assetMetadata];
  localIdentifier = [assetMetadata localIdentifier];

  return localIdentifier;
}

- (id)_screenGrabImage
{
  v3 = [UIImage alloc];
  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  image = [visionResult image];
  v6 = [v3 initWithCIImage:image];

  return v6;
}

- (id)_imageURL
{
  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  assetMetadataFeature = [visionResult assetMetadataFeature];
  assetMetadata = [assetMetadataFeature assetMetadata];
  v5 = [assetMetadata url];

  return v5;
}

- (id)_photoLibraryURL
{
  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  assetMetadataFeature = [visionResult assetMetadataFeature];
  assetMetadata = [assetMetadataFeature assetMetadata];
  photoLibraryURL = [assetMetadata photoLibraryURL];

  return photoLibraryURL;
}

- (id)_explorerImage
{
  _isAssetLocallyAvailable = [(VOTImageExplorerViewServiceAdaptorViewController *)self _isAssetLocallyAvailable];
  _assetLocalIdentifier = [(VOTImageExplorerViewServiceAdaptorViewController *)self _assetLocalIdentifier];
  _imageURL = [(VOTImageExplorerViewServiceAdaptorViewController *)self _imageURL];
  _screenGrabImage = [(VOTImageExplorerViewServiceAdaptorViewController *)self _screenGrabImage];
  v7 = 0;
  if (_assetLocalIdentifier && _isAssetLocallyAvailable)
  {
    v8 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _photoAssetDataWithNetWorkAccess:0];
    v9 = VOTLogImageExplorer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000137D8();
    }

    v10 = [UIImage alloc];
    imageData = [v8 imageData];
    v7 = [v10 initWithData:imageData];
  }

  if (!v7 && _screenGrabImage)
  {
    v12 = VOTLogImageExplorer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100013924();
    }

    v7 = _screenGrabImage;
    goto LABEL_21;
  }

  if (v7 || !_imageURL)
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
      v23 = _imageURL;
      v24 = 2112;
      v25 = _assetLocalIdentifier;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ - Using url : %@ localIdentifier : %@", &v20, 0x20u);
    }

    v14 = [UIImage alloc];
    path = [_imageURL path];
    v7 = [v14 initWithContentsOfFile:path];

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
  _assetLocalIdentifier = [(VOTImageExplorerViewServiceAdaptorViewController *)self _assetLocalIdentifier];
  if (![(VOTImageExplorerViewServiceAdaptorViewController *)self _isAssetLocallyAvailable]&& _assetLocalIdentifier)
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
    axVisionQueue = [(VOTImageExplorerViewServiceAdaptorViewController *)self axVisionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000703C;
    block[3] = &unk_100028908;
    objc_copyWeak(&v14, &location);
    v9 = _assetLocalIdentifier;
    selfCopy = self;
    v12 = v18;
    v13 = v16;
    v11 = v4;
    v6 = v4;
    dispatch_async(axVisionQueue, block);

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
  elementInfo = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
  axLabel = [elementInfo axLabel];
  v6 = [axLabel length];

  if (v6)
  {
    _screenGrabImage = [(VOTImageExplorerViewServiceAdaptorViewController *)self _screenGrabImage];
    if (_screenGrabImage)
    {
      v8 = _screenGrabImage;
      _assetLocalIdentifier = [(VOTImageExplorerViewServiceAdaptorViewController *)self _assetLocalIdentifier];

      if (!_assetLocalIdentifier)
      {
        elementInfo2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
        axLabel2 = [elementInfo2 axLabel];
        [v3 axSafelyAddObject:axLabel2];
      }
    }
  }

  v12 = sub_10000CCD4(@"VoiceOverImageExplorer.caption.title");
  elementInfo3 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
  customContent = [elementInfo3 customContent];
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100007AFC;
  v68[3] = &unk_100028958;
  v62 = v12;
  v69 = v62;
  v15 = [customContent ax_filteredArrayUsingBlock:v68];

  if ([v15 count])
  {
    firstObject = [v15 firstObject];
    value = [firstObject value];
    [v3 axSafelyAddObject:value];
  }

  if ([v3 count])
  {
    v18 = [[VOTImageExplorerDetailData alloc] initWithKey:v62 values:v3];
    detailData = [(VOTImageExplorerViewServiceAdaptorViewController *)self detailData];
    [detailData axSafelyAddObject:v18];
  }

  visionResult = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  _visionFeatureDescriptionOptions = [(VOTImageExplorerViewServiceAdaptorViewController *)self _visionFeatureDescriptionOptions];
  v22 = [visionResult detectedCaptionFeatureDescriptionWithOptions:_visionFeatureDescriptionOptions];

  if ([v22 length])
  {
    axCapitalizeFirstLetter = [v22 axCapitalizeFirstLetter];

    v24 = [VOTImageExplorerDetailData alloc];
    v25 = sub_10000CCD4(@"VoiceOverImageExplorer.imgDesc");
    v73 = axCapitalizeFirstLetter;
    v26 = [NSArray arrayWithObjects:&v73 count:1];
    v27 = [(VOTImageExplorerDetailData *)v24 initWithKey:v25 values:v26];

    detailData2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self detailData];
    [detailData2 axSafelyAddObject:v27];

    v22 = axCapitalizeFirstLetter;
  }

  v58 = v22;
  v59 = v15;
  v60 = v3;
  visionResult2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self visionResult];
  _visionFeatureDescriptionOptions2 = [(VOTImageExplorerViewServiceAdaptorViewController *)self _visionFeatureDescriptionOptions];
  v31 = [visionResult2 detectedSceneClassificationFeatureDescriptionWithOptions:_visionFeatureDescriptionOptions2];

  if ([v31 length])
  {
    v32 = [VOTImageExplorerDetailData alloc];
    v33 = sub_10000CCD4(@"VoiceOverImageExplorer.scenes");
    v72 = v31;
    v34 = [NSArray arrayWithObjects:&v72 count:1];
    v35 = [(VOTImageExplorerDetailData *)v32 initWithKey:v33 values:v34];

    detailData3 = [(VOTImageExplorerViewServiceAdaptorViewController *)self detailData];
    [detailData3 axSafelyAddObject:v35];
  }

  v57 = v31;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  selfCopy = self;
  elementInfo4 = [(VOTImageExplorerViewServiceAdaptorViewController *)self elementInfo];
  customContent2 = [elementInfo4 customContent];

  obj = customContent2;
  v39 = [customContent2 countByEnumeratingWithState:&v64 objects:v71 count:16];
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
        label = [v43 label];
        if (label)
        {
          v45 = label;
          value2 = [v43 value];
          if (value2)
          {
            detailData4 = value2;
            label2 = [v43 label];
            v49 = sub_10000CCD4(@"VoiceOverImageExplorer.faces.title");
            if ([label2 isEqualToString:v49])
            {
            }

            else
            {
              label3 = [v43 label];
              v51 = [label3 isEqualToString:v62];

              if (v51)
              {
                continue;
              }

              v52 = [VOTImageExplorerDetailData alloc];
              label4 = [v43 label];
              value3 = [v43 value];
              v70 = value3;
              v55 = [NSArray arrayWithObjects:&v70 count:1];
              v45 = [(VOTImageExplorerDetailData *)v52 initWithKey:label4 values:v55];

              detailData4 = [(VOTImageExplorerViewServiceAdaptorViewController *)selfCopy detailData];
              [detailData4 axSafelyAddObject:v45];
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
    sub_100013C5C(selfCopy);
  }
}

- (id)_visionFeatureDescriptionOptions
{
  v2 = +[AXSettings sharedInstance];
  voiceOverDiscoveredSensitiveContentFeedback = [v2 voiceOverDiscoveredSensitiveContentFeedback];

  v8[0] = AXMFeatureDescriptionOptionLocale;
  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  v9[0] = v4;
  v8[1] = AXMFeatureDescriptionOptionModifyForSensitiveContent;
  v5 = [NSNumber numberWithInt:voiceOverDiscoveredSensitiveContentFeedback == 0];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end