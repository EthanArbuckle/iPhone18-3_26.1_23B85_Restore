@interface WFAskForInputIntentHandler
- (void)handleAskForInput:(id)input completion:(id)completion;
- (void)resolveDateAndTimeAnswerForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveDateAnswerForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveDefaultURLAnswerForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveNumberAnswerForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveQuestionForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveStringAnswerForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveTimeAnswerForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveTypeForAskForInput:(id)input withCompletion:(id)completion;
- (void)resolveUrlAnswerForAskForInput:(id)input withCompletion:(id)completion;
@end

@implementation WFAskForInputIntentHandler

- (void)handleAskForInput:(id)input completion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  type = [inputCopy type];
  if ((type - 1) >= 6)
  {
    v8 = [[WFAskForInputIntentResponse alloc] initWithCode:5 userActivity:0];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v7 = off_278C1B570[type - 1];
    v8 = [[WFAskForInputIntentResponse alloc] initWithCode:4 userActivity:0];
    v9 = [inputCopy valueForKey:v7];
    _codableDescription = [inputCopy _codableDescription];
    v11 = [_codableDescription attributeByName:v7];
    metadata = [v11 metadata];

    v13 = [MEMORY[0x277CD4208] localizerForLanguage:0];
    v14 = [v9 _intents_readableTitleWithLocalizer:v13 metadata:metadata];

    v15 = [WFAskForInputResult alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [(WFAskForInputResult *)v15 initWithIdentifier:uUIDString displayString:v14];

    -[WFAskForInputResult setType:](v18, "setType:", [inputCopy type]);
    type2 = [inputCopy type];
    if (type2 > 3)
    {
      switch(type2)
      {
        case 4:
          [(WFAskForInputResult *)v18 setDateValue:v9];
          break;
        case 5:
          [(WFAskForInputResult *)v18 setTimeValue:v9];
          break;
        case 6:
          [(WFAskForInputResult *)v18 setDateAndTimeValue:v9];
          break;
      }
    }

    else
    {
      switch(type2)
      {
        case 1:
          [(WFAskForInputResult *)v18 setStringValue:v9];
          break;
        case 2:
          [(WFAskForInputResult *)v18 setNumberValue:v9];
          break;
        case 3:
          [(WFAskForInputResult *)v18 setUrlValue:v9];
          break;
      }
    }

    [(WFAskForInputIntentResponse *)v8 setResult:v18];
    completionCopy[2](completionCopy, v8);
  }
}

- (void)resolveDateAndTimeAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  dateAndTimeAnswer = [inputCopy dateAndTimeAnswer];
  if (dateAndTimeAnswer && (v8 = dateAndTimeAnswer, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD3B78];
    dateAndTimeAnswer2 = [inputCopy dateAndTimeAnswer];
    v12 = [v10 successWithResolvedDateComponents:dateAndTimeAnswer2];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    dateAndTimeAnswer2 = [MEMORY[0x277CD3B78] needsValue];
    completionCopy[2](completionCopy, dateAndTimeAnswer2);
  }
}

- (void)resolveTimeAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  timeAnswer = [inputCopy timeAnswer];
  if (timeAnswer && (v8 = timeAnswer, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD3B78];
    timeAnswer2 = [inputCopy timeAnswer];
    v12 = [v10 successWithResolvedDateComponents:timeAnswer2];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    timeAnswer2 = [MEMORY[0x277CD3B78] needsValue];
    completionCopy[2](completionCopy, timeAnswer2);
  }
}

- (void)resolveDateAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  dateAnswer = [inputCopy dateAnswer];
  if (dateAnswer && (v8 = dateAnswer, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD3B78];
    dateAnswer2 = [inputCopy dateAnswer];
    v12 = [v10 successWithResolvedDateComponents:dateAnswer2];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    dateAnswer2 = [MEMORY[0x277CD3B78] needsValue];
    completionCopy[2](completionCopy, dateAnswer2);
  }
}

- (void)resolveUrlAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  urlAnswer = [inputCopy urlAnswer];
  if (urlAnswer && (v8 = urlAnswer, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD4288];
    urlAnswer2 = [inputCopy urlAnswer];
    v12 = [v10 successWithResolvedURL:urlAnswer2];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    urlAnswer2 = [MEMORY[0x277CD4288] needsValue];
    completionCopy[2](completionCopy, urlAnswer2);
  }
}

- (void)resolveDefaultURLAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  v5 = MEMORY[0x277CD4218];
  completionCopy = completion;
  notRequired = [v5 notRequired];
  (*(completion + 2))(completionCopy, notRequired);
}

- (void)resolveNumberAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  numberAnswer = [inputCopy numberAnswer];
  if (numberAnswer && (v8 = numberAnswer, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    numberAnswer2 = [inputCopy numberAnswer];
    [numberAnswer2 doubleValue];
    v11 = [WFAskForInputNumberAnswerResolutionResult successWithResolvedValue:?];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    numberAnswer2 = +[WFAskForInputNumberAnswerResolutionResult needsValue];
    completionCopy[2](completionCopy, numberAnswer2);
  }
}

- (void)resolveStringAnswerForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  stringAnswer = [inputCopy stringAnswer];
  if ([stringAnswer length])
  {
    resolvedValue = [(WFAskForInputIntentHandler *)self resolvedValue];

    if (resolvedValue)
    {
      [(WFAskForInputIntentHandler *)self setResolvedValue:0];
      v9 = MEMORY[0x277CD4218];
      stringAnswer2 = [inputCopy stringAnswer];
      v11 = [v9 successWithResolvedString:stringAnswer2];
      completionCopy[2](completionCopy, v11);

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(WFAskForInputIntentHandler *)self setResolvedValue:1];
  stringAnswer2 = [MEMORY[0x277CD4218] needsValue];
  completionCopy[2](completionCopy, stringAnswer2);
LABEL_6:
}

- (void)resolveTypeForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  if ([inputCopy type])
  {
    +[WFAskForInputTypeResolutionResult successWithResolvedAskForInputType:](WFAskForInputTypeResolutionResult, "successWithResolvedAskForInputType:", [inputCopy type]);
  }

  else
  {
    +[WFAskForInputTypeResolutionResult needsValue];
  }
  v6 = ;
  completionCopy[2](completionCopy, v6);
}

- (void)resolveQuestionForAskForInput:(id)input withCompletion:(id)completion
{
  inputCopy = input;
  completionCopy = completion;
  question = [inputCopy question];
  if (![question length])
  {
    v7 = [inputCopy type] - 2;
    if (v7 > 4)
    {
      v8 = @"What’s the text?";
    }

    else
    {
      v8 = off_278C1B548[v7];
    }

    v9 = WFLocalizedString(v8);

    question = v9;
  }

  v10 = [MEMORY[0x277CD4218] successWithResolvedString:question];
  completionCopy[2](completionCopy, v10);
}

@end