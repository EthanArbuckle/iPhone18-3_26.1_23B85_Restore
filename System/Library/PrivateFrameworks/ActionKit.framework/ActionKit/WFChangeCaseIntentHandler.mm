@interface WFChangeCaseIntentHandler
- (id)stringByApplyingAlternatingCaseToString:(id)string;
- (id)stringByApplyingSentenceCaseToString:(id)string withLocale:(id)locale;
- (id)stringByApplyingTitleCaseToString:(id)string;
- (void)handleChangeCase:(id)case completion:(id)completion;
- (void)resolveTextForChangeCase:(id)case withCompletion:(id)completion;
- (void)resolveTypeForChangeCase:(id)case withCompletion:(id)completion;
@end

@implementation WFChangeCaseIntentHandler

- (id)stringByApplyingAlternatingCaseToString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(stringCopy, "length")}];
  if ([stringCopy length])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [stringCopy substringWithRange:{v6, 1}];
      uppercaseString = [v7 uppercaseString];
      lowercaseString = [v7 lowercaseString];
      v10 = lowercaseString;
      if (v5)
      {
        v11 = uppercaseString;
      }

      else
      {
        v11 = lowercaseString;
      }

      v12 = v11;
      v13 = [v12 length];
      if (v13 == [v7 length])
      {
        [v4 appendString:v12];
        v5 ^= [uppercaseString isEqualToString:v10] ^ 1;
      }

      else
      {
        [v4 appendString:v7];
      }

      ++v6;
    }

    while (v6 < [stringCopy length]);
  }

  return v4;
}

- (id)stringByApplyingTitleCaseToString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  newlineCharacterSet = [v3 newlineCharacterSet];
  v6 = [stringCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v7 = [v6 if_map:&__block_literal_global_178_8562];
  v8 = [v7 componentsJoinedByString:@"\n"];

  return v8;
}

- (id)stringByApplyingSentenceCaseToString:(id)string withLocale:(id)locale
{
  v44 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  localeCopy = locale;
  v7 = localeCopy;
  if (stringCopy)
  {
    v24 = localeCopy;
    v25 = stringCopy;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{stringCopy, 0}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = [&unk_28509CBC0 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v27)
    {
      v26 = *v39;
      do
      {
        v9 = 0;
        do
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(&unk_28509CBC0);
          }

          v28 = v9;
          v10 = *(*(&v38 + 1) + 8 * v9);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v11 = [v8 copy];
          v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v35;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v35 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v34 + 1) + 8 * i);
                v17 = [v16 componentsSeparatedByString:v10];
                v31[0] = MEMORY[0x277D85DD0];
                v31[1] = 3221225472;
                v31[2] = __77__WFChangeCaseIntentHandler_stringByApplyingSentenceCaseToString_withLocale___block_invoke;
                v31[3] = &unk_278C1A1F0;
                v32 = v17;
                v33 = v10;
                v18 = v17;
                v19 = [v18 if_map:v31];
                [v8 replaceObjectsInRange:objc_msgSend(v8 withObjectsFromArray:{"indexOfObject:", v16), 1, v19}];
              }

              v13 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v13);
          }

          v9 = v28 + 1;
        }

        while (v28 + 1 != v27);
        v27 = [&unk_28509CBC0 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v27);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __77__WFChangeCaseIntentHandler_stringByApplyingSentenceCaseToString_withLocale___block_invoke_2;
    v29[3] = &unk_278C20560;
    v7 = v24;
    v30 = v24;
    v20 = [v8 if_map:v29];
    v21 = [v20 componentsJoinedByString:&stru_2850323E8];

    stringCopy = v25;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __77__WFChangeCaseIntentHandler_stringByApplyingSentenceCaseToString_withLocale___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] - 1 == a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 stringByAppendingString:*(a1 + 40)];
  }

  v7 = v6;

  return v7;
}

id __77__WFChangeCaseIntentHandler_stringByApplyingSentenceCaseToString_withLocale___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    v4 = [v3 substringWithRange:{0, 1}];
    v5 = [v4 capitalizedStringWithLocale:*(a1 + 32)];

    v6 = [v3 stringByReplacingCharactersInRange:0 withString:{1, v5}];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (void)handleChangeCase:(id)case completion:(id)completion
{
  completionCopy = completion;
  caseCopy = case;
  text = [caseCopy text];
  type = [caseCopy type];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__WFChangeCaseIntentHandler_handleChangeCase_completion___block_invoke;
  v12[3] = &unk_278C1A1C8;
  v12[4] = self;
  v12[5] = type;
  v10 = [text if_compactMap:v12];
  v11 = [[WFChangeCaseIntentResponse alloc] initWithCode:4 userActivity:0];
  [(WFChangeCaseIntentResponse *)v11 setText:v10];
  completionCopy[2](completionCopy, v11);
}

id __57__WFChangeCaseIntentHandler_handleChangeCase_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = *(a1 + 40);
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v6 = [MEMORY[0x277CBEAF8] currentLocale];
        v7 = [v3 uppercaseStringWithLocale:v6];
        break;
      case 2:
        v6 = [MEMORY[0x277CBEAF8] currentLocale];
        v7 = [v3 lowercaseStringWithLocale:v6];
        break;
      case 3:
        v6 = [MEMORY[0x277CBEAF8] currentLocale];
        v7 = [v3 capitalizedStringWithLocale:v6];
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v5 == 4)
  {
    v8 = [*(a1 + 32) stringByApplyingTitleCaseToString:v3];
LABEL_12:
    v4 = v8;
    goto LABEL_16;
  }

  if (v5 != 5)
  {
    if (v5 != 6)
    {
      goto LABEL_16;
    }

    v8 = [*(a1 + 32) stringByApplyingAlternatingCaseToString:v3];
    goto LABEL_12;
  }

  v9 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v9 stringByApplyingSentenceCaseToString:v3 withLocale:v6];
LABEL_15:
  v4 = v7;

LABEL_16:

  return v4;
}

- (void)resolveTypeForChangeCase:(id)case withCompletion:(id)completion
{
  caseCopy = case;
  completionCopy = completion;
  if ([caseCopy type])
  {
    +[WFChangeCaseTypeResolutionResult successWithResolvedChangeCaseType:](WFChangeCaseTypeResolutionResult, "successWithResolvedChangeCaseType:", [caseCopy type]);
  }

  else
  {
    +[WFChangeCaseTypeResolutionResult needsValue];
  }
  v6 = ;
  completionCopy[2](completionCopy, v6);
}

- (void)resolveTextForChangeCase:(id)case withCompletion:(id)completion
{
  completionCopy = completion;
  text = [case text];
  v7 = [text if_map:&__block_literal_global_8585];
  (*(completion + 2))(completionCopy, v7);
}

@end