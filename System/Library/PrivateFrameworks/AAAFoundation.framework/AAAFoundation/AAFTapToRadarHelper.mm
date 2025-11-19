@interface AAFTapToRadarHelper
- (id)_notificationDictionaryForRequest:(id)a3;
- (int64_t)_deviceClassesFromTypes:(id)a3;
- (void)_launchTTRWithRequest:(id)a3 completion:(id)a4;
- (void)_showAlertForRequest:(id)a3 completion:(id)a4;
- (void)handleRadarRequest:(id)a3 completion:(id)a4;
- (void)silentTapToRadarWithRequest:(id)a3 completion:(id)a4;
- (void)tapToRadarWithRequest:(id)a3 completion:(id)a4;
@end

@implementation AAFTapToRadarHelper

- (void)tapToRadarWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[AFUtilities isInternalBuild])
  {
    [(AAFTapToRadarHelper *)self _showAlertForRequest:v6 completion:v7];
  }

  else
  {
    v8 = _AAFLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAFTapToRadarHelper tapToRadarWithRequest:completion:];
    }

    if (v7)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAFTTRErrorDomain" code:1 userInfo:0];
      v7[2](v7, v9);
    }
  }
}

- (void)_showAlertForRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAFTapToRadarHelper *)self _notificationDictionaryForRequest:v6];
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
    v16 = v7;
    v15 = v6;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = _AAFLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(AAFTapToRadarHelper *)v8 _showAlertForRequest:v12 completion:?];
    }

    if (v7)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAFTTRErrorDomain" code:2 userInfo:0];
      (*(v7 + 2))(v7, v13);
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

- (id)_notificationDictionaryForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 alertTitle];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695EE58]];

  v6 = [v3 alertMessage];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E695EE60]];

  v7 = [v3 alertDefaultButtonText];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695EE78]];

  v8 = [v3 alertCancelButtonText];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695EE70]];

  v9 = [v3 alertOtherButtonText];

  if (v9)
  {
    v10 = [v3 alertOtherButtonText];
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EE98]];
  }

  v11 = MEMORY[0x1E695E118];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695EE68]];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69D44E8]];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69D4488]];
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 resourceURL];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695EE90]];

  return v4;
}

- (void)_launchTTRWithRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AF20];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setScheme:@"tap-to-radar"];
  [v8 setHost:@"new"];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc(MEMORY[0x1E696AF60]);
  v11 = [v7 componentName];
  v12 = [v10 initWithName:@"ComponentName" value:v11];
  [v9 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E696AF60]);
  v14 = [v7 componentVersion];
  v15 = [v13 initWithName:@"ComponentVersion" value:v14];
  [v9 addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E696AF60]);
  v17 = [v7 componentID];
  v18 = [v16 initWithName:@"ComponentID" value:v17];
  [v9 addObject:v18];

  v19 = objc_alloc(MEMORY[0x1E696AF60]);
  v20 = [v7 radarTitle];
  v21 = [v19 initWithName:@"Title" value:v20];
  [v9 addObject:v21];

  v22 = objc_alloc(MEMORY[0x1E696AF60]);
  v23 = [v7 radarDescription];
  v24 = [v22 initWithName:@"Description" value:v23];
  [v9 addObject:v24];

  v25 = objc_alloc(MEMORY[0x1E696AF60]);
  v26 = [v7 formattedKeywords];
  v27 = [v25 initWithName:@"Keywords" value:v26];
  [v9 addObject:v27];

  v28 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Serious Bug"];
  [v9 addObject:v28];

  v29 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"I Didn't Try"];
  [v9 addObject:v29];

  LODWORD(v29) = [v7 fullDiagnostic];
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
  [v9 addObject:v32];

  [v8 setQueryItems:v9];
  v33 = [MEMORY[0x1E6963608] defaultWorkspace];
  v34 = [v8 URL];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__AAFTapToRadarHelper__launchTTRWithRequest_completion___block_invoke;
  v36[3] = &unk_1E831BC68;
  v37 = v5;
  v35 = v5;
  [v33 openURL:v34 configuration:0 completionHandler:v36];
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

- (void)silentTapToRadarWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (getTapToRadarServiceClass())
  {
    if (+[AFUtilities isInternalBuild])
    {
      [(AAFTapToRadarHelper *)self handleRadarRequest:v6 completion:v7];
      goto LABEL_13;
    }

    v11 = _AAFLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAFTapToRadarHelper tapToRadarWithRequest:completion:];
    }

    if (v7)
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

    if (v7)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 3;
LABEL_12:
      v12 = [v9 errorWithDomain:@"com.apple.AAFTTRErrorDomain" code:v10 userInfo:0];
      v7[2](v7, v12);
    }
  }

LABEL_13:
}

- (void)handleRadarRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AAFLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAFTapToRadarHelper handleRadarRequest:v6 completion:v8];
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
  v13 = [v6 componentName];
  v14 = [v12 stringWithFormat:@"%@ detected an error", v13];

  v15 = [v6 radarTitle];
  [v11 setTitle:v15];

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
  v19 = [v6 componentName];
  v20 = [v6 componentVersion];
  v21 = [v6 componentID];
  v22 = [v18 initWithName:v19 version:v20 identifier:{objc_msgSend(v21, "intValue")}];
  [v11 setComponent:v22];

  v23 = [v6 radarDescription];
  [v11 setProblemDescription:v23];

  [v11 setReproducibility:6];
  [v11 setClassification:7];
  v24 = [v6 keywordIDs];
  [v11 setKeywords:v24];

  v25 = [v6 deviceTypes];
  [v11 setRemoteDeviceClasses:{-[AAFTapToRadarHelper _deviceClassesFromTypes:](self, "_deviceClassesFromTypes:", v25)}];

  if ([v6 fullDiagnostic])
  {
    [v11 setAutoDiagnostics:6];
  }

  v26 = [getTapToRadarServiceClass() shared];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __53__AAFTapToRadarHelper_handleRadarRequest_completion___block_invoke;
  v29[3] = &unk_1E831BC90;
  v30 = v14;
  v31 = v7;
  v27 = v7;
  v28 = v14;
  [v26 createDraft:v11 forProcessNamed:0 withDisplayReason:v28 completionHandler:v29];
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

- (int64_t)_deviceClassesFromTypes:(id)a3
{
  v3 = a3;
  v4 = [v3 containsString:@"iPhone"];
  if ([v3 containsString:@"iPad"])
  {
    v4 |= 2uLL;
  }

  if ([v3 containsString:@"Mac"])
  {
    v4 |= 0x20uLL;
  }

  if ([v3 containsString:@"Watch"])
  {
    v4 |= 4uLL;
  }

  if ([v3 containsString:@"AppleTV"])
  {
    v4 |= 8uLL;
  }

  if ([v3 containsString:@"HomePod"])
  {
    v5 = v4 | 0x10;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 containsString:@"Vision"];

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