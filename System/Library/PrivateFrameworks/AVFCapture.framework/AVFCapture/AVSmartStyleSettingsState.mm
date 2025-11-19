@interface AVSmartStyleSettingsState
+ (id)_smartStyleSettingsQueue;
+ (id)smartStyleSettingsStateForBundleID:(id)a3;
- (BOOL)systemStyleEnabled;
- (id)initForBundleID:(id)a3;
- (id)systemStyle;
- (void)_proprietaryDefaultChanged:(id)a3 keyPath:(id)a4;
- (void)dealloc;
- (void)installProprietaryDefaultListeners;
- (void)setSystemStyle:(id)a3;
- (void)setSystemStyleEnabled:(BOOL)a3;
@end

@implementation AVSmartStyleSettingsState

+ (id)smartStyleSettingsStateForBundleID:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initForBundleID:a3];

  return v3;
}

+ (id)_smartStyleSettingsQueue
{
  if (_smartStyleSettingsQueue_onceToken != -1)
  {
    +[AVSmartStyleSettingsState _smartStyleSettingsQueue];
  }

  return _smartStyleSettingsQueue_sSmartStyleSettingsQueue;
}

dispatch_queue_t __53__AVSmartStyleSettingsState__smartStyleSettingsQueue__block_invoke()
{
  result = dispatch_queue_create("com.apple.cameracapture.smartstylesettings", 0);
  _smartStyleSettingsQueue_sSmartStyleSettingsQueue = result;
  return result;
}

- (id)initForBundleID:(id)a3
{
  v21.receiver = self;
  v21.super_class = AVSmartStyleSettingsState;
  v4 = [(AVSmartStyleSettingsState *)&v21 init];
  if (v4)
  {
    v4->_bundleID = a3;
    v4->_queue = +[AVSmartStyleSettingsState _smartStyleSettingsQueue];
    v5 = AVSmartStyleSettingsSystemStyle;
    if (([a3 isEqualToString:AVSmartStyleSettingsSystemStyle] & 1) == 0)
    {
      v5 = AVControlCenterPreferencesDomainForPreferencesDomain(a3);
    }

    v4->_systemStyleKey = AVSmartStyleSettingsSystemStylePreferenceKey(v5);
    v4->_systemStyleTimestampKey = AVSmartStyleSettingsSystemStyleTimestampPreferenceKey(v5);
    v4->_systemStyleEnabledKey = AVSmartStyleSettingsSystemStyleEnabledPreferenceKey();
    v6 = [AVCaptureProprietaryDefaultsSingleton objectForKey:v4->_systemStyleKey];
    if (v6)
    {
      v7 = v6;
      v8 = [(AVCaptureSmartStyle *)v6 objectForKeyedSubscript:AVSmartStyleSettingsCastTypeKey];
      [-[AVCaptureSmartStyle objectForKeyedSubscript:](v7 objectForKeyedSubscript:{AVSmartStyleSettingsCastIntensityKey), "floatValue"}];
      v10 = v9;
      [-[AVCaptureSmartStyle objectForKeyedSubscript:](v7 objectForKeyedSubscript:{AVSmartStyleSettingsToneBiasKey), "floatValue"}];
      v12 = v11;
      [-[AVCaptureSmartStyle objectForKeyedSubscript:](v7 objectForKeyedSubscript:{AVSmartStyleSettingsColorBiasKey), "floatValue"}];
      LODWORD(v14) = v13;
      LODWORD(v15) = v10;
      LODWORD(v16) = v12;
      v6 = [AVCaptureSmartStyle styleWithCast:v8 intensity:v15 toneBias:v16 colorBias:v14];
    }

    v4->_systemStyle = v6;
    v17 = [AVCaptureProprietaryDefaultsSingleton objectForKey:v4->_systemStyleEnabledKey];
    if (v17 && (v18 = v17, [v17 objectForKeyedSubscript:v4->_bundleID]))
    {
      v19 = [objc_msgSend(v18 objectForKeyedSubscript:{v4->_bundleID), "BOOLValue"}];
    }

    else
    {
      v19 = [sDisallowedFirstPartyAppsInSystemStyleEnabledList containsObject:v4->_bundleID] ^ 1;
    }

    v4->_systemStyleEnabled = v19;
  }

  return v4;
}

- (void)installProprietaryDefaultListeners
{
  systemStyleKey = self->_systemStyleKey;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__AVSmartStyleSettingsState_installProprietaryDefaultListeners__block_invoke;
  v6[3] = &unk_1E786EAF0;
  v6[4] = self;
  [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:systemStyleKey callHandlerForInitialValue:0 defaultChangedHandler:v6];
  if (![(NSString *)self->_bundleID isEqualToString:AVSmartStyleSettingsSystemStyle])
  {
    systemStyleEnabledKey = self->_systemStyleEnabledKey;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__AVSmartStyleSettingsState_installProprietaryDefaultListeners__block_invoke_2;
    v5[3] = &unk_1E786EAF0;
    v5[4] = self;
    [AVCaptureProprietaryDefaultsSingleton addObserver:self forKey:systemStyleEnabledKey callHandlerForInitialValue:0 defaultChangedHandler:v5];
  }
}

- (void)dealloc
{
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_systemStyleKey];

  self->_systemStyleKey = 0;
  [AVCaptureProprietaryDefaultsSingleton removeObserver:self forKey:self->_systemStyleEnabledKey];

  self->_systemStyleEnabledKey = 0;
  self->_systemStyleTimestampKey = 0;

  self->_bundleID = 0;
  self->_systemStyle = 0;

  self->_queue = 0;
  v3.receiver = self;
  v3.super_class = AVSmartStyleSettingsState;
  [(AVSmartStyleSettingsState *)&v3 dealloc];
}

- (void)_proprietaryDefaultChanged:(id)a3 keyPath:(id)a4
{
  if ([a4 isEqualToString:self->_systemStyleKey])
  {
    if (a3)
    {
      v7 = [a3 objectForKeyedSubscript:AVSmartStyleSettingsCastTypeKey];
      [objc_msgSend(a3 objectForKeyedSubscript:{AVSmartStyleSettingsCastIntensityKey), "floatValue"}];
      v9 = v8;
      [objc_msgSend(a3 objectForKeyedSubscript:{AVSmartStyleSettingsToneBiasKey), "floatValue"}];
      v11 = v10;
      [objc_msgSend(a3 objectForKeyedSubscript:{AVSmartStyleSettingsColorBiasKey), "floatValue"}];
      LODWORD(v13) = v12;
      LODWORD(v14) = v9;
      LODWORD(v15) = v11;
      v16 = [AVCaptureSmartStyle styleWithCast:v7 intensity:v14 toneBias:v15 colorBias:v13];
      if ([(AVCaptureSmartStyle *)v16 isEqual:self->_systemStyle])
      {
        return;
      }

      v17 = AVSmartStyleSettingsSystemStyleDidChangedNotification;
      bundleID = self->_bundleID;
      v28[0] = AVSmartStyleSettingsBundleIDKey;
      v28[1] = AVSmartStyleSettingsSmartStyleKey;
      v29[0] = bundleID;
      v29[1] = v16;
      v19 = MEMORY[0x1E695DF20];
      v20 = v29;
      v21 = v28;
      goto LABEL_18;
    }

    if ([(NSString *)self->_bundleID isEqualToString:AVSmartStyleSettingsSystemStyle])
    {
      v23 = +[AVCaptureSmartStyle identityStyle];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
    }

    v16 = v23;
    if (![(AVCaptureSmartStyle *)v23 isEqual:self->_systemStyle])
    {
      v17 = AVSmartStyleSettingsSystemStyleDidChangedNotification;
      v25 = self->_bundleID;
      v30[0] = AVSmartStyleSettingsBundleIDKey;
      v30[1] = AVSmartStyleSettingsSmartStyleKey;
      v31[0] = v25;
      v31[1] = v16;
      v19 = MEMORY[0x1E695DF20];
      v20 = v31;
      v21 = v30;
LABEL_18:
      v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:2];

      self->_systemStyle = v16;
LABEL_19:
      if (v17)
      {
        if (v24)
        {
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }
      }
    }
  }

  else if ([a4 isEqualToString:self->_systemStyleEnabledKey])
  {
    v22 = a3 && [a3 objectForKeyedSubscript:self->_bundleID] ? objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", self->_bundleID), "BOOLValue") : 1;
    if ([a3 objectForKeyedSubscript:self->_bundleID] && self->_systemStyleEnabled != v22)
    {
      v17 = AVSmartStyleSettingsSystemStyleEnabledDidChangedNotification;
      v27[1] = [MEMORY[0x1E696AD98] numberWithBool:{v22, AVSmartStyleSettingsBundleIDKey, AVSmartStyleSettingsEnabledKey, self->_bundleID}];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:2];
      self->_systemStyleEnabled = v22;
      goto LABEL_19;
    }
  }
}

- (id)systemStyle
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVSmartStyleSettingsState_systemStyle__block_invoke;
  block[3] = &unk_1E786EB18;
  objc_copyWeak(&v7, &location);
  block[4] = &v9;
  dispatch_sync(queue, block);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void __40__AVSmartStyleSettingsState_systemStyle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(*(*(a1 + 32) + 8) + 40) = WeakRetained[6];
  }
}

- (void)setSystemStyle:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVSmartStyleSettingsState_setSystemStyle___block_invoke;
  v6[3] = &unk_1E786EB40;
  objc_copyWeak(&v7, &location);
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(queue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__AVSmartStyleSettingsState_setSystemStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = *(a1 + 32);
    if (v4)
    {
      if (*(*(a1 + 40) + 8) == AVSmartStyleSettingsSystemStyle)
      {
        v7 = 0;
      }

      else
      {
        v5 = [MEMORY[0x1E695DF00] date];
        v6 = MEMORY[0x1E696AD98];
        [v5 timeIntervalSince1970];
        v7 = [v6 numberWithDouble:?];
        v4 = *(a1 + 32);
      }

      v13[0] = [v4 cast];
      v12[1] = AVSmartStyleSettingsCastIntensityKey;
      v9 = MEMORY[0x1E696AD98];
      [*(a1 + 32) intensity];
      v13[1] = [v9 numberWithFloat:?];
      v12[2] = AVSmartStyleSettingsToneBiasKey;
      v10 = MEMORY[0x1E696AD98];
      [*(a1 + 32) toneBias];
      v13[2] = [v10 numberWithFloat:?];
      v12[3] = AVSmartStyleSettingsColorBiasKey;
      v11 = MEMORY[0x1E696AD98];
      [*(a1 + 32) colorBias];
      v13[3] = [v11 numberWithFloat:?];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    [AVCaptureProprietaryDefaultsSingleton setObject:v7 forKey:v3[4]];
    [AVCaptureProprietaryDefaultsSingleton setObject:v8 forKey:v3[3]];
  }
}

- (BOOL)systemStyleEnabled
{
  if ([(NSString *)self->_bundleID isEqualToString:AVSmartStyleSettingsSystemStyle])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
    v4 = 1;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AVSmartStyleSettingsState_systemStyleEnabled__block_invoke;
    block[3] = &unk_1E786EB18;
    objc_copyWeak(&v8, &location);
    block[4] = &v10;
    dispatch_sync(queue, block);
    v4 = *(v11 + 24);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v10, 8);
  }

  return v4 & 1;
}

void __47__AVSmartStyleSettingsState_systemStyleEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(*(a1 + 32) + 8) + 24) = WeakRetained[56];
  }
}

- (void)setSystemStyleEnabled:(BOOL)a3
{
  if ([(NSString *)self->_bundleID isEqualToString:AVSmartStyleSettingsSystemStyle])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }

  else if (!-[NSString containsString:](self->_bundleID, "containsString:", @"com.apple.") || [sAllowedFirstPartyAppsInSystemStyleEnabledList containsObject:self->_bundleID])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AVSmartStyleSettingsState_setSystemStyleEnabled___block_invoke;
    block[3] = &unk_1E786EB68;
    objc_copyWeak(&v8, &location);
    v9 = a3;
    dispatch_async(queue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __51__AVSmartStyleSettingsState_setSystemStyleEnabled___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [+[AVCaptureProprietaryDefaultsSingleton objectForKey:](AVCaptureProprietaryDefaultsSingleton objectForKey:{WeakRetained[5]), "mutableCopy"}];
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DF90] dictionary];
    }

    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(a1 + 40)), v4[1]}];
    [AVCaptureProprietaryDefaultsSingleton setObject:v3 forKey:v4[5]];
  }
}

@end