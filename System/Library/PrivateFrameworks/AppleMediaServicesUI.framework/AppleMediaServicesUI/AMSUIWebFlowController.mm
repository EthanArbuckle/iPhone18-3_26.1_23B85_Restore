@interface AMSUIWebFlowController
- (AMSUIWebClientContext)context;
- (AMSUIWebContainerViewController)currentContainer;
- (AMSUIWebContainerViewController)rootContainer;
- (AMSUIWebFlowController)initWithRootContainer:(id)a3 context:(id)a4;
- (id)dismissViewController;
- (id)replaceWithPageModel:(id)a3 forContainer:(id)a4 options:(id)a5;
- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)a3;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)_takeSnapshotFromContainer:(id)a3 completion:(id)a4;
- (void)performSafeTransitionFrom:(id)a3 block:(id)a4;
- (void)popViewController;
- (void)popViewControllerToRelativeIndex:(int64_t)a3;
- (void)presentWithOptions:(id)a3;
- (void)pushWithOptions:(id)a3;
- (void)startTimeout:(double)a3 queue:(id)a4 block:(id)a5;
- (void)startTimeoutInterruption;
- (void)stopTimeoutInterruption;
@end

@implementation AMSUIWebFlowController

- (AMSUIWebFlowController)initWithRootContainer:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIWebFlowController;
  v8 = [(AMSUIWebFlowController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v7);
    objc_storeWeak(&v9->_rootContainer, v6);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    timeouts = v9->_timeouts;
    v9->_timeouts = v10;
  }

  return v9;
}

- (AMSUIWebContainerViewController)currentContainer
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AMSUIWebFlowController *)self rootContainer];
  v4 = [v3 nextContainer];

  if (v4)
  {
    do
    {
      v5 = [v3 nextContainer];

      v6 = [v5 nextContainer];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (id)dismissViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AMSUIWebFlowController *)self currentContainer];
  v4 = [MEMORY[0x1E698CAC8] currentProcess];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.ios.StoreKitUIService"];

  v7 = v3;
  if (v6)
  {
    v8 = [(AMSUIWebFlowController *)self currentContainer];
    v9 = [v8 navigationController];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v3;
    }

    v7 = v11;
  }

  v12 = objc_alloc_init(MEMORY[0x1E698CA48]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__AMSUIWebFlowController_dismissViewController__block_invoke;
  v18[3] = &unk_1E7F24590;
  v19 = v3;
  v20 = self;
  v13 = v12;
  v21 = v13;
  v14 = v3;
  [v7 ams_dismissViewControllerAnimated:1 includePresented:1 completion:v18];
  v15 = v21;
  v16 = v13;

  return v13;
}

uint64_t __47__AMSUIWebFlowController_dismissViewController__block_invoke(id *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [a1[4] handleModalDismissal];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[5];
    v5 = objc_opt_class();
    v6 = [a1[5] context];
    v7 = [v6 logKey];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Completed dismiss", &v10, 0x16u);
  }

  result = [a1[6] finishWithSuccess];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performSafeTransitionFrom:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSUIWebFlowController_performSafeTransitionFrom_block___block_invoke;
  v9[3] = &unk_1E7F245E0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __58__AMSUIWebFlowController_performSafeTransitionFrom_block___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCoordinator];
  v3 = [v2 isInteractive];

  if (v3)
  {
    v4 = [*(a1 + 32) transitionCoordinator];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AMSUIWebFlowController_performSafeTransitionFrom_block___block_invoke_2;
    v6[3] = &unk_1E7F262F0;
    v7 = *(a1 + 40);
    [v4 notifyWhenInteractionChangesUsingBlock:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)popViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(AMSUIWebFlowController *)self currentContainer];
  v7 = [(AMSUIWebFlowController *)self navigationControllerForViewController:v3];

  v4 = [v7 viewControllers];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [v7 settingsCompatiblePopViewController:{objc_msgSend(WeakRetained, "disableSettingsNavigationProxy")}];
  }
}

- (void)popViewControllerToRelativeIndex:(int64_t)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AMSUIWebFlowController *)self context];
  v6 = [v5 flowController];
  v7 = [v6 currentContainer];

  v8 = [v7 pushPresentationDelegate];

  if (v8)
  {
    do
    {
      v21 = [v7 pushPresentationDelegate];

      v9 = [v21 pushPresentationDelegate];

      v10 = v21;
      v7 = v21;
    }

    while (v9);
  }

  else
  {
    v10 = v7;
  }

  v22 = v10;
  v11 = [(AMSUIWebFlowController *)self currentContainer];
  v12 = [(AMSUIWebFlowController *)self navigationControllerForViewController:v11];

  WeakRetained = objc_loadWeakRetained(&self->_context);
  v14 = [v12 settingsCompatibleViewControllers:{objc_msgSend(WeakRetained, "disableSettingsNavigationProxy")}];

  v15 = [v14 count];
  while (--v15 >= 0)
  {
    v16 = [v14 objectAtIndexedSubscript:v15];
    v17 = [v16 ams_hasDescendentChildViewController:v22];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_10:
  v18 = v15 + a3;
  if (a3 || v18 != [v14 count] - 1)
  {
    if ((v18 & 0x8000000000000000) != 0 || v18 >= [v14 count])
    {
      [(AMSUIWebFlowController *)self popViewController];
    }

    else
    {
      v19 = [v14 objectAtIndexedSubscript:v18];
      v20 = objc_loadWeakRetained(&self->_context);
      [v12 settingsCompatiblePopToViewController:v19 disableProxy:{objc_msgSend(v20, "disableSettingsNavigationProxy")}];
    }
  }
}

- (void)presentWithOptions:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = [(AMSUIWebFlowController *)self context];
    v9 = [v8 logKey];
    *buf = 138543618;
    v50 = v7;
    v51 = 2114;
    v52 = v9;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Presenting new page", buf, 0x16u);
  }

  v10 = [(AMSUIWebFlowController *)self currentContainer];
  v11 = [v4 loadingPage];
  v12 = [v11 navigationBar];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v4 navigationBar];
  }

  v15 = v14;

  v16 = [AMSUIWebPlaceholderViewController alloc];
  v17 = [v4 loadingPage];
  v18 = [(AMSUIWebFlowController *)self context];
  v19 = [v10 appearance];
  v20 = [(AMSUIWebPlaceholderViewController *)v16 initWithModel:v17 context:v18 appearance:v19];

  [(AMSUIWebPlaceholderViewController *)v20 setAnimateFadeIn:1];
  v21 = [v10 appearance];
  v22 = [v21 copy];

  [v22 setClientHandlesDismissability:0];
  v23 = [AMSUIWebContainerViewController alloc];
  v24 = [(AMSUIWebFlowController *)self context];
  v25 = [(AMSUIWebContainerViewController *)v23 initWithViewController:v20 appearance:v22 navigationBar:v15 context:v24];

  v26 = [v4 pageData];
  [(AMSUIWebContainerViewController *)v25 setPageInfo:v26];

  v27 = [(AMSUIWebContainerViewController *)v25 appearance];
  v28 = [v4 backgroundColor];
  [v27 updateBackgroundColorWithJSString:v28];

  [(AMSUIWebContainerViewController *)v25 setModalPresentationDelegate:v10];
  -[AMSUIWebContainerViewController setContainerIndex:](v25, "setContainerIndex:", [v10 containerIndex] + 1);
  [v10 setNextContainer:v25];
  v29 = 2 * ([v4 modalPresentationStyle] != 1);
  v30 = 2 * ([v4 modalTransitionStyle] == 1);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__AMSUIWebFlowController_presentWithOptions___block_invoke;
  aBlock[3] = &unk_1E7F26318;
  v31 = v25;
  v44 = v31;
  v45 = self;
  v47 = v29;
  v48 = v30;
  v46 = v10;
  v32 = v10;
  v33 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __45__AMSUIWebFlowController_presentWithOptions___block_invoke_2;
  v38[3] = &unk_1E7F26368;
  v39 = v4;
  v40 = self;
  v41 = v31;
  v42 = v33;
  v34 = v31;
  v35 = v33;
  v36 = v4;
  [(AMSUIWebFlowController *)self _takeSnapshotFromContainer:v32 completion:v38];

  v37 = *MEMORY[0x1E69E9840];
}

void __45__AMSUIWebFlowController_presentWithOptions___block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:*(a1 + 32)];
  [v4 setDelegate:*(a1 + 40)];
  [v4 setModalPresentationStyle:*(a1 + 56)];
  [v4 setModalTransitionStyle:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = [v4 presentationController];
  [v3 setDelegate:v2];

  [*(a1 + 48) presentViewController:v4 animated:1 completion:0];
}

void __45__AMSUIWebFlowController_presentWithOptions___block_invoke_2(id *a1)
{
  if ([a1[4] deferredPresentation])
  {
    v2 = [a1[5] context];
    v3 = [v2 flowController];
    v4 = [v3 refreshPageForContainer:a1[6] options:a1[4]];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__AMSUIWebFlowController_presentWithOptions___block_invoke_3;
    v6[3] = &unk_1E7F26340;
    v7 = a1[6];
    v8 = a1[7];
    [v4 addFinishBlock:v6];
  }

  else
  {
    v5 = *(a1[7] + 2);

    v5();
  }
}

uint64_t __45__AMSUIWebFlowController_presentWithOptions___block_invoke_3(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [*(a1 + 32) setShouldSkipInitialRefresh:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)pushWithOptions:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AMSUIWebFlowController *)self currentContainer];
  v6 = [(AMSUIWebFlowController *)self navigationControllerForViewController:v5];

  v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [(AMSUIWebPlaceholderViewController *)v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = [(AMSUIWebFlowController *)self context];
      v12 = [v11 logKey];
      *buf = 138543618;
      v47 = v10;
      v48 = 2114;
      v49 = v12;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Pushing new page", buf, 0x16u);
    }

    v13 = [(AMSUIWebFlowController *)self currentContainer];
    v14 = [AMSUIWebPlaceholderViewController alloc];
    v15 = [v4 loadingPage];
    v16 = [(AMSUIWebFlowController *)self context];
    v17 = [v13 appearance];
    v8 = [(AMSUIWebPlaceholderViewController *)v14 initWithModel:v15 context:v16 appearance:v17];

    [(AMSUIWebPlaceholderViewController *)v8 setAnimateFadeIn:1];
    v18 = [v4 loadingPage];
    v19 = [v18 navigationBar];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [v4 navigationBar];
    }

    v22 = v21;

    v26 = [AMSUIWebContainerViewController alloc];
    v27 = [v13 appearance];
    v28 = [(AMSUIWebFlowController *)self context];
    v29 = [(AMSUIWebContainerViewController *)v26 initWithViewController:v8 appearance:v27 navigationBar:v22 context:v28];

    v30 = [(AMSUIWebContainerViewController *)v29 appearance];
    v31 = [v4 backgroundColor];
    [v30 updateBackgroundColorWithJSString:v31];

    v32 = [v4 pageData];
    [(AMSUIWebContainerViewController *)v29 setPageInfo:v32];

    v33 = [v13 modalPresentationDelegate];
    [(AMSUIWebContainerViewController *)v29 setModalPresentationDelegate:v33];

    [(AMSUIWebContainerViewController *)v29 setPushPresentationDelegate:v13];
    -[AMSUIWebContainerViewController setContainerIndex:](v29, "setContainerIndex:", [v13 containerIndex] + 1);
    [v13 setNextContainer:v29];
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __42__AMSUIWebFlowController_pushWithOptions___block_invoke;
    v41 = &unk_1E7F24A88;
    v42 = v4;
    v43 = self;
    v44 = v13;
    v45 = v29;
    v34 = v29;
    v35 = v13;
    v36 = _Block_copy(&v38);
    [(AMSUIWebFlowController *)self _takeSnapshotFromContainer:v35 completion:v36, v38, v39, v40, v41];
  }

  else
  {
    if (!v7)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v22 = [(AMSUIWebPlaceholderViewController *)v8 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = [(AMSUIWebFlowController *)self context];
      v25 = [v24 logKey];
      *buf = 138543618;
      v47 = v23;
      v48 = 2114;
      v49 = v25;
      _os_log_impl(&dword_1BB036000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Push failed, no navigation controller found.", buf, 0x16u);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __42__AMSUIWebFlowController_pushWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredPresentation];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 context];
    v5 = [v4 flowController];
    v6 = [v5 refreshPageForContainer:*(a1 + 56) options:*(a1 + 32)];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__AMSUIWebFlowController_pushWithOptions___block_invoke_2;
    v13[3] = &unk_1E7F24568;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14 = v7;
    v15 = v8;
    v16 = v9;
    [v6 addFinishBlock:v13];
  }

  else
  {
    v12 = [v3 navigationControllerForViewController:*(a1 + 48)];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) context];
    [v12 settingsCompatiblePushViewController:v10 disableProxy:{objc_msgSend(v11, "disableSettingsNavigationProxy")}];
  }
}

void __42__AMSUIWebFlowController_pushWithOptions___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [*(a1 + 32) setShouldSkipInitialRefresh:1];
  v4 = [*(a1 + 40) navigationControllerForViewController:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  [v4 settingsCompatiblePushViewController:v2 disableProxy:{objc_msgSend(v3, "disableSettingsNavigationProxy")}];
}

- (id)replaceWithPageModel:(id)a3 forContainer:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [v8 loadPage];
  objc_initWeak(&location, v9);
  objc_initWeak(&from, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke;
  v17[3] = &unk_1E7F263B8;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v14 = v10;
  v20 = v14;
  [v11 addSuccessBlock:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_12;
  v16[3] = &unk_1E7F24410;
  v16[4] = self;
  [v11 addErrorBlock:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v11;
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_2;
  v3[3] = &unk_1E7F263B8;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  objc_copyWeak(&v7, (a1 + 64));
  objc_copyWeak(&v8, (a1 + 72));
  v6 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v3);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) windowSize];
  v4 = v3;
  v6 = v5;
  v7 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_3;
  v8[3] = &unk_1E7F26390;
  objc_copyWeak(&v11, (a1 + 64));
  objc_copyWeak(&v12, (a1 + 72));
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  [v2 _setWindowSize:v7 onContainer:v8 completion:{v4, v6}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_3(id *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if ([a1[4] reuseExistingPage] && (objc_msgSend(WeakRetained, "containedViewController"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) == 0))
  {
    v6 = [WeakRetained containedViewController];
  }

  else
  {
    v6 = [a1[5] createViewControllerForContainer:WeakRetained];
  }

  v7 = v6;
  if (v6)
  {
    v8 = [WeakRetained appearance];
    v9 = [a1[5] backgroundColor];
    [v8 updateBackgroundColorWithJSString:v9];

    if (objc_opt_respondsToSelector())
    {
      v10 = a1[5];
      v11 = [WeakRetained appearance];
      [v7 willPresentPageModel:v10 appearance:v11];
    }

    [WeakRetained updateRefreshControlForPageModel:a1[5]];
    [WeakRetained updateSafeAreaEdgesForPageModel:a1[5]];
    v12 = [a1[5] navigationBar];
    [WeakRetained applyNavigationModel:v12];

    [WeakRetained setupToolbarAnimated:0];
    v13 = [WeakRetained containedViewController];

    if (v13 != v7)
    {
      [WeakRetained setDisableReappearPlaceholder:{objc_msgSend(a1[5], "disableReappearPlaceholder")}];
      [WeakRetained replaceContentWithViewController:v7 animated:objc_msgSend(a1[4] pageModel:"animated") completion:{a1[5], 0}];
      v14 = [a1[5] impressionEvent];

      if (v14)
      {
        v15 = [v3 context];
        v16 = [v15 metrics];
        v17 = [a1[5] impressionEvent];
        [v16 enqueueEvent:v17];
      }
    }
  }

  else
  {
    v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = [v3 context];
      v22 = [v21 logKey];
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to present a nil view controller", &v24, 0x16u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __68__AMSUIWebFlowController_replaceWithPageModel_forContainer_options___block_invoke_12(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v6 = [*(a1 + 32) context];
    v7 = [v6 logKey];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Encountered error when loading page.", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)startTimeoutInterruption
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIWebFlowController *)self timeoutLock];
  [v3 lock];

  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = [(AMSUIWebFlowController *)self context];
    v8 = [v7 logKey];
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Starting timeout interruption.", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(AMSUIWebFlowController *)self timeouts];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) pause];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(AMSUIWebFlowController *)self timeoutLock];
  [v14 unlock];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)startTimeout:(double)a3 queue:(id)a4 block:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E698C968];
  v10 = a4;
  v11 = [v9 sharedWebUIConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v14 = [(AMSUIWebFlowController *)self context];
    v15 = [v14 logKey];
    *buf = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Starting timeout...", buf, 0x16u);
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __51__AMSUIWebFlowController_startTimeout_queue_block___block_invoke;
  v25 = &unk_1E7F263E0;
  v26 = self;
  v27 = v8;
  v16 = v8;
  v17 = [AMSUIWebFlowTimeout timeoutWithTimeout:v10 queue:&v22 block:a3];

  v18 = [(AMSUIWebFlowController *)self timeoutLock:v22];
  [v18 lock];

  v19 = [(AMSUIWebFlowController *)self timeouts];
  [v19 addObject:v17];

  [v17 start];
  v20 = [(AMSUIWebFlowController *)self timeoutLock];
  [v20 unlock];

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __51__AMSUIWebFlowController_startTimeout_queue_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 timeoutLock];
  [v5 lock];

  v6 = [*(a1 + 32) timeouts];
  [v6 removeObject:v4];

  v7 = [*(a1 + 32) timeoutLock];
  [v7 unlock];

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

- (void)stopTimeoutInterruption
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(AMSUIWebFlowController *)self timeoutLock];
  [v3 lock];

  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = [(AMSUIWebFlowController *)self context];
    v8 = [v7 logKey];
    *buf = 138543618;
    v23 = v6;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Stopping timeout interruption.", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(AMSUIWebFlowController *)self timeouts];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v14 reset];
        [v14 start];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [(AMSUIWebFlowController *)self timeoutLock];
  [v15 unlock];

  v16 = *MEMORY[0x1E69E9840];
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2;
  v5[3] = &unk_1E7F26390;
  objc_copyWeak(&v8, a1 + 5);
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if (([a1[4] suppressErrorPage] & 1) == 0)
  {
    v4 = [WeakRetained currentContainer];
    v5 = [v4 containedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v7)
      {
        v7 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = AMSLogKey();
        *buf = 138543618;
        v31 = v9;
        v32 = 2114;
        v33 = v10;
        _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping error page since container is currently an error.", buf, 0x16u);
      }

LABEL_7:

      goto LABEL_17;
    }

    v11 = [a1[5] userInfo];
    v12 = [v11 objectForKeyedSubscript:@"skipErrorView"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [a1[5] userInfo];
      v14 = [v13 objectForKeyedSubscript:@"skipErrorView"];
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v7)
        {
          v7 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v8 = [v7 OSLogObject];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          v17 = AMSLogKey();
          *buf = 138543618;
          v31 = v16;
          v32 = 2114;
          v33 = v17;
          _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping error page.", buf, 0x16u);
        }

        goto LABEL_7;
      }
    }

    else
    {
    }

    v18 = [AMSUIWebErrorPageModel alloc];
    v19 = a1[5];
    v20 = [WeakRetained context];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_25;
    v26[3] = &unk_1E7F26408;
    objc_copyWeak(&v28, a1 + 6);
    objc_copyWeak(&v29, a1 + 7);
    v27 = a1[4];
    v21 = [(AMSUIWebErrorPageModel *)v18 initWithError:v19 context:v20 actionBlock:v26];

    v22 = [WeakRetained context];
    v23 = [v22 flowController];
    v24 = [v23 replaceWithPageModel:v21 forContainer:v3 options:0];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
  }

LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_25(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  if ((a2 & 1) == 0)
  {
    v5 = [WeakRetained _refreshPageWithForContainer:v4 options:*(a1 + 32) isRetry:1];
  }
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_2_27(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = AMSErrorWithFormat();
    [*(a1 + 32) finishWithError:v2];
  }
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = [WeakRetained context];
  v10 = [v9 dataProvider];
  v11 = [v10 loadPageRenderData];

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_4;
  v26 = &unk_1E7F26458;
  v12 = v8;
  v27 = v12;
  v13 = v5;
  v28 = v13;
  [v11 addFinishBlock:&v23];
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    if (v6)
    {
      [*(a1 + 32) finishWithError:v6];
      goto LABEL_11;
    }

    v14 = [WeakRetained currentContainer];

    if (v14 == v12)
    {
      v17 = *(a1 + 40);
      v18 = [WeakRetained currentRefreshToken];
      LOBYTE(v17) = [v17 isEqualToString:v18];

      if (v17)
      {
        v19 = [WeakRetained replaceWithPageModel:v13 forContainer:v12 options:*(a1 + 48)];
        v20 = *(a1 + 32);
        v21 = [v19 promiseAdapter];
        [v20 finishWithPromise:v21];

LABEL_10:
        goto LABEL_11;
      }

      v15 = *(a1 + 32);
      v22 = *MEMORY[0x1E698C548];
    }

    else
    {
      v15 = *(a1 + 32);
      v16 = *MEMORY[0x1E698C548];
    }

    v19 = AMSCustomError();
    [v15 finishWithError:v19];
    goto LABEL_10;
  }

LABEL_11:
}

void __71__AMSUIWebFlowController__refreshPageWithForContainer_options_isRetry___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = MEMORY[0x1E695DF90];
  v6 = [*(a1 + 32) pageMetrics];
  v7 = [v5 dictionaryWithDictionary:v6];

  v8 = [*(a1 + 40) navigationBar];
  v9 = [v8 title];
  [v7 setObject:v9 forKeyedSubscript:@"pageType"];

  v10 = [*(a1 + 32) pageRenderPresenter];
  [v10 endWithActivity:0 pageMetrics:v7];

  if (!a3)
  {
    v11 = [*(a1 + 32) pageRenderPresenter];
    v12 = [v14 objectForKeyedSubscript:@"properties"];
    [v11 importTimings:v12];
  }

  v13 = [*(a1 + 32) pageRenderPresenter];
  [v13 enqueueEvent];
}

- (void)_takeSnapshotFromContainer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = [v6 containedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 containedViewController];
    [v6 cacheScrollViewPositionFor:v10];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__5;
    v25 = __Block_byref_object_dispose__5;
    v11 = [AMSUIWebPlaceholderViewController alloc];
    v12 = [v6 containedViewController];
    v13 = [(AMSUIWebFlowController *)self context];
    v14 = [v6 appearance];
    v26 = [(AMSUIWebPlaceholderViewController *)v11 initWithSnapshot:v12 context:v13 appearance:v14];

    objc_initWeak(&location, v6);
    v15 = v22[5];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__AMSUIWebFlowController__takeSnapshotFromContainer_completion___block_invoke;
    v16[3] = &unk_1E7F264A8;
    objc_copyWeak(&v19, &location);
    v18 = &v21;
    v17 = v7;
    [v15 awaitSnapshotWithCompletion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v21, 8);
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

void __64__AMSUIWebFlowController__takeSnapshotFromContainer_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained containedViewController];
  [*(*(*(a1 + 40) + 8) + 40) setOriginalViewController:v2];

  [WeakRetained replaceContentWithViewController:*(*(*(a1 + 40) + 8) + 40) animated:0 pageModel:0 completion:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = [(AMSUIWebFlowController *)self currentContainer];
  v4 = [v3 supportedInterfaceOrientations];

  return v4;
}

- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)a3
{
  v3 = [(AMSUIWebFlowController *)self currentContainer];
  v4 = [v3 preferredInterfaceOrientationForPresentation];

  return v4;
}

- (AMSUIWebContainerViewController)rootContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_rootContainer);

  return WeakRetained;
}

- (AMSUIWebClientContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end