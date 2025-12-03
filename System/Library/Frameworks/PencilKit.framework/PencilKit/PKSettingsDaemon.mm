@interface PKSettingsDaemon
+ (BOOL)autoRefineEnabled;
+ (BOOL)proofreadingEnabled;
+ (id)daemonQueue;
+ (void)_dispatchWithErrorHandler:(id)handler successHandler:(id)successHandler;
+ (void)prefersPencilOnlyDrawing:(BOOL)drawing;
+ (void)prewarmServiceConnectionIfNeeded;
+ (void)setAutoRefineEnabled:(BOOL)enabled;
+ (void)setCurrentScribbleLanguageIdentifiers:(id)identifiers;
+ (void)setPrefersPencilHoverPreviewEnabled:(BOOL)enabled withCompletion:(id)completion;
+ (void)setPrefersPencilOnlyDrawing:(BOOL)drawing;
+ (void)setProofreadingEnabled:(BOOL)enabled;
@end

@implementation PKSettingsDaemon

+ (BOOL)autoRefineEnabled
{
  v13 = *MEMORY[0x1E69E9840];
  if (PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState())
  {
    v2 = PKUIKitUserDefaults();
    if (PKCurrentAppSupportsRefinement())
    {
      v3 = objc_opt_class();
      v4 = [v2 objectForKey:@"UIAutoRefineEnabledKey"];
      v5 = PKDynamicCast(v3, v4);

      if (v5 && [v5 BOOLValue] && PKIsAutoRefineEnabled() && objc_msgSend(objc_opt_class(), "hasAutoRefineLocaleEnabled"))
      {
        bOOLValue = [v5 BOOLValue];
        v7 = os_log_create("com.apple.pencilkit", "AutoRefine");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v9 = PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState() > 2;
          v10[0] = 67109376;
          v10[1] = bOOLValue;
          v11 = 1024;
          v12 = v9;
          _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "Returning auto refine enabled: %d, device supports: %d", v10, 0xEu);
        }

        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
    }

    LOBYTE(bOOLValue) = 0;
LABEL_13:

    return bOOLValue;
  }

  LOBYTE(bOOLValue) = 0;
  return bOOLValue;
}

+ (void)prewarmServiceConnectionIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKSettingsDaemon_prewarmServiceConnectionIfNeeded__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (prewarmServiceConnectionIfNeeded_onceToken != -1)
  {
    dispatch_once(&prewarmServiceConnectionIfNeeded_onceToken, block);
  }
}

void __52__PKSettingsDaemon_prewarmServiceConnectionIfNeeded__block_invoke_2()
{
  v0 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1C7CCA000, v0, OS_LOG_TYPE_ERROR, "Error creating connection to settings service", v1, 2u);
  }
}

void __52__PKSettingsDaemon_prewarmServiceConnectionIfNeeded__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 getGlobalPrefersPencilHoverPreviewEnabledWithCompletion:&__block_literal_global_14];
  }

  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Successfully created connection to settings service", v4, 2u);
  }
}

+ (id)daemonQueue
{
  if (qword_1ED6A5210 != -1)
  {
    dispatch_once(&qword_1ED6A5210, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_150;

  return v3;
}

void __31__PKSettingsDaemon_daemonQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.PencilKit.settingsDaemon", 0);
  v1 = _MergedGlobals_150;
  _MergedGlobals_150 = v0;
}

+ (void)setPrefersPencilOnlyDrawing:(BOOL)drawing
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PKSettingsDaemon_setPrefersPencilOnlyDrawing___block_invoke_21;
  v3[3] = &__block_descriptor_33_e38_v16__0___CHPKRemoteSettingsProtocol__8l;
  drawingCopy = drawing;
  [self _dispatchWithErrorHandler:&__block_literal_global_20 successHandler:v3];
}

void __48__PKSettingsDaemon_setPrefersPencilOnlyDrawing___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = @"prefersPencilOnlyDrawing";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v4, 0x16u);
  }
}

void __48__PKSettingsDaemon_setPrefersPencilOnlyDrawing___block_invoke_21(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (*(a1 + 32))
    {
      v5 = @"YES";
    }

    v6 = 138412546;
    v7 = @"prefersPencilOnlyDrawing";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Setting %@ : %@", &v6, 0x16u);
  }

  [v3 setGlobalPrefersPencilOnlyDrawing:*(a1 + 32)];
}

+ (void)prefersPencilOnlyDrawing:(BOOL)drawing
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__PKSettingsDaemon_prefersPencilOnlyDrawing___block_invoke_31;
  v3[3] = &__block_descriptor_33_e38_v16__0___CHPKRemoteSettingsProtocol__8l;
  drawingCopy = drawing;
  [self _dispatchWithErrorHandler:&__block_literal_global_30 successHandler:v3];
}

void __45__PKSettingsDaemon_prefersPencilOnlyDrawing___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = @"prefersPencilOnlyDrawing";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v4, 0x16u);
  }
}

void __45__PKSettingsDaemon_prefersPencilOnlyDrawing___block_invoke_31(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (*(a1 + 32))
    {
      v5 = @"YES";
    }

    v6 = 138412546;
    v7 = @"prefersPencilOnlyDrawing";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Setting %@ : %@", &v6, 0x16u);
  }

  [v3 setGlobalPrefersPencilOnlyDrawing:*(a1 + 32)];
}

+ (void)setAutoRefineEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__PKSettingsDaemon_setAutoRefineEnabled___block_invoke_34;
  v3[3] = &__block_descriptor_33_e38_v16__0___CHPKRemoteSettingsProtocol__8l;
  enabledCopy = enabled;
  [self _dispatchWithErrorHandler:&__block_literal_global_33_0 successHandler:v3];
}

void __41__PKSettingsDaemon_setAutoRefineEnabled___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = @"UIAutoRefineEnabledKey";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v4, 0x16u);
  }
}

void __41__PKSettingsDaemon_setAutoRefineEnabled___block_invoke_34(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = @"UIAutoRefineEnabledKey";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Setting '%@' to %{BOOL}d", &v6, 0x12u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setGlobalAutoRefineEnabled:*(a1 + 32) withCompletion:&__block_literal_global_39];
  }
}

void __41__PKSettingsDaemon_setAutoRefineEnabled___block_invoke_37()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PKRemoteAutoRefineSettingsDidChange", 0, 0, 1u);
}

+ (void)setProofreadingEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__PKSettingsDaemon_setProofreadingEnabled___block_invoke_44;
  v3[3] = &__block_descriptor_33_e38_v16__0___CHPKRemoteSettingsProtocol__8l;
  enabledCopy = enabled;
  [self _dispatchWithErrorHandler:&__block_literal_global_43 successHandler:v3];
}

void __43__PKSettingsDaemon_setProofreadingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = @"UIProofreadingEnabledKey";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v4, 0x16u);
  }
}

void __43__PKSettingsDaemon_setProofreadingEnabled___block_invoke_44(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = @"UIProofreadingEnabledKey";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Setting '%@' to %{BOOL}d", &v6, 0x12u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setGlobalProofreadingEnabled:*(a1 + 32) withCompletion:&__block_literal_global_49];
  }
}

void __43__PKSettingsDaemon_setProofreadingEnabled___block_invoke_47()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PKRemoteProofreadingSettingsDidChange", 0, 0, 1u);
}

+ (BOOL)proofreadingEnabled
{
  if (!PKCurrentDeviceSupportsProofreading())
  {
    return 0;
  }

  v2 = PKUIKitUserDefaults();
  if (PKCurrentDeviceSupportsProofreading() && PKCurrentAppSupportsRefinement() && (v3 = objc_opt_class(), [v2 objectForKey:@"UIProofreadingEnabledKey"], v4 = objc_claimAutoreleasedReturnValue(), PKDynamicCast(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

void __41__PKSettingsDaemon_openPencilPreferences__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Error opening pencil preferences from palette: %@", &v4, 0xCu);
  }
}

void __41__PKSettingsDaemon_openPencilPreferences__block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Opening Pencil Settings", v4, 2u);
  }

  [v2 openPencilSettings];
}

+ (void)setCurrentScribbleLanguageIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKSettingsDaemon_setCurrentScribbleLanguageIdentifiers___block_invoke_57;
  v6[3] = &unk_1E82DA900;
  v7 = identifiersCopy;
  v5 = identifiersCopy;
  [self _dispatchWithErrorHandler:&__block_literal_global_56 successHandler:v6];
}

void __58__PKSettingsDaemon_setCurrentScribbleLanguageIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412546;
    v5 = @"CurrentScribbleLanguages";
    v6 = 2112;
    v7 = v2;
    _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v4, 0x16u);
  }
}

void __58__PKSettingsDaemon_setCurrentScribbleLanguageIdentifiers___block_invoke_57(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = @"CurrentScribbleLanguages";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Setting %@ : %@", &v6, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setCurrentScribbleLanguageIdentifiers:*(a1 + 32)];
  }
}

+ (void)setPrefersPencilHoverPreviewEnabled:(BOOL)enabled withCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke;
  aBlock[3] = &unk_1E82D6F70;
  v16 = completionCopy;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke_2;
  v13[3] = &unk_1E82DA928;
  v14 = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke_60;
  v10[3] = &unk_1E82DA950;
  enabledCopy = enabled;
  v11 = v14;
  v9 = v14;
  [self _dispatchWithErrorHandler:v13 successHandler:v10];
}

uint64_t __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *MEMORY[0x1E69DE2B8];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Error creating xpc connection to set %@: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke_60(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = os_log_create("com.apple.pencilkit", "PKSettingsDaemon");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *MEMORY[0x1E69DE2B8];
      v8 = @"NO";
      if (*(a1 + 40))
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Setting %@ to %@", buf, 0x16u);
    }

    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PKSettingsDaemon_setPrefersPencilHoverPreviewEnabled_withCompletion___block_invoke_63;
    v12[3] = &unk_1E82D6F70;
    v13 = *(a1 + 32);
    [v3 setGlobalPrefersPencilHoverPreviewEnabled:v9 withCompletion:v12];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *MEMORY[0x1E69DE2B8];
      v11 = @"NO";
      if (*(a1 + 40))
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_ERROR, "Unable to set %@ to %@. Proxy doesn't respond to method.", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (void)_dispatchWithErrorHandler:(id)handler successHandler:(id)successHandler
{
  handlerCopy = handler;
  successHandlerCopy = successHandler;
  daemonQueue = [self daemonQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PKSettingsDaemon__dispatchWithErrorHandler_successHandler___block_invoke;
  v11[3] = &unk_1E82DA9A0;
  v12 = handlerCopy;
  v13 = successHandlerCopy;
  v9 = successHandlerCopy;
  v10 = handlerCopy;
  dispatch_async(daemonQueue, v11);
}

void __61__PKSettingsDaemon__dispatchWithErrorHandler_successHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.handwritingd.pksettings" options:0];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F485D5A0];
  [v2 setRemoteObjectInterface:v3];
  [v2 resume];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __61__PKSettingsDaemon__dispatchWithErrorHandler_successHandler___block_invoke_2;
  v9 = &unk_1E82DA978;
  v10 = *(a1 + 32);
  v11 = &v12;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&v6];
  if ((v13[3] & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v4);
    }
  }

  [v2 invalidate];

  _Block_object_dispose(&v12, 8);
}

uint64_t __61__PKSettingsDaemon__dispatchWithErrorHandler_successHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

@end