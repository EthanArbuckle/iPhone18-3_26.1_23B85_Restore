@interface AXIntentHandler
- (id)handlerForIntent:(id)intent;
@end

@implementation AXIntentHandler

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  v5 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = intentCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AXIntentHandler Handling intent: %@", &v11, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = VoiceOverIntentHandler;
LABEL_22:
    selfCopy = objc_alloc_init(v6);
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = SpeechIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MagnifierIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_21:
    v6 = AXToggleIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = SwitchControlIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = AXSwitchControlSwitchIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ZoomIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = GuidedAccessIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = AXDisplayIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = AXVisionIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ToggleSoundDetectionIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = SetSoundDetectorIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = AXBackgroundSoundsIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = AXStartRemoteWatchScreenIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = AXSetLeftRightBalanceIntentHandler;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = AXToggleNameRecognitionIntentHandler;
    goto LABEL_22;
  }

  v10 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10000D8EC(intentCopy, v10);
  }

  selfCopy = self;
LABEL_23:
  v8 = selfCopy;

  return v8;
}

@end