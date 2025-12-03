@interface WFChooseFromListIntentHandler
- (void)handleChooseFromList:(id)list completion:(id)completion;
- (void)provideChosenItemsOptionsCollectionForChooseFromList:(id)list withCompletion:(id)completion;
- (void)resolveChosenItemsForChooseFromList:(id)list withCompletion:(id)completion;
- (void)resolvePromptForChooseFromList:(id)list withCompletion:(id)completion;
@end

@implementation WFChooseFromListIntentHandler

- (void)resolvePromptForChooseFromList:(id)list withCompletion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  prompt = [listCopy prompt];
  v7 = [prompt length];

  v8 = MEMORY[0x277CD4218];
  if (v7)
  {
    prompt2 = [listCopy prompt];
    v10 = [v8 successWithResolvedString:prompt2];
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v11 = MEMORY[0x277CD3B90];
    prompt2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 deferredLocalizedIntentsStringWithFormat:@"DisambiguationSelectionPromptDialog" fromTable:@"Localizable" bundle:prompt2];
    v12 = [v8 successWithResolvedString:v10];
    completionCopy[2](completionCopy, v12);

    completionCopy = v12;
  }
}

- (void)provideChosenItemsOptionsCollectionForChooseFromList:(id)list withCompletion:(id)completion
{
  v5 = MEMORY[0x277CD3E28];
  completionCopy = completion;
  v7 = [v5 alloc];
  v8 = [v7 initWithItems:MEMORY[0x277CBEBF8]];
  (*(completion + 2))(completionCopy, v8, 0);
}

- (void)resolveChosenItemsForChooseFromList:(id)list withCompletion:(id)completion
{
  v15[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  listCopy = list;
  chosenItems = [listCopy chosenItems];
  if ([chosenItems count])
  {
    [listCopy chosenItems];
  }

  else
  {
    [listCopy originalItems];
  }
  v8 = ;

  if ([v8 count] < 2)
  {
    if ([v8 count])
    {
      firstObject = [v8 firstObject];
      v10 = [WFChooseFromListItemResolutionResult successWithResolvedChooseFromListItem:firstObject];
      v14 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      completionCopy[2](completionCopy, v11);
    }

    else
    {
      firstObject = +[WFChooseFromListItemResolutionResult needsValue];
      v13 = firstObject;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      completionCopy[2](completionCopy, v10);
    }
  }

  else
  {
    firstObject = [WFChooseFromListItemResolutionResult disambiguationWithChooseFromListItemsToDisambiguate:v8];
    v15[0] = firstObject;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    completionCopy[2](completionCopy, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleChooseFromList:(id)list completion:(id)completion
{
  completionCopy = completion;
  listCopy = list;
  v9 = [[WFChooseFromListIntentResponse alloc] initWithCode:4 userActivity:0];
  chosenItems = [listCopy chosenItems];

  firstObject = [chosenItems firstObject];
  [(WFChooseFromListIntentResponse *)v9 setSelectedItem:firstObject];

  completionCopy[2](completionCopy, v9);
}

@end