@interface QLMovieItemAggregatedViewController
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLMovieItemAggregatedViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  v11 = MEMORY[0x277CE63D8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v15[3] = &unk_278B585C0;
  v15[4] = self;
  v16 = contentsCopy;
  v17 = contextCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = contextCopy;
  v14 = contentsCopy;
  [v11 assetIsAutoloopMedia:v14 completionHandler:v15];
}

void __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1)
{
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  QLRunInMainThread();
}

void __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = off_278B55E18;
  if (!*(a1 + 64))
  {
    v2 = off_278B55E20;
  }

  v3 = *v2;
  v4 = objc_opt_new();
  objc_storeStrong((*(a1 + 32) + 1160), v4);
  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3;
  v8[3] = &unk_278B58570;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v9 = v7;
  v10 = *(a1 + 56);
  [v7 loadPreviewControllerIfNeededWithContents:v5 context:v6 completionHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v7, a1 + 6);
  v4 = a1[4];
  v6 = a1[5];
  v5 = v3;
  QLRunInMainThread();

  objc_destroyWeak(&v7);
}

uint64_t __99__QLMovieItemAggregatedViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained showPreviewViewController:*(a1 + 32)];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(a1 + 40);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end