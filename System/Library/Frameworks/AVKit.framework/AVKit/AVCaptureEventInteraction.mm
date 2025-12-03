@interface AVCaptureEventInteraction
- (AVCaptureEventInteraction)initWithPrimaryEventHandler:(id)handler secondaryEventHandler:(id)eventHandler;
- (UIView)view;
- (id)_actionForPhysicalButton:(uint64_t)button;
- (id)_configuration;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)_playDefaultSystemSound;
- (void)_playSound:(id)sound;
- (void)_playSystemSoundForCaptureType:(int64_t)type;
- (void)_setUpPhysicalButtonInteractionIfNeeded;
- (void)_updatePhysicalButtonInteractionEnabled;
- (void)_updatePhysicalButtonInteractionViewIfNeeded;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setEnabled:(BOOL)enabled;
- (void)set_configuration:(id)set_configuration;
- (void)set_defaultCaptureSoundDisabled:(BOOL)disabled;
@end

@implementation AVCaptureEventInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_setUpPhysicalButtonInteractionIfNeeded
{
  if (self)
  {
    if (!*(self + 32))
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      if (WeakRetained)
      {
        v3 = *(self + 84);

        if (v3 == 1)
        {
          v6 = +[AVCaptureEventInteraction _captureButtonsConfigurationSet];
          v4 = [objc_alloc(MEMORY[0x1E69DD638]) initWithConfigurations:v6 delegate:self];
          v5 = *(self + 32);
          *(self + 32) = v4;

          [self _updatePhysicalButtonInteractionEnabled];
          [self _updatePhysicalButtonInteractionViewIfNeeded];
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
    view = [(_UIPhysicalButtonInteraction *)v3 view];
    v6 = view;
    if (view != WeakRetained)
    {
      [view removeInteraction:v3];
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

- (void)_playSound:(id)sound
{
  v6 = *MEMORY[0x1E69E9840];
  soundCopy = sound;
  [MEMORY[0x1E69870F0] temporarilySuppressShutterSoundForAirpodStemClick];
  [soundCopy _identifier];
  AudioServicesPlaySystemSoundWithOptions();
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [soundCopy _identifier];
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "[AVCaptureEventInteraction] Playing a capture sound through AirPods with SSID: %u", v5, 8u);
  }
}

- (void)_playSystemSoundForCaptureType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  AudioServicesStopSystemSound();
  defaultSoundsByCaptureType = self->_defaultSoundsByCaptureType;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [(NSDictionary *)defaultSoundsByCaptureType objectForKeyedSubscript:v6];

  v8 = _AVLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 134217984;
      typeCopy2 = type;
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
      typeCopy2 = type;
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

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  _button = [actionCopy _button];
  v8 = actionCopy;
  v26 = v8;
  if (_button == 5)
  {
    if (self && self->_enabled)
    {
      _stagePhase = [v8 _stagePhase];
      if ([v26 _numberOfStages] < 2)
      {
        v12 = 0;
      }

      else
      {
        _stage = [v26 _stage];
        v11 = _stage != [v26 _numberOfStages] - 1 || _stagePhase == 1;
        v12 = !v11;
      }

      _state = [v26 _state];
      _numberOfStages = [v26 _numberOfStages];
      if (v12)
      {
        if (_stagePhase)
        {
          if (_stagePhase == 3)
          {
            _stagePhase = 2;
          }

          else
          {
            if (_stagePhase != 2)
            {
              v25 = _AVLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = _stagePhase;
                _os_log_impl(&dword_18B49C000, v25, OS_LOG_TYPE_DEFAULT, "Invalid _UIPhysicalButtonStagePhase %ld. Cannot be converted to AVCaptureEventPhase.", buf, 0xCu);
              }

              __assert_rtn("AVCaptureEventPhaseFromPhysicalButtonStagePhase", "AVCaptureEvent.m", 181, "NO");
            }

            _stagePhase = 1;
          }
        }

        goto LABEL_29;
      }

      v11 = _numberOfStages == 1;
      v8 = v26;
      if (v11 && _state != 1)
      {
        _stagePhase = AVCaptureEventPhaseFromPhysicalButtonState(_state);
LABEL_29:
        _button2 = [v26 _button];
        v19 = [(AVCaptureEventInteraction *)self _actionForPhysicalButton:_button2];
        v18 = v19;
        v20 = _stagePhase;
        v21 = _button2;
LABEL_30:
        [v19 sendPhaseUpdate:v20 physicalButton:v21 interaction:self];

        v8 = v26;
      }
    }
  }

  else if (self)
  {
    _state2 = [v8 _state];
    v8 = v26;
    if (self->_enabled && _state2 != 1)
    {
      _button3 = [v26 _button];
      v15 = AVCaptureEventPhaseFromPhysicalButtonState(_state2);
      if ((_button3 & 0xFFFFFFFFFFFFFFFELL) == 6)
      {
        v16 = +[AVKitGlobalSettings shared];
        cameraControlWithAirPodsEnabled = [v16 cameraControlWithAirPodsEnabled];

        if (cameraControlWithAirPodsEnabled)
        {
          os_eligibility_get_domain_answer();
          _button3 = 2;
        }
      }

      v18 = [(AVCaptureEventInteraction *)self _actionForPhysicalButton:_button3];
      v19 = v18;
      v20 = v15;
      v21 = _button3;
      goto LABEL_30;
    }
  }
}

- (id)_actionForPhysicalButton:(uint64_t)button
{
  v3 = a2 - 1;
  if (a2 - 1) <= 6 && ((0x77u >> v3))
  {
    v4 = *(button + qword_18B6EC698[v3]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (self)
  {
    obj = viewCopy;
    WeakRetained = objc_loadWeakRetained(&self->_view);

    v5 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak(&self->_view, obj);
      [(AVCaptureEventInteraction *)self _setUpPhysicalButtonInteractionIfNeeded];
      viewCopy = [(AVCaptureEventInteraction *)self _updatePhysicalButtonInteractionViewIfNeeded];
      v5 = obj;
    }
  }

  MEMORY[0x1EEE66BB8](viewCopy, v5);
}

- (void)set_defaultCaptureSoundDisabled:(BOOL)disabled
{
  if (AVCaptureEventInteractionDefaultSoundDisabled != disabled)
  {
    AVCaptureEventInteractionDefaultSoundDisabled = disabled;
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

- (void)set_configuration:(id)set_configuration
{
  set_configurationCopy = set_configuration;
  configuration = self->__configuration;
  p_configuration = &self->__configuration;
  if (configuration != set_configurationCopy)
  {
    v8 = set_configurationCopy;
    objc_storeStrong(p_configuration, set_configuration);
    set_configurationCopy = v8;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
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

- (AVCaptureEventInteraction)initWithPrimaryEventHandler:(id)handler secondaryEventHandler:(id)eventHandler
{
  v25[4] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  eventHandlerCopy = eventHandler;
  v21.receiver = self;
  v21.super_class = AVCaptureEventInteraction;
  v8 = [(AVCaptureEventInteraction *)&v21 init];
  if (v8)
  {
    v9 = [[AVCaptureEventAction alloc] initWithSource:0 eventHandler:handlerCopy];
    v10 = [[AVCaptureEventAction alloc] initWithSource:1 eventHandler:eventHandlerCopy];
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