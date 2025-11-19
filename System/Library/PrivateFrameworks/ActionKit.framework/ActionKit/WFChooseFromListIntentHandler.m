@interface WFChooseFromListIntentHandler
- (void)handleChooseFromList:(id)a3 completion:(id)a4;
- (void)provideChosenItemsOptionsCollectionForChooseFromList:(id)a3 withCompletion:(id)a4;
- (void)resolveChosenItemsForChooseFromList:(id)a3 withCompletion:(id)a4;
- (void)resolvePromptForChooseFromList:(id)a3 withCompletion:(id)a4;
@end

@implementation WFChooseFromListIntentHandler

- (void)resolvePromptForChooseFromList:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [v13 prompt];
  v7 = [v6 length];

  v8 = MEMORY[0x277CD4218];
  if (v7)
  {
    v9 = [v13 prompt];
    v10 = [v8 successWithResolvedString:v9];
    v5[2](v5, v10);
  }

  else
  {
    v11 = MEMORY[0x277CD3B90];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 deferredLocalizedIntentsStringWithFormat:@"DisambiguationSelectionPromptDialog" fromTable:@"Localizable" bundle:v9];
    v12 = [v8 successWithResolvedString:v10];
    v5[2](v5, v12);

    v5 = v12;
  }
}

- (void)provideChosenItemsOptionsCollectionForChooseFromList:(id)a3 withCompletion:(id)a4
{
  v5 = MEMORY[0x277CD3E28];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [v7 initWithItems:MEMORY[0x277CBEBF8]];
  (*(a4 + 2))(v6, v8, 0);
}

- (void)resolveChosenItemsForChooseFromList:(id)a3 withCompletion:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v6 chosenItems];
  if ([v7 count])
  {
    [v6 chosenItems];
  }

  else
  {
    [v6 originalItems];
  }
  v8 = ;

  if ([v8 count] < 2)
  {
    if ([v8 count])
    {
      v9 = [v8 firstObject];
      v10 = [WFChooseFromListItemResolutionResult successWithResolvedChooseFromListItem:v9];
      v14 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      v5[2](v5, v11);
    }

    else
    {
      v9 = +[WFChooseFromListItemResolutionResult needsValue];
      v13 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      v5[2](v5, v10);
    }
  }

  else
  {
    v9 = [WFChooseFromListItemResolutionResult disambiguationWithChooseFromListItemsToDisambiguate:v8];
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v5[2](v5, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleChooseFromList:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [[WFChooseFromListIntentResponse alloc] initWithCode:4 userActivity:0];
  v7 = [v6 chosenItems];

  v8 = [v7 firstObject];
  [(WFChooseFromListIntentResponse *)v9 setSelectedItem:v8];

  v5[2](v5, v9);
}

@end