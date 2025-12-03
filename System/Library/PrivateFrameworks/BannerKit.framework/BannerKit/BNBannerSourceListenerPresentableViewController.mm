@interface BNBannerSourceListenerPresentableViewController
- (BNBannerSourceListenerPresentableDelegate)delegate;
- (BNBannerSourceListenerPresentableViewController)initWithPresentable:(id)presentable;
- (BNBannerSourceListenerPresentableViewController)initWithSpecification:(id)specification serviceDomain:(id)domain readyCompletion:(id)completion;
- (BOOL)_isPresentableContextInterfaceAvailable;
- (BOOL)bannerSourcePresentableContext:(id)context isConnectingProcessAuthorized:(id)authorized error:(id *)error;
- (id)_initWithPresentableIdentification:(id)identification presentableBehavior:(int64_t)behavior contentBehavior:(int64_t)contentBehavior serviceDomain:(id)domain readyCompletion:(id)completion;
- (id)readyCompletion;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_setBannerAppearState:(int)state forPresentable:(id)presentable reason:(id)reason;
- (void)_setReadyCompletion:(id)completion;
- (void)_setUserInteractionWillBegin:(BOOL)begin forPresentable:(id)presentable;
- (void)addPresentableObserver:(id)observer;
- (void)dealloc;
- (void)handleTemplateContentEvent:(int64_t)event;
- (void)invalidate;
- (void)loadView;
- (void)makeReadyIfPossible;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)removePresentableObserver:(id)observer;
- (void)setDelegate:(id)delegate;
- (void)setHostNeedsUpdate;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
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
  readyCompletion = [(BNBannerSourceListenerPresentableViewController *)self readyCompletion];
  if (readyCompletion)
  {
    v4 = readyCompletion;
    isReady = [(BNBannerSourceListenerPresentableViewController *)self isReady];

    if (isReady)
    {
      readyCompletion2 = [(BNBannerSourceListenerPresentableViewController *)self readyCompletion];
      [(BNBannerSourceListenerPresentableViewController *)self _setReadyCompletion:0];
      v6 = readyCompletion2;
      if (readyCompletion2)
      {
        (*(readyCompletion2 + 16))(readyCompletion2, self, 0);
        v6 = readyCompletion2;
      }
    }
  }
}

- (id)readyCompletion
{
  v2 = MEMORY[0x1C6936EC0](self->_readyCompletion, a2);

  return v2;
}

- (id)_initWithPresentableIdentification:(id)identification presentableBehavior:(int64_t)behavior contentBehavior:(int64_t)contentBehavior serviceDomain:(id)domain readyCompletion:(id)completion
{
  identificationCopy = identification;
  domainCopy = domain;
  completionCopy = completion;
  v28.receiver = self;
  v28.super_class = BNBannerSourceListenerPresentableViewController;
  v15 = [(BNBannerSourceListenerPresentableViewController *)&v28 initWithNibName:0 bundle:0];
  if (v15)
  {
    if (!identificationCopy)
    {
      [BNBannerSourceListenerPresentableViewController _initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:];
    }

    requesterIdentifier = [identificationCopy requesterIdentifier];
    v17 = [requesterIdentifier copy];
    requesterIdentifier = v15->_requesterIdentifier;
    v15->_requesterIdentifier = v17;

    requestIdentifier = [identificationCopy requestIdentifier];
    v20 = [requestIdentifier copy];
    requestIdentifier = v15->_requestIdentifier;
    v15->_requestIdentifier = v20;

    uniquePresentableIdentifier = [identificationCopy uniquePresentableIdentifier];
    v23 = [uniquePresentableIdentifier copy];
    uniquePresentableIdentifier = v15->_uniquePresentableIdentifier;
    v15->_uniquePresentableIdentifier = v23;

    v15->_presentableBehavior = behavior;
    v15->_contentBehavior = contentBehavior;
    v25 = [domainCopy copy];
    serviceDomain = v15->_serviceDomain;
    v15->_serviceDomain = v25;

    v15->_draggingDismissalEnabled = kBNPresentableContextIsDraggingDismissalEnabledDefault;
    v15->_draggingInteractionEnabled = kBNPresentableContextIsDraggingInteractionEnabledDefault;
    v15->_touchOutsideDismissalEnabled = kBNPresentableContextIsTouchOutsideDismissalEnabledDefault;
    [(BNBannerSourceListenerPresentableViewController *)v15 _setReadyCompletion:completionCopy];
  }

  return v15;
}

- (BNBannerSourceListenerPresentableViewController)initWithSpecification:(id)specification serviceDomain:(id)domain readyCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  specificationCopy = specification;
  domainCopy = domain;
  completionCopy = completion;
  if (specificationCopy)
  {
    if (domainCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BNBannerSourceListenerPresentableViewController initWithSpecification:serviceDomain:readyCompletion:];
    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BNBannerSourceListenerPresentableViewController initWithSpecification:serviceDomain:readyCompletion:];
  if (!domainCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (completionCopy)
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
    v15 = specificationCopy;
    _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "Hosted presentable initialized with presentable specification: %{public}@", &v14, 0xCu);
  }

  v12 = -[BNBannerSourceListenerPresentableViewController _initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:](self, "_initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:", specificationCopy, [specificationCopy presentableBehavior], objc_msgSend(specificationCopy, "contentBehavior"), domainCopy, completionCopy);

  return v12;
}

- (BNBannerSourceListenerPresentableViewController)initWithPresentable:(id)presentable
{
  v14 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  if (!presentableCopy)
  {
    [BNBannerSourceListenerPresentableViewController initWithPresentable:];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([presentableCopy providesTemplateContent] & 1) == 0)
  {
    [BNBannerSourceListenerPresentableViewController initWithPresentable:presentableCopy];
  }

  v6 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BNEffectivePresentableDescription(presentableCopy);
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1C42DC000, v7, OS_LOG_TYPE_DEFAULT, "Hosted presentable initialized with template presentable: %{public}@", &v12, 0xCu);
  }

  v9 = -[BNBannerSourceListenerPresentableViewController _initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:](self, "_initWithPresentableIdentification:presentableBehavior:contentBehavior:serviceDomain:readyCompletion:", presentableCopy, [presentableCopy presentableBehavior], 1, 0, 0);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 129, presentable);
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
  view = [(BNBannerSourceListenerPresentableViewController *)self view];
  [view setClipsToBounds:1];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (!self->_presentable && (objc_opt_respondsToSelector() & 1) != 0 && [delegateCopy bannerSourceListenerPresentableShouldEnablePresentableContextInterface:self])
  {
    v4 = [[BNBannerSourcePresentableContext alloc] initWithPresentableIdentification:self contentBehavior:self->_contentBehavior serviceDomain:self->_serviceDomain];
    presentableContext = self->_presentableContext;
    self->_presentableContext = v4;

    [(BNBannerSourcePresentableContext *)self->_presentableContext setDelegate:self];
  }
}

- (void)handleTemplateContentEvent:(int64_t)event
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

  [v5 handleTemplateContentEvent:event];
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  v13 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  v5 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = BNEffectivePresentableDescription(bannerCopy);
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "Hosted presentable will appear as banner: %{public}@", buf, 0xCu);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:1 forPresentable:bannerCopy reason:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__BNBannerSourceListenerPresentableViewController_presentableWillAppearAsBanner___block_invoke;
  v9[3] = &unk_1E81E47D8;
  v10 = bannerCopy;
  v8 = bannerCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillAppearAsBanner_ usingBlock:v9];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  v13 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  v5 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = BNEffectivePresentableDescription(bannerCopy);
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "Hosted presentable did appear as banner: %{public}@", buf, 0xCu);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:2 forPresentable:bannerCopy reason:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__BNBannerSourceListenerPresentableViewController_presentableDidAppearAsBanner___block_invoke;
  v9[3] = &unk_1E81E47D8;
  v10 = bannerCopy;
  v8 = bannerCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableDidAppearAsBanner_ usingBlock:v9];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = BNEffectivePresentableDescription(bannerCopy);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Hosted presentable will disappear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:3 forPresentable:bannerCopy reason:reasonCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__BNBannerSourceListenerPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke;
  v13[3] = &unk_1E81E4788;
  v14 = bannerCopy;
  v15 = reasonCopy;
  v11 = reasonCopy;
  v12 = bannerCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillDisappearAsBanner_withReason_ usingBlock:v13];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = BNEffectivePresentableDescription(bannerCopy);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Hosted presentable did disappear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  [(BNBannerSourceListenerPresentableViewController *)self _setBannerAppearState:0 forPresentable:bannerCopy reason:reasonCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__BNBannerSourceListenerPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke;
  v13[3] = &unk_1E81E4788;
  v14 = bannerCopy;
  v15 = reasonCopy;
  v11 = reasonCopy;
  v12 = bannerCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableDidDisappearAsBanner_withReason_ usingBlock:v13];
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = BNLogContextHost;
  if (os_log_type_enabled(BNLogContextHost, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = BNEffectivePresentableDescription(bannerCopy);
    *buf = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Hosted presentable will NOT appear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  if (self->_presentable)
  {
    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableWillNotAppearAsBanner:self->_presentable withReason:reasonCopy];
    }
  }

  else
  {
    [(BNBannerSourcePresentableContext *)self->_presentableContext handlePresentableWillNotAppearWithReason:reasonCopy];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__BNBannerSourceListenerPresentableViewController_presentableWillNotAppearAsBanner_withReason___block_invoke;
  v13[3] = &unk_1E81E4788;
  v14 = bannerCopy;
  v15 = reasonCopy;
  v11 = reasonCopy;
  v12 = bannerCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillNotAppearAsBanner_withReason_ usingBlock:v13];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  [(BNBannerSourceListenerPresentableViewController *)self _setUserInteractionWillBegin:1 forPresentable:presentableCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __99__BNBannerSourceListenerPresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_1E81E47D8;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  [(BNBannerSourceListenerPresentableViewController *)self _setUserInteractionWillBegin:0 forPresentable:presentableCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__BNBannerSourceListenerPresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_1E81E47D8;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
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

    observerCopy = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (void)removePresentableObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (BOOL)bannerSourcePresentableContext:(id)context isConnectingProcessAuthorized:(id)authorized error:(id *)error
{
  authorizedCopy = authorized;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained bannerSourceListenerPresentable:self isConnectingProcessAuthorized:authorizedCopy error:error];
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
    isDraggingDismissalEnabled = [(BNPresentable *)self->_presentable isDraggingDismissalEnabled];
  }

  else
  {
    isDraggingDismissalEnabled = kBNPresentableContextIsDraggingDismissalEnabledDefault;
  }

  self->_draggingDismissalEnabled = isDraggingDismissalEnabled;
  if (objc_opt_respondsToSelector())
  {
    isDraggingInteractionEnabled = [(BNPresentable *)self->_presentable isDraggingInteractionEnabled];
  }

  else
  {
    isDraggingInteractionEnabled = kBNPresentableContextIsDraggingInteractionEnabledDefault;
  }

  self->_draggingInteractionEnabled = isDraggingInteractionEnabled;
  if (objc_opt_respondsToSelector())
  {
    isTouchOutsideDismissalEnabled = [(BNPresentable *)self->_presentable isTouchOutsideDismissalEnabled];
  }

  else
  {
    isTouchOutsideDismissalEnabled = kBNPresentableContextIsTouchOutsideDismissalEnabledDefault;
  }

  self->_touchOutsideDismissalEnabled = isTouchOutsideDismissalEnabled;
}

- (void)_setBannerAppearState:(int)state forPresentable:(id)presentable reason:(id)reason
{
  v6 = *&state;
  presentableCopy = presentable;
  reasonCopy = reason;
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
        [(BNPresentable *)self->_presentable presentableWillDisappearAsBanner:self->_presentable withReason:reasonCopy];
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
      [(BNPresentable *)self->_presentable presentableDidDisappearAsBanner:self->_presentable withReason:reasonCopy];
    }
  }

  else
  {
    [(BNBannerSourcePresentableContext *)self->_presentableContext updatePresentableAppearState:v6 reason:reasonCopy];
  }
}

- (void)_setUserInteractionWillBegin:(BOOL)begin forPresentable:(id)presentable
{
  beginCopy = begin;
  presentableCopy = presentable;
  if (self->_presentable)
  {
    if (beginCopy)
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
    [(BNBannerSourcePresentableContext *)self->_presentableContext updateUserInteractionWillBegin:beginCopy];
  }
}

- (BNBannerSourceListenerPresentableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setReadyCompletion:(id)completion
{
  v4 = [completion copy];
  readyCompletion = self->_readyCompletion;
  self->_readyCompletion = v4;

  MEMORY[0x1EEE66BB8](v4, readyCompletion);
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
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
            blockCopy[2](blockCopy, v11);
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