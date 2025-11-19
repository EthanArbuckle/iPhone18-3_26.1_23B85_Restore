@interface AEAssessmentConfiguration
+ (id)configurationFromWrapper:(id)a3;
- (AEAssessmentConfiguration)init;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)configurationsByApplication;
- (id)configurationWrapper;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)isEqualToConfiguration:(uint64_t)a1;
- (unint64_t)hash;
- (void)removeApplication:(AEAssessmentApplication *)application;
- (void)setBackingConfiguratonsByApplication:(uint64_t)a1;
- (void)setConfiguration:(AEAssessmentParticipantConfiguration *)configuration forApplication:(AEAssessmentApplication *)application;
- (void)setMainParticipantConfiguration:(uint64_t)a1;
@end

@implementation AEAssessmentConfiguration

- (AEAssessmentConfiguration)init
{
  v8.receiver = self;
  v8.super_class = AEAssessmentConfiguration;
  v2 = [(AEAssessmentConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mainParticipantConfiguration = v2->_mainParticipantConfiguration;
    v2->_mainParticipantConfiguration = v3;

    v5 = objc_opt_new();
    backingConfiguratonsByApplication = v2->_backingConfiguratonsByApplication;
    v2->_backingConfiguratonsByApplication = v5;
  }

  return v2;
}

void __49__AEAssessmentConfiguration_configurationWrapper__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = [a3 individualConfiguration];
  v6 = *(a1 + 32);
  v7 = [v5 applicationDescriptor];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

+ (id)configurationFromWrapper:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [v3 configurationsByApplicationDescriptor];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__AEAssessmentConfiguration_configurationFromWrapper___block_invoke;
  v14[3] = &unk_278A0B168;
  v14[4] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v14];

  v7 = [v5 mutableCopy];
  [(AEAssessmentConfiguration *)v4 setBackingConfiguratonsByApplication:v7];

  v8 = [v3 mainIndividualConfiguration];
  v9 = [AEAssessmentParticipantConfiguration instanceFromIndividualConfiguration:v8];
  [(AEAssessmentConfiguration *)v4 setMainParticipantConfiguration:v9];

  *(v4 + 32) |= [v3 allowsAutoCorrection];
  v10 = [v3 allowsSmartPunctuation];
  v11 = 2;
  if (!v10)
  {
    v11 = 0;
  }

  *(v4 + 32) |= v11;
  *(v4 + 10) = [v3 allowsSpellCheck];
  *(v4 + 11) = [v3 allowsPredictiveKeyboard];
  *(v4 + 12) = [v3 allowsKeyboardShortcuts];
  *(v4 + 13) = [v3 allowsActivityContinuation];
  *(v4 + 14) = [v3 allowsDictation];
  *(v4 + 15) = [v3 allowsAccessibilityKeyboard];
  *(v4 + 16) = [v3 allowsAccessibilityLiveCaptions];
  *(v4 + 17) = [v3 allowsAccessibilityReader];
  *(v4 + 18) = [v3 allowsAccessibilitySpeech];
  *(v4 + 19) = [v3 allowsAccessibilityTypingFeedback];
  *(v4 + 20) = [v3 allowsPasswordAutoFill];
  *(v4 + 21) = [v3 allowsContinuousPathKeyboard];
  *(v4 + 23) = [v3 allowsKeyboardMathSolving];
  *(v4 + 24) = [v3 allowsMathPaperSolving];
  *(v4 + 22) = [v3 allowsScreenshots];
  *(v4 + 8) = [v3 _allowsNetworkAccess];
  v12 = [v3 _allowsContentCapture];

  *(v4 + 9) = v12;

  return v4;
}

void __54__AEAssessmentConfiguration_configurationFromWrapper___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [AEAssessmentApplication instanceFromApplicationDescriptor:a2];
  v6 = [AEAssessmentParticipantConfiguration instanceFromIndividualConfiguration:v5];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (unint64_t)hash
{
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autocorrectMode];
  v3 = [v42 hash];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsSpellCheck];
  v4 = [v41 hash] ^ v3;
  v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsPredictiveKeyboard];
  v5 = [v40 hash];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsKeyboardShortcuts];
  v6 = v4 ^ v5 ^ [v39 hash];
  v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsActivityContinuation];
  v7 = [v38 hash];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsDictation];
  v8 = v7 ^ [v37 hash];
  v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAccessibilityKeyboard];
  v9 = v6 ^ v8 ^ [v36 hash];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAccessibilityLiveCaptions];
  v10 = [v35 hash];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAccessibilityReader];
  v11 = v10 ^ [v34 hash];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAccessibilitySpeech];
  v12 = v11 ^ [v33 hash];
  v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsAccessibilityTypingFeedback];
  v13 = v9 ^ v12 ^ [v32 hash];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsPasswordAutoFill];
  v15 = [v14 hash];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsContinuousPathKeyboard];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsKeyboardMathSolving];
  v19 = v17 ^ [v18 hash];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsMathPaperSolving];
  v21 = v19 ^ [v20 hash];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsScreenshots];
  v31 = v13 ^ v21 ^ [v22 hash];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsNetworkAccess];
  v24 = [v23 hash];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsContentCapture];
  v26 = v24 ^ [v25 hash];
  v27 = [(AEAssessmentConfiguration *)self mainParticipantConfiguration];
  v28 = v26 ^ [v27 hash];
  v29 = v28 ^ [(NSMutableDictionary *)self->_backingConfiguratonsByApplication hash];

  return v31 ^ v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentConfiguration *)v4 isMemberOfClass:objc_opt_class()])
    {
      v6 = [(AEAssessmentConfiguration *)self isEqualToConfiguration:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (NSDictionary)configurationsByApplication
{
  if (self)
  {
    self = self->_backingConfiguratonsByApplication;
  }

  v2 = [(AEAssessmentConfiguration *)self copy];

  return v2;
}

- (void)setConfiguration:(AEAssessmentParticipantConfiguration *)configuration forApplication:(AEAssessmentApplication *)application
{
  v6 = application;
  v7 = [(AEAssessmentParticipantConfiguration *)configuration copy];
  if (self)
  {
    backingConfiguratonsByApplication = self->_backingConfiguratonsByApplication;
  }

  else
  {
    backingConfiguratonsByApplication = 0;
  }

  v9 = v7;
  [(NSMutableDictionary *)backingConfiguratonsByApplication setObject:v7 forKeyedSubscript:v6];
}

- (void)removeApplication:(AEAssessmentApplication *)application
{
  if (self)
  {
    self = self->_backingConfiguratonsByApplication;
  }

  [(AEAssessmentConfiguration *)self setObject:0 forKeyedSubscript:application];
}

- (id)configurationWrapper
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (self)
  {
    backingConfiguratonsByApplication = self->_backingConfiguratonsByApplication;
  }

  else
  {
    backingConfiguratonsByApplication = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__AEAssessmentConfiguration_configurationWrapper__block_invoke;
  v9[3] = &unk_278A0B140;
  v9[4] = v4;
  [(NSMutableDictionary *)backingConfiguratonsByApplication enumerateKeysAndObjectsUsingBlock:v9];
  v6 = [(AEAssessmentConfiguration *)self mainParticipantConfiguration];
  v7 = [v6 individualConfiguration];
  [v3 setMainIndividualConfiguration:v7];

  [v3 setConfigurationsByApplicationDescriptor:v4];
  [v3 setAllowsAutoCorrection:self->_autocorrectMode & 1];
  [v3 setAllowsSmartPunctuation:(self->_autocorrectMode >> 1) & 1];
  [v3 setAllowsSpellCheck:self->_allowsSpellCheck];
  [v3 setAllowsPredictiveKeyboard:self->_allowsPredictiveKeyboard];
  [v3 setAllowsKeyboardShortcuts:self->_allowsKeyboardShortcuts];
  [v3 setAllowsActivityContinuation:self->_allowsActivityContinuation];
  [v3 setAllowsDictation:self->_allowsDictation];
  [v3 setAllowsAccessibilityKeyboard:self->_allowsAccessibilityKeyboard];
  [v3 setAllowsAccessibilityLiveCaptions:self->_allowsAccessibilityLiveCaptions];
  [v3 setAllowsAccessibilityReader:self->_allowsAccessibilityReader];
  [v3 setAllowsAccessibilitySpeech:self->_allowsAccessibilitySpeech];
  [v3 setAllowsAccessibilityTypingFeedback:self->_allowsAccessibilityTypingFeedback];
  [v3 setAllowsPasswordAutoFill:self->_allowsPasswordAutoFill];
  [v3 setAllowsContinuousPathKeyboard:self->_allowsContinuousPathKeyboard];
  [v3 setAllowsKeyboardMathSolving:self->_allowsKeyboardMathSolving];
  [v3 setAllowsMathPaperSolving:self->_allowsMathPaperSolving];
  [v3 setAllowsScreenshots:self->_allowsScreenshots];
  [v3 _setAllowsNetworkAccess:self->_allowsNetworkAccess];
  [v3 _setAllowsContentCapture:self->_allowsContentCapture];

  return v3;
}

- (void)setBackingConfiguratonsByApplication:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

- (void)setMainParticipantConfiguration:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AEAssessmentConfiguration allocWithZone:?]];
  if (self)
  {
    backingConfiguratonsByApplication = self->_backingConfiguratonsByApplication;
  }

  else
  {
    backingConfiguratonsByApplication = 0;
  }

  v6 = [(NSMutableDictionary *)backingConfiguratonsByApplication mutableCopy];
  [(AEAssessmentConfiguration *)v4 setBackingConfiguratonsByApplication:v6];

  v7 = [(AEAssessmentConfiguration *)self mainParticipantConfiguration];
  [(AEAssessmentConfiguration *)v4 setMainParticipantConfiguration:v7];

  v4->_autocorrectMode = self->_autocorrectMode;
  v4->_allowsSpellCheck = self->_allowsSpellCheck;
  v4->_allowsPredictiveKeyboard = self->_allowsPredictiveKeyboard;
  v4->_allowsKeyboardShortcuts = self->_allowsKeyboardShortcuts;
  v4->_allowsActivityContinuation = self->_allowsActivityContinuation;
  v4->_allowsDictation = self->_allowsDictation;
  v4->_allowsAccessibilityKeyboard = self->_allowsAccessibilityKeyboard;
  v4->_allowsAccessibilityLiveCaptions = self->_allowsAccessibilityLiveCaptions;
  v4->_allowsAccessibilityReader = self->_allowsAccessibilityReader;
  v4->_allowsAccessibilitySpeech = self->_allowsAccessibilitySpeech;
  v4->_allowsAccessibilityTypingFeedback = self->_allowsAccessibilityTypingFeedback;
  v4->_allowsPasswordAutoFill = self->_allowsPasswordAutoFill;
  v4->_allowsContinuousPathKeyboard = self->_allowsContinuousPathKeyboard;
  v4->_allowsKeyboardMathSolving = self->_allowsKeyboardMathSolving;
  v4->_allowsMathPaperSolving = self->_allowsMathPaperSolving;
  v4->_allowsScreenshots = self->_allowsScreenshots;
  v4->_allowsNetworkAccess = self->_allowsNetworkAccess;
  v4->_allowsContentCapture = self->_allowsContentCapture;
  return v4;
}

- (uint64_t)isEqualToConfiguration:(uint64_t)a1
{
  v7 = a2;
  if (a1)
  {
    if (*(a1 + 32) == v7[4] && *(a1 + 10) == *(v7 + 10) && *(a1 + 11) == *(v7 + 11) && *(a1 + 12) == *(v7 + 12) && *(a1 + 13) == *(v7 + 13) && *(a1 + 14) == *(v7 + 14) && *(a1 + 15) == *(v7 + 15) && *(a1 + 16) == *(v7 + 16) && *(a1 + 17) == *(v7 + 17) && *(a1 + 18) == *(v7 + 18) && *(a1 + 19) == *(v7 + 19) && *(a1 + 20) == *(v7 + 20) && *(a1 + 21) == *(v7 + 21) && *(a1 + 23) == *(v7 + 23))
    {
      v15 = v7;
      if (*(a1 + 24) != *(v7 + 24) || *(a1 + 22) != *(v7 + 22) || *(a1 + 8) != *(v7 + 8) || *(a1 + 9) != *(v7 + 9))
      {
        a1 = 0;
LABEL_27:
        v7 = v15;
        goto LABEL_25;
      }

      v8 = [a1 mainParticipantConfiguration];
      if (v8 || ([v15 mainParticipantConfiguration], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v3 = [a1 mainParticipantConfiguration];
        v4 = [v15 mainParticipantConfiguration];
        if (![v3 isEqual:v4])
        {

          a1 = 0;
          goto LABEL_35;
        }

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      v11 = *(a1 + 48);
      if (!v11)
      {
        v5 = v15[6];
        if (!v5)
        {
          a1 = 1;
          if ((v9 & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }
      }

      v12 = *(a1 + 48);
      v13 = v15[6];
      v14 = v12;
      a1 = [v14 isEqual:v13];

      if (!v11)
      {

        if ((v9 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v9)
      {
LABEL_34:
      }

LABEL_35:
      if (!v8)
      {
      }

      goto LABEL_27;
    }

    a1 = 0;
  }

LABEL_25:

  return a1;
}

@end