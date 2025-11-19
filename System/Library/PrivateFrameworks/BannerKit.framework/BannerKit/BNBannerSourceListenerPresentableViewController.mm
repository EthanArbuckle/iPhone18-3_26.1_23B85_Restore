@interface BNBannerSourceListenerPresentableViewController
- (BNBannerSourceListenerPresentableDelegate)delegate;
- (BNBannerSourceListenerPresentableViewController)initWithPresentable:(id)a3;
- (BNBannerSourceListenerPresentableViewController)initWithSpecification:(id)a3 serviceDomain:(id)a4 readyCompletion:(id)a5;
- (BOOL)_isPresentableContextInterfaceAvailable;
- (BOOL)bannerSourcePresentableContext:(id)a3 isConnectingProcessAuthorized:(id)a4 error:(id *)a5;
- (id)_initWithPresentableIdentification:(id)a3 presentableBehavior:(int64_t)a4 contentBehavior:(int64_t)a5 serviceDomain:(id)a6 readyCompletion:(id)a7;
- (id)readyCompletion;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_setBannerAppearState:(int)a3 forPresentable:(id)a4 reason:(id)a5;
- (void)_setReadyCompletion:(id)a3;
- (void)_setUserInteractionWillBegin:(BOOL)a3 forPresentable:(id)a4;
- (void)addPresentableObserver:(id)a3;
- (void)dealloc;
- (void)handleTemplateContentEvent:(int64_t)a3;
- (void)invalidate;
- (void)loadView;
- (void)makeReadyIfPossible;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)removePresentableObserver:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHostNeedsUpdate;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
- (void)viewDidLoad;
@end

@implementation BNBannerSourceListenerPresentableViewController

- (BOOL)_isPresentableContextInterfaceAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_presentableContext)
  {
    v4 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained bannerSourceListenerPresentableShouldEnablePresentableContextInterface:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)invalidate
{
  [(BNBannerSourcePresentableContext *)self->_presentableContext invalidate];
  presentableContext = self->_presentableContext;
  self->_presentableContext = 0;
}

- (void)dealloc
{
  [(BNBannerSourceListenerPresentableViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = BNBannerSourceListenerPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v3 dealloc];
}

- (void)makeReadyIfPossible
{
  v3 = [(BNBannerSourceListenerPresentableViewController *)self readyCompletion];
  if (v3)
  {
    v4 = v3;
    v5 = [(BNBannerSourceListenerPresentableViewController *)self isReady];

    if (v5)
    {
      v7 = [(BNBannerSourceListenerPresentableViewController *)self readyCompletion];
      [(BNBannerSourceListenerPresentableViewController *)self _setReadyCompletion:0];
      v6 = v7;
      if (v7)
      {
        (*(v7 + 16))(v7, self, 0);
        v6 = v7;
      }
    }
  }
}

- (id)readyCompletion
{
  v2 = MEMORY[0x1C6936EC0](self->_readyCompletion, a2);

  return v2;
}

- (id)_initWithPresentableIdentification:(id)a3 presentableBehavior:(int64_t)a4 contentBehavior:(int64_t)a5 serviceDomain:(id)a6 readyCompletion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v28.receiver = self;
  v28.super_class = BNBannerSourceListenerPresentableViewController;
  v15 = [(BNBannerSourceListenerPresentableViewController *)&v28 initWithNibName:0 bundle:0];
  if (v15)
  {
    if (!v12)
    {
      [BNBannerSourceListenerPresentableViewController _initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:];
    }

    v16 = [v12 requesterIdentifier];
    v17 = [v16 copy];
    requesterIdentifier = v15->_requesterIdentifier;
    v15->_requesterIdentifier = v17;

    v19 = [v12 requestIdentifier];
    v20 = [v19 copy];
    requestIdentifier = v15->_requestIdentifier;
    v15->_requestIdentifier = v20;

    v22 = [v12 uniquePresentableIdentifier];
    v23 = [v22 copy];
    uniquePresentableIdentifier = v15->_uniquePresentableIdentifier;
    v15->_uniquePresentableIdentifier = v23;

    v15->_presentableBehavior = a4;
    v15->_contentBehavior = a5;
    v25 = [v13 copy];
    serviceDomain = v15->_serviceDomain;
    v15->_serviceDomain = v25;

    v15->_draggingDismissalEnabled = kBNPresentableContextIsDraggingDismissalEnabledDefault;
    v15->_draggingInteractionEnabled = kBNPresentableContextIsDraggingInteractionEnabledDefault;
    v15->_touchOutsideDismissalEnabled = kBNPresentableContextIsTouchOutsideDismissalEnabledDefault;
    [(BNBannerSourceListenerPresentableViewController *)v15 _setReadyCompletion:v14];
  }

  return v15;
}

- (BNBannerSourceListenerPresentableViewController)initWithSpecification:(id)a3 serviceDomain:(id)a4 readyCompletion:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BNBannerSourceListenerPresentableViewController initWithSpecification:serviceDomain:readyCompletion:];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BNBannerSourceListenerPresentableViewController initWithSpecification:serviceDomain:readyCompletion:];
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  [BNBannerSourceListenerPresentableViewController initWithSpecification:serviceDomain:readyCompletion:];
LABEL_4:
  v11 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "Hosted presentable initialized with presentable specification: %{public}@", &v14, 0xCu);
  }

  v12 = -[BNBannerSourceListenerPresentableViewController _initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:](self, "_initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:", v8, [v8 presentableBehavior], objc_msgSend(v8, "contentBehavior"), v9, v10);

  return v12;
}

- (BNBannerSourceListenerPresentableViewController)initWithPresentable:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [BNBannerSourceListenerPresentableViewController initWithPresentable:];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 providesTemplateContent] & 1) == 0)
  {
    [BNBannerSourceListenerPresentableViewController initWithPresentable:v5];
  }

  v6 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BNEffectivePresentableDescription(v5);
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1C42DC000, v7, OS_LOG_TYPE_DEFAULT, "Hosted presentable initialized with template presentable: %{public}@", &v12, 0xCu);
  }

  v9 = -[BNBannerSourceListenerPresentableViewController _initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:](self, "_initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:", v5, [v5 presentableBehavior], 1, 0, 0);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 129, a3);
    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)v10->_presentable setPresentableContext:v10];
    }

    [(BNBannerSourceListenerPresentableViewController *)v10 setHostNeedsUpdate];
  }

  return v10;
}

- (void)loadView
{
  v3 = objc_alloc_init(BNBannerSourceListenerPresentableViewControllerView);
  [(BNBannerSourceListenerPresentableViewControllerView *)v3 setDelegate:self];
  [(BNBannerSourceListenerPresentableViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v4 viewDidLoad];
  v3 = [(BNBannerSourceListenerPresentableViewController *)self view];
  [v3 setClipsToBounds:1];
}

- (void)setDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_delegate, v6);
  if (!self->_presentable && (objc_opt_respondsToSelector() & 1) != 0 && [v6 bannerSourceListenerPresentableShouldEnablePresentableContextInterface:self])
  {
    v4 = [[BNBannerSourcePresentableContext alloc] initWithPresentableIdentification:self contentBehavior:self->_contentBehavior serviceDomain:self->_serviceDomain];
    presentableContext = self->_presentableContext;
    self->_presentableContext = v4;

    [(BNBannerSourcePresentableContext *)self->_presentableContext setDelegate:self];
  }
}

- (void)handleTemplateContentEvent:(int64_t)a3
{
  p_presentable = &self->_presentable;
  if (self->_presentable)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }
  }

  else
  {
    p_presentable = &self->_presentableContext;
  }

  v5 = *p_presentable;

  [v5 handleTemplateContentEvent:a3];
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = BNEffectivePresentableDescription(v4);
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "Hosted presentable will appear as banner: %{public}@", buf, 0xCu);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:1 forPresentable:v4 reason:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__BNBannerSourceListenerPresentableViewController_presentableWillAppearAsBanner___block_invoke;
  v9[3] = &unk_1E81E47D8;
  v10 = v4;
  v8 = v4;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillAppearAsBanner_ usingBlock:v9];
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = BNEffectivePresentableDescription(v4);
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "Hosted presentable did appear as banner: %{public}@", buf, 0xCu);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:2 forPresentable:v4 reason:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__BNBannerSourceListenerPresentableViewController_presentableDidAppearAsBanner___block_invoke;
  v9[3] = &unk_1E81E47D8;
  v10 = v4;
  v8 = v4;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableDidAppearAsBanner_ usingBlock:v9];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = BNEffectivePresentableDescription(v6);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Hosted presentable will disappear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:3 forPresentable:v6 reason:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__BNBannerSourceListenerPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke;
  v13[3] = &unk_1E81E4788;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillDisappearAsBanner_withReason_ usingBlock:v13];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = BNEffectivePresentableDescription(v6);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Hosted presentable did disappear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:0 forPresentable:v6 reason:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__BNBannerSourceListenerPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke;
  v13[3] = &unk_1E81E4788;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableDidDisappearAsBanner_withReason_ usingBlock:v13];
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = BNEffectivePresentableDescription(v6);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Hosted presentable will NOT appear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  if (self->_presentable)
  {
    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableWillNotAppearAsBanner:self->_presentable withReason:v7];
    }
  }

  else
  {
    [(BNBannerSourcePresentableContext *)self->_presentableContext handlePresentableWillNotAppearWithReason:v7];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__BNBannerSourceListenerPresentableViewController_presentableWillNotAppearAsBanner_withReason___block_invoke;
  v13[3] = &unk_1E81E4788;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillNotAppearAsBanner_withReason_ usingBlock:v13];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v4 = a3;
  [(BNBannerSourceListenerPresentableViewController *)self _setUserInteractionWillBegin:1 forPresentable:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __99__BNBannerSourceListenerPresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_1E81E47D8;
  v7 = v4;
  v5 = v4;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v4 = a3;
  [(BNBannerSourceListenerPresentableViewController *)self _setUserInteractionWillBegin:0 forPresentable:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__BNBannerSourceListenerPresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_1E81E47D8;
  v7 = v4;
  v5 = v4;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)removePresentableObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (BOOL)bannerSourcePresentableContext:(id)a3 isConnectingProcessAuthorized:(id)a4 error:(id *)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained bannerSourceListenerPresentable:self isConnectingProcessAuthorized:v7 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setHostNeedsUpdate
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(BNPresentable *)self->_presentable isDraggingDismissalEnabled];
  }

  else
  {
    v3 = kBNPresentableContextIsDraggingDismissalEnabledDefault;
  }

  self->_draggingDismissalEnabled = v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(BNPresentable *)self->_presentable isDraggingInteractionEnabled];
  }

  else
  {
    v4 = kBNPresentableContextIsDraggingInteractionEnabledDefault;
  }

  self->_draggingInteractionEnabled = v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(BNPresentable *)self->_presentable isTouchOutsideDismissalEnabled];
  }

  else
  {
    v5 = kBNPresentableContextIsTouchOutsideDismissalEnabledDefault;
  }

  self->_touchOutsideDismissalEnabled = v5;
}

- (void)_setBannerAppearState:(int)a3 forPresentable:(id)a4 reason:(id)a5
{
  v6 = *&a3;
  v9 = a4;
  v8 = a5;
  self->_bannerAppearState = v6;
  if (self->_presentable)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (objc_opt_respondsToSelector())
        {
          [(BNPresentable *)self->_presentable presentableDidAppearAsBanner:self->_presentable];
        }
      }

      else if (v6 == 3 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(BNPresentable *)self->_presentable presentableWillDisappearAsBanner:self->_presentable withReason:v8];
      }
    }

    else if (v6)
    {
      if (v6 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [(BNPresentable *)self->_presentable presentableWillAppearAsBanner:self->_presentable];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableDidDisappearAsBanner:self->_presentable withReason:v8];
    }
  }

  else
  {
    [(BNBannerSourcePresentableContext *)self->_presentableContext updatePresentableAppearState:v6 reason:v8];
  }
}

- (void)_setUserInteractionWillBegin:(BOOL)a3 forPresentable:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_presentable)
  {
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        [(BNPresentable *)self->_presentable userInteractionWillBeginForBannerForPresentable:self->_presentable];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable userInteractionDidEndForBannerForPresentable:self->_presentable];
    }
  }

  else
  {
    [(BNBannerSourcePresentableContext *)self->_presentableContext updateUserInteractionWillBegin:v4];
  }
}

- (BNBannerSourceListenerPresentableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setReadyCompletion:(id)a3
{
  v4 = [a3 copy];
  readyCompletion = self->_readyCompletion;
  self->_readyCompletion = v4;

  MEMORY[0x1EEE66BB8](v4, readyCompletion);
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5 && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            v5[2](v5, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"presentableIdentification" object:? file:? lineNumber:? description:?];
}

- (void)initWithSpecification:serviceDomain:readyCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"presentableSpecification" object:? file:? lineNumber:? description:?];
}

- (void)initWithSpecification:serviceDomain:readyCompletion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"serviceDomain" object:? file:? lineNumber:? description:?];
}

- (void)initWithSpecification:serviceDomain:readyCompletion:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"readyCompletion" object:? file:? lineNumber:? description:?];
}

- (void)initWithPresentable:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"presentable" object:? file:? lineNumber:? description:?];
}

- (void)initWithPresentable:(void *)a1 .cold.2(void *a1)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = BNEffectivePresentableDescription(a1);
  OUTLINED_FUNCTION_0_0();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

@end