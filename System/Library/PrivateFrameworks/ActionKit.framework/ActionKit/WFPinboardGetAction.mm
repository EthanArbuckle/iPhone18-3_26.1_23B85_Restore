@interface WFPinboardGetAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFPinboardGetAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = [(WFPinboardGetAction *)self parameterValueForKey:@"WFBookmarkCount" ofClass:objc_opt_class()];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v6 = [(WFPinboardGetAction *)self parameterValueForKey:@"WFPinTags" ofClass:objc_opt_class()];
  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v8 = [v6 componentsSeparatedByCharactersInSet:v7];
  v9 = [v8 mutableCopy];

  [v9 removeObject:&stru_2850323E8];
  v10 = objc_alloc_init(WFPinboardSessionManager);
  v11 = +[WFPinboardAccessResource pinboardUsername];
  [(WFPinboardSessionManager *)v10 setUsername:v11];

  v12 = +[WFPinboardAccessResource pinboardPassword];
  [(WFPinboardSessionManager *)v10 setPassword:v12];

  v13 = +[WFPinboardAccessResource pinboardToken];
  [(WFPinboardSessionManager *)v10 setApiToken:v13];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__WFPinboardGetAction_runAsynchronouslyWithInput___block_invoke;
  v15[3] = &unk_278C21150;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [(WFPinboardSessionManager *)v14 getBookmarksWithTags:v9 limit:unsignedIntegerValue completion:v15];
}

void __50__WFPinboardGetAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"WFPinboardErrorDomain"])
  {
    v7 = [v5 code];

    if (v7 != 1000)
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 32) resourceManager];
    v9 = [v8 resourceObjectsOfClass:objc_opt_class()];
    v6 = [v9 anyObject];

    [v6 logOut];
  }

LABEL_5:
  v10 = MEMORY[0x277CFC560];
  v11 = [*(a1 + 40) baseURL];
  v12 = [v10 attributionSetContentOfURL:v11];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [v17 objectForKey:@"href"];
        v19 = [MEMORY[0x277CBEBC0] URLWithString:v18];
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v21 = MEMORY[0x277CBEBC0];
          v22 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"!$&'()*+, -./0123456789:=?@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~"}];;
          v23 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v22];
          v20 = [v21 URLWithString:v23];

          if (!v20)
          {
            goto LABEL_14;
          }
        }

        v24 = [*(a1 + 32) output];
        v25 = MEMORY[0x277CFC2F8];
        v26 = [v17 objectForKey:@"description"];
        v27 = [v25 itemWithObject:v20 named:v26 attributionSet:v12];
        [v24 addItem:v27];

LABEL_14:
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  [*(a1 + 32) finishRunningWithError:v5];
  v28 = *MEMORY[0x277D85DE8];
}

@end