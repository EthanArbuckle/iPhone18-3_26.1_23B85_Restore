@interface AXMScreenRecognitionCenter
+ (id)sharedInstance;
- ($436BAF7D86476205E6C1D891D6FE0A3A)processFeatures:(SEL)features;
- (id)_processVisionResult:(id)result options:(id)options coagulator:(id)coagulator;
@end

@implementation AXMScreenRecognitionCenter

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[AXMScreenRecognitionCenter sharedInstance];
  }

  v3 = sharedInstance_Center;

  return v3;
}

void __44__AXMScreenRecognitionCenter_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_Center;
  sharedInstance_Center = v0;
}

- (id)_processVisionResult:(id)result options:(id)options coagulator:(id)coagulator
{
  v74 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  optionsCopy = options;
  coagulatorCopy = coagulator;
  v10 = objc_opt_new();
  v11 = AXMediaLogMLElement();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AXMScreenRecognitionCenter _processVisionResult:resultCopy options:optionsCopy coagulator:?];
  }

  equivalenceToken = [resultCopy equivalenceToken];
  equivalenceToken2 = [optionsCopy equivalenceToken];
  v14 = [equivalenceToken isEqual:equivalenceToken2];

  equivalenceToken3 = [resultCopy equivalenceToken];
  [v10 setScreenEquivalenceToken:equivalenceToken3];

  if (v14)
  {
    [v10 setSameScreenCapResult:1];
    v16 = AXMediaLogMLElement();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(AXMScreenRecognitionCenter *)v16 _processVisionResult:v17 options:v18 coagulator:v19, v20, v21, v22, v23];
    }

LABEL_33:

    goto LABEL_34;
  }

  v59 = coagulatorCopy;
  v60 = optionsCopy;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v61 = resultCopy;
  features = [resultCopy features];
  v25 = [features countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v67;
    do
    {
      v28 = 0;
      do
      {
        if (*v67 != v27)
        {
          objc_enumerationMutation(features);
        }

        v29 = *(*(&v66 + 1) + 8 * v28);
        v30 = AXMediaLogMLElement();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v72 = v29;
          _os_log_debug_impl(&dword_1AE37B000, v30, OS_LOG_TYPE_DEBUG, "\tFeature results: %@", buf, 0xCu);
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [features countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v26);
  }

  if ([v60 disableCoagulator])
  {
    features2 = [v61 features];
    [v10 setSortedFeatures:features2];
  }

  else
  {
    CFAbsoluteTimeGetCurrent();
    features3 = [v61 features];
    v33 = [v59 coagulateElements:features3];
    [v10 setSortedFeatures:v33];

    features2 = AXMediaLogMLElement();
    if (os_log_type_enabled(features2, OS_LOG_TYPE_DEBUG))
    {
      [AXMScreenRecognitionCenter _processVisionResult:options:coagulator:];
    }
  }

  v34 = AXMediaLogMLElement();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [(AXMScreenRecognitionCenter *)v34 _processVisionResult:v35 options:v36 coagulator:v37, v38, v39, v40, v41];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  sortedFeatures = [v10 sortedFeatures];
  v43 = [sortedFeatures countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v63;
    do
    {
      v46 = 0;
      do
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(sortedFeatures);
        }

        v47 = *(*(&v62 + 1) + 8 * v46);
        v48 = AXMediaLogMLElement();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v72 = v47;
          _os_log_debug_impl(&dword_1AE37B000, v48, OS_LOG_TYPE_DEBUG, "\tSorted results: %@", buf, 0xCu);
        }

        ++v46;
      }

      while (v44 != v46);
      v44 = [sortedFeatures countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v44);
  }

  sortedFeatures2 = [v10 sortedFeatures];
  v50 = [sortedFeatures2 count];

  optionsCopy = v60;
  resultCopy = v61;
  coagulatorCopy = v59;
  if (!v50)
  {
    v16 = AXMediaLogMLElement();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(AXMScreenRecognitionCenter *)v16 _processVisionResult:v51 options:v52 coagulator:v53, v54, v55, v56, v57];
    }

    goto LABEL_33;
  }

LABEL_34:

  return v10;
}

- ($436BAF7D86476205E6C1D891D6FE0A3A)processFeatures:(SEL)features
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (processFeatures__onceToken != -1)
  {
    [AXMScreenRecognitionCenter processFeatures:];
  }

  coreAnimationMainDisplay = [processFeatures____displayManager coreAnimationMainDisplay];
  [coreAnimationMainDisplay scale];
  v9 = v8;

  v10 = dispatch_semaphore_create(0);
  testingImage = [v6 testingImage];

  if (testingImage)
  {
    v9 = 1.0;
  }

  v12 = +[AXMLElementCoagulation sharedInstance];
  [v6 fullRect];
  [v12 setAppFrame:?];
  [v12 setAppOrientation:{objc_msgSend(v6, "orientation")}];
  [v12 setScreenScale:v9];
  [v12 setIsRTL:{objc_msgSend(v6, "isRTL")}];
  v13 = AXMediaLogMLElement();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(AXMScreenRecognitionCenter *)v6 processFeatures:v50];
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__7;
  v48 = __Block_byref_object_dispose__7;
  v49 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__AXMScreenRecognitionCenter_processFeatures___block_invoke_96;
  v39[3] = &unk_1E7A1DAC0;
  v43 = &v44;
  v39[4] = self;
  v14 = v6;
  v40 = v14;
  v15 = v12;
  v41 = v15;
  v16 = v10;
  v42 = v16;
  v17 = MEMORY[0x1B2700900](v39);
  testingImage2 = [v14 testingImage];
  v19 = testingImage2 == 0;

  if (v19)
  {
    captureNode = [processFeatures____engine captureNode];
    [v14 fullRect];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    orientation = [v14 orientation];
    data = [MEMORY[0x1E695DEF0] data];
    [captureNode triggerWithScreenCaptureRegion:orientation interfaceOrientation:v14 options:data cacheKey:v17 resultHandler:{v24, v26, v28, v30}];
  }

  else
  {
    captureNode = [processFeatures____engine imageNode];
    data = [v14 testingImage];
    data2 = [MEMORY[0x1E695DEF0] data];
    [captureNode triggerWithImage:data options:v14 cacheKey:data2 resultHandler:v17];
  }

  v32 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v16, v32);
  sameScreenCapResult = [v45[5] sameScreenCapResult];
  screenEquivalenceToken = [v45[5] screenEquivalenceToken];
  sortedFeatures = [v45[5] sortedFeatures];
  v36 = AXMediaLogMLElement();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    buf = 67109120;
    _os_log_impl(&dword_1AE37B000, v36, OS_LOG_TYPE_INFO, "Handling results for ML detection for gen: %d", &buf, 8u);
  }

  if (sameScreenCapResult)
  {
    v37 = AXMediaLogMLElement();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1AE37B000, v37, OS_LOG_TYPE_INFO, "ML Elements same screen capture - ignoring results", &buf, 2u);
    }

    retstr->var1 = 0;
    retstr->var2 = 0;
    retstr->var0 = screenEquivalenceToken;
  }

  else
  {
    retstr->var0 = screenEquivalenceToken;
    retstr->var1 = sortedFeatures;
    retstr->var2 = 0;
  }

  _Block_object_dispose(&v44, 8);
  return result;
}

void __46__AXMScreenRecognitionCenter_processFeatures___block_invoke()
{
  v0 = dispatch_semaphore_create(0);
  v1 = [[AXMAXElementVisionEngine alloc] initWithIdentifier:@"AXElementVision"];
  v2 = processFeatures____engine;
  processFeatures____engine = v1;

  v3 = [AXMDisplayManager alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__AXMScreenRecognitionCenter_processFeatures___block_invoke_2;
  v15[3] = &unk_1E7A1CCB8;
  v16 = v0;
  v4 = v0;
  v5 = [(AXMDisplayManager *)v3 initWithCompletion:v15];
  v6 = processFeatures____displayManager;
  processFeatures____displayManager = v5;

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v4, v7);
  v8 = [processFeatures____displayManager coreAnimationMainDisplay];
  [v8 size];
  processFeatures__ScaledScreenSize_0 = v9;
  processFeatures__ScaledScreenSize_1 = v10;

  v11 = [processFeatures____displayManager coreAnimationMainDisplay];
  [v11 scale];
  *&processFeatures__ScaledScreenSize_0 = *&processFeatures__ScaledScreenSize_0 / v12;

  v13 = [processFeatures____displayManager coreAnimationMainDisplay];
  [v13 scale];
  *&processFeatures__ScaledScreenSize_1 = *&processFeatures__ScaledScreenSize_1 / v14;
}

void __46__AXMScreenRecognitionCenter_processFeatures___block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AXMediaLogMLElement();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__AXMScreenRecognitionCenter_processFeatures___block_invoke_96_cold_1(v5, v6, v7);
  }

  v8 = [*(a1 + 32) _processVisionResult:v5 options:*(a1 + 40) coagulator:*(a1 + 48)];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 56));
}

- (void)_processVisionResult:(void *)a1 options:(void *)a2 coagulator:.cold.1(void *a1, void *a2)
{
  v3 = [a1 equivalenceToken];
  v9 = [a2 equivalenceToken];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)_processVisionResult:options:coagulator:.cold.2()
{
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)processFeatures:(void *)a1 .cold.2(void *a1, void *a2)
{
  v4 = MEMORY[0x1E696B098];
  [a1 fullRect];
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  v9 = [v4 valueWithBytes:a2 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "orientation")}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v11, v12, v13, v14, v15, 0x20u);
}

void __46__AXMScreenRecognitionCenter_processFeatures___block_invoke_96_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3[0] = 67109634;
  v3[1] = 0;
  v4 = 2112;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AE37B000, log, OS_LOG_TYPE_DEBUG, "ML Gen: %d Receieved remote handler reply %@/%@", v3, 0x1Cu);
}

@end