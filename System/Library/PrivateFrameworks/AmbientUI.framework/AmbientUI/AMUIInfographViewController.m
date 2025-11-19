@interface AMUIInfographViewController
+ (id)_bigDateTimeWidget;
+ (id)_clockCityWidget;
+ (id)_clockLocalWidget;
+ (id)_clockSquareWidget;
+ (id)_defaultWidgetDescriptionForKind:(id)a3 bundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5;
+ (id)_stocksWidget;
- (AMUIInfographViewController)init;
- (AMUIInfographViewControllerDelegate)delegate;
- (AMUIWidgetHostManager)widgetHostManager;
- (BOOL)_emptyIconState:(id)a3;
- (BOOL)_isApplicationForWidgetProtected:(id)a3;
- (BOOL)_isApplicationProtectedForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4;
- (BOOL)_isStackEmpty:(id)a3;
- (BOOL)_preparePosterConfigurationToSaveWithCurrentIconState:(id)a3 intents:(id)a4 reason:(id)a5;
- (BOOL)_recordExistsForContainerBundleIdentifier:(id)a3;
- (BOOL)_saveInfographPosterConfigurationData:(id)a3 completion:(id)a4;
- (BOOL)_shouldMigrateClockCityWidgetForIconDataSources:(id)a3 withWidgetStackElements:(id)a4;
- (BOOL)handleDismiss;
- (BOOL)iconManager:(id)a3 isIconVisibleForBundleIdentifier:(id)a4;
- (BOOL)iconManager:(id)a3 isTimedOutForDataSourceContainerBundleIdentifier:(id)a4;
- (CGRect)iconManager:(id)a3 contentBoundingRectForConfigurationOfIconView:(id)a4;
- (NSArray)defaultWidgetDescriptorStacks;
- (SBHIconManager)iconManager;
- (SBIconListLayoutProvider)listLayoutProvider;
- (id)_applicationBundleIdentifierForLaunchingIconView:(id)a3;
- (id)_createBatteriesWidgetIcon;
- (id)_createContactsWidgetIcon;
- (id)_defaultIconState;
- (id)_effectiveContainerBundleIdentifierForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4;
- (id)_fetchIntents;
- (id)_iconStateFromDefaultWidgetDescriptorStacks:(id)a3;
- (id)_iconStateWithLeadingElements:(id)a3 trialingElements:(id)a4;
- (id)_infographConfigurationMetadata;
- (id)_loadInfographPosterConfigurationDataWithError:(id *)a3;
- (id)_stackElementsFromWidgetDescriptors:(id)a3;
- (id)_uniqueIdentifierStacksFromIconState:(id)a3;
- (id)_uniqueIdentifiersForStack:(id)a3;
- (id)_validatedStackFromWidgets:(id)a3;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)customDisplayConfigurationForWidgetViewController;
- (id)defaultIconStateForIconManager:(id)a3;
- (id)iconManager:(id)a3 backgroundViewForComponentsOfType:(int64_t)a4 forIconView:(id)a5;
- (id)iconManager:(id)a3 bundleIdentifierToLaunchForWidgetURL:(id)a4;
- (id)iconManager:(id)a3 configurationDataForDataSource:(id)a4 ofIcon:(id)a5;
- (id)iconManager:(id)a3 containerBundleIdentifierForDescriptor:(id)a4;
- (id)iconManager:(id)a3 metricsForCHSWidget:(id)a4 inLocation:(id)a5;
- (id)renderSchemeForWidgetViewController;
- (id)targetedDragPreviewForIconView:(id)a3 item:(id)a4 session:(id)a5 previewParameters:(id)a6;
- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4;
- (int64_t)iconManager:(id)a3 userInterfaceStyleForConfigurationOfIconView:(id)a4;
- (void)_configureIconManager:(id)a3;
- (void)_dismissLaunchConfirmationAnimated:(BOOL)a3;
- (void)_enumerateWidgetStackViewControllersWithBlock:(id)a3;
- (void)_fetchDefaultWidgetDescriptorStacks;
- (void)_fetchWidgetHostManager;
- (void)_flashPageControlAnimated:(BOOL)a3;
- (void)_handleInsertionForWidgetIcon:(id)a3 withReferenceIconView:(id)a4 fromPresenter:(id)a5;
- (void)_handleLaunchRequestForApplicationWithBundleIdentifier:(id)a3 withActions:(id)a4;
- (void)_handleWidgetSheetViewControllerDidDisappear:(id)a3;
- (void)_handleWidgetSheetViewControllerWillAppear:(id)a3;
- (void)_handleWidgetSheetViewControllerWillDisappear:(id)a3;
- (void)_invalidateStackConfigurationEditingTimeoutTimer;
- (void)_launchConfirmationTapGestureDidFire:(id)a3;
- (void)_migrateClockCityWidgetForIconListModel:(id)a3 withDefaultIconState:(id)a4;
- (void)_registerForAmbientPresentationTraitChanges;
- (void)_registerForFirstPresentationStateChange;
- (void)_restartStackConfigurationEditingTimeoutTimer;
- (void)_setupAmbientDefaults;
- (void)_showLaunchConfirmationForApplicationWithBundleIdentifier:(id)a3 withActions:(id)a4 iconView:(id)a5;
- (void)_splitStackElements:(id)a3 intoLeadingElements:(id)a4 trailingElements:(id)a5;
- (void)_stackConfigurationEditingTimeoutTimerFired;
- (void)_syncLocalAmbientIconStateAndIntentsToPoster;
- (void)_updateIconListViewForIconManager:(id)a3;
- (void)_updateIconModelForIconManager:(id)a3;
- (void)_updateProactiveIntegrationForIconManager:(id)a3;
- (void)_validateIconListModel:(id)a3;
- (void)_validateIcons:(id)a3 inIconListModel:(id)a4;
- (void)_willEndConfigurationForReason:(id)a3;
- (void)_willEnterConfigurationForReason:(id)a3;
- (void)_willHideTemporaryOverlayForReason:(id)a3;
- (void)_willShowTemporaryOverlayForReason:(id)a3;
- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4;
- (void)addWidgetSheetViewControllerDidAppear:(id)a3;
- (void)addWidgetSheetViewControllerWillAppear:(id)a3;
- (void)addWidgetSheetViewControllerWillDisappear:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)configurationLongPressDidUpdate:(id)a3;
- (void)dealloc;
- (void)extensionsDidChangeForExtensionProvider:(id)a3;
- (void)iconListView:(id)a3 didAddIconView:(id)a4;
- (void)iconManager:(id)a3 configureIconView:(id)a4 forIcon:(id)a5;
- (void)iconManager:(id)a3 iconView:(id)a4 widgetWantsLaunchForBundleIdentifier:(id)a5 withAction:(id)a6;
- (void)iconManager:(id)a3 launchIconForIconView:(id)a4 withActions:(id)a5;
- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4;
- (void)invalidate;
- (void)noteAmbientViewControllingDelegateDidUpdate;
- (void)setDelegate:(id)a3;
- (void)setIconManager:(id)a3;
- (void)setIntent:(id)a3 forIconWithIdentifier:(id)a4 widgetUniqueIdentifier:(id)a5;
- (void)setPosterConfiguration:(id)a3;
- (void)stackConfigurationInteraction:(id)a3 iconView:(id)a4 dragLiftAnimationDidChangeDirection:(int64_t)a5;
- (void)stackConfigurationInteraction:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6;
- (void)stackConfigurationInteraction:(id)a3 requestsPresentAddWidgetSheetFromPresenter:(id)a4;
- (void)stackConfigurationViewControllerDidAppear:(id)a3;
- (void)stackConfigurationViewControllerDidDisappear:(id)a3;
- (void)stackConfigurationViewControllerWillAppear:(id)a3;
- (void)stackConfigurationViewControllerWillDisappear:(id)a3;
- (void)viewWillLayoutSubviews;
- (void)widgetHostManager:(id)a3 didNoteStackChangedActiveWidget:(id)a4;
@end

@implementation AMUIInfographViewController

- (AMUIInfographViewController)init
{
  v13.receiver = self;
  v13.super_class = AMUIInfographViewController;
  v2 = [(AMUIInfographViewController *)&v13 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = +[AMUIPosterSwitcherModel sharedInstance];
    v4 = [v3 posterConfigurationsUpdater];
    posterUpdater = v2->_posterUpdater;
    v2->_posterUpdater = v4;

    v6 = [MEMORY[0x277D661A0] rootSettings];
    v7 = [v6 widgetSettings];
    widgetSettings = v2->_widgetSettings;
    v2->_widgetSettings = v7;

    [(AMUIInfographViewController *)v2 setWantsDefaultInfographLayout:0];
    v9 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v10 = [v9 addMonitor:v2 subjectMask:1 subscriptionOptions:1];
    appProtectionSubjectMonitorSubscription = v2->_appProtectionSubjectMonitorSubscription;
    v2->_appProtectionSubjectMonitorSubscription = v10;
  }

  return v2;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  defaultObserver = self->_defaultObserver;
  if (defaultObserver)
  {
    [(BSDefaultObserver *)defaultObserver invalidate];
    v4 = self->_defaultObserver;
    self->_defaultObserver = 0;
  }

  v5 = [(AMUIInfographViewController *)self disableIconStateAutosaveAssertion];
  [v5 invalidate];

  [(AMUIInfographViewController *)self setDisableIconStateAutosaveAssertion:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSMutableDictionary *)self->_keepRootStaticAssertions objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v16 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  keepRootStaticAssertions = self->_keepRootStaticAssertions;
  self->_keepRootStaticAssertions = 0;

  ambientDefaults = self->_ambientDefaults;
  self->_ambientDefaults = 0;

  [(APSubjectMonitorSubscription *)self->_appProtectionSubjectMonitorSubscription invalidate];
  appProtectionSubjectMonitorSubscription = self->_appProtectionSubjectMonitorSubscription;
  self->_appProtectionSubjectMonitorSubscription = 0;

  v15.receiver = self;
  v15.super_class = AMUIInfographViewController;
  [(AMUIInfographViewController *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = AMUIInfographViewController;
  [(AMUIInfographViewController *)&v21 viewWillLayoutSubviews];
  v3 = [(AMUIInfographViewController *)self view];
  v4 = [v3 _isInAWindow];
  v5 = [(AMUIInfographViewController *)self view];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 window];
    v8 = [v7 safeAreaLayoutGuide];
    [v8 layoutFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    [v5 frame];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  [(SBIconListView *)self->_iconListView setFrame:v10, v12, v14, v16];
}

- (void)setIconManager:(id)a3
{
  v8 = a3;
  objc_storeWeak(&self->_iconManager, v8);
  [v8 setDelegate:self];
  v4 = [v8 widgetExtensionProvider];
  widgetExtensionProvider = self->_widgetExtensionProvider;
  self->_widgetExtensionProvider = v4;

  [(CHSWidgetExtensionProvider *)self->_widgetExtensionProvider registerObserver:self];
  v6 = [v8 addWidgetSheetConfigurationManager];
  addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  self->_addWidgetSheetConfigurationManager = v6;

  [(SBHAddWidgetSheetConfigurationManager *)self->_addWidgetSheetConfigurationManager setWidgetDragHandlerDelegate:self];
  [(SBHAddWidgetSheetConfigurationManager *)self->_addWidgetSheetConfigurationManager setAllowsFakeWidgets:0];
  [(SBHAddWidgetSheetConfigurationManager *)self->_addWidgetSheetConfigurationManager setAddWidgetSheetLocation:2];
  [(SBHAddWidgetSheetConfigurationManager *)self->_addWidgetSheetConfigurationManager setMinimumRequiredSDKVersion:1];
  if (self->_ambientWidgetLayout || [(AMUIInfographViewController *)self wantsDefaultInfographLayout])
  {
    [(AMUIInfographViewController *)self _configureIconManager:v8];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(AMUIInfographViewController *)self _fetchDefaultWidgetDescriptorStacks];
    [(AMUIInfographViewController *)self _fetchWidgetHostManager];
    v5 = obj;
  }
}

- (void)setPosterConfiguration:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PRSPosterConfiguration *)self->_posterConfiguration isEqual:v5];
  v7 = AMUILogInfograph();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      [AMUIInfographViewController setPosterConfiguration:?];
    }
  }

  else
  {
    if (v8)
    {
      [AMUIInfographViewController setPosterConfiguration:];
    }

    objc_storeStrong(&self->_posterConfiguration, a3);
    v26 = 0;
    v9 = [v5 pr_loadAmbientWidgetLayoutWithError:&v26];
    v7 = v26;
    v10 = [v9 widgetLayoutIconState];
    v11 = [v10 objectForKey:@"AMUIIconStateKey"];
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [(AMUIInfographViewController *)self _emptyIconState:v11];
    }

    if ([(PRPosterAmbientWidgetLayout *)self->_ambientWidgetLayout isEqual:v9])
    {
      ambientWidgetLayout = self->_ambientWidgetLayout;
      if (ambientWidgetLayout)
      {
        goto LABEL_20;
      }
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9;
    }

    objc_storeStrong(&self->_ambientWidgetLayout, v14);
    v15 = [(AMUIInfographViewController *)self wantsDefaultInfographLayout]|| self->_ambientWidgetLayout == 0;
    [(AMUIInfographViewController *)self setWantsDefaultInfographLayout:v15];
    WeakRetained = objc_loadWeakRetained(&self->_iconManager);
    if (WeakRetained)
    {
      [(AMUIInfographViewController *)self _configureIconManager:WeakRetained];
    }

    ambientWidgetLayout = self->_ambientWidgetLayout;
    if (ambientWidgetLayout)
    {
LABEL_20:
      v17 = [(PRPosterAmbientWidgetLayout *)ambientWidgetLayout widgetLayoutIconState];

      if (v17)
      {
        v18 = [(PRPosterAmbientWidgetLayout *)self->_ambientWidgetLayout widgetLayoutIconState];
        v19 = [v18 objectForKey:@"AMUIIconStateKey"];

        v20 = [(AMUIInfographViewController *)self _uniqueIdentifierStacksFromIconState:v19];
        v21 = AMUILogInfograph();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v28 = v20;
          _os_log_impl(&dword_23F38B000, v21, OS_LOG_TYPE_DEFAULT, "Successfully loading infographPosterConfigurationData with unique identifier stacks:%{public}@", buf, 0xCu);
        }
      }

      else
      {
        v19 = AMUILogInfograph();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [AMUIInfographViewController setPosterConfiguration:];
        }
      }
    }

    else
    {
      v19 = AMUILogInfograph();
      v22 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v22)
        {
          [AMUIInfographViewController setPosterConfiguration:];
        }
      }

      else if (v22)
      {
        [AMUIInfographViewController setPosterConfiguration:];
      }
    }

    v23 = [(AMUIInfographViewController *)self iconManager];
    v24 = [v23 iconModel];
    [v24 saveIconStateIfNeeded];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_configureIconManager:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);
  [WeakRetained setRecyclesIconViews:0];

  [(AMUIInfographViewController *)self _updateIconModelForIconManager:v5];
  [(AMUIInfographViewController *)self _updateProactiveIntegrationForIconManager:v5];
  [(AMUIInfographViewController *)self _updateIconListViewForIconManager:v5];
}

- (void)_updateIconModelForIconManager:(id)a3
{
  v19 = a3;
  v4 = [(PRPosterAmbientWidgetLayout *)self->_ambientWidgetLayout widgetLayoutIconState];
  v5 = [v4 objectForKey:@"AMUIIconStateKey"];
  v6 = [v4 objectForKey:@"AMUIIntentsKey"];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
  initIntents = self->_initIntents;
  self->_initIntents = v7;

  v9 = [v19 iconModel];
  v10 = [(AMAmbientDefaults *)self->_ambientDefaults alwaysUpdateIconModelOnAmbientWidgetLayoutChange];
  if (!v9 || (v5 ? (v11 = v10 == 0) : (v11 = 0), !v11))
  {
    v12 = [objc_alloc(MEMORY[0x277D663D8]) initWithCurrentState:v5 desiredState:0];
    v13 = [objc_alloc(MEMORY[0x277D661F0]) initWithStore:v12];
    [v19 setIconModel:v13];
  }

  v14 = [v9 disableIconStateAutosaveForReason:@"Infograph poster"];
  [(AMUIInfographViewController *)self setDisableIconStateAutosaveAssertion:v14];

  v15 = [v19 rootFolder];
  v16 = [v15 lists];
  v17 = [v16 firstObject];

  [(AMUIInfographViewController *)self _validateIconListModel:v17];
  listModel = self->_listModel;
  self->_listModel = v17;
}

- (void)_updateProactiveIntegrationForIconManager:(id)a3
{
  v11 = a3;
  if (!self->_proactiveClient)
  {
    v4 = objc_alloc_init(MEMORY[0x277CFC7F8]);
    proactiveClient = self->_proactiveClient;
    self->_proactiveClient = v4;
  }

  v6 = [[AMUIProactiveUsageObserver alloc] initWithListModel:self->_listModel iconManager:v11 proactiveClient:self->_proactiveClient];
  proactiveUsageObserver = self->_proactiveUsageObserver;
  self->_proactiveUsageObserver = v6;

  v8 = [[AMUIProactiveSuggestionsProvider alloc] initWithIconListModel:self->_listModel iconManager:v11 proactiveClient:self->_proactiveClient];
  proactiveSuggestionsProvider = self->_proactiveSuggestionsProvider;
  self->_proactiveSuggestionsProvider = v8;

  [(AMUIProactiveSuggestionsProvider *)self->_proactiveSuggestionsProvider setDelegate:self];
  [(AMUIProactiveUsageObserver *)self->_proactiveUsageObserver pushStackConfigurationsToProactive];
  [v11 setUsageMonitoringEnabled:1];
  v10 = [v11 usageMonitor];
  [v10 addObserver:self->_proactiveUsageObserver];
}

- (void)_updateIconListViewForIconManager:(id)a3
{
  v17 = [a3 listLayoutProvider];
  iconListView = self->_iconListView;
  if (iconListView)
  {
    [(SBIconListView *)iconListView removeFromSuperview];
    v5 = self->_iconListView;
    self->_iconListView = 0;
  }

  v6 = objc_alloc(MEMORY[0x277D663D0]);
  listModel = self->_listModel;
  v8 = *MEMORY[0x277D666D0];
  v9 = [(AMUIInfographViewController *)self _iconViewProvider];
  v10 = [v6 initWithModel:listModel layoutProvider:v17 iconLocation:v8 orientation:3 iconViewProvider:v9];
  v11 = self->_iconListView;
  self->_iconListView = v10;

  [(SBIconListView *)self->_iconListView addLayoutObserver:self];
  [(SBIconListView *)self->_iconListView setIconViewConfigurationOptions:18];
  v12 = [(AMUIInfographViewController *)self _appearState];
  v13 = v12 != 3;
  if (v12 == 1)
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  [(SBIconListView *)self->_iconListView setContentVisibility:v15];
  [(SBIconListView *)self->_iconListView setVisiblySettled:v14];
  v16 = [(AMUIInfographViewController *)self view];
  [v16 addSubview:self->_iconListView];
  [v16 setNeedsLayout];
}

- (id)_loadInfographPosterConfigurationDataWithError:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(AMUIInfographViewController *)self iconManager];
  v6 = [v5 iconModel];
  v7 = [v6 iconState];

  if (v7)
  {
    goto LABEL_2;
  }

  ambientWidgetLayout = self->_ambientWidgetLayout;
  if (!ambientWidgetLayout)
  {
    v7 = AMUILogInfograph();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AMUIInfographViewController _loadInfographPosterConfigurationDataWithError:];
    }

    goto LABEL_3;
  }

  v14 = [(PRPosterAmbientWidgetLayout *)ambientWidgetLayout widgetLayoutIconState];

  if (!v14)
  {
    v7 = AMUILogInfograph();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AMUIInfographViewController _loadInfographPosterConfigurationDataWithError:];
    }

    goto LABEL_3;
  }

  v7 = [(PRPosterAmbientWidgetLayout *)self->_ambientWidgetLayout widgetLayoutIconState];
  v15 = [(AMUIInfographViewController *)self _uniqueIdentifierStacksFromIconState:v7];
  v16 = AMUILogInfograph();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v15;
    _os_log_impl(&dword_23F38B000, v16, OS_LOG_TYPE_DEFAULT, "Successfully loading infographPosterConfigurationData with unique identifier stacks:%{public}@", &v17, 0xCu);
  }

  if (v7)
  {
LABEL_2:
    [v4 setObject:v7 forKey:@"AMUIIconStateKey"];
LABEL_3:
  }

  v8 = [v5 widgetIntents];
  if (v8 || ([MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_initIntents], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [v4 setObject:v8 forKey:@"AMUIIntentsKey"];
  }

  v10 = AMUILogInfograph();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [AMUIInfographViewController _loadInfographPosterConfigurationDataWithError:];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_syncLocalAmbientIconStateAndIntentsToPoster
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Poster configuration synced to PosterBoard %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveInfographPosterConfigurationData:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(AMUIInfographViewController *)self posterConfiguration];
  v9 = AMUILogInfograph();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 objectForKey:@"AMUIIconStateKey"];
    v11 = [(AMUIInfographViewController *)self _uniqueIdentifierStacksFromIconState:v10];
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_23F38B000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to save infograph with unique identifier stacks:%{public}@ for poster configuration:%@", buf, 0x16u);
  }

  v12 = AMUILogInfograph();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v13)
    {
      [AMUIInfographViewController _saveInfographPosterConfigurationData:completion:];
    }

    objc_initWeak(buf, self);
    posterUpdater = self->_posterUpdater;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__AMUIInfographViewController__saveInfographPosterConfigurationData_completion___block_invoke;
    v18[3] = &unk_278C76478;
    objc_copyWeak(&v21, buf);
    v19 = v8;
    v20 = v7;
    v15 = [(AMUIPosterUpdater *)posterUpdater updateInfograph:v6 forPosterConfiguration:v19 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v13)
    {
      [AMUIInfographViewController _saveInfographPosterConfigurationData:completion:];
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __80__AMUIInfographViewController__saveInfographPosterConfigurationData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = AMUILogInfograph();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __80__AMUIInfographViewController__saveInfographPosterConfigurationData_completion___block_invoke_cold_1();
    }

    if (v6)
    {
      v9 = AMUILogInfograph();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __80__AMUIInfographViewController__saveInfographPosterConfigurationData_completion___block_invoke_cold_2();
      }
    }

    else if (([WeakRetained[152] isEqual:*(a1 + 32)] & 1) == 0)
    {
      v10 = [WeakRetained posterConfiguration];
      v11 = [v10 serverUUID];
      v12 = [v5 serverUUID];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        [WeakRetained updatePosterConfiguration:v5 withAnimationSettings:0];
      }
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }
}

- (id)_uniqueIdentifierStacksFromIconState:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"iconLists"];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = v5;
  if (v5 && [v5 count] == 2)
  {
    v7 = AMUILogInfograph();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_23F38B000, v7, OS_LOG_TYPE_DEFAULT, "Parsing widget stacks:%@ into uniqueIdentifierStacks", buf, 0xCu);
    }

    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [(AMUIInfographViewController *)self _uniqueIdentifiersForStack:v8];
    v11 = [(AMUIInfographViewController *)self _uniqueIdentifiersForStack:v9];
    v15[0] = v10;
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  }

  else
  {
    v8 = AMUILogInfograph();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AMUIInfographViewController _uniqueIdentifierStacksFromIconState:];
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_uniqueIdentifiersForStack:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = AMUILogInfograph();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&dword_23F38B000, v4, OS_LOG_TYPE_DEFAULT, "Creating uniqueIdentifiers for stack:%@", buf, 0xCu);
  }

  v5 = [v3 objectForKey:@"elements"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) objectForKey:{@"uniqueIdentifier", v18}];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = @"(null uniqueIdentifier)";
        }

        v15 = v14;

        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)invalidate
{
  v2 = [(AMUIInfographViewController *)self widgetHostManager];
  v3 = [v2 widgetHost];

  [v3 deactivate];
}

- (void)noteAmbientViewControllingDelegateDidUpdate
{
  [(AMUIInfographViewController *)self _setupAmbientDefaults];
  [(AMUIInfographViewController *)self _fetchDefaultWidgetDescriptorStacks];

  [(AMUIInfographViewController *)self _fetchWidgetHostManager];
}

- (BOOL)handleDismiss
{
  v3 = [(AMUIInfographViewController *)self stackConfigurationViewController];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconManager);
    [WeakRetained dismissModalInteractions];
  }

  return v3 != 0;
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  iconListView = self->_iconListView;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__AMUIInfographViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke;
  v8[3] = &unk_278C764A0;
  v9 = v3;
  v5 = v3;
  [(SBIconListView *)iconListView enumerateDisplayedIconViewsUsingBlock:v8];
  v6 = [[AMUIInfographMultipleAssertion alloc] initWithAssertions:v5];

  return v6;
}

void __74__AMUIInfographViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIconImageViewController];
  v5 = [v3 cancelTouchesForCurrentEventInHostedContent];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (void)iconManager:(id)a3 configureIconView:(id)a4 forIcon:(id)a5
{
  v6 = MEMORY[0x277D75708];
  v7 = a4;
  v10 = [[v6 alloc] initWithTarget:self action:sel_configurationLongPressDidUpdate_];
  [v7 addGestureRecognizer:?];
  [v7 setShowsSquareCorners:1];
  [v7 addObserver:self];

  if (!self->_widgetStackConfigurationFeedbackGenerator)
  {
    v8 = objc_alloc_init(MEMORY[0x277D757B8]);
    widgetStackConfigurationFeedbackGenerator = self->_widgetStackConfigurationFeedbackGenerator;
    self->_widgetStackConfigurationFeedbackGenerator = v8;
  }
}

- (void)iconManager:(id)a3 launchIconForIconView:(id)a4 withActions:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(AMUIInfographViewController *)self _applicationBundleIdentifierForLaunchingIconView:v9];
  if (v8)
  {
    [(AMUIInfographViewController *)self _showLaunchConfirmationForApplicationWithBundleIdentifier:v8 withActions:v7 iconView:v9];
  }
}

- (CGRect)iconManager:(id)a3 contentBoundingRectForConfigurationOfIconView:(id)a4
{
  v4 = [(AMUIInfographViewController *)self iconManager:a3 containerViewControllerForConfigurationOfIconView:a4];
  v5 = [v4 view];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    [v6 convertRect:v6 toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (int64_t)iconManager:(id)a3 userInterfaceStyleForConfigurationOfIconView:(id)a4
{
  v4 = [(AMUIInfographViewController *)self traitCollection:a3];
  v5 = [v4 userInterfaceStyle];

  return v5;
}

- (id)customDisplayConfigurationForWidgetViewController
{
  v3 = objc_alloc(MEMORY[0x277D66330]);
  v4 = [(AMUIInfographViewController *)self renderSchemeForWidgetViewController];
  v5 = [v3 initWithRenderScheme:v4 colorScheme:2];

  return v5;
}

- (id)renderSchemeForWidgetViewController
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(AMUIInfographViewController *)self traitCollection];
  v3 = objc_opt_self();
  [v2 valueForNSIntegerTrait:v3];
  IsRedMode = AMUIAmbientDisplayStyleIsRedMode();

  v5 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:IsRedMode backgroundViewPolicy:1];
  v6 = AMUILogInfograph();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = IsRedMode;
    _os_log_impl(&dword_23F38B000, v6, OS_LOG_TYPE_DEFAULT, "Created renderScheme:%@ for widget view controller with redModeEnabled:%d", &v9, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)iconManager:(id)a3 configurationDataForDataSource:(id)a4 ofIcon:(id)a5
{
  v7 = a4;
  intents = self->_intents;
  if (!intents)
  {
    intents = self->_initIntents;
  }

  v9 = intents;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v7;
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

  v15 = [v14 uniqueIdentifier];

  v16 = [v10 isWidgetIcon];
  v17 = 0;
  if (v14 && v16)
  {
    v17 = [(NSMutableDictionary *)v9 objectForKey:v15];
  }

  return v17;
}

- (id)_fetchIntents
{
  v3 = [(AMUIInfographViewController *)self iconManager];
  v4 = v3;
  if (v3 && ([v3 widgetIntents], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [v4 widgetIntents];
    v8 = [v6 dictionaryWithDictionary:v7];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__AMUIInfographViewController__fetchIntents__block_invoke;
    v20[3] = &unk_278C764C8;
    v21 = v9;
    v10 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v20];
    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
    intents = self->_intents;
    self->_intents = v11;
  }

  else
  {
    v13 = [(AMUIInfographViewController *)self _loadInfographPosterConfigurationDataWithError:0];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKey:@"AMUIIntentsKey"];
      v16 = self->_intents;
      self->_intents = v15;
    }
  }

  v17 = self->_intents;
  v18 = v17;

  return v17;
}

void __44__AMUIInfographViewController__fetchIntents__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
  v7 = v9;
  if (v7)
  {
    v8 = AMUILogInfograph();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__AMUIInfographViewController__fetchIntents__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }
}

- (void)setIntent:(id)a3 forIconWithIdentifier:(id)a4 widgetUniqueIdentifier:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && !self->_intents)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    intents = self->_intents;
    self->_intents = v11;
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v10];
  if (v8)
  {
    v26 = 0;
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v26];
    v15 = v26;
    if (!v14)
    {
      v17 = AMUILogWidgets();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = [v8 _indexingHash];
        *buf = 138544130;
        v28 = v10;
        v29 = 2048;
        v30 = v24;
        v31 = 2112;
        v32 = v13;
        v33 = 2112;
        v34 = v15;
        _os_log_error_impl(&dword_23F38B000, v17, OS_LOG_TYPE_ERROR, "Error archiving intent widget unique identifier '%{public}@/%lld/%@': %@", buf, 0x2Au);
      }

      goto LABEL_17;
    }

    [(NSMutableDictionary *)self->_intents setObject:v14 forKey:v13];
    v16 = [v14 length];
    v17 = AMUILogWidgets();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v19 = [v8 _indexingHash];
        *buf = 138543618;
        v28 = v10;
        v29 = 2048;
        v30 = v19;
        v20 = "Saving intent for widget unique identifier '%{public}@'/%lld";
        v21 = v17;
        v22 = 22;
LABEL_16:
        _os_log_impl(&dword_23F38B000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }

    else if (v18)
    {
      *buf = 138543362;
      v28 = v10;
      v20 = "Saving 0-length intent for widget unique identifier '%{public}@'";
      v21 = v17;
      v22 = 12;
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v23 = AMUILogWidgets();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v28 = v10;
    v29 = 2048;
    v30 = [0 _indexingHash];
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_23F38B000, v23, OS_LOG_TYPE_DEFAULT, "Removing intent for widget unique identifier '%{public}@'/%lld/%@", buf, 0x20u);
  }

  [(NSMutableDictionary *)self->_intents removeObjectForKey:v13];
LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)defaultIconStateForIconManager:(id)a3
{
  v4 = AMUILogInfograph();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23F38B000, v4, OS_LOG_TYPE_DEFAULT, "Fetching default icon state", v10, 2u);
  }

  v5 = [(AMUIInfographViewController *)self defaultWidgetDescriptorStacks];
  v6 = [(AMUIInfographViewController *)self _iconStateFromDefaultWidgetDescriptorStacks:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [(AMUIInfographViewController *)self _defaultIconState];
  }

  v8 = v7;

  return v8;
}

- (id)iconManager:(id)a3 backgroundViewForComponentsOfType:(int64_t)a4 forIconView:(id)a5
{
  if (a4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  }

  return v6;
}

- (id)iconManager:(id)a3 metricsForCHSWidget:(id)a4 inLocation:(id)a5
{
  v7 = a4;
  if ([a5 isEqualToString:*MEMORY[0x277D66640]])
  {
    addWidgetSheetMetricsProvider = self->_addWidgetSheetMetricsProvider;
    if (!addWidgetSheetMetricsProvider)
    {
      v9 = objc_alloc_init(MEMORY[0x277D66340]);
      v10 = self->_addWidgetSheetMetricsProvider;
      self->_addWidgetSheetMetricsProvider = v9;

      [(SBHWidgetMetricsProvider *)self->_addWidgetSheetMetricsProvider setDelegate:self];
      addWidgetSheetMetricsProvider = self->_addWidgetSheetMetricsProvider;
    }

    v11 = [(SBHWidgetMetricsProvider *)addWidgetSheetMetricsProvider systemMetricsForWidget:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)iconManager:(id)a3 isTimedOutForDataSourceContainerBundleIdentifier:(id)a4
{
  v4 = MEMORY[0x277CC1E70];
  v5 = a4;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];

  if (v6 && (v7 = [objc_alloc(MEMORY[0x277D0ACA8]) initWithApplicationRecord:v6]) != 0)
  {
    v8 = v7;
    v9 = [v7 isBlockedForScreenTimeExpiration];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)iconManager:(id)a3 containerBundleIdentifierForDescriptor:(id)a4
{
  v5 = a4;
  v6 = [v5 extensionIdentity];
  v7 = [v6 containerBundleIdentifier];

  v8 = [v5 extensionIdentity];

  v9 = [v8 extensionBundleIdentifier];

  v10 = [(AMUIInfographViewController *)self _effectiveContainerBundleIdentifierForContainerBundleIdentifier:v7 extensionBundleIdentifier:v9];

  return v10;
}

- (id)_effectiveContainerBundleIdentifierForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (-[__CFString isEqualToString:](v5, "isEqualToString:", @"com.apple.Health.Sleep") && [v6 isEqualToString:@"com.apple.Health.Sleep.SleepWidgetExtension"])
  {

    v5 = @"com.apple.Health";
  }

  return v5;
}

- (id)iconManager:(id)a3 bundleIdentifierToLaunchForWidgetURL:(id)a4
{
  v4 = a4;
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [v6 URLOverrideForURL:v5];

    v8 = [v6 applicationsAvailableForOpeningURL:v7];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
      v10 = [v9 bundleIdentifier];
    }

    else
    {
      v11 = AMUILogWidgets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [AMUIInfographViewController iconManager:bundleIdentifierToLaunchForWidgetURL:];
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = AMUILogWidgets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23F38B000, v7, OS_LOG_TYPE_DEFAULT, "No bundle identifier was found for widget URL because the URL was nil", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)iconManager:(id)a3 iconView:(id)a4 widgetWantsLaunchForBundleIdentifier:(id)a5 withAction:(id)a6
{
  v9 = MEMORY[0x277CBEB98];
  v10 = a5;
  v11 = a4;
  v12 = [v9 setWithObject:a6];
  [(AMUIInfographViewController *)self _showLaunchConfirmationForApplicationWithBundleIdentifier:v10 withActions:v12 iconView:v11];
}

- (BOOL)iconManager:(id)a3 isIconVisibleForBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(AMUIInfographViewController *)self delegate];
  LOBYTE(self) = [v6 viewController:self isApplicationVisibleWithBundleIdentifier:v5];

  return self;
}

- (void)iconView:(id)a3 didChangeCustomImageViewController:(id)a4
{
  v7 = [a3 customIconImageViewController];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v7;
    [v6 setClipsWidgetsToViewBounds:0];
    [v6 setBackgroundViewConfigurator:&__block_literal_global_11];
  }
}

- (void)stackConfigurationInteraction:(id)a3 requestsPresentAddWidgetSheetFromPresenter:(id)a4
{
  v6 = a4;
  v7 = [a3 configuration];
  v9 = [v7 sizeClass];

  v8 = [objc_alloc(MEMORY[0x277D661B8]) initWithGridSizeClass:v9];
  [(AMUIInfographViewController *)self _presentAddWidgetSheetFromViewController:v6 withAllowedSizeClasses:v8 allowsNonStackableItems:0];
}

- (void)stackConfigurationInteraction:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __110__AMUIInfographViewController_stackConfigurationInteraction_iconView_willAnimateDragLiftWithAnimator_session___block_invoke;
  v9[3] = &unk_278C75D60;
  v10 = v7;
  v8 = v7;
  [a5 addAnimations:v9];
}

- (void)stackConfigurationInteraction:(id)a3 iconView:(id)a4 dragLiftAnimationDidChangeDirection:(int64_t)a5
{
  v6 = a4;
  v7 = a5 == 1;
  v8 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__AMUIInfographViewController_stackConfigurationInteraction_iconView_dragLiftAnimationDidChangeDirection___block_invoke;
  v11[3] = &unk_278C76298;
  v9 = v7;
  v12 = v6;
  v13 = v9;
  v10 = v6;
  [v8 animateWithDuration:v11 animations:0.2];
}

- (void)stackConfigurationViewControllerWillAppear:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v10 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [(AMUIInfographViewController *)self setStackConfigurationViewController:v7];
  addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  v9 = [(AMUIInfographViewController *)self addWidgetSheetViewController];
  [(SBHAddWidgetSheetConfigurationManager *)addWidgetSheetConfigurationManager fetchGalleryContentForStackConfigurationViewController:v7 addWidgetSheetViewController:v9];

  [v7 setCanDismissWhileDragging:0];
  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerWillAppear:v10];

  [(AMUIInfographViewController *)self _willEnterConfigurationForReason:@"AMUIConfigurationReasonStackConfiguration"];
  [(AMUIInfographViewController *)self _dismissLaunchConfirmationAnimated:1];
  [(AMUIInfographViewController *)self _startStackConfigurationEditingTimeoutTimer];
}

- (void)stackConfigurationViewControllerDidAppear:(id)a3
{
  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerDidAppear:a3];
  iconListView = self->_iconListView;

  [(SBIconListView *)iconListView setContentVisibility:2];
}

- (void)stackConfigurationViewControllerWillDisappear:(id)a3
{
  iconListView = self->_iconListView;
  v5 = a3;
  [(SBIconListView *)iconListView setContentVisibility:3];
  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerWillDisappear:v5];

  [(AMUIInfographViewController *)self _willEndConfigurationForReason:@"AMUIConfigurationReasonStackConfiguration"];

  [(AMUIInfographViewController *)self _invalidateStackConfigurationEditingTimeoutTimer];
}

- (void)stackConfigurationViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  [(SBIconListView *)self->_iconListView setContentVisibility:0];
  v5 = objc_opt_class();
  v9 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(AMUIInfographViewController *)self stackConfigurationViewController];

  if (v8 == v7)
  {
    [(AMUIInfographViewController *)self setStackConfigurationViewController:0];
    [(SBHAddWidgetSheetConfigurationManager *)self->_addWidgetSheetConfigurationManager setStackConfigurationSuggestedWidgetItems:0];
  }

  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerDidDisappear:v9];
  objc_storeWeak(&self->_iconViewPresentingStackConfiguration, 0);
}

- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(AMUIInfographViewController *)self dismissViewControllerAnimated:v13 != 0 completion:0];
  v7 = [v6 icon];
  v8 = objc_opt_class();
  v9 = v7;
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

  if (v11)
  {
    v12 = [v13 presenter];
    [(AMUIInfographViewController *)self _handleInsertionForWidgetIcon:v11 withReferenceIconView:v6 fromPresenter:v12];
  }
}

- (void)_handleInsertionForWidgetIcon:(id)a3 withReferenceIconView:(id)a4 fromPresenter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v10;
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

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke;
  v24 = &unk_278C76588;
  v25 = v8;
  v26 = v14;
  v27 = self;
  v28 = v9;
  v15 = v9;
  v16 = v14;
  v17 = v8;
  v18 = MEMORY[0x245CAD730](&v21);
  v19 = [v16 iconListView];
  v20 = [v19 model];

  (v18)[2](v18, v20);
}

void __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66408] placeholderForIcon:*(a1 + 32)];
  v5 = [v3 addIcon:v4];
  if ([v3 directlyContainsIcon:v4])
  {
    v6 = [*(a1 + 40) iconListView];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_2;
    v24[3] = &unk_278C76538;
    v31 = v32;
    v25 = v3;
    v7 = v4;
    v26 = v7;
    v27 = *(a1 + 32);
    v8 = v6;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v28 = v8;
    v29 = v9;
    v30 = v10;
    v11 = MEMORY[0x245CAD730](v24);
    v12 = objc_alloc_init(MEMORY[0x277D663B8]);
    objc_initWeak(&location, v12);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_4;
    v19[3] = &unk_278C76560;
    v13 = v7;
    v20 = v13;
    v14 = v11;
    v21 = v14;
    objc_copyWeak(&v22, &location);
    [v12 setDidAddIconViewBlock:v19];
    [v8 addLayoutObserver:v12];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_5;
    v18[3] = &unk_278C75E70;
    v18[4] = v32;
    v15 = MEMORY[0x245CAD730](v18);
    [*(a1 + 40) scrollIconToVisible:v13 animated:0 completion:v15];
    v16 = [*(a1 + 40) iconListView];
    v17 = [v16 displayedIconViewForIcon:v13];

    if (v17)
    {
      v14[2](v14, 0.0);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);

    _Block_object_dispose(v32, 8);
  }
}

void __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_2(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 80) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v4 = dispatch_time(0, (a2 * 1000000000.0));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_3;
    v12[3] = &unk_278C76510;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v13 = v10;
    v14 = v9;
    v11 = *(a1 + 72);
    v15 = *(a1 + 64);
    v16 = v11;
    dispatch_after(v4, MEMORY[0x277D85CD0], v12);
  }
}

void __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) replaceIcon:*(a1 + 40) withIcon:*(a1 + 48) options:0];
  [*(a1 + 56) layoutAndCreateIcon:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 1240));
  v4 = [WeakRetained widgetInsertionRippleIconAnimatorForIcon:*(a1 + 48) iconListView:*(a1 + 56) withReferenceIconView:*(a1 + 72)];

  [v4 animateWithCompletion:0];
}

void __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 icon];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9.n128_u64[0] = 0x3FD3333333333333;
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v9.n128_f64[0] = 0.0;
    }

    (*(v6 + 16))(v6, v9);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained invalidate];
  }
}

uint64_t __97__AMUIInfographViewController__handleInsertionForWidgetIcon_withReferenceIconView_fromPresenter___block_invoke_5(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
  }

  return result;
}

- (void)addWidgetSheetViewControllerWillAppear:(id)a3
{
  v4 = a3;
  [(AMUIInfographViewController *)self _invalidateStackConfigurationEditingTimeoutTimer];
  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerWillAppear:v4];
}

- (void)addWidgetSheetViewControllerDidAppear:(id)a3
{
  v8 = a3;
  v4 = [(AMUIInfographViewController *)self stackConfigurationViewController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 keepIconImageViewControllersStaticForReason:@"AMUIKeepStackStaticForAddWidgetSheetPresentationReason"];
    if (v6)
    {
      v7 = [v8 userInfo];
      [v7 setObject:v6 forKey:@"AMUIKeepStackStaticForAddWidgetSheetPresentationReason"];
    }
  }

  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerDidAppear:v8];
}

- (void)addWidgetSheetViewControllerWillDisappear:(id)a3
{
  v7 = a3;
  v4 = [v7 userInfo];
  v5 = [v4 objectForKey:@"AMUIKeepStackStaticForAddWidgetSheetPresentationReason"];

  if (v5)
  {
    [v5 invalidate];
    v6 = [v7 userInfo];
    [v6 removeObjectForKey:@"AMUIKeepStackStaticForAddWidgetSheetPresentationReason"];
  }

  [(AMUIInfographViewController *)self _handleWidgetSheetViewControllerWillDisappear:v7];
  [(AMUIInfographViewController *)self _restartStackConfigurationEditingTimeoutTimer];
}

- (void)_handleWidgetSheetViewControllerWillAppear:(id)a3
{
  v3 = a3;
  v4 = [v3 presenter];
  [v4 setSuppressesEditingStateForListView:1];
  if (objc_opt_respondsToSelector())
  {
    if ([v3 hidesPresenterTitledButtons])
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 0.3;
    }
  }

  else
  {
    v5 = 0.3;
  }

  v6 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__AMUIInfographViewController__handleWidgetSheetViewControllerWillAppear___block_invoke;
  v8[3] = &unk_278C75D60;
  v9 = v4;
  v7 = v4;
  [v6 animateWithDuration:v8 animations:0 completion:v5];
}

- (void)_handleWidgetSheetViewControllerWillDisappear:(id)a3
{
  v3 = [a3 presenter];
  [v3 setSuppressesEditingStateForListView:0];
  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__AMUIInfographViewController__handleWidgetSheetViewControllerWillDisappear___block_invoke;
  v6[3] = &unk_278C75D60;
  v7 = v3;
  v5 = v3;
  [v4 animateWithDuration:v6 animations:0 completion:0.3];
}

- (void)_handleWidgetSheetViewControllerDidDisappear:(id)a3
{
  v3 = [a3 presenter];
  [v3 updateExtraButtonVisibilityAnimated:1];
}

- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = objc_opt_class();
  v12 = v8;
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

  if (v10)
  {
    v15 = [(AMUIInfographViewController *)self widgetIconForDescriptor:v10 sizeClass:a4];
  }

  else if (v14)
  {
    v16 = [v14 descriptorsForSizeClass:a4];
    v15 = [(AMUIInfographViewController *)self widgetIconForDescriptors:v16 sizeClass:a4];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4
{
  v4 = MEMORY[0x277D66450];
  v5 = a3;
  v6 = [[v4 alloc] initWithCHSWidgetDescriptor:v5];

  v7 = SBHIconGridSizeClassForCHSWidgetFamily();
  [v6 setGridSizeClass:v7];

  return v6;
}

- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4
{
  v4 = MEMORY[0x277D66450];
  v5 = a3;
  v6 = [[v4 alloc] initWithCHSWidgetDescriptors:v5];

  v7 = SBHIconGridSizeClassForCHSWidgetFamily();
  [v6 setGridSizeClass:v7];

  return v6;
}

- (void)extensionsDidChangeForExtensionProvider:(id)a3
{
  addWidgetSheetConfigurationManager = self->_addWidgetSheetConfigurationManager;
  v4 = [(AMUIInfographViewController *)self addWidgetSheetViewController];
  [(SBHAddWidgetSheetConfigurationManager *)addWidgetSheetConfigurationManager updatePresentedWidgetEditingViewController:v4];
}

- (void)widgetHostManager:(id)a3 didNoteStackChangedActiveWidget:(id)a4
{
  v6 = [(AMUIInfographViewController *)self delegate:a3];
  v5 = [(AMUIInfographViewController *)self _infographConfigurationMetadata];
  [v6 viewController:self didUpdateActiveConfigurationMetadata:v5];
}

- (id)_infographConfigurationMetadata
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  iconListView = self->_iconListView;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__AMUIInfographViewController__infographConfigurationMetadata__block_invoke;
  v7[3] = &unk_278C765B0;
  v5 = v3;
  v8 = v5;
  [(SBIconListView *)iconListView enumerateIconViewsUsingBlock:v7];

  return v5;
}

void __62__AMUIInfographViewController__infographConfigurationMetadata__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = [a2 customIconImageViewController];
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 widgetIcon];
    v9 = [v8 activeWidget];
    v10 = [@"WidgetStack" stringByAppendingFormat:@"%lu", a3];
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 displayName];
    v13 = [v9 extensionBundleIdentifier];
    v14 = [v9 kind];
    v15 = [v11 stringWithFormat:@"%@:%@:%@", v12, v13, v14];

    [*(a1 + 32) setObject:v15 forKeyedSubscript:v10];
  }
}

- (void)_showLaunchConfirmationForApplicationWithBundleIdentifier:(id)a3 withActions:(id)a4 iconView:(id)a5
{
  v68[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(AMUIInfographViewController *)self isConfiguring])
  {
    v11 = AMUILogInfograph();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23F38B000, v11, OS_LOG_TYPE_DEFAULT, "Skipping launch confirmation because of configuration", buf, 2u);
    }

LABEL_12:

    goto LABEL_17;
  }

  v12 = [v10 window];

  if (!v12)
  {
    v11 = AMUILogInfograph();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23F38B000, v11, OS_LOG_TYPE_DEFAULT, "Skipping launch confirmation because iconView is no longer in a window", buf, 2u);
    }

    goto LABEL_12;
  }

  v13 = [v10 window];
  v14 = [(AMUIInfographViewController *)self view];
  v15 = [v14 window];

  if (v13 != v15)
  {
    v11 = AMUILogInfograph();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23F38B000, v11, OS_LOG_TYPE_DEFAULT, "Skipping launch confirmation because iconView is not in the correct window", buf, 2u);
    }

    goto LABEL_12;
  }

  [(AMUIInfographViewController *)self _willShowTemporaryOverlayForReason:@"AMUITemporaryOverlayReasonSetUpLaunchConfirmation"];
  [(AMUIInfographViewController *)self _dismissLaunchConfirmationAnimated:1];
  if (v10)
  {
    v16 = objc_alloc(MEMORY[0x277D75D68]);
    v17 = [MEMORY[0x277D75210] effectWithStyle:16];
    v18 = [v16 initWithEffect:v17];

    [v18 _setContinuousCornerRadius:14.0];
    v19 = [v18 layer];
    [v19 setAllowsGroupBlending:1];

    [v18 setAccessibilityIdentifier:@"infograph-launch-confirmation"];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:33.0];
    v21 = [MEMORY[0x277D755D0] configurationPreferringMonochrome];
    v58 = [v20 configurationByApplyingConfiguration:v21];

    v57 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.up.forward.square.fill" withConfiguration:v58];
    v59 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v57];
    v22 = [MEMORY[0x277D75348] whiteColor];
    [v59 setTintColor:v22];

    v23 = [v59 layer];
    [v23 setAllowsGroupBlending:1];

    v24 = [v59 layer];
    v25 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v68[0] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
    [v24 setCompositingFilter:v26];

    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v18 contentView];
    [v27 addSubview:v59];

    v52 = [(AMUIInfographViewController *)self view];
    [v52 addSubview:v18];
    v45 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__launchConfirmationTapGestureDidFire_];
    [v18 addGestureRecognizer:v45];
    [(AMUIInfographViewController *)self setLaunchConfirmationView:v18];
    [(AMUIInfographViewController *)self setPendingLaunchBundleIdentifier:v8];
    [(AMUIInfographViewController *)self setPendingLaunchActions:v9];
    v42 = MEMORY[0x277CCAAD0];
    v56 = [v18 widthAnchor];
    v55 = [v56 constraintEqualToConstant:60.0];
    v67[0] = v55;
    v54 = [v18 heightAnchor];
    v53 = [v54 constraintEqualToConstant:60.0];
    v67[1] = v53;
    v50 = [v18 centerXAnchor];
    v51 = [v10 trailingAnchor];
    v49 = [v50 constraintEqualToAnchor:v51 constant:-15.0];
    v67[2] = v49;
    v47 = [v18 centerYAnchor];
    v48 = [v10 topAnchor];
    v46 = [v47 constraintEqualToAnchor:v48 constant:15.0];
    v67[3] = v46;
    v43 = [v18 centerXAnchor];
    v44 = [v59 centerXAnchor];
    v28 = [v43 constraintEqualToAnchor:v44];
    v67[4] = v28;
    v29 = [v18 centerYAnchor];
    v30 = [v59 centerYAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v67[5] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:6];
    [v42 activateConstraints:v32];

    CGAffineTransformMakeScale(buf, 0.01, 0.01);
    [v18 setTransform:buf];
    [v18 setAlpha:0.0];
    v33 = [MEMORY[0x277CF0CF0] settingsWithMass:2.0 stiffness:219.325 damping:21.4268];
    v34 = MEMORY[0x277CF0D38];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __110__AMUIInfographViewController__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke;
    v64[3] = &unk_278C75D60;
    v35 = v18;
    v65 = v35;
    [v34 animateWithSettings:v33 options:2 actions:v64 completion:0];
    v36 = [MEMORY[0x277CF0C88] settingsWithMass:2.0 stiffness:1973.92 damping:125.664];
    [v36 setDelay:0.085];
    v37 = MEMORY[0x277CF0D38];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __110__AMUIInfographViewController__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke_2;
    v62[3] = &unk_278C75D60;
    v38 = v35;
    v63 = v38;
    [v37 animateWithSettings:v36 options:2 actions:v62 completion:0];
    objc_initWeak(buf, self);
    v39 = MEMORY[0x277CBEBB8];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __110__AMUIInfographViewController__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke_3;
    v60[3] = &unk_278C765D8;
    objc_copyWeak(&v61, buf);
    v40 = [v39 scheduledTimerWithTimeInterval:0 repeats:v60 block:10.0];
    [(AMUIInfographViewController *)self setLaunchConfirmationCancelTimer:v40];
    [(AMUIInfographViewController *)self _willShowTemporaryOverlayForReason:@"AMUITemporaryOverlayReasonLaunchConfirmation"];

    objc_destroyWeak(&v61);
    objc_destroyWeak(buf);
  }

  else
  {
    [(AMUIInfographViewController *)self _handleLaunchRequestForApplicationWithBundleIdentifier:v8 withActions:v9];
  }

  [(AMUIInfographViewController *)self _willHideTemporaryOverlayForReason:@"AMUITemporaryOverlayReasonSetUpLaunchConfirmation"];
LABEL_17:

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __110__AMUIInfographViewController__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

void __110__AMUIInfographViewController__showLaunchConfirmationForApplicationWithBundleIdentifier_withActions_iconView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissLaunchConfirmationAnimated:1];
}

- (void)_launchConfirmationTapGestureDidFire:(id)a3
{
  if ([a3 state] == 3)
  {
    v6 = [(AMUIInfographViewController *)self pendingLaunchBundleIdentifier];
    v4 = [(AMUIInfographViewController *)self pendingLaunchActions];
    if (v6)
    {
      v5 = [v4 bs_filter:&__block_literal_global_173];
      [(AMUIInfographViewController *)self _handleLaunchRequestForApplicationWithBundleIdentifier:v6 withActions:v5];
    }

    [(AMUIInfographViewController *)self _dismissLaunchConfirmationAnimated:1];
  }
}

- (void)_dismissLaunchConfirmationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AMUIInfographViewController *)self launchConfirmationView];
  v6 = v5;
  if (v5)
  {
    if (v3)
    {
      v7 = MEMORY[0x277D75D18];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__AMUIInfographViewController__dismissLaunchConfirmationAnimated___block_invoke;
      v14[3] = &unk_278C75D60;
      v15 = v5;
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __66__AMUIInfographViewController__dismissLaunchConfirmationAnimated___block_invoke_2;
      v12 = &unk_278C76108;
      v13 = v15;
      [v7 animateWithDuration:v14 animations:&v9 completion:0.3];
    }

    else
    {
      [v5 removeFromSuperview];
    }

    [(AMUIInfographViewController *)self setLaunchConfirmationView:0, v9, v10, v11, v12];
    [(AMUIInfographViewController *)self _willHideTemporaryOverlayForReason:@"AMUITemporaryOverlayReasonLaunchConfirmation"];
  }

  v8 = [(AMUIInfographViewController *)self launchConfirmationCancelTimer];
  [v8 invalidate];

  [(AMUIInfographViewController *)self setLaunchConfirmationCancelTimer:0];
  [(AMUIInfographViewController *)self setPendingLaunchBundleIdentifier:0];
  [(AMUIInfographViewController *)self setPendingLaunchActions:0];
}

uint64_t __66__AMUIInfographViewController__dismissLaunchConfirmationAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v4, 0.01, 0.01);
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:0.0];
}

- (void)_handleLaunchRequestForApplicationWithBundleIdentifier:(id)a3 withActions:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 dictionary];
  v9 = MEMORY[0x277CBEC38];
  [v8 bs_setSafeObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
  [v8 bs_setSafeObject:v9 forKey:*MEMORY[0x277D0AC70]];
  [v8 bs_setSafeObject:@"AMUIAppLaunchOriginAmbient" forKey:*MEMORY[0x277D0AC28]];
  [v8 bs_setSafeObject:v7 forKey:*MEMORY[0x277D0ABD0]];

  v10 = [MEMORY[0x277D0AD60] optionsWithDictionary:v8];
  v11 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__AMUIInfographViewController__handleLaunchRequestForApplicationWithBundleIdentifier_withActions___block_invoke;
  v13[3] = &unk_278C76620;
  v14 = v5;
  v12 = v5;
  [v11 openApplication:v12 withOptions:v10 completion:v13];
}

void __98__AMUIInfographViewController__handleLaunchRequestForApplicationWithBundleIdentifier_withActions___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = AMUILogInfograph();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      __98__AMUIInfographViewController__handleLaunchRequestForApplicationWithBundleIdentifier_withActions___block_invoke_cold_1(a1);
    }
  }

  else if (v6)
  {
    __98__AMUIInfographViewController__handleLaunchRequestForApplicationWithBundleIdentifier_withActions___block_invoke_cold_2(a1);
  }
}

- (void)_registerForAmbientPresentationTraitChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [(AMUIInfographViewController *)self registerForTraitChanges:v4 withHandler:&__block_literal_global_180];

  v6 = *MEMORY[0x277D85DE8];
}

void __74__AMUIInfographViewController__registerForAmbientPresentationTraitChanges__block_invoke(uint64_t a1, id *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a2 + 155);
  v5 = [v3 customDisplayConfigurationForWidgetViewController];

  v6 = AMUILogInfograph();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_23F38B000, v6, OS_LOG_TYPE_DEFAULT, "Updating widget view controllers to custom display configuration:%@ due to displayStyleTrait change", &v8, 0xCu);
  }

  [WeakRetained updateWidgetViewControllersWithCustomDisplayConfiguration:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_iconStateWithLeadingElements:(id)a3 trialingElements:(id)a4
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21[0] = @"elements";
  v21[1] = @"allowsExternalSuggestions";
  v22[0] = a3;
  v22[1] = &unk_28519CE00;
  v21[2] = @"gridSize";
  v21[3] = @"allowsSuggestions";
  v22[2] = @"small";
  v22[3] = &unk_28519CE18;
  v21[4] = @"iconType";
  v22[4] = @"custom";
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v14 = a3;
  v7 = [v5 dictionaryWithObjects:v22 forKeys:v21 count:5];
  v19[0] = @"elements";
  v19[1] = @"allowsExternalSuggestions";
  v20[0] = v6;
  v20[1] = &unk_28519CE00;
  v19[2] = @"gridSize";
  v19[3] = @"allowsSuggestions";
  v20[2] = @"small";
  v20[3] = &unk_28519CE18;
  v19[4] = @"iconType";
  v20[4] = @"custom";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v17 = @"iconLists";
  v15[0] = v7;
  v15[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v16 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_iconStateFromDefaultWidgetDescriptorStacks:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AMUILogInfograph();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to create iconStateFromDefaultWidgetDescriptorStacks:%@", &v14, 0xCu);
  }

  if (v4)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [(AMUIInfographViewController *)self _stackElementsFromWidgetDescriptors:v6];
    v9 = [(AMUIInfographViewController *)self _stackElementsFromWidgetDescriptors:v7];
    v10 = [(AMUIInfographViewController *)self _iconStateWithLeadingElements:v8 trialingElements:v9];
    v11 = AMUILogInfograph();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_23F38B000, v11, OS_LOG_TYPE_DEFAULT, "Successfully created iconStateFromDefaultWidgetDescriptorStacks:%@", &v14, 0xCu);
    }
  }

  else
  {
    v6 = AMUILogInfograph();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_23F38B000, v6, OS_LOG_TYPE_DEFAULT, "Could not create default icon state because defaultWidgetDescriptorStacks was nil", &v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_stackElementsFromWidgetDescriptors:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 kind];
        v11 = [v9 extensionIdentity];
        v12 = [v11 containerBundleIdentifier];

        v13 = [v9 extensionBundleIdentifier];
        v22[0] = @"elementType";
        v22[1] = @"widgetIdentifier";
        v23[0] = @"widget";
        v23[1] = v10;
        v22[2] = @"containerBundleIdentifier";
        v22[3] = @"bundleIdentifier";
        v23[2] = v12;
        v23[3] = v13;
        v22[4] = @"widgetSuggestionSource";
        v23[4] = @"onboarding";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_defaultIconState
{
  v65[5] = *MEMORY[0x277D85DE8];
  v64[0] = @"elementType";
  v64[1] = @"widgetIdentifier";
  v65[0] = @"widget";
  v65[1] = @"com.apple.mobiletimer.datetime";
  v64[2] = @"containerBundleIdentifier";
  v64[3] = @"bundleIdentifier";
  v65[2] = @"com.apple.mobiletimer";
  v65[3] = @"com.apple.mobiletimer.WorldClockWidget";
  v64[4] = @"widgetSuggestionSource";
  v65[4] = @"onboarding";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:5];
  v62[0] = @"elementType";
  v62[1] = @"widgetIdentifier";
  v63[0] = @"widget";
  v63[1] = @"com.apple.CalendarWidget.CalendarDateWidget";
  v62[2] = @"containerBundleIdentifier";
  v62[3] = @"bundleIdentifier";
  v63[2] = @"com.apple.mobilecal";
  v63[3] = @"com.apple.mobilecal.CalendarWidgetExtension";
  v62[4] = @"widgetSuggestionSource";
  v63[4] = @"onboarding";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:5];
  v60[0] = @"elementType";
  v60[1] = @"widgetIdentifier";
  v61[0] = @"widget";
  v61[1] = @"detail";
  v60[2] = @"containerBundleIdentifier";
  v60[3] = @"bundleIdentifier";
  v61[2] = @"com.apple.stocks";
  v61[3] = @"com.apple.stocks.widget";
  v60[4] = @"widgetSuggestionSource";
  v61[4] = @"onboarding";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:5];
  v58[0] = @"elementType";
  v58[1] = @"widgetIdentifier";
  v59[0] = @"widget";
  v59[1] = @"com.apple.mobiletimer.square";
  v58[2] = @"containerBundleIdentifier";
  v58[3] = @"bundleIdentifier";
  v59[2] = @"com.apple.mobiletimer";
  v59[3] = @"com.apple.mobiletimer.WorldClockWidget";
  v58[4] = @"widgetSuggestionSource";
  v59[4] = @"onboarding";
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:5];
  v57[0] = v42;
  v40 = v3;
  v41 = v2;
  v57[1] = v2;
  v39 = v57[2] = v3;
  v57[3] = v39;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:4];
  v34 = [(AMUIInfographViewController *)self _validatedStackFromWidgets:v4];

  v55[0] = @"elementType";
  v55[1] = @"widgetIdentifier";
  v56[0] = @"widget";
  v56[1] = @"com.apple.CalendarWidget.CalendarMonthWidget";
  v55[2] = @"containerBundleIdentifier";
  v55[3] = @"bundleIdentifier";
  v56[2] = @"com.apple.mobilecal";
  v56[3] = @"com.apple.mobilecal.CalendarWidgetExtension";
  v55[4] = @"widgetSuggestionSource";
  v56[4] = @"onboarding";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];
  v53[0] = @"elementType";
  v53[1] = @"widgetIdentifier";
  v54[0] = @"widget";
  v54[1] = @"com.apple.weather";
  v53[2] = @"containerBundleIdentifier";
  v53[3] = @"bundleIdentifier";
  v54[2] = @"com.apple.weather";
  v54[3] = @"com.apple.weather.widget";
  v53[4] = @"widgetSuggestionSource";
  v54[4] = @"onboarding";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
  v51[0] = @"elementType";
  v51[1] = @"widgetIdentifier";
  v52[0] = @"widget";
  v52[1] = @"com.apple.CalendarWidget.CalendarUpNextWidget";
  v51[2] = @"containerBundleIdentifier";
  v51[3] = @"bundleIdentifier";
  v52[2] = @"com.apple.mobilecal";
  v52[3] = @"com.apple.mobilecal.CalendarWidgetExtension";
  v51[4] = @"widgetSuggestionSource";
  v52[4] = @"onboarding";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:5];
  v49[0] = @"elementType";
  v49[1] = @"widgetIdentifier";
  v50[0] = @"widget";
  v50[1] = @"com.apple.reminders.widget";
  v49[2] = @"containerBundleIdentifier";
  v49[3] = @"bundleIdentifier";
  v50[2] = @"com.apple.reminders";
  v50[3] = @"com.apple.reminders.WidgetExtension";
  v49[4] = @"widgetSuggestionSource";
  v50[4] = @"onboarding";
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:5];
  v37 = v6;
  v38 = v5;
  v48[0] = v5;
  v35 = v48[1] = v6;
  v36 = v7;
  v48[2] = v7;
  v48[3] = v35;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v9 = [(AMUIInfographViewController *)self _validatedStackFromWidgets:v8];

  v10 = [v34 count];
  v11 = [v9 count];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = self;
    v14 = v34;
    goto LABEL_23;
  }

  v46[0] = @"elementType";
  v46[1] = @"widgetIdentifier";
  v47[0] = @"widget";
  v47[1] = @"BatteriesAvocadoWidget";
  v46[2] = @"containerBundleIdentifier";
  v46[3] = @"bundleIdentifier";
  v47[2] = @"com.apple.Batteries";
  v47[3] = @"com.apple.Batteries.BatteriesAvocadoWidgetExtension";
  v46[4] = @"widgetSuggestionSource";
  v47[4] = @"onboarding";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:5];
  v44[0] = @"elementType";
  v44[1] = @"widgetIdentifier";
  v45[0] = @"widget";
  v45[1] = @"SingleContactWidget_iOS";
  v44[2] = @"containerBundleIdentifier";
  v44[3] = @"bundleIdentifier";
  v45[2] = @"com.apple.PeopleViewService";
  v45[3] = @"com.apple.PeopleViewService.PeopleWidget-iOS";
  v44[4] = @"widgetSuggestionSource";
  v45[4] = @"onboarding";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];
  v14 = v34;
  if ([v34 count] == 2)
  {
    v16 = [v34 firstObject];
    v17 = [v16 valueForKey:@"containerBundleIdentifier"];
    v18 = [v17 isEqualToString:@"com.apple.mobiletimer"];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!(v10 | v12))
  {
    v21 = v33;
    v22 = [MEMORY[0x277CBEA60] arrayWithObject:v33];

    v23 = [MEMORY[0x277CBEA60] arrayWithObject:v15];

    v9 = v23;
    v14 = v22;
    v13 = self;
    goto LABEL_19;
  }

  if (!v10)
  {
    v13 = self;
    if ([v9 count] == 1)
    {
      v21 = v33;
      v25 = [MEMORY[0x277CBEA60] arrayWithObject:v33];

      v14 = v25;
      goto LABEL_19;
    }

    v26 = self;
    v27 = v9;
    goto LABEL_17;
  }

  v13 = self;
  if (!v12)
  {
    if (([v34 count] == 1) | v18 & 1)
    {
      v21 = v33;
      v24 = [MEMORY[0x277CBEA60] arrayWithObject:v33];

      v9 = v24;
      goto LABEL_19;
    }

    v26 = self;
    v27 = v34;
LABEL_17:
    [(AMUIInfographViewController *)v26 _splitStackElements:v27 intoLeadingElements:v19 trailingElements:v20];
  }

  v21 = v33;
LABEL_19:
  if ([v19 count] && objc_msgSend(v20, "count"))
  {
    v28 = v19;

    v29 = v20;
    v9 = v29;
    v14 = v28;
  }

LABEL_23:
  v30 = [(AMUIInfographViewController *)v13 _iconStateWithLeadingElements:v14 trialingElements:v9];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)_splitStackElements:(id)a3 intoLeadingElements:(id)a4 trailingElements:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 count] >> 1;
  v11 = [v9 subarrayWithRange:{0, v10}];
  [v8 addObjectsFromArray:v11];

  v12 = [v9 subarrayWithRange:{v10, objc_msgSend(v9, "count") - v10}];

  [v7 addObjectsFromArray:v12];
}

- (id)_validatedStackFromWidgets:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 objectForKey:{@"containerBundleIdentifier", v16}];
        v11 = [v9 objectForKey:@"extensionBundleIdentifier"];
        v12 = [(AMUIInfographViewController *)self _recordExistsForContainerBundleIdentifier:v10];
        v13 = [(AMUIInfographViewController *)self _isApplicationProtectedForContainerBundleIdentifier:v10 extensionBundleIdentifier:v11];
        if (v12 && !v13)
        {
          [v16 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_preparePosterConfigurationToSaveWithCurrentIconState:(id)a3 intents:(id)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(AMUIInfographViewController *)self _emptyIconState:v8])
  {
    v11 = AMUILogInfograph();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AMUIInfographViewController _preparePosterConfigurationToSaveWithCurrentIconState:intents:reason:];
    }

    v12 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v11 = v13;
    if (v8)
    {
      [v13 setObject:v8 forKey:@"AMUIIconStateKey"];
    }

    if (v9)
    {
      [v11 setObject:v9 forKey:@"AMUIIntentsKey"];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __100__AMUIInfographViewController__preparePosterConfigurationToSaveWithCurrentIconState_intents_reason___block_invoke;
    v15[3] = &unk_278C76668;
    v16 = v10;
    v12 = [(AMUIInfographViewController *)self _saveInfographPosterConfigurationData:v11 completion:v15];
  }

  return v12;
}

void __100__AMUIInfographViewController__preparePosterConfigurationToSaveWithCurrentIconState_intents_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AMUILogInfograph();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_23F38B000, v7, OS_LOG_TYPE_ERROR, "Error saving poster configuration. Updated reason:%@ configuration:%@ error:%@", &v10, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_emptyIconState:(id)a3
{
  v4 = [a3 objectForKey:@"iconLists"];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 firstObject];
    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = objc_opt_class();
      v9 = v7;
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

      v12 = v10;

      v13 = [v6 objectAtIndexedSubscript:1];
      v14 = objc_opt_class();
      v15 = v13;
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

      v18 = [(AMUIInfographViewController *)self _isStackEmpty:v12];
      v19 = [(AMUIInfographViewController *)self _isStackEmpty:v17];

      v11 = v18 || v19;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (BOOL)_isStackEmpty:(id)a3
{
  v3 = a3;
  v4 = [v3 bs_safeArrayForKey:@"elements"];
  v5 = [v3 bs_safeStringForKey:@"bundleIdentifier"];

  v6 = v5 == 0;
  if (v4 && [v4 count])
  {
    v6 = 0;
  }

  return v6;
}

- (void)configurationLongPressDidUpdate:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [v4 view];
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = v5;
      v9 = [(AMUIInfographViewController *)self delegate];
      v10 = [v9 createUnlockRequestForViewController:self];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v10 setName:v12];

      v13 = AMUIAmbientUIFrameworkBundle();
      v14 = [v13 localizedStringForKey:@"UNLOCK_WIDGET_STACK_EDITING" value:&stru_28518E9B8 table:0];
      [v10 setUnlockDestination:v14];

      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __63__AMUIInfographViewController_configurationLongPressDidUpdate___block_invoke;
      v16[3] = &unk_278C760E0;
      objc_copyWeak(&v18, &location);
      v15 = v8;
      v17 = v15;
      [v9 requestUnlockForViewController:self withRequest:v10 completion:v16];
      [(AMUIInfographViewController *)self _dismissLaunchConfirmationAnimated:1];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __63__AMUIInfographViewController_configurationLongPressDidUpdate___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    WeakRetained = objc_loadWeakRetained((result + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained;
      WeakRetained = [*(v2 + 32) _isInAWindow];
      v4 = v7;
      if (WeakRetained)
      {
        v5 = [v7 viewIfLoaded];
        v6 = [v5 _isInAWindow];

        v4 = v7;
        if (v6)
        {
          [v7[144] notificationOccurred:0];
          objc_storeWeak(v7 + 143, *(v2 + 32));
          WeakRetained = [*(v2 + 32) presentStackConfigurationCard];
          v4 = v7;
        }
      }
    }

    return MEMORY[0x2821F96F8](WeakRetained, v4);
  }

  return result;
}

- (void)_fetchWidgetHostManager
{
  v3 = [(AMUIInfographViewController *)self delegate];
  v5 = [v3 widgetHostManagerForViewController:self];

  if (v5)
  {
    [v5 setDelegate:self];
    [(AMUIInfographViewController *)self setWidgetHostManager:v5];
    v4 = [v5 iconManager];
    [(AMUIInfographViewController *)self setIconManager:v4];
  }
}

- (void)_fetchDefaultWidgetDescriptorStacks
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(AMUIInfographViewController *)self delegate];
  v4 = [v3 defaultWidgetDescriptorStacksForViewController:self];
  v5 = AMUILogInfograph();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Fetched defaultWidgetDescriptorStacks:%@", &v7, 0xCu);
  }

  [(AMUIInfographViewController *)self setDefaultWidgetDescriptorStacks:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerForFirstPresentationStateChange
{
  if ([(AMAmbientDefaults *)self->_ambientDefaults isFirstPresentation])
  {
    objc_initWeak(&location, self);
    ambientDefaults = self->_ambientDefaults;
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"firstPresentation"];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__AMUIInfographViewController__registerForFirstPresentationStateChange__block_invoke;
    v9[3] = &unk_278C75D88;
    objc_copyWeak(&v10, &location);
    v7 = [(AMAmbientDefaults *)ambientDefaults observeDefault:v4 onQueue:v5 withBlock:v9];
    defaultObserver = self->_defaultObserver;
    self->_defaultObserver = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __71__AMUIInfographViewController__registerForFirstPresentationStateChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained[140] isFirstPresentation] & 1) == 0)
  {
    v3 = dispatch_time(0, 800000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__AMUIInfographViewController__registerForFirstPresentationStateChange__block_invoke_2;
    block[3] = &unk_278C75D60;
    block[4] = v2;
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

- (void)_flashPageControlAnimated:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AMUIInfographViewController__flashPageControlAnimated___block_invoke;
  v3[3] = &__block_descriptor_33_e38_v16__0__SBHWidgetStackViewController_8l;
  v4 = a3;
  [(AMUIInfographViewController *)self _enumerateWidgetStackViewControllersWithBlock:v3];
}

void __57__AMUIInfographViewController__flashPageControlAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 _flashPageControlAnimated:*(a1 + 32)];
  }
}

- (void)_enumerateWidgetStackViewControllersWithBlock:(id)a3
{
  v4 = a3;
  iconListView = self->_iconListView;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__AMUIInfographViewController__enumerateWidgetStackViewControllersWithBlock___block_invoke;
  v7[3] = &unk_278C766B0;
  v8 = v4;
  v6 = v4;
  [(SBIconListView *)iconListView enumerateIconViewsUsingBlock:v7];
}

void __77__AMUIInfographViewController__enumerateWidgetStackViewControllersWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 customIconImageViewController];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_applicationBundleIdentifierForLaunchingIconView:(id)a3
{
  v3 = a3;
  v4 = [v3 icon];
  if ([v4 isWidgetIcon])
  {
    v5 = [v3 customIconImageViewController];
    v6 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 currentWidgetViewController];

    v10 = [v9 sbh_underlyingAvocadoHostViewControllers];
    v11 = [v10 anyObject];

    v12 = [v11 widget];
    v13 = [v12 extensionIdentity];
    v14 = [v13 containerBundleIdentifier];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_willEnterConfigurationForReason:(id)a3
{
  v9 = a3;
  configurationReasons = self->_configurationReasons;
  if (!configurationReasons)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA940]);
    v6 = self->_configurationReasons;
    self->_configurationReasons = v5;

    configurationReasons = self->_configurationReasons;
  }

  v7 = [(NSCountedSet *)configurationReasons count];
  [(NSCountedSet *)self->_configurationReasons addObject:v9];
  if (!v7)
  {
    v8 = [(AMUIInfographViewController *)self delegate];
    [v8 viewControllerWillBeginConfiguration:self];
  }
}

- (void)_willEndConfigurationForReason:(id)a3
{
  configurationReasons = self->_configurationReasons;
  v5 = a3;
  v6 = [(NSCountedSet *)configurationReasons count];
  [(NSCountedSet *)self->_configurationReasons removeObject:v5];

  v7 = [(NSCountedSet *)self->_configurationReasons count];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(AMUIInfographViewController *)self delegate];
    [v9 viewControllerWillEndConfiguration:self];
  }
}

- (void)_willShowTemporaryOverlayForReason:(id)a3
{
  v9 = a3;
  temporaryOverlayReasons = self->_temporaryOverlayReasons;
  if (!temporaryOverlayReasons)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA940]);
    v6 = self->_temporaryOverlayReasons;
    self->_temporaryOverlayReasons = v5;

    temporaryOverlayReasons = self->_temporaryOverlayReasons;
  }

  v7 = [(NSCountedSet *)temporaryOverlayReasons count];
  [(NSCountedSet *)self->_temporaryOverlayReasons addObject:v9];
  if (!v7)
  {
    v8 = [(AMUIInfographViewController *)self delegate];
    [v8 viewControllerWillBeginShowingTemporaryOverlay:self];
  }
}

- (void)_willHideTemporaryOverlayForReason:(id)a3
{
  temporaryOverlayReasons = self->_temporaryOverlayReasons;
  v5 = a3;
  v6 = [(NSCountedSet *)temporaryOverlayReasons count];
  [(NSCountedSet *)self->_temporaryOverlayReasons removeObject:v5];

  v7 = [(NSCountedSet *)self->_temporaryOverlayReasons count];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(AMUIInfographViewController *)self delegate];
    [v9 viewControllerWillEndShowingTemporaryOverlay:self];
  }
}

- (id)targetedDragPreviewForIconView:(id)a3 item:(id)a4 session:(id)a5 previewParameters:(id)a6
{
  v7 = a6;
  v8 = a3;
  [v8 iconImageInfo];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [MEMORY[0x277D75348] blackColor];
  [v7 setBackgroundColor:v15];

  v16 = MEMORY[0x277D75208];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v10;
  v21.size.height = v12;
  v22 = CGRectInset(v21, -6.0, -6.0);
  v17 = [v16 bezierPathWithRoundedRect:v22.origin.x cornerRadius:{v22.origin.y, v22.size.width, v22.size.height, v14}];
  [v7 setVisiblePath:v17];

  v18 = [v8 defaultDragPreviewWithParameters:v7];

  return v18;
}

- (void)_setupAmbientDefaults
{
  v3 = [(AMUIInfographViewController *)self delegate];
  v4 = [v3 ambientDefaultsForViewController:self];
  ambientDefaults = self->_ambientDefaults;
  self->_ambientDefaults = v4;

  if ([(AMUIInfographViewController *)self wantsDefaultInfographLayout])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(AMAmbientDefaults *)self->_ambientDefaults isFirstPresentation];
  }

  [(AMUIInfographViewController *)self setWantsDefaultInfographLayout:v6];

  [(AMUIInfographViewController *)self _registerForFirstPresentationStateChange];
}

- (void)_validateIconListModel:(id)a3
{
  v37[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 icons];
  if (v5)
  {
    [(AMUIInfographViewController *)self _validateIcons:v5 inIconListModel:v4];
    v6 = [v4 numberOfIcons];
    switch(v6)
    {
      case 0:
        v7 = [(AMUIInfographViewController *)self _createBatteriesWidgetIcon];
        v15 = [(AMUIInfographViewController *)self _createContactsWidgetIcon];
        v37[0] = v7;
        v37[1] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
        v17 = [v4 addIcons:v16];

        goto LABEL_27;
      case 1:
        v7 = [v4 firstIcon];
        v8 = [(PRPosterAmbientWidgetLayout *)self->_ambientWidgetLayout widgetLayoutIconState];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 objectForKey:@"AMUIIconStateKey"];
          v11 = [v10 objectForKey:@"iconLists"];
          v12 = objc_opt_class();
          v13 = v11;
          if (v12)
          {
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v18 = v14;

          if (v18)
          {
            v19 = [v18 firstObject];
            v20 = objc_opt_class();
            v21 = v19;
            if (v20)
            {
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            if (v23 && [v23 count] == 2)
            {
              v24 = [v23 firstObject];
              v25 = objc_opt_class();
              v26 = __BSSafeCast(v24, v25);

              if (v26)
              {
                v27 = [v26 objectForKey:@"displayIdentifier"];
                v28 = objc_opt_class();
                v36 = __BSSafeCast(v27, v28);

                v29 = [v7 uniqueIdentifier];
                v35 = v26;
                v30 = [v36 isEqualToString:v29];

                v31 = [(AMUIInfographViewController *)self _createBatteriesWidgetIcon];
                v32 = v30;
                v26 = v35;
                v33 = [v4 insertIcon:v31 atIndex:v32];
              }
            }
          }
        }

        goto LABEL_27;
      case 2:
        v7 = [(AMUIInfographViewController *)self _defaultIconState];
        [(AMUIInfographViewController *)self _migrateClockCityWidgetForIconListModel:v4 withDefaultIconState:v7];
LABEL_27:

        break;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_validateIcons:(id)a3 inIconListModel:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  obj = v6;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = v8;
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

        if (v12)
        {
          v27 = i;
          v13 = [v12 widgets];
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v28 + 1) + 8 * j);
                v19 = [v18 containerBundleIdentifier];
                if (![(AMUIInfographViewController *)self _recordExistsForContainerBundleIdentifier:v19])
                {
                  v20 = AMUILogInfograph();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v37 = v18;
                    _os_log_impl(&dword_23F38B000, v20, OS_LOG_TYPE_DEFAULT, "Removing widget:%@ from icon because container app was deleted", buf, 0xCu);
                  }

                  [v12 removeIconDataSource:v18];
                }

                if ([(AMUIInfographViewController *)self _isApplicationForWidgetProtected:v18])
                {
                  v21 = AMUILogInfograph();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v37 = v18;
                    _os_log_impl(&dword_23F38B000, v21, OS_LOG_TYPE_DEFAULT, "Removing widget:%@ from icon because container app is locked or hidden", buf, 0xCu);
                  }

                  [v12 removeIconDataSource:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v28 objects:v38 count:16];
            }

            while (v15);
          }

          if (![v12 iconDataSourceCount])
          {
            [v23 removeIcon:v12];
          }

          i = v27;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isApplicationForWidgetProtected:(id)a3
{
  v4 = a3;
  v5 = [v4 containerBundleIdentifier];
  v6 = [v4 extensionBundleIdentifier];

  LOBYTE(self) = [(AMUIInfographViewController *)self _isApplicationProtectedForContainerBundleIdentifier:v5 extensionBundleIdentifier:v6];
  return self;
}

- (BOOL)_isApplicationProtectedForContainerBundleIdentifier:(id)a3 extensionBundleIdentifier:(id)a4
{
  v4 = [(AMUIInfographViewController *)self _effectiveContainerBundleIdentifierForContainerBundleIdentifier:a3 extensionBundleIdentifier:a4];
  v5 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v4];
  v6 = ([v5 isLocked] & 1) != 0 || objc_msgSend(v5, "isHidden");

  return v6;
}

- (BOOL)_recordExistsForContainerBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  return v5 != 0;
}

- (id)_createBatteriesWidgetIcon
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"BatteriesAvocadoWidget" extensionBundleIdentifier:@"com.apple.Batteries.BatteriesAvocadoWidgetExtension" containerBundleIdentifier:@"com.apple.Batteries"];
  v3 = [objc_alloc(MEMORY[0x277D66450]) initWithWidget:v2];

  return v3;
}

- (id)_createContactsWidgetIcon
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"SingleContactWidget_iOS" extensionBundleIdentifier:@"com.apple.PeopleViewService.PeopleWidget-iOS" containerBundleIdentifier:@"com.apple.PeopleViewService"];
  v3 = [objc_alloc(MEMORY[0x277D66450]) initWithWidget:v2];

  return v3;
}

- (void)_migrateClockCityWidgetForIconListModel:(id)a3 withDefaultIconState:(id)a4
{
  v37 = a3;
  v6 = a4;
  v7 = self->_ambientDefaults;
  if (([(AMAmbientDefaults *)v7 hasMigratedClockCityWidget]& 1) == 0)
  {
    v8 = [v37 iconAtIndex:0];
    v9 = objc_opt_class();
    v10 = v8;
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

    v13 = [v12 iconDataSources];
    v14 = [v6 objectForKey:@"iconLists"];
    v15 = objc_opt_class();
    v16 = v14;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      v19 = [v18 firstObject];
      v20 = objc_opt_class();
      v21 = v19;
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v24 = v22;

      if (v24)
      {
        v25 = [v24 firstObject];
        v26 = objc_opt_class();
        v27 = v25;
        if (v26)
        {
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;

        if (v29)
        {
          v30 = [v29 objectForKey:@"elements"];
          v31 = objc_opt_class();
          v32 = v30;
          if (v31)
          {
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v23 = v33;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if ([(AMUIInfographViewController *)self _shouldMigrateClockCityWidgetForIconDataSources:v13 withWidgetStackElements:v23])
    {
      v34 = [v13 firstObject];
      [v12 removeIconDataSource:v34];
      v35 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"com.apple.mobiletimer.datetime" extensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" containerBundleIdentifier:@"com.apple.mobiletimer"];
      v36 = [v13 firstObject];
      [v12 insertIconDataSource:v35 beforeIconDataSource:v36];
    }

    [(AMAmbientDefaults *)v7 setMigratedClockCityWidget:1];
  }
}

- (BOOL)_shouldMigrateClockCityWidgetForIconDataSources:(id)a3 withWidgetStackElements:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = v5;
  v7 = [v5 count];
  if (v7 < [v6 count])
  {
LABEL_23:
    LOBYTE(v9) = 0;
    goto LABEL_24;
  }

  if ([v6 count])
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [v26 objectAtIndex:v8];
      v11 = objc_opt_class();
      v12 = v10;
      if (v11)
      {
        v13 = (objc_opt_isKindOfClass() & 1) != 0 ? v12 : 0;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      v15 = [v6 objectAtIndex:v8];
      v16 = objc_opt_class();
      v17 = v15;
      if (v16)
      {
        v18 = (objc_opt_isKindOfClass() & 1) != 0 ? v17 : 0;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (!v14 || !v19)
      {
        break;
      }

      v20 = [v14 extensionBundleIdentifier];
      v21 = [v14 kind];
      v22 = [v19 objectForKey:@"bundleIdentifier"];
      if (v8)
      {
        v23 = [v19 objectForKey:@"widgetIdentifier"];
      }

      else
      {
        v23 = @"com.apple.mobiletimer.City";
      }

      v24 = [v20 isEqualToString:v22];
      v9 &= [v21 isEqualToString:v23] & v24;

      if (++v8 >= [v6 count])
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  LOBYTE(v9) = 1;
LABEL_24:

  return v9 & 1;
}

- (void)_restartStackConfigurationEditingTimeoutTimer
{
  [(AMUIInfographViewController *)self _invalidateStackConfigurationEditingTimeoutTimer];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__stackConfigurationEditingTimeoutTimerFired selector:0 userInfo:0 repeats:30.0];
  configurationEditTimeoutTimer = self->_configurationEditTimeoutTimer;
  self->_configurationEditTimeoutTimer = v3;

  v5 = self->_configurationEditTimeoutTimer;

  [(NSTimer *)v5 setTolerance:10.0];
}

- (void)_stackConfigurationEditingTimeoutTimerFired
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewPresentingStackConfiguration);
  [WeakRetained dismissStackConfigurationCard];

  [(AMUIInfographViewController *)self _invalidateStackConfigurationEditingTimeoutTimer];
}

- (void)_invalidateStackConfigurationEditingTimeoutTimer
{
  configurationEditTimeoutTimer = self->_configurationEditTimeoutTimer;
  if (configurationEditTimeoutTimer)
  {
    [(NSTimer *)configurationEditTimeoutTimer invalidate];
    v4 = self->_configurationEditTimeoutTimer;
    self->_configurationEditTimeoutTimer = 0;
  }
}

- (SBIconListLayoutProvider)listLayoutProvider
{
  v17[1] = *MEMORY[0x277D85DE8];
  addWidgetSheetListLayoutProvider = self->_addWidgetSheetListLayoutProvider;
  if (!addWidgetSheetListLayoutProvider)
  {
    v4 = *MEMORY[0x277D666D0];
    v5 = objc_alloc_init(MEMORY[0x277D66160]);
    v6 = [v5 layoutForIconLocation:v4];
    v7 = [objc_alloc(MEMORY[0x277D66150]) initWithBaseListLayout:v6];
    v8 = objc_alloc_init(AMUIInfographListLayoutProvider);
    v9 = [(AMUIInfographListLayoutProvider *)v8 layoutForIconLocation:v4];
    [v7 setListLayout:v9 forSelector:sel_widgetContentMargins];
    [v7 setListLayout:v9 forSelector:sel_widgetContentMarginsWithBackgroundRemoved];
    [v7 setListLayout:v9 forSelector:sel_widgetScaleFactor];
    [v7 setListLayout:v9 forSelector:sel_iconImageInfo];
    [v7 setListLayout:v9 forSelector:sel_iconImageInfoForGridSizeClass_];
    v10 = objc_alloc(MEMORY[0x277D66158]);
    v16 = v4;
    v17[0] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v10 initWithListLayouts:v11];
    v13 = self->_addWidgetSheetListLayoutProvider;
    self->_addWidgetSheetListLayoutProvider = v12;

    addWidgetSheetListLayoutProvider = self->_addWidgetSheetListLayoutProvider;
  }

  v14 = *MEMORY[0x277D85DE8];

  return addWidgetSheetListLayoutProvider;
}

- (void)iconListView:(id)a3 didAddIconView:(id)a4
{
  v8 = [a4 customIconImageViewController];
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    [v7 addObserver:self];
  }
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__AMUIInfographViewController_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_278C75D60;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__AMUIInfographViewController_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1240));
  v5 = [WeakRetained rootFolder];

  v3 = [v5 lists];
  v4 = [v3 firstObject];

  [*(a1 + 32) _validateIconListModel:v4];
}

- (AMUIInfographViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMUIWidgetHostManager)widgetHostManager
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetHostManager);

  return WeakRetained;
}

- (NSArray)defaultWidgetDescriptorStacks
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultWidgetDescriptorStacks);

  return WeakRetained;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

+ (id)_clockCityWidget
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"com.apple.mobiletimer.City" extensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" containerBundleIdentifier:@"com.apple.mobiletimer"];

  return v2;
}

+ (id)_clockLocalWidget
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"com.apple.mobiletimer.datetime" extensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" containerBundleIdentifier:@"com.apple.mobiletimer"];

  return v2;
}

+ (id)_bigDateTimeWidget
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"com.apple.CalendarWidget.CalendarDateWidget" extensionBundleIdentifier:@"com.apple.mobilecal.CalendarWidgetExtension" containerBundleIdentifier:@"com.apple.mobilecal"];

  return v2;
}

+ (id)_stocksWidget
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"detail" extensionBundleIdentifier:@"com.apple.stocks.widget" containerBundleIdentifier:@"com.apple.stocks"];

  return v2;
}

+ (id)_clockSquareWidget
{
  v2 = [objc_alloc(MEMORY[0x277D66320]) initWithKind:@"com.apple.mobiletimer.square" extensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" containerBundleIdentifier:@"com.apple.mobiletimer"];

  return v2;
}

+ (id)_defaultWidgetDescriptionForKind:(id)a3 bundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"elementType";
  v14[1] = @"widgetIdentifier";
  v15[0] = @"widget";
  v15[1] = a3;
  v14[2] = @"containerBundleIdentifier";
  v14[3] = @"bundleIdentifier";
  v15[2] = a5;
  v15[3] = a4;
  v14[4] = @"widgetSuggestionSource";
  v15[4] = @"onboarding";
  v7 = MEMORY[0x277CBEAC0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setPosterConfiguration:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Executing setPosterConfiguration; new poster configuration incoming (new '%@')", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPosterConfiguration:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Received nil widgetLayoutIconState from posterConfiguration:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPosterConfiguration:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "Received nil ambientWidgetLayout from posterConfiguration:%@ withError:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setPosterConfiguration:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Received empty widgetLayoutIconState from posterConfiguration:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPosterConfiguration:(uint64_t *)a1 .cold.5(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v2, v3, "Skipping setPosterConfiguration; same poster already set (current '%@', new '%@')");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_loadInfographPosterConfigurationDataWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_loadInfographPosterConfigurationDataWithError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_loadInfographPosterConfigurationDataWithError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Load memory icon state %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveInfographPosterConfigurationData:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Poster updater tries to update poster configuration %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveInfographPosterConfigurationData:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __80__AMUIInfographViewController__saveInfographPosterConfigurationData_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "The updated poster configuration is %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__AMUIInfographViewController__saveInfographPosterConfigurationData_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Failed to update infograph configuration with error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_uniqueIdentifierStacksFromIconState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "Cannot create unique identifier stacks from icon state, invalid stacks in iconLists:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__AMUIInfographViewController__fetchIntents__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "Fail to archive intent for %@ with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)iconManager:bundleIdentifierToLaunchForWidgetURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v0, v1, "No app proxies found for widget URL:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__AMUIInfographViewController__handleLaunchRequestForApplicationWithBundleIdentifier_withActions___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v2, v3, "[%{public}@] Application launch from widget failed: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __98__AMUIInfographViewController__handleLaunchRequestForApplicationWithBundleIdentifier_withActions___block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_3(&dword_23F38B000, v2, v3, "[%{public}@] Application launch from widget succeeded", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_preparePosterConfigurationToSaveWithCurrentIconState:intents:reason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end