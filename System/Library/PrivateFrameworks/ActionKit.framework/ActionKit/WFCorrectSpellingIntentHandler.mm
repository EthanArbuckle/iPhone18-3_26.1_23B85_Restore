@interface WFCorrectSpellingIntentHandler
- (void)handleCorrectSpelling:(id)spelling completion:(id)completion;
- (void)resolveTextForCorrectSpelling:(id)spelling withCompletion:(id)completion;
@end

@implementation WFCorrectSpellingIntentHandler

- (void)handleCorrectSpelling:(id)spelling completion:(id)completion
{
  v5 = getUITextCheckerClass;
  completionCopy = completion;
  spellingCopy = spelling;
  v8 = objc_alloc_init(v5());
  availableLanguages = [getUITextCheckerClass() availableLanguages];
  firstObject = [availableLanguages firstObject];
  v11 = firstObject;
  v12 = @"en";
  if (firstObject)
  {
    v12 = firstObject;
  }

  v13 = v12;

  text = [spellingCopy text];

  v15 = [[WFCorrectSpellingIntentResponse alloc] initWithCode:4 userActivity:0];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __67__WFCorrectSpellingIntentHandler_handleCorrectSpelling_completion___block_invoke;
  v22 = &unk_278C18E58;
  v23 = v8;
  v24 = v13;
  v16 = v13;
  v17 = v8;
  v18 = [text if_map:&v19];
  [(WFCorrectSpellingIntentResponse *)v15 setText:v18, v19, v20, v21, v22];

  completionCopy[2](completionCopy, v15);
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

- (void)resolveTextForCorrectSpelling:(id)spelling withCompletion:(id)completion
{
  completionCopy = completion;
  text = [spelling text];
  v7 = [text if_map:&__block_literal_global_128];
  (*(completion + 2))(completionCopy, v7);
}

@end