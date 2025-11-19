@interface WFAddToReadingListAction
- (id)service;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)addReadingListItem:(id)a3 title:(id)a4 previewText:(id)a5 withService:(id)a6 error:(id *)a7;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFAddToReadingListAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  if (v6)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to add %2$@ to your Reading List?");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%@” to add item(s) to your Reading List?");
    [v7 localizedStringWithFormat:v9, v8, v12];
  }
  v10 = ;

  return v10;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFAddToReadingListAction *)self input];
  v7 = v4;
  v6 = v4;
  WFGetContentLocationFromURLActionInput();
}

void __71__WFAddToReadingListAction_getContentDestinationWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [MEMORY[0x277CFC238] locationWithSystemAppBundleIdentifier:*MEMORY[0x277D7A2C8]];
    (*(v2 + 16))(v2, v5, 0);
  }
}

- (void)addReadingListItem:(id)a3 title:(id)a4 previewText:(id)a5 withService:(id)a6 error:(id *)a7
{
  [a6 addReadingListItemWithURL:a3 title:a4 previewText:a5 error:a7];
  v8 = objc_opt_new();
  [(WFAddToReadingListAction *)self setExtendedOperation:v8];
}

- (id)service
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSSReadingListClass_softClass;
  v10 = getSSReadingListClass_softClass;
  if (!getSSReadingListClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getSSReadingListClass_block_invoke;
    v6[3] = &unk_278C222B8;
    v6[4] = &v7;
    __getSSReadingListClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 defaultReadingList];

  return v4;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [v4 generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 numberOfItems];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9 service];
    v11 = [v6 items];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke_2;
    v14[3] = &unk_278C19D00;
    v15 = *(a1 + 32);
    v16 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke_4;
    v13[3] = &unk_278C21F18;
    v13[4] = v15;
    v12 = v10;
    [v11 if_enumerateAsynchronouslyInSequence:v14 completionHandler:v13];
  }

  else
  {
    [v9 finishRunningWithError:v7];
  }
}

void __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) contentPermissionRequestor];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke_3;
  v12[3] = &unk_278C19CD8;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v6;
  v14 = v9;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [v11 getTitleWithPermissionRequestor:v8 completionHandler:v12];
}

void __55__WFAddToReadingListAction_runAsynchronouslyWithInput___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 URL];
  v7 = a1[6];
  v9 = 0;
  [v3 addReadingListItem:v6 title:v5 previewText:0 withService:v7 error:&v9];

  v8 = v9;
  (*(a1[7] + 16))();
}

@end