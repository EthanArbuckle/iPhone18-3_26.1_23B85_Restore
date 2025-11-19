@interface WFCorrectSpellingIntentHandler
- (void)handleCorrectSpelling:(id)a3 completion:(id)a4;
- (void)resolveTextForCorrectSpelling:(id)a3 withCompletion:(id)a4;
@end

@implementation WFCorrectSpellingIntentHandler

- (void)handleCorrectSpelling:(id)a3 completion:(id)a4
{
  v5 = getUITextCheckerClass;
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5());
  v9 = [getUITextCheckerClass() availableLanguages];
  v10 = [v9 firstObject];
  v11 = v10;
  v12 = @"en";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [v7 text];

  v15 = [[WFCorrectSpellingIntentResponse alloc] initWithCode:4 userActivity:0];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __67__WFCorrectSpellingIntentHandler_handleCorrectSpelling_completion___block_invoke;
  v22 = &unk_278C18E58;
  v23 = v8;
  v24 = v13;
  v16 = v13;
  v17 = v8;
  v18 = [v14 if_map:&v19];
  [(WFCorrectSpellingIntentResponse *)v15 setText:v18, v19, v20, v21, v22];

  v6[2](v6, v15);
}

id __67__WFCorrectSpellingIntentHandler_handleCorrectSpelling_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  if ([v3 length])
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) rangeOfMisspelledWordInString:v3 range:0 startingAt:objc_msgSend(v3 wrap:"length") language:{v4, 0, *(a1 + 40)}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v7 = v5;
      v8 = v6;
      v9 = [*(a1 + 32) guessesForWordRange:v5 inString:v6 language:{v3, *(a1 + 40)}];
      if ([v9 count])
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        [v3 replaceCharactersInRange:v7 withString:{v8, v10}];
        v8 = [v10 length];
      }

      v4 = v8 + v7;
    }

    while (v4 < [v3 length]);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)resolveTextForCorrectSpelling:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8 = [a3 text];
  v7 = [v8 if_map:&__block_literal_global_128];
  (*(a4 + 2))(v6, v7);
}

@end