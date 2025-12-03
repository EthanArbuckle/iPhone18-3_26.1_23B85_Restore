@interface AECAssessmentConfiguration
- (AEAssessmentIndividualConfiguration)mainIndividualConfiguration;
- (BOOL)_allowsContentCapture;
- (BOOL)_allowsNetworkAccess;
- (BOOL)allowsAccessibilityKeyboard;
- (BOOL)allowsAccessibilityLiveCaptions;
- (BOOL)allowsAccessibilityReader;
- (BOOL)allowsAccessibilitySpeech;
- (BOOL)allowsAccessibilityTypingFeedback;
- (BOOL)allowsActivityContinuation;
- (BOOL)allowsAutoCorrection;
- (BOOL)allowsContinuousPathKeyboard;
- (BOOL)allowsDictation;
- (BOOL)allowsKeyboardMathSolving;
- (BOOL)allowsKeyboardShortcuts;
- (BOOL)allowsMathPaperSolving;
- (BOOL)allowsPasswordAutoFill;
- (BOOL)allowsPredictiveKeyboard;
- (BOOL)allowsScreenshots;
- (BOOL)allowsSmartPunctuation;
- (BOOL)allowsSpellCheck;
- (NSDictionary)configurationsByApplicationDescriptor;
- (void)setAllowsAccessibilityKeyboard:(BOOL)keyboard;
- (void)setAllowsAccessibilityLiveCaptions:(BOOL)captions;
- (void)setAllowsAccessibilityReader:(BOOL)reader;
- (void)setAllowsAccessibilitySpeech:(BOOL)speech;
- (void)setAllowsAccessibilityTypingFeedback:(BOOL)feedback;
- (void)setAllowsActivityContinuation:(BOOL)continuation;
- (void)setAllowsAutoCorrection:(BOOL)correction;
- (void)setAllowsContinuousPathKeyboard:(BOOL)keyboard;
- (void)setAllowsDictation:(BOOL)dictation;
- (void)setAllowsKeyboardMathSolving:(BOOL)solving;
- (void)setAllowsKeyboardShortcuts:(BOOL)shortcuts;
- (void)setAllowsMathPaperSolving:(BOOL)solving;
- (void)setAllowsPasswordAutoFill:(BOOL)fill;
- (void)setAllowsPredictiveKeyboard:(BOOL)keyboard;
- (void)setAllowsScreenshots:(BOOL)screenshots;
- (void)setAllowsSmartPunctuation:(BOOL)punctuation;
- (void)setAllowsSpellCheck:(BOOL)check;
- (void)setConfigurationsByApplicationDescriptor:(id)descriptor;
- (void)setMainIndividualConfiguration:(id)configuration;
- (void)set_allowsContentCapture:(BOOL)capture;
- (void)set_allowsNetworkAccess:(BOOL)access;
@end

@implementation AECAssessmentConfiguration

- (AEAssessmentIndividualConfiguration)mainIndividualConfiguration
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMainIndividualConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = configuration;
  configurationCopy = configuration;
}

- (NSDictionary)configurationsByApplicationDescriptor
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_236DFE044(0, &qword_27DE856B8, 0x277CE46E0);
  sub_236DFE044(0, &qword_27DE856C0, 0x277CE46E8);
  sub_236E14C5C();

  v5 = sub_236E16070();

  return v5;
}

- (void)setConfigurationsByApplicationDescriptor:(id)descriptor
{
  sub_236DFE044(0, &qword_27DE856B8, 0x277CE46E0);
  sub_236DFE044(0, &qword_27DE856C0, 0x277CE46E8);
  sub_236E14C5C();
  v4 = sub_236E16080();
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_configurationsByApplicationDescriptor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)allowsAutoCorrection
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAutoCorrection:(BOOL)correction
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  *(self + v5) = correction;
}

- (BOOL)allowsSmartPunctuation
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsSmartPunctuation:(BOOL)punctuation
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  *(self + v5) = punctuation;
}

- (BOOL)allowsSpellCheck
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsSpellCheck:(BOOL)check
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  *(self + v5) = check;
}

- (BOOL)allowsPredictiveKeyboard
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPredictiveKeyboard:(BOOL)keyboard
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  *(self + v5) = keyboard;
}

- (BOOL)allowsKeyboardShortcuts
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsKeyboardShortcuts:(BOOL)shortcuts
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  *(self + v5) = shortcuts;
}

- (BOOL)allowsActivityContinuation
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsActivityContinuation:(BOOL)continuation
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  *(self + v5) = continuation;
}

- (BOOL)allowsDictation
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsDictation:(BOOL)dictation
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  *(self + v5) = dictation;
}

- (BOOL)allowsAccessibilityKeyboard
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityKeyboard:(BOOL)keyboard
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  swift_beginAccess();
  *(self + v5) = keyboard;
}

- (BOOL)allowsAccessibilityLiveCaptions
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityLiveCaptions:(BOOL)captions
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  *(self + v5) = captions;
}

- (BOOL)allowsAccessibilityReader
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityReader:(BOOL)reader
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  *(self + v5) = reader;
}

- (BOOL)allowsAccessibilitySpeech
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilitySpeech:(BOOL)speech
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  *(self + v5) = speech;
}

- (BOOL)allowsAccessibilityTypingFeedback
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityTypingFeedback:(BOOL)feedback
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  *(self + v5) = feedback;
}

- (BOOL)allowsPasswordAutoFill
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPasswordAutoFill:(BOOL)fill
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  *(self + v5) = fill;
}

- (BOOL)allowsContinuousPathKeyboard
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsContinuousPathKeyboard:(BOOL)keyboard
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  *(self + v5) = keyboard;
}

- (BOOL)allowsKeyboardMathSolving
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsKeyboardMathSolving:(BOOL)solving
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  swift_beginAccess();
  *(self + v5) = solving;
}

- (BOOL)allowsMathPaperSolving
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsMathPaperSolving:(BOOL)solving
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  swift_beginAccess();
  *(self + v5) = solving;
}

- (BOOL)allowsScreenshots
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsScreenshots:(BOOL)screenshots
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  swift_beginAccess();
  *(self + v5) = screenshots;
}

- (BOOL)_allowsNetworkAccess
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_allowsNetworkAccess:(BOOL)access
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  *(self + v5) = access;
}

- (BOOL)_allowsContentCapture
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_allowsContentCapture:(BOOL)capture
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  swift_beginAccess();
  *(self + v5) = capture;
}

@end