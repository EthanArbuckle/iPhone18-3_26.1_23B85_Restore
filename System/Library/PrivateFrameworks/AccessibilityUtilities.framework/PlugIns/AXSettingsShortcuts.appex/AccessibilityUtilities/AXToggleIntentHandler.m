@interface AXToggleIntentHandler
- (void)handleToggleAssistiveTouch:(id)a3 completion:(id)a4;
- (void)handleToggleAutoAnswerCalls:(id)a3 completion:(id)a4;
- (void)handleToggleCaptions:(id)a3 completion:(id)a4;
- (void)handleToggleColorFilters:(id)a3 completion:(id)a4;
- (void)handleToggleContrast:(id)a3 completion:(id)a4;
- (void)handleToggleLEDFlash:(id)a3 completion:(id)a4;
- (void)handleToggleLiveCaptions:(id)a3 completion:(id)a4;
- (void)handleToggleLiveSpeech:(id)a3 completion:(id)a4;
- (void)handleToggleMonoAudio:(id)a3 completion:(id)a4;
- (void)handleToggleTouchAccommodations:(id)a3 completion:(id)a4;
- (void)handleToggleTransparency:(id)a3 completion:(id)a4;
- (void)handleToggleVoiceControl:(id)a3 completion:(id)a4;
- (void)handleToggleWhitePoint:(id)a3 completion:(id)a4;
- (void)resolveOperationForToggleAssistiveTouch:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleAutoAnswerCalls:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleCaptions:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleColorFilters:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleContrast:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleLEDFlash:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleLiveCaptions:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleLiveSpeech:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleMonoAudio:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleTouchAccommodations:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleTransparency:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleVoiceControl:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleWhitePoint:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleAssistiveTouch:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleAutoAnswerCalls:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleCaptions:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleColorFilters:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleContrast:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleLEDFlash:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleLiveCaptions:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleLiveSpeech:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleMonoAudio:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleTouchAccommodations:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleTransparency:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleVoiceControl:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleWhitePoint:(id)a3 withCompletion:(id)a4;
@end

@implementation AXToggleIntentHandler

- (void)handleToggleVoiceControl:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSCommandAndControlEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSCommandAndControlEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSCommandAndControlSetEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleVoiceControlIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleVoiceControl:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleVoiceControl:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleTransparency:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSEnhanceBackgroundContrastEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSEnhanceBackgroundContrastEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSSetEnhanceBackgroundContrastEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleTransparencyIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleTransparency:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleTransparency:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleContrast:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXDarkenSystemColors();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXDarkenSystemColors();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSSetDarkenSystemColors();
    v9 = 4;
  }

  v10 = [[AXToggleContrastIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleContrast:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleContrast:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleWhitePoint:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSReduceWhitePointEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSReduceWhitePointEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSSetReduceWhitePointEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleWhitePointIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleWhitePoint:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleWhitePoint:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleColorFilters:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 operation] == 1 && !objc_msgSend(v5, "state"))
  {
    v12 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = [AXToggleColorFiltersIntentResponse alloc];
    v10 = 5;
  }

  else
  {
    v7 = +[AXBackBoardServer server];
    v8 = [v7 supportsAccessibilityDisplayFilters];

    if (v8)
    {
      MADisplayFilterPrefGetCategoryEnabled();
      if ([v5 operation] == 1)
      {
        [v5 state];
      }

      MADisplayFilterPrefSetCategoryEnabled();
    }

    else
    {
      if ([v5 operation] == 1)
      {
        [v5 state];
      }

      else
      {
        _AXSGrayscaleEnabled();
      }

      _AXSGrayscaleSetEnabled();
    }

    v9 = [AXToggleColorFiltersIntentResponse alloc];
    v10 = 4;
  }

  v11 = [(AXToggleColorFiltersIntentResponse *)v9 initWithCode:v10 userActivity:0];
  v6[2](v6, v11);
}

- (void)resolveOperationForToggleColorFilters:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleColorFilters:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleCaptions:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSClosedCaptionsEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSClosedCaptionsEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSClosedCaptionsSetEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleCaptionsIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleCaptions:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleCaptions:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleMonoAudio:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSMonoAudioEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSMonoAudioEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSMonoAudioSetEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleMonoAudioIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleMonoAudio:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleMonoAudio:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleLEDFlash:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSVisualAlertEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSVisualAlertEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSVisualAlertSetEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleLEDFlashIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleLEDFlash:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleLEDFlash:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleLiveCaptions:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSLiveTranscriptionEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSLiveTranscriptionEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSLiveTranscriptionSetEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleLiveCaptionsIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleLiveCaptions:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleLiveCaptions:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleLiveSpeech:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSLiveSpeechEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSLiveSpeechEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([v5 operation] == 1 && (objc_msgSend(v5, "state"), !objc_msgSend(v5, "state")))
  {
    v11 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v9 = 5;
  }

  else
  {
    _AXSLiveSpeechSetEnabled();
    v9 = 4;
  }

  v10 = [[AXToggleLiveSpeechIntentResponse alloc] initWithCode:v9 userActivity:0];
  v6[2](v6, v10);
}

- (void)resolveOperationForToggleLiveSpeech:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleLiveSpeech:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleAutoAnswerCalls:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_10000451C();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v7 ^ 1;
    v17 = 1024;
    v18 = sub_10000451C();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([v5 operation] != 1)
  {
    v9 = v7 ^ 1;
    goto LABEL_9;
  }

  v9 = [v5 state] == 1;
  if ([v5 state])
  {
LABEL_9:
    v10 = +[AXSettings sharedInstance];
    [v10 setCallAudioRoutingAutoAnswerEnabled:v9 & 1];
    v11 = 4;
    goto LABEL_10;
  }

  v10 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10000D884();
  }

  v11 = 5;
LABEL_10:

  v12 = [[AXToggleAutoAnswerCallsIntentResponse alloc] initWithCode:v11 userActivity:0];
  v6[2](v6, v12);
}

- (void)resolveOperationForToggleAutoAnswerCalls:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleAutoAnswerCalls:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleAssistiveTouch:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _AXSAssistiveTouchEnabled();
  v8 = v7 == 0;
  v9 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v7 == 0;
    v17 = 1024;
    v18 = _AXSAssistiveTouchEnabled();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([v5 operation] == 1 && (v8 = objc_msgSend(v5, "state") == 1, !objc_msgSend(v5, "state")))
  {
    v12 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D884();
    }

    v10 = 5;
  }

  else
  {
    _AXSAssistiveTouchSetEnabledShortcuts(v8);
    v10 = 4;
  }

  v11 = [[AXToggleAssistiveTouchIntentResponse alloc] initWithCode:v10 userActivity:0];
  v6[2](v6, v11);
}

- (void)resolveOperationForToggleAssistiveTouch:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleAssistiveTouch:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleTouchAccommodations:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004B80();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v7 ^ 1;
    v17 = 1024;
    v18 = sub_100004B80();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([v5 operation] != 1)
  {
    v9 = v7 ^ 1;
    goto LABEL_9;
  }

  v9 = [v5 state] == 1;
  if ([v5 state])
  {
LABEL_9:
    v10 = +[AXSettings sharedInstance];
    [v10 setTouchAccommodationsEnabled:v9 & 1];
    v11 = 4;
    goto LABEL_10;
  }

  v10 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10000D884();
  }

  v11 = 5;
LABEL_10:

  v12 = [[AXToggleTouchAccommodationsIntentResponse alloc] initWithCode:v11 userActivity:0];
  v6[2](v6, v12);
}

- (void)resolveOperationForToggleTouchAccommodations:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleTouchAccommodations:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

@end