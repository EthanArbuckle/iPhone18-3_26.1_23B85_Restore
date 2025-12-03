@interface AXCameraSceneDescriber
- (AXCameraSceneDescriber)init;
- (void)imageDescriptionForCurrentCameraScene:(id)scene withPreferredLocale:(id)locale;
- (void)visionResultHandler:(id)handler withFeatureDescriptionOptions:(id)options result:(id)result error:(id)error;
@end

@implementation AXCameraSceneDescriber

- (AXCameraSceneDescriber)init
{
  v9.receiver = self;
  v9.super_class = AXCameraSceneDescriber;
  v2 = [(AXCameraSceneDescriber *)&v9 init];
  v3 = [[AXCameraManager alloc] init];
  manager = v2->_manager;
  v2->_manager = v3;

  v5 = [objc_alloc(MEMORY[0x1E6988C68]) init];
  visionEngine = v2->_visionEngine;
  v2->_visionEngine = v5;

  imageNode = [(AXMVoiceOverVisionEngine *)v2->_visionEngine imageNode];
  [imageNode setShouldProcessRemotely:1];

  [(AXMVoiceOverVisionEngine *)v2->_visionEngine prewarmEngine];
  return v2;
}

- (void)imageDescriptionForCurrentCameraScene:(id)scene withPreferredLocale:(id)locale
{
  v31[2] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v30[0] = *MEMORY[0x1E6988C38];
  v7 = MEMORY[0x1E695DF58];
  localeCopy = locale;
  v9 = [v7 localeWithLocaleIdentifier:@"en_US"];
  v30[1] = *MEMORY[0x1E6988C40];
  v31[0] = v9;
  v31[1] = &unk_1F4051B78;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v11 = [(AXMVoiceOverVisionEngine *)self->_visionEngine configuredOptionsDisableAllDetectors:0 elementOptions:2048 textRecognitionLevel:0 textDetectionLocales:0 preferringFullCaptions:1];
  [v11 setDetectText:{-[AXCameraSceneDescriber includeTextDetection](self, "includeTextDetection")}];
  if ([(AXCameraSceneDescriber *)self includeTextDetection])
  {
    defaultOptions = [MEMORY[0x1E6988C50] defaultOptions];
    [v11 setTextDetectionOptions:defaultOptions];
  }

  else
  {
    [v11 setTextDetectionOptions:0];
  }

  textDetectionOptions = [v11 textDetectionOptions];
  [textDetectionOptions setRecognitionLevel:1];

  [v11 setPreferredOutputLocale:localeCopy];
  v14 = VOTLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v11;
    _os_log_impl(&dword_1C0DFB000, v14, OS_LOG_TYPE_DEFAULT, "Starting camera scene detection: %@", buf, 0xCu);
  }

  if (AXIsInternalInstall() && ([MEMORY[0x1E6989890] sharedInstance], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "cameraSceneDescriberImageURL"), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
  {
    imageNode = [(AXMVoiceOverVisionEngine *)self->_visionEngine imageNode];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__AXCameraSceneDescriber_imageDescriptionForCurrentCameraScene_withPreferredLocale___block_invoke;
    v25[3] = &unk_1E812E650;
    v26 = v10;
    v27 = sceneCopy;
    v25[4] = self;
    v18 = v10;
    v19 = sceneCopy;
    [imageNode triggerWithImageURL:v16 options:v11 cacheKey:0 resultHandler:v25];
  }

  else
  {
    manager = self->_manager;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__AXCameraSceneDescriber_imageDescriptionForCurrentCameraScene_withPreferredLocale___block_invoke_2;
    v21[3] = &unk_1E812E678;
    v21[4] = self;
    v23 = v10;
    v24 = sceneCopy;
    v22 = v11;
    v19 = v10;
    v16 = sceneCopy;
    [(AXCameraManager *)manager fetchCurrentCameraSceneBufferWithHandler:v21];
  }
}

void __84__AXCameraSceneDescriber_imageDescriptionForCurrentCameraScene_withPreferredLocale___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = VOTLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = a2;
    _os_log_impl(&dword_1C0DFB000, v4, OS_LOG_TYPE_DEFAULT, "Got buffer: %@", buf, 0xCu);
  }

  v5 = [*(*(a1 + 32) + 16) imageNode];
  v6 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__AXCameraSceneDescriber_imageDescriptionForCurrentCameraScene_withPreferredLocale___block_invoke_291;
  v8[3] = &unk_1E812E650;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  [v5 triggerWithImage:v6 options:v7 cacheKey:0 resultHandler:v8];
}

- (void)visionResultHandler:(id)handler withFeatureDescriptionOptions:(id)options result:(id)result error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  resultCopy = result;
  errorCopy = error;
  optionsCopy = options;
  v13 = VOTLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = resultCopy;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_1C0DFB000, v13, OS_LOG_TYPE_DEFAULT, "Got results: %@ error: %@", buf, 0x16u);
  }

  v14 = [resultCopy detectedFeatureDescriptionWithOptions:optionsCopy];

  detectedTextDescription = [resultCopy detectedTextDescription];
  if ([detectedTextDescription length])
  {
    v16 = AXUILocalizedStringForKey(@"DetectedText");
    v17 = AXCFormattedString();
    v21 = v14;
    v22 = @"__AXStringForVariablesSentinel";
    v18 = __AXStringForVariables();

    v14 = v18;
  }

  if ([v14 length])
  {
    captionTranslationLocale = [resultCopy captionTranslationLocale];
    localeIdentifier = [captionTranslationLocale localeIdentifier];
    handlerCopy[2](handlerCopy, v14, localeIdentifier);
  }
}

@end