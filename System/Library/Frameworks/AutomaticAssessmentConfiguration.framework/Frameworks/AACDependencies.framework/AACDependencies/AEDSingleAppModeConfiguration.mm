@interface AEDSingleAppModeConfiguration
- (MCSingleAppModeConfiguration)MCSingleAppModeConfigurationRepresentation;
@end

@implementation AEDSingleAppModeConfiguration

- (MCSingleAppModeConfiguration)MCSingleAppModeConfigurationRepresentation
{
  v3 = objc_opt_new();
  [v3 setAllowAutoCorrection:{-[AEDSingleAppModeConfiguration allowsAutoCorrection](self, "allowsAutoCorrection")}];
  [v3 setAllowSmartPunctuation:{-[AEDSingleAppModeConfiguration allowsSmartPunctuation](self, "allowsSmartPunctuation")}];
  [v3 setAllowSpellCheck:{-[AEDSingleAppModeConfiguration allowsSpellCheck](self, "allowsSpellCheck")}];
  [v3 setAllowPredictiveKeyboard:{-[AEDSingleAppModeConfiguration allowsPredictiveKeyboard](self, "allowsPredictiveKeyboard")}];
  [v3 setAllowKeyboardShortcuts:{-[AEDSingleAppModeConfiguration allowsKeyboardShortcuts](self, "allowsKeyboardShortcuts")}];
  [v3 setAllowActivityContinuation:{-[AEDSingleAppModeConfiguration allowsActivityContinuation](self, "allowsActivityContinuation")}];
  [v3 setAllowDictation:{-[AEDSingleAppModeConfiguration allowsDictation](self, "allowsDictation")}];
  [v3 setAllowAccessibilityLiveCaptions:{-[AEDSingleAppModeConfiguration allowsAccessibilityLiveCaptions](self, "allowsAccessibilityLiveCaptions")}];
  [v3 setAllowAccessibilityReader:{-[AEDSingleAppModeConfiguration allowsAccessibilityReader](self, "allowsAccessibilityReader")}];
  [v3 setAllowAccessibilitySpeech:{-[AEDSingleAppModeConfiguration allowsAccessibilitySpeech](self, "allowsAccessibilitySpeech")}];
  [v3 setAllowAccessibilityTypingFeedback:{-[AEDSingleAppModeConfiguration allowsAccessibilityTypingFeedback](self, "allowsAccessibilityTypingFeedback")}];
  [v3 setAllowPasswordAutoFill:{-[AEDSingleAppModeConfiguration allowsPasswordAutoFill](self, "allowsPasswordAutoFill")}];
  [v3 setAllowContinuousPathKeyboard:{-[AEDSingleAppModeConfiguration allowsContinuousPathKeyboard](self, "allowsContinuousPathKeyboard")}];
  [v3 setAllowAccessibilityReaderSuggestions:0];
  [v3 setAllowQuickNote:0];
  [v3 setAllowTranslationLookup:0];
  [v3 setAllowScreenShot:0];
  [v3 setAllowDefinitionLookup:0];

  return v3;
}

@end