@interface VOTVisionEngine
+ (BOOL)_shouldAnalyzeElement:(id)a3 deferToMediaAnalysisElementIfNeeded:(BOOL)a4;
+ (BOOL)elementNeedsAdditionalDescription:(id)a3;
- (BOOL)_processEmojiFor2DBrailleDisplay:(id)a3;
- (BOOL)processElementFor2DBrailleDisplay:(id)a3;
- (BOOL)processStringFor2DBrailleDisplay:(id)a3;
- (VOTVisionEngine)init;
- (VOTVisionEngineResultUpdateDelegate)resultUpdateDelegate;
- (id)_renderStringToImage:(id)a3;
- (id)_visionAnalysisOptionsForElement:(id)a3 visionOptions:(id)a4;
- (id)analysisOptionsFor2DBraille;
- (id)preferredMediaAnalysisLocale;
- (id)resultsForElement:(id)a3;
- (int64_t)_interfaceOrientationForElement:(id)a3;
- (void)analyzeElement:(id)a3 withOptions:(id)a4;
- (void)dealloc;
- (void)produceCaptionForElement:(id)a3 completion:(id)a4;
- (void)purgeCache;
@end

@implementation VOTVisionEngine

+ (BOOL)_shouldAnalyzeElement:(id)a3 deferToMediaAnalysisElementIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (AXDeviceIsAudioAccessory())
  {
    goto LABEL_5;
  }

  v7 = [v6 mediaAnalysisOptions];
  if ([v6 doesHaveTraits:kAXBackButtonTrait | kAXStaticTextTrait | kAXTextEntryTrait | kAXKeyboardKeyTrait | kAXAllowsDirectInteractionTrait | kAXMathEquationTrait | kAXAutoCorrectCandidateTrait | kAXTextAreaTrait | kAXMapTrait | kAXSecureTextFieldTrait | kAXWebInteractiveVideoTrait] & 1) != 0 || (objc_msgSend(v6, "isTouchContainer") & 1) != 0 || (objc_msgSend(v6, "isAccessibleGroup"))
  {
    goto LABEL_5;
  }

  if ([v6 doesHaveTraits:kAXImageTrait])
  {
    goto LABEL_11;
  }

  if (![v6 supportsMediaAnalysis])
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  if (v7 & 0x30000) != 0 || ([a1 elementNeedsAdditionalDescription:v6])
  {
LABEL_11:
    v8 = 1;
    goto LABEL_6;
  }

  v8 = 0;
  if (v7 && v4)
  {
    v10 = [v6 mediaAnalysisElement];
    v11 = v10;
    if (v10 && ([v10 isEqual:v6] & 1) == 0)
    {
      v8 = [a1 _shouldAnalyzeElement:v11 deferToMediaAnalysisElementIfNeeded:0];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_6:

  return v8;
}

+ (BOOL)elementNeedsAdditionalDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 label];
  v5 = +[NSCharacterSet whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];
  v9 = [v6 length] == 1 && (objc_msgSend(v3, "value"), v7 = ;
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
    v5 = [v4 imageCaptionGenderStrategy];
    v6 = [(VOTVisionEngine *)v2 engine];
    [v6 setGenderStrategy:v5];

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

    v13 = [(VOTVisionEngine *)v2 engine];
    [v13 prewarmEngine];

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

- (int64_t)_interfaceOrientationForElement:(id)a3
{
  v3 = [a3 application];
  v4 = [v3 applicationInterfaceOrientation];
  if (v4 - 1 < 4)
  {
    goto LABEL_30;
  }

  v5 = +[AXSubsystemVoiceOver sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
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
  v13 = [v12 applicationOrientation];
  if (v13 > 2)
  {
    if ((v13 - 5) >= 2)
    {
      v14 = 4;
      if (v13 == 4)
      {
        v15 = 3;
      }

      else
      {
        v15 = v4;
      }

      v16 = v13 == 3;
      goto LABEL_19;
    }

LABEL_22:
    v17 = +[AXSubsystemVoiceOver sharedInstance];
    v18 = [v17 ignoreLogging];

    if ((v18 & 1) == 0)
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

    v4 = 1;
    goto LABEL_29;
  }

  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = 1;
  if (v13 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v4;
  }

  v16 = v13 == 1;
LABEL_19:
  if (v16)
  {
    v4 = v14;
  }

  else
  {
    v4 = v15;
  }

LABEL_29:

LABEL_30:
  v24 = v4 - 1;
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
  v3 = [v2 selectedLanguage];

  if (![v3 length] || (+[AXMLocSupport sharedInstance](AXMLocSupport, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "localeForLanguageCode:", v3), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = [VOTSharedWorkspace systemSpokenLanguage];
    if ([v6 length])
    {
      v7 = +[AXMLocSupport sharedInstance];
      v5 = [v7 localeForLanguageCode:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_visionAnalysisOptionsForElement:(id)a3 visionOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mediaAnalysisOptions];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100104EB8;
  v31[3] = &unk_1001CB268;
  v9 = v7;
  v32 = v9;
  v10 = v6;
  v33 = v10;
  v34 = v8;
  v11 = objc_retainBlock(v31);
  v12 = [(VOTVisionEngine *)self preferredMediaAnalysisLocale];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100104F18;
  v28[3] = &unk_1001CB2D0;
  v13 = v10;
  v29 = v13;
  v14 = v12;
  v30 = v14;
  v15 = objc_retainBlock(v28);
  v16 = [(VOTVisionEngine *)self engine];
  if ([v9 includeFullImageDescriptionsForValidElements])
  {
    v17 = 1;
  }

  else
  {
    v17 = [v9 includeFullImageDescriptionsForAllElements];
  }

  v18 = [v16 configuredOptionsDisableAllDetectors:v11 elementOptions:v8 textRecognitionLevel:&stru_1001CB2A8 textDetectionLocales:v15 preferringFullCaptions:v17];

  if (v8)
  {
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      [v18 setDetectMADScenes:{objc_msgSend(v9, "includeSceneDetection")}];
      v19 = v18;
      v20 = 0;
    }

    else
    {
      [v18 setDetectMADScenes:0];
      v20 = [v9 includeSceneDetection];
      v19 = v18;
    }

    [v19 setDetectScenes:v20];
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
    v23 = [v21 path];
    v24 = [v22 fileExistsAtPath:v23 isDirectory:&v27];

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

- (id)_renderStringToImage:(id)a3
{
  v3 = a3;
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

  [v3 sizeWithAttributes:v8];
  [v3 drawInRect:v8 withAttributes:{v9 * -0.5 + 150.0, -28.0, 300.0, 256.0}];

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
  v4 = [v3 lastObject];
  v5 = NSSizeFromString(v4);

  v6 = [[AXMBrailleCanvasDescription alloc] initWithHeight:v5.height width:v5.width numberOfDiscretePinHeights:2];
  v7 = [[AXMBrailleEdgeDetectorOptions alloc] initWithCanvasDescription:v6];
  [v2 setBrailleEdgeOptions:v7];

  v8 = +[VOTPlanarBrailleManager manager];
  [v8 imageZoom];
  v10 = v9;
  v11 = [v2 brailleEdgeOptions];
  [v11 setZoomLevel:v10];

  v12 = +[VOTPlanarBrailleManager manager];
  v13 = [v12 imageInvert];
  v14 = [v2 brailleEdgeOptions];
  [v14 setInvert:v13];

  v15 = +[VOTPlanarBrailleManager manager];
  [v15 imageOrigin];
  v17 = v16;
  v19 = v18;
  v20 = [v2 brailleEdgeOptions];
  [v20 setOrigin:{v17, v19}];

  v21 = +[VOTPlanarBrailleManager manager];
  [v21 imageIntensity];
  v23 = v22;
  v24 = [v2 brailleEdgeOptions];
  [v24 setEdgeStrength:v23];

  return v2;
}

- (BOOL)processStringFor2DBrailleDisplay:(id)a3
{
  v4 = a3;
  if ([VOTSharedWorkspace hasActive2DBrailleDisplay])
  {
    v5 = [(VOTVisionEngine *)self _renderStringToImage:v4];
    v6 = v5 != 0;
    if (v5)
    {
      v7 = [(VOTVisionEngine *)self engine];
      v8 = [v7 imageNode];
      [v8 setShouldProcessRemotely:1];

      v9 = [(VOTVisionEngine *)self engine];
      v10 = [v9 imageNode];
      v11 = [(VOTVisionEngine *)self analysisOptionsFor2DBraille];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1001054B4;
      v13[3] = &unk_1001CB2F8;
      v14 = v4;
      [v10 triggerWithImage:v5 options:v11 cacheKey:v14 resultHandler:v13];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_processEmojiFor2DBrailleDisplay:(id)a3
{
  v4 = a3;
  if (([v4 mediaAnalysisOptions] & 0x80000) != 0)
  {
    v6 = [v4 label];
    v5 = [(VOTVisionEngine *)self processStringFor2DBrailleDisplay:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)processElementFor2DBrailleDisplay:(id)a3
{
  v4 = a3;
  if (![(VOTVisionEngine *)self _processEmojiFor2DBrailleDisplay:v4])
  {
    v6 = [v4 brailleMap];
    if (v6)
    {
      v5 = +[VOTBrailleManager manager];
      [v5 setBrailleMap:v6];
    }

    else
    {
      v7 = [v4 braille2DCanvasElement];
      if (v7)
      {
        v5 = v7;
      }

      else
      {
        if (![v4 hasImage])
        {
          LOBYTE(v5) = 0;
          goto LABEL_18;
        }

        v5 = v4;
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v8 = [v5 application];
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

        [v8 convertAccessibilityFrameToScreenCoordinates:{v14, v15, v16, v17}];
        [v8 convertAccessibilityFrameToScreenCoordinates:?];
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

      v37 = [v36 windowContextIDs];
      v38 = [(VOTVisionEngine *)self analysisOptionsFor2DBraille];
      [v38 setIgnoredLayerContextIDs:v37];
      v39 = [(VOTVisionEngine *)self engine];
      v40 = [v39 captureNode];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100105928;
      v42[3] = &unk_1001CB2F8;
      v43 = v4;
      [v40 triggerWithScreenCaptureRegion:v9 interfaceOrientation:v38 options:v43 cacheKey:v42 resultHandler:{v23, v25, v27, v29}];
    }

    LOBYTE(v5) = 1;
LABEL_18:

    goto LABEL_19;
  }

  LOBYTE(v5) = 1;
LABEL_19:

  return v5;
}

- (void)analyzeElement:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 mediaAnalysisElement];
    if (!v8)
    {
      v8 = v6;
    }

    v9 = [(VOTVisionEngine *)self _visionAnalysisOptionsForElement:v8 visionOptions:v7];
    if ([VOTSharedWorkspace buttonIconDetectionEnabled] && (objc_msgSend(v6, "doesHaveTraits:", kAXTextAreaTrait | kAXStaticTextTrait) & 1) == 0 && (objc_msgSend(v6, "frame"), v10 <= 100.0))
    {
      [v6 frame];
      v11 = v59 <= 100.0;
    }

    else
    {
      v11 = 0;
    }

    [v9 setDetectIconClass:v11];
    if ([VOTSharedWorkspace hasActive2DBrailleDisplay] && (objc_msgSend(v6, "brailleMap"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v13 = 1;
      [v9 setDetectBrailleEdges:1];
      v52 = [(VOTVisionEngine *)self analysisOptionsFor2DBraille];
      v53 = [v52 brailleEdgeOptions];
      [v9 setBrailleEdgeOptions:v53];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v8 url];
    v63 = [(VOTVisionEngine *)self _interfaceOrientationForElement:v8];
    [v8 mediaAnalysisFrame];
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
      [v8 visibleFrame];
      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22 = v26;
    }

    v70 = [v8 application];
    [v70 convertAccessibilityFrameToScreenCoordinates:{v19, v20, v21, v22}];
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
      v81 = self;
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
    v35 = v6;
    v76 = v35;
    v72 = v7;
    v77 = v7;
    v79 = v13;
    v36 = objc_retainBlock(v75);
    v74 = 0;
    v37 = 0;
    if ([(VOTVisionEngine *)v14 isFileURL])
    {
      v38 = +[NSFileManager defaultManager];
      v39 = [(VOTVisionEngine *)v73 path];
      v37 = [v38 fileExistsAtPath:v39 isDirectory:&v74];
    }

    v40 = [v8 isPHAssetLocallyAvailable];
    v41 = [v8 imageAssetLocalIdentifier];
    v42 = [v8 photoLibraryURL];
    if (v40 && v41)
    {
      v43 = AXMediaLogService();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v81 = v41;
        v82 = 2112;
        v83 = v42;
        v84 = 2112;
        v85 = v35;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "AnalyzeElement[AssetLocalIdentifier]: %@, photoLibraryURL:%@, element: %@", buf, 0x20u);
      }

      v44 = [(VOTVisionEngine *)self engine];
      v45 = [v44 imageNode];
      [v45 setShouldProcessRemotely:1];

      v46 = AXRuntimeCheck_MediaAnalysisSupport();
      v47 = [(VOTVisionEngine *)self engine];
      v48 = [v47 imageNode];
      v49 = v48;
      if (!v46)
      {
        v50 = v71;
        [v48 triggerWithImageAssetLocalIdentifier:v41 photoLibraryURL:v42 options:v71 cacheKey:v35 resultHandler:v36];
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
          v81 = v35;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "AnalyzeElement[ScreenCap] for element: %@", buf, 0xCu);
        }

        v47 = [(VOTVisionEngine *)self engine];
        v49 = [v47 captureNode];
        v50 = v71;
        [v49 triggerWithScreenCaptureRegion:v63 interfaceOrientation:v71 options:v35 cacheKey:v36 resultHandler:{v67, v66, v65, v64}];
        goto LABEL_30;
      }

      v54 = [(VOTVisionEngine *)self engine];
      v55 = [v54 imageNode];
      [v55 setShouldProcessRemotely:1];

      v56 = AXMediaLogService();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v81 = v73;
        v82 = 2112;
        v83 = v41;
        v84 = 2112;
        v85 = v42;
        v86 = 2112;
        v87 = v35;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "AnalyzeElement[URL]: %@, localIdentifier: %@, photoLibraryURL: %@, element: %@", buf, 0x2Au);
      }

      if (!v41)
      {
        v47 = [(VOTVisionEngine *)self engine];
        v49 = [v47 imageNode];
        v50 = v71;
        [v49 triggerWithImageURL:v73 options:v71 cacheKey:v35 resultHandler:v36];
        goto LABEL_30;
      }

      v57 = AXRuntimeCheck_MediaAnalysisSupport();
      v47 = [(VOTVisionEngine *)self engine];
      v58 = [v47 imageNode];
      v49 = v58;
      if (!v57)
      {
        v50 = v71;
        [v58 triggerWithImageURL:v73 assetLocalIdentifier:v41 photoLibraryURL:v42 options:v71 cacheKey:v35 resultHandler:v36];
        goto LABEL_30;
      }
    }

    v50 = v71;
    [v49 triggerWithImageAssetLocalIdentifier:v41 photoLibraryURL:v42 usePHAsset:1 options:v71 cacheKey:v35 resultHandler:v36];
LABEL_30:

    self->_wasCachePurged = 0;
    v7 = v72;
  }
}

- (id)resultsForElement:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(VOTVisionEngine *)self engine];
  v7 = [v6 cache];
  v8 = [v7 resultForKey:v4];

  if (v8)
  {
    [v5 addObject:v8];
  }

  return v5;
}

- (void)purgeCache
{
  v3 = [(VOTVisionEngine *)self engine];
  v4 = [v3 cache];
  [v4 purgeCache];

  self->_wasCachePurged = 1;
}

- (void)produceCaptionForElement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(AXMVisionAnalysisOptions);
    [v8 setDetectCaptions:1];
    [v8 setClientID:1];
    v9 = [v6 application];
    v10 = [(VOTVisionEngine *)self _interfaceOrientationForElement:v6];
    [v6 visibleFrame];
    [v9 convertAccessibilityFrameToScreenCoordinates:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = +[VOTElement systemWideElement];
    v20 = [v19 elementForAttribute:1005];

    v21 = [v20 windowContextIDs];
    [v8 setIgnoredLayerContextIDs:v21];
    +[NSDate timeIntervalSinceReferenceDate];
    v23 = v22;
    v24 = AXMediaLogService();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "ProduceCaption[ScreenCap] for element: %@", buf, 0xCu);
    }

    v25 = [(VOTVisionEngine *)self engine];
    v26 = [v25 captureNode];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001067EC;
    v28[3] = &unk_1001CB370;
    v30 = v23;
    v29 = v7;
    [v26 triggerWithScreenCaptureRegion:v10 interfaceOrientation:v8 options:0 cacheKey:v28 resultHandler:{v12, v14, v16, v18}];
  }

  else
  {
    v27 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100106760;
    block[3] = &unk_1001CB348;
    v32 = v7;
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