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
- (void)setAllowsAccessibilityKeyboard:(BOOL)a3;
- (void)setAllowsAccessibilityLiveCaptions:(BOOL)a3;
- (void)setAllowsAccessibilityReader:(BOOL)a3;
- (void)setAllowsAccessibilitySpeech:(BOOL)a3;
- (void)setAllowsAccessibilityTypingFeedback:(BOOL)a3;
- (void)setAllowsActivityContinuation:(BOOL)a3;
- (void)setAllowsAutoCorrection:(BOOL)a3;
- (void)setAllowsContinuousPathKeyboard:(BOOL)a3;
- (void)setAllowsDictation:(BOOL)a3;
- (void)setAllowsKeyboardMathSolving:(BOOL)a3;
- (void)setAllowsKeyboardShortcuts:(BOOL)a3;
- (void)setAllowsMathPaperSolving:(BOOL)a3;
- (void)setAllowsPasswordAutoFill:(BOOL)a3;
- (void)setAllowsPredictiveKeyboard:(BOOL)a3;
- (void)setAllowsScreenshots:(BOOL)a3;
- (void)setAllowsSmartPunctuation:(BOOL)a3;
- (void)setAllowsSpellCheck:(BOOL)a3;
- (void)setConfigurationsByApplicationDescriptor:(id)a3;
- (void)setMainIndividualConfiguration:(id)a3;
- (void)set_allowsContentCapture:(BOOL)a3;
- (void)set_allowsNetworkAccess:(BOOL)a3;
@end

@implementation AECAssessmentConfiguration

- (AEAssessmentIndividualConfiguration)mainIndividualConfiguration
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMainIndividualConfiguration:(id)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_mainIndividualConfiguration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
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

- (void)setConfigurationsByApplicationDescriptor:(id)a3
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

- (void)setAllowsAutoCorrection:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAutoCorrection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsSmartPunctuation
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsSmartPunctuation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSmartPunctuation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsSpellCheck
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsSpellCheck:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsSpellCheck;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsPredictiveKeyboard
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPredictiveKeyboard:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPredictiveKeyboard;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsKeyboardShortcuts
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsKeyboardShortcuts:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardShortcuts;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsActivityContinuation
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsActivityContinuation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsActivityContinuation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsDictation
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsDictation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsDictation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAccessibilityKeyboard
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityKeyboard:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityKeyboard;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAccessibilityLiveCaptions
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityLiveCaptions:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityLiveCaptions;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAccessibilityReader
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityReader:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityReader;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAccessibilitySpeech
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilitySpeech:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilitySpeech;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsAccessibilityTypingFeedback
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsAccessibilityTypingFeedback:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsAccessibilityTypingFeedback;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsPasswordAutoFill
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsPasswordAutoFill:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsPasswordAutoFill;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsContinuousPathKeyboard
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsContinuousPathKeyboard:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsContinuousPathKeyboard;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsKeyboardMathSolving
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsKeyboardMathSolving:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsKeyboardMathSolving;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsMathPaperSolving
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsMathPaperSolving:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsMathPaperSolving;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowsScreenshots
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowsScreenshots:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration_allowsScreenshots;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)_allowsNetworkAccess
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_allowsNetworkAccess:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsNetworkAccess;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)_allowsContentCapture
{
  v3 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_allowsContentCapture:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9AACClient26AECAssessmentConfiguration__allowsContentCapture;
  swift_beginAccess();
  *(self + v5) = a3;
}

@end