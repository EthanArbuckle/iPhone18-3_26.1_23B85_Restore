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
- (void)setVoiceOverContentDescriptionLevel:(int64_t)level;
- (void)setVoiceOverContinuousPathKeyboardStartTimeout:(double)timeout;
- (void)setVoiceOverCursorOutputStyle:(int64_t)style;
- (void)setVoiceOverDefaultPunctuationGroup:(id)group;
- (void)setVoiceOverDefaultVoiceSelections:(id)selections;
- (void)setVoiceOverHearingAidRoutingEnabled:(BOOL)enabled;
- (void)setVoiceOverImageCaptionsEnabled:(BOOL)enabled;
- (void)setVoiceOverLanguageDetectionEnabled:(BOOL)enabled;
- (void)setVoiceOverLargeCursorEnabled:(BOOL)enabled;
- (void)setVoiceOverListAnnotation:(int64_t)annotation;
- (void)setVoiceOverMagicTapDefaultToMediaPlayback:(BOOL)playback;
- (void)setVoiceOverPitchChangeEnabled:(BOOL)enabled;
- (void)setVoiceOverSpeakUpEnabled:(BOOL)enabled;
- (void)setVoiceOverSpeakingRate:(float)rate;
- (void)setVoiceOverTouchBrailleDisplayInputMode:(int64_t)mode;
- (void)setVoiceOverTouchBrailleDisplayOutputMode:(int64_t)mode;
- (void)setVoiceOverTouchBrailleDisplaySyncInputOutputTables:(BOOL)tables;
- (void)setVoiceOverTouchBrailleGesturesActivationGestureEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:(BOOL)fields;
- (void)setVoiceOverTouchBrailleGesturesDisplaysEnteredText:(BOOL)text;
- (void)setVoiceOverTouchBrailleGesturesInputMode:(int64_t)mode;
- (void)setVoiceOverTouchBrailleGesturesLearnsDotPositions:(BOOL)positions;
- (void)setVoiceOverTouchBrailleGesturesSingleHandStyle:(int64_t)style;
- (void)setVoiceOverTouchBrailleGesturesSoundOption:(int64_t)option;
- (void)setVoiceOverTouchBrailleGesturesUsesHapticFeedback:(BOOL)feedback;
- (void)setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:(BOOL)feedback;
- (void)setVoiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback:(BOOL)feedback;
- (void)setVoiceOverTouchBrailleHIMSUsesDot7ForCommand:(BOOL)command;
- (void)setVoiceOverTouchBraillePanningAutoTurnsReadingContent:(BOOL)content;
- (void)setVoiceOverTouchBrailleUIBrailleNotesSortDirection:(int64_t)direction;
- (void)setVoiceOverTouchBrailleUIBrailleNotesSortType:(int64_t)type;
- (void)setVoiceOverTouchBrailleUICalculatorUsesUEBMath:(BOOL)math;
- (void)setVoiceOverTouchBrailleUIIsBRFReflowEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchBrailleUILiveCaptionsSource:(int64_t)source;
- (void)setVoiceOverTouchBrailleUIMigrationMessageAnnounced:(BOOL)announced;
- (void)setVoiceOverTouchBrailleUIReadListItemsEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchBrailleUIShouldReopenViewsWhenRestart:(BOOL)restart;
- (void)setVoiceOverTouchBrailleUIShowsBackButton:(BOOL)button;
- (void)setVoiceOverTouchBrailleUITypingSpeechFeedbackEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchBrailleUIVisualsEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchBrailleUsesUnderlineCursor:(BOOL)cursor;
- (void)setVoiceOverTouchBrailleZoomOutNumCellsPerElement:(int64_t)element;
- (void)setVoiceOverTouchKeyboardBrailleUIEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchPerkinsChordKeyboardInputEnabled:(BOOL)enabled;
- (void)setVoiceOverTouchPerkinsKeyboardInputEnabled:(BOOL)enabled;
- (void)setVoiceOverUseDigitalCrownNavigation:(BOOL)navigation;
- (void)setVoiceOverUseSiriSounds:(BOOL)sounds;
- (void)setVoiceOverUseTVToggleStyleNavigation:(BOOL)navigation;
- (void)setWithVoiceId:(NSString *)id forLanguage:(NSString *)language completionHandler:(id)handler;
- (void)setWithVoiceId:(id)id forLanguage:(id)language rate:(float)rate volume:(float)volume pitch:(float)pitch;
- (void)speechVoiceIdentifierForLanguage:(NSString *)language completionHandler:(id)handler;
@end

@implementation AXSettings.VoiceOver

- (NSDictionary)voiceOverDefaultVoiceSelections
{
  selfCopy = self;
  sub_18B236D84();

  sub_18B2C9424();
  v3 = sub_18B2C9804();

  return v3;
}

- (void)setVoiceOverDefaultVoiceSelections:(id)selections
{
  sub_18B2C9424();
  v4 = sub_18B2C9814();
  selfCopy = self;
  sub_18B237528(v4);
}

- (BOOL)voiceOverLargeCursorEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.largeCursorEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverLargeCursorEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.largeCursorEnabled.setter(enabled);
}

- (BOOL)voiceOverMagicTapDefaultToMediaPlayback
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.getter();

  return v3 & 1;
}

- (void)setVoiceOverMagicTapDefaultToMediaPlayback:(BOOL)playback
{
  selfCopy = self;
  AXSettings.VoiceOver.magicTapDefaultToMediaPlayback.setter(playback);
}

- (int64_t)voiceOverContentDescriptionLevel
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.contentDescriptionLevel.getter();

  return v3;
}

- (void)setVoiceOverContentDescriptionLevel:(int64_t)level
{
  selfCopy = self;
  AXSettings.VoiceOver.contentDescriptionLevel.setter(level);
}

- (BOOL)voiceOverUseDigitalCrownNavigation
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.useDigitalCrownNavigation.getter();

  return v3 & 1;
}

- (void)setVoiceOverUseDigitalCrownNavigation:(BOOL)navigation
{
  selfCopy = self;
  AXSettings.VoiceOver.useDigitalCrownNavigation.setter(navigation);
}

- (BOOL)voiceOverImageCaptionsEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.imageCaptionsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverImageCaptionsEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.imageCaptionsEnabled.setter(enabled);
}

- (BOOL)voiceOverUseTVToggleStyleNavigation
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.useTVToggleStyleNavigation.getter();

  return v3 & 1;
}

- (void)setVoiceOverUseTVToggleStyleNavigation:(BOOL)navigation
{
  selfCopy = self;
  AXSettings.VoiceOver.useTVToggleStyleNavigation.setter(navigation);
}

- (double)voiceOverContinuousPathKeyboardStartTimeout
{
  selfCopy = self;
  started = AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.getter();

  return started;
}

- (void)setVoiceOverContinuousPathKeyboardStartTimeout:(double)timeout
{
  selfCopy = self;
  AXSettings.VoiceOver.continuousPathKeyboardStartTimeout.setter(timeout);
}

- (BOOL)voiceOverHearingAidRoutingEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.hearingAidRoutingEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverHearingAidRoutingEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.hearingAidRoutingEnabled.setter(enabled);
}

- (int64_t)voiceOverListAnnotation
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.listAnnotation.getter();

  return v3;
}

- (void)setVoiceOverListAnnotation:(int64_t)annotation
{
  selfCopy = self;
  AXSettings.VoiceOver.listAnnotation.setter(annotation);
}

- (BOOL)voiceOverUseSiriSounds
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.useSiriSounds.getter();

  return v3 & 1;
}

- (void)setVoiceOverUseSiriSounds:(BOOL)sounds
{
  selfCopy = self;
  AXSettings.VoiceOver.useSiriSounds.setter(sounds);
}

- (int64_t)voiceOverCursorOutputStyle
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.cursorOutputStyle.getter();

  return v3;
}

- (void)setVoiceOverCursorOutputStyle:(int64_t)style
{
  selfCopy = self;
  AXSettings.VoiceOver.cursorOutputStyle.setter(style);
}

- (BOOL)voiceOverTouchBraillePanningAutoTurnsReadingContent
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBraillePanningAutoTurnsReadingContent:(BOOL)content
{
  selfCopy = self;
  AXSettings.VoiceOver.braillePanningAutoTurnsReadingContent.setter(content);
}

- (int64_t)voiceOverTouchBrailleDisplayOutputMode
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleDisplayOutputMode.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleDisplayOutputMode:(int64_t)mode
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleDisplayOutputMode.setter(mode);
}

- (int64_t)voiceOverTouchBrailleDisplayInputMode
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleDisplayInputMode.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleDisplayInputMode:(int64_t)mode
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleDisplayInputMode.setter(mode);
}

- (int64_t)voiceOverTouchBrailleGesturesInputMode
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesInputMode.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleGesturesInputMode:(int64_t)mode
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesInputMode.setter(mode);
}

- (BOOL)voiceOverTouchBrailleDisplaySyncInputOutputTables
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleDisplaySyncInputOutputTables:(BOOL)tables
{
  selfCopy = self;
  AXSettings.VoiceOver._objBrailleDisplaySyncInputOutputTables.setter(tables);
}

- (BOOL)voiceOverTouchBrailleGesturesActivationGestureEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesActivationGestureEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesActivationGestureEnabled.setter(enabled);
}

- (int64_t)voiceOverTouchBrailleGesturesSoundOption
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesSoundOption.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleGesturesSoundOption:(int64_t)option
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesSoundOption.setter(option);
}

- (BOOL)voiceOverTouchBrailleGesturesUsesHapticFeedback
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesUsesHapticFeedback:(BOOL)feedback
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesUsesHapticFeedback.setter(feedback);
}

- (BOOL)voiceOverTouchBrailleGesturesUsesTypingSoundFeedback
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:(BOOL)feedback
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesUsesTypingSoundFeedback.setter(feedback);
}

- (BOOL)voiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesutresSingleHandUsesDotNumbersFeedback:(BOOL)feedback
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesSingleHandUsesDotNumbersFeedback.setter(feedback);
}

- (BOOL)voiceOverTouchBrailleGesturesDisplaysEnteredText
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesDisplaysEnteredText:(BOOL)text
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesDisplayEnteredText.setter(text);
}

- (BOOL)voiceOverTouchBrailleGesturesLearnsDotPositions
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesLearnsDotPositions:(BOOL)positions
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesLearnsDotPositions.setter(positions);
}

- (BOOL)voiceOverTouchBrailleGesturesAutoActivateOnTextFields
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:(BOOL)fields
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesAutoActivateOnTextFields.setter(fields);
}

- (int64_t)voiceOverTouchBrailleGesturesSingleHandStyle
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleGesturesSingleHandStyle.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleGesturesSingleHandStyle:(int64_t)style
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleGesturesSingleHandStyle.setter(style);
}

- (BOOL)voiceOverTouchPerkinsKeyboardInputEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.perkinsKeyboardInputEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchPerkinsKeyboardInputEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.perkinsKeyboardInputEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchPerkinsChordKeyboardInputEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchPerkinsChordKeyboardInputEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.perkinsChordKeyboardInputEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchBrailleHIMSUsesDot7ForCommand
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleHIMSUsesDot7ForCommand:(BOOL)command
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleHIMSUsesDot7ForCommand.setter(command);
}

- (BOOL)voiceOverTouchKeyboardBrailleUIEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.keyboardBrailleUIEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchKeyboardBrailleUIEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.keyboardBrailleUIEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchBrailleUIShouldReopenViewsWhenRestart
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIShouldReopenViewsWhenRestart:(BOOL)restart
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIShouldReopenViewsWhenRestart.setter(restart);
}

- (BOOL)voiceOverTouchBrailleUIReadListItemsEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIReadListItemsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIReadListItemsEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIReadListItemsEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchBrailleUIVisualsEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIVisualsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIVisualsEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIVisualsEnabled.setter(enabled);
}

- (int64_t)voiceOverTouchBrailleUIBrailleNotesSortType
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIBrailleNotesSortType.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleUIBrailleNotesSortType:(int64_t)type
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIBrailleNotesSortType.setter(type);
}

- (int64_t)voiceOverTouchBrailleUIBrailleNotesSortDirection
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleUIBrailleNotesSortDirection:(int64_t)direction
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIBrailleNotesSortDirection.setter(direction);
}

- (BOOL)voiceOverTouchBrailleUITypingSpeechFeedbackEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUITypingSpeechFeedbackEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUITypingSpeechFeedbackEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchBrailleUIIsBRFReflowEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIBRFReflowEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIIsBRFReflowEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIBRFReflowEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIBRFStripPageIndicatorsEnabled.setter(enabled);
}

- (BOOL)voiceOverTouchBrailleUICalculatorUsesUEBMath
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUICalculatorUsesUEBMath:(BOOL)math
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUICalculatorUsesUEBMath.setter(math);
}

- (int64_t)voiceOverTouchBrailleUILiveCaptionsSource
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUILiveCaptionsSource.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleUILiveCaptionsSource:(int64_t)source
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUILiveCaptionsSource.setter(source);
}

- (BOOL)voiceOverTouchBrailleUIMigrationMessageAnnounced
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIMigrationMessageAnnounced:(BOOL)announced
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIMigrationMessageAnnounced.setter(announced);
}

- (BOOL)voiceOverTouchBrailleUIShowsBackButton
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUIShowsBackButton.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUIShowsBackButton:(BOOL)button
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUIShowsBackButton.setter(button);
}

- (int64_t)voiceOverTouchBrailleZoomOutNumCellsPerElement
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.getter();

  return v3;
}

- (void)setVoiceOverTouchBrailleZoomOutNumCellsPerElement:(int64_t)element
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleZoomOutNumCellsPerElement.setter(element);
}

- (BOOL)voiceOverTouchBrailleUsesUnderlineCursor
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.brailleUsesUnderlineCursor.getter();

  return v3 & 1;
}

- (void)setVoiceOverTouchBrailleUsesUnderlineCursor:(BOOL)cursor
{
  selfCopy = self;
  AXSettings.VoiceOver.brailleUsesUnderlineCursor.setter(cursor);
}

- (NSUUID)voiceOverDefaultPunctuationGroup
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
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

- (void)setVoiceOverDefaultPunctuationGroup:(id)group
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B74F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (group)
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

  selfCopy = self;
  AXSettings.VoiceOver.defaultPunctuationGroup.setter(v7);
}

- (BOOL)voiceOverLanguageDetectionEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.languageDetectionEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverLanguageDetectionEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.languageDetectionEnabled.setter(enabled);
}

- (BOOL)voiceOverPitchChangeEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.pitchChangeEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverPitchChangeEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.pitchChangeEnabled.setter(enabled);
}

- (BOOL)voiceOverSpeakUpEnabled
{
  selfCopy = self;
  v3 = AXSettings.VoiceOver.speakUpEnabled.getter();

  return v3 & 1;
}

- (void)setVoiceOverSpeakUpEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.VoiceOver.speakUpEnabled.setter(enabled);
}

- (float)voiceOverSpeakingRate
{
  selfCopy = self;
  v3 = sub_18B255C68();

  return v3;
}

- (void)setVoiceOverSpeakingRate:(float)rate
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = rate;
  selfCopy = self;
  sub_18B2C95A4();
}

- (void)speechVoiceIdentifierForLanguage:(NSString *)language completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = language;
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
  languageCopy = language;
  selfCopy = self;
  sub_18B29CF64(0, 0, v9, &unk_18B2F9F98, v14);
}

- (void)setWithVoiceId:(NSString *)id forLanguage:(NSString *)language completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = id;
  v13[3] = language;
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
  idCopy = id;
  languageCopy = language;
  selfCopy = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2F9540, v16);
}

- (void)setWithVoiceId:(id)id forLanguage:(id)language rate:(float)rate volume:(float)volume pitch:(float)pitch
{
  if (id)
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
  selfCopy = self;
  v18.value._countAndFlagsBits = v11;
  v18.value._object = v13;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  AXSettings.VoiceOver.set(voiceId:forLanguage:rate:volume:pitch:)(v18, v19, rate, volume, pitch);
}

@end