@interface WFAskLLMResponseViewController
- (BOOL)shouldHideSashView;
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (double)targetHeightForAnimatingToProposedHeight:(double)a3;
- (id)nestedScrollView;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)askContainerForHomeGestureUpdate;
- (void)configureCell:(id)a3;
- (void)updateContent:(id)a3 withCompletionHandler:(id)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation WFAskLLMResponseViewController

- (id)nestedScrollView
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v3 = [(WFCompactPlatterViewController *)self scrollView];
  v4 = [v3 subviews];
  v5 = [v2 arrayWithArray:v4];

  if ([v5 count])
  {
    while (1)
    {
      v6 = [v5 lastObject];
      [v5 removeLastObject];
      v7 = v6;
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
      v8 = [v7 subviews];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(v8);
            }

            [v5 addObject:*(*(&v15 + 1) + 8 * i)];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(WFAskLLMResponseViewController *)self contentCollectionPreviewController];
  v3 = [v2 shouldHideSashView];

  return v3;
}

- (void)askContainerForHomeGestureUpdate
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D7D2C0] object:0];
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = [(WFCompactPlatterViewController *)self platterView];
  v5 = [v4 visualStylingProviderForCategory:a3];

  return v5;
}

- (void)configureCell:(id)a3
{
  v4 = a3;
  v5 = [(WFCompactPlatterViewController *)self appearanceProvider];
  [v5 configureChooseFromListDialogCell:v4];
}

- (double)targetHeightForAnimatingToProposedHeight:(double)a3
{
  [(WFCompactPlatterViewController *)self maximumExpectedVisibleContentHeight];
  if (result > a3)
  {
    return a3;
  }

  return result;
}

- (void)updateContent:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WFCompactPlatterViewController *)self setContentViewController:0];
  v8 = objc_alloc_init(MEMORY[0x277D7D2B8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__WFAskLLMResponseViewController_updateContent_withCompletionHandler___block_invoke;
  v11[3] = &unk_278C36F90;
  v11[4] = self;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  [v10 prepareContentCollection:v7 withCompletionHandler:v11];
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

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  v6 = [(WFAskLLMResponseViewController *)self contentCollectionPreviewController];
  [v6 contentHeightForWidth:a3];
  v8 = v7;

  if (v8 >= a4)
  {
    return a4;
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
  v3 = [(WFAskLLMResponseViewController *)self nestedScrollView];
  v4 = v3;
  if (v3)
  {
    [v3 contentSize];
    v6 = v5;
    [v4 bounds];
    [v4 setScrollEnabled:v6 > v7];
  }
}

@end