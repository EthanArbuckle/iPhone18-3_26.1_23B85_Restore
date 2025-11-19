@interface AEAssessmentState
- (AEAssessmentState)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)isEqualToState:(void *)a1;
@end

@implementation AEAssessmentState

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[AEAssessmentState isEnabled](self, "isEnabled")}];
  [v5 encodeObject:v6 forKey:@"enabled"];

  v7 = [(AEAssessmentState *)self configurationsByApplicationDescriptor];
  [v5 encodeObject:v7 forKey:@"configurationsByApplicationDescriptor"];

  v8 = [(AEAssessmentState *)self mainIndividualConfiguration];
  [v5 encodeObject:v8 forKey:@"mainIndividualConfiguration"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAutoCorrection](self, "allowsAutoCorrection")}];
  [v5 encodeObject:v9 forKey:@"allowsAutoCorrection"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsSmartPunctuation](self, "allowsSmartPunctuation")}];
  [v5 encodeObject:v10 forKey:@"allowsSmartPunctuation"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsSpellCheck](self, "allowsSpellCheck")}];
  [v5 encodeObject:v11 forKey:@"allowsSpellCheck"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsPredictiveKeyboard](self, "allowsPredictiveKeyboard")}];
  [v5 encodeObject:v12 forKey:@"allowsPredictiveKeyboard"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsActivityContinuation](self, "allowsActivityContinuation")}];
  [v5 encodeObject:v13 forKey:@"allowsActivityContinuation"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsDictation](self, "allowsDictation")}];
  [v5 encodeObject:v14 forKey:@"allowsDictation"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityKeyboard](self, "allowsAccessibilityKeyboard")}];
  [v5 encodeObject:v15 forKey:@"allowsAccessibilityKeyboard"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityLiveCaptions](self, "allowsAccessibilityLiveCaptions")}];
  [v5 encodeObject:v16 forKey:@"allowsAccessibilityLiveCaptions"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityReader](self, "allowsAccessibilityReader")}];
  [v5 encodeObject:v17 forKey:@"allowsAccessibilityReader"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilitySpeech](self, "allowsAccessibilitySpeech")}];
  [v5 encodeObject:v18 forKey:@"allowsAccessibilitySpeech"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityTypingFeedback](self, "allowsAccessibilityTypingFeedback")}];
  [v5 encodeObject:v19 forKey:@"allowsAccessibilityTypingFeedback"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsPasswordAutoFill](self, "allowsPasswordAutoFill")}];
  [v5 encodeObject:v20 forKey:@"allowsPasswordAutoFill"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsContinuousPathKeyboard](self, "allowsContinuousPathKeyboard")}];
  [v5 encodeObject:v21 forKey:@"allowsContinuousPathKeyboard"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsKeyboardShortcuts](self, "allowsKeyboardShortcuts")}];
  [v5 encodeObject:v22 forKey:@"allowsKeyboardShortcuts"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsKeyboardMathSolving](self, "allowsKeyboardMathSolving")}];
  [v5 encodeObject:v23 forKey:@"allowsKeyboardMathSolving"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsMathPaperSolving](self, "allowsMathPaperSolving")}];
  [v5 encodeObject:v24 forKey:@"allowsMathPaperSolving"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsScreenshots](self, "allowsScreenshots")}];
  [v5 encodeObject:v25 forKey:@"allowsScreenshots"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState _allowsNetworkAccess](self, "_allowsNetworkAccess")}];
  [v5 encodeObject:v26 forKey:@"_allowsNetworkAccess"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState _allowsContentCapture](self, "_allowsContentCapture")}];
  [v5 encodeObject:v27 forKey:@"_allowsContentCapture"];
}

- (AEAssessmentState)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = AEAssessmentState;
  v5 = [(AEAssessmentState *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    v5->_enabled = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainIndividualConfiguration"];
    mainIndividualConfiguration = v5->_mainIndividualConfiguration;
    v5->_mainIndividualConfiguration = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"configurationsByApplicationDescriptor"];
    configurationsByApplicationDescriptor = v5->_configurationsByApplicationDescriptor;
    v5->_configurationsByApplicationDescriptor = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAutoCorrection"];
    v5->_allowsAutoCorrection = [v15 BOOLValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsSmartPunctuation"];
    v5->_allowsSmartPunctuation = [v16 BOOLValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsSpellCheck"];
    v5->_allowsSpellCheck = [v17 BOOLValue];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsPredictiveKeyboard"];
    v5->_allowsPredictiveKeyboard = [v18 BOOLValue];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsActivityContinuation"];
    v5->_allowsActivityContinuation = [v19 BOOLValue];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsDictation"];
    v5->_allowsDictation = [v20 BOOLValue];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAccessibilityKeyboard"];
    v5->_allowsAccessibilityKeyboard = [v21 BOOLValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAccessibilityLiveCaptions"];
    v5->_allowsAccessibilityLiveCaptions = [v22 BOOLValue];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAccessibilityReader"];
    v5->_allowsAccessibilityReader = [v23 BOOLValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAccessibilitySpeech"];
    v5->_allowsAccessibilitySpeech = [v24 BOOLValue];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsAccessibilityTypingFeedback"];
    v5->_allowsAccessibilityTypingFeedback = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsPasswordAutoFill"];
    v5->_allowsPasswordAutoFill = [v26 BOOLValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsContinuousPathKeyboard"];
    v5->_allowsContinuousPathKeyboard = [v27 BOOLValue];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsKeyboardShortcuts"];
    v5->_allowsKeyboardShortcuts = [v28 BOOLValue];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsKeyboardMathSolving"];
    v5->_allowsKeyboardMathSolving = [v29 BOOLValue];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsMathPaperSolving"];
    v5->_allowsMathPaperSolving = [v30 BOOLValue];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowsScreenshots"];
    v5->_allowsScreenshots = [v31 BOOLValue];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_allowsNetworkAccess"];
    v5->__allowsNetworkAccess = [v32 BOOLValue];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_allowsContentCapture"];
    v5->__allowsContentCapture = [v33 BOOLValue];
  }

  return v5;
}

- (unint64_t)hash
{
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState isEnabled](self, "isEnabled")}];
  v3 = [v47 hash];
  v46 = [(AEAssessmentState *)self mainIndividualConfiguration];
  v4 = [v46 hash];
  v45 = [(AEAssessmentState *)self configurationsByApplicationDescriptor];
  v5 = v4 ^ [v45 hash] ^ v3;
  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAutoCorrection](self, "allowsAutoCorrection")}];
  v6 = [v44 hash];
  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsSmartPunctuation](self, "allowsSmartPunctuation")}];
  v7 = v5 ^ v6 ^ [v43 hash];
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsSpellCheck](self, "allowsSpellCheck")}];
  v8 = [v42 hash];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsPredictiveKeyboard](self, "allowsPredictiveKeyboard")}];
  v9 = v8 ^ [v41 hash];
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsActivityContinuation](self, "allowsActivityContinuation")}];
  v10 = v7 ^ v9 ^ [v40 hash];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsDictation](self, "allowsDictation")}];
  v11 = [v39 hash];
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityKeyboard](self, "allowsAccessibilityKeyboard")}];
  v12 = v11 ^ [v38 hash];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityLiveCaptions](self, "allowsAccessibilityLiveCaptions")}];
  v13 = v12 ^ [v37 hash];
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityReader](self, "allowsAccessibilityReader")}];
  v14 = v10 ^ v13 ^ [v36 hash];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilitySpeech](self, "allowsAccessibilitySpeech")}];
  v15 = [v35 hash];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsAccessibilityTypingFeedback](self, "allowsAccessibilityTypingFeedback")}];
  v16 = v15 ^ [v34 hash];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsPasswordAutoFill](self, "allowsPasswordAutoFill")}];
  v18 = v16 ^ [v17 hash];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsContinuousPathKeyboard](self, "allowsContinuousPathKeyboard")}];
  v20 = v18 ^ [v19 hash];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsKeyboardShortcuts](self, "allowsKeyboardShortcuts")}];
  v33 = v14 ^ v20 ^ [v21 hash];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsKeyboardMathSolving](self, "allowsKeyboardMathSolving")}];
  v23 = [v22 hash];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsMathPaperSolving](self, "allowsMathPaperSolving")}];
  v25 = v23 ^ [v24 hash];
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState allowsScreenshots](self, "allowsScreenshots")}];
  v27 = v25 ^ [v26 hash];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState _allowsNetworkAccess](self, "_allowsNetworkAccess")}];
  v29 = v27 ^ [v28 hash];
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[AEAssessmentState _allowsContentCapture](self, "_allowsContentCapture")}];
  v31 = v29 ^ [v30 hash];

  return v33 ^ v31;
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

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AEAssessmentState *)self isEqualToState:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)description
{
  v40 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  if ([(AEAssessmentState *)self isEnabled])
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v38 = v3;
  v37 = [(AEAssessmentState *)self mainIndividualConfiguration];
  v36 = [(AEAssessmentState *)self configurationsByApplicationDescriptor];
  if ([(AEAssessmentState *)self allowsAutoCorrection])
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v35 = v4;
  if ([(AEAssessmentState *)self allowsSmartPunctuation])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v34 = v5;
  if ([(AEAssessmentState *)self allowsSpellCheck])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v33 = v6;
  if ([(AEAssessmentState *)self allowsPredictiveKeyboard])
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v32 = v7;
  if ([(AEAssessmentState *)self allowsActivityContinuation])
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  v31 = v8;
  if ([(AEAssessmentState *)self allowsDictation])
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  v30 = v9;
  if ([(AEAssessmentState *)self allowsAccessibilityKeyboard])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  v29 = v10;
  if ([(AEAssessmentState *)self allowsAccessibilityLiveCaptions])
  {
    v11 = @"Yes";
  }

  else
  {
    v11 = @"No";
  }

  v28 = v11;
  if ([(AEAssessmentState *)self allowsAccessibilityReader])
  {
    v12 = @"Yes";
  }

  else
  {
    v12 = @"No";
  }

  v27 = v12;
  if ([(AEAssessmentState *)self allowsAccessibilitySpeech])
  {
    v13 = @"Yes";
  }

  else
  {
    v13 = @"No";
  }

  v26 = v13;
  if ([(AEAssessmentState *)self allowsAccessibilityTypingFeedback])
  {
    v14 = @"Yes";
  }

  else
  {
    v14 = @"No";
  }

  v25 = v14;
  if ([(AEAssessmentState *)self allowsPasswordAutoFill])
  {
    v15 = @"Yes";
  }

  else
  {
    v15 = @"No";
  }

  if ([(AEAssessmentState *)self allowsContinuousPathKeyboard])
  {
    v16 = @"Yes";
  }

  else
  {
    v16 = @"No";
  }

  if ([(AEAssessmentState *)self allowsKeyboardShortcuts])
  {
    v17 = @"Yes";
  }

  else
  {
    v17 = @"No";
  }

  if ([(AEAssessmentState *)self allowsKeyboardMathSolving])
  {
    v18 = @"Yes";
  }

  else
  {
    v18 = @"No";
  }

  if ([(AEAssessmentState *)self allowsMathPaperSolving])
  {
    v19 = @"Yes";
  }

  else
  {
    v19 = @"No";
  }

  if ([(AEAssessmentState *)self allowsScreenshots])
  {
    v20 = @"Yes";
  }

  else
  {
    v20 = @"No";
  }

  if ([(AEAssessmentState *)self _allowsNetworkAccess])
  {
    v21 = @"Yes";
  }

  else
  {
    v21 = @"No";
  }

  if ([(AEAssessmentState *)self _allowsContentCapture])
  {
    v22 = @"Yes";
  }

  else
  {
    v22 = @"No";
  }

  v23 = [v40 stringWithFormat:@"<%@: %p { isEnabled = %@, mainIndividualConfiguration = %@, configurationsByApplicationDescriptor = %@, allowsAutoCorrection = %@, allowsSmartPunctuation = %@, allowsSpellCheck = %@, allowsPredictiveKeyboard = %@, allowsActivityContinuation = %@, allowsDictation = %@, allowsAccessibilityKeyboard = %@, allowsAccessibilityLiveCaptions = %@, allowsAccessibilityReader = %@, allowsAccessibilitySpeech = %@, allowsAccessibilityTypingFeedback = %@, allowsPasswordAutoFill = %@, allowsContinuousPathKeyboard = %@, allowsKeyboardShortcuts = %@, allowsKeyboardMathSolving = %@, allowsMathPaperSolving = %@, allowsScreenshots = %@, _allowsNetworkAccess = %@, _allowsContentCapture = %@}>", v39, self, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v15, v16, v17, v18, v19, v20, v21, v22];

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setEnabled:{-[AEAssessmentState isEnabled](self, "isEnabled")}];
  v5 = [(AEAssessmentState *)self configurationsByApplicationDescriptor];
  [v4 setConfigurationsByApplicationDescriptor:v5];

  v6 = [(AEAssessmentState *)self mainIndividualConfiguration];
  [v4 setMainIndividualConfiguration:v6];

  [v4 setAllowsAutoCorrection:{-[AEAssessmentState allowsAutoCorrection](self, "allowsAutoCorrection")}];
  [v4 setAllowsSmartPunctuation:{-[AEAssessmentState allowsSmartPunctuation](self, "allowsSmartPunctuation")}];
  [v4 setAllowsSpellCheck:{-[AEAssessmentState allowsSpellCheck](self, "allowsSpellCheck")}];
  [v4 setAllowsPredictiveKeyboard:{-[AEAssessmentState allowsPredictiveKeyboard](self, "allowsPredictiveKeyboard")}];
  [v4 setAllowsActivityContinuation:{-[AEAssessmentState allowsActivityContinuation](self, "allowsActivityContinuation")}];
  [v4 setAllowsDictation:{-[AEAssessmentState allowsDictation](self, "allowsDictation")}];
  [v4 setAllowsAccessibilityKeyboard:{-[AEAssessmentState allowsAccessibilityKeyboard](self, "allowsAccessibilityKeyboard")}];
  [v4 setAllowsAccessibilityLiveCaptions:{-[AEAssessmentState allowsAccessibilityLiveCaptions](self, "allowsAccessibilityLiveCaptions")}];
  [v4 setAllowsAccessibilityReader:{-[AEAssessmentState allowsAccessibilityReader](self, "allowsAccessibilityReader")}];
  [v4 setAllowsAccessibilitySpeech:{-[AEAssessmentState allowsAccessibilitySpeech](self, "allowsAccessibilitySpeech")}];
  [v4 setAllowsAccessibilityTypingFeedback:{-[AEAssessmentState allowsAccessibilityTypingFeedback](self, "allowsAccessibilityTypingFeedback")}];
  [v4 setAllowsPasswordAutoFill:{-[AEAssessmentState allowsPasswordAutoFill](self, "allowsPasswordAutoFill")}];
  [v4 setAllowsContinuousPathKeyboard:{-[AEAssessmentState allowsContinuousPathKeyboard](self, "allowsContinuousPathKeyboard")}];
  [v4 setAllowsKeyboardShortcuts:{-[AEAssessmentState allowsKeyboardShortcuts](self, "allowsKeyboardShortcuts")}];
  [v4 setAllowsKeyboardMathSolving:{-[AEAssessmentState allowsKeyboardMathSolving](self, "allowsKeyboardMathSolving")}];
  [v4 setAllowsMathPaperSolving:{-[AEAssessmentState allowsMathPaperSolving](self, "allowsMathPaperSolving")}];
  [v4 setAllowsScreenshots:{-[AEAssessmentState allowsScreenshots](self, "allowsScreenshots")}];
  [v4 set_allowsNetworkAccess:{-[AEAssessmentState _allowsNetworkAccess](self, "_allowsNetworkAccess")}];
  [v4 set_allowsContentCapture:{-[AEAssessmentState _allowsContentCapture](self, "_allowsContentCapture")}];
  return v4;
}

- (void)isEqualToState:(void *)a1
{
  v8 = a2;
  if (!a1)
  {
    goto LABEL_44;
  }

  v9 = [a1 isEnabled];
  if (v9 != [v8 isEnabled])
  {
    a1 = 0;
    goto LABEL_44;
  }

  v10 = [a1 mainIndividualConfiguration];
  if (v10 || ([v8 mainIndividualConfiguration], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = [a1 mainIndividualConfiguration];
    v3 = [v8 mainIndividualConfiguration];
    if (([v2 isEqual:v3] & 1) == 0)
    {

      a1 = 0;
      goto LABEL_41;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 configurationsByApplicationDescriptor];
  if (v12 || ([v8 configurationsByApplicationDescriptor], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [a1 configurationsByApplicationDescriptor];
    v6 = [v8 configurationsByApplicationDescriptor];
    if (([v5 isEqual:v6] & 1) == 0)
    {

      a1 = 0;
      if (v12)
      {
        goto LABEL_39;
      }

LABEL_15:

      if ((v11 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v17 = v4;
    v16 = 1;
  }

  else
  {
    v17 = v4;
    v15 = 0;
    v16 = 0;
  }

  [a1 allowsAutoCorrection];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsAutoCorrection])
  {
    goto LABEL_36;
  }

  [a1 allowsSmartPunctuation];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsSmartPunctuation])
  {
    goto LABEL_36;
  }

  [a1 allowsSpellCheck];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsSpellCheck])
  {
    goto LABEL_36;
  }

  [a1 allowsPredictiveKeyboard];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsPredictiveKeyboard])
  {
    goto LABEL_36;
  }

  [a1 allowsActivityContinuation];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsActivityContinuation])
  {
    goto LABEL_36;
  }

  [a1 allowsDictation];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsDictation])
  {
    goto LABEL_36;
  }

  [a1 allowsAccessibilityKeyboard];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsAccessibilityKeyboard])
  {
    goto LABEL_36;
  }

  [a1 allowsAccessibilityLiveCaptions];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsAccessibilityLiveCaptions])
  {
    goto LABEL_36;
  }

  [a1 allowsAccessibilityReader];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsAccessibilityReader])
  {
    goto LABEL_36;
  }

  [a1 allowsAccessibilitySpeech];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsAccessibilitySpeech])
  {
    goto LABEL_36;
  }

  [a1 allowsAccessibilityTypingFeedback];
  if (v4 != [OUTLINED_FUNCTION_0_0() allowsAccessibilityTypingFeedback] || (objc_msgSend(a1, "allowsPasswordAutoFill"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "allowsPasswordAutoFill")) || (objc_msgSend(a1, "allowsContinuousPathKeyboard"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "allowsContinuousPathKeyboard")) || (objc_msgSend(a1, "allowsKeyboardShortcuts"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "allowsKeyboardShortcuts")) || (objc_msgSend(a1, "allowsKeyboardMathSolving"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "allowsKeyboardMathSolving")) || (objc_msgSend(a1, "allowsMathPaperSolving"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "allowsMathPaperSolving")) || (objc_msgSend(a1, "allowsScreenshots"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "allowsScreenshots")) || (objc_msgSend(a1, "_allowsNetworkAccess"), v4 != objc_msgSend(OUTLINED_FUNCTION_0_0(), "_allowsNetworkAccess")))
  {
LABEL_36:
    a1 = 0;
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v14 = [a1 _allowsContentCapture];
  a1 = (v14 ^ [v8 _allowsContentCapture] ^ 1);
  if (v16)
  {
LABEL_37:
  }

LABEL_38:
  v4 = v17;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_39:

  if (v11)
  {
LABEL_40:
  }

LABEL_41:
  if (!v10)
  {
  }

LABEL_44:
  return a1;
}

@end