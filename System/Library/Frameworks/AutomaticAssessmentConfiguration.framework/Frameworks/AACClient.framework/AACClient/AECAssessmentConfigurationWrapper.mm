@interface AECAssessmentConfigurationWrapper
+ (id)wrapperFromConfiguration:(id)configuration;
- (AEAssessmentIndividualConfiguration)mainIndividualConfiguration;
- (AECAssessmentConfigurationWrapper)init;
- (NSMutableDictionary)configurationsByApplicationDescriptor;
- (id)makeConfiguration;
- (void)setConfigurationsByApplicationDescriptor:(id)descriptor;
- (void)setMainIndividualConfiguration:(id)configuration;
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

- (void)setMainIndividualConfiguration:(id)configuration
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

- (void)setConfigurationsByApplicationDescriptor:(id)descriptor
{
  v4 = [descriptor mutableCopy];
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
  mainIndividualConfiguration = [(AECAssessmentConfigurationWrapper *)self mainIndividualConfiguration];
  v5 = [mainIndividualConfiguration copy];
  [v3 setMainIndividualConfiguration:v5];

  configurationsByApplicationDescriptor = [(AECAssessmentConfigurationWrapper *)self configurationsByApplicationDescriptor];
  v7 = [configurationsByApplicationDescriptor copy];
  [v3 setConfigurationsByApplicationDescriptor:v7];

  return v3;
}

+ (id)wrapperFromConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_opt_new();
  [v4 setAllowsAutoCorrection:{objc_msgSend(configurationCopy, "allowsAutoCorrection")}];
  [v4 setAllowsSmartPunctuation:{objc_msgSend(configurationCopy, "allowsSmartPunctuation")}];
  [v4 setAllowsSpellCheck:{objc_msgSend(configurationCopy, "allowsSpellCheck")}];
  [v4 setAllowsPredictiveKeyboard:{objc_msgSend(configurationCopy, "allowsPredictiveKeyboard")}];
  [v4 setAllowsKeyboardShortcuts:{objc_msgSend(configurationCopy, "allowsKeyboardShortcuts")}];
  [v4 setAllowsActivityContinuation:{objc_msgSend(configurationCopy, "allowsActivityContinuation")}];
  [v4 setAllowsDictation:{objc_msgSend(configurationCopy, "allowsDictation")}];
  [v4 setAllowsAccessibilityKeyboard:{objc_msgSend(configurationCopy, "allowsAccessibilityKeyboard")}];
  [v4 setAllowsAccessibilityLiveCaptions:{objc_msgSend(configurationCopy, "allowsAccessibilityLiveCaptions")}];
  [v4 setAllowsAccessibilityReader:{objc_msgSend(configurationCopy, "allowsAccessibilityReader")}];
  [v4 setAllowsAccessibilitySpeech:{objc_msgSend(configurationCopy, "allowsAccessibilitySpeech")}];
  [v4 setAllowsAccessibilityTypingFeedback:{objc_msgSend(configurationCopy, "allowsAccessibilityTypingFeedback")}];
  [v4 setAllowsPasswordAutoFill:{objc_msgSend(configurationCopy, "allowsPasswordAutoFill")}];
  [v4 setAllowsContinuousPathKeyboard:{objc_msgSend(configurationCopy, "allowsContinuousPathKeyboard")}];
  [v4 setAllowsKeyboardMathSolving:{objc_msgSend(configurationCopy, "allowsKeyboardMathSolving")}];
  [v4 setAllowsMathPaperSolving:{objc_msgSend(configurationCopy, "allowsMathPaperSolving")}];
  [v4 setAllowsScreenshots:{objc_msgSend(configurationCopy, "allowsScreenshots")}];
  [v4 _setAllowsNetworkAccess:{objc_msgSend(configurationCopy, "_allowsNetworkAccess")}];
  [v4 _setAllowsContentCapture:{objc_msgSend(configurationCopy, "_allowsContentCapture")}];
  mainIndividualConfiguration = [configurationCopy mainIndividualConfiguration];
  v6 = [mainIndividualConfiguration copy];
  [v4 setMainIndividualConfiguration:v6];

  configurationsByApplicationDescriptor = [configurationCopy configurationsByApplicationDescriptor];

  v8 = [configurationsByApplicationDescriptor mutableCopy];
  [v4 setConfigurationsByApplicationDescriptor:v8];

  return v4;
}

@end