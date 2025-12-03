@interface AAFTapToRadarHelper
- (id)_notificationDictionaryForRequest:(id)request;
- (int64_t)_deviceClassesFromTypes:(id)types;
- (void)_launchTTRWithRequest:(id)request completion:(id)completion;
- (void)_showAlertForRequest:(id)request completion:(id)completion;
- (void)handleRadarRequest:(id)request completion:(id)completion;
- (void)silentTapToRadarWithRequest:(id)request completion:(id)completion;
- (void)tapToRadarWithRequest:(id)request completion:(id)completion;
@end

@implementation AAFTapToRadarHelper

- (void)tapToRadarWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (+[AFUtilities isInternalBuild])
  {
    [(AAFTapToRadarHelper *)self _showAlertForRequest:requestCopy completion:completionCopy];
  }

  else
  {
    v8 = _AAFLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAFTapToRadarHelper tapToRadarWithRequest:completion:];
    }

    if (completionCopy)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAFTTRErrorDomain" code:1 userInfo:0];
      completionCopy[2](completionCopy, v9);
    }
  }
}

- (void)_showAlertForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = [(AAFTapToRadarHelper *)self _notificationDictionaryForRequest:requestCopy];
  error = 0;
  v9 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &error, v8);
  if (v9)
  {
    v10 = v9;
    v11 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AAFTapToRadarHelper__showAlertForRequest_completion___block_invoke;
    block[3] = &unk_1E831BC40;
    v17 = v10;
    block[4] = self;
    v16 = completionCopy;
    v15 = requestCopy;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = _AAFLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(AAFTapToRadarHelper *)v8 _showAlertForRequest:v12 completion:?];
    }

    if (completionCopy)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAFTTRErrorDomain" code:2 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v13);
    }
  }
}

void __55__AAFTapToRadarHelper__showAlertForRequest_completion___block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 56), 0.0, &responseFlags);
  v2 = [*(a1 + 32) _adjustedOptionFlags:responseFlags];
  if (v2 <= 1)
  {
    if (!v2)
    {
      [*(a1 + 32) _launchTTRWithRequest:*(a1 + 40) completion:*(a1 + 48)];
      goto LABEL_12;
    }

    if (v2 != 1)
    {
      goto LABEL_12;
    }

LABEL_7:
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }

    goto LABEL_12;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = [*(a1 + 40) alertOtherButtonAction];

  if (v4)
  {
    v5 = [*(a1 + 40) alertOtherButtonAction];
    v5[2]();
  }

LABEL_12:
  CFRelease(*(a1 + 56));
}

- (id)_notificationDictionaryForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_opt_new();
  alertTitle = [requestCopy alertTitle];
  [v4 setObject:alertTitle forKeyedSubscript:*MEMORY[0x1E695EE58]];

  alertMessage = [requestCopy alertMessage];
  [v4 setObject:alertMessage forKeyedSubscript:*MEMORY[0x1E695EE60]];

  alertDefaultButtonText = [requestCopy alertDefaultButtonText];
  [v4 setObject:alertDefaultButtonText forKeyedSubscript:*MEMORY[0x1E695EE78]];

  alertCancelButtonText = [requestCopy alertCancelButtonText];
  [v4 setObject:alertCancelButtonText forKeyedSubscript:*MEMORY[0x1E695EE70]];

  alertOtherButtonText = [requestCopy alertOtherButtonText];

  if (alertOtherButtonText)
  {
    alertOtherButtonText2 = [requestCopy alertOtherButtonText];
    [v4 setObject:alertOtherButtonText2 forKeyedSubscript:*MEMORY[0x1E695EE98]];
  }

  v11 = MEMORY[0x1E695E118];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695EE68]];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69D44E8]];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69D4488]];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourceURL = [v12 resourceURL];
  [v4 setObject:resourceURL forKeyedSubscript:*MEMORY[0x1E695EE90]];

  return v4;
}

- (void)_launchTTRWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E696AF20];
  requestCopy = request;
  v8 = objc_alloc_init(v6);
  [v8 setScheme:@"tap-to-radar"];
  [v8 setHost:@"new"];
  array = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc(MEMORY[0x1E696AF60]);
  componentName = [requestCopy componentName];
  v12 = [v10 initWithName:@"ComponentName" value:componentName];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E696AF60]);
  componentVersion = [requestCopy componentVersion];
  v15 = [v13 initWithName:@"ComponentVersion" value:componentVersion];
  [array addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E696AF60]);
  componentID = [requestCopy componentID];
  v18 = [v16 initWithName:@"ComponentID" value:componentID];
  [array addObject:v18];

  v19 = objc_alloc(MEMORY[0x1E696AF60]);
  radarTitle = [requestCopy radarTitle];
  v21 = [v19 initWithName:@"Title" value:radarTitle];
  [array addObject:v21];

  v22 = objc_alloc(MEMORY[0x1E696AF60]);
  radarDescription = [requestCopy radarDescription];
  v24 = [v22 initWithName:@"Description" value:radarDescription];
  [array addObject:v24];

  v25 = objc_alloc(MEMORY[0x1E696AF60]);
  formattedKeywords = [requestCopy formattedKeywords];
  v27 = [v25 initWithName:@"Keywords" value:formattedKeywords];
  [array addObject:v27];

  v28 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v28];

  v29 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
  [array addObject:v29];

  LODWORD(v29) = [requestCopy fullDiagnostic];
  v30 = objc_alloc(MEMORY[0x1E696AF60]);
  if (v29)
  {
    v31 = @"full-log-archive";
  }

  else
  {
    v31 = @"phone";
  }

  v32 = [v30 initWithName:@"AutoDiagnostics" value:v31];
  [array addObject:v32];

  [v8 setQueryItems:array];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v34 = [v8 URL];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke;
  v36[3] = &unk_1E831BC68;
  v37 = completionCopy;
  v35 = completionCopy;
  [defaultWorkspace openURL:v34 configuration:0 completionHandler:v36];
}

void __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AAFLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke_cold_2();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

- (void)silentTapToRadarWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (getTapToRadarServiceClass())
  {
    if (+[AFUtilities isInternalBuild])
    {
      [(AAFTapToRadarHelper *)self handleRadarRequest:requestCopy completion:completionCopy];
      goto LABEL_13;
    }

    v11 = _AAFLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAFTapToRadarHelper tapToRadarWithRequest:completion:];
    }

    if (completionCopy)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v8 = _AAFLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAFTapToRadarHelper silentTapToRadarWithRequest:completion:];
    }

    if (completionCopy)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 3;
LABEL_12:
      v12 = [v9 errorWithDomain:@"com.apple.AAFTTRErrorDomain" code:v10 userInfo:0];
      completionCopy[2](completionCopy, v12);
    }
  }

LABEL_13:
}

- (void)handleRadarRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = _AAFLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAFTapToRadarHelper handleRadarRequest:requestCopy completion:v8];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v9 = getRadarDraftClass_softClass;
  v40 = getRadarDraftClass_softClass;
  if (!getRadarDraftClass_softClass)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getRadarDraftClass_block_invoke;
    v35 = &unk_1E831BCB8;
    v36 = &v37;
    TapToRadarKitLibraryCore();
    v38[3] = objc_getClass("RadarDraft");
    getRadarDraftClass_softClass = *(v36[1] + 24);
    v9 = v38[3];
  }

  v10 = v9;
  _Block_object_dispose(&v37, 8);
  v11 = objc_alloc_init(v9);
  v12 = MEMORY[0x1E696AEC0];
  componentName = [requestCopy componentName];
  v14 = [v12 stringWithFormat:@"%@ detected an error", componentName];

  radarTitle = [requestCopy radarTitle];
  [v11 setTitle:radarTitle];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v16 = getRadarComponentClass_softClass;
  v40 = getRadarComponentClass_softClass;
  if (!getRadarComponentClass_softClass)
  {
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __getRadarComponentClass_block_invoke;
    v35 = &unk_1E831BCB8;
    v36 = &v37;
    TapToRadarKitLibraryCore();
    v38[3] = objc_getClass("RadarComponent");
    getRadarComponentClass_softClass = *(v36[1] + 24);
    v16 = v38[3];
  }

  v17 = v16;
  _Block_object_dispose(&v37, 8);
  v18 = [v16 alloc];
  componentName2 = [requestCopy componentName];
  componentVersion = [requestCopy componentVersion];
  componentID = [requestCopy componentID];
  v22 = [v18 initWithName:componentName2 version:componentVersion identifier:{objc_msgSend(componentID, "intValue")}];
  [v11 setComponent:v22];

  radarDescription = [requestCopy radarDescription];
  [v11 setProblemDescription:radarDescription];

  [v11 setReproducibility:6];
  [v11 setClassification:7];
  keywordIDs = [requestCopy keywordIDs];
  [v11 setKeywords:keywordIDs];

  deviceTypes = [requestCopy deviceTypes];
  [v11 setRemoteDeviceClasses:{-[AAFTapToRadarHelper _deviceClassesFromTypes:](self, "_deviceClassesFromTypes:", deviceTypes)}];

  if ([requestCopy fullDiagnostic])
  {
    [v11 setAutoDiagnostics:6];
  }

  shared = [getTapToRadarServiceClass() shared];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke;
  v29[3] = &unk_1E831BC90;
  v30 = v14;
  v31 = completionCopy;
  v27 = completionCopy;
  v28 = v14;
  [shared createDraft:v11 forProcessNamed:0 withDisplayReason:v28 completionHandler:v29];
}

void __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _AAFLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke_cold_2(a1, v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

- (int64_t)_deviceClassesFromTypes:(id)types
{
  typesCopy = types;
  v4 = [typesCopy containsString:@"iPhone"];
  if ([typesCopy containsString:@"iPad"])
  {
    v4 |= 2uLL;
  }

  if ([typesCopy containsString:@"Mac"])
  {
    v4 |= 0x20uLL;
  }

  if ([typesCopy containsString:@"Watch"])
  {
    v4 |= 4uLL;
  }

  if ([typesCopy containsString:@"AppleTV"])
  {
    v4 |= 8uLL;
  }

  if ([typesCopy containsString:@"HomePod"])
  {
    v5 = v4 | 0x10;
  }

  else
  {
    v5 = v4;
  }

  v6 = [typesCopy containsString:@"Vision"];

  if (v6)
  {
    return v5 | 0x40;
  }

  else
  {
    return v5;
  }
}

- (void)_showAlertForRequest:(NSObject *)a3 completion:.cold.1(void *a1, unsigned int *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 objectForKeyedSubscript:*MEMORY[0x1E695EE58]];
  v6 = *a2;
  OUTLINED_FUNCTION_1_0();
  v10 = 1024;
  v11 = v7;
  _os_log_error_impl(&dword_1C8644000, a3, OS_LOG_TYPE_ERROR, "Showing alert (%@) failed, user notification is nil!. Error: %d", v9, 0x12u);

  v8 = *MEMORY[0x1E69E9840];
}

void __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1C8644000, v0, OS_LOG_TYPE_DEBUG, "Tap-to-radar launched with result: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)handleRadarRequest:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 componentID];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1C8644000, a2, OS_LOG_TYPE_DEBUG, "Handling Silent Radar Request with id: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1C8644000, a2, OS_LOG_TYPE_DEBUG, "Successfully created draft with title: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end