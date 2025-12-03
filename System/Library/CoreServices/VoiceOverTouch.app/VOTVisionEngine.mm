@interface VOTVisionEngine
+ (BOOL)_shouldAnalyzeElement:(id)element deferToMediaAnalysisElementIfNeeded:(BOOL)needed;
+ (BOOL)elementNeedsAdditionalDescription:(id)description;
- (BOOL)_processEmojiFor2DBrailleDisplay:(id)display;
- (BOOL)processElementFor2DBrailleDisplay:(id)display;
- (BOOL)processStringFor2DBrailleDisplay:(id)display;
- (VOTVisionEngine)init;
- (VOTVisionEngineResultUpdateDelegate)resultUpdateDelegate;
- (id)_renderStringToImage:(id)image;
- (id)_visionAnalysisOptionsForElement:(id)element visionOptions:(id)options;
- (id)analysisOptionsFor2DBraille;
- (id)preferredMediaAnalysisLocale;
- (id)resultsForElement:(id)element;
- (int64_t)_interfaceOrientationForElement:(id)element;
- (void)analyzeElement:(id)element withOptions:(id)options;
- (void)dealloc;
- (void)produceCaptionForElement:(id)element completion:(id)completion;
- (void)purgeCache;
@end

@implementation VOTVisionEngine

+ (BOOL)_shouldAnalyzeElement:(id)element deferToMediaAnalysisElementIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  elementCopy = element;
  if (AXDeviceIsAudioAccessory())
  {
    goto LABEL_5;
  }

  mediaAnalysisOptions = [elementCopy mediaAnalysisOptions];
  if ([elementCopy doesHaveTraits:kAXBackButtonTrait | kAXStaticTextTrait | kAXTextEntryTrait | kAXKeyboardKeyTrait | kAXAllowsDirectInteractionTrait | kAXMathEquationTrait | kAXAutoCorrectCandidateTrait | kAXTextAreaTrait | kAXMapTrait | kAXSecureTextFieldTrait | kAXWebInteractiveVideoTrait] & 1) != 0 || (objc_msgSend(elementCopy, "isTouchContainer") & 1) != 0 || (objc_msgSend(elementCopy, "isAccessibleGroup"))
  {
    goto LABEL_5;
  }

  if ([elementCopy doesHaveTraits:kAXImageTrait])
  {
    goto LABEL_11;
  }

  if (![elementCopy supportsMediaAnalysis])
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  if (mediaAnalysisOptions & 0x30000) != 0 || ([self elementNeedsAdditionalDescription:elementCopy])
  {
LABEL_11:
    v8 = 1;
    goto LABEL_6;
  }

  v8 = 0;
  if (mediaAnalysisOptions && neededCopy)
  {
    mediaAnalysisElement = [elementCopy mediaAnalysisElement];
    v11 = mediaAnalysisElement;
    if (mediaAnalysisElement && ([mediaAnalysisElement isEqual:elementCopy] & 1) == 0)
    {
      v8 = [self _shouldAnalyzeElement:v11 deferToMediaAnalysisElementIfNeeded:0];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_6:

  return v8;
}

+ (BOOL)elementNeedsAdditionalDescription:(id)description
{
  descriptionCopy = description;
  label = [descriptionCopy label];
  v5 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [label stringByTrimmingCharactersInSet:v5];
  v9 = [v6 length] == 1 && (objc_msgSend(descriptionCopy, "value"), v7 = ;
  return v9;
}

- (VOTVisionEngine)init
{
  v20.receiver = self;
  v20.super_class = VOTVisionEngine;
  v2 = [(VOTVisionEngine *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXMVoiceOverVisionEngine);
    [(VOTVisionEngine *)v2 setEngine:v3];

    objc_initWeak(&location, v2);
    v4 = +[AXSettings sharedInstance];
    imageCaptionGenderStrategy = [v4 imageCaptionGenderStrategy];
    engine = [(VOTVisionEngine *)v2 engine];
    [engine setGenderStrategy:imageCaptionGenderStrategy];

    v7 = +[AXSettings sharedInstance];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001046C0;
    v17[3] = &unk_1001C78D8;
    objc_copyWeak(&v18, &location);
    v8 = objc_loadWeakRetained(&location);
    [v7 registerUpdateBlock:v17 forRetrieveSelector:"imageCaptionGenderStrategy" withListener:v8];

    objc_destroyWeak(&v18);
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = off_1001FDB28;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100104748;
    v15[3] = &unk_1001CB240;
    objc_copyWeak(&v16, &location);
    v11 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:v15];
    languageConfigurationObserver = v2->_languageConfigurationObserver;
    v2->_languageConfigurationObserver = v11;

    engine2 = [(VOTVisionEngine *)v2 engine];
    [engine2 prewarmEngine];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_languageConfigurationObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_languageConfigurationObserver];
  }

  v4.receiver = self;
  v4.super_class = VOTVisionEngine;
  [(VOTVisionEngine *)&v4 dealloc];
}

- (int64_t)_interfaceOrientationForElement:(id)element
{
  application = [element application];
  applicationInterfaceOrientation = [application applicationInterfaceOrientation];
  if (applicationInterfaceOrientation - 1 < 4)
  {
    goto LABEL_30;
  }

  v5 = +[AXSubsystemVoiceOver sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemVoiceOver identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        v27 = 138543362;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", &v27, 0xCu);
      }
    }
  }

  v12 = +[VOTElement systemAppApplication];
  applicationOrientation = [v12 applicationOrientation];
  if (applicationOrientation > 2)
  {
    if ((applicationOrientation - 5) >= 2)
    {
      v14 = 4;
      if (applicationOrientation == 4)
      {
        v15 = 3;
      }

      else
      {
        v15 = applicationInterfaceOrientation;
      }

      v16 = applicationOrientation == 3;
      goto LABEL_19;
    }

LABEL_22:
    v17 = +[AXSubsystemVoiceOver sharedInstance];
    ignoreLogging2 = [v17 ignoreLogging];

    if ((ignoreLogging2 & 1) == 0)
    {
      v19 = +[AXSubsystemVoiceOver identifier];
      v20 = AXLoggerForFacility();

      v21 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = AXColorizeFormatLog();
        v23 = _AXStringForArgs();
        if (os_log_type_enabled(v20, v21))
        {
          v27 = 138543362;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v20, v21, "%{public}@", &v27, 0xCu);
        }
      }
    }

    applicationInterfaceOrientation = 1;
    goto LABEL_29;
  }

  if (!applicationOrientation)
  {
    goto LABEL_22;
  }

  v14 = 1;
  if (applicationOrientation == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = applicationInterfaceOrientation;
  }

  v16 = applicationOrientation == 1;
LABEL_19:
  if (v16)
  {
    applicationInterfaceOrientation = v14;
  }

  else
  {
    applicationInterfaceOrientation = v15;
  }

LABEL_29:

LABEL_30:
  v24 = applicationInterfaceOrientation - 1;
  if (v24 < 4)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)preferredMediaAnalysisLocale
{
  v2 = +[VOTWorkspace sharedWorkspace];
  selectedLanguage = [v2 selectedLanguage];

  if (![selectedLanguage length] || (+[AXMLocSupport sharedInstance](AXMLocSupport, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "localeForLanguageCode:", selectedLanguage), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    systemSpokenLanguage = [VOTSharedWorkspace systemSpokenLanguage];
    if ([systemSpokenLanguage length])
    {
      v7 = +[AXMLocSupport sharedInstance];
      v5 = [v7 localeForLanguageCode:systemSpokenLanguage];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_visionAnalysisOptionsForElement:(id)element visionOptions:(id)options
{
  elementCopy = element;
  optionsCopy = options;
  mediaAnalysisOptions = [elementCopy mediaAnalysisOptions];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100104EB8;
  v31[3] = &unk_1001CB268;
  v9 = optionsCopy;
  v32 = v9;
  v10 = elementCopy;
  v33 = v10;
  v34 = mediaAnalysisOptions;
  v11 = objc_retainBlock(v31);
  preferredMediaAnalysisLocale = [(VOTVisionEngine *)self preferredMediaAnalysisLocale];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100104F18;
  v28[3] = &unk_1001CB2D0;
  v13 = v10;
  v29 = v13;
  v14 = preferredMediaAnalysisLocale;
  v30 = v14;
  v15 = objc_retainBlock(v28);
  engine = [(VOTVisionEngine *)self engine];
  if ([v9 includeFullImageDescriptionsForValidElements])
  {
    includeFullImageDescriptionsForAllElements = 1;
  }

  else
  {
    includeFullImageDescriptionsForAllElements = [v9 includeFullImageDescriptionsForAllElements];
  }

  v18 = [engine configuredOptionsDisableAllDetectors:v11 elementOptions:mediaAnalysisOptions textRecognitionLevel:&stru_1001CB2A8 textDetectionLocales:v15 preferringFullCaptions:includeFullImageDescriptionsForAllElements];

  if (mediaAnalysisOptions)
  {
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      [v18 setDetectMADScenes:{objc_msgSend(v9, "includeSceneDetection")}];
      v19 = v18;
      includeSceneDetection = 0;
    }

    else
    {
      [v18 setDetectMADScenes:0];
      includeSceneDetection = [v9 includeSceneDetection];
      v19 = v18;
    }

    [v19 setDetectScenes:includeSceneDetection];
  }

  else
  {
    [v18 setDetectScenes:0];
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      [v18 setDetectMADScenes:0];
    }
  }

  v27 = 0;
  v21 = [v13 url];
  v25 = 1;
  if ([v21 isFileURL])
  {
    v22 = +[NSFileManager defaultManager];
    path = [v21 path];
    v24 = [v22 fileExistsAtPath:path isDirectory:&v27];

    if (v24)
    {
      if (v27 != 1)
      {
        v25 = 0;
      }
    }
  }

  [v18 setIncludeImageInResult:v25];
  [v18 setPreferredOutputLocale:v14];

  return v18;
}

- (id)_renderStringToImage:(id)image
{
  imageCopy = image;
  v16.width = 300.0;
  v16.height = 200.0;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 1.0);
  v4 = +[UIColor whiteColor];
  [v4 setFill];

  CurrentContext = UIGraphicsGetCurrentContext();
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = 300.0;
  v17.size.height = 200.0;
  CGContextFillRect(CurrentContext, v17);
  v13[0] = NSFontAttributeName;
  v6 = [UIFont systemFontOfSize:220.0];
  v14[0] = v6;
  v13[1] = NSForegroundColorAttributeName;
  v7 = +[UIColor blackColor];
  v14[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  [imageCopy sizeWithAttributes:v8];
  [imageCopy drawInRect:v8 withAttributes:{v9 * -0.5 + 150.0, -28.0, 300.0, 256.0}];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v11 = +[CIImage imageWithCGImage:](CIImage, "imageWithCGImage:", [v10 CGImage]);

  return v11;
}

- (id)analysisOptionsFor2DBraille
{
  v2 = objc_alloc_init(AXMVisionAnalysisOptions);
  [v2 setDetectBrailleEdges:1];
  v3 = _AXSVoiceOverTouchActive2DBrailleDisplays();
  lastObject = [v3 lastObject];
  v5 = NSSizeFromString(lastObject);

  v6 = [[AXMBrailleCanvasDescription alloc] initWithHeight:v5.height width:v5.width numberOfDiscretePinHeights:2];
  v7 = [[AXMBrailleEdgeDetectorOptions alloc] initWithCanvasDescription:v6];
  [v2 setBrailleEdgeOptions:v7];

  v8 = +[VOTPlanarBrailleManager manager];
  [v8 imageZoom];
  v10 = v9;
  brailleEdgeOptions = [v2 brailleEdgeOptions];
  [brailleEdgeOptions setZoomLevel:v10];

  v12 = +[VOTPlanarBrailleManager manager];
  imageInvert = [v12 imageInvert];
  brailleEdgeOptions2 = [v2 brailleEdgeOptions];
  [brailleEdgeOptions2 setInvert:imageInvert];

  v15 = +[VOTPlanarBrailleManager manager];
  [v15 imageOrigin];
  v17 = v16;
  v19 = v18;
  brailleEdgeOptions3 = [v2 brailleEdgeOptions];
  [brailleEdgeOptions3 setOrigin:{v17, v19}];

  v21 = +[VOTPlanarBrailleManager manager];
  [v21 imageIntensity];
  v23 = v22;
  brailleEdgeOptions4 = [v2 brailleEdgeOptions];
  [brailleEdgeOptions4 setEdgeStrength:v23];

  return v2;
}

- (BOOL)processStringFor2DBrailleDisplay:(id)display
{
  displayCopy = display;
  if ([VOTSharedWorkspace hasActive2DBrailleDisplay])
  {
    v5 = [(VOTVisionEngine *)self _renderStringToImage:displayCopy];
    v6 = v5 != 0;
    if (v5)
    {
      engine = [(VOTVisionEngine *)self engine];
      imageNode = [engine imageNode];
      [imageNode setShouldProcessRemotely:1];

      engine2 = [(VOTVisionEngine *)self engine];
      imageNode2 = [engine2 imageNode];
      analysisOptionsFor2DBraille = [(VOTVisionEngine *)self analysisOptionsFor2DBraille];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001054B4;
      v13[3] = &unk_1001CB2F8;
      v14 = displayCopy;
      [imageNode2 triggerWithImage:v5 options:analysisOptionsFor2DBraille cacheKey:v14 resultHandler:v13];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_processEmojiFor2DBrailleDisplay:(id)display
{
  displayCopy = display;
  if (([displayCopy mediaAnalysisOptions] & 0x80000) != 0)
  {
    label = [displayCopy label];
    v5 = [(VOTVisionEngine *)self processStringFor2DBrailleDisplay:label];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)processElementFor2DBrailleDisplay:(id)display
{
  displayCopy = display;
  if (![(VOTVisionEngine *)self _processEmojiFor2DBrailleDisplay:displayCopy])
  {
    brailleMap = [displayCopy brailleMap];
    if (brailleMap)
    {
      v5 = +[VOTBrailleManager manager];
      [v5 setBrailleMap:brailleMap];
    }

    else
    {
      braille2DCanvasElement = [displayCopy braille2DCanvasElement];
      if (braille2DCanvasElement)
      {
        v5 = braille2DCanvasElement;
      }

      else
      {
        if (![displayCopy hasImage])
        {
          LOBYTE(v5) = 0;
          goto LABEL_18;
        }

        v5 = displayCopy;
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      application = [v5 application];
      v9 = [(VOTVisionEngine *)self _interfaceOrientationForElement:v5];
      [v5 braille2DRenderRegion];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      if (CGRectIsEmpty(v44))
      {
        [v5 mediaAnalysisFrame];
        v14 = v45.origin.x;
        v15 = v45.origin.y;
        v16 = v45.size.width;
        v17 = v45.size.height;
        v47.origin.x = CGRectZero.origin.x;
        v47.origin.y = CGRectZero.origin.y;
        v47.size.width = CGRectZero.size.width;
        v47.size.height = CGRectZero.size.height;
        if (CGRectEqualToRect(v45, v47) || (v46.origin.x = v14, v46.origin.y = v15, v46.size.width = v16, v46.size.height = v17, CGRectIsInfinite(v46)))
        {
          [v5 visibleFrame];
          v14 = v18;
          v15 = v19;
          v16 = v20;
          v17 = v21;
        }

        [application convertAccessibilityFrameToScreenCoordinates:{v14, v15, v16, v17}];
        [application convertAccessibilityFrameToScreenCoordinates:?];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
      }

      else
      {
        v30 = +[VOTElement systemWideElement];
        [v30 convertRect:objc_msgSend(v5 fromContextId:{"windowContextId"), x, y, width, height}];
        v23 = v31;
        v25 = v32;
        v27 = v33;
        v29 = v34;
      }

      v35 = +[VOTElement systemWideElement];
      v36 = [v35 elementForAttribute:1005];

      windowContextIDs = [v36 windowContextIDs];
      analysisOptionsFor2DBraille = [(VOTVisionEngine *)self analysisOptionsFor2DBraille];
      [analysisOptionsFor2DBraille setIgnoredLayerContextIDs:windowContextIDs];
      engine = [(VOTVisionEngine *)self engine];
      captureNode = [engine captureNode];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100105928;
      v42[3] = &unk_1001CB2F8;
      v43 = displayCopy;
      [captureNode triggerWithScreenCaptureRegion:v9 interfaceOrientation:analysisOptionsFor2DBraille options:v43 cacheKey:v42 resultHandler:{v23, v25, v27, v29}];
    }

    LOBYTE(v5) = 1;
LABEL_18:

    goto LABEL_19;
  }

  LOBYTE(v5) = 1;
LABEL_19:

  return v5;
}

- (void)analyzeElement:(id)element withOptions:(id)options
{
  elementCopy = element;
  optionsCopy = options;
  if (elementCopy)
  {
    mediaAnalysisElement = [elementCopy mediaAnalysisElement];
    if (!mediaAnalysisElement)
    {
      mediaAnalysisElement = elementCopy;
    }

    v9 = [(VOTVisionEngine *)self _visionAnalysisOptionsForElement:mediaAnalysisElement visionOptions:optionsCopy];
    if ([VOTSharedWorkspace buttonIconDetectionEnabled] && (objc_msgSend(elementCopy, "doesHaveTraits:", kAXTextAreaTrait | kAXStaticTextTrait) & 1) == 0 && (objc_msgSend(elementCopy, "frame"), v10 <= 100.0))
    {
      [elementCopy frame];
      v11 = v59 <= 100.0;
    }

    else
    {
      v11 = 0;
    }

    [v9 setDetectIconClass:v11];
    if ([VOTSharedWorkspace hasActive2DBrailleDisplay] && (objc_msgSend(elementCopy, "brailleMap"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v13 = 1;
      [v9 setDetectBrailleEdges:1];
      analysisOptionsFor2DBraille = [(VOTVisionEngine *)self analysisOptionsFor2DBraille];
      brailleEdgeOptions = [analysisOptionsFor2DBraille brailleEdgeOptions];
      [v9 setBrailleEdgeOptions:brailleEdgeOptions];
    }

    else
    {
      v13 = 0;
    }

    v14 = [mediaAnalysisElement url];
    v63 = [(VOTVisionEngine *)self _interfaceOrientationForElement:mediaAnalysisElement];
    [mediaAnalysisElement mediaAnalysisFrame];
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    v93.origin.x = CGRectZero.origin.x;
    v93.origin.y = CGRectZero.origin.y;
    v93.size.width = CGRectZero.size.width;
    v93.size.height = CGRectZero.size.height;
    if (CGRectEqualToRect(v88, v93) || (v89.origin.x = x, v89.origin.y = y, v89.size.width = width, v89.size.height = height, v19 = x, v20 = y, v21 = width, v22 = height, CGRectIsInfinite(v89)))
    {
      [mediaAnalysisElement visibleFrame];
      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22 = v26;
    }

    application = [mediaAnalysisElement application];
    [application convertAccessibilityFrameToScreenCoordinates:{v19, v20, v21, v22}];
    v66 = v28;
    v67 = v27;
    v64 = v30;
    v65 = v29;
    v31 = VOTLogCommon();
    v73 = v14;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v90.origin.x = x;
      v90.origin.y = y;
      v90.size.width = width;
      v90.size.height = height;
      v60 = NSStringFromCGRect(v90);
      v91.origin.x = v19;
      v91.origin.y = v20;
      v91.size.width = v21;
      v91.size.height = v22;
      v61 = NSStringFromCGRect(v91);
      v92.origin.y = v66;
      v92.origin.x = v67;
      v92.size.height = v64;
      v92.size.width = v65;
      v62 = NSStringFromCGRect(v92);
      *buf = 138413058;
      selfCopy = self;
      v82 = 2112;
      v83 = v60;
      v84 = 2112;
      v85 = v61;
      v86 = 2112;
      v87 = v62;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Vision analysis frame for element %@: visionAnalysis:%@ captureRegion:%@ convertedFrame:%@", buf, 0x2Au);

      v14 = v73;
    }

    v32 = +[VOTElement systemWideElement];
    v33 = [v32 elementForAttribute:1005];

    v69 = v33;
    [v33 windowContextIDs];
    v68 = v71 = v9;
    [v9 setIgnoredLayerContextIDs:?];
    +[NSDate timeIntervalSinceReferenceDate];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1001061E4;
    v75[3] = &unk_1001CB320;
    v78 = v34;
    v75[4] = self;
    v35 = elementCopy;
    v76 = v35;
    v72 = optionsCopy;
    v77 = optionsCopy;
    v79 = v13;
    v36 = objc_retainBlock(v75);
    v74 = 0;
    v37 = 0;
    if ([(VOTVisionEngine *)v14 isFileURL])
    {
      v38 = +[NSFileManager defaultManager];
      path = [(VOTVisionEngine *)v73 path];
      v37 = [v38 fileExistsAtPath:path isDirectory:&v74];
    }

    isPHAssetLocallyAvailable = [mediaAnalysisElement isPHAssetLocallyAvailable];
    imageAssetLocalIdentifier = [mediaAnalysisElement imageAssetLocalIdentifier];
    photoLibraryURL = [mediaAnalysisElement photoLibraryURL];
    if (isPHAssetLocallyAvailable && imageAssetLocalIdentifier)
    {
      v43 = AXMediaLogService();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy = imageAssetLocalIdentifier;
        v82 = 2112;
        v83 = photoLibraryURL;
        v84 = 2112;
        v85 = v35;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "AnalyzeElement[AssetLocalIdentifier]: %@, photoLibraryURL:%@, element: %@", buf, 0x20u);
      }

      engine = [(VOTVisionEngine *)self engine];
      imageNode = [engine imageNode];
      [imageNode setShouldProcessRemotely:1];

      v46 = AXRuntimeCheck_MediaAnalysisSupport();
      engine2 = [(VOTVisionEngine *)self engine];
      imageNode2 = [engine2 imageNode];
      captureNode = imageNode2;
      if (!v46)
      {
        v50 = v71;
        [imageNode2 triggerWithImageAssetLocalIdentifier:imageAssetLocalIdentifier photoLibraryURL:photoLibraryURL options:v71 cacheKey:v35 resultHandler:v36];
        goto LABEL_30;
      }
    }

    else
    {
      if (!v37 || (v74 & 1) != 0)
      {
        v51 = AXMediaLogService();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy = v35;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "AnalyzeElement[ScreenCap] for element: %@", buf, 0xCu);
        }

        engine2 = [(VOTVisionEngine *)self engine];
        captureNode = [engine2 captureNode];
        v50 = v71;
        [captureNode triggerWithScreenCaptureRegion:v63 interfaceOrientation:v71 options:v35 cacheKey:v36 resultHandler:{v67, v66, v65, v64}];
        goto LABEL_30;
      }

      engine3 = [(VOTVisionEngine *)self engine];
      imageNode3 = [engine3 imageNode];
      [imageNode3 setShouldProcessRemotely:1];

      v56 = AXMediaLogService();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        selfCopy = v73;
        v82 = 2112;
        v83 = imageAssetLocalIdentifier;
        v84 = 2112;
        v85 = photoLibraryURL;
        v86 = 2112;
        v87 = v35;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "AnalyzeElement[URL]: %@, localIdentifier: %@, photoLibraryURL: %@, element: %@", buf, 0x2Au);
      }

      if (!imageAssetLocalIdentifier)
      {
        engine2 = [(VOTVisionEngine *)self engine];
        captureNode = [engine2 imageNode];
        v50 = v71;
        [captureNode triggerWithImageURL:v73 options:v71 cacheKey:v35 resultHandler:v36];
        goto LABEL_30;
      }

      v57 = AXRuntimeCheck_MediaAnalysisSupport();
      engine2 = [(VOTVisionEngine *)self engine];
      imageNode4 = [engine2 imageNode];
      captureNode = imageNode4;
      if (!v57)
      {
        v50 = v71;
        [imageNode4 triggerWithImageURL:v73 assetLocalIdentifier:imageAssetLocalIdentifier photoLibraryURL:photoLibraryURL options:v71 cacheKey:v35 resultHandler:v36];
        goto LABEL_30;
      }
    }

    v50 = v71;
    [captureNode triggerWithImageAssetLocalIdentifier:imageAssetLocalIdentifier photoLibraryURL:photoLibraryURL usePHAsset:1 options:v71 cacheKey:v35 resultHandler:v36];
LABEL_30:

    self->_wasCachePurged = 0;
    optionsCopy = v72;
  }
}

- (id)resultsForElement:(id)element
{
  elementCopy = element;
  v5 = +[NSMutableArray array];
  engine = [(VOTVisionEngine *)self engine];
  cache = [engine cache];
  v8 = [cache resultForKey:elementCopy];

  if (v8)
  {
    [v5 addObject:v8];
  }

  return v5;
}

- (void)purgeCache
{
  engine = [(VOTVisionEngine *)self engine];
  cache = [engine cache];
  [cache purgeCache];

  self->_wasCachePurged = 1;
}

- (void)produceCaptionForElement:(id)element completion:(id)completion
{
  elementCopy = element;
  completionCopy = completion;
  if (elementCopy)
  {
    v8 = objc_alloc_init(AXMVisionAnalysisOptions);
    [v8 setDetectCaptions:1];
    [v8 setClientID:1];
    application = [elementCopy application];
    v10 = [(VOTVisionEngine *)self _interfaceOrientationForElement:elementCopy];
    [elementCopy visibleFrame];
    [application convertAccessibilityFrameToScreenCoordinates:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = +[VOTElement systemWideElement];
    v20 = [v19 elementForAttribute:1005];

    windowContextIDs = [v20 windowContextIDs];
    [v8 setIgnoredLayerContextIDs:windowContextIDs];
    +[NSDate timeIntervalSinceReferenceDate];
    v23 = v22;
    v24 = AXMediaLogService();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = elementCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "ProduceCaption[ScreenCap] for element: %@", buf, 0xCu);
    }

    engine = [(VOTVisionEngine *)self engine];
    captureNode = [engine captureNode];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001067EC;
    v28[3] = &unk_1001CB370;
    v30 = v23;
    v29 = completionCopy;
    [captureNode triggerWithScreenCaptureRegion:v10 interfaceOrientation:v8 options:0 cacheKey:v28 resultHandler:{v12, v14, v16, v18}];
  }

  else
  {
    v27 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100106760;
    block[3] = &unk_1001CB348;
    v32 = completionCopy;
    dispatch_async(v27, block);

    v8 = v32;
  }
}

- (VOTVisionEngineResultUpdateDelegate)resultUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultUpdateDelegate);

  return WeakRetained;
}

@end