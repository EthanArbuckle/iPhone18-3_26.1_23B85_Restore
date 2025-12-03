@interface AXToggleIntentHandler
- (void)handleToggleAssistiveTouch:(id)touch completion:(id)completion;
- (void)handleToggleAutoAnswerCalls:(id)calls completion:(id)completion;
- (void)handleToggleCaptions:(id)captions completion:(id)completion;
- (void)handleToggleColorFilters:(id)filters completion:(id)completion;
- (void)handleToggleContrast:(id)contrast completion:(id)completion;
- (void)handleToggleLEDFlash:(id)flash completion:(id)completion;
- (void)handleToggleLiveCaptions:(id)captions completion:(id)completion;
- (void)handleToggleLiveSpeech:(id)speech completion:(id)completion;
- (void)handleToggleMonoAudio:(id)audio completion:(id)completion;
- (void)handleToggleTouchAccommodations:(id)accommodations completion:(id)completion;
- (void)handleToggleTransparency:(id)transparency completion:(id)completion;
- (void)handleToggleVoiceControl:(id)control completion:(id)completion;
- (void)handleToggleWhitePoint:(id)point completion:(id)completion;
- (void)resolveOperationForToggleAssistiveTouch:(id)touch withCompletion:(id)completion;
- (void)resolveOperationForToggleAutoAnswerCalls:(id)calls withCompletion:(id)completion;
- (void)resolveOperationForToggleCaptions:(id)captions withCompletion:(id)completion;
- (void)resolveOperationForToggleColorFilters:(id)filters withCompletion:(id)completion;
- (void)resolveOperationForToggleContrast:(id)contrast withCompletion:(id)completion;
- (void)resolveOperationForToggleLEDFlash:(id)flash withCompletion:(id)completion;
- (void)resolveOperationForToggleLiveCaptions:(id)captions withCompletion:(id)completion;
- (void)resolveOperationForToggleLiveSpeech:(id)speech withCompletion:(id)completion;
- (void)resolveOperationForToggleMonoAudio:(id)audio withCompletion:(id)completion;
- (void)resolveOperationForToggleTouchAccommodations:(id)accommodations withCompletion:(id)completion;
- (void)resolveOperationForToggleTransparency:(id)transparency withCompletion:(id)completion;
- (void)resolveOperationForToggleVoiceControl:(id)control withCompletion:(id)completion;
- (void)resolveOperationForToggleWhitePoint:(id)point withCompletion:(id)completion;
- (void)resolveStateForToggleAssistiveTouch:(id)touch withCompletion:(id)completion;
- (void)resolveStateForToggleAutoAnswerCalls:(id)calls withCompletion:(id)completion;
- (void)resolveStateForToggleCaptions:(id)captions withCompletion:(id)completion;
- (void)resolveStateForToggleColorFilters:(id)filters withCompletion:(id)completion;
- (void)resolveStateForToggleContrast:(id)contrast withCompletion:(id)completion;
- (void)resolveStateForToggleLEDFlash:(id)flash withCompletion:(id)completion;
- (void)resolveStateForToggleLiveCaptions:(id)captions withCompletion:(id)completion;
- (void)resolveStateForToggleLiveSpeech:(id)speech withCompletion:(id)completion;
- (void)resolveStateForToggleMonoAudio:(id)audio withCompletion:(id)completion;
- (void)resolveStateForToggleTouchAccommodations:(id)accommodations withCompletion:(id)completion;
- (void)resolveStateForToggleTransparency:(id)transparency withCompletion:(id)completion;
- (void)resolveStateForToggleVoiceControl:(id)control withCompletion:(id)completion;
- (void)resolveStateForToggleWhitePoint:(id)point withCompletion:(id)completion;
@end

@implementation AXToggleIntentHandler

- (void)handleToggleVoiceControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v7 = _AXSCommandAndControlEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = controlCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSCommandAndControlEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([controlCopy operation] == 1 && (objc_msgSend(controlCopy, "state"), !objc_msgSend(controlCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleVoiceControl:(id)control withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [control operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleVoiceControl:(id)control withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [control state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleTransparency:(id)transparency completion:(id)completion
{
  transparencyCopy = transparency;
  completionCopy = completion;
  v7 = _AXSEnhanceBackgroundContrastEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = transparencyCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSEnhanceBackgroundContrastEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([transparencyCopy operation] == 1 && (objc_msgSend(transparencyCopy, "state"), !objc_msgSend(transparencyCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleTransparency:(id)transparency withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [transparency operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleTransparency:(id)transparency withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [transparency state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleContrast:(id)contrast completion:(id)completion
{
  contrastCopy = contrast;
  completionCopy = completion;
  v7 = _AXDarkenSystemColors();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = contrastCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXDarkenSystemColors();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([contrastCopy operation] == 1 && (objc_msgSend(contrastCopy, "state"), !objc_msgSend(contrastCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleContrast:(id)contrast withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [contrast operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleContrast:(id)contrast withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [contrast state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleWhitePoint:(id)point completion:(id)completion
{
  pointCopy = point;
  completionCopy = completion;
  v7 = _AXSReduceWhitePointEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = pointCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSReduceWhitePointEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([pointCopy operation] == 1 && (objc_msgSend(pointCopy, "state"), !objc_msgSend(pointCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleWhitePoint:(id)point withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [point operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleWhitePoint:(id)point withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [point state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleColorFilters:(id)filters completion:(id)completion
{
  filtersCopy = filters;
  completionCopy = completion;
  if ([filtersCopy operation] == 1 && !objc_msgSend(filtersCopy, "state"))
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
    supportsAccessibilityDisplayFilters = [v7 supportsAccessibilityDisplayFilters];

    if (supportsAccessibilityDisplayFilters)
    {
      MADisplayFilterPrefGetCategoryEnabled();
      if ([filtersCopy operation] == 1)
      {
        [filtersCopy state];
      }

      MADisplayFilterPrefSetCategoryEnabled();
    }

    else
    {
      if ([filtersCopy operation] == 1)
      {
        [filtersCopy state];
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
  completionCopy[2](completionCopy, v11);
}

- (void)resolveOperationForToggleColorFilters:(id)filters withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [filters operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleColorFilters:(id)filters withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [filters state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleCaptions:(id)captions completion:(id)completion
{
  captionsCopy = captions;
  completionCopy = completion;
  v7 = _AXSClosedCaptionsEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = captionsCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSClosedCaptionsEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([captionsCopy operation] == 1 && (objc_msgSend(captionsCopy, "state"), !objc_msgSend(captionsCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleCaptions:(id)captions withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [captions operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleCaptions:(id)captions withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [captions state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleMonoAudio:(id)audio completion:(id)completion
{
  audioCopy = audio;
  completionCopy = completion;
  v7 = _AXSMonoAudioEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = audioCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSMonoAudioEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([audioCopy operation] == 1 && (objc_msgSend(audioCopy, "state"), !objc_msgSend(audioCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleMonoAudio:(id)audio withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [audio operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleMonoAudio:(id)audio withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [audio state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleLEDFlash:(id)flash completion:(id)completion
{
  flashCopy = flash;
  completionCopy = completion;
  v7 = _AXSVisualAlertEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = flashCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSVisualAlertEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([flashCopy operation] == 1 && (objc_msgSend(flashCopy, "state"), !objc_msgSend(flashCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleLEDFlash:(id)flash withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [flash operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleLEDFlash:(id)flash withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [flash state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleLiveCaptions:(id)captions completion:(id)completion
{
  captionsCopy = captions;
  completionCopy = completion;
  v7 = _AXSLiveTranscriptionEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = captionsCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSLiveTranscriptionEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([captionsCopy operation] == 1 && (objc_msgSend(captionsCopy, "state"), !objc_msgSend(captionsCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleLiveCaptions:(id)captions withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [captions operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleLiveCaptions:(id)captions withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [captions state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleLiveSpeech:(id)speech completion:(id)completion
{
  speechCopy = speech;
  completionCopy = completion;
  v7 = _AXSLiveSpeechEnabled();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = speechCopy;
    v14 = 1024;
    v15 = v7 == 0;
    v16 = 1024;
    v17 = _AXSLiveSpeechEnabled();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v12, 0x18u);
  }

  if ([speechCopy operation] == 1 && (objc_msgSend(speechCopy, "state"), !objc_msgSend(speechCopy, "state")))
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
  completionCopy[2](completionCopy, v10);
}

- (void)resolveOperationForToggleLiveSpeech:(id)speech withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [speech operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleLiveSpeech:(id)speech withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [speech state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleAutoAnswerCalls:(id)calls completion:(id)completion
{
  callsCopy = calls;
  completionCopy = completion;
  v7 = sub_10000451C();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = callsCopy;
    v15 = 1024;
    v16 = v7 ^ 1;
    v17 = 1024;
    v18 = sub_10000451C();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([callsCopy operation] != 1)
  {
    v9 = v7 ^ 1;
    goto LABEL_9;
  }

  v9 = [callsCopy state] == 1;
  if ([callsCopy state])
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
  completionCopy[2](completionCopy, v12);
}

- (void)resolveOperationForToggleAutoAnswerCalls:(id)calls withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [calls operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleAutoAnswerCalls:(id)calls withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [calls state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleAssistiveTouch:(id)touch completion:(id)completion
{
  touchCopy = touch;
  completionCopy = completion;
  v7 = _AXSAssistiveTouchEnabled();
  v8 = v7 == 0;
  v9 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = touchCopy;
    v15 = 1024;
    v16 = v7 == 0;
    v17 = 1024;
    v18 = _AXSAssistiveTouchEnabled();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([touchCopy operation] == 1 && (v8 = objc_msgSend(touchCopy, "state") == 1, !objc_msgSend(touchCopy, "state")))
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
  completionCopy[2](completionCopy, v11);
}

- (void)resolveOperationForToggleAssistiveTouch:(id)touch withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [touch operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleAssistiveTouch:(id)touch withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [touch state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleTouchAccommodations:(id)accommodations completion:(id)completion
{
  accommodationsCopy = accommodations;
  completionCopy = completion;
  v7 = sub_100004B80();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = accommodationsCopy;
    v15 = 1024;
    v16 = v7 ^ 1;
    v17 = 1024;
    v18 = sub_100004B80();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([accommodationsCopy operation] != 1)
  {
    v9 = v7 ^ 1;
    goto LABEL_9;
  }

  v9 = [accommodationsCopy state] == 1;
  if ([accommodationsCopy state])
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
  completionCopy[2](completionCopy, v12);
}

- (void)resolveOperationForToggleTouchAccommodations:(id)accommodations withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [accommodations operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleTouchAccommodations:(id)accommodations withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [accommodations state]);
  (*(completion + 2))(completionCopy, v7);
}

@end