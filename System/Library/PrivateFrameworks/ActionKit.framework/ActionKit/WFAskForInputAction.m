@interface WFAskForInputAction
- (BOOL)immediatelyActivateWatchDictation;
- (NSString)defaultAnswer;
- (NSString)inputType;
- (NSString)promptText;
- (id)datePickerModeFromInputType:(id)a3;
- (id)outputContentClasses;
- (void)finishRunningWithDate:(id)a3;
- (void)finishRunningWithResultText:(id)a3;
- (void)getOutputFromIntentResponse:(id)a3 completionHandler:(id)a4;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFAskForInputAction

- (id)outputContentClasses
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFAskForInputAction *)self parameterStateForKey:@"WFInputType"];
  v4 = [v3 value];
  if ([v4 isEqualToString:@"Text"])
  {
    v15[0] = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = v15;
LABEL_11:
    v7 = [v5 arrayWithObjects:v6 count:1];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"Number"])
  {
    v14 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v14;
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"URL"])
  {
    v13 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v13;
    goto LABEL_11;
  }

  if (([v4 isEqualToString:@"Date"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Time") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"Date and Time"))
  {
    v12 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v12;
    goto LABEL_11;
  }

  v11.receiver = self;
  v11.super_class = WFAskForInputAction;
  v7 = [(WFAskForInputAction *)&v11 outputContentClasses];
LABEL_12:
  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)finishRunningWithDate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WFAskForInputAction *)self output];
    [v5 addObject:v4];
  }

  [(WFHandleIntentAction *)self finishRunningWithError:0];
}

- (void)finishRunningWithResultText:(id)a3
{
  v4 = a3;
  v5 = [(WFAskForInputAction *)self inputType];
  if (![v4 length])
  {
    goto LABEL_28;
  }

  if ([v5 isEqualToString:@"URL"])
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    if ([MEMORY[0x277CFC570] stringMatchesExactly:v4])
    {
      v7 = [v6 scheme];

      if (!v7)
      {
        v8 = MEMORY[0x277CBEBC0];
        v9 = [@"http://" stringByAppendingString:v4];
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
      v11 = v4;
    }

    v12 = v11;

    if (!v12)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (![v5 isEqualToString:@"Number"])
  {
    v12 = v4;
    if (!v12)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v14 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  v15 = [v13 minusSign];
  [v14 addCharactersInString:v15];

  v16 = [MEMORY[0x277CBEAF8] currentLocale];
  v17 = [v16 objectForKey:*MEMORY[0x277CBE6A8]];
  [v14 addCharactersInString:v17];

  v18 = [v14 invertedSet];
  v19 = [MEMORY[0x277CFC360] resultsForString:v4 ofTypes:0x200000000 error:0];
  v20 = [v19 number];
  if (v20)
  {
    if ([v4 wf_stringContainsCharacterInSet:v18])
    {
      v21 = v20;
    }

    else
    {
      v21 = v4;
    }

    v12 = v21;
  }

  else
  {
    v32 = v13;
    v22 = [v4 componentsSeparatedByCharactersInSet:v18];
    v23 = [v22 componentsJoinedByString:&stru_2850323E8];

    v31 = v23;
    v24 = [MEMORY[0x277CCAC80] scannerWithString:v23];
    v25 = [MEMORY[0x277CBEAF8] currentLocale];
    [v24 setLocale:v25];

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

      v12 = [v27 decimalNumberWithDecimal:v33];
    }

    else
    {
      v12 = [MEMORY[0x277CCA980] notANumber];
    }

    v13 = v32;
  }

  if (v12)
  {
LABEL_27:
    v30 = [(WFAskForInputAction *)self output];
    [v30 addObject:v12];
  }

LABEL_28:
  [(WFHandleIntentAction *)self finishRunningWithError:0];
}

- (void)getOutputFromIntentResponse:(id)a3 completionHandler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFAskForInputAction.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = objc_opt_class();
  v10 = v7;
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

  v14 = [v11 result];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_27;
  }

  v16 = [v14 type];
  if (v16 > 3)
  {
    switch(v16)
    {
      case 4:
        v17 = [v15 dateValue];
        break;
      case 5:
        v17 = [v15 timeValue];
        break;
      case 6:
        v17 = [v15 dateAndTimeValue];
        break;
      default:
        goto LABEL_27;
    }
  }

  else
  {
    switch(v16)
    {
      case 1:
        v17 = [v15 stringValue];
        break;
      case 2:
        v17 = [v15 numberValue];
        break;
      case 3:
        v17 = [v15 urlValue];
        break;
      default:
LABEL_27:
        v8[2](v8, 0);
        goto LABEL_28;
    }
  }

  v18 = v17;
  if (!v17)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [MEMORY[0x277CBEA80] currentCalendar];
    v20 = [v19 dateFromComponents:v18];

    v18 = v20;
  }

  v21 = objc_opt_new();
  [v21 addObject:v18];
  (v8)[2](v8, v21);

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v56[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFAskForInputAction *)self userInterface];
  v6 = [v5 userInterfaceType];
  v7 = [v6 isEqualToString:*MEMORY[0x277CFC708]];

  if (v7)
  {
    v55.receiver = self;
    v55.super_class = WFAskForInputAction;
    [(WFHandleIntentAction *)&v55 runAsynchronouslyWithInput:v4];
  }

  else
  {
    v56[0] = @"Date";
    v56[1] = @"Time";
    v56[2] = @"Date and Time";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
    v9 = [(WFAskForInputAction *)self inputType];
    v10 = [v8 containsObject:v9];

    v11 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
    v12 = [(WFAskForInputAction *)self promptText];
    [v11 setTitle:v12];

    v13 = dispatch_group_create();
    if (v10)
    {
      v14 = objc_alloc_init(MEMORY[0x277D79EF8]);
      v15 = [(WFAskForInputAction *)self inputType];
      v16 = [(WFAskForInputAction *)self datePickerModeFromInputType:v15];
      [v14 setDatePickerMode:v16];

      v17 = [(WFAskForInputAction *)self defaultAnswer];

      if (v17)
      {
        dispatch_group_enter(v13);
        v18 = MEMORY[0x277CFC2F8];
        v19 = [(WFAskForInputAction *)self defaultAnswer];
        v20 = [v18 itemWithObject:v19];
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
      v22 = [(WFAskForInputAction *)self inputType];
      v23 = [v22 isEqualToString:@"Number"];

      if (v23)
      {
        v24 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionAllowsDecimalNumbers" ofClass:objc_opt_class()];
        v42 = [v24 BOOLValue];

        v25 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionAllowsNegativeNumbers" ofClass:objc_opt_class()];
        v26 = [v25 BOOLValue];

        v21 = objc_alloc_init(MEMORY[0x277D7A178]);
        v27 = [(WFAskForInputAction *)self defaultAnswer];
        [v21 setText:v27];

        v28 = MEMORY[0x277D7A620];
        if (!v42)
        {
          v28 = MEMORY[0x277D7A640];
        }

        [v21 setKeyboardType:*v28];
        [v21 setAllowsNegativeNumbers:v26];
        [v21 setPlaceholder:@"0"];
      }

      else
      {
        v21 = objc_alloc_init(MEMORY[0x277D7A178]);
        v29 = [(WFAskForInputAction *)self defaultAnswer];
        [v21 setText:v29];

        v30 = [(WFAskForInputAction *)self inputType];
        v31 = [v30 isEqualToString:@"URL"];

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
          v34 = [v33 BOOLValue];

          [v21 setMultiline:v34];
          v35 = MEMORY[0x277D7A678];
          if (!v34)
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

- (id)datePickerModeFromInputType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Date"])
  {
    v4 = MEMORY[0x277D7A3A0];
  }

  else
  {
    v5 = [v3 isEqualToString:@"Time"];
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)defaultAnswer
{
  v3 = [(WFAskForInputAction *)self inputType];
  v4 = objc_opt_class();
  if ([v3 isEqualToString:@"Number"])
  {
    v5 = [(WFAskForInputAction *)self parameterValueForKey:@"WFAskActionDefaultAnswerNumber" ofClass:objc_opt_class()];
    v6 = [MEMORY[0x277CCABB8] localizedStringFromNumber:v5 numberStyle:1];

    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"URL"])
  {
    v7 = @"WFAskActionDefaultAnswerURL";
  }

  else
  {
    if ([v3 isEqualToString:@"Date"])
    {
      v7 = @"WFAskActionDefaultAnswerDate";
    }

    else if ([v3 isEqualToString:@"Time"])
    {
      v7 = @"WFAskActionDefaultAnswerTime";
    }

    else
    {
      if (![v3 isEqualToString:@"Date and Time"])
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
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
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

  v8 = [(WFAskForInputAction *)self inputType];
  if ([v8 isEqualToString:@"Text"])
  {
    v11 = @"What’s the text?";
LABEL_20:
    v9 = WFLocalizedString(v11);
    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"Number"])
  {
    v11 = @"What number?";
    goto LABEL_20;
  }

  if ([v8 isEqualToString:@"URL"])
  {
    v11 = @"What URL?";
    goto LABEL_20;
  }

  if ([v8 isEqualToString:@"Date"])
  {
    v11 = @"What date?";
    goto LABEL_20;
  }

  if ([v8 isEqualToString:@"Time"])
  {
    v11 = @"What time?";
    goto LABEL_20;
  }

  if ([v8 isEqualToString:@"Date and Time"])
  {
    v11 = @"What date and time?";
    goto LABEL_20;
  }

LABEL_7:
  v8 = [(WFAskForInputAction *)self parameterForKey:@"WFAskActionPrompt"];
  v9 = [v8 localizedPlaceholder];
LABEL_21:
  v10 = v9;

LABEL_22:

  return v10;
}

- (NSString)inputType
{
  v3 = objc_opt_class();

  return [(WFAskForInputAction *)self parameterValueForKey:@"WFInputType" ofClass:v3];
}

@end