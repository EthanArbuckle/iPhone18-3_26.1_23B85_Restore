@interface WFTrelloAccessResourceUserInterface
- (id)authorizationURLWithCallbackURL:(id)a3;
- (void)authorizeWithCompletionHandler:(id)a3;
@end

@implementation WFTrelloAccessResourceUserInterface

- (void)authorizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"workflow://trello-auth-flow"];
  v6 = [(WFTrelloAccessResourceUserInterface *)self authorizationURLWithCallbackURL:v5];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__414;
  v22 = __Block_byref_object_dispose__415;
  v23 = 0;
  v7 = objc_alloc(MEMORY[0x277CBA9D8]);
  v8 = [v5 scheme];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __70__WFTrelloAccessResourceUserInterface_authorizeWithCompletionHandler___block_invoke;
  v15 = &unk_278C36520;
  v17 = &v18;
  v9 = v4;
  v16 = v9;
  v10 = [v7 initWithURL:v6 callbackURLScheme:v8 completionHandler:&v12];
  v11 = v19[5];
  v19[5] = v10;

  [v19[5] setPresentationContextProvider:{self, v12, v13, v14, v15}];
  [v19[5] start];

  _Block_object_dispose(&v18, 8);
}

void __70__WFTrelloAccessResourceUserInterface_authorizeWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (!v5)
  {
LABEL_7:
    v15 = [v6 domain];
    if ([v15 isEqualToString:*MEMORY[0x277CBA8B8]])
    {
      v16 = [v6 code];

      if (v16 != 1)
      {
LABEL_11:
        (*(*(a1 + 32) + 16))();
        goto LABEL_12;
      }

      v15 = v6;
      v6 = 0;
    }

    goto LABEL_11;
  }

  v9 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  v10 = MEMORY[0x277CBEBC0];
  v11 = [v9 fragment];
  v12 = [v10 dc_dictionaryFromQueryString:v11];
  v13 = [v12 objectForKey:@"token"];

  if (![v13 length])
  {
LABEL_6:

    goto LABEL_7;
  }

  v14 = [MEMORY[0x277CE8898] accountWithToken:v13];
  if (![MEMORY[0x277CE8898] saveAccount:v14])
  {

    goto LABEL_6;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__WFTrelloAccessResourceUserInterface_authorizeWithCompletionHandler___block_invoke_2;
  v17[3] = &unk_278C364F8;
  v18 = *(a1 + 32);
  [v14 refreshWithCompletionHandler:v17];

LABEL_12:
}

void __70__WFTrelloAccessResourceUserInterface_authorizeWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WFTrelloAccessResourceUserInterface_authorizeWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_278C375C8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (id)authorizationURLWithCallbackURL:(id)a3
{
  v19[6] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v4 = a3;
  v5 = [v3 URLWithString:@"https://trello.com/1/authorize"];
  v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"callback_method" value:@"fragment"];
  v19[0] = v6;
  v7 = MEMORY[0x277CCAD18];
  v8 = [v4 absoluteString];

  v9 = [v7 queryItemWithName:@"return_url" value:v8];
  v19[1] = v9;
  v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"scope" value:{@"read, write, account"}];
  v19[2] = v10;
  v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"expiration" value:@"never"];
  v19[3] = v11;
  v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"name" value:@"Shortcuts"];
  v19[4] = v12;
  v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"key" value:*MEMORY[0x277CE8940]];
  v19[5] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];

  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  [v15 setQueryItems:v14];
  v16 = [v15 URL];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end