@interface AMUIPosterCategoryViewController
- (AMUIPosterCategoryViewControllerDelegate)delegate;
- (BOOL)authenticationViewControllerWantsBiometricAuthenticationBlocked:(id)blocked;
- (BOOL)posterCategorySwitcherItemHasInlineAuthenticated:(id)authenticated;
- (BOOL)posterCategorySwitcherItemIsAuthenticated:(id)authenticated;
- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings;
- (BOOL)viewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier;
- (NSArray)visibleConfigurations;
- (PRSPosterConfiguration)mostVisibleConfiguration;
- (UIView)backgroundView;
- (UIView)contentView;
- (id)_currentAppearanceTransitionCoordinator;
- (id)_unsettledSentinel;
- (id)ambientDefaultsForViewController:(id)controller;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)createUnlockRequestForViewController:(id)controller;
- (id)defaultWidgetDescriptorStacksForViewController:(id)controller;
- (id)posterCategorySwitcherItemRequestInstanceIdentifier:(id)identifier preferring:(id)preferring;
- (id)widgetHostManagerForViewController:(id)controller;
- (void)_addInlineAuthenticationViewWithUnlockDestination:(id)destination;
- (void)_dismissInlineAuthenticationViewAnimated:(BOOL)animated completion:(id)completion;
- (void)_updateInlineAuthenticationViewLayout;
- (void)authenticationViewController:(id)controller didAuthenticateWithSuccess:(BOOL)success;
- (void)dealloc;
- (void)invalidate;
- (void)posterCategorySwitcherItem:(id)item relinquishInstanceIdentifier:(id)identifier;
- (void)requestUnlockForViewController:(id)controller withRequest:(id)request completion:(id)completion;
- (void)setConfigurations:(id)configurations;
- (void)setDateProvider:(id)provider;
- (void)switcher:(id)switcher transitionDidBegin:(id)begin;
- (void)switcher:(id)switcher transitionDidEnd:(id)end;
- (void)switcher:(id)switcher transitionDidUpdate:(id)update withProgress:(double)progress;
- (void)switcher:(id)switcher transitioningFromItem:(id)item toItem:(id)toItem progress:(double)progress;
- (void)switcher:(id)switcher updateItem:(id)item view:(id)view forPresentationProgress:(double)progress;
- (void)viewController:(id)controller didUpdateActiveConfigurationMetadata:(id)metadata;
- (void)viewControllerWillBeginConfiguration:(id)configuration;
- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)overlay;
- (void)viewControllerWillEndConfiguration:(id)configuration;
- (void)viewControllerWillEndShowingTemporaryOverlay:(id)overlay;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMUIPosterCategoryViewController

- (void)dealloc
{
  [(AMUIPosterCategoryViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = AMUIPosterCategoryViewController;
  [(AMUIPosterCategoryViewController *)&v3 dealloc];
}

- (void)setConfigurations:(id)configurations
{
  v83 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  visibleItems = [(AMUISwitcherViewController *)self->_posterSwitcherViewController visibleItems];
  firstObject = [visibleItems firstObject];
  identifier = [firstObject identifier];
  v8 = objc_opt_class();
  v9 = identifier;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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

  v12 = 1072;
  v13 = [(NSArray *)self->_configurations bs_map:&__block_literal_global_12];
  v14 = v13;
  v15 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = v16;

  v18 = [configurationsCopy copy];
  configurations = self->_configurations;
  self->_configurations = v18;

  v20 = [(NSArray *)self->_configurations bs_map:&__block_literal_global_2];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22;

  v64 = v23;
  v65 = [v23 differenceFromArray:v17 withOptions:0];
  if ([v65 hasChanges])
  {
    v61 = v17;
    v62 = v11;
    v63 = configurationsCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v24 = self->_configurations;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v77;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v77 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v76 + 1) + 8 * i);
          serverUUID = [v29 serverUUID];
          [dictionary setObject:v29 forKeyedSubscript:serverUUID];
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v26);
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v32 = self->_items;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v72 objects:v81 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v73;
      do
      {
        v36 = 0;
        do
        {
          if (*v73 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v72 + 1) + 8 * v36);
          if (v37)
          {
            v38 = *(v37 + 88);
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;
          serverUUID2 = [v39 serverUUID];
          [dictionary2 setObject:v37 forKeyedSubscript:serverUUID2];

          ++v36;
        }

        while (v34 != v36);
        v41 = [(NSArray *)v32 countByEnumeratingWithState:&v72 objects:v81 count:16];
        v34 = v41;
      }

      while (v41);
    }

    selfCopy = self;
    if (self->_items)
    {
      items = self->_items;
    }

    else
    {
      items = v15;
    }

    v43 = [(NSArray *)items mutableCopy];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v44 = v65;
    v45 = [v44 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v69;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v69 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v68 + 1) + 8 * j);
          changeType = [v49 changeType];
          if (changeType == 1)
          {
            [v43 removeObjectAtIndex:{objc_msgSend(v49, "index")}];
          }

          else if (!changeType)
          {
            object = [v49 object];
            v52 = [dictionary objectForKeyedSubscript:object];
            v53 = [dictionary2 objectForKeyedSubscript:object];
            if (!v53)
            {
              v53 = [AMUIPosterCategorySwitcherItem itemWithConfiguration:v52 delegate:selfCopy];
            }

            [v43 insertObject:v53 atIndex:{objc_msgSend(v49, "index")}];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v46);
    }

    v54 = [v43 copy];
    self = selfCopy;
    v55 = selfCopy->_items;
    selfCopy->_items = v54;

    [(AMUISwitcherViewController *)selfCopy->_posterSwitcherViewController reload];
    configurationsCopy = v63;
    v17 = v61;
    v11 = v62;
    v12 = v60;
  }

  if ([(NSArray *)self->_items count])
  {
    v56 = 0;
    do
    {
      v57 = [*(&self->super.super.super.isa + v12) objectAtIndexedSubscript:v56];
      v58 = [(NSArray *)self->_items objectAtIndexedSubscript:v56];
      [(AMUIPosterCategorySwitcherItem *)v58 setConfiguration:v57];

      ++v56;
    }

    while (v56 < [(NSArray *)self->_items count]);
  }

  if (v11)
  {
    [(AMUISwitcherViewController *)self->_posterSwitcherViewController scrollToIdentifier:v11 animated:0];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (NSArray)visibleConfigurations
{
  visibleItems = [(AMUISwitcherViewController *)self->_posterSwitcherViewController visibleItems];
  v3 = [visibleItems bs_compactMap:&__block_literal_global_7_0];

  return v3;
}

- (UIView)contentView
{
  visibleItems = [(AMUISwitcherViewController *)self->_posterSwitcherViewController visibleItems];
  if ([visibleItems count] == 1)
  {
    contentWrapperView = self->_contentWrapperView;
  }

  else
  {
    contentWrapperView = 0;
  }

  v5 = contentWrapperView;

  return contentWrapperView;
}

- (UIView)backgroundView
{
  visibleItems = [(AMUISwitcherViewController *)self->_posterSwitcherViewController visibleItems];
  if ([visibleItems count] == 1)
  {
    posterSwitcherViewController = self->_posterSwitcherViewController;
  }

  else
  {
    posterSwitcherViewController = self;
  }

  view = [posterSwitcherViewController view];

  return view;
}

- (void)setDateProvider:(id)provider
{
  objc_storeStrong(&self->_dateProvider, provider);
  providerCopy = provider;
  [(AMUIDataLayerViewController *)self->_dataLayerViewController setDateProvider:providerCopy];
  [(AMUIInlineAuthenticationViewController *)self->_inlineAuthenticationViewController setDateProvider:providerCopy];
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  dataLayerViewController = self->_dataLayerViewController;
  if (objc_opt_respondsToSelector())
  {
    cancelTouchesForCurrentEventInHostedContent = [(AMUIDataLayerViewController *)self->_dataLayerViewController cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    cancelTouchesForCurrentEventInHostedContent = 0;
  }

  return cancelTouchesForCurrentEventInHostedContent;
}

- (void)_addInlineAuthenticationViewWithUnlockDestination:(id)destination
{
  destinationCopy = destination;
  if (!self->_inlineAuthenticationViewController)
  {
    v5 = [[AMUIInlineAuthenticationViewController alloc] initWithUnlockDestination:destinationCopy];
    inlineAuthenticationViewController = self->_inlineAuthenticationViewController;
    self->_inlineAuthenticationViewController = v5;

    [(AMUIInlineAuthenticationViewController *)self->_inlineAuthenticationViewController setDelegate:self];
    v7 = self->_inlineAuthenticationViewController;
    delegate = [(AMUIPosterCategoryViewController *)self delegate];
    v9 = [delegate posterCategoryViewControllerAuthenticationHandler:self];
    [(AMUIInlineAuthenticationViewController *)v7 setAuthenticationHandler:v9];

    [(AMUIInlineAuthenticationViewController *)self->_inlineAuthenticationViewController setDateProvider:self->_dateProvider];
    objc_initWeak(&location, self);
    v10 = self->_inlineAuthenticationViewController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__AMUIPosterCategoryViewController__addInlineAuthenticationViewWithUnlockDestination___block_invoke;
    v11[3] = &unk_278C76748;
    objc_copyWeak(&v12, &location);
    [(AMUIPosterCategoryViewController *)self bs_addChildViewController:v10 animated:0 transitionBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __86__AMUIPosterCategoryViewController__addInlineAuthenticationViewWithUnlockDestination___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[124] view];
    [v5 setAutoresizingMask:18];
    v6 = [v4 view];
    [v6 bringSubviewToFront:v5];

    v7 = [v4 view];
    [v7 layoutIfNeeded];

    v8 = [v4 delegate];
    [v8 posterCategoryViewController:v4 didSetInlineAuthenticationViewVisible:1];
  }

  if (v9)
  {
    v9[2]();
  }
}

- (void)_dismissInlineAuthenticationViewAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__AMUIPosterCategoryViewController__dismissInlineAuthenticationViewAnimated_completion___block_invoke;
  v17[3] = &unk_278C76770;
  objc_copyWeak(&v19, &location);
  v7 = completionCopy;
  v18 = v7;
  v8 = MEMORY[0x245CAD730](v17);
  inlineAuthenticationViewController = self->_inlineAuthenticationViewController;
  if (inlineAuthenticationViewController)
  {
    view = [(AMUIInlineAuthenticationViewController *)inlineAuthenticationViewController view];
    v11 = view;
    if (animatedCopy)
    {
      v12 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __88__AMUIPosterCategoryViewController__dismissInlineAuthenticationViewAnimated_completion___block_invoke_2;
      v15[3] = &unk_278C75D60;
      v16 = view;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __88__AMUIPosterCategoryViewController__dismissInlineAuthenticationViewAnimated_completion___block_invoke_3;
      v13[3] = &unk_278C75D08;
      v14 = v8;
      [v12 animateWithDuration:v15 animations:v13 completion:0.2];
    }

    else
    {
      v8[2](v8);
    }
  }

  else if (v7)
  {
    v7[2](v7);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

uint64_t __88__AMUIPosterCategoryViewController__dismissInlineAuthenticationViewAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained bs_removeChildViewController:WeakRetained[124]];
    v3 = v7[124];
    v7[124] = 0;

    v4 = [v7 delegate];
    [v4 posterCategoryViewController:v7 didSetInlineAuthenticationViewVisible:0];

    WeakRetained = v7;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, WeakRetained);
    WeakRetained = v7;
  }

  return MEMORY[0x2821F96F8](v5, WeakRetained);
}

- (void)_updateInlineAuthenticationViewLayout
{
  if (self->_inlineAuthenticationViewController)
  {
    view = [(AMUIPosterCategoryViewController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    view2 = [(AMUIInlineAuthenticationViewController *)self->_inlineAuthenticationViewController view];
    [view2 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = AMUIPosterCategoryViewController;
  [(AMUIPosterCategoryViewController *)&v22 viewDidLoad];
  v3 = +[AMUIPosterSwitcherDomain rootSettings];
  settings = self->_settings;
  self->_settings = v3;

  view = [(AMUIPosterCategoryViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [view setAutoresizingMask:0];
  v14 = [[AMUITouchPassthroughView alloc] initWithFrame:v7, v9, v11, v13];
  contentWrapperView = self->_contentWrapperView;
  self->_contentWrapperView = &v14->super;

  [(UIView *)self->_contentWrapperView setAutoresizingMask:18];
  [view addSubview:self->_contentWrapperView];
  v16 = objc_alloc_init(AMUIDataLayerViewController);
  dataLayerViewController = self->_dataLayerViewController;
  self->_dataLayerViewController = v16;

  [(AMUIDataLayerViewController *)self->_dataLayerViewController setChromeOrientationPolicy:2];
  [(AMUIDataLayerViewController *)self->_dataLayerViewController setDelegate:self];
  [(AMUIDataLayerViewController *)self->_dataLayerViewController setDateProvider:self->_dateProvider];
  view2 = [(AMUIDataLayerViewController *)self->_dataLayerViewController view];
  [view2 setFrame:{v7, v9, v11, v13}];
  [view2 setAutoresizingMask:18];
  [(AMUIPosterCategoryViewController *)self bs_addChildViewController:self->_dataLayerViewController withSuperview:self->_contentWrapperView];
  v19 = [[AMUISwitcherViewController alloc] initWithLayout:self];
  posterSwitcherViewController = self->_posterSwitcherViewController;
  self->_posterSwitcherViewController = v19;

  [(AMUISwitcherViewController *)self->_posterSwitcherViewController setDataSource:self];
  [(AMUISwitcherViewController *)self->_posterSwitcherViewController setDelegate:self];
  view3 = [(AMUISwitcherViewController *)self->_posterSwitcherViewController view];
  [view3 setFrame:{v7, v9, v11, v13}];
  [view3 setAutoresizingMask:18];
  [(AMUIPosterCategoryViewController *)self bs_addChildViewController:self->_posterSwitcherViewController];
  [view bringSubviewToFront:self->_contentWrapperView];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIPosterCategoryViewController;
  [(AMUIPosterCategoryViewController *)&v3 viewWillLayoutSubviews];
  [(AMUIPosterCategoryViewController *)self _updateInlineAuthenticationViewLayout];
}

- (BOOL)updatePosterConfiguration:(id)configuration withAnimationSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  settingsCopy = settings;
  [(AMUIPosterCategoryViewController *)self loadViewIfNeeded];
  if ([(AMUISwitcherViewController *)self->_posterSwitcherViewController isScrollingInteractively])
  {
    v8 = AMUILogSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      serverUUID = [configurationCopy serverUUID];
      v15 = 138543362;
      v16 = serverUUID;
      _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_INFO, "vertical switcher ignoring update to %{public}@ due to interactive scroll", &v15, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    [(AMUIDataLayerViewController *)self->_dataLayerViewController updatePosterConfiguration:configurationCopy withAnimationSettings:settingsCopy];
    posterSwitcherViewController = self->_posterSwitcherViewController;
    serverUUID2 = [configurationCopy serverUUID];
    v10 = [(AMUISwitcherViewController *)posterSwitcherViewController scrollToIdentifier:serverUUID2 animated:settingsCopy != 0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)invalidate
{
  [(AMUIPosterCategoryViewController *)self setConfigurations:MEMORY[0x277CBEBF8]];
  [(AMUIDataLayerViewController *)self->_dataLayerViewController invalidate];
  unsettledAssertion = self->_unsettledAssertion;

  [(BSInvalidatable *)unsettledAssertion invalidate];
}

- (void)switcher:(id)switcher transitionDidUpdate:(id)update withProgress:(double)progress
{
  updateCopy = update;
  fromItem = [updateCopy fromItem];
  v9 = objc_opt_class();
  v10 = fromItem;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  toItem = [updateCopy toItem];
  v14 = objc_opt_class();
  v15 = toItem;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  direction = [updateCopy direction];
  if ([(AMUIPosterSwitcherSettings *)self->_settings exitingCardBehaviorScaleDownOnly])
  {
    [(AMUIPosterSwitcherSettings *)self->_settings verticalScootch];
    if ((BSFloatIsZero() & 1) == 0)
    {
      memset(&v50, 0, sizeof(v50));
      itemView = [v12 itemView];
      v20 = itemView;
      if (itemView)
      {
        [itemView transform];
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
      }

      memset(&v49, 0, sizeof(v49));
      itemView2 = [v17 itemView];
      v22 = itemView2;
      if (itemView2)
      {
        [itemView2 transform];
      }

      else
      {
        memset(&v49, 0, sizeof(v49));
      }

      [(AMUIPosterSwitcherSettings *)self->_settings verticalScootch];
      BSFloatByLinearlyInterpolatingFloats();
      v47 = v50;
      CGAffineTransformTranslate(&v48, &v47, 0.0, v23);
      v50 = v48;
      [(AMUIPosterSwitcherSettings *)self->_settings verticalScootch];
      BSFloatByLinearlyInterpolatingFloats();
      v47 = v49;
      CGAffineTransformTranslate(&v48, &v47, 0.0, v24);
      v49 = v48;
      itemView3 = [v12 itemView];
      v48 = v50;
      [itemView3 setTransform:&v48];

      itemView4 = [v17 itemView];
      v48 = v49;
      [itemView4 setTransform:&v48];
    }
  }

  if ([(AMUIDataLayerViewController *)self->_dataLayerViewController currentDataLayout]== 1 && v12 && v17)
  {
    settings = self->_settings;
    if (direction)
    {
      [(AMUIPosterSwitcherSettings *)settings reverseTimeFadeoutTargetProgress];
      v29 = v31;
      [(AMUIPosterSwitcherSettings *)self->_settings forwardTimeFadeoutTargetProgress];
    }

    else
    {
      [(AMUIPosterSwitcherSettings *)settings forwardTimeFadeoutTargetProgress];
      v29 = v28;
      [(AMUIPosterSwitcherSettings *)self->_settings reverseTimeFadeoutTargetProgress];
    }

    if (v29 <= progress)
    {
      v33 = 1.0 - v30;
      v32 = 0.0;
      if (v33 < progress)
      {
        v32 = (progress - v33) / (1.0 - v33) + 0.0;
      }
    }

    else
    {
      v32 = 1.0 - progress / v29;
    }

    viewForOpacityAdjustment = [(AMUIDataLayerViewController *)self->_dataLayerViewController viewForOpacityAdjustment];
    [viewForOpacityAdjustment setAlpha:v32];

    [(AMUIPosterSwitcherSettings *)self->_settings chromeFadeoutTargetProgress];
    v36 = 1.0 - v35;
    v37 = 0.0;
    v38 = 0.0;
    if (v35 > progress)
    {
      v38 = 1.0 - progress / v35;
    }

    if (v36 < progress)
    {
      v37 = (progress - v36) / (1.0 - v36) + 0.0;
    }

    posterViewController = [(AMUIPosterCategorySwitcherItem *)v12 posterViewController];
    [posterViewController setAppearanceTransitionProgress:v38];

    posterViewController2 = [(AMUIPosterCategorySwitcherItem *)v17 posterViewController];
    [posterViewController2 setAppearanceTransitionProgress:v37];

    [(AMUIPosterSwitcherSettings *)self->_settings labelFadeinTargetProgress];
    v42 = 1.0;
    v43 = 1.0 - v41;
    v44 = 1.0;
    if (v41 > progress)
    {
      v44 = progress / v41 + 0.0;
    }

    if (v43 < progress)
    {
      v42 = 1.0 - (progress - v43) / (1.0 - v43);
    }

    titleLabelView = [(AMUIPosterCategorySwitcherItem *)v12 titleLabelView];
    [titleLabelView setAlpha:v44];

    titleLabelView2 = [(AMUIPosterCategorySwitcherItem *)v17 titleLabelView];
    [titleLabelView2 setAlpha:v42];
  }
}

- (void)switcher:(id)switcher updateItem:(id)item view:(id)view forPresentationProgress:(double)progress
{
  switcherCopy = switcher;
  itemCopy = item;
  viewCopy = view;
  exitingCardBehaviorScaleDownOnly = [(AMUIPosterSwitcherSettings *)self->_settings exitingCardBehaviorScaleDownOnly];
  _unsettledSentinel = [(AMUIPosterCategoryViewController *)self _unsettledSentinel];
  [(AMUICountingSentinel *)_unsettledSentinel increment];
  if (!self->_unsettledAssertion)
  {
    v16 = [(AMUISwitcherViewController *)self->_posterSwitcherViewController acquireUnsettledAssertionForReason:@"categorySwitcherTransition"];
    unsettledAssertion = self->_unsettledAssertion;
    self->_unsettledAssertion = v16;

    objc_initWeak(&location, self);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __85__AMUIPosterCategoryViewController_switcher_updateItem_view_forPresentationProgress___block_invoke;
    v41[3] = &unk_278C75D88;
    objc_copyWeak(&v42, &location);
    [(AMUICountingSentinel *)_unsettledSentinel performWhenCountAtZero:v41];
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  v18 = fabs(progress + -0.5);
  v19 = v18 + v18;
  if (exitingCardBehaviorScaleDownOnly)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = v19;
  }

  v21 = self->_settings;
  location = 0;
  v40 = 0.0;
  [(AMUIPosterSwitcherSettings *)v21 verticalScaleDampingRatio];
  v23 = v22;
  [(AMUIPosterSwitcherSettings *)v21 verticalScaleResponse];
  AMUIConvertSpringDampingRatioAndResponseToTensionAndFriction(&location, &v40, v23, v24);
  v25 = MEMORY[0x277D75D18];
  v26 = location;
  v27 = v40;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __85__AMUIPosterCategoryViewController_switcher_updateItem_view_forPresentationProgress___block_invoke_2;
  v34[3] = &unk_278C76798;
  v35 = v21;
  v36 = viewCopy;
  v37 = itemCopy;
  v38 = progressCopy;
  progressCopy2 = progress;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__AMUIPosterCategoryViewController_switcher_updateItem_view_forPresentationProgress___block_invoke_3;
  v32[3] = &unk_278C75FA8;
  v33 = _unsettledSentinel;
  v28 = _unsettledSentinel;
  v29 = itemCopy;
  v30 = viewCopy;
  v31 = v21;
  [v25 _animateUsingSpringWithTension:1 friction:v34 interactive:v32 animations:*&v26 completion:v27];
}

void __85__AMUIPosterCategoryViewController_switcher_updateItem_view_forPresentationProgress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[133] invalidate];
    v2 = v3[133];
    v3[133] = 0;

    WeakRetained = v3;
  }
}

void __85__AMUIPosterCategoryViewController_switcher_updateItem_view_forPresentationProgress___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) verticalExitingCardTargetScale];
  v2 = *(a1 + 56);
  BSFloatByLinearlyInterpolatingFloats();
  v3 = *(a1 + 40);
  CGAffineTransformMakeScale(&v14, v4, v4);
  [v3 setTransform:&v14];
  v5 = *(a1 + 48);
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(AMUIPosterCategorySwitcherItem *)v9 posterView];
  v11 = v10;
  if (!v10)
  {
    v11 = *(a1 + 40);
  }

  v12 = v11;

  [*(a1 + 32) exitingCardTargetOpacity];
  v13 = *(a1 + 64);
  BSFloatByLinearlyInterpolatingFloats();
  [v12 setAlpha:?];
}

- (id)posterCategorySwitcherItemRequestInstanceIdentifier:(id)identifier preferring:(id)preferring
{
  identifierCopy = identifier;
  preferringCopy = preferring;
  availableInstanceIdentifiers = self->_availableInstanceIdentifiers;
  if (availableInstanceIdentifiers)
  {
    if (!preferringCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = +[AMUIPosterViewController suggestedInstanceIdentifiers];
    v10 = [v9 mutableCopy];
    v11 = self->_availableInstanceIdentifiers;
    self->_availableInstanceIdentifiers = v10;

    availableInstanceIdentifiers = self->_availableInstanceIdentifiers;
    if (!preferringCopy)
    {
      goto LABEL_8;
    }
  }

  if (([(NSMutableArray *)availableInstanceIdentifiers containsObject:preferringCopy]& 1) != 0)
  {
    lastObject = preferringCopy;
    [(NSMutableArray *)self->_availableInstanceIdentifiers removeObject:lastObject];
    goto LABEL_10;
  }

  availableInstanceIdentifiers = self->_availableInstanceIdentifiers;
LABEL_8:
  lastObject = [(NSMutableArray *)availableInstanceIdentifiers lastObject];
  [(NSMutableArray *)self->_availableInstanceIdentifiers removeLastObject];
  if (!lastObject)
  {
    lastObject = [MEMORY[0x277CCAD78] UUID];
  }

LABEL_10:

  return lastObject;
}

- (void)posterCategorySwitcherItem:(id)item relinquishInstanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  availableInstanceIdentifiers = self->_availableInstanceIdentifiers;
  v10 = identifierCopy;
  if (!availableInstanceIdentifiers)
  {
    v7 = +[AMUIPosterViewController suggestedInstanceIdentifiers];
    v8 = [v7 mutableCopy];
    v9 = self->_availableInstanceIdentifiers;
    self->_availableInstanceIdentifiers = v8;

    identifierCopy = v10;
    availableInstanceIdentifiers = self->_availableInstanceIdentifiers;
  }

  [(NSMutableArray *)availableInstanceIdentifiers addObject:identifierCopy];
}

- (BOOL)posterCategorySwitcherItemIsAuthenticated:(id)authenticated
{
  selfCopy = self;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate posterCategoryViewControllerIsAuthenticated:selfCopy];

  return selfCopy;
}

- (BOOL)posterCategorySwitcherItemHasInlineAuthenticated:(id)authenticated
{
  selfCopy = self;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate posterCategoryViewControllerHasInlineAuthenticated:selfCopy];

  return selfCopy;
}

- (id)createUnlockRequestForViewController:(id)controller
{
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  v5 = [delegate createUnlockRequestForViewController:self];

  return v5;
}

- (void)requestUnlockForViewController:(id)controller withRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  [delegate requestUnlockForViewController:self withRequest:requestCopy completion:completionCopy];
}

- (void)viewControllerWillBeginConfiguration:(id)configuration
{
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  [delegate viewControllerWillBeginConfiguration:self];
}

- (void)viewControllerWillEndConfiguration:(id)configuration
{
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  [delegate viewControllerWillEndConfiguration:self];
}

- (void)viewController:(id)controller didUpdateActiveConfigurationMetadata:(id)metadata
{
  metadataCopy = metadata;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  [delegate viewController:self didUpdateActiveConfigurationMetadata:metadataCopy];
}

- (id)widgetHostManagerForViewController:(id)controller
{
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  v5 = [delegate widgetHostManagerForViewController:self];

  return v5;
}

- (id)ambientDefaultsForViewController:(id)controller
{
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  v5 = [delegate ambientDefaultsForViewController:self];

  return v5;
}

- (id)defaultWidgetDescriptorStacksForViewController:(id)controller
{
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  v5 = [delegate defaultWidgetDescriptorStacksForViewController:self];

  return v5;
}

- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  [delegate viewControllerWillBeginShowingTemporaryOverlay:overlayCopy];
}

- (void)viewControllerWillEndShowingTemporaryOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  [delegate viewControllerWillEndShowingTemporaryOverlay:overlayCopy];
}

- (BOOL)viewController:(id)controller isApplicationVisibleWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  controllerCopy = controller;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  v9 = [delegate viewController:controllerCopy isApplicationVisibleWithBundleIdentifier:identifierCopy];

  return v9;
}

- (id)_currentAppearanceTransitionCoordinator
{
  if ([(AMUIDataLayerViewController *)self->_dataLayerViewController currentDataLayout]== 1)
  {
    photosCoordinator = self->_photosCoordinator;
    if (!photosCoordinator)
    {
      v4 = objc_alloc_init(AMUIPosterPhotosAppearanceTransitionCoordinator);
      v5 = self->_photosCoordinator;
      self->_photosCoordinator = &v4->super;

      photosCoordinator = self->_photosCoordinator;
    }

    v6 = photosCoordinator;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_unsettledSentinel
{
  lazy_unsettledSentinel = self->_lazy_unsettledSentinel;
  if (!lazy_unsettledSentinel)
  {
    v4 = objc_alloc_init(AMUICountingSentinel);
    v5 = self->_lazy_unsettledSentinel;
    self->_lazy_unsettledSentinel = v4;

    lazy_unsettledSentinel = self->_lazy_unsettledSentinel;
  }

  return lazy_unsettledSentinel;
}

- (void)authenticationViewController:(id)controller didAuthenticateWithSuccess:(BOOL)success
{
  if (success)
  {
    delegate = [(AMUIPosterCategoryViewController *)self delegate];
    [delegate posterCategoryViewControllerDidSuccessfulyCompleteInlineAuthentication:self];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __92__AMUIPosterCategoryViewController_authenticationViewController_didAuthenticateWithSuccess___block_invoke;
    v7[3] = &unk_278C75DD8;
    v8 = delegate;
    selfCopy = self;
    v6 = delegate;
    [(AMUIPosterCategoryViewController *)self _dismissInlineAuthenticationViewAnimated:1 completion:v7];
  }
}

- (BOOL)authenticationViewControllerWantsBiometricAuthenticationBlocked:(id)blocked
{
  selfCopy = self;
  delegate = [(AMUIPosterCategoryViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate posterCategoryViewController:selfCopy wantsBiometricAuthenticationBlockedForDeepUserInteraction:0];

  return selfCopy;
}

- (AMUIPosterCategoryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void *__57__AMUIPosterCategoryViewController_visibleConfigurations__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6[11];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (PRSPosterConfiguration)mostVisibleConfiguration
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  visibleItems = [(AMUISwitcherViewController *)self->_posterSwitcherViewController visibleItems];
  v4 = [visibleItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v4)
  {

    v6 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v19;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(visibleItems);
      }

      v10 = *(*(&v18 + 1) + 8 * i);
      [(AMUISwitcherViewController *)self->_posterSwitcherViewController presentationProgressForItem:v10];
      if (v11 > v8)
      {
        v12 = v11;
        v13 = v10;

        v8 = v12;
        v6 = v13;
      }
    }

    v5 = [visibleItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_13;
  }

  v14 = v6[11];
LABEL_14:
  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)switcher:(id)switcher transitioningFromItem:(id)item toItem:(id)toItem progress:(double)progress
{
  itemCopy = item;
  toItemCopy = toItem;
  viewForOpacityAdjustment = [(AMUIDataLayerViewController *)self->_dataLayerViewController viewForOpacityAdjustment];
  v11 = objc_opt_class();
  v25 = itemCopy;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v25;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = objc_opt_class();
  v15 = toItemCopy;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (BSFloatLessThanFloat())
  {
    v18 = v13;
    if (!v13)
    {
LABEL_13:
      v19 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  v19 = v18[11];
LABEL_16:
  [(AMUIDataLayerViewController *)self->_dataLayerViewController updatePosterConfiguration:v19 withAnimationSettings:0];
  posterViewController = [(AMUIPosterCategorySwitcherItem *)v13 posterViewController];
  _currentAppearanceTransitionCoordinator = [(AMUIPosterCategoryViewController *)self _currentAppearanceTransitionCoordinator];
  [posterViewController setAppearanceTransitionCoordinator:_currentAppearanceTransitionCoordinator];

  posterViewController2 = [(AMUIPosterCategorySwitcherItem *)v17 posterViewController];
  _currentAppearanceTransitionCoordinator2 = [(AMUIPosterCategoryViewController *)self _currentAppearanceTransitionCoordinator];
  [posterViewController2 setAppearanceTransitionCoordinator:_currentAppearanceTransitionCoordinator2];

  viewForOpacityAdjustment2 = [(AMUIDataLayerViewController *)self->_dataLayerViewController viewForOpacityAdjustment];
  if (viewForOpacityAdjustment2 != viewForOpacityAdjustment)
  {
    [viewForOpacityAdjustment setAlpha:1.0];
  }
}

- (void)switcher:(id)switcher transitionDidBegin:(id)begin
{
  beginCopy = begin;
  fromItem = [beginCopy fromItem];
  v6 = objc_opt_class();
  v7 = fromItem;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  toItem = [beginCopy toItem];
  v11 = objc_opt_class();
  v12 = toItem;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  posterViewController = [(AMUIPosterCategorySwitcherItem *)v9 posterViewController];
  _currentAppearanceTransitionCoordinator = [(AMUIPosterCategoryViewController *)self _currentAppearanceTransitionCoordinator];
  [posterViewController setAppearanceTransitionCoordinator:_currentAppearanceTransitionCoordinator];

  posterViewController2 = [(AMUIPosterCategorySwitcherItem *)v14 posterViewController];
  _currentAppearanceTransitionCoordinator2 = [(AMUIPosterCategoryViewController *)self _currentAppearanceTransitionCoordinator];
  [posterViewController2 setAppearanceTransitionCoordinator:_currentAppearanceTransitionCoordinator2];

  [(AMUIPosterCategorySwitcherItem *)v9 noteTransitionDidBegin];
  [(AMUIPosterCategorySwitcherItem *)v14 noteTransitionDidBegin];
  if ([(AMUIDataLayerViewController *)self->_dataLayerViewController currentDataLayout]== 1 && v9 && v14)
  {
    direction = [beginCopy direction];
    v20 = direction != 1;
    *(v9 + 80) = 1;
    *(v9 + 81) = direction == 1;
    [v9 _updateTitleLabelVisibility];
    *(v14 + 80) = 1;
    *(v14 + 81) = v20;
    [v14 _updateTitleLabelVisibility];
  }
}

- (void)switcher:(id)switcher transitionDidEnd:(id)end
{
  endCopy = end;
  fromItem = [endCopy fromItem];
  v6 = objc_opt_class();
  v7 = fromItem;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = v8;

  toItem = [endCopy toItem];

  v10 = objc_opt_class();
  v11 = toItem;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v14)
  {
    v14[40] = 0;
    [v14 _updateTitleLabelVisibility];
  }

  if (v13)
  {
    v13[40] = 0;
    [v13 _updateTitleLabelVisibility];
  }
}

@end