@interface WFAskForInputAction
- (BOOL)immediatelyActivateWatchDictation;
- (NSString)defaultAnswer;
- (NSString)inputType;
- (NSString)promptText;
- (id)datePickerModeFromInputType:(id)type;
- (id)outputContentClasses;
- (void)finishRunningWithDate:(id)date;
- (void)finishRunningWithResultText:(id)text;
- (void)getOutputFromIntentResponse:(id)response completionHandler:(id)handler;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFAskForInputAction

- (id)outputContentClasses
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFAskForInputAction *)self parameterStateForKey:@"WFInputType"];
  value = [v3 value];
  if ([value isEqualToString:@"Text"])
  {
    v15[0] = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = v15;
LABEL_11:
    outputContentClasses = [v5 arrayWithObjects:v6 count:1];
    goto LABEL_12;
  }

  if ([value isEqualToString:@"Number"])
  {
    v14 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v14;
    goto LABEL_11;
  }

  if ([value isEqualToString:@"URL"])
  {
    v13 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v13;
    goto LABEL_11;
  }

  if (([value isEqualToString:@"Date"] & 1) != 0 || (objc_msgSend(value, "isEqualToString:", @"Time") & 1) != 0 || objc_msgSend(value, "isEqualToString:", @"Date and Time"))
  {
    v12 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v12;
    goto LABEL_11;
  }

  v11.receiver = self;
  v11.super_class = WFAskForInputAction;
  outputContentClasses = [(WFAskForInputAction *)&v11 outputContentClasses];
LABEL_12:
  v8 = outputContentClasses;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)finishRunningWithDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    output = [(WFAskForInputAction *)self output];
    [output addObject:dateCopy];
  }

  [(WFHandleIntentAction *)self finishRunningWithError:0];
}

- (void)finishRunningWithResultText:(id)text
{
  textCopy = text;
  inputType = [(WFAskForInputAction *)self inputType];
  if (![textCopy length])
  {
    goto LABEL_28;
  }

  if ([inputType isEqualToString:@"URL"])
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:textCopy];
    if ([MEMORY[0x277CFC570] stringMatchesExactly:textCopy])
    {
      scheme = [v6 scheme];

      if (!scheme)
      {
        v8 = MEMORY[0x277CBEBC0];
        v9 = [@"http://" stringByAppendingString:textCopy];
        v10 = [v8 URLWithString:v9];

        v6 = v10;
      }
    }

    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = textCopy;
    }

    notANumber = v11;

    if (!notANumber)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (![inputType isEqualToString:@"Number"])
  {
    notANumber = textCopy;
    if (!notANumber)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
  decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  minusSign = [v13 minusSign];
  [decimalDigitCharacterSet addCharactersInString:minusSign];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v17 = [currentLocale objectForKey:*MEMORY[0x277CBE6A8]];
  [decimalDigitCharacterSet addCharactersInString:v17];

  invertedSet = [decimalDigitCharacterSet invertedSet];
  v19 = [MEMORY[0x277CFC360] resultsForString:textCopy ofTypes:0x200000000 error:0];
  number = [v19 number];
  if (number)
  {
    if ([textCopy wf_stringContainsCharacterInSet:invertedSet])
    {
      v21 = number;
    }

    else
    {
      v21 = textCopy;
    }

    notANumber = v21;
  }

  else
  {
    v32 = v13;
    v22 = [textCopy componentsSeparatedByCharactersInSet:invertedSet];
    v23 = [v22 componentsJoinedByString:&stru_2850323E8];

    v31 = v23;
    v24 = [MEMORY[0x277CCAC80] scannerWithString:v23];
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    [v24 setLocale:currentLocale2];

    v35 = 0.0;
    v26 = [v24 scanDouble:&v35];
    v27 = MEMORY[0x277CCA980];
    if (v26)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
      v29 = v28;
      if (v28)
      {
        [v28 decimalValue];
      }

      else
      {
        v33[0] = 0;
        v33[1] = 0;
        v34 = 0;
      }

      notANumber = [v27 decimalNumberWithDecimal:v33];
    }

    else
    {
      notANumber = [MEMORY[0x277CCA980] notANumber];
    }

    v13 = v32;
  }

  if (notANumber)
  {
LABEL_27:
    output = [(WFAskForInputAction *)self output];
    [output addObject:notANumber];
  }

LABEL_28:
  [(WFHandleIntentAction *)self finishRunningWithError:0];
}

- (void)getOutputFromIntentResponse:(id)response completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAskForInputAction.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = objc_opt_class();
  v10 = responseCopy;
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v25 = "WFEnforceClass";
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = objc_opt_class();
      v30 = 2114;
      v31 = v9;
      v13 = v29;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  result = [v11 result];
  v15 = result;
  if (!result)
  {
    goto LABEL_27;
  }

  type = [result type];
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        dateValue = [v15 dateValue];
        break;
      case 5:
        dateValue = [v15 timeValue];
        break;
      case 6:
        dateValue = [v15 dateAndTimeValue];
        break;
      default:
        goto LABEL_27;
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        dateValue = [v15 stringValue];
        break;
      case 2:
        dateValue = [v15 numberValue];
        break;
      case 3:
        dateValue = [v15 urlValue];
        break;
      default:
LABEL_27:
        handlerCopy[2](handlerCopy, 0);
        goto LABEL_28;
    }
  }

  v18 = dateValue;
  if (!dateValue)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v20 = [currentCalendar dateFromComponents:v18];

    v18 = v20;
  }

  v21 = objc_opt_new();
  [v21 addObject:v18];
  (handlerCopy)[2](handlerCopy, v21);

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v56[3] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  userInterface = [(WFAskForInputAction *)self userInterface];
  userInterfaceType = [userInterface userInterfaceType];
  v7 = [userInterfaceType isEqualToString:*MEMORY[0x277CFC708]];

  if (v7)
  {
    v55.receiver = self;
    v55.super_class = WFAskForInputAction;
    [(WFHandleIntentAction *)&v55 runAsynchronouslyWithInput:inputCopy];
  }

  else
  {
    v56[0] = @"Date";
    v56[1] = @"Time";
    v56[2] = @"Date and Time";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    inputType = [(WFAskForInputAction *)self inputType];
    v10 = [v8 containsObject:inputType];

    v11 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
    promptText = [(WFAskForInputAction *)self promptText];
    [v11 setTitle:promptText];

    v13 = dispatch_group_create();
    if (v10)
    {
      v14 = objc_alloc_init(MEMORY[0x277D79EF8]);
      inputType2 = [(WFAskForInputAction *)self inputType];
      v16 = [(WFAskForInputAction *)self datePickerModeFromInputType:inputType2];
      [v14 setDatePickerMode:v16];

      defaultAnswer = [(WFAskForInputAction *)self defaultAnswer];

      if (defaultAnswer)
      {
        dispatch_group_enter(v13);
        v18 = MEMORY[0x277CFC2F8];
        defaultAnswer2 = [(WFAskForInputAction *)self defaultAnswer];
        v20 = [v18 itemWithObject:defaultAnswer2];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke;
        v52[3] = &unk_278C1B628;
        v53 = v14;
        v54 = v13;
        [v20 getObjectRepresentation:v52 forClass:objc_opt_class()];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_2;
      block[3] = &unk_278C21508;
      v50 = v11;
      v51 = v14;
      v21 = v14;
      dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);
    }

    else
    {
      inputType3 = [(WFAskForInputAction *)self inputType];
      v23 = [inputType3 isEqualToString:@"Number"];

      if (v23)
      {
        v24 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionAllowsDecimalNumbers" ofClass:objc_opt_class()];
        bOOLValue = [v24 BOOLValue];

        v25 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionAllowsNegativeNumbers" ofClass:objc_opt_class()];
        bOOLValue2 = [v25 BOOLValue];

        v21 = objc_alloc_init(MEMORY[0x277D7A178]);
        defaultAnswer3 = [(WFAskForInputAction *)self defaultAnswer];
        [v21 setText:defaultAnswer3];

        v28 = MEMORY[0x277D7A620];
        if (!bOOLValue)
        {
          v28 = MEMORY[0x277D7A640];
        }

        [v21 setKeyboardType:*v28];
        [v21 setAllowsNegativeNumbers:bOOLValue2];
        [v21 setPlaceholder:@"0"];
      }

      else
      {
        v21 = objc_alloc_init(MEMORY[0x277D7A178]);
        defaultAnswer4 = [(WFAskForInputAction *)self defaultAnswer];
        [v21 setText:defaultAnswer4];

        inputType4 = [(WFAskForInputAction *)self inputType];
        v31 = [inputType4 isEqualToString:@"URL"];

        if (v31)
        {
          [v21 setKeyboardType:*MEMORY[0x277D7A660]];
          [v21 setAutocapitalizationType:*MEMORY[0x277D7A5C0]];
          [v21 setAutocorrectionType:*MEMORY[0x277D7A5E0]];
          [v21 setTextContentType:*MEMORY[0x277D7A7B8]];
          [v21 setReturnKeyType:*MEMORY[0x277D7A680]];
          v32 = WFLocalizedString(@"URL");
          [v21 setPlaceholder:v32];
        }

        else
        {
          v33 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAllowsMultilineText" ofClass:objc_opt_class()];
          bOOLValue3 = [v33 BOOLValue];

          [v21 setMultiline:bOOLValue3];
          v35 = MEMORY[0x277D7A678];
          if (!bOOLValue3)
          {
            v35 = MEMORY[0x277D7A680];
          }

          [v21 setReturnKeyType:*v35];
        }
      }

      [v11 setTextFieldConfiguration:v21];
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_3;
    v48[3] = &unk_278C224A0;
    v48[4] = self;
    v36 = [MEMORY[0x277CFC220] cancelButtonWithHandler:v48];
    v37 = MEMORY[0x277CFC220];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_4;
    v45[3] = &unk_278C1B650;
    v47 = v10;
    v45[4] = self;
    v38 = v11;
    v46 = v38;
    v39 = [v37 okButtonWithHandler:v45];
    [v38 addButton:v36];
    [v38 addButton:v39];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_5;
    v43[3] = &unk_278C21508;
    v43[4] = self;
    v44 = v38;
    v40 = v38;
    dispatch_group_notify(v13, MEMORY[0x277D85CD0], v43);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setDefaultDate:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

void __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == 1)
  {
    v5 = [v2 datePickerResult];
    [v3 finishRunningWithDate:?];
  }

  else
  {
    v5 = [v2 textFieldResults];
    v4 = [v5 firstObject];
    [v3 finishRunningWithResultText:v4];
  }
}

void __50__WFAskForInputAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) userInterface];
  [v2 presentAlert:*(a1 + 40)];
}

- (id)datePickerModeFromInputType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Date"])
  {
    v4 = MEMORY[0x277D7A3A0];
  }

  else
  {
    v5 = [typeCopy isEqualToString:@"Time"];
    v4 = MEMORY[0x277D7A3A8];
    if (v5)
    {
      v4 = MEMORY[0x277D7A3B0];
    }
  }

  v6 = *v4;
  v7 = *v4;

  return v6;
}

- (BOOL)immediatelyActivateWatchDictation
{
  v2 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionImmediateDictation" ofClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)defaultAnswer
{
  inputType = [(WFAskForInputAction *)self inputType];
  v4 = objc_opt_class();
  if ([inputType isEqualToString:@"Number"])
  {
    v5 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionDefaultAnswerNumber" ofClass:objc_opt_class()];
    v6 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v5 numberStyle:1];

    goto LABEL_13;
  }

  if ([inputType isEqualToString:@"URL"])
  {
    v7 = @"WFAskActionDefaultAnswerURL";
  }

  else
  {
    if ([inputType isEqualToString:@"Date"])
    {
      v7 = @"WFAskActionDefaultAnswerDate";
    }

    else if ([inputType isEqualToString:@"Time"])
    {
      v7 = @"WFAskActionDefaultAnswerTime";
    }

    else
    {
      if (![inputType isEqualToString:@"Date and Time"])
      {
        v7 = @"WFAskActionDefaultAnswer";
        goto LABEL_12;
      }

      v7 = @"WFAskActionDefaultAnswerDateAndTime";
    }

    v4 = objc_opt_class();
  }

LABEL_12:
  v6 = [(WFAskForInputAction *)self parameterValueForKey:v7 ofClass:v4];
LABEL_13:

  return v6;
}

- (NSString)promptText
{
  v3 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionPrompt" ofClass:objc_opt_class()];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v6 = [v5 length];

  if ([v3 length])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10 = v3;
    goto LABEL_22;
  }

  if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled])
  {
    goto LABEL_7;
  }

  inputType = [(WFAskForInputAction *)self inputType];
  if ([inputType isEqualToString:@"Text"])
  {
    v11 = @"What’s the text?";
LABEL_20:
    localizedPlaceholder = WFLocalizedString(v11);
    goto LABEL_21;
  }

  if ([inputType isEqualToString:@"Number"])
  {
    v11 = @"What number?";
    goto LABEL_20;
  }

  if ([inputType isEqualToString:@"URL"])
  {
    v11 = @"What URL?";
    goto LABEL_20;
  }

  if ([inputType isEqualToString:@"Date"])
  {
    v11 = @"What date?";
    goto LABEL_20;
  }

  if ([inputType isEqualToString:@"Time"])
  {
    v11 = @"What time?";
    goto LABEL_20;
  }

  if ([inputType isEqualToString:@"Date and Time"])
  {
    v11 = @"What date and time?";
    goto LABEL_20;
  }

LABEL_7:
  inputType = [(WFAskForInputAction *)self parameterForKey:@"WFAskActionPrompt"];
  localizedPlaceholder = [inputType localizedPlaceholder];
LABEL_21:
  v10 = localizedPlaceholder;

LABEL_22:

  return v10;
}

- (NSString)inputType
{
  v3 = objc_opt_class();

  return [(WFAskForInputAction *)self parameterValueForKey:@"WFInputType" ofClass:v3];
}

@end