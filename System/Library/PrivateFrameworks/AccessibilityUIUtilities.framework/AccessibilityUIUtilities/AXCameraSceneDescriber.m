@interface AXCameraSceneDescriber
- (AXCameraSceneDescriber)init;
- (void)imageDescriptionForCurrentCameraScene:(id)a3 withPreferredLocale:(id)a4;
- (void)visionResultHandler:(id)a3 withFeatureDescriptionOptions:(id)a4 result:(id)a5 error:(id)a6;
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

  v7 = [(AXMVoiceOverVisionEngine *)v2->_visionEngine imageNode];
  [v7 setShouldProcessRemotely:1];

  [(AXMVoiceOverVisionEngine *)v2->_visionEngine prewarmEngine];
  return v2;
}

- (void)imageDescriptionForCurrentCameraScene:(id)a3 withPreferredLocale:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30[0] = *MEMORY[0x1E6988C38];
  v7 = MEMORY[0x1E695DF58];
  v8 = a4;
  v9 = [v7 localeWithLocaleIdentifier:@"en_US"];
  v30[1] = *MEMORY[0x1E6988C40];
  v31[0] = v9;
  v31[1] = &unk_1F4051B78;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v11 = [(AXMVoiceOverVisionEngine *)self->_visionEngine configuredOptionsDisableAllDetectors:0 elementOptions:2048 textRecognitionLevel:0 textDetectionLocales:0 preferringFullCaptions:1];
  [v11 setDetectText:{-[AXCameraSceneDescriber includeTextDetection](self, "includeTextDetection")}];
  if ([(AXCameraSceneDescriber *)self includeTextDetection])
  {
    v12 = [MEMORY[0x1E6988C50] defaultOptions];
    [v11 setTextDetectionOptions:v12];
  }

  else
  {
    [v11 setTextDetectionOptions:0];
  }

  v13 = [v11 textDetectionOptions];
  [v13 setRecognitionLevel:1];

  [v11 setPreferredOutputLocale:v8];
  v14 = VOTLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v11;
    _os_log_impl(&dword_1C0DFB000, v14, OS_LOG_TYPE_DEFAULT, "Starting camera scene detection: %@", buf, 0xCu);
  }

  if (AXIsInternalInstall() && ([MEMORY[0x1E6989890] sharedInstance], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "cameraSceneDescriberImageURL"), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
  {
    v17 = [(AXMVoiceOverVisionEngine *)self->_visionEngine imageNode];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __84__AXCameraSceneDescriber_imageDescriptionForCurrentCameraScene_withPreferredLocale___block_invoke;
    v25[3] = &unk_1E812E650;
    v26 = v10;
    v27 = v6;
    v25[4] = self;
    v18 = v10;
    v19 = v6;
    [v17 triggerWithImageURL:v16 options:v11 cacheKey:0 resultHandler:v25];
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
    v24 = v6;
    v22 = v11;
    v19 = v10;
    v16 = v6;
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

- (void)visionResultHandler:(id)a3 withFeatureDescriptionOptions:(id)a4 result:(id)a5 error:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = VOTLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_1C0DFB000, v13, OS_LOG_TYPE_DEFAULT, "Got results: %@ error: %@", buf, 0x16u);
  }

  v14 = [v10 detectedFeatureDescriptionWithOptions:v12];

  v15 = [v10 detectedTextDescription];
  if ([v15 length])
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
    v19 = [v10 captionTranslationLocale];
    v20 = [v19 localeIdentifier];
    v9[2](v9, v14, v20);
  }
}

@end