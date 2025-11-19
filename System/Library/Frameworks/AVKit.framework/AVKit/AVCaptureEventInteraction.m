@interface AVCaptureEventInteraction
- (AVCaptureEventInteraction)initWithPrimaryEventHandler:(id)a3 secondaryEventHandler:(id)a4;
- (UIView)view;
- (id)_actionForPhysicalButton:(uint64_t)a1;
- (id)_configuration;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)_playDefaultSystemSound;
- (void)_playSound:(id)a3;
- (void)_playSystemSoundForCaptureType:(int64_t)a3;
- (void)_setUpPhysicalButtonInteractionIfNeeded;
- (void)_updatePhysicalButtonInteractionEnabled;
- (void)_updatePhysicalButtonInteractionViewIfNeeded;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)set_configuration:(id)a3;
- (void)set_defaultCaptureSoundDisabled:(BOOL)a3;
@end

@implementation AVCaptureEventInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_setUpPhysicalButtonInteractionIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 32))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      if (WeakRetained)
      {
        v3 = *(a1 + 84);

        if (v3 == 1)
        {
          v6 = +[AVCaptureEventInteraction _captureButtonsConfigurationSet];
          v4 = [objc_alloc(MEMORY[0x1E69DD638]) initWithConfigurations:v6 delegate:a1];
          v5 = *(a1 + 32);
          *(a1 + 32) = v4;

          [a1 _updatePhysicalButtonInteractionEnabled];
          [a1 _updatePhysicalButtonInteractionViewIfNeeded];
        }
      }
    }
  }
}

- (void)_updatePhysicalButtonInteractionEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = self->_physicalButtonInteraction;
  enabled = self->_enabled;
  if (enabled != [(_UIPhysicalButtonInteraction *)v3 _isEnabled])
  {
    [(_UIPhysicalButtonInteraction *)v3 _setEnabled:enabled];
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109378;
      v6[1] = enabled;
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "Updated enablement state to %d for interaction: %@", v6, 0x12u);
    }
  }
}

- (void)_updatePhysicalButtonInteractionViewIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = self->_physicalButtonInteraction;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v5 = [(_UIPhysicalButtonInteraction *)v3 view];
    v6 = v5;
    if (v5 != WeakRetained)
    {
      [v5 removeInteraction:v3];
      [WeakRetained addInteraction:v3];
      v7 = _AVLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412802;
        v9 = v3;
        v10 = 2112;
        v11 = v6;
        v12 = 2112;
        v13 = WeakRetained;
        _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Updated view for interaction: %@\n\tfrom %@\n\tto: %@", &v8, 0x20u);
      }
    }
  }
}

- (void)_playSound:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [MEMORY[0x1E69870F0] temporarilySuppressShutterSoundForAirpodStemClick];
  [v3 _identifier];
  AudioServicesPlaySystemSoundWithOptions();
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v3 _identifier];
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureEventInteraction] Playing a capture sound through AirPods with SSID: %u", v5, 8u);
  }
}

- (void)_playSystemSoundForCaptureType:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  AudioServicesStopSystemSound();
  defaultSoundsByCaptureType = self->_defaultSoundsByCaptureType;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSDictionary *)defaultSoundsByCaptureType objectForKeyedSubscript:v6];

  v8 = _AVLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "[AVCaptureEventInteraction] Playing the system sound for capture type: %ld", &v10, 0xCu);
    }

    self->_currentSystemSoundID = [v7 unsignedIntValue];
    [MEMORY[0x1E69870F0] temporarilySuppressShutterSoundForAirpodStemClick];
    AudioServicesPlaySystemSoundWithOptions();
  }

  else
  {
    if (v9)
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "[AVCaptureEventInteraction] An error occurred when trying to play the system sound for capture: %ld", &v10, 0xCu);
    }

    [(AVCaptureEventInteraction *)self _playDefaultSystemSound];
  }
}

- (void)_playDefaultSystemSound
{
  AudioServicesStopSystemSound();
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "[AVCaptureEventInteraction] Playing the default system sound.", v4, 2u);
  }

  self->_currentSystemSoundID = 1117;
  [MEMORY[0x1E69870F0] temporarilySuppressShutterSoundForAirpodStemClick];
  AudioServicesPlaySystemSoundWithOptions();
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 _button];
  v8 = v6;
  v26 = v8;
  if (v7 == 5)
  {
    if (self && self->_enabled)
    {
      v9 = [v8 _stagePhase];
      if ([v26 _numberOfStages] < 2)
      {
        v12 = 0;
      }

      else
      {
        v10 = [v26 _stage];
        v11 = v10 != [v26 _numberOfStages] - 1 || v9 == 1;
        v12 = !v11;
      }

      v22 = [v26 _state];
      v23 = [v26 _numberOfStages];
      if (v12)
      {
        if (v9)
        {
          if (v9 == 3)
          {
            v9 = 2;
          }

          else
          {
            if (v9 != 2)
            {
              v25 = _AVLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v9;
                _os_log_impl(&dword_18B49C000, v25, OS_LOG_TYPE_DEFAULT, "Invalid _UIPhysicalButtonStagePhase %ld. Cannot be converted to AVCaptureEventPhase.", buf, 0xCu);
              }

              __assert_rtn("AVCaptureEventPhaseFromPhysicalButtonStagePhase", "AVCaptureEvent.m", 181, "NO");
            }

            v9 = 1;
          }
        }

        goto LABEL_29;
      }

      v11 = v23 == 1;
      v8 = v26;
      if (v11 && v22 != 1)
      {
        v9 = AVCaptureEventPhaseFromPhysicalButtonState(v22);
LABEL_29:
        v24 = [v26 _button];
        v19 = [(AVCaptureEventInteraction *)self _actionForPhysicalButton:v24];
        v18 = v19;
        v20 = v9;
        v21 = v24;
LABEL_30:
        [v19 sendPhaseUpdate:v20 physicalButton:v21 interaction:self];

        v8 = v26;
      }
    }
  }

  else if (self)
  {
    v13 = [v8 _state];
    v8 = v26;
    if (self->_enabled && v13 != 1)
    {
      v14 = [v26 _button];
      v15 = AVCaptureEventPhaseFromPhysicalButtonState(v13);
      if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 6)
      {
        v16 = +[AVKitGlobalSettings shared];
        v17 = [v16 cameraControlWithAirPodsEnabled];

        if (v17)
        {
          os_eligibility_get_domain_answer();
          v14 = 2;
        }
      }

      v18 = [(AVCaptureEventInteraction *)self _actionForPhysicalButton:v14];
      v19 = v18;
      v20 = v15;
      v21 = v14;
      goto LABEL_30;
    }
  }
}

- (id)_actionForPhysicalButton:(uint64_t)a1
{
  v3 = a2 - 1;
  if (a2 - 1) <= 6 && ((0x77u >> v3))
  {
    v4 = *(a1 + qword_18B6EC698[v3]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    obj = v4;
    WeakRetained = objc_loadWeakRetained(&self->_view);

    v5 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak(&self->_view, obj);
      [(AVCaptureEventInteraction *)self _setUpPhysicalButtonInteractionIfNeeded];
      v4 = [(AVCaptureEventInteraction *)self _updatePhysicalButtonInteractionViewIfNeeded];
      v5 = obj;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)set_defaultCaptureSoundDisabled:(BOOL)a3
{
  if (AVCaptureEventInteractionDefaultSoundDisabled != a3)
  {
    AVCaptureEventInteractionDefaultSoundDisabled = a3;
  }
}

- (id)_configuration
{
  configuration = self->__configuration;
  if (!configuration)
  {
    v4 = objc_alloc_init(_AVCaptureEventInteractionConfiguration);
    v5 = self->__configuration;
    self->__configuration = v4;

    configuration = self->__configuration;
  }

  return configuration;
}

- (void)set_configuration:(id)a3
{
  v5 = a3;
  configuration = self->__configuration;
  p_configuration = &self->__configuration;
  if (configuration != v5)
  {
    v8 = v5;
    objc_storeStrong(p_configuration, a3);
    v5 = v8;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVCaptureEventInteraction *)self _setUpPhysicalButtonInteractionIfNeeded];

    [(AVCaptureEventInteraction *)self _updatePhysicalButtonInteractionEnabled];
  }
}

- (void)dealloc
{
  AudioServicesStopSystemSound();
  v3.receiver = self;
  v3.super_class = AVCaptureEventInteraction;
  [(AVCaptureEventInteraction *)&v3 dealloc];
}

- (AVCaptureEventInteraction)initWithPrimaryEventHandler:(id)a3 secondaryEventHandler:(id)a4
{
  v25[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = AVCaptureEventInteraction;
  v8 = [(AVCaptureEventInteraction *)&v21 init];
  if (v8)
  {
    v9 = [[AVCaptureEventAction alloc] initWithSource:0 eventHandler:v6];
    v10 = [[AVCaptureEventAction alloc] initWithSource:1 eventHandler:v7];
    primaryAction = v8->_primaryAction;
    v8->_primaryAction = v9;
    v12 = v9;

    secondaryAction = v8->_secondaryAction;
    v8->_secondaryAction = v10;
    v14 = v10;

    v8->_enabled = 1;
    v24[0] = &unk_1EFF12C50;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1117];
    v25[0] = v15;
    v25[1] = &unk_1EFF12C80;
    v24[1] = &unk_1EFF12C68;
    v24[2] = &unk_1EFF12C98;
    v24[3] = &unk_1EFF12CC8;
    v25[2] = &unk_1EFF12CB0;
    v25[3] = &unk_1EFF12CE0;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
    defaultSoundsByCaptureType = v8->_defaultSoundsByCaptureType;
    v8->_defaultSoundsByCaptureType = v16;

    v22[0] = *MEMORY[0x1E695A8C0];
    v22[1] = @"PlaySystemSoundOption_PrefersToPlayAudioToHeadphonesOnly";
    v23[0] = MEMORY[0x1E695E118];
    v23[1] = MEMORY[0x1E695E118];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    soundOptions = v8->_soundOptions;
    v8->_soundOptions = v18;

    v8->_currentSystemSoundID = 1117;
  }

  return v8;
}

@end