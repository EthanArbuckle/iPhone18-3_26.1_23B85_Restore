@interface WFMarkupActionUIKitUserInterface
- (id)editedItems;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l;
- (void)showWithPreviewItems:(id)items completionHandler:(id)handler;
@end

@implementation WFMarkupActionUIKitUserInterface

- (id)editedItems
{
  previewItems = [(WFMarkupActionUIKitUserInterface *)self previewItems];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__WFMarkupActionUIKitUserInterface_editedItems__block_invoke;
  v6[3] = &unk_278C36AA8;
  v6[4] = self;
  v4 = [previewItems if_compactMap:v6];

  return v4;
}

id __47__WFMarkupActionUIKitUserInterface_editedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) editedPreviewItems];
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 previewItemURL];
  }

  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v8];

  return v9;
}

- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  editedPreviewItems = [(WFMarkupActionUIKitUserInterface *)self editedPreviewItems];
  v12 = itemCopy;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [editedPreviewItems setObject:lCopy forKey:v11];
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  previewItems = [(WFMarkupActionUIKitUserInterface *)self previewItems];
  v6 = [previewItems objectAtIndexedSubscript:index];

  return v6;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  previewItems = [(WFMarkupActionUIKitUserInterface *)self previewItems];
  v4 = [previewItems count];

  return v4;
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__WFMarkupActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFMarkupActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __76__WFMarkupActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(WFMarkupActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFMarkupActionUIKitUserInterface *)self completionHandler];
    editedItems = [(WFMarkupActionUIKitUserInterface *)self editedItems];
    (completionHandler2)[2](completionHandler2, editedItems, errorCopy);
  }

  [(WFMarkupActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithPreviewItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMarkupActionUIKitUserInterface.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"previewItems"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFMarkupActionUIKitUserInterface.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [itemsCopy if_map:&__block_literal_global_2773];
  [(WFMarkupActionUIKitUserInterface *)self setPreviewItems:v10];

  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  [(WFMarkupActionUIKitUserInterface *)self setEditedPreviewItems:v11];

  [(WFMarkupActionUIKitUserInterface *)self setCompletionHandler:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__WFMarkupActionUIKitUserInterface_showWithPreviewItems_completionHandler___block_invoke_2;
  block[3] = &unk_278C37538;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __75__WFMarkupActionUIKitUserInterface_showWithPreviewItems_completionHandler___block_invoke_2(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getQLPreviewControllerClass_softClass;
  v10 = getQLPreviewControllerClass_softClass;
  if (!getQLPreviewControllerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getQLPreviewControllerClass_block_invoke;
    v6[3] = &unk_278C37610;
    v6[4] = &v7;
    __getQLPreviewControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);
  [v4 setDataSource:*(a1 + 32)];
  [v4 setDelegate:*(a1 + 32)];
  [v4 setAppearanceActions:4];
  v5 = [*(a1 + 32) viewControllerForPresenting];
  [v5 presentViewController:v4 animated:1 completion:0];
}

@end