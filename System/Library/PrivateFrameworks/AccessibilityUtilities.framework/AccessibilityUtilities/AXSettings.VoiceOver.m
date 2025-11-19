@interface AXSettings.VoiceOver
- (BOOL)voiceOverHearingAidRoutingEnabled;
- (BOOL)voiceOverImageCaptionsEnabled;
- (BOOL)voiceOverLanguageDetectionEnabled;
- (BOOL)voiceOverLargeCursorEnabled;
- (BOOL)voiceOverMagicTapDefaultToMediaPlayback;
- (BOOL)voiceOverPitchChangeEnabled;
- (BOOL)voiceOverSpeakUpEnabled;
- (BOOL)voiceOverTouchBrailleDisplaySyncInputOutputTables;
- (BOOL)voiceOverTouchBrailleGesturesActivationGestureEnabled;
- (BOOL)voiceOverTouchBrailleGesturesAutoActivateOnTextFields;
- (BOOL)voiceOverTouchBrailleGesturesDisplaysEnteredText;
- (BOOL)voiceOverTouchBrailleGesturesLearnsDotPositions;
- (BOOL)voiceOverTouchBrailleGesturesUsesHapticFeedback;
- (BOOL)voiceOverTouchBrailleGesturesUsesTypingSoundFeedback;
- (BOOL)voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback;
- (BOOL)voiceOverTouchBrailleHIMSUsesDot7ForCommand;
- (BOOL)voiceOverTouchBraillePanningAutoTurnsReadingContent;
- (BOOL)voiceOverTouchBrailleUICalculatorUsesUEBMath;
- (BOOL)voiceOverTouchBrailleUIIsBRFReflowEnabled;
- (BOOL)voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled;
- (BOOL)voiceOverTouchBrailleUIMigrationMessageAnnounced;
- (BOOL)voiceOverTouchBrailleUIReadListItemsEnabled;
- (BOOL)voiceOverTouchBrailleUIShouldReopenViewsWhenRestart;
- (BOOL)voiceOverTouchBrailleUIShowsBackButton;
- (BOOL)voiceOverTouchBrailleUITypingSpeechFeedbackEnabled;
- (BOOL)voiceOverTouchBrailleUIVisualsEnabled;
- (BOOL)voiceOverTouchBrailleUsesUnderlineCursor;
- (BOOL)voiceOverTouchKeyboardBrailleUIEnabled;
- (BOOL)voiceOverTouchPerkinsChordKeyboardInputEnabled;
- (BOOL)voiceOverTouchPerkinsKeyboardInputEnabled;
- (BOOL)voiceOverUseDigitalCrownNavigation;
- (BOOL)voiceOverUseSiriSounds;
- (BOOL)voiceOverUseTVToggleStyleNavigation;
- (NSDictionary)voiceOverDefaultVoiceSelections;
- (NSUUID)voiceOverDefaultPunctuationGroup;
- (double)voiceOverContinuousPathKeyboardStartTimeout;
- (float)voiceOverSpeakingRate;
- (int64_t)voiceOverContentDescriptionLevel;
- (int64_t)voiceOverCursorOutputStyle;
- (int64_t)voiceOverListAnnotation;
- (int64_t)voiceOverTouchBrailleDisplayInputMode;
- (int64_t)voiceOverTouchBrailleDisplayOutputMode;
- (int64_t)voiceOverTouchBrailleGesturesInputMode;
- (int64_t)voiceOverTouchBrailleGesturesSingleHandStyle;
- (int64_t)voiceOverTouchBrailleGesturesSoundOption;
- (int64_t)voiceOverTouchBrailleUIBrailleNotesSortDirection;
- (int64_t)voiceOverTouchBrailleUIBrailleNotesSortType;
- (int64_t)voiceOverTouchBrailleUILiveCaptionsSource;
- (int64_t)voiceOverTouchBrailleZoomOutNumCellsPerElement;
- (void)setVoiceOverContentDescriptionLevel:(int64_t)a3;
- (void)setVoiceOverContinuousPathKeyboardStartTimeout:(double)a3;
- (void)setVoiceOverCursorOutputStyle:(int64_t)a3;
- (void)setVoiceOverDefaultPunctuationGroup:(id)a3;
- (void)setVoiceOverDefaultVoiceSelections:(id)a3;
- (void)setVoiceOverHearingAidRoutingEnabled:(BOOL)a3;
- (void)setVoiceOverImageCaptionsEnabled:(BOOL)a3;
- (void)setVoiceOverLanguageDetectionEnabled:(BOOL)a3;
- (void)setVoiceOverLargeCursorEnabled:(BOOL)a3;
- (void)setVoiceOverListAnnotation:(int64_t)a3;
- (void)setVoiceOverMagicTapDefaultToMediaPlayback:(BOOL)a3;
- (void)setVoiceOverPitchChangeEnabled:(BOOL)a3;
- (void)setVoiceOverSpeakUpEnabled:(BOOL)a3;
- (void)setVoiceOverSpeakingRate:(float)a3;
- (void)setVoiceOverTouchBrailleDisplayInputMode:(int64_t)a3;
- (void)setVoiceOverTouchBrailleDisplayOutputMode:(int64_t)a3;
- (void)setVoiceOverTouchBrailleDisplaySyncInputOutputTables:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesActivationGestureEnabled:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesDisplaysEnteredText:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesInputMode:(int64_t)a3;
- (void)setVoiceOverTouchBrailleGesturesLearnsDotPositions:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesSingleHandStyle:(int64_t)a3;
- (void)setVoiceOverTouchBrailleGesturesSoundOption:(int64_t)a3;
- (void)setVoiceOverTouchBrailleGesturesUsesHapticFeedback:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:(BOOL)a3;
- (void)setVoiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback:(BOOL)a3;
- (void)setVoiceOverTouchBrailleHIMSUsesDot7ForCommand:(BOOL)a3;
- (void)setVoiceOverTouchBraillePanningAutoTurnsReadingContent:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIBrailleNotesSortDirection:(int64_t)a3;
- (void)setVoiceOverTouchBrailleUIBrailleNotesSortType:(int64_t)a3;
- (void)setVoiceOverTouchBrailleUICalculatorUsesUEBMath:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIIsBRFReflowEnabled:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUILiveCaptionsSource:(int64_t)a3;
- (void)setVoiceOverTouchBrailleUIMigrationMessageAnnounced:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIReadListItemsEnabled:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIShouldReopenViewsWhenRestart:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIShowsBackButton:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUITypingSpeechFeedbackEnabled:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUIVisualsEnabled:(BOOL)a3;
- (void)setVoiceOverTouchBrailleUsesUnderlineCursor:(BOOL)a3;
- (void)setVoiceOverTouchBrailleZoomOutNumCellsPerElement:(int64_t)a3;
- (void)setVoiceOverTouchKeyboardBrailleUIEnabled:(BOOL)a3;
- (void)setVoiceOverTouchPerkinsChordKeyboardInputEnabled:(BOOL)a3;
- (void)setVoiceOverTouchPerkinsKeyboardInputEnabled:(BOOL)a3;
- (void)setVoiceOverUseDigitalCrownNavigation:(BOOL)a3;
- (void)setVoiceOverUseSiriSounds:(BOOL)a3;
- (void)setVoiceOverUseTVToggleStyleNavigation:(BOOL)a3;
- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 completionHandler:(id)a5;
- (void)setWithVoiceId:(id)a3 forLanguage:(id)a4 rate:(float)a5 volume:(float)a6 pitch:(float)a7;
- (void)speechVoiceIdentifierForLanguage:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation AXSettings.VoiceOver

- (NSDictionary)voiceOverDefaultVoiceSelections
{
  v2 = self;
  sub_18B236D84();

  sub_18B2C9424();
  v3 = sub_18B2C9804();

  return v3;
}

- (void)setVoiceOverDefaultVoiceSelections:(id)a3
{
  sub_18B2C9424();
  v4 = sub_18B2C9814();
  v5 = self;
  sub_18B237528(v4);
}

- (BOOL)voiceOverLargeCursorEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.largeCursorEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverLargeCursorEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.largeCursorEnabled.setter(a3);
}

- (BOOL)voiceOverMagicTapDefaultToMediaPlayback
{
  v2 = self;
  v3 = AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.getter();

  return v3 & 1;
}

- (void)setVoiceOverMagicTapDefaultToMediaPlayback:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.setter(a3);
}

- (int64_t)voiceOverContentDescriptionLevel
{
  v2 = self;
  v3 = AXSettings.VoiceOver.contentDescriptionLevel.getter();

  return v3;
}

- (void)setVoiceOverContentDescriptionLevel:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.contentDescriptionLevel.setter(a3);
}

- (BOOL)voiceOverUseDigitalCrownNavigation
{
  v2 = self;
  v3 = AXSettings.VoiceOver.useDigitalCrownNavigation.getter();

  return v3 & 1;
}

- (void)setVoiceOverUseDigitalCrownNavigation:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.useDigitalCrownNavigation.setter(a3);
}

- (BOOL)voiceOverImageCaptionsEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.imageCaptionsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverImageCaptionsEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.imageCaptionsEnabled.setter(a3);
}

- (BOOL)voiceOverUseTVToggleStyleNavigation
{
  v2 = self;
  v3 = AXSettings.VoiceOver.useTVToggleStyleNavigation.getter();

  return v3 & 1;
}

- (void)setVoiceOverUseTVToggleStyleNavigation:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.useTVToggleStyleNavigation.setter(a3);
}

- (double)voiceOverContinuousPathKeyboardStartTimeout
{
  v2 = self;
  started = AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.getter();

  return started;
}

- (void)setVoiceOverContinuousPathKeyboardStartTimeout:(double)a3
{
  v4 = self;
  AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.setter(a3);
}

- (BOOL)voiceOverHearingAidRoutingEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.hearingAidRoutingEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverHearingAidRoutingEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.hearingAidRoutingEnabled.setter(a3);
}

- (int64_t)voiceOverListAnnotation
{
  v2 = self;
  v3 = AXSettings.VoiceOver.listAnnotation.getter();

  return v3;
}

- (void)setVoiceOverListAnnotation:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.listAnnotation.setter(a3);
}

- (BOOL)voiceOverUseSiriSounds
{
  v2 = self;
  v3 = AXSettings.VoiceOver.useSiriSounds.getter();

  return v3 & 1;
}

- (void)setVoiceOverUseSiriSounds:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.useSiriSounds.setter(a3);
}

- (int64_t)voiceOverCursorOutputStyle
{
  v2 = self;
  v3 = AXSettings.VoiceOver.cursorOutputStyle.getter();

  return v3;
}

- (void)setVoiceOverCursorOutputStyle:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.cursorOutputStyle.setter(a3);
}

- (BOOL)voiceOverTouchBraillePanningAutoTurnsReadingContent
{
  v2 = self;
  v3 = AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBraillePanningAutoTurnsReadingContent:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.setter(a3);
}

- (int64_t)voiceOverTouchBrailleDisplayOutputMode
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleDisplayOutputMode.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleDisplayOutputMode:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleDisplayOutputMode.setter(a3);
}

- (int64_t)voiceOverTouchBrailleDisplayInputMode
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleDisplayInputMode.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleDisplayInputMode:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleDisplayInputMode.setter(a3);
}

- (int64_t)voiceOverTouchBrailleGesturesInputMode
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesInputMode.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleGesturesInputMode:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesInputMode.setter(a3);
}

- (BOOL)voiceOverTouchBrailleDisplaySyncInputOutputTables
{
  v2 = self;
  v3 = AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleDisplaySyncInputOutputTables:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesturesActivationGestureEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesActivationGestureEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.setter(a3);
}

- (int64_t)voiceOverTouchBrailleGesturesSoundOption
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesSoundOption.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleGesturesSoundOption:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesSoundOption.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesturesUsesHapticFeedback
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesUsesHapticFeedback:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesturesUsesTypingSoundFeedback
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesturesDisplaysEnteredText
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesDisplaysEnteredText:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesturesLearnsDotPositions
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesLearnsDotPositions:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.setter(a3);
}

- (BOOL)voiceOverTouchBrailleGesturesAutoActivateOnTextFields
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.setter(a3);
}

- (int64_t)voiceOverTouchBrailleGesturesSingleHandStyle
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleGesturesSingleHandStyle.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleGesturesSingleHandStyle:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleGesturesSingleHandStyle.setter(a3);
}

- (BOOL)voiceOverTouchPerkinsKeyboardInputEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.perkinsKeyboardInputEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchPerkinsKeyboardInputEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.perkinsKeyboardInputEnabled.setter(a3);
}

- (BOOL)voiceOverTouchPerkinsChordKeyboardInputEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchPerkinsChordKeyboardInputEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.setter(a3);
}

- (BOOL)voiceOverTouchBrailleHIMSUsesDot7ForCommand
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleHIMSUsesDot7ForCommand:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.setter(a3);
}

- (BOOL)voiceOverTouchKeyboardBrailleUIEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.keyboardBrailleUIEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchKeyboardBrailleUIEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.keyboardBrailleUIEnabled.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIShouldReopenViewsWhenRestart
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIShouldReopenViewsWhenRestart:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIReadListItemsEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIReadListItemsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIReadListItemsEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIReadListItemsEnabled.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIVisualsEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIVisualsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIVisualsEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIVisualsEnabled.setter(a3);
}

- (int64_t)voiceOverTouchBrailleUIBrailleNotesSortType
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIBrailleNotesSortType.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleUIBrailleNotesSortType:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIBrailleNotesSortType.setter(a3);
}

- (int64_t)voiceOverTouchBrailleUIBrailleNotesSortDirection
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleUIBrailleNotesSortDirection:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUITypingSpeechFeedbackEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUITypingSpeechFeedbackEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIIsBRFReflowEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIBRFReflowEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIIsBRFReflowEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIBRFReflowEnabled.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUICalculatorUsesUEBMath
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUICalculatorUsesUEBMath:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.setter(a3);
}

- (int64_t)voiceOverTouchBrailleUILiveCaptionsSource
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUILiveCaptionsSource.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleUILiveCaptionsSource:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUILiveCaptionsSource.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIMigrationMessageAnnounced
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIMigrationMessageAnnounced:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUIShowsBackButton
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUIShowsBackButton.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIShowsBackButton:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUIShowsBackButton.setter(a3);
}

- (int64_t)voiceOverTouchBrailleZoomOutNumCellsPerElement
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleZoomOutNumCellsPerElement:(int64_t)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.setter(a3);
}

- (BOOL)voiceOverTouchBrailleUsesUnderlineCursor
{
  v2 = self;
  v3 = AXSettings.VoiceOver.brailleUsesUnderlineCursor.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUsesUnderlineCursor:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.brailleUsesUnderlineCursor.setter(a3);
}

- (NSUUID)voiceOverDefaultPunctuationGroup
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  AXSettings.VoiceOver.defaultPunctuationGroup.getter();

  v7 = sub_18B2C8FD4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_18B2C8F94();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setVoiceOverDefaultPunctuationGroup:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_18B2C8FB4();
    v8 = sub_18B2C8FD4();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_18B2C8FD4();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  AXSettings.VoiceOver.defaultPunctuationGroup.setter(v7);
}

- (BOOL)voiceOverLanguageDetectionEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.languageDetectionEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverLanguageDetectionEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.languageDetectionEnabled.setter(a3);
}

- (BOOL)voiceOverPitchChangeEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.pitchChangeEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverPitchChangeEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.pitchChangeEnabled.setter(a3);
}

- (BOOL)voiceOverSpeakUpEnabled
{
  v2 = self;
  v3 = AXSettings.VoiceOver.speakUpEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverSpeakUpEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.VoiceOver.speakUpEnabled.setter(a3);
}

- (float)voiceOverSpeakingRate
{
  v2 = self;
  v3 = sub_18B255C68();

  return v3;
}

- (void)setVoiceOverSpeakingRate:(float)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = self;
  sub_18B2C95A4();
}

- (void)speechVoiceIdentifierForLanguage:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18B2C9A74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18B2F9F88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18B2F9F90;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_18B29CF64(0, 0, v9, &unk_18B2F9F98, v14);
}

- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_18B2C9A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B2F9F68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18B2F9F70;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2F9540, v16);
}

- (void)setWithVoiceId:(id)a3 forLanguage:(id)a4 rate:(float)a5 volume:(float)a6 pitch:(float)a7
{
  if (a3)
  {
    v11 = sub_18B2C9894();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_18B2C9894();
  v16 = v15;
  v17 = self;
  v18.value._countAndFlagsBits = v11;
  v18.value._object = v13;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  AXSettings.VoiceOver.set(voiceId:forLanguage:rate:volume:pitch:)(v18, v19, a5, a6, a7);
}

@end