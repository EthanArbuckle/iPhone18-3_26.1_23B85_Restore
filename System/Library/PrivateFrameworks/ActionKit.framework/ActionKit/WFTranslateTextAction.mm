@interface WFTranslateTextAction
- (id)disabledOnPlatforms;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)translateText:(id)a3 fromLocale:(id)a4 toLocale:(id)a5 translator:(id)a6 completionBlock:(id)a7;
@end

@implementation WFTranslateTextAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a5;
  v8 = a3;
  v9 = WFLocalizedString(@"Allow “%1$@” to use %2$@ to translate?");
  v10 = [v6 localizedStringWithFormat:v9, v7, v8];

  return v10;
}

- (void)translateText:(id)a3 fromLocale:(id)a4 toLocale:(id)a5 translator:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v13 isEqual:v14])
  {
    v17 = [(WFTranslateTextAction *)self output];
    [v17 addObject:v12];

    v16[2](v16, 0);
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v18 = get_LTTextTranslationRequestClass_softClass;
    v30 = get_LTTextTranslationRequestClass_softClass;
    if (!get_LTTextTranslationRequestClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __get_LTTextTranslationRequestClass_block_invoke;
      v26[3] = &unk_278C222B8;
      v26[4] = &v27;
      __get_LTTextTranslationRequestClass_block_invoke(v26);
      v18 = v28[3];
    }

    v19 = v18;
    _Block_object_dispose(&v27, 8);
    v20 = [[v18 alloc] initWithSourceLocale:v13 targetLocale:v14];
    v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v12];
    [v20 setText:v21];

    [v20 setTaskHint:5];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __86__WFTranslateTextAction_translateText_fromLocale_toLocale_translator_completionBlock___block_invoke;
    v24[3] = &unk_278C1A568;
    v24[4] = self;
    v25 = v16;
    [v20 setTextTranslationHandler:v24];
    request = self->_request;
    self->_request = v20;
    v23 = v20;

    [v15 translate:v23];
  }
}

void __86__WFTranslateTextAction_translateText_fromLocale_toLocale_translator_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v17 length];
  if (v7 || v9)
  {
    if (v17)
    {
      v10 = [*(a1 + 32) output];
      v11 = [v17 string];
      [v10 addObject:v11];
LABEL_5:

      goto LABEL_6;
    }

    if (v7)
    {
      v12 = [v7 translations];
      v13 = [v12 firstObject];
      v14 = [v13 formattedString];

      if (v14)
      {
        v10 = [*(a1 + 32) output];
        v11 = [v7 translations];
        v15 = [v11 firstObject];
        v16 = [v15 formattedString];
        [v10 addObject:v16];

        goto LABEL_5;
      }
    }
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C21150;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 getStringRepresentations:v6];
}

void __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [*(a1 + 32) parameterValueForKey:@"WFSelectedFromLanguage" ofClass:objc_opt_class()];
    v8 = [*(a1 + 32) parameterValueForKey:@"WFSelectedLanguage" ofClass:objc_opt_class()];
    if ([v7 isEqualToString:v8])
    {
      [*(a1 + 32) setOutput:*(a1 + 40)];
      [*(a1 + 32) finishRunningWithError:0];
    }

    else
    {
      v9 = objc_alloc_init(get_LTTranslatorClass());
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x3032000000;
      v23[3] = __Block_byref_object_copy__11266;
      v23[4] = __Block_byref_object_dispose__11267;
      v24 = 0;
      v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v8];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke_176;
      v17[3] = &unk_278C1A540;
      v11 = v7;
      v22 = v23;
      v12 = *(a1 + 32);
      v18 = v11;
      v19 = v12;
      v13 = v10;
      v20 = v13;
      v21 = v9;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke_3;
      v15[3] = &unk_278C1BAA8;
      v15[4] = *(a1 + 32);
      v14 = v21;
      v16 = v14;
      [v5 if_enumerateAsynchronouslyInSequence:v17 completionHandler:v15];

      _Block_object_dispose(v23, 8);
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:0];
  }
}

void __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke_176(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (([*(a1 + 32) isEqualToString:@"Detect Language"] & 1) != 0 || !objc_msgSend(*(a1 + 32), "length"))
  {
    LTTranslatorClass = get_LTTranslatorClass();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke_2;
    v14[3] = &unk_278C1A518;
    v12 = v7;
    v13 = *(a1 + 64);
    v18 = v12;
    v19 = v13;
    v14[4] = *(a1 + 40);
    v15 = v6;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    [LTTranslatorClass languageForText:v15 completion:v14];
  }

  else
  {
    v8 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(a1 + 32)];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1 + 40) translateText:v6 fromLocale:*(*(*(a1 + 64) + 8) + 40) toLocale:*(a1 + 48) translator:*(a1 + 56) completionBlock:v7];
  }
}

void __52__WFTranslateTextAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 dominantLanguage], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 dominantLanguage];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 32) translateText:*(a1 + 40) fromLocale:*(*(*(a1 + 72) + 8) + 40) toLocale:*(a1 + 48) translator:*(a1 + 56) completionBlock:*(a1 + 64)];
  }

  else
  {
    v9 = WFLocalizedString(@"Unable to Detect Language");
    v10 = WFLocalizedString(@"The language of the text provided may not be supported by Translate.");
    v11 = *(a1 + 64);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D7CB30];
    v14 = *MEMORY[0x277CCA450];
    v18[0] = *MEMORY[0x277CCA470];
    v18[1] = v14;
    v19[0] = v9;
    v19[1] = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v16 = [v12 errorWithDomain:v13 code:0x7FFFFFFFFFFFFFFFLL userInfo:v15];
    (*(v11 + 16))(v11, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFTranslateTextAction;
  v2 = [(WFTranslateTextAction *)&v5 disabledOnPlatforms];
  v3 = [v2 arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end