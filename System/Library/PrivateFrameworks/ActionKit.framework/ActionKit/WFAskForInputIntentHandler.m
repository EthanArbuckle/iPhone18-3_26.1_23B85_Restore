@interface WFAskForInputIntentHandler
- (void)handleAskForInput:(id)a3 completion:(id)a4;
- (void)resolveDateAndTimeAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveDateAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveDefaultURLAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveNumberAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveQuestionForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveStringAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveTimeAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveTypeForAskForInput:(id)a3 withCompletion:(id)a4;
- (void)resolveUrlAnswerForAskForInput:(id)a3 withCompletion:(id)a4;
@end

@implementation WFAskForInputIntentHandler

- (void)handleAskForInput:(id)a3 completion:(id)a4
{
  v20 = a3;
  v5 = a4;
  v6 = [v20 type];
  if ((v6 - 1) >= 6)
  {
    v8 = [[WFAskForInputIntentResponse alloc] initWithCode:5 userActivity:0];
    v5[2](v5, v8);
  }

  else
  {
    v7 = off_278C1B570[v6 - 1];
    v8 = [[WFAskForInputIntentResponse alloc] initWithCode:4 userActivity:0];
    v9 = [v20 valueForKey:v7];
    v10 = [v20 _codableDescription];
    v11 = [v10 attributeByName:v7];
    v12 = [v11 metadata];

    v13 = [MEMORY[0x277CD4208] localizerForLanguage:0];
    v14 = [v9 _intents_readableTitleWithLocalizer:v13 metadata:v12];

    v15 = [WFAskForInputResult alloc];
    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    v18 = [(WFAskForInputResult *)v15 initWithIdentifier:v17 displayString:v14];

    -[WFAskForInputResult setType:](v18, "setType:", [v20 type]);
    v19 = [v20 type];
    if (v19 > 3)
    {
      switch(v19)
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
      switch(v19)
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
    v5[2](v5, v8);
  }
}

- (void)resolveDateAndTimeAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 dateAndTimeAnswer];
  if (v7 && (v8 = v7, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD3B78];
    v11 = [v13 dateAndTimeAnswer];
    v12 = [v10 successWithResolvedDateComponents:v11];
    v6[2](v6, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    v11 = [MEMORY[0x277CD3B78] needsValue];
    v6[2](v6, v11);
  }
}

- (void)resolveTimeAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 timeAnswer];
  if (v7 && (v8 = v7, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD3B78];
    v11 = [v13 timeAnswer];
    v12 = [v10 successWithResolvedDateComponents:v11];
    v6[2](v6, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    v11 = [MEMORY[0x277CD3B78] needsValue];
    v6[2](v6, v11);
  }
}

- (void)resolveDateAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 dateAnswer];
  if (v7 && (v8 = v7, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD3B78];
    v11 = [v13 dateAnswer];
    v12 = [v10 successWithResolvedDateComponents:v11];
    v6[2](v6, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    v11 = [MEMORY[0x277CD3B78] needsValue];
    v6[2](v6, v11);
  }
}

- (void)resolveUrlAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 urlAnswer];
  if (v7 && (v8 = v7, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = MEMORY[0x277CD4288];
    v11 = [v13 urlAnswer];
    v12 = [v10 successWithResolvedURL:v11];
    v6[2](v6, v12);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    v11 = [MEMORY[0x277CD4288] needsValue];
    v6[2](v6, v11);
  }
}

- (void)resolveDefaultURLAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v5 = MEMORY[0x277CD4218];
  v6 = a4;
  v7 = [v5 notRequired];
  (*(a4 + 2))(v6, v7);
}

- (void)resolveNumberAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 numberAnswer];
  if (v7 && (v8 = v7, v9 = [(WFAskForInputIntentHandler *)self resolvedValue], v8, v9))
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:0];
    v10 = [v12 numberAnswer];
    [v10 doubleValue];
    v11 = [WFAskForInputNumberAnswerResolutionResult successWithResolvedValue:?];
    v6[2](v6, v11);
  }

  else
  {
    [(WFAskForInputIntentHandler *)self setResolvedValue:1];
    v10 = +[WFAskForInputNumberAnswerResolutionResult needsValue];
    v6[2](v6, v10);
  }
}

- (void)resolveStringAnswerForAskForInput:(id)a3 withCompletion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 stringAnswer];
  if ([v7 length])
  {
    v8 = [(WFAskForInputIntentHandler *)self resolvedValue];

    if (v8)
    {
      [(WFAskForInputIntentHandler *)self setResolvedValue:0];
      v9 = MEMORY[0x277CD4218];
      v10 = [v12 stringAnswer];
      v11 = [v9 successWithResolvedString:v10];
      v6[2](v6, v11);

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(WFAskForInputIntentHandler *)self setResolvedValue:1];
  v10 = [MEMORY[0x277CD4218] needsValue];
  v6[2](v6, v10);
LABEL_6:
}

- (void)resolveTypeForAskForInput:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if ([v7 type])
  {
    +[WFAskForInputTypeResolutionResult successWithResolvedAskForInputType:](WFAskForInputTypeResolutionResult, "successWithResolvedAskForInputType:", [v7 type]);
  }

  else
  {
    +[WFAskForInputTypeResolutionResult needsValue];
  }
  v6 = ;
  v5[2](v5, v6);
}

- (void)resolveQuestionForAskForInput:(id)a3 withCompletion:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v11 question];
  if (![v6 length])
  {
    v7 = [v11 type] - 2;
    if (v7 > 4)
    {
      v8 = @"What’s the text?";
    }

    else
    {
      v8 = off_278C1B548[v7];
    }

    v9 = WFLocalizedString(v8);

    v6 = v9;
  }

  v10 = [MEMORY[0x277CD4218] successWithResolvedString:v6];
  v5[2](v5, v10);
}

@end