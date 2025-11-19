@interface WFContentGraphViewController
- (BOOL)useSmallBubbles;
- (WFContentGraphViewController)initWithContentItem:(id)a3;
- (void)loadView;
- (void)panNode:(id)a3;
- (void)tapNode:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillLayoutSubviews;
@end

@implementation WFContentGraphViewController

- (void)panNode:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) < 2)
  {
    animator = self->_animator;
    v7 = [v4 view];
    [(CKForceLayoutAnimator *)animator releaseNode:v7];
    goto LABEL_6;
  }

  if (v5 == 2)
  {
    v10 = [(CKForceLayoutAnimator *)self->_animator referenceView];
    [v4 translationInView:v10];
    v12 = v11;
    v14 = v13;

    v15 = [(CKForceLayoutAnimator *)self->_animator referenceView];
    [v4 setTranslation:v15 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];

    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeTranslation(&v21, v12, v14);
    v16 = self->_animator;
    v17 = [v4 view];
    v18 = [v4 view];
    [v18 center];
    [(CKForceLayoutAnimator *)v16 fixNode:v17 atPosition:vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, v19), *&v21.a, v20))];

    [(CKForceLayoutAnimator *)self->_animator setAlpha:0.100000001];
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v6 = self->_animator;
    v7 = [v4 view];
    v8 = [v4 view];
    [v8 center];
    [(CKForceLayoutAnimator *)v6 fixNode:v7 atPosition:?];

LABEL_6:
  }

LABEL_8:
}

- (void)tapNode:(id)a3
{
  v4 = a3;
  v5 = [(WFContentGraphViewController *)self presentedViewController];
  if (v5)
  {
  }

  else if (!self->_coercing)
  {
    v6 = [v4 view];
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
    [v7 setFromValue:&unk_2850AB3F0];
    [v7 setToValue:&unk_2850AB400];
    [v7 setDuration:0.300000012];
    LODWORD(v8) = 2139095039;
    [v7 setRepeatCount:v8];
    [v7 setAutoreverses:1];
    v9 = [v6 layer];
    [v9 addAnimation:v7 forKey:@"pulsate"];

    self->_coercing = 1;
    v10 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__WFContentGraphViewController_tapNode___block_invoke;
    v12[3] = &unk_278C375A0;
    v13 = v6;
    v14 = self;
    v11 = v6;
    dispatch_async(v10, v12);
  }
}

void __40__WFContentGraphViewController_tapNode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) node];
  v3 = [MEMORY[0x277CFC298] new];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__WFContentGraphViewController_tapNode___block_invoke_2;
  v6[3] = &unk_278C37008;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 runCoercionWithOptions:v3 completionHandler:v6];
}

void __40__WFContentGraphViewController_tapNode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WFContentGraphViewController_tapNode___block_invoke_3;
  v11[3] = &unk_278C37690;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __40__WFContentGraphViewController_tapNode___block_invoke_3(uint64_t a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) count])
  {
    *(*(a1 + 40) + 992) = 0;
    v5 = [*(a1 + 48) layer];
    [v5 removeAnimationForKey:@"pulsate"];

    v4 = *(a1 + 56);
    if (!v4)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = *MEMORY[0x277D7CB30];
      v23[0] = *MEMORY[0x277CCA450];
      v8 = WFLocalizedString(@"Failed to coerce content items");
      v24[0] = v8;
      v23[1] = *MEMORY[0x277CCA470];
      v9 = WFLocalizedString(@"The coercion path failed to produce any content items.");
      v24[1] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v4 = [v6 errorWithDomain:v7 code:3 userInfo:v10];
    }

    v11 = *(a1 + 40);
    v12 = WFUserInterfaceFromViewController();
    v13 = [MEMORY[0x277CFC218] alertWithError:v4];
    [v12 presentAlert:v13];

    goto LABEL_11;
  }

  if ([*(a1 + 32) count] == 1)
  {
    v2 = [WFContentItemViewController alloc];
    v3 = [*(a1 + 32) firstObject];
    v4 = [(WFContentItemViewController *)v2 initWithContentItem:v3];

    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) count] >= 2)
  {
    v4 = objc_alloc_init(WFContentItemsViewController);
    [(WFContentItemsViewController *)v4 setContentItems:*(a1 + 32)];
    if (v4)
    {
LABEL_10:
      v14 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
      v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:*(a1 + 40) action:sel_done];
      v16 = [(WFContentItemsViewController *)v4 navigationItem];
      [v16 setRightBarButtonItem:v15];

      [v14 setModalPresentationStyle:2];
      v17 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __40__WFContentGraphViewController_tapNode___block_invoke_4;
      v21[3] = &unk_278C375A0;
      v21[4] = v17;
      v22 = *(a1 + 48);
      [v17 presentViewController:v14 animated:1 completion:v21];

LABEL_11:
      v18 = *MEMORY[0x277D85DE8];
      return;
    }
  }

LABEL_12:
  v20 = [*(a1 + 48) layer];
  [v20 removeAnimationForKey:@"pulsate"];
  v19 = *MEMORY[0x277D85DE8];
}

void __40__WFContentGraphViewController_tapNode___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 992) = 0;
  v1 = [*(a1 + 40) layer];
  [v1 removeAnimationForKey:@"pulsate"];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = WFContentGraphViewController;
  [(WFContentGraphViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(WFContentGraphViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [v5 colorWithAlphaComponent:0.95];
  [v4 setBackgroundColor:v6];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = WFContentGraphViewController;
  [(WFContentGraphViewController *)&v5 viewDidLayoutSubviews];
  animator = self->_animator;
  [(CKForceLayoutAnimator *)animator alpha];
  [(CKForceLayoutAnimator *)animator setAlpha:v4 + 0.100000001];
}

- (void)loadView
{
  v42 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = WFContentGraphViewController;
  [(WFContentGraphViewController *)&v40 loadView];
  v2 = [(WFContentGraphViewController *)self view];
  [v2 setClipsToBounds:1];

  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(WFContentGraphViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [CKForceLayoutAnimator alloc];
  v6 = [(WFContentGraphViewController *)self view];
  v7 = [(CKForceLayoutAnimator *)v5 initWithReferenceView:v6];
  animator = self->_animator;
  self->_animator = v7;

  v9 = [(WFContentGraphViewController *)self useSmallBubbles];
  v10 = 150.0;
  if (v9)
  {
    v10 = 60.0;
  }

  [(CKForceLayoutAnimator *)self->_animator setLinkDistance:v10];
  v11 = [(WFContentGraphViewController *)self useSmallBubbles];
  v12 = -5000.0;
  if (v11)
  {
    v12 = -1000.0;
  }

  [(CKForceLayoutAnimator *)self->_animator setCharge:v12];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3042000000;
  v37 = __Block_byref_object_copy__4419;
  v38 = __Block_byref_object_dispose__4420;
  v39 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __40__WFContentGraphViewController_loadView__block_invoke;
  v33[3] = &unk_278C36FE0;
  v33[4] = self;
  v33[5] = &v34;
  v13 = [v33 copy];
  objc_storeWeak(v35 + 5, v13);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [(WFContentItem *)self->_contentItem allSupportedItemClasses];
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v15)
  {
    v16 = *v30;
    obj = v14;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = MEMORY[0x277CFC2D8];
        contentItem = self->_contentItem;
        v21 = [MEMORY[0x277CFC298] new];
        v22 = [v19 searchForCoercingItem:contentItem toItemClass:v18 options:v21];

        for (j = 0; ; j = v24)
        {
          v24 = [v22 nextPathNode];

          if (!v24)
          {
            break;
          }

          v25 = v13[2](v13, v24);
        }
      }

      v14 = obj;
      v15 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v15);
  }

  [(CKForceLayoutAnimator *)self->_animator setAlpha:0.25];
  _Block_object_dispose(&v34, 8);
  objc_destroyWeak(&v39);
  v26 = *MEMORY[0x277D85DE8];
}

WFContentCoercionNodeView *__40__WFContentGraphViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 1008) nodes];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __40__WFContentGraphViewController_loadView__block_invoke_2;
    v31[3] = &unk_278C36FB8;
    v5 = v3;
    v32 = v5;
    v6 = [v4 objectsPassingTest:v31];
    v7 = [v6 anyObject];

    if (!v7)
    {
      v8 = *MEMORY[0x277CBF348];
      v9 = *(MEMORY[0x277CBF348] + 8);
      if ([*(a1 + 32) useSmallBubbles])
      {
        v10 = 50.0;
      }

      else
      {
        v10 = 100.0;
      }

      v11 = [WFContentCoercionNodeView alloc];
      v12 = [v5 parent];
      v7 = [(WFContentCoercionNodeView *)v11 initWithFrame:v12 == 0 isRootNode:v8, v9, v10, v10];

      [(WFContentCoercionNodeView *)v7 setNode:v5];
      v13 = [(WFContentCoercionNodeView *)v7 node];
      v14 = [v13 parent];

      if (v14)
      {
        v15 = [*(a1 + 32) view];
        [v15 bounds];
        Width = CGRectGetWidth(v34);
        v17 = [*(a1 + 32) view];
        [v17 bounds];
        v18 = CGRectGetWidth(v35);
        v19 = Width + arc4random_uniform(v18);
        v20 = [*(a1 + 32) view];
        [v20 bounds];
        Height = CGRectGetHeight(v36);
        [(WFContentCoercionNodeView *)v7 setCenter:v19, arc4random_uniform(Height)];
      }

      v22 = [*(a1 + 32) view];
      [v22 addSubview:v7];

      [*(*(a1 + 32) + 1008) addNode:v7];
      v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:*(a1 + 32) action:sel_tapNode_];
      v24 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:*(a1 + 32) action:sel_panNode_];
      [(WFContentCoercionNodeView *)v7 addGestureRecognizer:v23];
      [(WFContentCoercionNodeView *)v7 addGestureRecognizer:v24];
    }

    v25 = [(WFContentCoercionNodeView *)v7 node];
    v26 = [v25 parent];

    if (!v26)
    {
      objc_storeStrong((*(a1 + 32) + 1016), v7);
    }

    WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
    v28 = [v5 parent];
    v29 = WeakRetained[2](WeakRetained, v28);

    if (v29)
    {
      [*(*(a1 + 32) + 1008) linkNode:v7 toNode:v29];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __40__WFContentGraphViewController_loadView__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 node];
  v8 = [v7 parent];

  if (v8)
  {
    do
    {
      v9 = [v8 itemOrItemClass];
      [v6 addObject:objc_opt_class()];

      v10 = [v8 parent];

      v8 = v10;
    }

    while (v10);
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [*(a1 + 32) parent];
  if (v12)
  {
    v13 = v12;
    do
    {
      v14 = [v13 itemOrItemClass];
      [v11 addObject:objc_opt_class()];

      v15 = [v13 parent];

      v13 = v15;
    }

    while (v15);
  }

  v16 = [v5 node];
  v17 = [v16 itemOrItemClass];
  v18 = objc_opt_class();
  v19 = [*(a1 + 32) itemOrItemClass];
  if (v18 == objc_opt_class())
  {
    v20 = [v6 isEqual:v11];
  }

  else
  {
    v20 = 0;
  }

  *a3 = v20;

  v21 = *a3;
  return v21;
}

- (BOOL)useSmallBubbles
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (WFContentGraphViewController)initWithContentItem:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContentGraphViewController.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"contentItem"}];
  }

  v12.receiver = self;
  v12.super_class = WFContentGraphViewController;
  v7 = [(WFContentGraphViewController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentItem, a3);
    v9 = WFLocalizedString(@"Content Item Graph");
    [(WFContentGraphViewController *)v8 setTitle:v9];
  }

  return v8;
}

@end