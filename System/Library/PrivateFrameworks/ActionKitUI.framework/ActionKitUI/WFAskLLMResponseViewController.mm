@interface WFAskLLMResponseViewController
- (BOOL)shouldHideSashView;
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (double)targetHeightForAnimatingToProposedHeight:(double)height;
- (id)nestedScrollView;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)askContainerForHomeGestureUpdate;
- (void)configureCell:(id)cell;
- (void)updateContent:(id)content withCompletionHandler:(id)handler;
- (void)viewWillLayoutSubviews;
@end

@implementation WFAskLLMResponseViewController

- (id)nestedScrollView
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  scrollView = [(WFCompactPlatterViewController *)self scrollView];
  subviews = [scrollView subviews];
  v5 = [v2 arrayWithArray:subviews];

  if ([v5 count])
  {
    while (1)
    {
      lastObject = [v5 lastObject];
      [v5 removeLastObject];
      v7 = lastObject;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      subviews2 = [v7 subviews];
      v9 = [subviews2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(subviews2);
            }

            [v5 addObject:*(*(&v15 + 1) + 8 * i)];
          }

          v10 = [subviews2 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      if (![v5 count])
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)shouldHideSashView
{
  contentCollectionPreviewController = [(WFAskLLMResponseViewController *)self contentCollectionPreviewController];
  shouldHideSashView = [contentCollectionPreviewController shouldHideSashView];

  return shouldHideSashView;
}

- (void)askContainerForHomeGestureUpdate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D7D2C0] object:0];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  v5 = [platterView visualStylingProviderForCategory:category];

  return v5;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  appearanceProvider = [(WFCompactPlatterViewController *)self appearanceProvider];
  [appearanceProvider configureChooseFromListDialogCell:cellCopy];
}

- (double)targetHeightForAnimatingToProposedHeight:(double)height
{
  [(WFCompactPlatterViewController *)self maximumExpectedVisibleContentHeight];
  if (result > height)
  {
    return height;
  }

  return result;
}

- (void)updateContent:(id)content withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  contentCopy = content;
  [(WFCompactPlatterViewController *)self setContentViewController:0];
  v8 = objc_alloc_init(MEMORY[0x277D7D2B8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__WFAskLLMResponseViewController_updateContent_withCompletionHandler___block_invoke;
  v11[3] = &unk_278C36F90;
  v11[4] = self;
  v12 = v8;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = v8;
  [v10 prepareContentCollection:contentCopy withCompletionHandler:v11];
}

uint64_t __70__WFAskLLMResponseViewController_updateContent_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContentViewController:*(a1 + 40)];
  [*(a1 + 32) loadViewIfNeeded];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  contentCollectionPreviewController = [(WFAskLLMResponseViewController *)self contentCollectionPreviewController];
  [contentCollectionPreviewController contentHeightForWidth:width];
  v8 = v7;

  if (v8 >= height)
  {
    return height;
  }

  else
  {
    return v8;
  }
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = WFAskLLMResponseViewController;
  [(WFAskLLMResponseViewController *)&v8 viewWillLayoutSubviews];
  nestedScrollView = [(WFAskLLMResponseViewController *)self nestedScrollView];
  v4 = nestedScrollView;
  if (nestedScrollView)
  {
    [nestedScrollView contentSize];
    v6 = v5;
    [v4 bounds];
    [v4 setScrollEnabled:v6 > v7];
  }
}

@end