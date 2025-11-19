@interface AECAssessmentConfigurationWrapper
+ (id)wrapperFromConfiguration:(id)a3;
- (AEAssessmentIndividualConfiguration)mainIndividualConfiguration;
- (AECAssessmentConfigurationWrapper)init;
- (NSMutableDictionary)configurationsByApplicationDescriptor;
- (id)makeConfiguration;
- (void)setConfigurationsByApplicationDescriptor:(id)a3;
- (void)setMainIndividualConfiguration:(id)a3;
@end

@implementation AECAssessmentConfigurationWrapper

- (AECAssessmentConfigurationWrapper)init
{
  v8.receiver = self;
  v8.super_class = AECAssessmentConfigurationWrapper;
  v2 = [(AECAssessmentConfigurationWrapper *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mainIndividualConfiguration = v2->_mainIndividualConfiguration;
    v2->_mainIndividualConfiguration = v3;

    v5 = objc_opt_new();
    configurationsByApplicationDescriptor = v2->_configurationsByApplicationDescriptor;
    v2->_configurationsByApplicationDescriptor = v5;
  }

  return v2;
}

- (void)setMainIndividualConfiguration:(id)a3
{
  v4 = [(AEAssessmentIndividualConfiguration *)self->_mainIndividualConfiguration copy];
  mainIndividualConfiguration = self->_mainIndividualConfiguration;
  self->_mainIndividualConfiguration = v4;

  MEMORY[0x2821F96F8]();
}

- (AEAssessmentIndividualConfiguration)mainIndividualConfiguration
{
  v2 = [(AEAssessmentIndividualConfiguration *)self->_mainIndividualConfiguration copy];

  return v2;
}

- (NSMutableDictionary)configurationsByApplicationDescriptor
{
  v2 = [(NSMutableDictionary *)self->_configurationsByApplicationDescriptor mutableCopy];

  return v2;
}

- (void)setConfigurationsByApplicationDescriptor:(id)a3
{
  v4 = [a3 mutableCopy];
  configurationsByApplicationDescriptor = self->_configurationsByApplicationDescriptor;
  self->_configurationsByApplicationDescriptor = v4;

  MEMORY[0x2821F96F8]();
}

- (id)makeConfiguration
{
  v3 = objc_opt_new();
  [v3 setAllowsAutoCorrection:{-[AECAssessmentConfigurationWrapper allowsAutoCorrection](self, "allowsAutoCorrection")}];
  [v3 setAllowsSmartPunctuation:{-[AECAssessmentConfigurationWrapper allowsSmartPunctuation](self, "allowsSmartPunctuation")}];
  [v3 setAllowsSpellCheck:{-[AECAssessmentConfigurationWrapper allowsSpellCheck](self, "allowsSpellCheck")}];
  [v3 setAllowsPredictiveKeyboard:{-[AECAssessmentConfigurationWrapper allowsPredictiveKeyboard](self, "allowsPredictiveKeyboard")}];
  [v3 setAllowsKeyboardShortcuts:{-[AECAssessmentConfigurationWrapper allowsKeyboardShortcuts](self, "allowsKeyboardShortcuts")}];
  [v3 setAllowsActivityContinuation:{-[AECAssessmentConfigurationWrapper allowsActivityContinuation](self, "allowsActivityContinuation")}];
  [v3 setAllowsDictation:{-[AECAssessmentConfigurationWrapper allowsDictation](self, "allowsDictation")}];
  [v3 setAllowsAccessibilityKeyboard:{-[AECAssessmentConfigurationWrapper allowsAccessibilityKeyboard](self, "allowsAccessibilityKeyboard")}];
  [v3 setAllowsAccessibilityLiveCaptions:{-[AECAssessmentConfigurationWrapper allowsAccessibilityLiveCaptions](self, "allowsAccessibilityLiveCaptions")}];
  [v3 setAllowsAccessibilityReader:{-[AECAssessmentConfigurationWrapper allowsAccessibilityReader](self, "allowsAccessibilityReader")}];
  [v3 setAllowsAccessibilitySpeech:{-[AECAssessmentConfigurationWrapper allowsAccessibilitySpeech](self, "allowsAccessibilitySpeech")}];
  [v3 setAllowsAccessibilityTypingFeedback:{-[AECAssessmentConfigurationWrapper allowsAccessibilityTypingFeedback](self, "allowsAccessibilityTypingFeedback")}];
  [v3 setAllowsPasswordAutoFill:{-[AECAssessmentConfigurationWrapper allowsPasswordAutoFill](self, "allowsPasswordAutoFill")}];
  [v3 setAllowsContinuousPathKeyboard:{-[AECAssessmentConfigurationWrapper allowsContinuousPathKeyboard](self, "allowsContinuousPathKeyboard")}];
  [v3 setAllowsKeyboardMathSolving:{-[AECAssessmentConfigurationWrapper allowsKeyboardMathSolving](self, "allowsKeyboardMathSolving")}];
  [v3 setAllowsMathPaperSolving:{-[AECAssessmentConfigurationWrapper allowsMathPaperSolving](self, "allowsMathPaperSolving")}];
  [v3 setAllowsScreenshots:{-[AECAssessmentConfigurationWrapper allowsScreenshots](self, "allowsScreenshots")}];
  [v3 set_allowsNetworkAccess:{-[AECAssessmentConfigurationWrapper _allowsNetworkAccess](self, "_allowsNetworkAccess")}];
  [v3 set_allowsContentCapture:{-[AECAssessmentConfigurationWrapper _allowsContentCapture](self, "_allowsContentCapture")}];
  v4 = [(AECAssessmentConfigurationWrapper *)self mainIndividualConfiguration];
  v5 = [v4 copy];
  [v3 setMainIndividualConfiguration:v5];

  v6 = [(AECAssessmentConfigurationWrapper *)self configurationsByApplicationDescriptor];
  v7 = [v6 copy];
  [v3 setConfigurationsByApplicationDescriptor:v7];

  return v3;
}

+ (id)wrapperFromConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setAllowsAutoCorrection:{objc_msgSend(v3, "allowsAutoCorrection")}];
  [v4 setAllowsSmartPunctuation:{objc_msgSend(v3, "allowsSmartPunctuation")}];
  [v4 setAllowsSpellCheck:{objc_msgSend(v3, "allowsSpellCheck")}];
  [v4 setAllowsPredictiveKeyboard:{objc_msgSend(v3, "allowsPredictiveKeyboard")}];
  [v4 setAllowsKeyboardShortcuts:{objc_msgSend(v3, "allowsKeyboardShortcuts")}];
  [v4 setAllowsActivityContinuation:{objc_msgSend(v3, "allowsActivityContinuation")}];
  [v4 setAllowsDictation:{objc_msgSend(v3, "allowsDictation")}];
  [v4 setAllowsAccessibilityKeyboard:{objc_msgSend(v3, "allowsAccessibilityKeyboard")}];
  [v4 setAllowsAccessibilityLiveCaptions:{objc_msgSend(v3, "allowsAccessibilityLiveCaptions")}];
  [v4 setAllowsAccessibilityReader:{objc_msgSend(v3, "allowsAccessibilityReader")}];
  [v4 setAllowsAccessibilitySpeech:{objc_msgSend(v3, "allowsAccessibilitySpeech")}];
  [v4 setAllowsAccessibilityTypingFeedback:{objc_msgSend(v3, "allowsAccessibilityTypingFeedback")}];
  [v4 setAllowsPasswordAutoFill:{objc_msgSend(v3, "allowsPasswordAutoFill")}];
  [v4 setAllowsContinuousPathKeyboard:{objc_msgSend(v3, "allowsContinuousPathKeyboard")}];
  [v4 setAllowsKeyboardMathSolving:{objc_msgSend(v3, "allowsKeyboardMathSolving")}];
  [v4 setAllowsMathPaperSolving:{objc_msgSend(v3, "allowsMathPaperSolving")}];
  [v4 setAllowsScreenshots:{objc_msgSend(v3, "allowsScreenshots")}];
  [v4 _setAllowsNetworkAccess:{objc_msgSend(v3, "_allowsNetworkAccess")}];
  [v4 _setAllowsContentCapture:{objc_msgSend(v3, "_allowsContentCapture")}];
  v5 = [v3 mainIndividualConfiguration];
  v6 = [v5 copy];
  [v4 setMainIndividualConfiguration:v6];

  v7 = [v3 configurationsByApplicationDescriptor];

  v8 = [v7 mutableCopy];
  [v4 setConfigurationsByApplicationDescriptor:v8];

  return v4;
}

@end