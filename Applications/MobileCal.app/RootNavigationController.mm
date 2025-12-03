@interface RootNavigationController
+ (BOOL)_diagnosticsAvailable;
+ (id)_inboxTitleForNotificationCount:(unint64_t)count;
- (BOOL)_calendarsButtonHasBackground;
- (BOOL)_canChangeSelectedDate;
- (BOOL)_canChangeSelectedEvent;
- (BOOL)_canPerformDeleteKeyCommand;
- (BOOL)_canPerformDuplicateKeyCommand;
- (BOOL)_canPerformEditKeyCommand;
- (BOOL)_canPerformRecurringEventNextOccurrenceSelectionCommand;
- (BOOL)_canPerformRecurringEventPreviousOccurrenceSelectionCommand;
- (BOOL)_canPerformSequentialEventSelectionCommand;
- (BOOL)_canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:(id)collection toNewCollection:(id)newCollection;
- (BOOL)_containsViewControllerRequiringNavBarVisibilityRestoration;
- (BOOL)_dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (BOOL)_isAddEventPopoverDisplayed;
- (BOOL)_isCurrentlyDraggingEvent;
- (BOOL)_isTextEditingInProgress;
- (BOOL)_isThisTheOnlyConnectedScene;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (BOOL)_nodeContainsViewControllersRequiringTeardown:(id)teardown;
- (BOOL)_shouldShowListViewInModeSwitcher;
- (BOOL)_updateCalendarButtonError;
- (BOOL)_updateCalendarButtonSpinner;
- (BOOL)_viewControllerRequiresSystemPresentation:(id)presentation;
- (BOOL)_viewControllerTreeIsEligibleForJournalingConsideration:(id)consideration;
- (BOOL)_viewControllerWantsDismissOnSizeClassChange:(id)change transitioningToTraitCollection:(id)collection;
- (BOOL)allSelectedEventsIndividuallyRepresented;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)eventViewControllerShouldHideInlineEditButton;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (BOOL)isDateVisible:(id)visible;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)shouldDonateTomorrowActivity;
- (BOOL)shouldHandleCanPerformActionForSelector:(SEL)selector;
- (BOOL)shouldSaveSelectedEvent;
- (CalSplitViewControllerDelegate)splitViewDelegate;
- (Class)_classRepresentingViewType:(int64_t)type forTraitCollection:(id)collection;
- (RootNavigationController)initWithModel:(id)model targetWindow:(id)window;
- (SplitViewWindowRootViewControllerDelegate)splitViewRootDelegate;
- (UIBarButtonItem)addEventBarButtonItem;
- (UIBarButtonItem)compactTodayBarButtonItem;
- (UIBarButtonItem)largeAddEventBarButtonItem;
- (UIBarButtonItem)largeDelegateSwitcherItem;
- (UIBarButtonItem)largeFocusModeItem;
- (UIBarButtonItem)largeSpacerBarButtonItem;
- (UIBarButtonItem)largeTodayBarButtonItem;
- (UIBarButtonItem)largeViewSwitcherItem;
- (UIBarButtonItem)searchBarButtonItem;
- (UIButton)viewPicker;
- (UILabel)largeCurrentDateLabel;
- (UISearchController)largeSearchController;
- (UISegmentedControl)viewSwitcher;
- (UIWindow)window;
- (ViewSwitcherLayoutHandler)viewSwitcherLayoutHandler;
- (double)_dateLabelMaxWidth;
- (double)_viewSwitcherSegmentWidth;
- (id)_applyAttributesToDateString:(id)string date:(id)date rightAlign:(BOOL)align yearOnly:(BOOL)only;
- (id)_calendarsButtonConfiguration;
- (id)_compactMonthDividedListSwitchBarButtonItem;
- (id)_contactForCurrentIdentity:(BOOL)identity;
- (id)_doneBlockWithCompletion:(id)completion;
- (id)_ensureStackBaseCalendarViewControllerContainerIsPresent;
- (id)_errorTextForError:(unint64_t)error;
- (id)_getSources;
- (id)_goToCompactWeek;
- (id)_higherScopeCompactCalendarViewControllerRelativeTo:(id)to;
- (id)_listViewSwitchBarButtonItem;
- (id)_meContact;
- (id)_navBarDateStringFromDate:(id)date includingMonth:(BOOL)month includingYear:(BOOL)year format:(int64_t)format;
- (id)_navBarStringYearFontForTraitCollection:(id)collection useSmallerSize:(BOOL)size bold:(BOOL)bold;
- (id)_now;
- (id)_popToViewControllerSatisfying:(id)satisfying;
- (id)_presentedEditor;
- (id)_switcherFontOfSize:(double)size isSemibold:(BOOL)semibold;
- (id)_topPresentedController;
- (id)_tornDownJournalOfShownViewControllersTransitioningToTraitCollection:(id)collection;
- (id)_viewSwitcherLabelStrings;
- (id)_viewSwitcherSegmentedControl;
- (id)attributedTitleForDate:(id)date format:(id)format rightAlign:(BOOL)align yearOnly:(BOOL)only;
- (id)bestDateForNewEvent;
- (id)calendarsButtonTitle;
- (id)compactMonthMenu;
- (id)compactTodayButtonView;
- (id)delegatesMenu;
- (id)ekui_futureTraitCollection;
- (id)generateCurrentListToggleBarButtonItemMenu;
- (id)imageForCurrentDayViewMode;
- (id)imageNameForDayViewMode:(int64_t)mode;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)newAddEventBarButtonItem;
- (id)newSearchBarButtonItem;
- (id)pasteboardManager;
- (id)pasteboardManagerForEventEditViewController:(id)controller;
- (id)pushCalendarViewControllerWithViewType:(int64_t)type andDate:(id)date;
- (id)resetToDayView;
- (id)resetToMonthView;
- (id)resetToMonthViewSplit:(BOOL)split;
- (id)resetToWeekView;
- (id)resetToYearView;
- (id)showInboxAnimated:(BOOL)animated;
- (id)showInboxAnimated:(BOOL)animated completion:(id)completion;
- (id)showSearchAnimated:(BOOL)animated becomeFirstResponder:(BOOL)responder completion:(id)completion;
- (id)todayButtonView;
- (id)topMainViewControllerContainer;
- (id)traitCollection;
- (int)currentViewTypeInt:(int64_t)int;
- (int64_t)_preferredCompactSingleDayView;
- (int64_t)_preferredPostTransitionViewFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection currentViewType:(int64_t)type;
- (int64_t)_viewTypeRepresentedByViewSwitcherIndex:(unint64_t)index;
- (int64_t)activeWidthSizeClass;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)currentDayViewMode;
- (int64_t)currentViewType;
- (unint64_t)_viewSwitcherIndexRepresentingViewType:(int64_t)type;
- (unint64_t)_viewSwitcherNumSegments;
- (unint64_t)numberOfNotifications;
- (unint64_t)supportedInterfaceOrientations;
- (void)_accountsInInitialSyncCountChanged;
- (void)_addButtonsToNavigationBarForViewController:(id)controller;
- (void)_adjustNavBarVisibilityAfterTraitCollectionChange;
- (void)_calendarErrorCountChanged:(id)changed;
- (void)_configureViewSwitcherShowingViewController:(id)controller;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_createLeftFixedSpaceBarItemIfNeeded;
- (void)_delegatesChanged:(id)changed;
- (void)_dismissReportProblemController;
- (void)_focusModeConfigurationChanged:(id)changed;
- (void)_forceInboxButtonCreationIfNeeded;
- (void)_identityChanged:(id)changed;
- (void)_initializeCalendarsButton;
- (void)_meContactChangedNoticationReceived:(id)received;
- (void)_monthWeekScaleChanged:(id)changed;
- (void)_notificationCountChanged:(id)changed;
- (void)_performCustomRotationAnimationForMainWindowWithTransitionCoordinator:(id)coordinator;
- (void)_performEditKeyCommand;
- (void)_presentAdaptiveModalPopoverViewController:(id)controller relativeToBarButtonItem:(id)item permittedArrowDirections:(unint64_t)directions contentSize:(CGSize)size animated:(BOOL)animated completion:(id)completion;
- (void)_presentAdaptiveModalViewController:(id)controller withPresentationStyleOverride:(int64_t)override relativeToBarButtonItem:(id)item withSourceView:(id)view sourceRect:(CGRect)rect permittedArrowDirections:(unint64_t)directions contentSize:(CGSize)size passThroughViews:(id)self0 animated:(BOOL)self1 completion:(id)self2;
- (void)_replayJournal:(id)journal withRootVC:(id)c topMainVC:(id)vC;
- (void)_restoreLastUsedCalendarViewType;
- (void)_saveUserActivityInfo:(id)info;
- (void)_searchPressed;
- (void)_selectNextEvent;
- (void)_selectPreviousEvent;
- (void)_selectTodayForMainViewControllerContainer:(id)container animated:(BOOL)animated;
- (void)_selectedDateChanged:(id)changed;
- (void)_setCurrentDateLabelString:(id)string;
- (void)_setNavigationStackOfMainViewControllersForTraitsTransitionFromTraitCollection:(id)collection toNewTraitCollection:(id)traitCollection withPreTransitionViewType:(int64_t)type withPreferredPostTransitionViewType:(int64_t)viewType;
- (void)_setNeedsUserActivityUpdate;
- (void)_setSegmentWidthsForViewSwitcher:(id)switcher;
- (void)_setUpInitialUserActivityUpdate;
- (void)_setupSearchController;
- (void)_setupSearchControllerForViewController:(id)controller;
- (void)_setupTitleViewIfNeeded;
- (void)_showAddSubscribedCalendarWithURL:(id)l;
- (void)_showCalendarsAnimated:(BOOL)animated completion:(id)completion;
- (void)_showDebugReportProblemViewController;
- (void)_showNextDateComponentUnitAnimated:(BOOL)animated;
- (void)_showNowForMainViewControllerContainer:(id)container animated:(BOOL)animated;
- (void)_showPreviousDateComponentUnitAnimated:(BOOL)animated;
- (void)_showSearchController:(id)controller withSearchBar:(id)bar animated:(BOOL)animated becomeFirstResponder:(BOOL)responder completion:(id)completion;
- (void)_significantDateChange:(id)change;
- (void)_switchToView:(int64_t)view;
- (void)_updateAddEventButtonEnabledness;
- (void)_updateAfterExtendedLaunch:(id)launch;
- (void)_updateBackButtonToDate:(id)date container:(id)container;
- (void)_updateCalendarButtonAccessory;
- (void)_updateCalendarsButtonConfiguration;
- (void)_updateCalendarsButtonMenuProvider;
- (void)_updateCalendarsButtonTitle;
- (void)_updateDateLabelFrame;
- (void)_updateFilterLabelAnimate:(BOOL)animate;
- (void)_updateInboxBarButtonItem;
- (void)_updateInteractivePopAllowed;
- (void)_updateLeftFixedSpaceBarButtonItemWidthWithViewController:(id)controller targetWindowSize:(CGSize)size;
- (void)_updateNavbarStringForNewStateAfterWindowSizeChange;
- (void)_updateNavigationBarAppearanceForMainViewControllerContainer:(id)container;
- (void)_updateNavigationTitleToContainer:(id)container titleView:(id)view;
- (void)_updatePaletteStateWithViewController:(id)controller;
- (void)_updateUserActivity;
- (void)_updateViewSwitcherFont;
- (void)_updateViewSwitcherSegmentWidthsAfterWindowSizeChange;
- (void)_viewSwitcherSelectedValueChanged:(id)changed;
- (void)addEventPressed;
- (void)addToolbarButtonItemsWithViewController:(id)controller;
- (void)attemptDisplayReviewPrompt;
- (void)calendarsPressed;
- (void)continueSearchWithTerm:(id)term animated:(BOOL)animated removeViewControllersIncapableOfSearchIfNeeded:(BOOL)needed;
- (void)controllerAppearedTipsConfiguration;
- (void)copy:(id)copy;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)didEnterBackground;
- (void)displayIntegrationAlert:(id)alert;
- (void)doCrossfadeAnimationWithCurrentScreenContents;
- (void)doCrossfadeAnimationWithNavigationViewContents;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward;
- (void)focusBannerViewToggled:(id)toggled;
- (void)goToDateViewController:(id)controller didCompleteWithDate:(id)date;
- (void)handleCloseKeyCommand;
- (void)handleDismissSplashScreenKeyCommand;
- (void)handleDuplicateKeyCommand;
- (void)handleGoToDateCommand;
- (void)handleMoveEventDownCommand;
- (void)handleMoveEventLeftCommand;
- (void)handleMoveEventRightCommand;
- (void)handleMoveEventUpCommand;
- (void)handleNewEventKeyCommand;
- (void)handleNewSubscribedCalendarCommand;
- (void)handleRefreshKeyCommand;
- (void)handleSearchKeyCommand;
- (void)handleSelectNextOccurrenceCommand;
- (void)handleSelectPreviousOccurrenceCommand;
- (void)handleSpaceBarKeyCommand;
- (void)handleURL:(id)l context:(id)context;
- (void)handleViewAvailabilityCommand;
- (void)inboxPressed;
- (void)inboxViewControllerWantsShowEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode;
- (void)largeNewEventButtonTapped;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)openCalendarsLinkActionWithCompletion:(id)completion;
- (void)openInboxLinkActionWithCompletion:(id)completion;
- (void)openSearchLinkActionWithCompletion:(id)completion;
- (void)paste:(id)paste;
- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor;
- (void)pasteboardManager:(id)manager presentAlert:(id)alert;
- (void)performUIAction:(id)action block:(id)block cancelBlock:(id)cancelBlock;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)recursiveAnimationRemoveForSmallLayers:(id)layers;
- (void)recursiveBuildJournal:(id)journal ofViewControllerSubtree:(id)subtree transitioningToTraitCollection:(id)collection stopCondition:(id)condition;
- (void)refreshErrors;
- (void)restoreEventDetailViewControllers:(id)controllers;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchResultsViewController:(id)controller didSelectEvent:(id)event;
- (void)selectTodayWithTrigger:(int64_t)trigger animated:(BOOL)animated;
- (void)selectViewType:(int64_t)type;
- (void)setNavBarStringFromDate:(id)date includeMonth:(BOOL)month includeYear:(BOOL)year;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setupPresentationControllerIfStyleIsPopover:(int64_t)popover barButtonItem:(id)item passThroughViews:(id)views permittedArrowDirections:(unint64_t)directions sourceRect:(CGRect)rect sourceView:(id)view viewController:(id)controller;
- (void)showAddEventAnimated:(BOOL)animated completion:(id)completion;
- (void)showAddEventAnimated:(BOOL)animated fromBarButtonItem:(id)item;
- (void)showAddEventAnimated:(BOOL)animated fromBarButtonItem:(id)item withTitle:(id)title startDate:(id)date exactStartDate:(id)startDate endDate:(id)endDate location:(id)location suggestionKey:(id)self0 allDay:(BOOL)self1 completion:(id)self2;
- (void)showCalendarsAnimated:(BOOL)animated completion:(id)completion;
- (void)showContactWithIdentifier:(id)identifier;
- (void)showDate:(id)date andTime:(BOOL)time animated:(BOOL)animated;
- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context;
- (void)showEventWithIdentifier:(id)identifier isSearchResult:(BOOL)result date:(id)date context:(id)context;
- (void)showNewEvent:(id)event;
- (void)showSearchBar:(BOOL)bar;
- (void)subtitleLabelTapped;
- (void)todayPressed;
- (void)toggleDayViewMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackButtonToDate:(id)date;
- (void)updateCurrentIdentity:(BOOL)identity;
- (void)updateDayViewModeContainer;
- (void)updateDeviceOrientationForJumpToTodayTip;
- (void)updateDividedMonthBarButtonItemAnimated:(BOOL)animated;
- (void)updateErrorWithErrorDisplayManager;
- (void)updateLabelNoErrorWithText:(id)text;
- (void)updateLabelWithAccountIdentifier:(id)identifier error:(unint64_t)error;
- (void)updateNavigationBarButtonItemsWithViewController:(id)controller;
- (void)updateSelectedDateForJumpToTodayTip;
- (void)updateShouldDisplayJumpToTodayTip;
- (void)updateTitleToDate:(id)date yearOnly:(BOOL)only;
- (void)updateTodayButtonDayOfWeek:(id)week dayOfMonth:(id)month compact:(BOOL)compact;
- (void)updateToolbarItemsWithViewController:(id)controller;
- (void)updateViewPickerToViewType:(int64_t)type;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)weekViewController:(id)controller didEditEvent:(id)event creationMethod:(unint64_t)method;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation RootNavigationController

- (void)_setupTitleViewIfNeeded
{
  if (self->_titleView)
  {
    return;
  }

  traitCollection = [(RootNavigationController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 1)
  {
    v4 = CalSolariumEnabled();

    if (!v4)
    {
      return;
    }

LABEL_9:
    v6 = objc_opt_new();
    titleView = self->_titleView;
    self->_titleView = v6;

    [(UIStackView *)self->_titleView setAxis:1];
    [(UIStackView *)self->_titleView setAlignment:3];
    [(UIStackView *)self->_titleView setDistribution:0];
    v8 = objc_opt_new();
    monthYearLabel = self->_monthYearLabel;
    self->_monthYearLabel = v8;

    [(UILabel *)self->_monthYearLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_monthYearLabel setTextAlignment:1];
    v10 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightHeavy];
    [(UILabel *)self->_monthYearLabel setFont:v10];

    [(UIStackView *)self->_titleView addArrangedSubview:self->_monthYearLabel];
    v11 = objc_opt_new();
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v11;

    [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_subtitleLabel setTextAlignment:1];
    v13 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightRegular];
    [(UILabel *)self->_subtitleLabel setFont:v13];

    [(UIStackView *)self->_titleView addArrangedSubview:self->_subtitleLabel];
    traitCollection = [[UITapGestureRecognizer alloc] initWithTarget:self action:"subtitleLabelTapped"];
    [(UILabel *)self->_subtitleLabel setUserInteractionEnabled:1];
    [(UILabel *)self->_subtitleLabel addGestureRecognizer:traitCollection];
    [(RootNavigationErrorDisplayManager *)self->_errorDisplayManager start];
    goto LABEL_10;
  }

  presentedViewController = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = CalSolariumEnabled();

    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RootNavigationController;
  [(RootNavigationController *)&v4 viewDidLoad];
  v3 = objc_autoreleasePoolPush();
  [(RootNavigationController *)self _restoreLastUsedCalendarViewType];
  objc_autoreleasePoolPop(v3);
}

- (void)_restoreLastUsedCalendarViewType
{
  if ((EKUIShouldSaveStateInPreferences() & 1) == 0 && ![(RootNavigationController *)self _isThisTheOnlyConnectedScene])
  {
    goto LABEL_10;
  }

  v3 = +[CUIKPreferences sharedPreferences];
  lastViewMode = [v3 lastViewMode];
  integerValue = [lastViewMode integerValue];

  if (integerValue <= 2)
  {
    if (integerValue != -1)
    {
      if (integerValue != 2)
      {
        goto LABEL_12;
      }

      model = [(RootNavigationController *)self model];
      [model setShowDayAsList:0];

      v7 = +[MultiDayWeekView numMultiDays];
      model2 = [(RootNavigationController *)self model];
      [model2 setNumDaysToShow:v7];
      integerValue = 2;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (integerValue == 3)
  {
LABEL_10:
    model3 = [(RootNavigationController *)self model];
    [model3 setShowDayAsList:0];

    model2 = [(RootNavigationController *)self model];
    [model2 setNumDaysToShow:1];
    integerValue = 3;
    goto LABEL_11;
  }

  if (integerValue != 4)
  {
    goto LABEL_12;
  }

  model2 = [(RootNavigationController *)self model];
  [model2 setShowDayAsList:1];
LABEL_11:

LABEL_12:
  v10 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = integerValue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Root Navigation Controller restoring last view type: %d", v13, 8u);
  }

  selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
  v12 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:integerValue andDate:selectedDate];
}

- (id)_ensureStackBaseCalendarViewControllerContainerIsPresent
{
  classForStackBaseContainerForCurrentTraits = [(RootNavigationController *)self classForStackBaseContainerForCurrentTraits];
  viewControllers = [(RootNavigationController *)self viewControllers];
  v5 = viewControllers;
  if (viewControllers && [viewControllers count])
  {
    firstObject = [v5 firstObject];
    currentChildViewController = [firstObject currentChildViewController];
    if (currentChildViewController)
    {
      v8 = currentChildViewController;
      firstObject2 = [v5 firstObject];
      v10 = [objc_opt_class() isEqual:classForStackBaseContainerForCurrentTraits];

      if (v10)
      {
        v11 = 0;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v12 = [classForStackBaseContainerForCurrentTraits alloc];
  model = [(RootNavigationController *)self model];
  window = [(RootNavigationController *)self window];
  v11 = [v12 initWithModel:model window:window];

  v17 = v11;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  [(RootNavigationController *)self setViewControllers:v15];

LABEL_8:

  return v11;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (id)topMainViewControllerContainer
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  viewControllers = [(RootNavigationController *)self viewControllers];
  reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v10 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = objc_opt_class();
    *buf = 138412290;
    v20 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "The top view controller does not conform to the [%@] class", buf, 0xCu);
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)loadView
{
  v3 = objc_autoreleasePoolPush();
  v11.receiver = self;
  v11.super_class = RootNavigationController;
  [(RootNavigationController *)&v11 loadView];
  view = [(RootNavigationController *)self view];
  v5 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v5];

  v6 = [[PaletteView alloc] initWithBarPalette:self->_palette];
  paletteView = self->_paletteView;
  self->_paletteView = v6;

  v8 = [[_UINavigationBarPalette alloc] initWithContentView:self->_paletteView];
  palette = self->_palette;
  self->_palette = v8;

  [(PaletteView *)self->_paletteView setContainingPalette:self->_palette];
  if (CalSystemSolariumEnabled())
  {
    view2 = [(RootNavigationController *)self view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    [(PaletteView *)self->_paletteView setAutoresizingMask:2];
  }

  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  objc_autoreleasePoolPop(v3);
}

- (id)ekui_futureTraitCollection
{
  traitCollection = objc_getAssociatedObject(self, [(RootNavigationController *)self ekui_futureTraitCollectionCategoryPropertyKey]);
  if (!traitCollection)
  {
    traitCollection = [(RootNavigationController *)self traitCollection];
  }

  return traitCollection;
}

- (id)traitCollection
{
  v8.receiver = self;
  v8.super_class = RootNavigationController;
  traitCollection = [(RootNavigationController *)&v8 traitCollection];
  if (EKUIOverriddenTraitsBasedOnWindowGeometryIsEnforced())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B162C;
    v7[3] = &unk_100210828;
    v7[4] = self;
    v4 = [traitCollection traitCollectionByModifyingTraits:v7];
  }

  else
  {
    v4 = traitCollection;
  }

  v5 = v4;

  return v5;
}

- (SplitViewWindowRootViewControllerDelegate)splitViewRootDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewRootDelegate);

  return WeakRetained;
}

- (id)newAddEventBarButtonItem
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"addEventPressed"];
  [v2 setAccessibilityIdentifier:@"add-plus-button"];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v3 = CalendarAppTintColor();
    [v2 setTintColor:v3];
  }

  return v2;
}

- (id)compactMonthMenu
{
  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000B4EDC;
  v52[3] = &unk_100210960;
  objc_copyWeak(&v53, &location);
  v52[4] = self;
  v3 = objc_retainBlock(v52);
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Compact" value:&stru_1002133B8 table:0];
  v6 = [UIImage _systemImageNamed:@"event.compact.split.4x1"];
  imageFlippedForRightToLeftLayoutDirection = [v6 imageFlippedForRightToLeftLayoutDirection];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000B50B4;
  v50[3] = &unk_100210988;
  v8 = v3;
  v51 = v8;
  v9 = [UIAction actionWithTitle:v5 image:imageFlippedForRightToLeftLayoutDirection identifier:0 handler:v50];
  minimalScaleAction = self->_minimalScaleAction;
  self->_minimalScaleAction = v9;

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Stacked" value:&stru_1002133B8 table:0];
  v13 = [UIImage _systemImageNamed:@"event.compact.2"];
  imageFlippedForRightToLeftLayoutDirection2 = [v13 imageFlippedForRightToLeftLayoutDirection];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000B50CC;
  v48[3] = &unk_100210988;
  v15 = v8;
  v49 = v15;
  v16 = [UIAction actionWithTitle:v12 image:imageFlippedForRightToLeftLayoutDirection2 identifier:0 handler:v48];
  compactScaleAction = self->_compactScaleAction;
  self->_compactScaleAction = v16;

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Details" value:&stru_1002133B8 table:0];
  v20 = [UIImage _systemImageNamed:@"event.2.text"];
  imageFlippedForRightToLeftLayoutDirection3 = [v20 imageFlippedForRightToLeftLayoutDirection];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000B50E4;
  v46[3] = &unk_100210988;
  v22 = v15;
  v47 = v22;
  v23 = [UIAction actionWithTitle:v19 image:imageFlippedForRightToLeftLayoutDirection3 identifier:0 handler:v46];
  largeScaleAction = self->_largeScaleAction;
  self->_largeScaleAction = v23;

  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"List" value:&stru_1002133B8 table:0];
  v27 = [UIImage _systemImageNamed:@"list.bullet.below.rectangle"];
  imageFlippedForRightToLeftLayoutDirection4 = [v27 imageFlippedForRightToLeftLayoutDirection];
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_1000B5150;
  v44 = &unk_100210988;
  v29 = v22;
  v45 = v29;
  v30 = [UIAction actionWithTitle:v26 image:imageFlippedForRightToLeftLayoutDirection4 identifier:0 handler:&v41];
  listAction = self->_listAction;
  self->_listAction = v30;

  [(UIAction *)self->_minimalScaleAction setAccessibilityIdentifier:@"minimal-button", v41, v42, v43, v44];
  [(UIAction *)self->_compactScaleAction setAccessibilityIdentifier:@"summary-button"];
  [(UIAction *)self->_largeScaleAction setAccessibilityIdentifier:@"large-button"];
  [(UIAction *)self->_listAction setAccessibilityIdentifier:@"list-button"];
  v32 = self->_compactScaleAction;
  v56[0] = self->_minimalScaleAction;
  v56[1] = v32;
  v56[2] = self->_largeScaleAction;
  v33 = [NSArray arrayWithObjects:v56 count:3];
  v34 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v33];

  v35 = self->_listAction;
  v55[0] = v34;
  v55[1] = v35;
  v36 = [NSArray arrayWithObjects:v55 count:2];
  v37 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:33 children:v36];
  compactMonthMenu = self->_compactMonthMenu;
  self->_compactMonthMenu = v37;

  [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:1];
  v39 = self->_compactMonthMenu;

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);

  return v39;
}

- (CalSplitViewControllerDelegate)splitViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitViewDelegate);

  return WeakRetained;
}

- (int64_t)activeWidthSizeClass
{
  ekui_futureTraitCollection = [(RootNavigationController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];

  return horizontalSizeClass;
}

- (UIBarButtonItem)searchBarButtonItem
{
  searchBarButtonItem = self->_searchBarButtonItem;
  if (!searchBarButtonItem)
  {
    newSearchBarButtonItem = [(RootNavigationController *)self newSearchBarButtonItem];
    v5 = self->_searchBarButtonItem;
    self->_searchBarButtonItem = newSearchBarButtonItem;

    searchBarButtonItem = self->_searchBarButtonItem;
  }

  return searchBarButtonItem;
}

- (id)newSearchBarButtonItem
{
  if (CalSolariumEnabled())
  {
    searchController = [(RootNavigationController *)self searchController];
    _inlineToolbarSearchBarItem = [searchController _inlineToolbarSearchBarItem];

    [_inlineToolbarSearchBarItem setTarget:self];
  }

  else
  {
    _inlineToolbarSearchBarItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:12 target:self action:"_searchPressed"];
  }

  [_inlineToolbarSearchBarItem setAccessibilityIdentifier:@"searchbar-button"];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v5 = CalendarAppTintColor();
    [_inlineToolbarSearchBarItem setTintColor:v5];
  }

  return _inlineToolbarSearchBarItem;
}

- (id)_compactMonthDividedListSwitchBarButtonItem
{
  dividedMonthToggleBarButtonItem = self->_dividedMonthToggleBarButtonItem;
  if (!dividedMonthToggleBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithImage:0 menu:0];
    v5 = self->_dividedMonthToggleBarButtonItem;
    self->_dividedMonthToggleBarButtonItem = v4;

    compactMonthMenu = [(RootNavigationController *)self compactMonthMenu];
    [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setMenu:compactMonthMenu];

    [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:0];
    [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setAccessibilityIdentifier:@"toggle-month-view"];
    dividedMonthToggleBarButtonItem = self->_dividedMonthToggleBarButtonItem;
  }

  return dividedMonthToggleBarButtonItem;
}

- (void)_updateInteractivePopAllowed
{
  navigationItem = [(RootNavigationController *)self navigationItem];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    window = [(RootNavigationController *)self window];
    IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

    if (IsCompactInViewHierarchy)
    {
      topViewController = [(RootNavigationController *)self topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      interactivePopGestureRecognizer = [(RootNavigationController *)self interactivePopGestureRecognizer];
      [interactivePopGestureRecognizer setEnabled:(isKindOfClass & 1) == 0];
    }

    else
    {
      topViewController = [(RootNavigationController *)self interactivePopGestureRecognizer];
      [topViewController setEnabled:0];
    }
  }
}

- (UIBarButtonItem)addEventBarButtonItem
{
  addEventBarButtonItem = self->_addEventBarButtonItem;
  if (!addEventBarButtonItem)
  {
    newAddEventBarButtonItem = [(RootNavigationController *)self newAddEventBarButtonItem];
    v5 = self->_addEventBarButtonItem;
    self->_addEventBarButtonItem = newAddEventBarButtonItem;

    addEventBarButtonItem = self->_addEventBarButtonItem;
  }

  return addEventBarButtonItem;
}

- (int64_t)currentViewType
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if (!topMainViewControllerContainer)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 1;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 2;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 3;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 4;
      goto LABEL_15;
    }

    v4 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "While trying to save last used view mode, the top view controller was not a recognized mode in set {Year, Month, Week, Day}.", v6, 2u);
    }

LABEL_14:
    v3 = -1;
    goto LABEL_15;
  }

  v3 = 0;
LABEL_15:

  return v3;
}

- (void)_updateCalendarsButtonTitle
{
  calendarsButtonTitle = [(RootNavigationController *)self calendarsButtonTitle];
  calendarsButton = self->_calendarsButton;
  if (calendarsButton)
  {
    v7 = calendarsButtonTitle;
    v5 = [(UIButton *)calendarsButton titleForState:0];
    v6 = [v5 isEqualToString:v7];

    if ((v6 & 1) == 0)
    {
      [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
    }
  }

  _objc_release_x1();
}

- (id)calendarsButtonTitle
{
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];

  if (sourceForSelectedIdentity)
  {
    sourceForSelectedIdentity2 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    [sourceForSelectedIdentity2 title];
  }

  else
  {
    sourceForSelectedIdentity2 = [NSBundle bundleForClass:objc_opt_class()];
    [sourceForSelectedIdentity2 localizedStringForKey:@"Calendars" value:&stru_1002133B8 table:0];
  }
  v5 = ;

  if (self->_showingAccountErrors)
  {
    v6 = [@" " stringByAppendingString:v5];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view = [(RootNavigationController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    return 1 << interfaceOrientation;
  }

  else
  {
    visibleViewController = [(RootNavigationController *)self visibleViewController];
    v11 = visibleViewController;
    if (visibleViewController)
    {
      supportedInterfaceOrientations = [visibleViewController supportedInterfaceOrientations];
    }

    else if ([(RootNavigationController *)self activeWidthSizeClass]== 1)
    {
      supportedInterfaceOrientations = 26;
    }

    else
    {
      supportedInterfaceOrientations = 30;
    }
  }

  return supportedInterfaceOrientations;
}

- (void)_adjustNavBarVisibilityAfterTraitCollectionChange
{
  self->_isTransitioningTraitCollection = 0;
  if (self->_shouldSetNavBarVisibilityAfterTraitCollectionTransition)
  {
    self->_shouldSetNavBarVisibilityAfterTraitCollectionTransition = 0;
    [(RootNavigationController *)self setNavigationBarHidden:self->_hideNavBarAfterTraitCollectionTransition animated:0];
  }
}

- (void)viewWillLayoutSubviews
{
  window = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if (([topMainViewControllerContainer currentChildViewControllerIsLoaded] & 1) == 0)
  {
    topViewController = [(RootNavigationController *)self topViewController];

    if (topMainViewControllerContainer == topViewController)
    {
      [topMainViewControllerContainer setupForViewAppearance];
    }
  }

  if (CalUIKitNavBarEnabled())
  {
    if (!self->_viewSwitcherContainerView)
    {
      v6 = [CalNavigationBarTitleView alloc];
      viewSwitcher = [(RootNavigationController *)self viewSwitcher];
      v8 = [(CalNavigationBarTitleView *)v6 initWithContents:viewSwitcher];
      viewSwitcherContainerView = self->_viewSwitcherContainerView;
      self->_viewSwitcherContainerView = v8;
    }

    traitCollection = [(RootNavigationController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = self->_viewSwitcherContainerView;
    }

    navigationItem = [topMainViewControllerContainer navigationItem];
    [navigationItem setTitleView:v12];
  }

  [(RootNavigationController *)self _updateViewSwitcherSegmentWidthsAfterWindowSizeChange];
  [(RootNavigationController *)self _updateNavbarStringForNewStateAfterWindowSizeChange];
  topViewController2 = [(RootNavigationController *)self topViewController];
  if (topMainViewControllerContainer == topViewController2)
  {
    extendedLaunchOver = self->_extendedLaunchOver;

    if (extendedLaunchOver)
    {
      [(RootNavigationController *)self updateNavigationBarButtonItemsWithViewController:topMainViewControllerContainer];
      [(RootNavigationController *)self updateToolbarItemsWithViewController:topMainViewControllerContainer];
      [(RootNavigationController *)self updateErrorWithErrorDisplayManager];
    }
  }

  else
  {
  }

  v16.receiver = self;
  v16.super_class = RootNavigationController;
  [(RootNavigationController *)&v16 viewWillLayoutSubviews];
}

- (void)_setNeedsUserActivityUpdate
{
  if (!self->_userActivityNeedsUpdate)
  {
    self->_userActivityNeedsUpdate = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B1AD8;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)updateSelectedDateForJumpToTodayTip
{
  if (self->_extendedLaunchOver)
  {
    v15 = CUIKTodayDate();
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    calendarDateForDay = [selectedDate calendarDateForDay];
    date = [calendarDateForDay date];

    calendar = [(CUIKCalendarModel *)self->_model calendar];
    v8 = [calendar dateByAddingUnit:16 value:-5 toDate:v15 options:0];

    calendar2 = [(CUIKCalendarModel *)self->_model calendar];
    v10 = [date isBeforeDayForDate:v8 inCalendar:calendar2];

    calendar3 = [(CUIKCalendarModel *)self->_model calendar];
    v12 = [calendar3 dateByAddingUnit:16 value:5 toDate:v15 options:0];

    calendar4 = [(CUIKCalendarModel *)self->_model calendar];
    LOBYTE(calendar3) = [date isAfterDayForDate:v12 inCalendar:calendar4];

    v14 = +[CalendarTipsManager sharedManager];
    [v14 donateIsSelectedDateFiveDaysAwayFromToday:(v10 | calendar3) & 1];
  }
}

- (UISegmentedControl)viewSwitcher
{
  viewSwitcherSegmentedControl = self->_viewSwitcherSegmentedControl;
  if (viewSwitcherSegmentedControl)
  {
    _viewSwitcherSegmentedControl = viewSwitcherSegmentedControl;
  }

  else
  {
    _viewSwitcherSegmentedControl = [(RootNavigationController *)self _viewSwitcherSegmentedControl];
  }

  return _viewSwitcherSegmentedControl;
}

- (id)_viewSwitcherSegmentedControl
{
  viewSwitcherSegmentedControl = self->_viewSwitcherSegmentedControl;
  if (!viewSwitcherSegmentedControl)
  {
    _viewSwitcherLabelStrings = [(RootNavigationController *)self _viewSwitcherLabelStrings];
    v5 = [[SplitViewSegmentedControl alloc] initWithItems:_viewSwitcherLabelStrings];
    v6 = self->_viewSwitcherSegmentedControl;
    self->_viewSwitcherSegmentedControl = &v5->super;

    v7 = self->_viewSwitcherSegmentedControl;
    v8 = CalendarAppTintColor();
    [(UISegmentedControl *)v7 setTintColor:v8];

    [(UISegmentedControl *)self->_viewSwitcherSegmentedControl setApportionsSegmentWidthsByContent:1];
    [(UISegmentedControl *)self->_viewSwitcherSegmentedControl setSpringLoaded:1];
    [(UISegmentedControl *)self->_viewSwitcherSegmentedControl setAccessibilityIdentifier:@"views-switcher"];
    [(UISegmentedControl *)self->_viewSwitcherSegmentedControl addTarget:self action:"_viewSwitcherSelectedValueChanged:" forControlEvents:4096];
    if (CalUIKitNavBarEnabled())
    {
      splitViewRootDelegate = [(RootNavigationController *)self splitViewRootDelegate];
      [(UISegmentedControl *)self->_viewSwitcherSegmentedControl setSplitViewController:splitViewRootDelegate];
    }

    viewSwitcherSegmentedControl = self->_viewSwitcherSegmentedControl;
  }

  [(RootNavigationController *)self _setSegmentWidthsForViewSwitcher:viewSwitcherSegmentedControl];
  [(RootNavigationController *)self _updateViewSwitcherFont];
  [(UISegmentedControl *)self->_viewSwitcherSegmentedControl setSelectedSegmentIndex:[(RootNavigationController *)self _viewSwitcherIndexRepresentingViewType:[(RootNavigationController *)self currentViewType]]];
  v10 = self->_viewSwitcherSegmentedControl;

  return v10;
}

- (id)_viewSwitcherLabelStrings
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
  v12[0] = v4;
  v5 = [v3 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
  v12[1] = v5;
  v6 = [v3 localizedStringForKey:@"Month" value:&stru_1002133B8 table:0];
  v12[2] = v6;
  v7 = [v3 localizedStringForKey:@"Year" value:&stru_1002133B8 table:0];
  v12[3] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:4];

  v9 = [[NSMutableArray alloc] initWithArray:v8];
  if ([(RootNavigationController *)self _shouldShowListViewInModeSwitcher])
  {
    v10 = [v3 localizedStringForKey:@"List" value:&stru_1002133B8 table:0];
    [v9 addObject:v10];
  }

  return v9;
}

- (BOOL)_shouldShowListViewInModeSwitcher
{
  v3 = +[CUIKPreferences sharedPreferences];
  if ([v3 showExperimentalUI])
  {
    window = [(RootNavigationController *)self window];
    if (EKUICurrentHeightSizeClassIsRegular())
    {
      window2 = [(RootNavigationController *)self window];
      IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();
    }

    else
    {
      IsRegularInViewHierarchy = 0;
    }
  }

  else
  {
    IsRegularInViewHierarchy = 0;
  }

  return IsRegularInViewHierarchy;
}

- (unint64_t)_viewSwitcherNumSegments
{
  if ([(RootNavigationController *)self _shouldShowListViewInModeSwitcher])
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (double)_viewSwitcherSegmentWidth
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x4052000000000000;
  _viewSwitcherLabelStrings = [(RootNavigationController *)self _viewSwitcherLabelStrings];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BCBC;
  v6[3] = &unk_100210E10;
  v6[4] = self;
  v6[5] = &v7;
  [_viewSwitcherLabelStrings enumerateObjectsUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_updateViewSwitcherFont
{
  traitCollection = [(RootNavigationController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (CalSystemSolariumEnabled())
  {
    v5 = 15.0;
  }

  else
  {
    v5 = 13.0;
  }

  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraLarge) == NSOrderedDescending)
  {
    v6 = 4.0;
  }

  else
  {
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraLarge) != NSOrderedDescending)
    {
      if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryLarge) == NSOrderedDescending)
      {
        v7 = v5 + 1.0;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_12;
    }

    v6 = 2.0;
  }

  v7 = v5 + v6;
LABEL_12:
  [(RootNavigationController *)self _viewSwitcherSegmentWidth];
  v9 = v8;
  do
  {
    v10 = v7;
    if (v7 <= v5)
    {
      break;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    _viewSwitcherLabelStrings = [(RootNavigationController *)self _viewSwitcherLabelStrings];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C1844;
    v19[3] = &unk_100210E38;
    *&v19[6] = v7;
    v19[4] = self;
    v19[5] = &v20;
    [_viewSwitcherLabelStrings enumerateObjectsUsingBlock:v19];

    v12 = v21[3];
    v7 = v7 + -1.0;
    _Block_object_dispose(&v20, 8);
  }

  while (v12 > v9);
  viewSwitcher = [(RootNavigationController *)self viewSwitcher];
  v26 = NSFontAttributeName;
  v14 = [(RootNavigationController *)self _switcherFontOfSize:0 isSemibold:v10];
  v27 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [viewSwitcher setTitleTextAttributes:v15 forState:0];

  viewSwitcher2 = [(RootNavigationController *)self viewSwitcher];
  v24 = NSFontAttributeName;
  v17 = [(RootNavigationController *)self _switcherFontOfSize:1 isSemibold:v10];
  v25 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [viewSwitcher2 setTitleTextAttributes:v18 forState:4];
}

- (void)_updateViewSwitcherSegmentWidthsAfterWindowSizeChange
{
  if ([(RootNavigationController *)self activeWidthSizeClass]== 2)
  {
    viewSwitcher = [(RootNavigationController *)self viewSwitcher];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RootNavigationController *)self _setSegmentWidthsForViewSwitcher:viewSwitcher];
      [(RootNavigationController *)self _updateDateLabelFrame];
    }
  }
}

- (void)_updateNavbarStringForNewStateAfterWindowSizeChange
{
  if ([(RootNavigationController *)self activeWidthSizeClass]== 2)
  {
    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    if (objc_opt_respondsToSelector())
    {
      [topMainViewControllerContainer updateNavigationBarDisplayedDateString];
    }
  }
}

- (void)_setupSearchController
{
  if (CalSolariumEnabled())
  {
    searchController = [(RootNavigationController *)self searchController];

    if (!searchController)
    {
      v4 = [SearchResultsViewController alloc];
      model = [(RootNavigationController *)self model];
      window = [(RootNavigationController *)self window];
      v7 = [(SearchResultsViewController *)v4 initWithModel:model window:window];
      searchResultVC = self->_searchResultVC;
      self->_searchResultVC = v7;

      v11 = [[UISearchController alloc] initWithSearchResultsController:self->_searchResultVC];
      searchBar = [v11 searchBar];
      [searchBar setDelegate:self];

      [v11 setSearchResultsUpdater:self->_searchResultVC];
      searchBar2 = [v11 searchBar];
      [(SearchResultsViewController *)self->_searchResultVC setSearchBar:searchBar2];

      [(RootNavigationController *)self setSearchController:v11];
    }
  }
}

- (id)_listViewSwitchBarButtonItem
{
  listToggleBarButtonItem = self->_listToggleBarButtonItem;
  if (!listToggleBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithImage:0 menu:0];
    v5 = self->_listToggleBarButtonItem;
    self->_listToggleBarButtonItem = v4;

    [(UIBarButtonItem *)self->_listToggleBarButtonItem setAccessibilityIdentifier:@"toggle-day-list-view"];
    listToggleBarButtonItem = self->_listToggleBarButtonItem;
  }

  return listToggleBarButtonItem;
}

- (int64_t)currentDayViewMode
{
  model = [(RootNavigationController *)self model];
  showDayAsList = [model showDayAsList];

  if (showDayAsList)
  {
    return 2;
  }

  model2 = [(RootNavigationController *)self model];
  v5 = [model2 numDaysToShow] > 1;

  return v5;
}

- (id)generateCurrentListToggleBarButtonItemMenu
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Single Day" value:&stru_1002133B8 table:0];
  v5 = [(RootNavigationController *)self imageNameForDayViewMode:0];
  v6 = [UIImage _systemImageNamed:v5];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000B4CD4;
  v32[3] = &unk_100210938;
  v32[4] = self;
  v7 = [UIAction actionWithTitle:v4 image:v6 identifier:@"singleDayAction" handler:v32];

  model = [(RootNavigationController *)self model];
  if ([model showDayAsList])
  {
  }

  else
  {
    model2 = [(RootNavigationController *)self model];
    numDaysToShow = [model2 numDaysToShow];

    if (numDaysToShow < 2)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  [v7 setState:v11];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Multi Day" value:&stru_1002133B8 table:0];
  v14 = [(RootNavigationController *)self imageNameForDayViewMode:1];
  v15 = [UIImage _systemImageNamed:v14];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000B4CE0;
  v31[3] = &unk_100210938;
  v31[4] = self;
  v16 = [UIAction actionWithTitle:v13 image:v15 identifier:@"multiDayAction" handler:v31];

  model3 = [(RootNavigationController *)self model];
  if ([model3 showDayAsList])
  {
  }

  else
  {
    model4 = [(RootNavigationController *)self model];
    numDaysToShow2 = [model4 numDaysToShow];

    if (numDaysToShow2 == 2)
    {
      v20 = 1;
      goto LABEL_11;
    }
  }

  v20 = 0;
LABEL_11:
  [v16 setState:v20];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"List" value:&stru_1002133B8 table:0];
  v23 = [(RootNavigationController *)self imageNameForDayViewMode:2];
  v24 = [UIImage _systemImageNamed:v23];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000B4CEC;
  v30[3] = &unk_100210938;
  v30[4] = self;
  v25 = [UIAction actionWithTitle:v22 image:v24 identifier:@"listAction" handler:v30];

  model5 = [(RootNavigationController *)self model];
  LODWORD(v21) = [model5 showDayAsList];

  [v25 setState:v21];
  [v7 setAccessibilityIdentifier:@"single-day"];
  [v16 setAccessibilityIdentifier:@"multi-day"];
  [v25 setAccessibilityIdentifier:@"list-view"];
  v33[0] = v7;
  v33[1] = v16;
  v33[2] = v25;
  v27 = [NSArray arrayWithObjects:v33 count:3];
  v28 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v27];

  return v28;
}

- (void)_updateAddEventButtonEnabledness
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v3 = dispatch_get_global_queue(0, 0);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000EB84;
  v4[3] = &unk_10020F500;
  v4[4] = self;
  v4[5] = v5;
  dispatch_async(v3, v4);

  _Block_object_dispose(v5, 8);
}

- (id)_calendarsButtonConfiguration
{
  _calendarsButtonHasBackground = [(RootNavigationController *)self _calendarsButtonHasBackground];
  model = [(RootNavigationController *)self model];
  accountsInInitialSyncCount = [model accountsInInitialSyncCount];

  model2 = [(RootNavigationController *)self model];
  model3 = [(RootNavigationController *)self model];
  sourceForSelectedIdentity = [model3 sourceForSelectedIdentity];
  v10 = [model2 displayableAccountErrorsForSource:sourceForSelectedIdentity] > 0 && accountsInInitialSyncCount < 1;

  if (_calendarsButtonHasBackground)
  {
    v11 = +[UIButtonConfiguration filledButtonConfiguration];
    +[UIColor systemWhiteColor];
  }

  else
  {
    v11 = +[UIButtonConfiguration plainButtonConfiguration];
    CalendarAppBarButtonItemTintColor();
  }
  v12 = ;
  v13 = [UIFont systemFontOfSize:17.0];
  [v11 setTitleLineBreakMode:5];
  v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, NSFontAttributeName, v12, NSForegroundColorAttributeName, 0];
  if (UIAccessibilityButtonShapesEnabled())
  {
    v15 = [NSNumber numberWithInteger:1];
    [v14 setObject:v15 forKey:NSUnderlineStyleAttributeName];
  }

  if (CalSystemSolariumEnabled())
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  [v13 pointSize];
  v17 = [UIImageSymbolConfiguration configurationWithPointSize:0 weight:v16 scale:?];
  if (CalSystemSolariumEnabled())
  {
    v18 = [UIImage systemImageNamed:@"calendar" withConfiguration:v17];
    [v11 setImage:v18];
    if (CalSystemSolariumEnabled())
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000B2CF0;
      v34[3] = &unk_1002108A0;
      v35 = v12;
      [v11 setImageColorTransformer:v34];
    }
  }

  else
  {
    v19 = [NSAttributedString alloc];
    calendarsButtonTitle = [(RootNavigationController *)self calendarsButtonTitle];
    v21 = [v19 initWithString:calendarsButtonTitle attributes:v14];
    [v11 setAttributedTitle:v21];

    [v11 setTitleAlignment:2];
  }

  if (accountsInInitialSyncCount >= 1)
  {
    [v11 setShowsActivityIndicator:1];
    [v11 setImagePadding:8.0];
  }

  if (v10)
  {
    if (CalSolariumEnabled())
    {
      v22 = @"calendar.badge.exclamationmark";
    }

    else
    {
      v22 = @"exclamationmark.circle";
    }

    v23 = [UIImage systemImageNamed:v22 withConfiguration:v17];
    [v11 setImage:v23];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000B2CF8;
    v32[3] = &unk_1002108A0;
    v33 = v12;
    [v11 setImageColorTransformer:v32];
  }

  if (CalSystemSolariumEnabled())
  {
    background = [v11 background];
    [background setCornerRadius:20.0];

    v25 = 15.0;
    v26 = 0.0;
    v27 = 0.0;
  }

  else
  {
    if (_calendarsButtonHasBackground)
    {
      CalendarAppBarButtonItemTintColor();
    }

    else
    {
      +[UIColor clearColor];
    }
    v28 = ;
    background2 = [v11 background];
    [background2 setBackgroundColor:v28];

    background3 = [v11 background];
    [background3 setCornerRadius:5.0];

    [v11 contentInsets];
    v25 = 6.0;
  }

  [v11 setContentInsets:{v26, v25, v27, v25}];

  return v11;
}

- (BOOL)_calendarsButtonHasBackground
{
  sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
  v3 = sourceForSelectedIdentity != 0;

  return v3;
}

- (UILabel)largeCurrentDateLabel
{
  largeCurrentDateLabel = self->_largeCurrentDateLabel;
  if (!largeCurrentDateLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_largeCurrentDateLabel;
    self->_largeCurrentDateLabel = v4;

    [(UILabel *)self->_largeCurrentDateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    largeCurrentDateLabel = self->_largeCurrentDateLabel;
  }

  [(UILabel *)largeCurrentDateLabel setAttributedText:self->_currentDateLabelString];
  [(UILabel *)self->_largeCurrentDateLabel sizeToFit];
  v6 = self->_largeCurrentDateLabel;

  return v6;
}

- (void)updateDeviceOrientationForJumpToTodayTip
{
  window = [(RootNavigationController *)self window];
  v3 = [window interfaceOrientation] - 1 < 2;

  v4 = +[CalendarTipsManager sharedManager];
  [v4 donateIsPortraitOrientation:v3];
}

- (void)_updateCalendarsButtonConfiguration
{
  [(UIButton *)self->_calendarsButton setNeedsUpdateConfiguration];
  superview = [(UIButton *)self->_calendarsButton superview];
  if (CalSolariumEnabled())
  {
    calendarsButtonTitle = [(RootNavigationController *)self calendarsButtonTitle];
    [superview setAccessibilityLabel:calendarsButtonTitle];
  }

  else
  {
    calendarsButtonTitle = [(UIButton *)self->_calendarsButton configuration];
    title = [calendarsButtonTitle title];
    [superview setAccessibilityLabel:title];
  }
}

- (void)_initializeCalendarsButton
{
  if (qword_100251A50 != -1)
  {
    sub_1000108F8();
  }

  v3 = [UIButton buttonWithType:1];
  calendarsButton = self->_calendarsButton;
  self->_calendarsButton = v3;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC38;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(qword_100251A48, block);
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100010A98;
  v21[3] = &unk_100210910;
  objc_copyWeak(&v22, &location);
  [(UIButton *)self->_calendarsButton setConfigurationUpdateHandler:v21];
  [(UIButton *)self->_calendarsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144733696;
  [(UIButton *)self->_calendarsButton setContentCompressionResistancePriority:0 forAxis:v5];
  [(UIButton *)self->_calendarsButton addTarget:self action:"calendarsPressed" forControlEvents:64];
  [(RootNavigationController *)self _updateCalendarsButtonMenuProvider];
  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v6 setAccessibilityIdentifier:@"calendars-button"];
  [(UIButton *)self->_calendarsButton setIsAccessibilityElement:0];
  [(UIButton *)self->_calendarsButton setAccessibilityElementsHidden:1];
  [v6 addSubview:self->_calendarsButton];
  widthAnchor = [(UIButton *)self->_calendarsButton widthAnchor];
  widthAnchor2 = [v6 widthAnchor];
  v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v9 setActive:1];

  heightAnchor = [(UIButton *)self->_calendarsButton heightAnchor];
  heightAnchor2 = [v6 heightAnchor];
  v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v12 setActive:1];

  centerXAnchor = [(UIButton *)self->_calendarsButton centerXAnchor];
  centerXAnchor2 = [v6 centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v15 setActive:1];

  centerYAnchor = [(UIButton *)self->_calendarsButton centerYAnchor];
  centerYAnchor2 = [v6 centerYAnchor];
  v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v18 setActive:1];

  [(RootNavigationController *)self _updateFilterLabel];
  v19 = [[UIBarButtonItem alloc] initWithCustomView:v6];
  calendarsButtonTitle = [(RootNavigationController *)self calendarsButtonTitle];
  [v19 setTitle:calendarsButtonTitle];

  [(RootNavigationController *)self setCalendarsBarButtonItem:v19];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_updateCalendarsButtonMenuProvider
{
  if ([(CUIKCalendarModel *)self->_model containsDelegateSources])
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000B2CA4;
    v4[3] = &unk_100210878;
    objc_copyWeak(&v5, &location);
    [(UIButton *)self->_calendarsButton _setMenuProvider:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    calendarsButton = self->_calendarsButton;

    [(UIButton *)calendarsButton _setMenuProvider:0];
  }
}

- (void)_forceInboxButtonCreationIfNeeded
{
  inboxBarButtonItem = [(RootNavigationController *)self inboxBarButtonItem];

  if (inboxBarButtonItem)
  {

    [(RootNavigationController *)self _updateInboxBarButtonItem];
  }

  else
  {
    if (CalSystemSolariumEnabled())
    {
      traitCollection = [(RootNavigationController *)self traitCollection];
      v5 = [traitCollection legibilityWeight] == 1;

      v6 = [UIBarButtonItem alloc];
      v7 = [MainWindowControlHeaderView inboxImageForCount:[(RootNavigationController *)self numberOfNotifications] selected:0 forToolbar:1 bold:v5];
      v11 = [v6 initWithImage:v7 style:0 target:self action:"inboxPressed"];

      [(RootNavigationController *)self setInboxBarButtonItem:v11];
      inboxBarButtonItem2 = [(RootNavigationController *)self inboxBarButtonItem];
      [inboxBarButtonItem2 setAccessibilityIdentifier:@"inbox-button"];

      v9 = CalendarAppBarButtonItemTintColor();
      inboxBarButtonItem3 = [(RootNavigationController *)self inboxBarButtonItem];
      [inboxBarButtonItem3 setTintColor:v9];
    }

    else
    {
      v11 = [objc_opt_class() _inboxTitleForNotificationCount:{-[RootNavigationController numberOfNotifications](self, "numberOfNotifications")}];
      v9 = [[ToolbarBarButtonItem alloc] initWithTitle:v11 target:self action:"inboxPressed"];
      [(RootNavigationController *)self setInboxBarButtonItem:v9];
      inboxBarButtonItem3 = [(RootNavigationController *)self inboxBarButtonItem];
      [inboxBarButtonItem3 setAccessibilityIdentifier:@"inbox-button"];
    }
  }
}

- (unint64_t)numberOfNotifications
{
  if (!self->_hasLoadedInitialNotificationCount)
  {
    model = [(RootNavigationController *)self model];
    self->_numberOfNotifications = [model eventNotificationsForCurrentIdentityCount];

    self->_hasLoadedInitialNotificationCount = 1;
  }

  return self->_numberOfNotifications;
}

- (void)updateErrorWithErrorDisplayManager
{
  errorDisplayManager = self->_errorDisplayManager;
  sourceErrorsDictionary = [(RootNavigationController *)self sourceErrorsDictionary];
  v5 = sourceErrorsDictionary;
  if (sourceErrorsDictionary)
  {
    v4 = sourceErrorsDictionary;
  }

  else
  {
    v4 = &__NSDictionary0__struct;
  }

  [(RootNavigationErrorDisplayManager *)errorDisplayManager updateContentWith:v4];
}

- (id)_getSources
{
  model = [(RootNavigationController *)self model];
  eventStore = [model eventStore];
  sources = [eventStore sources];

  return sources;
}

- (void)updateShouldDisplayJumpToTodayTip
{
  if (self->_extendedLaunchOver)
  {
    currentViewType = [(RootNavigationController *)self currentViewType];
    currentViewType2 = [(RootNavigationController *)self currentViewType];
    if (currentViewType == 3 || currentViewType2 == 4 && (-[RootNavigationController traitCollection](self, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 horizontalSizeClass], v9, v10 == 1))
    {
      v6 = +[CalendarTipsManager sharedManager];
      topViewController = [(RootNavigationController *)self topViewController];
      [v6 updatePresentedControllerTo:topViewController];

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    v11 = +[CalendarTipsManager sharedManager];
    [v11 donateShouldDisplayTip:v8];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = RootNavigationController;
  [(RootNavigationController *)&v4 viewDidLayoutSubviews];
  window = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (UIBarButtonItem)largeAddEventBarButtonItem
{
  largeAddEventBarButtonItem = self->_largeAddEventBarButtonItem;
  if (!largeAddEventBarButtonItem)
  {
    v4 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
    v5 = [UIBarButtonItem alloc];
    v6 = [UIImage systemImageNamed:@"plus" withConfiguration:v4];
    v7 = [v5 initWithImage:v6 style:0 target:self action:"largeNewEventButtonTapped"];
    v8 = self->_largeAddEventBarButtonItem;
    self->_largeAddEventBarButtonItem = v7;

    [(UIBarButtonItem *)self->_largeAddEventBarButtonItem setAccessibilityIdentifier:@"add-plus-button"];
    largeAddEventBarButtonItem = self->_largeAddEventBarButtonItem;
  }

  return largeAddEventBarButtonItem;
}

- (RootNavigationController)initWithModel:(id)model targetWindow:(id)window
{
  modelCopy = model;
  windowCopy = window;
  v35.receiver = self;
  v35.super_class = RootNavigationController;
  v9 = [(RootNavigationController *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, model);
    [(RootNavigationController *)v10 setDelegate:v10];
    v11 = [[_TtC9MobileCal33RootNavigationErrorDisplayManager alloc] initWithDelegate:v10];
    [(RootNavigationController *)v10 setErrorDisplayManager:v11];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v10 selector:"_notificationCountChanged:" name:CUIKCalendarModelNotificationCountsChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_calendarErrorCountChanged:" name:CUIKCalendarModelAccountErrorCountChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_accountsInInitialSyncCountChanged" name:CUIKCalendarModelAccountsInInitialSyncCountChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_calendarsChanged:" name:CUIKCalendarModelCalendarsChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_focusModeConfigurationChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
    [v12 addObserver:v10 selector:"_localeChanged:" name:CUIKLocaleChangedNotification object:0];
    [v12 addObserver:v10 selector:"_timeZoneChanged:" name:CUIKCalendarModelTimeZoneChangedNotification object:0];
    [v12 addObserver:v10 selector:"_selectedDateChanged:" name:CUIKCalendarModelSelectedDateChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_selectedOccurrencesChanged:" name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_filterChanged:" name:CUIKCalendarModelFilterChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_identityChanged:" name:CUIKCalendarModelIdentityChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_delegatesChanged:" name:CUIKCalendarModelDelegatesChangedNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_updateAfterExtendedLaunch:" name:CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification object:v10->_model];
    [v12 addObserver:v10 selector:"_updateAfterExtendedLaunch:" name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];
    [v12 addObserver:v10 selector:"_meContactChangedNoticationReceived:" name:CalMeCardChangedNotification object:0];
    [v12 addObserver:v10 selector:"_monthWeekScaleChanged:" name:CUIKPreferencesNotification_MonthWeekScale object:0];
    [v12 addObserver:v10 selector:"_significantDateChange:" name:CUIKCalendarModelSignificantTimeChangeNotification object:0];
    v10->_userActivityNeedsUpdate = 1;
    v13 = +[EKUISemiConstantCache sharedInstance];
    v37 = objc_opt_class();
    v14 = [NSArray arrayWithObjects:&v37 count:1];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000B0F08;
    v33[3] = &unk_100210800;
    v15 = v10;
    v34 = v15;
    v16 = [(RootNavigationController *)v15 registerForTraitChanges:v14 withHandler:v33];

    v15->_regularBackgroundedViewType = -1;
    v15->_compactBackgroundedViewType = -1;
    objc_storeWeak(&v15->_window, windowCopy);
    undoManager = [(CUIKCalendarModel *)v10->_model undoManager];
    undoableEditor = [undoManager undoableEditor];

    v18 = [CUIKIPendingReminderTracker alloc];
    eventStore = [(CUIKCalendarModel *)v10->_model eventStore];
    v20 = [v18 initWithEventStore:eventStore];

    [modelCopy setPendingReminderTracker:v20];
    v21 = [CUIKIReminderEditor alloc];
    [(CUIKCalendarModel *)v10->_model eventStore];
    v22 = windowCopy;
    v24 = v23 = modelCopy;
    undoManager2 = [(CUIKCalendarModel *)v10->_model undoManager];
    v26 = [v21 initWithEventStore:v24 undoManager:undoManager2 alertDisplayer:v15 pendingReminderTracker:v20];

    v27 = [CUIKCompositeEditor alloc];
    v36[0] = undoableEditor;
    v36[1] = v26;
    v28 = [NSArray arrayWithObjects:v36 count:2];
    v29 = [v27 initWithEditors:v28];

    undoManager3 = [(CUIKCalendarModel *)v10->_model undoManager];
    [undoManager3 setUndoableEditor:v29];

    modelCopy = v23;
    windowCopy = v22;
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CUIKCalendarModelNotificationCountsChangedNotification object:self->_model];
  [v3 removeObserver:self name:CUIKCalendarModelCalendarsChangedNotification object:self->_model];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
  [v3 removeObserver:self name:CUIKLocaleChangedNotification object:0];
  [v3 removeObserver:self name:CUIKCalendarModelTimeZoneChangedNotification object:0];
  [v3 removeObserver:self name:CUIKCalendarModelSelectedDateChangedNotification object:0];
  [v3 removeObserver:self name:CUIKCalendarModelSelectedOccurrencesChangedNotification object:0];
  [v3 removeObserver:self name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];
  [v3 removeObserver:self name:CalMeCardChangedNotification object:0];
  [v3 removeObserver:self name:CUIKPreferencesNotification_MonthWeekScale object:0];
  userActivityForDateInView = self->_userActivityForDateInView;
  if (userActivityForDateInView)
  {
    [(NSUserActivity *)userActivityForDateInView setDelegate:0];
    [(NSUserActivity *)self->_userActivityForDateInView invalidate];
    v5 = self->_userActivityForDateInView;
    self->_userActivityForDateInView = 0;
  }

  userActivityForEvent = self->_userActivityForEvent;
  if (userActivityForEvent)
  {
    [(NSUserActivity *)userActivityForEvent setDelegate:0];
    [(NSUserActivity *)self->_userActivityForEvent invalidate];
    v7 = self->_userActivityForEvent;
    self->_userActivityForEvent = 0;
  }

  v8.receiver = self;
  v8.super_class = RootNavigationController;
  [(RootNavigationController *)&v8 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v33.receiver = self;
  v33.super_class = RootNavigationController;
  [(RootNavigationController *)&v33 viewDidAppear:appear];
  if (CalSolariumEnabled())
  {
    view = [(RootNavigationController *)self view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    view2 = [(RootNavigationController *)self view];
    leadingAnchor = [view2 leadingAnchor];
    view3 = [(RootNavigationController *)self view];
    superview = [view3 superview];
    safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[0] = v25;
    view4 = [(RootNavigationController *)self view];
    trailingAnchor = [view4 trailingAnchor];
    view5 = [(RootNavigationController *)self view];
    superview2 = [view5 superview];
    safeAreaLayoutGuide2 = [superview2 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[1] = v18;
    view6 = [(RootNavigationController *)self view];
    topAnchor = [view6 topAnchor];
    view7 = [(RootNavigationController *)self view];
    superview3 = [view7 superview];
    topAnchor2 = [superview3 topAnchor];
    v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[2] = v6;
    view8 = [(RootNavigationController *)self view];
    bottomAnchor = [view8 bottomAnchor];
    view9 = [(RootNavigationController *)self view];
    superview4 = [view9 superview];
    bottomAnchor2 = [superview4 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[3] = v12;
    v13 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v13];
  }

  if (EKUIShouldSaveStateInPreferences())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B149C;
    block[3] = &unk_10020EB00;
    block[4] = self;
    if (qword_100251A40 != -1)
    {
      dispatch_once(&qword_100251A40, block);
    }
  }

  [(RootNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  [(RootNavigationController *)self controllerAppearedTipsConfiguration];
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  +[EKUILargeTextUtilities clearCache];
  v4 = +[CUIKPreferences sharedPreferences];
  +[EKDayTimeView defaultHourScale];
  *&v5 = v5;
  v6 = [NSNumber numberWithFloat:v5];
  [v4 setDayViewHourScale:v6];

  v7 = +[CUIKPreferences sharedPreferences];
  +[EKDayTimeView defaultHourScale];
  *&v8 = v8;
  v9 = [NSNumber numberWithFloat:v8];
  [v7 setWeekViewHourScale:v9];

  [(RootNavigationController *)self _updateViewSwitcherFont];
}

- (void)_focusModeConfigurationChanged:(id)changed
{
  [(RootNavigationController *)self _updateFilterLabelAnimate:1];
  topViewController = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self _updatePaletteStateWithViewController:topViewController];

  if (self->_focusButton)
  {
    model = [(RootNavigationController *)self model];
    -[EKUIFocusBannerViewModern setOn:](self->_focusButton, "setOn:", [model focusFilterMode] == 1);

    splitViewDelegate = [(RootNavigationController *)self splitViewDelegate];
    [splitViewDelegate updateNavigationBarButtons];

    splitViewRootDelegate = [(RootNavigationController *)self splitViewRootDelegate];
    [splitViewRootDelegate updateNavigationBarButtons];
  }
}

- (void)_selectedDateChanged:(id)changed
{
  [(RootNavigationController *)self _setNeedsUserActivityUpdate];

  [(RootNavigationController *)self updateSelectedDateForJumpToTodayTip];
}

- (void)_identityChanged:(id)changed
{
  [(RootNavigationController *)self updateCurrentIdentity:1];
  [(RootNavigationController *)self _updateCalendarButtonAccessory];
  [(RootNavigationController *)self refreshErrors];
  [(RootNavigationController *)self _updateAddEventButtonEnabledness];

  [(RootNavigationController *)self _notificationCountChanged:0];
}

- (void)_delegatesChanged:(id)changed
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates:changed];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sourceIdentifier = [*(*(&v13 + 1) + 8 * v8) sourceIdentifier];
        sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
        sourceIdentifier2 = [sourceForSelectedIdentity sourceIdentifier];
        v12 = [sourceIdentifier isEqualToString:sourceIdentifier2];

        if (v12)
        {

          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(CUIKCalendarModel *)self->_model updateSourceForSelectedIdentity:0 selectedCalendars:0];
LABEL_11:
  [(RootNavigationController *)self updateCurrentIdentity:1];
  [(RootNavigationController *)self _updateAddEventButtonEnabledness];
  [(RootNavigationController *)self _updateCalendarsButtonMenuProvider];
}

- (void)focusBannerViewToggled:(id)toggled
{
  if ([toggled on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  model = [(RootNavigationController *)self model];
  [model setFocusFilterMode:v4];
}

- (void)_setUpInitialUserActivityUpdate
{
  if (self->_userActivityNeedsUpdate)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B1B8C;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_after(v5, &_dispatch_main_q, block);
  }
}

- (void)_updateAfterExtendedLaunch:(id)launch
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B1C30;
  v5[3] = &unk_10020EC68;
  launchCopy = launch;
  selfCopy = self;
  v4 = launchCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_updateUserActivity
{
  if ((+[EKFeatureSet isContinuitySupported](EKFeatureSet, "isContinuitySupported") & 1) != 0 || +[EKFeatureSet areContextualRemindersSupported])
  {
    v3 = +[UIApplication sharedApplication];
    if ([v3 applicationState])
    {
LABEL_4:

      goto LABEL_7;
    }

    userActivityNeedsUpdate = self->_userActivityNeedsUpdate;

    if (userActivityNeedsUpdate)
    {
      v5 = +[CUIKPreferences sharedPreferences];
      disableContinuity = [v5 disableContinuity];

      if ((disableContinuity & 1) == 0)
      {
        selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];

        shouldDonateTomorrowActivity = [(RootNavigationController *)self shouldDonateTomorrowActivity];
        if (selectedOccurrence)
        {
          v9 = 160;
          v10 = self->_userActivityForEvent;
          if (!v10)
          {
            v11 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.calendar.continuity.event_selection"];
LABEL_19:
            v3 = v11;
            v15 = *(&self->super.super.super.super.isa + v9);
            *(&self->super.super.super.super.isa + v9) = v11;

            [v3 setDelegate:self];
            goto LABEL_20;
          }
        }

        else
        {
          v12 = shouldDonateTomorrowActivity;
          v13 = &OBJC_IVAR___RootNavigationController__userActivityForDateInView;
          if (shouldDonateTomorrowActivity)
          {
            v13 = &OBJC_IVAR___RootNavigationController__tomorrowUA;
          }

          v10 = *(&self->super.super.super.super.isa + *v13);
          if (!v10)
          {
            v14 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.calendar.continuity.date_selection"];
            if (v12)
            {
              v9 = 168;
            }

            else
            {
              v9 = 152;
            }

            v11 = v14;
            goto LABEL_19;
          }
        }

        v3 = v10;
LABEL_20:
        selectedOccurrence2 = [(CUIKCalendarModel *)self->_model selectedOccurrence];

        if (selectedOccurrence2)
        {
          selectedOccurrence3 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
          v18 = [CSSearchableItemAttributeSet alloc];
          activityType = [v3 activityType];
          v20 = [v18 initWithItemContentType:activityType];

          title = [selectedOccurrence3 title];
          [v20 setContentDescription:title];

          structuredLocation = [selectedOccurrence3 structuredLocation];
          title2 = [structuredLocation title];
          [v20 setNamedLocation:title2];

          geoLocation = [structuredLocation geoLocation];
          v25 = geoLocation;
          if (geoLocation)
          {
            [geoLocation coordinate];
            if (CLLocationCoordinate2DIsValid(v37))
            {
              [v25 coordinate];
              v26 = [NSNumber numberWithDouble:?];
              [v20 setLatitude:v26];

              [v25 coordinate];
              v28 = [NSNumber numberWithDouble:v27];
              [v20 setLongitude:v28];

              [v20 setSupportsNavigation:&__kCFBooleanTrue];
            }
          }

          virtualConference = [selectedOccurrence3 virtualConference];
          firstPhoneNumber = [virtualConference firstPhoneNumber];
          v31 = firstPhoneNumber;
          if (firstPhoneNumber)
          {
            conferenceURLForDisplay = firstPhoneNumber;
          }

          else
          {
            conferenceURLForDisplay = [selectedOccurrence3 conferenceURLForDisplay];
          }

          v33 = conferenceURLForDisplay;

          if ([v33 cal_hasSchemeTel])
          {
            absoluteString = [v33 absoluteString];
            v36 = absoluteString;
            v35 = [NSArray arrayWithObjects:&v36 count:1];
            [v20 setPhoneNumbers:v35];

            [v20 setSupportsPhoneCall:&__kCFBooleanTrue];
          }

          [v20 setSupportsNavigation:&__kCFBooleanTrue];
          [v3 setContentAttributeSet:v20];
        }

        [v3 becomeCurrent];
        [v3 setNeedsSave:1];
        goto LABEL_4;
      }
    }
  }

LABEL_7:
  self->_userActivityNeedsUpdate = 0;
}

- (void)_saveUserActivityInfo:(id)info
{
  infoCopy = info;
  currentViewType = [(RootNavigationController *)self currentViewType];
  if (currentViewType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1001F8410[currentViewType];
  }

  selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  shouldDonateTomorrowActivity = [(RootNavigationController *)self shouldDonateTomorrowActivity];
  if (selectedOccurrence)
  {
    v8 = [[CUIKUserActivityCalendarEvent alloc] initWithEvent:selectedOccurrence view:v5];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (shouldDonateTomorrowActivity)
    {
      v9 = CUIKUserActivityTomorrow;
    }

    else
    {
      v9 = CUIKUserActivityCalendarDate;
    }

    v10 = [v9 alloc];
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    date = [selectedDate date];
    calendar = [(CUIKCalendarModel *)self->_model calendar];
    v8 = [v10 initWithDate:date view:v5 calendar:calendar];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [v8 updateActivity:infoCopy];
LABEL_7:
}

- (BOOL)shouldDonateTomorrowActivity
{
  selectedDay = [(CUIKCalendarModel *)self->_model selectedDay];
  v3 = CUIKTodayComponents();
  timeZone = [selectedDay timeZone];
  v5 = [EKCalendarDate calendarDateWithDateComponents:v3 timeZone:timeZone];

  LOBYTE(timeZone) = [selectedDay differenceInDays:v5] == 1;
  return timeZone;
}

- (void)showSearchBar:(BOOL)bar
{
  barCopy = bar;
  searchController = [(RootNavigationController *)self searchController];
  [searchController setShowsSearchResultsController:barCopy];
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  if (CalSolariumEnabled() && [(RootNavigationController *)self activeWidthSizeClass]== 1)
  {
    v4 = 1;
    [(RootNavigationController *)self showSearchBar:1];
  }

  else
  {
    [(RootNavigationController *)self showSearchBar:0];
    splitViewDelegate = [(RootNavigationController *)self splitViewDelegate];
    [splitViewDelegate showSearch];

    return 0;
  }

  return v4;
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  if (CalSolariumEnabled())
  {

    [(RootNavigationController *)self showSearchBar:0];
  }
}

- (void)updateNavigationBarButtonItemsWithViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy allowsOverriddenRightNavigationBarItems])
  {
    [(RootNavigationController *)self _addButtonsToNavigationBarForViewController:controllerCopy];
    [(RootNavigationController *)self _updateAddEventButtonEnabledness];
    if ([(RootNavigationController *)self activeWidthSizeClass]== 2 && (CalSolariumEnabled() & 1) == 0)
    {
      [(RootNavigationController *)self _createLeftFixedSpaceBarItemIfNeeded];
      if (!self->_currentDateLabel)
      {
        v5 = objc_alloc_init(UILabel);
        currentDateLabel = self->_currentDateLabel;
        self->_currentDateLabel = v5;
      }

      labelBarItem = self->_labelBarItem;
      if (!labelBarItem)
      {
        v8 = [[UIBarButtonItem alloc] initWithCustomView:self->_currentDateLabel];
        v9 = self->_labelBarItem;
        self->_labelBarItem = v8;

        labelBarItem = self->_labelBarItem;
      }

      v17[0] = self->_leftFixedSpaceBarItem;
      v17[1] = labelBarItem;
      v10 = [NSArray arrayWithObjects:v17 count:2];
      navigationItem = [controllerCopy navigationItem];
      [navigationItem setLeftBarButtonItems:v10];
    }

    currentDateLabelString = self->_currentDateLabelString;
    self->_currentDateLabelString = 0;
    v13 = currentDateLabelString;

    [(RootNavigationController *)self _setCurrentDateLabelString:v13];
  }

  else
  {
    navigationItem2 = [controllerCopy navigationItem];
    [navigationItem2 setHidesBackButton:1];

    navigationItem3 = [controllerCopy navigationItem];
    [navigationItem3 setLeftBarButtonItems:0];

    navigationItem4 = [controllerCopy navigationItem];
    [navigationItem4 setRightBarButtonItems:0];
  }
}

- (void)updateToolbarItemsWithViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([controllerCopy allowsOverriddenToolbarItems])
    {
      [(RootNavigationController *)self addToolbarButtonItemsWithViewController:controllerCopy];
      goto LABEL_13;
    }
  }

  else
  {
    if (([(RootNavigationController *)self isToolbarHidden]& 1) != 0)
    {
      goto LABEL_13;
    }

    toolbarItems = [controllerCopy toolbarItems];
    v6 = toolbarItems;
    if (toolbarItems && [toolbarItems count])
    {

      goto LABEL_13;
    }

    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Hiding toolbar due to there being no toolbar items for view controller: [%@]", &v8, 0xCu);
    }
  }

  if (([(RootNavigationController *)self isToolbarHidden]& 1) == 0)
  {
    [(RootNavigationController *)self setToolbarHidden:1 animated:0];
    [(RootNavigationController *)self setShowingOverriddenToolbarItems:0];
  }

LABEL_13:
}

- (void)_createLeftFixedSpaceBarItemIfNeeded
{
  if (!self->_leftFixedSpaceBarItem)
  {
    v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    leftFixedSpaceBarItem = self->_leftFixedSpaceBarItem;
    self->_leftFixedSpaceBarItem = v3;

    _objc_release_x1(v3, leftFixedSpaceBarItem);
  }
}

- (id)_contactForCurrentIdentity:(BOOL)identity
{
  identityCopy = identity;
  if ([(CUIKCalendarModel *)self->_model containsDelegateSources])
  {
    sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    if (sourceForSelectedIdentity)
    {
      cachedContactsForSources = self->_cachedContactsForSources;
      if (cachedContactsForSources)
      {
        v7 = !identityCopy;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        v8 = objc_opt_new();
        v9 = self->_cachedContactsForSources;
        self->_cachedContactsForSources = v8;

        cachedContactsForSources = self->_cachedContactsForSources;
      }

      sourceIdentifier = [sourceForSelectedIdentity sourceIdentifier];
      _meContact = [(NSMutableDictionary *)cachedContactsForSources objectForKeyedSubscript:sourceIdentifier];

      if (!_meContact)
      {
        _meContact = contactForSource(sourceForSelectedIdentity);
        if (_meContact)
        {
          v12 = self->_cachedContactsForSources;
          sourceIdentifier2 = [sourceForSelectedIdentity sourceIdentifier];
          [(NSMutableDictionary *)v12 setObject:_meContact forKeyedSubscript:sourceIdentifier2];
        }
      }
    }

    else
    {
      _meContact = [(RootNavigationController *)self _meContact];
    }
  }

  else
  {
    _meContact = 0;
  }

  return _meContact;
}

- (id)_meContact
{
  cachedMeContact = self->_cachedMeContact;
  if (!cachedMeContact)
  {
    v4 = +[CalContactsProvider defaultProvider];
    unifiedMeContact = [v4 unifiedMeContact];

    if (unifiedMeContact)
    {
      v6 = +[ContactsUtils defaultContactKeysToFetch];
      v7 = [ContactsUtils contactForContact:unifiedMeContact keysToFetch:v6];
    }

    else
    {
      v7 = objc_alloc_init(CNContact);
    }

    v8 = self->_cachedMeContact;
    self->_cachedMeContact = v7;

    cachedMeContact = self->_cachedMeContact;
  }

  return cachedMeContact;
}

- (void)_meContactChangedNoticationReceived:(id)received
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B2B70;
  v3[3] = &unk_100210850;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)updateCurrentIdentity:(BOOL)identity
{
  identityCopy = identity;
  [(RootNavigationController *)self _updateCalendarsButtonTitle];
  v8 = [(RootNavigationController *)self _contactForCurrentIdentity:identityCopy];
  if (v8)
  {
    [(PaletteView *)self->_paletteView setAvatarContact:v8];
  }

  sourceForSelectedIdentity = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
  errorDisplayManager = self->_errorDisplayManager;
  if (sourceForSelectedIdentity)
  {
    v7 = CUIKDisplayedTitleForSource();
    [(RootNavigationErrorDisplayManager *)errorDisplayManager updateNoErrorTextTo:v7];
  }

  else
  {
    [(RootNavigationErrorDisplayManager *)errorDisplayManager updateNoErrorTextTo:&stru_1002133B8];
  }
}

- (void)addToolbarButtonItemsWithViewController:(id)controller
{
  controllerCopy = controller;
  [(RootNavigationController *)self setToolbarHidden:0 animated:0];
  todayBarButtonItem = [(RootNavigationController *)self todayBarButtonItem];

  if (!todayBarButtonItem)
  {
    if (CalSolariumEnabled())
    {
      largeTodayBarButtonItem = [(RootNavigationController *)self largeTodayBarButtonItem];
    }

    else
    {
      v7 = [ToolbarBarButtonItem alloc];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
      largeTodayBarButtonItem = [(ToolbarBarButtonItem *)v7 initWithTitle:v9 target:self action:"todayPressed"];
    }

    [(RootNavigationController *)self setTodayBarButtonItem:largeTodayBarButtonItem];

    todayBarButtonItem2 = [(RootNavigationController *)self todayBarButtonItem];
    [todayBarButtonItem2 setAccessibilityIdentifier:@"today-button"];
  }

  [(RootNavigationController *)self _updateFilterLabel];
  calendarsBarButtonItem = [(RootNavigationController *)self calendarsBarButtonItem];

  if (calendarsBarButtonItem)
  {
    [(RootNavigationController *)self _updateCalendarButtonAccessory];
  }

  else
  {
    [(RootNavigationController *)self _initializeCalendarsButton];
  }

  [(RootNavigationController *)self _forceInboxButtonCreationIfNeeded];
  if (!self->_searchBarButtonItem)
  {
    searchController = [(RootNavigationController *)self searchController];

    if (!searchController)
    {
      [(RootNavigationController *)self _setupSearchControllerForViewController:controllerCopy];
    }
  }

  toolbarItems = [controllerCopy toolbarItems];

  if (!toolbarItems)
  {
    if (CalSolariumEnabled())
    {
      v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      compactTodayBarButtonItem = [(RootNavigationController *)self compactTodayBarButtonItem];
      v34[0] = compactTodayBarButtonItem;
      v34[1] = v14;
      calendarsBarButtonItem2 = [(RootNavigationController *)self calendarsBarButtonItem];
      v34[2] = calendarsBarButtonItem2;
      inboxBarButtonItem = [(RootNavigationController *)self inboxBarButtonItem];
      v34[3] = inboxBarButtonItem;
      searchBarButtonItem = [(RootNavigationController *)self searchBarButtonItem];
      v34[4] = searchBarButtonItem;
      v34[5] = v15;
      addEventBarButtonItem = [(RootNavigationController *)self addEventBarButtonItem];
      v34[6] = addEventBarButtonItem;
      v21 = [NSArray arrayWithObjects:v34 count:7];

      [controllerCopy setToolbarItems:v21 animated:1];
      toolbarItems2 = [controllerCopy toolbarItems];

      if (!toolbarItems2)
      {
        [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
      }
    }

    else
    {
      v23 = CalSystemSolariumEnabled();
      v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      if (v23)
      {
        todayBarButtonItem3 = [(RootNavigationController *)self todayBarButtonItem];
        v33[0] = todayBarButtonItem3;
        v33[1] = v14;
        calendarsBarButtonItem3 = [(RootNavigationController *)self calendarsBarButtonItem];
        v33[2] = calendarsBarButtonItem3;
        inboxBarButtonItem2 = [(RootNavigationController *)self inboxBarButtonItem];
        v33[3] = inboxBarButtonItem2;
        v15 = [NSArray arrayWithObjects:v33 count:4];

        [controllerCopy setToolbarItems:v15 animated:0];
        toolbarItems3 = [controllerCopy toolbarItems];

        if (!toolbarItems3)
        {
          [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
        }
      }

      else
      {
        v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
        todayBarButtonItem4 = [(RootNavigationController *)self todayBarButtonItem];
        v32[0] = todayBarButtonItem4;
        v32[1] = v14;
        calendarsBarButtonItem4 = [(RootNavigationController *)self calendarsBarButtonItem];
        v32[2] = calendarsBarButtonItem4;
        v32[3] = v15;
        inboxBarButtonItem3 = [(RootNavigationController *)self inboxBarButtonItem];
        v32[4] = inboxBarButtonItem3;
        v31 = [NSArray arrayWithObjects:v32 count:5];

        [controllerCopy setToolbarItems:v31 animated:0];
        [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
      }
    }
  }

  [(RootNavigationController *)self setShowingOverriddenToolbarItems:1];
}

- (void)_updateFilterLabelAnimate:(BOOL)animate
{
  if (animate)
  {
    calendarsBarButtonItem = [(RootNavigationController *)self calendarsBarButtonItem];
    customView = [calendarsBarButtonItem customView];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B3284;
    v6[3] = &unk_10020EB00;
    v6[4] = self;
    [UIView transitionWithView:customView duration:5242884 options:v6 animations:0 completion:0.2];
  }

  else
  {

    [(RootNavigationController *)self _updateFilterLabel];
  }
}

- (void)_updateInboxBarButtonItem
{
  v3 = [objc_opt_class() _inboxTitleForNotificationCount:{-[RootNavigationController numberOfNotifications](self, "numberOfNotifications")}];
  inboxBarButtonItem = [(RootNavigationController *)self inboxBarButtonItem];
  [inboxBarButtonItem setTitle:v3];

  if (CalSystemSolariumEnabled())
  {
    traitCollection = [(RootNavigationController *)self traitCollection];
    v6 = [traitCollection legibilityWeight] == 1;

    v8 = [MainWindowControlHeaderView inboxImageForCount:[(RootNavigationController *)self numberOfNotifications] selected:0 forToolbar:1 bold:v6];
    inboxBarButtonItem2 = [(RootNavigationController *)self inboxBarButtonItem];
    [inboxBarButtonItem2 setImage:v8];
  }
}

- (void)_setupSearchControllerForViewController:(id)controller
{
  controllerCopy = controller;
  [(RootNavigationController *)self _setupSearchController];
  if ([(RootNavigationController *)self activeWidthSizeClass]== 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy currentChildViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass))
    {
      navigationItem = [controllerCopy navigationItem];
      [navigationItem setSearchController:0];
    }

    else
    {
      navigationItem = [(RootNavigationController *)self searchController];
      navigationItem2 = [controllerCopy navigationItem];
      [navigationItem2 setSearchController:navigationItem];
    }

    navigationItem3 = [controllerCopy navigationItem];
    [navigationItem3 setHidesSearchBarWhenScrolling:0];

    navigationItem4 = [controllerCopy navigationItem];
    [navigationItem4 setPreferredSearchBarPlacement:0];
  }
}

- (UIBarButtonItem)largeFocusModeItem
{
  largeFocusModeItem = self->_largeFocusModeItem;
  if (!largeFocusModeItem)
  {
    v4 = objc_opt_new();
    [v4 setDelegate:self];
    model = [(RootNavigationController *)self model];
    [v4 setOn:{objc_msgSend(model, "focusFilterMode") == 1}];

    [v4 setWantsBorder:0];
    v6 = [[UIBarButtonItem alloc] initWithCustomView:v4];
    v7 = self->_largeFocusModeItem;
    self->_largeFocusModeItem = v6;

    largeFocusModeItem = self->_largeFocusModeItem;
  }

  return largeFocusModeItem;
}

- (UIBarButtonItem)largeDelegateSwitcherItem
{
  largeDelegateSwitcherItem = self->_largeDelegateSwitcherItem;
  if (!largeDelegateSwitcherItem)
  {
    v4 = +[UIButtonConfiguration plainButtonConfiguration];
    [v4 setTitleLineBreakMode:2];
    v5 = +[UIButtonConfiguration plainButtonConfiguration];
    v6 = [UIButton buttonWithConfiguration:v5 primaryAction:0];

    [v6 setChangesSelectionAsPrimaryAction:1];
    [v6 setShowsMenuAsPrimaryAction:1];
    delegatesMenu = [(RootNavigationController *)self delegatesMenu];
    [v6 setMenu:delegatesMenu];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v8];
    v9 = [[UIBarButtonItem alloc] initWithCustomView:v6];
    v10 = self->_largeDelegateSwitcherItem;
    self->_largeDelegateSwitcherItem = v9;

    largeDelegateSwitcherItem = self->_largeDelegateSwitcherItem;
  }

  return largeDelegateSwitcherItem;
}

- (UIBarButtonItem)largeViewSwitcherItem
{
  largeViewSwitcherItem = self->_largeViewSwitcherItem;
  if (!largeViewSwitcherItem)
  {
    v4 = [UIBarButtonItem alloc];
    viewPicker = [(RootNavigationController *)self viewPicker];
    v6 = [v4 initWithCustomView:viewPicker];
    v7 = self->_largeViewSwitcherItem;
    self->_largeViewSwitcherItem = v6;

    largeViewSwitcherItem = self->_largeViewSwitcherItem;
  }

  return largeViewSwitcherItem;
}

- (UIBarButtonItem)largeSpacerBarButtonItem
{
  largeSpacerBarButtonItem = self->_largeSpacerBarButtonItem;
  if (!largeSpacerBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 menu:0];
    v5 = self->_largeSpacerBarButtonItem;
    self->_largeSpacerBarButtonItem = v4;

    largeSpacerBarButtonItem = self->_largeSpacerBarButtonItem;
  }

  return largeSpacerBarButtonItem;
}

- (UISearchController)largeSearchController
{
  largeSearchController = self->_largeSearchController;
  if (!largeSearchController)
  {
    v4 = [[UISearchController alloc] initWithSearchResultsController:0];
    v5 = self->_largeSearchController;
    self->_largeSearchController = v4;

    splitViewDelegate = [(RootNavigationController *)self splitViewDelegate];
    searchBar = [(UISearchController *)self->_largeSearchController searchBar];
    [searchBar setDelegate:splitViewDelegate];

    largeSearchController = self->_largeSearchController;
  }

  return largeSearchController;
}

- (id)todayButtonView
{
  v3 = [UIButton buttonWithType:0];
  [v3 addTarget:self action:"todayPressed" forControlEvents:64];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (CalSystemSolariumEnabled())
  {
    v4 = CalendarAppBarButtonItemTintColor();
    [v3 setTintColor:v4];
  }

  v5 = objc_opt_new();
  todayButtonDayOfWeek = self->_todayButtonDayOfWeek;
  self->_todayButtonDayOfWeek = v5;

  [(UILabel *)self->_todayButtonDayOfWeek setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  todayButtonDayOfMonth = self->_todayButtonDayOfMonth;
  self->_todayButtonDayOfMonth = v7;

  [(UILabel *)self->_todayButtonDayOfMonth setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RootNavigationController *)self updateTodayButtonDayOfWeek:self->_todayButtonDayOfWeek dayOfMonth:self->_todayButtonDayOfMonth compact:0];
  [v3 addSubview:self->_todayButtonDayOfWeek];
  [v3 addSubview:self->_todayButtonDayOfMonth];
  centerXAnchor = [(UILabel *)self->_todayButtonDayOfWeek centerXAnchor];
  centerXAnchor2 = [v3 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v26[0] = v23;
  centerXAnchor3 = [(UILabel *)self->_todayButtonDayOfMonth centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v20 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v26[1] = v20;
  topAnchor = [(UILabel *)self->_todayButtonDayOfWeek topAnchor];
  topAnchor2 = [v3 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v26[2] = v10;
  topAnchor3 = [(UILabel *)self->_todayButtonDayOfMonth topAnchor];
  bottomAnchor = [(UILabel *)self->_todayButtonDayOfWeek bottomAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:-5.0];
  v26[3] = v13;
  bottomAnchor2 = [(UILabel *)self->_todayButtonDayOfMonth bottomAnchor];
  bottomAnchor3 = [v3 bottomAnchor];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  v26[4] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  return v3;
}

- (id)compactTodayButtonView
{
  v3 = [UIButton buttonWithType:0];
  [v3 addTarget:self action:"todayPressed" forControlEvents:64];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (CalSystemSolariumEnabled())
  {
    v4 = CalendarAppBarButtonItemTintColor();
    [v3 setTintColor:v4];
  }

  v5 = objc_opt_new();
  todayButtonDayOfWeekCompact = self->_todayButtonDayOfWeekCompact;
  self->_todayButtonDayOfWeekCompact = v5;

  [(UILabel *)self->_todayButtonDayOfWeekCompact setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  todayButtonDayOfMonthCompact = self->_todayButtonDayOfMonthCompact;
  self->_todayButtonDayOfMonthCompact = v7;

  [(UILabel *)self->_todayButtonDayOfMonthCompact setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RootNavigationController *)self updateTodayButtonDayOfWeek:self->_todayButtonDayOfWeekCompact dayOfMonth:self->_todayButtonDayOfMonthCompact compact:1];
  [v3 addSubview:self->_todayButtonDayOfWeekCompact];
  [v3 addSubview:self->_todayButtonDayOfMonthCompact];
  centerXAnchor = [(UILabel *)self->_todayButtonDayOfWeekCompact centerXAnchor];
  centerXAnchor2 = [v3 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v26[0] = v23;
  centerXAnchor3 = [(UILabel *)self->_todayButtonDayOfMonthCompact centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v20 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v26[1] = v20;
  topAnchor = [(UILabel *)self->_todayButtonDayOfWeekCompact topAnchor];
  topAnchor2 = [v3 topAnchor];
  v10 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:2.0];
  v26[2] = v10;
  topAnchor3 = [(UILabel *)self->_todayButtonDayOfMonthCompact topAnchor];
  bottomAnchor = [(UILabel *)self->_todayButtonDayOfWeekCompact bottomAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
  v26[3] = v13;
  bottomAnchor2 = [(UILabel *)self->_todayButtonDayOfMonthCompact bottomAnchor];
  bottomAnchor3 = [v3 bottomAnchor];
  v16 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:2.0];
  v26[4] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:5];
  [NSLayoutConstraint activateConstraints:v17];

  return v3;
}

- (UIBarButtonItem)largeTodayBarButtonItem
{
  largeTodayBarButtonItem = self->_largeTodayBarButtonItem;
  if (!largeTodayBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    todayButtonView = [(RootNavigationController *)self todayButtonView];
    v6 = [v4 initWithCustomView:todayButtonView];
    v7 = self->_largeTodayBarButtonItem;
    self->_largeTodayBarButtonItem = v6;

    largeTodayBarButtonItem = self->_largeTodayBarButtonItem;
  }

  return largeTodayBarButtonItem;
}

- (UIBarButtonItem)compactTodayBarButtonItem
{
  compactTodayBarButtonItem = self->_compactTodayBarButtonItem;
  if (!compactTodayBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    compactTodayButtonView = [(RootNavigationController *)self compactTodayButtonView];
    v6 = [v4 initWithCustomView:compactTodayButtonView];
    v7 = self->_compactTodayBarButtonItem;
    self->_compactTodayBarButtonItem = v6;

    compactTodayBarButtonItem = self->_compactTodayBarButtonItem;
  }

  return compactTodayBarButtonItem;
}

- (void)updateTodayButtonDayOfWeek:(id)week dayOfMonth:(id)month compact:(BOOL)compact
{
  compactCopy = compact;
  monthCopy = month;
  weekCopy = week;
  v9 = +[NSDate CalSimulatedDateForNow];
  v10 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:2 options:0];
  v11 = 10.0;
  if (compactCopy)
  {
    v11 = 0.0;
  }

  v25 = [UIFont fontWithDescriptor:v10 size:v11];
  v30[0] = v25;
  v29[0] = NSFontAttributeName;
  v29[1] = NSForegroundColorAttributeName;
  v12 = CalendarAppTintColor();
  v30[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];

  v14 = [NSAttributedString alloc];
  v26 = v9;
  v15 = CUIKAbbreviatedDayOfWeekForDate();
  localizedUppercaseString = [v15 localizedUppercaseString];
  v17 = [v14 initWithString:localizedUppercaseString attributes:v13];
  [weekCopy setAttributedText:v17];

  [weekCopy setAdjustsFontForContentSizeCategory:compactCopy];
  v18 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleBody];

  if (compactCopy)
  {
    [UIFont fontWithDescriptor:v18 size:20.0];
  }

  else
  {
    [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  }
  v19 = ;
  v27[1] = NSForegroundColorAttributeName;
  v28[0] = v19;
  v27[0] = NSFontAttributeName;
  v20 = CalendarAppTintColor();
  v28[1] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  v22 = [NSAttributedString alloc];
  v23 = CUIKDayOfMonthStringForDate();
  v24 = [v22 initWithString:v23 attributes:v21];
  [monthCopy setAttributedText:v24];

  [monthCopy setAdjustsFontForContentSizeCategory:compactCopy];
}

- (void)_significantDateChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    todayButtonDayOfWeek = self->_todayButtonDayOfWeek;
    if (todayButtonDayOfWeek)
    {
      [(RootNavigationController *)self updateTodayButtonDayOfWeek:todayButtonDayOfWeek dayOfMonth:self->_todayButtonDayOfMonth compact:0];
    }

    if (self->_todayButtonDayOfWeekCompact)
    {

      [RootNavigationController updateTodayButtonDayOfWeek:"updateTodayButtonDayOfWeek:dayOfMonth:compact:" dayOfMonth:? compact:?];
    }
  }
}

- (void)_addButtonsToNavigationBarForViewController:(id)controller
{
  controllerCopy = controller;
  splitViewDelegate = [(RootNavigationController *)self splitViewDelegate];
  [splitViewDelegate updateNavigationBarButtons];

  splitViewRootDelegate = [(RootNavigationController *)self splitViewRootDelegate];
  [splitViewRootDelegate updateNavigationBarButtons];

  if ([(RootNavigationController *)self activeWidthSizeClass]== 1)
  {
    [(RootNavigationController *)self setNavigationBarHidden:0 animated:0];
    if (CalSolariumEnabled())
    {
      v7 = &__NSArray0__struct;
    }

    else
    {
      addEventBarButtonItem = [(RootNavigationController *)self addEventBarButtonItem];
      v106[0] = addEventBarButtonItem;
      searchBarButtonItem = [(RootNavigationController *)self searchBarButtonItem];
      v106[1] = searchBarButtonItem;
      v7 = [NSArray arrayWithObjects:v106 count:2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      supportedToggleMode = [controllerCopy supportedToggleMode];
      if (supportedToggleMode == 2)
      {
        _compactMonthDividedListSwitchBarButtonItem = [(RootNavigationController *)self _compactMonthDividedListSwitchBarButtonItem];
        if (!_compactMonthDividedListSwitchBarButtonItem)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (supportedToggleMode == 1)
      {
        _compactMonthDividedListSwitchBarButtonItem = [(RootNavigationController *)self _listViewSwitchBarButtonItem];
        self->_lastListToggleBarButtonDayViewMode = [(RootNavigationController *)self currentDayViewMode];
        v30 = [(RootNavigationController *)self imageNameForDayViewMode:[(RootNavigationController *)self currentDayViewMode]];
        v31 = [UIImage _systemImageNamed:v30];
        imageFlippedForRightToLeftLayoutDirection = [v31 imageFlippedForRightToLeftLayoutDirection];

        lastDayNavButtonImageName = self->_lastDayNavButtonImageName;
        if (lastDayNavButtonImageName && ([(NSString *)lastDayNavButtonImageName isEqual:v30]& 1) == 0)
        {
          listToggleBarButtonItem = self->_listToggleBarButtonItem;
          v98 = controllerCopy;
          v80 = +[NSSymbolReplaceContentTransition replaceOffUpTransition];
          transitionWithByLayer = [v80 transitionWithByLayer];
          v82 = [NSSymbolReplaceContentTransition magicTransitionWithFallback:transitionWithByLayer];
          v83 = +[NSSymbolEffectOptions optionsWithNonRepeating];
          [(UIBarButtonItem *)listToggleBarButtonItem setSymbolImage:imageFlippedForRightToLeftLayoutDirection withContentTransition:v82 options:v83];

          controllerCopy = v98;
        }

        else
        {
          [(UIBarButtonItem *)self->_listToggleBarButtonItem setImage:imageFlippedForRightToLeftLayoutDirection];
        }

        generateCurrentListToggleBarButtonItemMenu = [(RootNavigationController *)self generateCurrentListToggleBarButtonItemMenu];
        [(UIBarButtonItem *)self->_listToggleBarButtonItem setMenu:generateCurrentListToggleBarButtonItemMenu];

        if (!_compactMonthDividedListSwitchBarButtonItem)
        {
          goto LABEL_32;
        }

LABEL_31:
        v85 = [v7 arrayByAddingObject:_compactMonthDividedListSwitchBarButtonItem];

        v7 = v85;
        goto LABEL_32;
      }
    }

    _compactMonthDividedListSwitchBarButtonItem = 0;
LABEL_32:
    v86 = CalSolariumEnabled();
    navigationItem = [controllerCopy navigationItem];
    v88 = navigationItem;
    if (v86)
    {
      [navigationItem setLeadingItemGroups:&__NSArray0__struct];

      navigationItem2 = [controllerCopy navigationItem];
      [navigationItem2 setTrailingItemGroups:&__NSArray0__struct];
      goto LABEL_36;
    }

    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v90 = [rightBarButtonItems isEqual:v7];

    if ((v90 & 1) == 0)
    {
      navigationItem3 = [controllerCopy navigationItem];
      [navigationItem3 setRightBarButtonItems:&__NSArray0__struct animated:0];

      navigationItem2 = [controllerCopy navigationItem];
      [navigationItem2 setRightBarButtonItems:v7 animated:0];
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (CalSolariumEnabled())
  {
    largeCurrentDateLabel = [(RootNavigationController *)self largeCurrentDateLabel];
    topViewController = [(RootNavigationController *)self topViewController];
    navigationItem4 = [topViewController navigationItem];
    [navigationItem4 setTitleView:largeCurrentDateLabel];

    model = [(RootNavigationController *)self model];
    if ([model containsDelegateSources])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    model2 = [(RootNavigationController *)self model];
    v14 = [model2 focusFilterMode] + v12 != 0;

    topViewController2 = [(RootNavigationController *)self topViewController];
    navigationItem5 = [topViewController2 navigationItem];
    leadingItemGroups = [navigationItem5 leadingItemGroups];
    firstObject = [leadingItemGroups firstObject];
    barButtonItems = [firstObject barButtonItems];
    v97 = controllerCopy;
    if ([barButtonItems count] == v14)
    {
      topViewController3 = [(RootNavigationController *)self topViewController];
      navigationItem6 = [topViewController3 navigationItem];
      leadingItemGroups2 = [navigationItem6 leadingItemGroups];
      firstObject2 = [leadingItemGroups2 firstObject];
      [firstObject2 barButtonItems];
      v23 = v94 = topViewController2;
      firstObject3 = [v23 firstObject];
      [(RootNavigationController *)self largeAddEventBarButtonItem];
      v25 = v92 = navigationItem5;

      controllerCopy = v97;
      if (firstObject3 == v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    v34 = [UIBarButtonItemGroup alloc];
    largeAddEventBarButtonItem = [(RootNavigationController *)self largeAddEventBarButtonItem];
    v105 = largeAddEventBarButtonItem;
    v36 = [NSArray arrayWithObjects:&v105 count:1];
    v7 = [v34 initWithBarButtonItems:v36 representativeItem:0];

    _compactMonthDividedListSwitchBarButtonItem = [NSMutableArray arrayWithObject:v7];
    model3 = [(RootNavigationController *)self model];
    LODWORD(v36) = [model3 containsDelegateSources];

    if (v36)
    {
      v38 = [UIBarButtonItemGroup alloc];
      largeDelegateSwitcherItem = [(RootNavigationController *)self largeDelegateSwitcherItem];
      v104 = largeDelegateSwitcherItem;
      v40 = [NSArray arrayWithObjects:&v104 count:1];
      v41 = [v38 initWithBarButtonItems:v40 representativeItem:0];

      [_compactMonthDividedListSwitchBarButtonItem addObject:v41];
    }

    model4 = [(RootNavigationController *)self model];
    focusFilterMode = [model4 focusFilterMode];

    if (focusFilterMode)
    {
      v44 = [UIBarButtonItemGroup alloc];
      largeFocusModeItem = [(RootNavigationController *)self largeFocusModeItem];
      v103 = largeFocusModeItem;
      v46 = [NSArray arrayWithObjects:&v103 count:1];
      v47 = [v44 initWithBarButtonItems:v46 representativeItem:0];

      [_compactMonthDividedListSwitchBarButtonItem addObject:v47];
    }

    topViewController4 = [(RootNavigationController *)self topViewController];
    navigationItem7 = [topViewController4 navigationItem];
    [navigationItem7 setLeadingItemGroups:_compactMonthDividedListSwitchBarButtonItem];

    topViewController5 = [(RootNavigationController *)self topViewController];
    navigationItem8 = [topViewController5 navigationItem];
    trailingItemGroups = [navigationItem8 trailingItemGroups];
    firstObject4 = [trailingItemGroups firstObject];
    barButtonItems2 = [firstObject4 barButtonItems];
    firstObject5 = [barButtonItems2 firstObject];
    largeViewSwitcherItem = [(RootNavigationController *)self largeViewSwitcherItem];

    if (firstObject5 != largeViewSwitcherItem)
    {
      v57 = [UIBarButtonItemGroup alloc];
      largeViewSwitcherItem2 = [(RootNavigationController *)self largeViewSwitcherItem];
      v102 = largeViewSwitcherItem2;
      v59 = [NSArray arrayWithObjects:&v102 count:1];
      navigationItem2 = [v57 initWithBarButtonItems:v59 representativeItem:0];

      v61 = [UIBarButtonItemGroup alloc];
      largeSpacerBarButtonItem = [(RootNavigationController *)self largeSpacerBarButtonItem];
      v101 = largeSpacerBarButtonItem;
      v63 = [NSArray arrayWithObjects:&v101 count:1];
      v95 = [v61 initWithBarButtonItems:v63 representativeItem:0];

      v64 = [UIBarButtonItemGroup alloc];
      largeTodayBarButtonItem = [(RootNavigationController *)self largeTodayBarButtonItem];
      v100[0] = largeTodayBarButtonItem;
      largeSpacerBarButtonItem2 = [(RootNavigationController *)self largeSpacerBarButtonItem];
      v100[1] = largeSpacerBarButtonItem2;
      v67 = [NSArray arrayWithObjects:v100 count:2];
      v68 = [v64 initWithBarButtonItems:v67 representativeItem:0];

      v99[0] = navigationItem2;
      v99[1] = v95;
      v99[2] = v68;
      v69 = [NSArray arrayWithObjects:v99 count:3];
      topViewController6 = [(RootNavigationController *)self topViewController];
      navigationItem9 = [topViewController6 navigationItem];
      [navigationItem9 setTrailingItemGroups:v69];

      largeSearchController = [(RootNavigationController *)self largeSearchController];
      topViewController7 = [(RootNavigationController *)self topViewController];
      navigationItem10 = [topViewController7 navigationItem];
      [navigationItem10 setSearchController:largeSearchController];

      splitViewDelegate2 = [(RootNavigationController *)self splitViewDelegate];
      topViewController8 = [(RootNavigationController *)self topViewController];
      navigationItem11 = [topViewController8 navigationItem];
      searchController = [navigationItem11 searchController];
      searchBar = [searchController searchBar];
      [searchBar setDelegate:splitViewDelegate2];

      controllerCopy = v97;
LABEL_36:

      goto LABEL_37;
    }

    controllerCopy = v97;
LABEL_37:
  }

LABEL_38:
}

- (void)updateDividedMonthBarButtonItemAnimated:(BOOL)animated
{
  model = [(RootNavigationController *)self model];
  showMonthAsDivided = [model showMonthAsDivided];

  if (showMonthAsDivided)
  {
    v6 = @"list.bullet.below.rectangle";
    v7 = @"list";
    v8 = &OBJC_IVAR___RootNavigationController__listAction;
  }

  else
  {
    v9 = +[CUIKPreferences sharedPreferences];
    monthViewScaleSize = [v9 monthViewScaleSize];

    v8 = &OBJC_IVAR___RootNavigationController__minimalScaleAction;
    v11 = @"event.2.text";
    v12 = @"details";
    v13 = &OBJC_IVAR___RootNavigationController__largeScaleAction;
    if (monthViewScaleSize == 2)
    {
      v13 = &OBJC_IVAR___RootNavigationController__compactScaleAction;
      v12 = @"stacked";
      v11 = @"event.compact.2";
    }

    v14 = monthViewScaleSize == 1;
    if (monthViewScaleSize == 1)
    {
      v7 = @"compact";
    }

    else
    {
      v8 = v13;
      v7 = v12;
    }

    if (v14)
    {
      v6 = @"event.compact.split.4x1";
    }

    else
    {
      v6 = v11;
    }
  }

  [*(&self->super.super.super.super.isa + *v8) setState:1];
  v19[0] = @"selection";
  v19[1] = @"currentView";
  v20[0] = v7;
  v20[1] = &off_100219AF0;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  CalAnalyticsSendEvent();
  if (([(NSString *)self->_lastMonthNavButtonImageName isEqual:v6]& 1) == 0)
  {
    lastMonthNavButtonImageName = self->_lastMonthNavButtonImageName;
    self->_lastMonthNavButtonImageName = &v6->isa;

    v17 = [UIImage _systemImageNamed:v6];
    imageFlippedForRightToLeftLayoutDirection = [v17 imageFlippedForRightToLeftLayoutDirection];

    [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setImage:imageFlippedForRightToLeftLayoutDirection];
  }
}

- (void)_monthWeekScaleChanged:(id)changed
{
  [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:1];
  compactMonthMenu = [(RootNavigationController *)self compactMonthMenu];
  [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setMenu:compactMonthMenu];
}

- (BOOL)_isCurrentlyDraggingEvent
{
  topViewController = [(RootNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = topViewController;
    if ([v3 currentChildViewControllerIsLoaded])
    {
      currentChildViewController = [v3 currentChildViewController];
    }

    else
    {
      currentChildViewController = 0;
    }
  }

  else
  {
    currentChildViewController = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [currentChildViewController currentlyEditingEventsWithGestures])
  {
    v5 = kCalUILogHandle;
    v6 = 1;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = currentChildViewController;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Main view controller is currently editing events with gestures: %@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateCalendarButtonAccessory
{
  if (self->_extendedLaunchOver && self->_calendarsButton)
  {
    [(RootNavigationController *)self _updateCalendarButtonSpinner];
    [(RootNavigationController *)self _updateCalendarButtonError];
    splitViewDelegate = [(RootNavigationController *)self splitViewDelegate];
    [splitViewDelegate updateCalendarBarButtonItem];
  }
}

- (BOOL)_updateCalendarButtonSpinner
{
  model = [(RootNavigationController *)self model];
  accountsInInitialSyncCount = [model accountsInInitialSyncCount];

  configuration = [(UIButton *)self->_calendarsButton configuration];
  showsActivityIndicator = [configuration showsActivityIndicator];

  if ((((accountsInInitialSyncCount < 1) ^ showsActivityIndicator) & 1) == 0)
  {
    [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
  }

  return (accountsInInitialSyncCount < 1) ^ showsActivityIndicator ^ 1;
}

- (BOOL)_updateCalendarButtonError
{
  model = [(RootNavigationController *)self model];
  model2 = [(RootNavigationController *)self model];
  sourceForSelectedIdentity = [model2 sourceForSelectedIdentity];
  if ([model displayableAccountErrorsForSource:sourceForSelectedIdentity] < 1)
  {
    v7 = 0;
  }

  else
  {
    model3 = [(RootNavigationController *)self model];
    v7 = [model3 accountsInInitialSyncCount] == 0;
  }

  showingAccountErrors = self->_showingAccountErrors;
  if (showingAccountErrors != v7)
  {
    [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
    self->_showingAccountErrors = v7;
  }

  return showingAccountErrors != v7;
}

- (void)_calendarErrorCountChanged:(id)changed
{
  [(RootNavigationController *)self _updateCalendarButtonAccessory];

  [(RootNavigationController *)self refreshErrors];
}

- (void)_accountsInInitialSyncCountChanged
{
  [(RootNavigationController *)self _updateCalendarButtonAccessory];

  [(RootNavigationController *)self refreshErrors];
}

- (id)_errorTextForError:(unint64_t)error
{
  v3 = error - 1;
  if (error - 1 <= 8 && ((0x1BFu >> v3) & 1) != 0)
  {
    v4 = *(&off_100210ED8 + v3);
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1002133B8 table:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_searchPressed
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B5668;
  v2[3] = &unk_1002109B0;
  v2[4] = self;
  [(RootNavigationController *)self performUIAction:@"Search Button press" block:v2 cancelBlock:0];
}

- (void)openSearchLinkActionWithCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B5844;
  v7[3] = &unk_1002109D8;
  completionCopy = completion;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B5874;
  v5[3] = &unk_10020F680;
  v6 = completionCopy;
  v4 = completionCopy;
  [(RootNavigationController *)self performUIAction:@"Search Button link action" block:v7 cancelBlock:v5];
}

- (void)addEventPressed
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B5900;
  v2[3] = &unk_1002109B0;
  v2[4] = self;
  [(RootNavigationController *)self performUIAction:@"Add Event Button press" block:v2 cancelBlock:0];
}

- (void)largeNewEventButtonTapped
{
  largeAddEventBarButtonItem = [(RootNavigationController *)self largeAddEventBarButtonItem];
  [(RootNavigationController *)self showAddEventAnimated:1 fromBarButtonItem:largeAddEventBarButtonItem];
}

- (void)subtitleLabelTapped
{
  if ([EKUIAccountErrorDisplayer errorIsActionable:self->_currentDisplayingError])
  {
    eventStore = [(CUIKCalendarModel *)self->_model eventStore];
    v3 = [eventStore sourceWithIdentifier:self->_currentDisplayingErrorAccount];
    [EKUIAccountErrorDisplayer presentAlertForAccount:v3 error:self->_currentDisplayingError usingViewController:self completion:0];
  }
}

- (void)performUIAction:(id)action block:(id)block cancelBlock:(id)cancelBlock
{
  actionCopy = action;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v29 = v14;
    v30 = 2114;
    v31 = actionCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[UserStateLog] Action -> %{public}@ %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000B5E38;
  v23 = &unk_100210A60;
  objc_copyWeak(&v27, buf);
  v15 = actionCopy;
  v24 = v15;
  v16 = cancelBlockCopy;
  v25 = v16;
  v17 = blockCopy;
  v26 = v17;
  v18 = objc_retainBlock(&v20);
  v19 = [CalendarTipsManager sharedManager:v20];
  [v19 dismissTipDueToUserNavigationWithCompletionBlock:v18];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)toggleDayViewMode:(int64_t)mode
{
  v5 = [(RootNavigationController *)self imageNameForDayViewMode:[(RootNavigationController *)self currentDayViewMode]];
  lastDayNavButtonImageName = self->_lastDayNavButtonImageName;
  self->_lastDayNavButtonImageName = v5;

  if (mode == 2)
  {
    model = [(RootNavigationController *)self model];
    [model setShowDayAsList:1];
    v9 = @"list";
  }

  else if (mode == 1)
  {
    model2 = [(RootNavigationController *)self model];
    [model2 setShowDayAsList:0];

    v11 = +[MultiDayWeekView numMultiDays];
    model = [(RootNavigationController *)self model];
    [model setNumDaysToShow:v11];
    v9 = @"multiDay";
  }

  else
  {
    if (mode)
    {
      v9 = 0;
      goto LABEL_9;
    }

    model3 = [(RootNavigationController *)self model];
    [model3 setShowDayAsList:0];

    model = [(RootNavigationController *)self model];
    [model setNumDaysToShow:1];
    v9 = @"singleDay";
  }

LABEL_9:
  v13[0] = @"selection";
  v13[1] = @"currentView";
  v14[0] = v9;
  v14[1] = &off_100219B08;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  CalAnalyticsSendEvent();
  [(RootNavigationController *)self updateDayViewModeContainer];
}

- (id)imageNameForDayViewMode:(int64_t)mode
{
  v3 = @"calendar.day.timeline.leading";
  if (mode == 1)
  {
    v3 = @"calendar.multiday.timeline.leading";
  }

  if (mode == 2)
  {
    return @"list.dash";
  }

  else
  {
    return v3;
  }
}

- (id)imageForCurrentDayViewMode
{
  v2 = [(RootNavigationController *)self imageNameForDayViewMode:[(RootNavigationController *)self currentDayViewMode]];
  v3 = [UIImage _systemImageNamed:v2];
  imageFlippedForRightToLeftLayoutDirection = [v3 imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (void)updateDayViewModeContainer
{
  window = [(RootNavigationController *)self window];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    return;
  }

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if ([topMainViewControllerContainer representsDayInViewHierarchy])
  {
    currentDayViewMode = [(RootNavigationController *)self currentDayViewMode];
    if (currentDayViewMode == 2)
    {
      v11 = [ListViewContainerViewController alloc];
      model = [(RootNavigationController *)self model];
      window2 = [(RootNavigationController *)self window];
      v10 = [(MainViewControllerContainer *)v11 initWithModel:model window:window2];

      currentChildViewController = [(ListViewContainerViewController *)v10 currentChildViewController];
      [currentChildViewController setAllowExtendedHeightCells:1];
    }

    else
    {
      if (currentDayViewMode == 1)
      {
        v6 = MultiDayWeekViewContainerViewController;
      }

      else
      {
        if (currentDayViewMode)
        {
          v10 = 0;
          goto LABEL_12;
        }

        v6 = DayViewContainerViewController;
      }

      v7 = [v6 alloc];
      currentChildViewController = [(RootNavigationController *)self model];
      window3 = [(RootNavigationController *)self window];
      v10 = [v7 initWithModel:currentChildViewController window:window3];
    }

LABEL_12:
    viewControllers = [(RootNavigationController *)self viewControllers];
    v15 = [viewControllers count];

    viewControllers2 = [(RootNavigationController *)self viewControllers];
    v17 = [viewControllers2 subarrayWithRange:{0, v15 - 1}];

    v18 = [v17 arrayByAddingObject:v10];

    [(RootNavigationController *)self doCrossfadeAnimationWithNavigationViewContents];
    [(RootNavigationController *)self setViewControllers:v18 animated:0];
  }
}

- (void)todayPressed
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[UserStateLog] Action -> %{public}@ today button tapped", buf, 0xCu);
  }

  v7 = [NSNumber numberWithInt:[(RootNavigationController *)self currentViewTypeInt:[(RootNavigationController *)self currentViewType], @"currentView"]];
  v11 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  CalAnalyticsSendEvent();
  v9 = +[CalendarTipsManager sharedManager];
  [v9 donateTodayButtonPressed];

  [(RootNavigationController *)self selectTodayWithTrigger:0 animated:1];
}

- (void)calendarsPressed
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B65CC;
  v2[3] = &unk_1002109B0;
  v2[4] = self;
  [(RootNavigationController *)self performUIAction:@"Calendars Button press" block:v2 cancelBlock:0];
}

- (void)openCalendarsLinkActionWithCompletion:(id)completion
{
  completionCopy = completion;
  ekui_futureTraitCollection = [(RootNavigationController *)self ekui_futureTraitCollection];
  if ([ekui_futureTraitCollection horizontalSizeClass] == 1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B6810;
    v8[3] = &unk_1002109D8;
    v9 = completionCopy;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6820;
    v6[3] = &unk_10020F680;
    v7 = v9;
    [(RootNavigationController *)self performUIAction:@"Calendars Button Link Action" block:v8 cancelBlock:v6];
  }
}

- (void)inboxPressed
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B68AC;
  v2[3] = &unk_1002109B0;
  v2[4] = self;
  [(RootNavigationController *)self performUIAction:@"Inbox Button press" block:v2 cancelBlock:0];
}

- (void)openInboxLinkActionWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B6A30;
  v5[3] = &unk_1002109D8;
  completionCopy = completion;
  v4 = completionCopy;
  [(RootNavigationController *)self performUIAction:@"Calendars Button Link Action" block:v5 cancelBlock:v4];
}

- (id)_presentedEditor
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  if (presentedViewController)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2PresentedViewController = [presentedViewController presentedViewController];

      presentedViewController = v2PresentedViewController;
    }

    while (v2PresentedViewController);
  }

  return presentedViewController;
}

- (BOOL)_dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  if (!presentedViewController)
  {
    v9 = 1;
    v15 = 1;
    if (!completionCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  _presentedEditor = [(RootNavigationController *)self _presentedEditor];
  v9 = _presentedEditor != 0;
  v10 = kCalUILogHandle;
  v11 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO);
  if (_presentedEditor)
  {
    if (v11)
    {
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Will not show calendar view because an editor [%@] is being presented.", buf, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v21 = presentedViewController;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Dismissing view controller: [%@]", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B6D14;
    v17[3] = &unk_10020F550;
    v17[4] = self;
    v18 = completionCopy;
    v19 = 1;
    [(RootNavigationController *)self dismissViewControllerAnimated:animatedCopy completion:v17];
  }

  v15 = _presentedEditor == 0;

  if (completionCopy)
  {
LABEL_11:
    if (v9)
    {
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

LABEL_13:

  return v15;
}

- (id)showInboxAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(RootNavigationController *)self dismissPresentedViewController])
  {
    v5 = [(RootNavigationController *)self _popToViewControllerSatisfying:&stru_100210AA0];
    if (v5)
    {
      v6 = v5;
      v7 = [(RootNavigationController *)self showInboxAnimated:animatedCopy completion:0];

      goto LABEL_7;
    }

    v8 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "The current top view controller does not allow the invitations view to be displayed above it.", v10, 2u);
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)showInboxAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  model = [(RootNavigationController *)self model];
  [model startNotificationMonitor];

  v8 = [InboxViewController alloc];
  model2 = [(RootNavigationController *)self model];
  v10 = [(InboxViewController *)v8 initWithModel:model2 destination:0];

  [(InboxViewController *)v10 setDelegate:self];
  [(RootNavigationController *)self _forceInboxButtonCreationIfNeeded];
  if (CalSystemSolariumEnabled())
  {
    [(RootNavigationController *)self presentAdaptiveModalViewController:v10 animated:1 completion:completionCopy];
  }

  else
  {
    inboxBarButtonItem = [(RootNavigationController *)self inboxBarButtonItem];
    EKUIContainedControllerIdealWidth();
    v13 = v12;
    EKUIContainedControllerIdealWidth();
    v15 = v14;
    EKUIGoldenRatioPhi();
    [(RootNavigationController *)self _presentAdaptiveModalPopoverViewController:v10 relativeToBarButtonItem:inboxBarButtonItem permittedArrowDirections:2 contentSize:animatedCopy animated:completionCopy completion:v13, v15 * v16];
  }

  return v10;
}

- (void)inboxViewControllerWantsShowEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode
{
  animatedCopy = animated;
  eventCopy = event;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer showEvent:eventCopy animated:animatedCopy showMode:mode context:0];
}

- (void)showCalendarsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B7128;
  v6[3] = &unk_10020FCA8;
  animatedCopy2 = animated;
  selfCopy = self;
  completionCopy = completion;
  v5 = completionCopy;
  [(RootNavigationController *)selfCopy _dismissPresentedViewControllerAnimated:animatedCopy completion:v6];
}

- (void)_showCalendarsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = [CalendarsViewController alloc];
  model = [(RootNavigationController *)self model];
  v9 = [(CalendarsViewController *)v7 initWithModel:model destination:0];
  calendarsViewController = self->_calendarsViewController;
  self->_calendarsViewController = v9;

  _doneBlock = [(RootNavigationController *)self _doneBlock];
  [(CalendarsViewController *)self->_calendarsViewController setDoneBlock:_doneBlock];

  v12 = self->_calendarsViewController;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000B7258;
  v14[3] = &unk_10020EBC8;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [(RootNavigationController *)self presentViewController:v12 animated:animatedCopy completion:v14];
}

- (id)delegatesMenu
{
  if (([(CUIKCalendarModel *)self->_model containsDelegateSources]& 1) != 0)
  {
    val = self;
    model = [(RootNavigationController *)self model];
    sortedEnabledDelegates = [model sortedEnabledDelegates];

    v30 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(sortedEnabledDelegates, "count") + 1}];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v4 localizedStringForKey:@"Switch delegate account…" value:&stru_1002133B8 table:0];

    objc_initWeak(location, val);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"My Calendar" value:&stru_1002133B8 table:0];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000B77AC;
    v38[3] = &unk_100210AC8;
    objc_copyWeak(&v39, location);
    v7 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v38];

    model2 = [(RootNavigationController *)val model];
    sourceForSelectedIdentity = [model2 sourceForSelectedIdentity];
    v10 = sourceForSelectedIdentity == 0;

    if (v10)
    {
      [v7 setState:1];
    }

    [v30 addObject:{v7, v25}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    model3 = [(RootNavigationController *)val model];
    obj = [model3 sortedEnabledDelegates];

    v12 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v12)
    {
      v29 = *v35;
      do
      {
        v13 = 0;
        v14 = v7;
        do
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * v13);
          v16 = CUIKDisplayedTitleForSource();
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1000B7810;
          v32[3] = &unk_100210AF0;
          objc_copyWeak(&v33, location);
          v32[4] = v15;
          v7 = [UIAction actionWithTitle:v16 image:0 identifier:0 handler:v32];

          sourceIdentifier = [v15 sourceIdentifier];
          model4 = [(RootNavigationController *)val model];
          sourceForSelectedIdentity2 = [model4 sourceForSelectedIdentity];
          sourceIdentifier2 = [sourceForSelectedIdentity2 sourceIdentifier];
          v21 = [sourceIdentifier isEqualToString:sourceIdentifier2];

          if (v21)
          {
            [v7 setState:1];
          }

          [v30 addObject:v7];
          objc_destroyWeak(&v33);
          v13 = v13 + 1;
          v14 = v7;
        }

        while (v12 != v13);
        v12 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v12);
    }

    v22 = [UIMenu menuWithTitle:v26 children:v30];

    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }

  else
  {
    v23 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No delegates menu because there are no other identites available", location, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (void)showAddEventAnimated:(BOOL)animated fromBarButtonItem:(id)item
{
  animatedCopy = animated;
  itemCopy = item;
  bestDateForNewEvent = [(RootNavigationController *)self bestDateForNewEvent];
  LOBYTE(v7) = 0;
  [(RootNavigationController *)self showAddEventAnimated:animatedCopy fromBarButtonItem:itemCopy withTitle:0 startDate:bestDateForNewEvent exactStartDate:0 endDate:0 location:0 suggestionKey:0 allDay:v7 completion:0];
}

- (void)showAddEventAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  bestDateForNewEvent = [(RootNavigationController *)self bestDateForNewEvent];
  LOBYTE(v7) = 0;
  [(RootNavigationController *)self showAddEventAnimated:animatedCopy fromBarButtonItem:0 withTitle:0 startDate:bestDateForNewEvent exactStartDate:0 endDate:0 location:0 suggestionKey:0 allDay:v7 completion:completionCopy];
}

- (void)showAddEventAnimated:(BOOL)animated fromBarButtonItem:(id)item withTitle:(id)title startDate:(id)date exactStartDate:(id)startDate endDate:(id)endDate location:(id)location suggestionKey:(id)self0 allDay:(BOOL)self1 completion:(id)self2
{
  itemCopy = item;
  titleCopy = title;
  dateCopy = date;
  startDateCopy = startDate;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000B7B5C;
  v30[3] = &unk_100210B38;
  v30[4] = self;
  v31 = titleCopy;
  v32 = dateCopy;
  endDateCopy = endDate;
  dayCopy = day;
  locationCopy = location;
  v35 = startDateCopy;
  keyCopy = key;
  v37 = itemCopy;
  completionCopy = completion;
  animatedCopy = animated;
  v21 = completionCopy;
  v22 = itemCopy;
  v23 = keyCopy;
  v24 = startDateCopy;
  v25 = locationCopy;
  v26 = endDateCopy;
  v27 = dateCopy;
  v28 = titleCopy;
  [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:v30];
}

- (void)showNewEvent:(id)event
{
  eventCopy = event;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer showEvent:eventCopy animated:1 showMode:0 context:0];
}

- (id)_doneBlockWithCompletion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B7F10;
  v7[3] = &unk_100210B88;
  v7[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (void)_presentAdaptiveModalPopoverViewController:(id)controller relativeToBarButtonItem:(id)item permittedArrowDirections:(unint64_t)directions contentSize:(CGSize)size animated:(BOOL)animated completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  itemCopy = item;
  controllerCopy = controller;
  view = [(RootNavigationController *)self view];
  LOBYTE(v18) = animated;
  [(RootNavigationController *)self _presentAdaptiveModalViewController:controllerCopy withPresentationStyleOverride:7 relativeToBarButtonItem:itemCopy withSourceView:view sourceRect:directions permittedArrowDirections:0 contentSize:CGRectNull.origin.x passThroughViews:CGRectNull.origin.y animated:CGRectNull.size.width completion:CGRectNull.size.height, width, height, v18, completionCopy];
}

- (void)setupPresentationControllerIfStyleIsPopover:(int64_t)popover barButtonItem:(id)item passThroughViews:(id)views permittedArrowDirections:(unint64_t)directions sourceRect:(CGRect)rect sourceView:(id)view viewController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  viewsCopy = views;
  viewCopy = view;
  if (popover != 7)
  {
    goto LABEL_10;
  }

  popoverPresentationController = [controller popoverPresentationController];
  [popoverPresentationController _setIgnoreBarButtonItemSiblings:1];
  [popoverPresentationController setDelegate:self];
  [popoverPresentationController setPermittedArrowDirections:directions];
  if (itemCopy)
  {
    [popoverPresentationController setBarButtonItem:itemCopy];
  }

  if (!viewCopy)
  {
    view = [(RootNavigationController *)self view];
    [popoverPresentationController setSourceView:view];

    if (!viewsCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [popoverPresentationController setSourceView:viewCopy];
  if (viewsCopy)
  {
LABEL_6:
    [popoverPresentationController setPassthroughViews:viewsCopy];
  }

LABEL_7:
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectIsNull(v25))
  {
    [popoverPresentationController setSourceRect:{x, y, width, height}];
  }

LABEL_10:
}

- (void)_presentAdaptiveModalViewController:(id)controller withPresentationStyleOverride:(int64_t)override relativeToBarButtonItem:(id)item withSourceView:(id)view sourceRect:(CGRect)rect permittedArrowDirections:(unint64_t)directions contentSize:(CGSize)size passThroughViews:(id)self0 animated:(BOOL)self1 completion:(id)self2
{
  height = size.height;
  width = size.width;
  v18 = rect.size.height;
  v19 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  viewsCopy = views;
  completionCopy = completion;
  window = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000B87C8;
  v49[3] = &unk_10020EBC8;
  v28 = completionCopy;
  v49[4] = self;
  v50 = v28;
  v29 = objc_retainBlock(v49);
  if (objc_opt_respondsToSelector())
  {
    _doneBlock = [(RootNavigationController *)self _doneBlock];
    [(DockableEventContainerController *)controllerCopy performSelector:"setDoneBlock:" withObject:_doneBlock];
  }

  if (CalDraftUIEnabled() && [(DockableEventContainerController *)controllerCopy conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
  {
    v31 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:controllerCopy];

    controllerCopy = v31;
  }

  if (override == -1)
  {
    view = [(RootNavigationController *)self view];
    v33 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    if (v33)
    {
      override = 1;
    }

    else
    {
      override = 7;
    }
  }

  [(DockableEventContainerController *)controllerCopy setModalPresentationStyle:override, directions];
  v34 = CGSizeZero.width == width;
  if (CGSizeZero.height != height)
  {
    v34 = 0;
  }

  if (override == 1 || v34)
  {
    EKUIContainedControllerIdealWidth();
    width = v35;
    EKUIContainedControllerIdealWidth();
    v37 = v36;
    EKUIGoldenRatioPhi();
    height = v37 * v38;
  }

  [(DockableEventContainerController *)controllerCopy setPreferredContentSize:width, height];
  if (itemCopy)
  {
    v39 = viewCopy;
    [(RootNavigationController *)self setupPresentationControllerIfStyleIsPopover:override barButtonItem:itemCopy passThroughViews:viewsCopy permittedArrowDirections:v47 sourceRect:viewCopy sourceView:controllerCopy viewController:x, y, v19, v18];
    v40 = kCalUILogHandle;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      topViewController = controllerCopy;
      if (isKindOfClass)
      {
        topViewController = [(DockableEventContainerController *)controllerCopy topViewController];
      }

      *buf = 138412290;
      v52 = topViewController;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[83058884] presenting adaptive vc %@", buf, 0xCu);
      if (isKindOfClass)
      {
      }

      v39 = viewCopy;
    }

    [(RootNavigationController *)self presentViewController:controllerCopy animated:animated completion:v29];
  }

  else
  {
    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();
    selfCopy = topMainViewControllerContainer;
    if (v44)
    {
      [(DockableEventContainerController *)controllerCopy setModalPresentationStyle:[(RootNavigationController *)topMainViewControllerContainer presentationStyleOverrideForChildViewControllers]];
      selfCopy = self;
    }

    [(RootNavigationController *)selfCopy showViewController:controllerCopy sender:self animated:animated completion:v29];
    v39 = viewCopy;
    [(RootNavigationController *)self setupPresentationControllerIfStyleIsPopover:override barButtonItem:0 passThroughViews:viewsCopy permittedArrowDirections:v47 sourceRect:viewCopy sourceView:controllerCopy viewController:x, y, v19, v18];
  }
}

- (void)continueSearchWithTerm:(id)term animated:(BOOL)animated removeViewControllersIncapableOfSearchIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  animatedCopy = animated;
  termCopy = term;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  topViewController = [(RootNavigationController *)self topViewController];
  navigationItem = [topViewController navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  searchBarButtonItem = [(RootNavigationController *)self searchBarButtonItem];
  v13 = [rightBarButtonItems containsObject:searchBarButtonItem];

  v21 = v13;
  if (neededCopy && (v19[3] & 1) == 0)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B8A00;
    v17[3] = &unk_100210BD8;
    v17[4] = self;
    v17[5] = &v18;
    [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:v17];
  }

  if (termCopy && *(v19 + 24) == 1)
  {
    presentedViewController = [(RootNavigationController *)self presentedViewController];

    if (presentedViewController)
    {
      [(RootNavigationController *)self dismissViewControllerAnimated:0 completion:0];
    }

    v15 = [(RootNavigationController *)self showSearchAnimated:animatedCopy becomeFirstResponder:0 completion:0];
    searchBar = [v15 searchBar];
    [searchBar setText:termCopy];
  }

  _Block_object_dispose(&v18, 8);
}

- (id)showSearchAnimated:(BOOL)animated becomeFirstResponder:(BOOL)responder completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = [SearchResultsNavigationController alloc];
  model = [(RootNavigationController *)self model];
  window = [(RootNavigationController *)self window];
  v10 = [(SearchResultsNavigationController *)v7 initWithModel:model window:window];

  searchResultsViewController = [(SearchResultsNavigationController *)v10 searchResultsViewController];
  [searchResultsViewController setSearchResultsDelegate:self];
  toolbar = [(SearchResultsNavigationController *)v10 toolbar];
  standardAppearance = [toolbar standardAppearance];
  v14 = [standardAppearance copy];
  toolbar2 = [(SearchResultsNavigationController *)v10 toolbar];
  [toolbar2 setScrollEdgeAppearance:v14];

  v16 = [[AdaptiveSearchController alloc] initWithSearchResultsController:v10];
  [(AdaptiveSearchController *)v16 setObscuresBackgroundDuringPresentation:1];
  [(AdaptiveSearchController *)v16 setHidesNavigationBarDuringPresentation:0];
  [(AdaptiveSearchController *)v16 setSearchResultsUpdater:searchResultsViewController];
  [(AdaptiveSearchController *)v16 setDelegate:v10];
  [(AdaptiveSearchController *)v16 setModalPresentationStyle:2];
  view = [(SearchResultsNavigationController *)v10 view];
  [view bounds];
  [(AdaptiveSearchController *)v16 setPreferredContentSize:v18, v19];

  view2 = [(RootNavigationController *)self view];
  [(AdaptiveSearchController *)v16 _setShouldRespectPreferredContentSize:EKUICurrentWindowInterfaceParadigm_ShouldUseLargeFormatInterface()];

  presentationController = [(AdaptiveSearchController *)v16 presentationController];
  [presentationController setDelegate:self];

  searchBar = [(AdaptiveSearchController *)v16 searchBar];
  [(SearchResultsNavigationController *)v10 setSearchBar:searchBar];
  searchResultsViewController2 = [(SearchResultsNavigationController *)v10 searchResultsViewController];
  [searchBar setDelegate:searchResultsViewController2];

  window2 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [searchBar layoutSubviews];
  window3 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  view3 = [(RootNavigationController *)self view];
  [view3 layoutMargins];
  v28 = v27;
  v30 = v29;

  [searchBar setContentInset:{0.0, v28, 0.0, v30}];
  [searchBar setShowsCancelButton:1 animated:0];
  cancelButton = [searchBar cancelButton];
  v32 = [NSBundle bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"Cancel - show search animated" value:@"Cancel" table:0];
  [cancelButton setTitle:v33 forState:0];

  v34 = CalendarAppTintColor();
  [cancelButton setTitleColor:v34 forState:0];

  v35 = CalendarAppTintColor();
  [cancelButton setTintColor:v35];

  v36 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"Placeholder used in the search bar in the calendar occurrences list" value:@"Search" table:0];
  [searchBar setPlaceholder:v37];

  [searchBar _setBackdropStyle:2005];
  v52.receiver = self;
  v52.super_class = RootNavigationController;
  traitCollection = [(RootNavigationController *)&v52 traitCollection];
  v39 = [traitCollection traitCollectionByModifyingTraits:&stru_100210BF8];

  [(SearchResultsNavigationController *)v10 setEkui_futureTraitCollection:v39];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000B8FA8;
  v46[3] = &unk_100210C20;
  v46[4] = self;
  v47 = v16;
  v50 = animatedCopy;
  responderCopy = responder;
  v48 = searchBar;
  v49 = completionCopy;
  v40 = completionCopy;
  v41 = searchBar;
  v42 = v16;
  [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:animatedCopy completion:v46];

  return searchResultsViewController;
}

- (void)_showSearchController:(id)controller withSearchBar:(id)bar animated:(BOOL)animated becomeFirstResponder:(BOOL)responder completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B90C0;
  v16[3] = &unk_100210C48;
  responderCopy = responder;
  barCopy = bar;
  v18 = controllerCopy;
  selfCopy = self;
  completionCopy = completion;
  v13 = controllerCopy;
  v14 = completionCopy;
  v15 = barCopy;
  [(RootNavigationController *)self presentViewController:v13 animated:animatedCopy completion:v16];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentationStyle = 2;
  }

  else
  {
    presentationStyle = [controllerCopy presentationStyle];
  }

  return presentationStyle;
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  _doneBlock = [(RootNavigationController *)self _doneBlock];
  _doneBlock[2](_doneBlock, controllerCopy, 0);

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer invalidateManagedNavigationController];
}

- (BOOL)eventViewControllerShouldHideInlineEditButton
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    eventViewControllerShouldHideInlineEditButton = [currentChildViewController eventViewControllerShouldHideInlineEditButton];
  }

  else
  {
    eventViewControllerShouldHideInlineEditButton = 0;
  }

  return eventViewControllerShouldHideInlineEditButton;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  forwardCopy = forward;
  eventCopy = event;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v9 = [currentChildViewController eventViewDelegateShouldShowNextOccurrenceOfEvent:eventCopy forward:forwardCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)event forward:(BOOL)forward
{
  forwardCopy = forward;
  eventCopy = event;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];

  if (currentChildViewController)
  {
    if (forwardCopy)
    {
      [eventCopy nextOccurrence];
    }

    else
    {
      [eventCopy previousOccurrence];
    }
    v8 = ;
    if (v8)
    {
      [currentChildViewController showEvent:v8 animated:1 showMode:objc_msgSend(eventCopy context:{"isBirthday") ^ 1, 0}];
    }
  }
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handlerCopy)
  {
    v12 = v45;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000B98C8;
    v45[3] = &unk_10020EBC8;
    v5 = &v46;
    v13 = handlerCopy;
    v45[4] = self;
    v46 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = objc_retainBlock(v12);
  if (action == 1)
  {
    event = [controllerCopy event];
    calendar = [event calendar];
    sharingStatus = [calendar sharingStatus];

    if (sharingStatus)
    {
      if (v14)
      {
        v38 = _NSConcreteStackBlock;
        v39 = 3221225472;
        v40 = sub_1000B992C;
        v41 = &unk_10020EBC8;
        selfCopy = self;
        v43 = v11;
        v18 = objc_retainBlock(&v38);

        v14 = v18;
      }

      else
      {
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000B9924;
        v44[3] = &unk_10020EB00;
        v44[4] = self;
        v14 = objc_retainBlock(v44);
      }
    }
  }

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
    [topMainViewControllerContainer2 currentChildViewController];
    selfCopy2 = self;
    actionCopy = action;
    v23 = v11;
    v24 = controllerCopy;
    v25 = v14;
    v27 = v26 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = v26;
    v14 = v25;
    controllerCopy = v24;
    v11 = v23;
    action = actionCopy;
    self = selfCopy2;

    if ((isKindOfClass & 1) == 0)
    {
      [controllerCopy setInternalEditViewDelegate:0];
      currentChildViewController2 = [(RootNavigationController *)selfCopy2 _doneBlockWithCompletion:v14];
      (currentChildViewController2)[2](currentChildViewController2, controllerCopy, 0);
      topMainViewControllerContainer3 = [(RootNavigationController *)selfCopy2 topMainViewControllerContainer];
      [topMainViewControllerContainer3 invalidateManagedNavigationController];
      goto LABEL_24;
    }
  }

  v29 = [(RootNavigationController *)self topMainViewControllerContainer:selfCopy2];
  currentChildViewController2 = [v29 currentChildViewController];

  topMainViewControllerContainer3 = [controllerCopy event];
  if (action == 1)
  {
    calendarToMakeVisibleOnSave = [controllerCopy calendarToMakeVisibleOnSave];
    objectID = [calendarToMakeVisibleOnSave objectID];

    if (objectID)
    {
      model = [(RootNavigationController *)self model];
      [model ensureCalendarVisibleWithId:objectID];
    }

    [currentChildViewController2 editorDidSaveEvent:topMainViewControllerContainer3];
    internalEditViewDelegate = [controllerCopy internalEditViewDelegate];

    if (internalEditViewDelegate == self)
    {
      [(RootNavigationController *)self dismissViewControllerAnimated:1 completion:v14];
    }
  }

  else if (action)
  {
    if (action == 2)
    {
      [currentChildViewController2 editorDidDeleteEvent:topMainViewControllerContainer3];
    }
  }

  else
  {
    [currentChildViewController2 editorDidCancelEditingEvent:topMainViewControllerContainer3];
    internalEditViewDelegate2 = [controllerCopy internalEditViewDelegate];

    if (internalEditViewDelegate2 == self)
    {
      [(RootNavigationController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_24:

  if (v11)
  {
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)controller
{
  model = [(RootNavigationController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (void)attemptDisplayReviewPrompt
{
  window = [(RootNavigationController *)self window];
  windowScene = [window windowScene];
  model = [(RootNavigationController *)self model];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:windowScene calendarModel:model];
}

- (void)searchResultsViewController:(id)controller didSelectEvent:(id)event
{
  eventCopy = event;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer showEvent:eventCopy animated:1 showMode:1 context:0];
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  v5 = [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___PopoverContentView];

  if (v5)
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    canDismiss = [presentedViewController2 canDismiss];
  }

  else
  {
    canDismiss = 1;
  }

  return canDismiss;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  v4 = [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___PresentationDismissal];

  if (v4)
  {
    presentedViewController2 = [dismissCopy presentedViewController];
    [presentedViewController2 didAttemptToDismiss];
  }
}

- (void)_updatePaletteStateWithViewController:(id)controller
{
  controllerCopy = controller;
  [(RootNavigationController *)self updateCurrentIdentity:0];
  if (objc_opt_respondsToSelector())
  {
    v4 = +[UIColor clearColor];
    [(PaletteView *)self->_paletteView setBackgroundColor:v4];

    [(PaletteView *)self->_paletteView setOpaqueBackground:0];
    [controllerCopy updatePalette:self->_paletteView];
    if (-[RootNavigationController activeWidthSizeClass](self, "activeWidthSizeClass") == 2 && [controllerCopy useContainingPalette])
    {
      containingPalette = [(PaletteView *)self->_paletteView containingPalette];
      navigationItem = [controllerCopy navigationItem];
      [navigationItem _setBottomPalette:containingPalette];
    }

    if ((CalSystemSolariumEnabled() & 1) != 0 || [(PaletteView *)self->_paletteView hasContent])
    {
      [(PaletteView *)self->_paletteView sizeToFit];
      [(_UINavigationBarPalette *)self->_palette frame];
      v8 = v7;
      [(_UINavigationBarPalette *)self->_palette frame];
      v10 = v9;
      [(PaletteView *)self->_paletteView frame];
      v12 = v11;
      [(PaletteView *)self->_paletteView frame];
      [(_UINavigationBarPalette *)self->_palette setFrame:v8, v10, v12];
      [(PaletteView *)self->_paletteView frame];
      [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v13];
      [(_UINavigationBarPalette *)self->_palette setNeedsLayout];
      v14 = self->_palette;
      goto LABEL_10;
    }
  }

  else
  {
    [(PaletteView *)self->_paletteView removeAllContent];
    [(PaletteView *)self->_paletteView layoutIfNeeded];
  }

  v14 = 0;
LABEL_10:
  [(_UINavigationBarPalette *)v14 _setDisplaysWhenSearchActive:1];
  navigationItem2 = [controllerCopy navigationItem];
  [navigationItem2 _setBottomPalette:v14];
}

- (int)currentViewTypeInt:(int64_t)int
{
  if (int > 4)
  {
    return 5;
  }

  else
  {
    return dword_1001F8460[int];
  }
}

- (BOOL)_isThisTheOnlyConnectedScene
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([CalendarSceneManager isSceneCalendarAppScene:v8])
        {
          _sceneIdentifier = [v8 _sceneIdentifier];
          WeakRetained = objc_loadWeakRetained(&self->_window);
          windowScene = [WeakRetained windowScene];
          _sceneIdentifier2 = [windowScene _sceneIdentifier];
          v13 = [_sceneIdentifier isEqualToString:_sceneIdentifier2];

          if (!v13)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [connectedScenes countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (Class)_classRepresentingViewType:(int64_t)type forTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (type == -1)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(v6, "verticalSizeClass") == 1)
  {
    goto LABEL_13;
  }

  v7 = 0;
  if (type <= 1)
  {
    if (type > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (type == 2)
  {
    [v6 horizontalSizeClass];
LABEL_13:
    v7 = objc_opt_class();
    goto LABEL_14;
  }

  if (type == 3 || type == 4)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (id)pushCalendarViewControllerWithViewType:(int64_t)type andDate:(id)date
{
  dateCopy = date;
  [(CUIKCalendarModel *)self->_model setSelectedDate:dateCopy];
  _ensureStackBaseCalendarViewControllerContainerIsPresent = [(RootNavigationController *)self _ensureStackBaseCalendarViewControllerContainerIsPresent];
  ekui_futureTraitCollection = [(RootNavigationController *)self ekui_futureTraitCollection];
  v9 = [(RootNavigationController *)self _classRepresentingViewType:type forTraitCollection:ekui_futureTraitCollection];

  if (!v9)
  {
    lastObject3 = 0;
    goto LABEL_44;
  }

  [(RootNavigationController *)self viewControllers];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v45 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
  v41 = dateCopy;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v43;
LABEL_4:
    v15 = 0;
    while (1)
    {
      if (*v43 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v42 + 1) + 8 * v15);
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject = [v10 lastObject];
        v18 = lastObject == v16;

        v13 |= v18;
      }

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v12)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }
    }

    lastObject3 = v16;
    lastObject2 = [v10 lastObject];

    if (lastObject3)
    {
      dateCopy = v41;
      if (lastObject2 != lastObject3)
      {
        v21 = [(RootNavigationController *)self popToViewController:lastObject3 animated:0];
        goto LABEL_43;
      }

      currentChildViewController = [lastObject3 currentChildViewController];
      [currentChildViewController selectDate:v41 animated:0];
      goto LABEL_42;
    }

LABEL_19:
    dateCopy = v41;
    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }

    v22 = [(RootNavigationController *)self popViewControllerAnimated:0];
    currentChildViewController = [(RootNavigationController *)self viewControllers];
    lastObject3 = [currentChildViewController lastObject];
LABEL_42:

    goto LABEL_43;
  }

LABEL_21:
  viewControllers = [(RootNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  lastObject3 = firstObject;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer beginAppearanceTransition:0 animated:0];

  topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer2 endAppearanceTransition];

  v28 = [(RootNavigationController *)self popToRootViewControllerAnimated:0];
  if (lastObject3)
  {
    v29 = lastObject3;
    while (1)
    {
      v30 = v29;
      v29 = lastObject3;

      lastObject3 = [v29 pushedNextLevelMainViewControllerContainerAnimated:0];

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      window = [(RootNavigationController *)self window];
      IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

      if (IsCompactInViewHierarchy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = lastObject3;
          if ([v33 allowsOverriddenRightNavigationBarItems])
          {
            navigationItem = [v33 navigationItem];
            rightBarButtonItems = [navigationItem rightBarButtonItems];

            if (!rightBarButtonItems)
            {
              [(RootNavigationController *)self _addButtonsToNavigationBarForViewController:v33];
            }
          }
        }
      }

      if (!lastObject3)
      {
        goto LABEL_33;
      }
    }

    dateCopy = v41;
    goto LABEL_40;
  }

  v29 = 0;
LABEL_33:
  ekui_futureTraitCollection2 = [(RootNavigationController *)self ekui_futureTraitCollection];
  if ([ekui_futureTraitCollection2 verticalSizeClass] != 1)
  {

    dateCopy = v41;
    goto LABEL_37;
  }

  ekui_futureTraitCollection3 = [(RootNavigationController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection3 horizontalSizeClass];

  dateCopy = v41;
  if (horizontalSizeClass != 1)
  {
LABEL_37:
    _goToCompactWeek = v29;
    v29 = _goToCompactWeek;
    goto LABEL_38;
  }

  _goToCompactWeek = [(RootNavigationController *)self _goToCompactWeek];
LABEL_38:
  lastObject3 = _goToCompactWeek;
LABEL_40:

LABEL_43:
LABEL_44:

  return lastObject3;
}

- (void)_showNextDateComponentUnitAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer navigateToNextDateComponentUnitAnimated:animatedCopy];
}

- (void)_showPreviousDateComponentUnitAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer navigateToPreviousDateComponentUnitAnimated:animatedCopy];
}

- (void)_selectNextEvent
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer navigateToNextSelectableItem];
}

- (void)_selectPreviousEvent
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer navigateToPreviousSelectableItem];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = viewControllerCopy;
  }

  else
  {
    v10 = 0;
  }

  v52 = v10;
  [(RootNavigationController *)self _setupSearchControllerForViewController:viewControllerCopy];
  transitionCoordinator = [(RootNavigationController *)self transitionCoordinator];
  window = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(RootNavigationController *)self _updatePaletteStateWithViewController:viewControllerCopy];
  if (transitionCoordinator)
  {
    if ([transitionCoordinator initiallyInteractive])
    {
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_1000BAC8C;
      v61[3] = &unk_10020F1F0;
      v61[4] = self;
      v13 = &v62;
      v62 = viewControllerCopy;
      [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v61];
    }

    else
    {
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000BAD1C;
      v59[3] = &unk_10020F1F0;
      v59[4] = self;
      v13 = &v60;
      v60 = viewControllerCopy;
      [transitionCoordinator animateAlongsideTransition:0 completion:v59];
    }
  }

  window2 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  disappearingViewController = [controllerCopy disappearingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [controllerCopy viewControllers];
    v17 = [viewControllers containsObject:disappearingViewController];

    if ((v17 & 1) == 0)
    {
      model = [(RootNavigationController *)self model];
      [model setSelectedOccurrence:0];
    }
  }

  v51 = disappearingViewController;
  v19 = v52;
  if (isKindOfClass)
  {
    if (EKUIShouldSaveStateInPreferences())
    {
      v20 = +[CUIKPreferences sharedPreferences];
      v21 = [NSNumber numberWithInteger:[(RootNavigationController *)self currentViewType]];
      [v20 setLastViewMode:v21];
    }

    if ([(RootNavigationController *)self currentViewType])
    {
      currentViewType = [(RootNavigationController *)self currentViewType];
      model2 = [(RootNavigationController *)self model];
      [model2 persistedSceneState];
      v25 = v24 = transitionCoordinator;
      [v25 setLastUsedNonYearView:currentViewType];

      transitionCoordinator = v24;
    }

    [(RootNavigationController *)self updateNavigationBarButtonItemsWithViewController:viewControllerCopy];
    if (CalSystemSolariumEnabled())
    {
      CalendarAppBarButtonItemTintColor();
      v27 = v26 = transitionCoordinator;
      navigationBar = [(RootNavigationController *)self navigationBar];
      [navigationBar setTintColor:v27];

      transitionCoordinator = v26;
      if (v26 && animatedCopy)
      {
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1000BAD28;
        v57[3] = &unk_10020F1F0;
        v57[4] = self;
        v58 = viewControllerCopy;
        [v26 animateAlongsideTransition:v57 completion:0];
      }

      else
      {
        [(RootNavigationController *)self _updateNavigationBarAppearanceForMainViewControllerContainer:viewControllerCopy];
      }
    }
  }

  [(RootNavigationController *)self updateToolbarItemsWithViewController:viewControllerCopy];
  if (CalSystemSolariumEnabled())
  {
    CalendarAppBarButtonItemTintColor();
    v30 = v29 = transitionCoordinator;
    toolbar = [(RootNavigationController *)self toolbar];
    [toolbar setTintColor:v30];

    transitionCoordinator = v29;
  }

  [(RootNavigationController *)self updateErrorWithErrorDisplayManager];
  if ([(RootNavigationController *)self activeWidthSizeClass]== 2)
  {
    if (isKindOfClass)
    {
      [(RootNavigationController *)self _configureViewSwitcherShowingViewController:viewControllerCopy];
    }

    view = [(RootNavigationController *)self view];
    [view bounds];
    [(RootNavigationController *)self _updateLeftFixedSpaceBarButtonItemWidthWithViewController:v52 targetWindowSize:v33, v34];

    if (objc_opt_respondsToSelector())
    {
      [v52 updateNavigationBarDisplayedDateString];
    }

    else
    {
      v46 = objc_alloc_init(NSAttributedString);
      [(RootNavigationController *)self _setCurrentDateLabelString:v46];
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0 || ([viewControllerCopy useCustomBackButton] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v48 = transitionCoordinator;
      v50 = controllerCopy;
      viewControllers2 = [(RootNavigationController *)self viewControllers];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v36 = [viewControllers2 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v54;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v54 != v38)
            {
              objc_enumerationMutation(viewControllers2);
            }

            v40 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              hidesBackButton = [v40 hidesBackButton];
              navigationItem = [v40 navigationItem];
              [navigationItem setHidesBackButton:hidesBackButton];

              navigationItem2 = [v40 navigationItem];
              [navigationItem2 setLeftBarButtonItems:0];
            }
          }

          v37 = [viewControllers2 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v37);
      }

      if ((CalSolariumEnabled() & 1) == 0)
      {
        model3 = [(RootNavigationController *)self model];
        selectedDate = [model3 selectedDate];
        [(RootNavigationController *)self updateBackButtonToDate:selectedDate];
      }

      transitionCoordinator = v48;
      controllerCopy = v50;
      v19 = v52;
    }
  }

  [(RootNavigationController *)self _setNeedsUserActivityUpdate];
  [(RootNavigationController *)self updateShouldDisplayJumpToTodayTip];
  if (CalUIKitNavBarEnabled())
  {
    splitViewRootDelegate = [(RootNavigationController *)self splitViewRootDelegate];
    [splitViewRootDelegate updateNavigationAdditionalBarButtons];
  }
}

- (void)_updateNavigationBarAppearanceForMainViewControllerContainer:(id)container
{
  containerCopy = container;
  if (CalSystemSolariumEnabled())
  {
    v4 = objc_opt_new();
    if ((CalCanvasPocketEnabled() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && [containerCopy useSolariumNavigationBarAppearance])
    {
      [v4 configureWithDefaultBackground];
    }

    else
    {
      v5 = CalNavBarBlurEffect();
      [v4 setBackgroundEffect:v5];
    }

    navigationBar = [(RootNavigationController *)self navigationBar];
    [navigationBar setStandardAppearance:v4];
    [navigationBar setScrollEdgeAppearance:v4];
    [navigationBar setCompactAppearance:v4];
    [navigationBar setCompactScrollEdgeAppearance:v4];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  [(RootNavigationController *)self _updateInteractivePopAllowed:controller];
  [(RootNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  self->_todayButtonPushNextViewFunctionalityLocked = 0;
}

- (id)_popToViewControllerSatisfying:(id)satisfying
{
  satisfyingCopy = satisfying;
  if (satisfyingCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    viewControllers = [(RootNavigationController *)self viewControllers];
    reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];

    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (satisfyingCopy[2](satisfyingCopy, v11))
          {
            topViewController = v11;

            if (topViewController)
            {
              v13 = kCalUILogHandle;
              if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v21 = topViewController;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Popping to view controller: [%@]", buf, 0xCu);
              }

              v14 = [(RootNavigationController *)self popToViewController:topViewController animated:0];
            }

            goto LABEL_16;
          }
        }

        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    topViewController = 0;
  }

  else
  {
    topViewController = [(RootNavigationController *)self topViewController];
  }

LABEL_16:

  return topViewController;
}

- (void)selectTodayWithTrigger:(int64_t)trigger animated:(BOOL)animated
{
  if (trigger == 2)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      model = self->_model;
      v7 = v5;
      selectedDate = [(CUIKCalendarModel *)model selectedDate];
      *buf = 136315394;
      v15 = "[RootNavigationController selectTodayWithTrigger:animated:]";
      v16 = 2112;
      v17 = selectedDate;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: WithinTimeout trigger specified with model date [%@]; will not select today", buf, 0x16u);
    }
  }

  else
  {
    animatedCopy = animated;
    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    v12 = topMainViewControllerContainer;
    if (topMainViewControllerContainer)
    {
      v13 = topMainViewControllerContainer;
      if (trigger == 1)
      {
        [topMainViewControllerContainer setShouldRespondToApplicationDidBecomeActiveStateChange:1];
        [(RootNavigationController *)self _selectTodayForMainViewControllerContainer:v13 animated:animatedCopy];
        topMainViewControllerContainer = [v13 setShouldRespondToApplicationDidBecomeActiveStateChange:0];
      }

      else
      {
        topMainViewControllerContainer = [(RootNavigationController *)self _selectTodayForMainViewControllerContainer:topMainViewControllerContainer animated:animatedCopy];
      }

      v12 = v13;
    }

    _objc_release_x1(topMainViewControllerContainer, v12);
  }
}

- (void)_selectTodayForMainViewControllerContainer:(id)container animated:(BOOL)animated
{
  animatedCopy = animated;
  containerCopy = container;
  if ([containerCopy shouldPushNextLevelViewControllerWhenTodayIsVisible])
  {
    if (!self->_todayButtonPushNextViewFunctionalityLocked)
    {
      self->_todayButtonPushNextViewFunctionalityLocked = 1;
      springAnimationDuration();
      v8 = dispatch_time(0, (v7 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BB2D4;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_after(v8, &_dispatch_main_q, block);
      [containerCopy showTodayAnimated:animatedCopy];
    }
  }

  else
  {
    [(RootNavigationController *)self _showNowForMainViewControllerContainer:containerCopy animated:animatedCopy];
  }
}

- (void)_showNowForMainViewControllerContainer:(id)container animated:(BOOL)animated
{
  animatedCopy = animated;
  containerCopy = container;
  _now = [(RootNavigationController *)self _now];
  model = [(RootNavigationController *)self model];
  [model setSelectedDate:_now];

  [containerCopy selectDate:_now animated:animatedCopy];
}

- (void)doCrossfadeAnimationWithNavigationViewContents
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];

  if (!presentedViewController)
  {

    [(RootNavigationController *)self doCrossfadeAnimationWithCurrentScreenContents];
  }
}

- (void)doCrossfadeAnimationWithCurrentScreenContents
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000BB57C;
  v13 = sub_1000BB58C;
  view = [(RootNavigationController *)self view];
  window = [view window];
  v14 = [window snapshotViewAfterScreenUpdates:0];

  view2 = [(RootNavigationController *)self view];
  superview = [view2 superview];

  [superview addSubview:v10[5]];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BB594;
  v8[3] = &unk_100210C70;
  v8[4] = &v9;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BB5A8;
  v7[3] = &unk_100210C98;
  v7[4] = &v9;
  [UIView animateWithDuration:196610 delay:v8 options:v7 animations:0.2 completion:0.0];

  _Block_object_dispose(&v9, 8);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_isKindOfClass())
    {
      model = [(RootNavigationController *)self model];
      showMonthAsDivided = [model showMonthAsDivided];

      if (showMonthAsDivided)
      {
        v12 = CompactDividedMonthDayAnimator;
      }

      else
      {
        v12 = CompactMonthDayAnimator;
      }

      goto LABEL_29;
    }

    if (objc_opt_isKindOfClass())
    {
      model2 = [(RootNavigationController *)self model];
      showMonthAsDivided2 = [model2 showMonthAsDivided];

      if (showMonthAsDivided2)
      {
        v12 = CompactDividedMonthMultiDayAnimator;
      }

      else
      {
        v12 = CompactMonthMultiDayAnimator;
      }

      goto LABEL_29;
    }

    if (objc_opt_isKindOfClass())
    {
      v20 = [YearMonthAnimator alloc];
      model3 = [(RootNavigationController *)self model];
      v22 = [(YearMonthAnimator *)v20 initWithModel:model3 paletteView:self->_paletteView reverse:1];

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      currentChildViewController = [viewControllerCopy currentChildViewController];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [currentChildViewController dividedListMode])
      {
        dateForCurrentMonthOnScreen = [currentChildViewController dateForCurrentMonthOnScreen];
        [(YearMonthAnimator *)v22 setSelectedDate:dateForCurrentMonthOnScreen];
      }

      goto LABEL_41;
    }

    if (objc_opt_isKindOfClass())
    {
      model4 = [(RootNavigationController *)self model];
      showMonthAsDivided3 = [model4 showMonthAsDivided];

      if (showMonthAsDivided3)
      {
        v12 = DividedMonthListAnimator;
      }

      else
      {
        v12 = CompactMonthListAnimator;
      }

      goto LABEL_29;
    }

LABEL_36:
    v22 = 0;
    goto LABEL_42;
  }

  if (objc_opt_isKindOfClass())
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    model5 = [(RootNavigationController *)self model];
    showMonthAsDivided4 = [model5 showMonthAsDivided];

    if (showMonthAsDivided4)
    {
      v15 = CompactDividedMonthDayAnimator;
      goto LABEL_39;
    }

    model6 = [(RootNavigationController *)self model];
    numDaysToShow = [model6 numDaysToShow];

    if (numDaysToShow < 2)
    {
      v15 = CompactMonthDayAnimator;
      goto LABEL_39;
    }

LABEL_27:
    v15 = CompactMonthMultiDayAnimator;
    goto LABEL_39;
  }

  if (objc_opt_isKindOfClass())
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    model7 = [(RootNavigationController *)self model];
    showMonthAsDivided5 = [model7 showMonthAsDivided];

    if (showMonthAsDivided5)
    {
      v15 = CompactDividedMonthMultiDayAnimator;
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (objc_opt_isKindOfClass())
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_36;
    }

    model8 = [(RootNavigationController *)self model];
    showMonthAsDivided6 = [model8 showMonthAsDivided];

    if (showMonthAsDivided6)
    {
      v15 = DividedMonthListAnimator;
    }

    else
    {
      v15 = CompactMonthListAnimator;
    }

LABEL_39:
    v36 = [v15 alloc];
    currentChildViewController = [(RootNavigationController *)self model];
    paletteView = self->_paletteView;
    v31 = v36;
    v32 = currentChildViewController;
    v33 = 1;
    goto LABEL_40;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  v12 = YearMonthAnimator;
LABEL_29:
  v29 = [v12 alloc];
  currentChildViewController = [(RootNavigationController *)self model];
  paletteView = self->_paletteView;
  v31 = v29;
  v32 = currentChildViewController;
  v33 = 0;
LABEL_40:
  v22 = [v31 initWithModel:v32 paletteView:paletteView reverse:v33];
LABEL_41:

LABEL_42:

  return v22;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  topViewController = [controller topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)_viewControllerTreeIsEligibleForJournalingConsideration:(id)consideration
{
  considerationCopy = consideration;
  if ([considerationCopy conformsToProtocol:&OBJC_PROTOCOL___EKUIManagedViewController])
  {
    wantsManagement = [considerationCopy wantsManagement];
  }

  else
  {
    NSClassFromString(@"MFMailComposeViewController");
    wantsManagement = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        wantsManagement = 0;
      }
    }
  }

  return wantsManagement;
}

- (BOOL)_viewControllerWantsDismissOnSizeClassChange:(id)change transitioningToTraitCollection:(id)collection
{
  changeCopy = change;
  collectionCopy = collection;
  if (![changeCopy conformsToProtocol:&OBJC_PROTOCOL___EKUIManagedViewController])
  {
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      wantsDismissOnSizeClassChange = [changeCopy wantsDismissOnSizeClassChangeWithNewTraitCollection:collectionCopy];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  wantsDismissOnSizeClassChange = [changeCopy wantsDismissOnSizeClassChange];
LABEL_6:
  v8 = wantsDismissOnSizeClassChange;
LABEL_8:

  return v8;
}

- (void)recursiveBuildJournal:(id)journal ofViewControllerSubtree:(id)subtree transitioningToTraitCollection:(id)collection stopCondition:(id)condition
{
  journalCopy = journal;
  subtreeCopy = subtree;
  collectionCopy = collection;
  conditionCopy = condition;
  if (!subtreeCopy)
  {
    goto LABEL_35;
  }

  if ([(RootNavigationController *)self _viewControllerWantsDismissOnSizeClassChange:subtreeCopy transitioningToTraitCollection:collectionCopy])
  {
    goto LABEL_3;
  }

  if (![(RootNavigationController *)self _viewControllerTreeIsEligibleForJournalingConsideration:subtreeCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(@"_UIDatePickerNumericKeyboardViewController");
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(@"DDParsecCollectionViewController");
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_4:
              v15 = kCalUILogHandle;
              if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v38 = "[RootNavigationController recursiveBuildJournal:ofViewControllerSubtree:transitioningToTraitCollection:stopCondition:]";
                v39 = 2112;
                v40 = subtreeCopy;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Dropping UIViewController subtree descended from node: %@", buf, 0x16u);
              }

              goto LABEL_35;
            }
          }
        }
      }
    }

LABEL_3:
    presentingViewController = [subtreeCopy presentingViewController];
    [presentingViewController dismissViewControllerAnimated:0 completion:0];

    goto LABEL_4;
  }

  presentedViewController = [subtreeCopy presentedViewController];
  [(RootNavigationController *)self recursiveBuildJournal:journalCopy ofViewControllerSubtree:presentedViewController transitioningToTraitCollection:collectionCopy stopCondition:conditionCopy];

  presentingViewController2 = [subtreeCopy presentingViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !presentingViewController2 || [(RootNavigationController *)self _nodeContainsViewControllersRequiringTeardown:subtreeCopy])
  {
    v34 = journalCopy;
    v18 = subtreeCopy;
    topViewController = [v18 topViewController];
    for (i = conditionCopy[2](conditionCopy, topViewController); ; i = conditionCopy[2](conditionCopy, topViewController))
    {
      if (i)
      {

LABEL_24:
        journalCopy = v34;
        goto LABEL_25;
      }

      viewControllers = [v18 viewControllers];
      v22 = [viewControllers count];

      if (!v22)
      {
        goto LABEL_24;
      }

      topViewController2 = [v18 topViewController];
      if (!topViewController2)
      {
        break;
      }

      v24 = topViewController2;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v34 addPushedViewController:v24 withPresenter:presentingViewController2];
      }

      viewControllers2 = [v18 viewControllers];
      v36 = v24;
      v26 = [NSArray arrayWithObjects:&v36 count:1];
      v27 = [viewControllers2 arrayByExcludingObjectsInArray:v26];

      [v18 setViewControllers:v27 animated:0];
      topViewController = [v18 topViewController];
    }

    v33 = kCalUILogHandle;
    journalCopy = v34;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unexpected nil topViewController", buf, 2u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    v18 = subtreeCopy;
    topViewController3 = [v18 topViewController];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [topViewController3 canRequirePushOrPresentation])
    {
      [journalCopy addPresentedViewController:topViewController3 withPresenter:presentingViewController2];
      viewControllers3 = [v18 viewControllers];
      v35 = topViewController3;
      [NSArray arrayWithObjects:&v35 count:1];
      v31 = v30 = journalCopy;
      v32 = [viewControllers3 arrayByExcludingObjectsInArray:v31];

      journalCopy = v30;
      [v18 setViewControllers:v32 animated:0];
    }
  }

LABEL_25:

LABEL_26:
  if (presentingViewController2)
  {
    if ([presentingViewController2 conformsToProtocol:&OBJC_PROTOCOL___EnqueueableDismissOperationProtocol])
    {
      [presentingViewController2 setAllowsEnqueuedDismissal:0];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || [subtreeCopy canBeDirectlyManaged])
    {
      [journalCopy addPresentedViewController:subtreeCopy withPresenter:presentingViewController2];
    }

    [presentingViewController2 dismissViewControllerAnimated:0 completion:0];
    if ([presentingViewController2 conformsToProtocol:&OBJC_PROTOCOL___EnqueueableDismissOperationProtocol])
    {
      [presentingViewController2 setAllowsEnqueuedDismissal:1];
    }
  }

LABEL_35:
}

- (BOOL)_nodeContainsViewControllersRequiringTeardown:(id)teardown
{
  teardownCopy = teardown;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    viewControllers = [teardownCopy viewControllers];
    v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(viewControllers);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }
          }

          v9 = 1;
          goto LABEL_16;
        }

        v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
        v9 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_16:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_containsViewControllerRequiringNavBarVisibilityRestoration
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(RootNavigationController *)self viewControllers:0];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(RootNavigationController *)self _updateInteractivePopAllowed];
  topViewController = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self _updatePaletteStateWithViewController:topViewController];

  window = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(RootNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  v8.receiver = self;
  v8.super_class = RootNavigationController;
  [(RootNavigationController *)&v8 viewWillAppear:appearCopy];
  window2 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  window = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  topViewController = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self navigationController:self willShowViewController:topViewController animated:0];

  v19.receiver = self;
  v19.super_class = RootNavigationController;
  [(RootNavigationController *)&v19 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  if (!CGAffineTransformIsIdentity(&v18))
  {
    [(RootNavigationController *)self _performCustomRotationAnimationForMainWindowWithTransitionCoordinator:coordinatorCopy];
  }

  window2 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  [(RootNavigationController *)self topMainViewControllerContainer];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BC5CC;
  v14[3] = &unk_100210688;
  v15 = v14[4] = self;
  v16 = width;
  v17 = height;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BC6A0;
  v12[3] = &unk_10020F1F0;
  v12[4] = self;
  v13 = v15;
  v11 = v15;
  [coordinatorCopy animateAlongsideTransition:v14 completion:v12];
}

- (void)_performCustomRotationAnimationForMainWindowWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  if (presentedViewController)
  {
  }

  else
  {
    ekui_futureTraitCollection = [(RootNavigationController *)self ekui_futureTraitCollection];
    if ([ekui_futureTraitCollection horizontalSizeClass] == 2)
    {
      ekui_futureTraitCollection2 = [(RootNavigationController *)self ekui_futureTraitCollection];
      verticalSizeClass = [ekui_futureTraitCollection2 verticalSizeClass];

      if (verticalSizeClass == 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000BB57C;
    v21 = sub_1000BB58C;
    view = [(RootNavigationController *)self view];
    window = [view window];
    v22 = [window snapshotViewAfterScreenUpdates:0];

    topViewController = [(RootNavigationController *)self topViewController];
    view2 = [topViewController view];
    superview = [view2 superview];

    [superview addSubview:v18[5]];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BC97C;
    v16[3] = &unk_100210C70;
    v16[4] = &v17;
    [UIView animateWithDuration:v16 animations:0 completion:0.15];
    v14[4] = &v17;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BC990;
    v15[3] = &unk_100210CC0;
    v15[4] = self;
    v15[5] = &v17;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000BCBEC;
    v14[3] = &unk_100210CE8;
    [coordinatorCopy animateAlongsideTransition:v15 completion:v14];

    _Block_object_dispose(&v17, 8);
  }

LABEL_8:
}

- (void)recursiveAnimationRemoveForSmallLayers:(id)layers
{
  if (layers)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    sublayers = [layers sublayers];
    v5 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(sublayers);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          [(RootNavigationController *)self recursiveAnimationRemoveForSmallLayers:v9];
          [v9 bounds];
          v11 = v10;
          view = [(RootNavigationController *)self view];
          layer = [view layer];
          [layer bounds];
          v15 = v14;

          if (v11 < v15)
          {
            [v9 removeAllAnimations];
          }
        }

        v6 = [sublayers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }
}

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_isTransitioningTraitCollection)
  {
    self->_hideNavBarAfterTraitCollectionTransition = hidden;
    self->_shouldSetNavBarVisibilityAfterTraitCollectionTransition = 1;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = RootNavigationController;
    [(RootNavigationController *)&v6 setNavigationBarHidden:hidden animated:animated];
  }
}

- (id)_tornDownJournalOfShownViewControllersTransitioningToTraitCollection:(id)collection
{
  collectionCopy = collection;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v7 = [currentChildViewController shouldJournalMainViewControllerParent] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  viewControllerToShowFrom = [currentChildViewController viewControllerToShowFrom];
  v9 = objc_alloc_init(ViewControllerJournal);
  window = [(RootNavigationController *)self window];
  rootViewController = [window rootViewController];
  [(RootNavigationController *)self recursiveBuildJournal:v9 ofViewControllerSubtree:rootViewController transitioningToTraitCollection:collectionCopy stopCondition:&stru_100210D08];

  [(RootNavigationController *)self recursiveBuildJournal:v9 ofViewControllerSubtree:currentChildViewController transitioningToTraitCollection:collectionCopy stopCondition:&stru_100210D08];
  if ((v7 & 1) == 0)
  {
    [(RootNavigationController *)self recursiveBuildJournal:v9 ofViewControllerSubtree:viewControllerToShowFrom transitioningToTraitCollection:collectionCopy stopCondition:&stru_100210D08];
  }

  v12 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    ekui_futureTraitCollection = [currentChildViewController ekui_futureTraitCollection];
    v16 = 136315650;
    v17 = "[RootNavigationController _tornDownJournalOfShownViewControllersTransitioningToTraitCollection:]";
    v18 = 2112;
    v19 = currentChildViewController;
    v20 = 2112;
    v21 = ekui_futureTraitCollection;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Oldtopmain: %@, futureTraits: %@", &v16, 0x20u);
  }

  return v9;
}

- (BOOL)_viewControllerRequiresSystemPresentation:(id)presentation
{
  presentationCopy = presentation;
  NSClassFromString(@"DDParsecCollectionViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_replayJournal:(id)journal withRootVC:(id)c topMainVC:(id)vC
{
  journalCopy = journal;
  cCopy = c;
  vCCopy = vC;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = v13;
    *buf = 138412802;
    v96 = journalCopy;
    v97 = 2112;
    v98 = v13;
    v99 = 2112;
    v100 = objc_opt_class();
    v15 = v100;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[_replayJournal:%@ withRootVC:%@ topMainVC:%@]", buf, 0x20u);
  }

  nextJournaledViewController = [journalCopy nextJournaledViewController];
  v17 = nextJournaledViewController;
  if (nextJournaledViewController)
  {
    viewController = [nextJournaledViewController viewController];
    selfCopy = self;
    v75 = vCCopy;
    if (![viewController conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditView])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [(RootNavigationController *)vCCopy conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegatePrivateAllInProcess];
        selfCopy2 = vCCopy;
        if ((v26 & 1) == 0)
        {
          if ([(RootNavigationController *)vCCopy conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegate])
          {
            selfCopy2 = vCCopy;
          }

          else
          {
            selfCopy2 = self;
          }
        }

        [viewController setDelegate:selfCopy2];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          event = [viewController event];
          v19 = event;
          if (!event)
          {
            v33 = 0;
            events = 0;
LABEL_31:

            [(RootNavigationController *)vCCopy reconfigureViewController:viewController];
            if ((v33 & 1) != 0 || !events)
            {
              v72 = v33;
LABEL_44:
              v76 = v17;
              v70 = events;
              if ([v17 displayType] == 1)
              {
                presentingViewController = [v17 presentingViewController];
                if (presentingViewController)
                {
                  v40 = presentingViewController;
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
LABEL_59:
                            v86[0] = _NSConcreteStackBlock;
                            v86[1] = 3221225472;
                            v86[2] = sub_1000BDA54;
                            v86[3] = &unk_1002101C0;
                            v44 = v40;
                            v87 = v44;
                            v45 = viewController;
                            v88 = v45;
                            selfCopy3 = self;
                            v71 = cCopy;
                            v90 = cCopy;
                            v91 = journalCopy;
                            v92 = vCCopy;
                            v46 = objc_retainBlock(v86);
                            presentedViewController = [v44 presentedViewController];
                            viewControllerToShowFrom = [v44 viewControllerToShowFrom];
                            ekui_futureTraitCollection = [(RootNavigationController *)self ekui_futureTraitCollection];
                            horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];
                            v51 = horizontalSizeClass == 1;

                            if ([v45 conformsToProtocol:&OBJC_PROTOCOL___EKUIManagedViewController])
                            {
                              if (objc_opt_respondsToSelector())
                              {
                                canRequirePushOrPresentation = [v45 canRequirePushOrPresentation];
                              }

                              else
                              {
                                canRequirePushOrPresentation = 0;
                              }

                              if (objc_opt_respondsToSelector())
                              {
                                [(RootNavigationController *)selfCopy ekui_futureTraitCollection];
                                v54 = viewControllerToShowFrom;
                                v56 = v55 = journalCopy;
                                v53 = [v45 prefersPushForSizeClass:{objc_msgSend(v56, "horizontalSizeClass")}];

                                journalCopy = v55;
                                viewControllerToShowFrom = v54;
                                v51 = horizontalSizeClass == 1;
                              }

                              else
                              {
                                v53 = 0;
                              }

                              if ([v45 canManagePresentationStyle])
                              {
                                if (horizontalSizeClass == 1)
                                {
                                  v57 = -2;
                                }

                                else
                                {
                                  v57 = 3;
                                }

                                [v45 setModalPresentationStyle:v57];
                              }
                            }

                            else
                            {
                              v53 = 0;
                              canRequirePushOrPresentation = 0;
                            }

                            if (presentedViewController)
                            {
                              v58 = presentedViewController == viewControllerToShowFrom;
                            }

                            else
                            {
                              v58 = 1;
                            }

                            v59 = !v58;
                            if ((v72 | v59))
                            {
                              if ((v72 & 1) == 0)
                              {
                                v60 = kCalUILogHandle;
                                if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
                                {
                                  v61 = v60;
                                  v62 = journalCopy;
                                  v63 = objc_opt_class();
                                  v74 = v63;
                                  v64 = objc_opt_class();
                                  v65 = v64;
                                  v66 = objc_opt_class();
                                  *buf = 138412802;
                                  v96 = v63;
                                  v97 = 2112;
                                  v98 = v64;
                                  v99 = 2112;
                                  v100 = v66;
                                  v67 = v66;
                                  _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Skipping presentation of %@ because %@ already has a presentation up (%@)", buf, 0x20u);

                                  journalCopy = v62;
                                }
                              }

                              (v46[2])(v46);
                            }

                            else
                            {
                              v77[0] = _NSConcreteStackBlock;
                              v77[1] = 3221225472;
                              v77[2] = sub_1000BDD00;
                              v77[3] = &unk_100210D30;
                              v78 = v76;
                              v83 = v51;
                              v79 = v44;
                              v80 = selfCopy;
                              v81 = v45;
                              v84 = canRequirePushOrPresentation;
                              v85 = v53;
                              v82 = v46;
                              v68 = objc_retainBlock(v77);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [UIView performWithoutAnimation:v68];
                              }

                              else
                              {
                                (v68[2])(v68);
                              }
                            }

                            v17 = v76;

                            cCopy = v71;
                            vCCopy = v75;
                            goto LABEL_88;
                          }
                        }
                      }
                    }
                  }
                }
              }

              NSClassFromString(@"MFMailComposeViewController");
              isKindOfClass = objc_opt_isKindOfClass();
              if ([viewController prefersToBePresentedFromApplicationRootViewController] && (-[RootNavigationController presentedViewController](self, "presentedViewController"), v42 = objc_claimAutoreleasedReturnValue(), v42, !v42))
              {
                selfCopy4 = self;
              }

              else if (isKindOfClass & 1 | ((objc_opt_respondsToSelector() & 1) == 0))
              {
                selfCopy4 = [cCopy viewControllerToShowFrom];
              }

              else
              {
                selfCopy4 = cCopy;
              }

              v40 = selfCopy4;
              goto LABEL_59;
            }

            model = [(RootNavigationController *)self model];
            [model setSelectedOccurrences:events];

LABEL_43:
            v72 = 0;
            goto LABEL_44;
          }

          v93 = event;
          events = [NSArray arrayWithObjects:&v93 count:1];
LABEL_30:
          v33 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(RootNavigationController *)vCCopy conformsToProtocol:&OBJC_PROTOCOL___CNContactViewControllerDelegate])
          {
            [viewController setDelegate:vCCopy];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = viewController;
            events = [v19 events];
            [v19 setTransitioningDelegate:0];
            if ([(RootNavigationController *)vCCopy conformsToProtocol:&OBJC_PROTOCOL___EKExpandedReminderStackViewControllerDelegate])
            {
              [v19 setEKExpandedReminderStackViewControllerDelegate:vCCopy];
            }

            objc_opt_class();
            v73 = objc_opt_isKindOfClass();
            if (v73)
            {
              v35 = kCalUILogHandle;
              if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v36 = v35;
                v37 = objc_opt_class();
                *buf = 138412290;
                v96 = v37;
                v38 = v37;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping presentation of %@ because we don't need expanded reminders view on list view", buf, 0xCu);
              }
            }

            v33 = v73;
            goto LABEL_31;
          }
        }
      }

      [(RootNavigationController *)vCCopy reconfigureViewController:viewController];
      events = 0;
      goto LABEL_43;
    }

    v19 = viewController;
    if (([(RootNavigationController *)vCCopy requiresSelfAsEventEditorDelegate]& 1) == 0)
    {
      internalEditViewDelegate = [v19 internalEditViewDelegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        internalEditViewDelegate2 = [v19 internalEditViewDelegate];
        [internalEditViewDelegate2 view];
        v23 = v22 = v17;
        window = [v23 window];
        window2 = [(RootNavigationController *)self window];

        v17 = v22;
        v58 = window == window2;
        self = selfCopy;
        vCCopy = v75;
        if (v58)
        {
LABEL_26:
          event2 = [v19 event];
          v32 = event2;
          if (event2)
          {
            v94 = event2;
            events = [NSArray arrayWithObjects:&v94 count:1];
          }

          else
          {
            events = 0;
          }

          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if ([(RootNavigationController *)vCCopy conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditViewDelegate])
    {
      selfCopy5 = vCCopy;
    }

    else
    {
      selfCopy5 = self;
    }

    [v19 setInternalEditViewDelegate:selfCopy5];
    goto LABEL_26;
  }

LABEL_88:
}

- (int64_t)_preferredCompactSingleDayView
{
  if ([(CUIKCalendarModel *)self->_model showDayAsList])
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (int64_t)_preferredPostTransitionViewFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection currentViewType:(int64_t)type
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  if (horizontalSizeClass != [traitCollectionCopy horizontalSizeClass] || (v11 = objc_msgSend(collectionCopy, "verticalSizeClass"), v11 != objc_msgSend(traitCollectionCopy, "verticalSizeClass")))
  {
    window = [(RootNavigationController *)self window];
    windowScene = [window windowScene];
    if ([windowScene activationState] == 2)
    {
      horizontalSizeClass2 = [collectionCopy horizontalSizeClass];
      horizontalSizeClass3 = [traitCollectionCopy horizontalSizeClass];

      if (horizontalSizeClass2 != horizontalSizeClass3)
      {
        if ([traitCollectionCopy horizontalSizeClass] == 1)
        {
          v16 = 224;
LABEL_15:
          type = *(&self->super.super.super.super.isa + v16);
          goto LABEL_16;
        }

        if ([traitCollectionCopy horizontalSizeClass] == 2)
        {
          v16 = 216;
          goto LABEL_15;
        }
      }
    }

    else
    {
    }

    if (type == 4 && [collectionCopy horizontalSizeClass] == 1 && objc_msgSend(traitCollectionCopy, "horizontalSizeClass") == 2)
    {
      type = 3;
    }

    else
    {
      type = -1;
    }
  }

LABEL_16:

  return type;
}

- (BOOL)_canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:(id)collection toNewCollection:(id)newCollection
{
  collectionCopy = collection;
  newCollectionCopy = newCollection;
  verticalSizeClass = [collectionCopy verticalSizeClass];
  if (verticalSizeClass == [newCollectionCopy verticalSizeClass])
  {
    horizontalSizeClass = [collectionCopy horizontalSizeClass];
    v9 = horizontalSizeClass == [newCollectionCopy horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  traitCollection = [(RootNavigationController *)self traitCollection];
  v9 = [(RootNavigationController *)self _canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:traitCollection toNewCollection:collectionCopy];

  if (v9)
  {
    window = [(RootNavigationController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    v49.receiver = self;
    v49.super_class = RootNavigationController;
    [(RootNavigationController *)&v49 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
    window2 = [(RootNavigationController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  else
  {
    self->_isTransitioningTraitCollection = 1;
    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      traitCollection2 = [(RootNavigationController *)self traitCollection];
      *buf = 138412546;
      v51 = collectionCopy;
      v52 = 2112;
      v53 = traitCollection2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[51150180] willTransitionToTraitCollection: %@ from %@", buf, 0x16u);
    }

    window2 = [(RootNavigationController *)self topMainViewControllerContainer];
    preferredPreSizeClassTransitionSelectedDate = [window2 preferredPreSizeClassTransitionSelectedDate];
    if (preferredPreSizeClassTransitionSelectedDate)
    {
      [(CUIKCalendarModel *)self->_model setSelectedDate:preferredPreSizeClassTransitionSelectedDate];
    }

    v37 = preferredPreSizeClassTransitionSelectedDate;
    [(CUIKCalendarModel *)self->_model setSelectedDateChangesDelayedUntilAfterTransition:1];
    [(RootNavigationController *)self _updateInteractivePopAllowed];
    if ((CalSolariumEnabled() & 1) == 0 && -[RootNavigationController isNavigationBarHidden](self, "isNavigationBarHidden") && [collectionCopy horizontalSizeClass] == 2 && -[RootNavigationController _containsViewControllerRequiringNavBarVisibilityRestoration](self, "_containsViewControllerRequiringNavBarVisibilityRestoration"))
    {
      [(RootNavigationController *)self setNavigationBarHidden:0];
    }

    traitCollection3 = [(RootNavigationController *)self traitCollection];
    currentViewType = [(RootNavigationController *)self currentViewType];
    firstResponder = [(RootNavigationController *)self firstResponder];
    currentViewType2 = [(RootNavigationController *)self currentViewType];
    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    shouldAdaptEventViewControllers = [topMainViewControllerContainer shouldAdaptEventViewControllers];

    if (shouldAdaptEventViewControllers)
    {
      v22 = [(RootNavigationController *)self _tornDownJournalOfShownViewControllersTransitioningToTraitCollection:collectionCopy];
    }

    else
    {
      v22 = 0;
    }

    [(RootNavigationController *)self setEkui_futureTraitCollection:collectionCopy];
    window3 = [(RootNavigationController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    v48.receiver = self;
    v48.super_class = RootNavigationController;
    [(RootNavigationController *)&v48 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
    window4 = [(RootNavigationController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();

    if ([traitCollection3 horizontalSizeClass] == 2 && objc_msgSend(collectionCopy, "horizontalSizeClass") == 1 && currentViewType2 == 2)
    {
      model = [(RootNavigationController *)self model];
      self->_traitCollectionChangeShouldResultInCompactDayView = [model showDayAsList] ^ 1;
    }

    else
    {
      self->_traitCollectionChangeShouldResultInCompactDayView = 0;
    }

    [(PaletteView *)self->_paletteView updateForChangeToTraitCollection:collectionCopy];
    v26 = [(RootNavigationController *)self _preferredPostTransitionViewFromTraitCollection:traitCollection3 toTraitCollection:collectionCopy currentViewType:currentViewType2];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000BE828;
    v42[3] = &unk_100210D58;
    v42[4] = self;
    v27 = traitCollection3;
    v43 = v27;
    v44 = collectionCopy;
    v46 = currentViewType;
    v47 = v26;
    v28 = v22;
    v45 = v28;
    v29 = objc_retainBlock(v42);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000BE930;
    v39[3] = &unk_10020F1F0;
    v30 = firstResponder;
    v40 = v30;
    selfCopy = self;
    v31 = objc_retainBlock(v39);
    if (coordinatorCopy && [coordinatorCopy isAnimated])
    {
      if (+[ApplicationTester testingSessionStarted])
      {
        v32 = +[UIApplication sharedApplication];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000BE9E0;
        v38[3] = &unk_10020EB00;
        v38[4] = self;
        [v32 installCACommitCompletionBlock:v38];
      }

      window5 = [(RootNavigationController *)self window];
      EKUIPushFallbackSizingContextWithViewHierarchy();

      (v29[2])(v29, 0);
      window6 = [(RootNavigationController *)self window];
      EKUIPopFallbackSizingContextWithViewHierarchy();

      [coordinatorCopy animateAlongsideTransition:0 completion:v31];
    }

    else
    {
      window7 = [(RootNavigationController *)self window];
      EKUIPushFallbackSizingContextWithViewHierarchy();

      (v29[2])(v29, 0);
      window8 = [(RootNavigationController *)self window];
      EKUIPopFallbackSizingContextWithViewHierarchy();

      (v31[2])(v31, 0);
    }

    [(CUIKCalendarModel *)self->_model setSelectedDateChangesDelayedUntilAfterTransition:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(RootNavigationController *)self traitCollection];
  v6 = [(RootNavigationController *)self _canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:changeCopy toNewCollection:traitCollection];

  if ((v6 & 1) == 0)
  {
    [(RootNavigationController *)self setEkui_futureTraitCollection:0];
    self->_traitCollectionChangeShouldResultInCompactDayView = 0;
  }

  [(RootNavigationController *)self _adjustNavBarVisibilityAfterTraitCollectionChange];
  topViewController = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self _updatePaletteStateWithViewController:topViewController];

  v8.receiver = self;
  v8.super_class = RootNavigationController;
  [(RootNavigationController *)&v8 traitCollectionDidChange:changeCopy];
}

- (id)_goToCompactWeek
{
  viewControllers = [(RootNavigationController *)self viewControllers];
  v4 = [NSMutableArray arrayWithArray:viewControllers];
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  v6 = [viewControllers indexOfObject:topMainViewControllerContainer];
  v7 = [WeekViewContainerViewController alloc];
  model = self->_model;
  window = [(RootNavigationController *)self window];
  v10 = [(MainViewControllerContainer *)v7 initWithModel:model window:window];

  ekui_futureTraitCollection = [(RootNavigationController *)self ekui_futureTraitCollection];
  [(WeekViewContainerViewController *)v10 setEkui_futureTraitCollection:ekui_futureTraitCollection];

  [v4 insertObject:v10 atIndex:v6 + 1];
  [(RootNavigationController *)self setViewControllers:v4 animated:0];

  return v10;
}

- (void)_setNavigationStackOfMainViewControllersForTraitsTransitionFromTraitCollection:(id)collection toNewTraitCollection:(id)traitCollection withPreTransitionViewType:(int64_t)type withPreferredPostTransitionViewType:(int64_t)viewType
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  _ensureStackBaseCalendarViewControllerContainerIsPresent = [(RootNavigationController *)self _ensureStackBaseCalendarViewControllerContainerIsPresent];
  if ([collectionCopy horizontalSizeClass] != 1 || objc_msgSend(collectionCopy, "verticalSizeClass") != 1)
  {
    if ([traitCollectionCopy horizontalSizeClass] == 1 && objc_msgSend(traitCollectionCopy, "verticalSizeClass") == 1)
    {
      if (!self->_traitCollectionChangeShouldResultInCompactDayView)
      {
        _goToCompactWeek = [(RootNavigationController *)self _goToCompactWeek];
LABEL_30:
        v31 = 0;
        goto LABEL_37;
      }
    }

    else if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(traitCollectionCopy, "horizontalSizeClass") == 2)
    {
      if (!self->_traitCollectionChangeShouldResultInCompactDayView && (type - 2) <= 2)
      {
        viewControllers = [(RootNavigationController *)self viewControllers];
        if ([viewControllers count] >= 2)
        {
          viewControllers2 = [(RootNavigationController *)self viewControllers];
          v15 = [viewControllers2 objectAtIndexedSubscript:1];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            nextLevelWeekViewController = [v15 nextLevelWeekViewController];
            if (nextLevelWeekViewController)
            {
              v17 = [NSMutableArray arrayWithArray:viewControllers];
              v18 = v17;
              if (type == 2)
              {
                [v17 removeLastObject];
              }

              [v18 insertObject:nextLevelWeekViewController atIndex:2];
              if ([v18 count] == 3)
              {
                [nextLevelWeekViewController setupForViewAppearance];
              }

              lastObject = [v18 lastObject];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) != 0 && ([v18 lastObject], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v22 = v21;
                currentChildViewController = [v21 currentChildViewController];
                [currentChildViewController viewWillAppear:0];

                [(RootNavigationController *)self setViewControllers:v18];
                currentChildViewController2 = [v22 currentChildViewController];
                [currentChildViewController2 viewDidAppear:0];
              }

              else
              {
                [(RootNavigationController *)self setViewControllers:v18];
              }
            }
          }
        }
      }
    }

    else if ([collectionCopy horizontalSizeClass] == 2 && objc_msgSend(traitCollectionCopy, "horizontalSizeClass") == 1)
    {
      model = [(RootNavigationController *)self model];
      showDayAsList = [model showDayAsList];

      if (showDayAsList)
      {
        [(RootNavigationController *)self updateDayViewModeContainer];
      }

      else if (self->_traitCollectionChangeShouldResultInCompactDayView)
      {
        model2 = [(RootNavigationController *)self model];
        if ([model2 numDaysToShow] >= 2)
        {
          v28 = 2;
        }

        else
        {
          v28 = 3;
        }

        selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
        v30 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:v28 andDate:selectedDate];

        goto LABEL_30;
      }
    }
  }

  v31 = 1;
LABEL_37:
  horizontalSizeClass = [traitCollectionCopy horizontalSizeClass];
  v34 = viewType != 4 || horizontalSizeClass != 2;
  if (viewType != -1 && v31 && v34)
  {
    selectedDate2 = [(CUIKCalendarModel *)self->_model selectedDate];
    v36 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:viewType andDate:selectedDate2];
  }

  topViewController = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self navigationController:self willShowViewController:topViewController animated:0];
  view = [(RootNavigationController *)self view];
  [view setNeedsLayout];
}

- (void)restoreEventDetailViewControllers:(id)controllers
{
  controllersCopy = controllers;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = controllersCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = &_s19RemindersAppIntents0A40InCalendarReminderEditingModuleInterfaceP036requiresUserConfirmationForCancelingG0SbvgTj_ptr;
    v9 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(RootNavigationController *)currentChildViewController conformsToProtocol:&OBJC_PROTOCOL___EKEventEditViewDelegate])
          {
            selfCopy = currentChildViewController;
          }

          else
          {
            selfCopy = self;
          }

          [v11 setEditViewDelegate:selfCopy];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [(RootNavigationController *)currentChildViewController reconfigureViewController:v11];
            goto LABEL_20;
          }

          v13 = [(RootNavigationController *)currentChildViewController conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegatePrivateAllInProcess];
          selfCopy2 = currentChildViewController;
          if ((v13 & 1) == 0)
          {
            if ([(RootNavigationController *)currentChildViewController conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegate])
            {
              selfCopy2 = currentChildViewController;
            }

            else
            {
              selfCopy2 = self;
            }
          }

          [v11 setDelegate:selfCopy2];
        }

        event = [v11 event];
        [(RootNavigationController *)currentChildViewController reconfigureViewController:v11];
        if (event)
        {
          [(RootNavigationController *)self model];
          v16 = v7;
          v17 = v9;
          v19 = v18 = v8;
          startCalendarDate = [event startCalendarDate];
          [v19 setSelectedDate:startCalendarDate];

          model = [(RootNavigationController *)self model];
          [model setSelectedOccurrence:event];

          startCalendarDate2 = [event startCalendarDate];
          [(RootNavigationController *)currentChildViewController selectDate:startCalendarDate2 animated:0];

          v8 = v18;
          v9 = v17;
          v7 = v16;
        }

LABEL_20:
        if (objc_opt_respondsToSelector())
        {
          viewControllerToShowFrom = currentChildViewController;
        }

        else
        {
          viewControllerToShowFrom = [(RootNavigationController *)currentChildViewController viewControllerToShowFrom];
        }

        v24 = viewControllerToShowFrom;
        [(RootNavigationController *)viewControllerToShowFrom showViewController:v11 sender:self animated:0 completion:0];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldSaveSelectedEvent
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [currentChildViewController selectedEventWasAutoSelected] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)didEnterBackground
{
  currentViewType = [(RootNavigationController *)self currentViewType];
  traitCollection = [(RootNavigationController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    self->_compactBackgroundedViewType = -1;
  }

  else
  {
    traitCollection2 = [(RootNavigationController *)self traitCollection];
    horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];

    if (horizontalSizeClass2 == 1)
    {
      self->_compactBackgroundedViewType = currentViewType;
      currentViewType = -1;
    }

    else
    {
      currentViewType = -1;
      self->_compactBackgroundedViewType = -1;
    }
  }

  self->_regularBackgroundedViewType = currentViewType;
}

- (id)bestDateForNewEvent
{
  topViewController = [(RootNavigationController *)self topViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topViewController2 = [(RootNavigationController *)self topViewController];
    bestDateForNewEvent = [topViewController2 bestDateForNewEvent];
  }

  else
  {
    bestDateForNewEvent = 0;
  }

  return bestDateForNewEvent;
}

- (void)showDate:(id)date andTime:(BOOL)time animated:(BOOL)animated
{
  animatedCopy = animated;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BF558;
  v8[3] = &unk_100210D80;
  selfCopy = self;
  dateCopy = date;
  timeCopy = time;
  v12 = animatedCopy;
  v7 = dateCopy;
  [(RootNavigationController *)selfCopy _dismissPresentedViewControllerAnimated:animatedCopy completion:v8];
}

- (BOOL)isDateVisible:(id)visible
{
  visibleCopy = visible;
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if (!topMainViewControllerContainer)
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No top main view controller to query if a date is visible.", v9, 2u);
    }
  }

  v7 = [topMainViewControllerContainer isDateVisible:visibleCopy];

  return v7;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)date toEndDate:(id *)endDate
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if (!topMainViewControllerContainer)
  {
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No top main view controller to query if a date is visible.", v8, 2u);
    }
  }

  [topMainViewControllerContainer currentlyVisibleDateRangeFromStartDate:date toEndDate:endDate];
}

- (void)showEvent:(id)event animated:(BOOL)animated showMode:(unint64_t)mode context:(id)context
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BF7D4;
  v11[3] = &unk_100210DC8;
  selfCopy = self;
  eventCopy = event;
  animatedCopy = animated;
  contextCopy = context;
  modeCopy = mode;
  v9 = contextCopy;
  v10 = eventCopy;
  [(RootNavigationController *)selfCopy _dismissPresentedViewControllerAnimated:0 completion:v11];
}

- (void)showContactWithIdentifier:(id)identifier
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF9A0;
  v5[3] = &unk_10020EC68;
  identifierCopy = identifier;
  selfCopy = self;
  v4 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)weekViewController:(id)controller didEditEvent:(id)event creationMethod:(unint64_t)method
{
  eventCopy = event;
  v7 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:eventCopy model:self->_model creationMethod:method viewStart:1 eventEditViewDelegate:self];
  [(RootNavigationController *)self presentModalViewController:v7 withTransition:8];
  title = [eventCopy title];
  if (title)
  {
    viewControllers = title;
    title2 = [eventCopy title];
    if ([title2 length])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      viewControllers = [v7 viewControllers];
      title2 = [viewControllers lastObject];
      navigationItem = [title2 navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [rightBarButtonItem setEnabled:1];
    }
  }

LABEL_6:
}

- (void)updateTitleToDate:(id)date yearOnly:(BOOL)only
{
  onlyCopy = only;
  dateCopy = date;
  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  v6 = &CALFullYearFormat;
  if (!onlyCopy)
  {
    v6 = &CALFullYearMonth;
  }

  v7 = *v6;
  monthYearLabel = self->_monthYearLabel;
  date = [dateCopy date];
  v10 = [(RootNavigationController *)self attributedTitleForDate:date format:v7 rightAlign:0 yearOnly:onlyCopy];
  [(UILabel *)monthYearLabel setAttributedText:v10];

  childViewControllers = [(RootNavigationController *)self childViewControllers];
  v12 = [childViewControllers count];

  if (v12)
  {
    v13 = 0;
    do
    {
      childViewControllers2 = [(RootNavigationController *)self childViewControllers];
      v15 = [childViewControllers2 objectAtIndexedSubscript:v13];
      [(RootNavigationController *)self _updateNavigationTitleToContainer:v15 titleView:self->_titleView];

      ++v13;
      childViewControllers3 = [(RootNavigationController *)self childViewControllers];
      v17 = [childViewControllers3 count];
    }

    while (v13 < v17);
  }
}

- (void)refreshErrors
{
  if (CalSolariumEnabled())
  {
    v3 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    _getSources = [(RootNavigationController *)self _getSources];
    v5 = [_getSources countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(_getSources);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(RootNavigationController *)self _getAccountErrorForSource:v9];
          if ([CalAccountErrorSeverity severityForError:v10]- 1 <= 1)
          {
            v11 = [NSNumber numberWithUnsignedInteger:v10];
            sourceIdentifier = [v9 sourceIdentifier];
            [v3 setObject:v11 forKeyedSubscript:sourceIdentifier];
          }
        }

        v6 = [_getSources countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [(RootNavigationController *)self setSourceErrorsDictionary:v3];
    [(RootNavigationController *)self updateErrorWithErrorDisplayManager];
  }
}

- (id)attributedTitleForDate:(id)date format:(id)format rightAlign:(BOOL)align yearOnly:(BOOL)only
{
  onlyCopy = only;
  alignCopy = align;
  dateCopy = date;
  v11 = [dateCopy localizedStringWithFormat:format];
  if ([v11 length])
  {
    v12 = [(RootNavigationController *)self _applyAttributesToDateString:v11 date:dateCopy rightAlign:alignCopy yearOnly:onlyCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_applyAttributesToDateString:(id)string date:(id)date rightAlign:(BOOL)align yearOnly:(BOOL)only
{
  alignCopy = align;
  stringCopy = string;
  dateCopy = date;
  if (qword_100251A70 != -1)
  {
    sub_100170548();
  }

  v11 = &qword_100251A60;
  if (!alignCopy)
  {
    v11 = &qword_100251A58;
  }

  v12 = *v11;
  v13 = [[NSMutableAttributedString alloc] initWithString:stringCopy attributes:v12];

  v14 = +[UIColor labelColor];
  [v13 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, objc_msgSend(v13, "length")}];

  if (!only)
  {
    localizedYear = [dateCopy localizedYear];
    v16 = [stringCopy rangeOfString:localizedYear];
    v18 = v17;
    v19 = +[UIColor systemGray4Color];
    [v13 addAttribute:NSForegroundColorAttributeName value:v19 range:{v16, v18}];
  }

  return v13;
}

- (void)_updateNavigationTitleToContainer:(id)container titleView:(id)view
{
  containerCopy = container;
  viewCopy = view;
  v10 = containerCopy;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    navigationItem = [v10 navigationItem];
    titleView = [navigationItem titleView];

    if (!titleView)
    {
      navigationItem2 = [v10 navigationItem];
      [navigationItem2 setTitleView:viewCopy];
    }
  }
}

- (void)updateBackButtonToDate:(id)date
{
  dateCopy = date;
  traitCollection = [(RootNavigationController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 1)
  {
    v6 = CalSolariumEnabled();

    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  presentedViewController = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_10;
  }

  v7 = CalSolariumEnabled();

  if ((v7 & 1) == 0)
  {
LABEL_7:
    childViewControllers = [(RootNavigationController *)self childViewControllers];
    v9 = [childViewControllers count];

    if (v9 >= 2)
    {
      v10 = 1;
      do
      {
        childViewControllers2 = [(RootNavigationController *)self childViewControllers];
        v12 = [childViewControllers2 objectAtIndexedSubscript:v10];
        [(RootNavigationController *)self _updateBackButtonToDate:dateCopy container:v12];

        ++v10;
        childViewControllers3 = [(RootNavigationController *)self childViewControllers];
        v14 = [childViewControllers3 count];
      }

      while (v10 < v14);
    }
  }

LABEL_10:
}

- (void)_updateBackButtonToDate:(id)date container:(id)container
{
  dateCopy = date;
  containerCopy = container;
  window = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v8 = containerCopy;
  v9 = [(RootNavigationController *)self _higherScopeCompactCalendarViewControllerRelativeTo:v8];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldUpdateOwnBackButtonWhenTopViewController])
  {
    parentViewController2 = [v8 updateBackButtonWhileTopViewControllerToDate:dateCopy];
    if (parentViewController2)
    {
      parentViewController = [v9 parentViewController];
      navigationItem = [parentViewController navigationItem];
      [navigationItem setBackButtonTitle:parentViewController2];
    }

    goto LABEL_9;
  }

  if (CalSolariumEnabled() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    parentViewController2 = [v9 parentViewController];
    [parentViewController2 updateBackButtonToDate:dateCopy];
LABEL_9:
  }

  window2 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (id)_higherScopeCompactCalendarViewControllerRelativeTo:(id)to
{
  toCopy = to;
  viewControllers = [(RootNavigationController *)self viewControllers];
  v6 = [viewControllers indexOfObject:toCopy];

  v7 = 0;
  if (!toCopy || (v6 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
  {
    goto LABEL_11;
  }

  v8 = 0;
  v9 = v6 + 1;
  while (1)
  {
    viewControllers2 = [(RootNavigationController *)self viewControllers];
    v11 = [viewControllers2 objectAtIndex:v9 - 2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_7:

    if (--v9 < 2)
    {
      v7 = 0;
      goto LABEL_10;
    }
  }

  v12 = v11;

  childViewControllerForCompactWidthRegularHeight = [v12 childViewControllerForCompactWidthRegularHeight];
  if (!childViewControllerForCompactWidthRegularHeight)
  {
    v8 = v12;
    goto LABEL_7;
  }

  v7 = childViewControllerForCompactWidthRegularHeight;

  v8 = v12;
LABEL_10:

LABEL_11:

  return v7;
}

- (void)setNavBarStringFromDate:(id)date includeMonth:(BOOL)month includeYear:(BOOL)year
{
  yearCopy = year;
  monthCopy = month;
  dateCopy = date;
  if (!self->_navBarDateStringCache)
  {
    v9 = objc_opt_new();
    navBarDateStringCache = self->_navBarDateStringCache;
    self->_navBarDateStringCache = v9;
  }

  v11 = objc_opt_new();
  if (monthCopy)
  {
    month = [dateCopy month];
  }

  else
  {
    month = -1;
  }

  [v11 setMonth:month];
  if (yearCopy)
  {
    year = [dateCopy year];
  }

  else
  {
    year = -1;
  }

  [v11 setYear:year];
  window = [(RootNavigationController *)self window];
  traitCollection = [(RootNavigationController *)self traitCollection];
  v16 = paletteTitleFont(window, traitCollection);
  [v11 setFont:v16];

  v17 = [(NSMutableDictionary *)self->_navBarDateStringCache objectForKeyedSubscript:v11];
  if (v17 || ([(RootNavigationController *)self _navBarDateStringFromDate:dateCopy includingMonth:monthCopy includingYear:yearCopy format:0], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
  }

  else
  {
    [(RootNavigationController *)self _dateLabelMaxWidth];
    v20 = v19;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = [&off_10021A068 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v18 = 0;
      v23 = *v28;
      while (2)
      {
        v24 = 0;
        v25 = v18;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(&off_10021A068);
          }

          v18 = -[RootNavigationController _navBarDateStringFromDate:includingMonth:includingYear:format:](self, "_navBarDateStringFromDate:includingMonth:includingYear:format:", dateCopy, monthCopy, yearCopy, [*(*(&v27 + 1) + 8 * v24) integerValue]);

          [v18 size];
          if (v26 < v20)
          {
            [(NSMutableDictionary *)self->_navBarDateStringCache setObject:v18 forKeyedSubscript:v11];
            goto LABEL_12;
          }

          v24 = v24 + 1;
          v25 = v18;
        }

        while (v22 != v24);
        v22 = [&off_10021A068 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_12:
  [(RootNavigationController *)self _setCurrentDateLabelString:v18];
}

- (id)_navBarDateStringFromDate:(id)date includingMonth:(BOOL)month includingYear:(BOOL)year format:(int64_t)format
{
  monthCopy = month;
  dateCopy = date;
  if (dateCopy)
  {
    if (!monthCopy || year)
    {
      if (monthCopy)
      {
        traitCollection = [(RootNavigationController *)self traitCollection];
        v18 = [(RootNavigationController *)self _navBarStringYearFontForTraitCollection:traitCollection useSmallerSize:1 bold:0];

        window = [(RootNavigationController *)self window];
        traitCollection2 = [(RootNavigationController *)self traitCollection];
        v13 = paletteTitleFont(window, traitCollection2);

        if (format == 2)
        {
          date = [dateCopy date];
          v22 = CUIKVeryShortStringForMonthYear();

          [dateCopy month];
          v23 = CUIKStringVeryShortAbbreviationForMonth();
        }

        else if (format == 1)
        {
          date2 = [dateCopy date];
          v22 = CUIKShortStringForMonthYear();

          [dateCopy month];
          v23 = CUIKStringAbbreviationForMonth();
        }

        else if (format)
        {
          v23 = 0;
          v22 = 0;
        }

        else
        {
          date3 = [dateCopy date];
          v22 = CUIKStringForMonthYear();

          [dateCopy month];
          v23 = CUIKStringForMonthNumber();
        }

        v47 = v23;
        lowercaseString = [v23 lowercaseString];
        lowercaseString2 = [v22 lowercaseString];
        v38 = [lowercaseString2 rangeOfString:lowercaseString];
        v46 = v39;
        if (v22)
        {
          v16 = [[NSMutableAttributedString alloc] initWithString:v22];
          v40 = CalSolariumEnabled();
          v41 = [v16 length];
          if (v40)
          {
            [v16 addAttribute:NSFontAttributeName value:v13 range:{0, v41}];
            v42 = +[UIColor tertiaryLabelColor];
            [v16 addAttribute:NSForegroundColorAttributeName value:v42 range:{0, objc_msgSend(v16, "length")}];
          }

          else
          {
            [v16 addAttribute:NSFontAttributeName value:v18 range:{0, v41}];
          }
        }

        else
        {
          v16 = 0;
        }

        if (v38 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v16 addAttribute:NSFontAttributeName value:v13 range:{v38, v46}];
          v43 = +[UIColor labelColor];
          [v16 addAttribute:NSForegroundColorAttributeName value:v43 range:{v38, v46}];
        }

        goto LABEL_35;
      }

      v24 = (format - 1) < 2;
      traitCollection3 = [(RootNavigationController *)self traitCollection];
      v18 = [(RootNavigationController *)self _navBarStringYearFontForTraitCollection:traitCollection3 useSmallerSize:v24 bold:1];

      date4 = [dateCopy date];
      v13 = CUIKStringForYear();

      v16 = [[NSMutableAttributedString alloc] initWithString:v13];
      [v16 addAttribute:NSFontAttributeName value:v18 range:{0, objc_msgSend(v16, "length")}];
      date5 = [dateCopy date];
      IsThisYear = CUIKNSDateIsThisYear();

      if (!IsThisYear)
      {
LABEL_36:

        v44 = objc_alloc_init(NSMutableParagraphStyle);
        [v44 setLineBreakMode:2];
        [v16 addAttribute:NSParagraphStyleAttributeName value:v44 range:{0, objc_msgSend(v16, "length")}];

        goto LABEL_37;
      }

      v22 = CalendarAppTintColor();
      v29 = [v16 length];
      v30 = v16;
      v31 = NSForegroundColorAttributeName;
      v32 = v22;
LABEL_23:
      [v30 addAttribute:v31 value:v32 range:{0, v29}];
LABEL_35:

      goto LABEL_36;
    }

    window2 = [(RootNavigationController *)self window];
    traitCollection4 = [(RootNavigationController *)self traitCollection];
    v13 = paletteTitleFont(window2, traitCollection4);

    if (format == 2)
    {
      [dateCopy month];
      v14 = CUIKStringVeryShortAbbreviationForMonth();
    }

    else if (format == 1)
    {
      [dateCopy month];
      v14 = CUIKStringAbbreviationForMonth();
    }

    else
    {
      if (format)
      {
        v18 = 0;
        goto LABEL_22;
      }

      [dateCopy month];
      v14 = CUIKStringForMonthNumber();
    }

    v18 = v14;
LABEL_22:
    v33 = +[NSLocale currentLocale];
    v22 = [v18 capitalizedStringWithLocale:v33];

    v16 = [[NSMutableAttributedString alloc] initWithString:v22];
    v29 = [v16 length];
    v30 = v16;
    v31 = NSFontAttributeName;
    v32 = v13;
    goto LABEL_23;
  }

  v15 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v49 = "[RootNavigationController _navBarDateStringFromDate:includingMonth:includingYear:format:]";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s called with nil date", buf, 0xCu);
  }

  v16 = 0;
LABEL_37:

  return v16;
}

- (void)_updateDateLabelFrame
{
  [(UILabel *)self->_currentDateLabel frame];
  v4 = v3;
  v6 = v5;
  [(RootNavigationController *)self _dateLabelMaxWidth];
  currentDateLabel = self->_currentDateLabel;

  [(UILabel *)currentDateLabel setFrame:v4, v6, v7, 38.0];
}

- (void)_updateLeftFixedSpaceBarButtonItemWidthWithViewController:(id)controller targetWindowSize:(CGSize)size
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [(RootNavigationController *)self _createLeftFixedSpaceBarItemIfNeeded];
    [controllerCopy leftBarButtonBlankFixedSpaceWidth];
    view = [(RootNavigationController *)self view];
    EKUILayoutMarginsForFullscreenLayoutRectWithSize();
    v7 = v6;
    CalRoundToScreenScale();
    [(UIBarButtonItem *)self->_leftFixedSpaceBarItem setWidth:v7 + v8];
  }

  else
  {
    [(UIBarButtonItem *)self->_leftFixedSpaceBarItem setWidth:0.0];
  }
}

- (void)_setCurrentDateLabelString:(id)string
{
  stringCopy = string;
  if (![(NSAttributedString *)self->_currentDateLabelString isEqualToAttributedString:stringCopy])
  {
    objc_storeStrong(&self->_currentDateLabelString, string);
    currentDateLabelString = self->_currentDateLabelString;
    dateString = [(PaletteView *)self->_paletteView dateString];
    LOBYTE(currentDateLabelString) = [(NSAttributedString *)currentDateLabelString isEqualToAttributedString:dateString];

    if ((currentDateLabelString & 1) == 0)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000C1310;
      v9[3] = &unk_10020EB00;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
    }

    largeCurrentDateLabel = [(RootNavigationController *)self largeCurrentDateLabel];
  }
}

- (double)_dateLabelMaxWidth
{
  view = [(RootNavigationController *)self view];
  [view bounds];
  MidX = CGRectGetMidX(v17);
  [(RootNavigationController *)self _viewSwitcherSegmentWidth];
  v6 = MidX + v5 * -0.5 * [(RootNavigationController *)self _viewSwitcherNumSegments];

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  view2 = [(RootNavigationController *)self view];
  [view2 bounds];
  [(RootNavigationController *)self _updateLeftFixedSpaceBarButtonItemWidthWithViewController:topMainViewControllerContainer targetWindowSize:v9, v10];

  [(UIBarButtonItem *)self->_leftFixedSpaceBarItem width];
  v12 = v6 + v11 * -1.5;
  view3 = [(RootNavigationController *)self view];
  [view3 layoutMargins];
  v15 = v12 + v14 * -2.0;

  return v15;
}

- (id)_navBarStringYearFontForTraitCollection:(id)collection useSmallerSize:(BOOL)size bold:(BOOL)bold
{
  boldCopy = bold;
  collectionCopy = collection;
  v8 = collectionCopy;
  if (boldCopy)
  {
    window = [(RootNavigationController *)self window];
    v10 = paletteTitleFont(window, v8);
  }

  else
  {
    userInterfaceIdiom = [collectionCopy userInterfaceIdiom];

    v12 = &UIFontTextStyleTitle2;
    if (userInterfaceIdiom)
    {
      v12 = &UIFontTextStyleLargeTitle;
    }

    v10 = [UIFont _preferredFontForTextStyle:*v12 maximumContentSizeCategory:UIContentSizeCategoryMedium];
  }

  return v10;
}

- (unint64_t)_viewSwitcherIndexRepresentingViewType:(int64_t)type
{
  if ((type + 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1001F8478[type + 1];
  }
}

- (int64_t)_viewTypeRepresentedByViewSwitcherIndex:(unint64_t)index
{
  if (index > 4)
  {
    return -1;
  }

  else
  {
    return qword_1001F84A8[index];
  }
}

- (void)_viewSwitcherSelectedValueChanged:(id)changed
{
  changedCopy = changed;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  v6 = -[RootNavigationController _viewTypeRepresentedByViewSwitcherIndex:](self, "_viewTypeRepresentedByViewSwitcherIndex:", [changedCopy selectedSegmentIndex]);
  if (v6 != [(RootNavigationController *)self currentViewType])
  {
    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C163C;
    v9[3] = &unk_10020EE00;
    v9[4] = self;
    v9[5] = v6;
    v8 = [topMainViewControllerContainer performModalDialogsIfNeededWithContinue:v9];

    if (v8)
    {
      [changedCopy setSelectedSegmentIndex:{-[RootNavigationController _viewSwitcherIndexRepresentingViewType:](self, "_viewSwitcherIndexRepresentingViewType:", -[RootNavigationController currentViewType](self, "currentViewType"))}];
    }
  }
}

- (void)_configureViewSwitcherShowingViewController:(id)controller
{
  viewSwitcher = [(RootNavigationController *)self viewSwitcher];
  [viewSwitcher setSelectedSegmentIndex:{-[RootNavigationController _viewSwitcherIndexRepresentingViewType:](self, "_viewSwitcherIndexRepresentingViewType:", -[RootNavigationController currentViewType](self, "currentViewType"))}];
  [(RootNavigationController *)self updateViewPickerToViewType:[(RootNavigationController *)self currentViewType]];
}

- (id)_switcherFontOfSize:(double)size isSemibold:(BOOL)semibold
{
  if (semibold)
  {
    [UIFont systemFontOfSize:size weight:UIFontWeightSemibold];
  }

  else
  {
    [UIFont systemFontOfSize:size];
  }
  v4 = ;

  return v4;
}

- (void)_setSegmentWidthsForViewSwitcher:(id)switcher
{
  switcherCopy = switcher;
  if (switcherCopy)
  {
    v9 = switcherCopy;
    _viewSwitcherNumSegments = [(RootNavigationController *)self _viewSwitcherNumSegments];
    [(RootNavigationController *)self _viewSwitcherSegmentWidth];
    switcherCopy = v9;
    if (_viewSwitcherNumSegments)
    {
      v7 = v6;
      for (i = 0; i != _viewSwitcherNumSegments; ++i)
      {
        [v9 setWidth:i forSegmentAtIndex:v7];
        switcherCopy = v9;
      }
    }
  }
}

- (void)selectViewType:(int64_t)type
{
  if ([(RootNavigationController *)self currentViewType]!= type)
  {
    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C1A20;
    v7[3] = &unk_10020EE00;
    v7[4] = self;
    v7[5] = type;
    v6 = [topMainViewControllerContainer performModalDialogsIfNeededWithContinue:v7];

    if (v6)
    {
      [(RootNavigationController *)self updateViewPickerToViewType:type];
    }
  }
}

- (void)updateViewPickerToViewType:(int64_t)type
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  menu = [(UIButton *)self->_viewPicker menu];
  children = [menu children];

  v6 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (type > 1)
        {
          if (type == 2)
          {
            identifier = [*(*(&v16 + 1) + 8 * v9) identifier];
            v12 = identifier;
            v13 = @"Week";
          }

          else
          {
            if (type != 3)
            {
              goto LABEL_17;
            }

            identifier = [*(*(&v16 + 1) + 8 * v9) identifier];
            v12 = identifier;
            v13 = @"Day";
          }
        }

        else if (type)
        {
          if (type != 1)
          {
            goto LABEL_17;
          }

          identifier = [*(*(&v16 + 1) + 8 * v9) identifier];
          v12 = identifier;
          v13 = @"Month";
        }

        else
        {
          identifier = [*(*(&v16 + 1) + 8 * v9) identifier];
          v12 = identifier;
          v13 = @"Year";
        }

        v14 = [identifier isEqualToString:v13];

        if (v14)
        {
          v15 = 1;
          goto LABEL_18;
        }

LABEL_17:
        v15 = 0;
LABEL_18:
        [v10 setState:v15];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (UIButton)viewPicker
{
  viewPicker = self->_viewPicker;
  if (!viewPicker)
  {
    v4 = objc_opt_new();
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Day" value:&stru_1002133B8 table:0];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000C20A0;
    v24[3] = &unk_100210938;
    v24[4] = self;
    v7 = [UIAction actionWithTitle:v6 image:0 identifier:@"Day" handler:v24];

    [v4 addObject:v7];
    v8 = [v5 localizedStringForKey:@"Week" value:&stru_1002133B8 table:0];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000C20AC;
    v23[3] = &unk_100210938;
    v23[4] = self;
    v9 = [UIAction actionWithTitle:v8 image:0 identifier:@"Week" handler:v23];

    [v4 addObject:v9];
    v10 = [v5 localizedStringForKey:@"Month" value:? table:?];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000C20B8;
    v22[3] = &unk_100210938;
    v22[4] = self;
    v11 = [UIAction actionWithTitle:v10 image:0 identifier:@"Month" handler:v22];

    [v4 addObject:v11];
    v12 = [v5 localizedStringForKey:@"Year" value:&stru_1002133B8 table:0];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C20C4;
    v21[3] = &unk_100210938;
    v21[4] = self;
    v13 = [UIAction actionWithTitle:v12 image:0 identifier:@"Year" handler:v21];

    [v4 addObject:v13];
    v14 = +[UIButtonConfiguration plainButtonConfiguration];
    [v14 setTitleLineBreakMode:2];
    v15 = +[UIButtonConfiguration plainButtonConfiguration];
    v16 = [UIButton buttonWithConfiguration:v15 primaryAction:0];
    v17 = self->_viewPicker;
    self->_viewPicker = v16;

    [(UIButton *)self->_viewPicker setChangesSelectionAsPrimaryAction:1];
    [(UIButton *)self->_viewPicker setShowsMenuAsPrimaryAction:1];
    v18 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v4];
    [(UIButton *)self->_viewPicker setMenu:v18];

    [(UIButton *)self->_viewPicker setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1148846080;
    [(UIButton *)self->_viewPicker setContentCompressionResistancePriority:0 forAxis:v19];

    viewPicker = self->_viewPicker;
  }

  return viewPicker;
}

- (void)_notificationCountChanged:(id)changed
{
  if (qword_100251A80 != -1)
  {
    sub_10017055C();
  }

  model = [(RootNavigationController *)self model];
  v5 = qword_100251A78;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C21F0;
  v7[3] = &unk_10020EC68;
  v8 = model;
  selfCopy = self;
  v6 = model;
  dispatch_async(v5, v7);
}

+ (id)_inboxTitleForNotificationCount:(unint64_t)count
{
  if (count)
  {
    v3 = [NSString alloc];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Inbox (%@)" value:&stru_1002133B8 table:0];
    v6 = CUIKLocalizedStringForInteger();
    v7 = [v3 initWithFormat:v5, v6];
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v4 localizedStringForKey:@"Inbox" value:&stru_1002133B8 table:0];
  }

  return v7;
}

- (void)handleURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v69 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Preparing to handle URL: [%@]", buf, 0xCu);
  }

  scheme = [lCopy scheme];
  model = [(RootNavigationController *)self model];
  searchResultIdentifier = [lCopy searchResultIdentifier];

  if (searchResultIdentifier)
  {
    searchResultIdentifier2 = [lCopy searchResultIdentifier];
    stringValue = [searchResultIdentifier2 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  if ([scheme isEqualToString:_EKEventURLScheme])
  {
    eventStore = [model eventStore];
    v15 = [eventStore _eventWithURI:lCopy checkValid:1];

    if (v15)
    {
      calendar = [v15 calendar];
      source = [calendar source];
      [model updateSourceForSelectedIdentity:source selectedCalendars:0];

      [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
      if ([v15 allowsParticipationStatusModifications] && (objc_msgSend(v15, "participationStatus") == 1 || !objc_msgSend(v15, "participationStatus")))
      {
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_1000C2C64;
        v66[3] = &unk_10020EC68;
        v66[4] = self;
        v67 = v15;
        [UIView performWithoutAnimation:v66];
      }

      else
      {
        [(RootNavigationController *)self showEvent:v15 animated:0 showMode:1 context:contextCopy];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if ([scheme isEqualToString:@"calinvite"])
  {
    resourceSpecifier = [lCopy resourceSpecifier];
    v15 = [NSURL URLWithString:resourceSpecifier];

    eventStore2 = [model eventStore];
    v20 = [eventStore2 _eventWithURI:v15 checkValid:1];

    if (v20)
    {
      model = self->_model;
      [v20 calendar];
      v22 = v61 = searchResultIdentifier;
      [v22 source];
      v58 = v15;
      v23 = lCopy;
      selfCopy = self;
      v25 = scheme;
      v26 = stringValue;
      v27 = model;
      v29 = v28 = contextCopy;
      [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:v29 selectedCalendars:0];

      contextCopy = v28;
      model = v27;
      stringValue = v26;
      scheme = v25;
      self = selfCopy;
      lCopy = v23;
      v15 = v58;

      searchResultIdentifier = v61;
      [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
      [(RootNavigationController *)self showEvent:v20 animated:0 showMode:1 context:contextCopy];
    }

    goto LABEL_24;
  }

  if ([scheme isEqualToString:@"calinvitelist"] && objc_msgSend(model, "allEventNotificationsCount"))
  {
    [model setSelectedOccurrence:0];
    v30 = [(RootNavigationController *)self showInboxAnimated:0];
LABEL_25:
    v31 = 0;
    v32 = 0;
    goto LABEL_26;
  }

  if (([scheme isEqualToString:@"calsubcal"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"webcal"))
  {
    v15 = [CalWindowRootViewController sanitizeCalSubCal:lCopy];
    if (v15)
    {
      [(RootNavigationController *)self _showAddSubscribedCalendarWithURL:v15];
    }

    goto LABEL_24;
  }

  if (![scheme isEqualToString:@"calshow"])
  {
    goto LABEL_25;
  }

  host = [lCopy host];
  if (![host isEqual:@"familyCalendar"])
  {
    v62 = searchResultIdentifier;
    resourceSpecifier2 = [lCopy resourceSpecifier];
    if ([objc_opt_class() _diagnosticsAvailable] && objc_msgSend(resourceSpecifier2, "rangeOfString:", @"?calendardiagnostics=reporttraveladvisoryproblem") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(resourceSpecifier2, "rangeOfString:", @"?calendardiagnostics=reportproblem") != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(RootNavigationController *)self _showDebugReportProblemViewController];
      v31 = 0;
      v34 = resourceSpecifier2;
      v32 = 0;
      goto LABEL_58;
    }

    v56 = host;
    v36 = [resourceSpecifier2 rangeOfString:@"?eventid="];
    v57 = resourceSpecifier2;
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = [resourceSpecifier2 rangeOfString:@"?contactid="];
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = 0;
        goto LABEL_47;
      }

      v43 = v38;
      v44 = v39;
      v59 = [resourceSpecifier2 substringToIndex:v38];
      v45 = v43 + v44;
      if ([resourceSpecifier2 length] <= v45)
      {
        v32 = 0;
      }

      else
      {
        v32 = [resourceSpecifier2 substringFromIndex:v45];
      }
    }

    else
    {
      v40 = v36;
      v41 = v37;
      v59 = [resourceSpecifier2 substringToIndex:v36];
      if (&v40[v41] >= [resourceSpecifier2 length])
      {
        v32 = 0;
      }

      else
      {
        v42 = [resourceSpecifier2 substringFromIndex:?];

        v32 = 0;
        stringValue = v42;
      }

      searchResultIdentifier = v62;
    }

    v46 = v59;
    if (v59)
    {
LABEL_48:
      v60 = v46;
      if ([v46 length])
      {
        v55 = contextCopy;
        v31 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v46 intValue]);
        currentViewType = [(RootNavigationController *)self currentViewType];
        if (currentViewType == -1)
        {
          if (EKUIShouldSaveStateInPreferences())
          {
            v48 = +[CUIKPreferences sharedPreferences];
            lastViewMode = [v48 lastViewMode];
            currentViewType = [lastViewMode integerValue];
          }

          else
          {
            currentViewType = -1;
          }
        }

        [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0, currentViewType];
        calendar2 = [model calendar];
        timeZone = [calendar2 timeZone];
        v50 = [EKCalendarDate calendarDateWithDate:v31 timeZone:timeZone];

        v53 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:v54 andDate:v50];
        [(RootNavigationController *)self showDate:v50 andTime:1 animated:0];
        contextCopy = v55;
        searchResultIdentifier = v62;
      }

      else
      {
        v31 = 0;
        v50 = stringValue;
        stringValue = 0;
      }

      host = v56;
      v34 = v57;
      goto LABEL_58;
    }

LABEL_47:
    v46 = v57;
    goto LABEL_48;
  }

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1000C2CC0;
  v63[3] = &unk_10020F438;
  v64 = model;
  selfCopy2 = self;
  [(RootNavigationController *)self showCalendarsAnimated:1 completion:v63];
  v31 = 0;
  v32 = 0;
  v34 = v64;
LABEL_58:

LABEL_26:
  if ([stringValue length])
  {
    [(RootNavigationController *)self showEventWithIdentifier:stringValue isSearchResult:searchResultIdentifier != 0 date:v31 context:contextCopy];
  }

  else if ([v32 length])
  {
    [(RootNavigationController *)self showContactWithIdentifier:v32];
  }
}

- (void)showEventWithIdentifier:(id)identifier isSearchResult:(BOOL)result date:(id)date context:(id)context
{
  resultCopy = result;
  identifierCopy = identifier;
  dateCopy = date;
  contextCopy = context;
  if ([identifierCopy length])
  {
    v12 = [identifierCopy componentsSeparatedByString:@"_"];
    if ([v12 count] < 2)
    {
      intValue2 = kCADMainDatabaseID;
      intValue = [identifierCopy intValue];
    }

    else
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      intValue2 = [v13 intValue];

      v15 = [v12 objectAtIndexedSubscript:1];
      intValue = [v15 intValue];
    }

    v17 = [EKObjectID objectIDWithEntityType:2 rowID:intValue databaseID:intValue2];
    if (intValue < 1 || (intValue2 & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    model = self->_model;
    if (!dateCopy || resultCopy)
    {
      v20 = [(CUIKCalendarModel *)model closestOccurrenceToTomorrowForEventObjectID:v17];
      if (!v20)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      eventStore = [(CUIKCalendarModel *)model eventStore];
      v20 = [eventStore eventForObjectID:v17 occurrenceDate:dateCopy];

      if (!v20)
      {
        goto LABEL_13;
      }
    }

    v21 = self->_model;
    calendar = [v20 calendar];
    source = [calendar source];
    [(CUIKCalendarModel *)v21 updateSourceForSelectedIdentity:source selectedCalendars:0];

    v24 = self->_model;
    calendar2 = [v20 calendar];
    objectID = [calendar2 objectID];
    [(CUIKCalendarModel *)v24 ensureCalendarVisibleWithId:objectID];

    [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
    [(RootNavigationController *)self showEvent:v20 animated:0 showMode:1 context:contextCopy];

    goto LABEL_13;
  }

LABEL_14:
}

+ (BOOL)_diagnosticsAvailable
{
  if (qword_100251A90 != -1)
  {
    sub_100170570();
  }

  return byte_100251A88;
}

- (void)_showDebugReportProblemViewController
{
  reportProblemNavigationController = [(RootNavigationController *)self reportProblemNavigationController];

  if (!reportProblemNavigationController)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = qword_100251AA0;
    v14 = qword_100251AA0;
    if (!qword_100251AA0)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C6874;
      v10[3] = &unk_100210C70;
      v10[4] = &v11;
      sub_1000C6874(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = [[v4 alloc] initWithStyle:2];
    [v6 setReportProblemDelegate:self];
    v7 = objc_alloc_init(UINavigationController);
    [(RootNavigationController *)self setReportProblemNavigationController:v7];
    [v7 pushViewController:v6 animated:0];
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelPressedWhileInReportProblemView"];
    navigationItem = [v6 navigationItem];
    [navigationItem setRightBarButtonItem:v8];

    [(RootNavigationController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)_showAddSubscribedCalendarWithURL:(id)l
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C328C;
  v4[3] = &unk_10020F7A8;
  selfCopy = self;
  lCopy = l;
  v3 = lCopy;
  [(RootNavigationController *)selfCopy _dismissPresentedViewControllerAnimated:0 completion:v4];
}

- (void)_dismissReportProblemController
{
  [(RootNavigationController *)self dismissViewControllerAnimated:1 completion:0];

  [(RootNavigationController *)self setReportProblemNavigationController:0];
}

- (id)resetToYearView
{
  currentChildViewController = 0;
  if ([(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0])
  {
    topViewController = [(RootNavigationController *)self topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      *&v6 = 138412290;
      v19 = v6;
      do
      {
        v7 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v8 = v7;
          topViewController2 = [(RootNavigationController *)self topViewController];
          *buf = v19;
          v21 = topViewController2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Popping top view controller: [%@].", buf, 0xCu);
        }

        v10 = [(RootNavigationController *)self popViewControllerAnimated:0, v19];
        topViewController3 = [(RootNavigationController *)self topViewController];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();
      }

      while ((v12 & 1) == 0);
    }

    viewControllers = [(RootNavigationController *)self viewControllers];
    v14 = [viewControllers objectAtIndex:0];
    currentChildViewController = [v14 currentChildViewController];

    model = [(RootNavigationController *)self model];
    selectedDate = [model selectedDate];

    date = [selectedDate date];
    [currentChildViewController showDate:date animated:0];
  }

  return currentChildViewController;
}

- (id)resetToMonthView
{
  resetToYearView = [(RootNavigationController *)self resetToYearView];

  if (resetToYearView)
  {
    model = [(RootNavigationController *)self model];
    selectedDate = [model selectedDate];

    v6 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:1 andDate:selectedDate];
    currentChildViewController = [v6 currentChildViewController];
  }

  else
  {
    currentChildViewController = 0;
  }

  return currentChildViewController;
}

- (id)resetToMonthViewSplit:(BOOL)split
{
  splitCopy = split;
  resetToMonthView = [(RootNavigationController *)self resetToMonthView];
  if (resetToMonthView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = resetToMonthView;
      v7 = +[CUIKPreferences sharedPreferences];
      monthViewScaleSize = [v7 monthViewScaleSize];

      if (splitCopy)
      {
        monthViewScaleSize = 1;
      }

      else if (monthViewScaleSize == 3)
      {
        v9 = +[CUIKPreferences sharedPreferences];
        monthViewScaleSize = [v9 monthViewEventScaleSize];
      }

      [v6 animateToMonthWeekSize:monthViewScaleSize divided:splitCopy];
      [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:0];
    }

    v10 = resetToMonthView;
  }

  return resetToMonthView;
}

- (id)resetToDayView
{
  resetToMonthView = [(RootNavigationController *)self resetToMonthView];

  if (resetToMonthView)
  {
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    v5 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:3 andDate:selectedDate];

    viewControllers = [(RootNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
    currentChildViewController = [lastObject currentChildViewController];
  }

  else
  {
    currentChildViewController = 0;
  }

  return currentChildViewController;
}

- (id)_now
{
  model = [(RootNavigationController *)self model];
  calendar = [model calendar];
  timeZone = [calendar timeZone];

  v5 = [EKCalendarDate alloc];
  v6 = CUIKNowComponents();
  v7 = [v5 initWithDateComponents:v6 timeZone:timeZone];

  return v7;
}

- (id)resetToWeekView
{
  resetToYearView = [(RootNavigationController *)self resetToYearView];

  if (resetToYearView)
  {
    selectedDate = [(CUIKCalendarModel *)self->_model selectedDate];
    v5 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:2 andDate:selectedDate];

    viewControllers = [(RootNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
    currentChildViewController = [lastObject currentChildViewController];
  }

  else
  {
    currentChildViewController = 0;
  }

  return currentChildViewController;
}

- (id)_topPresentedController
{
  selfCopy = self;
  presentedViewController = [(RootNavigationController *)selfCopy presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [(RootNavigationController *)selfCopy presentedViewController];

      v4PresentedViewController = [(RootNavigationController *)presentedViewController2 presentedViewController];

      selfCopy = presentedViewController2;
    }

    while (v4PresentedViewController);
  }

  else
  {
    presentedViewController2 = selfCopy;
  }

  return presentedViewController2;
}

- (BOOL)shouldHandleCanPerformActionForSelector:(SEL)selector
{
  v5 = [(RootNavigationController *)self _willKeyCommandChangeSelectedDate:?]|| [(RootNavigationController *)self _willKeyCommandChangeSelectedEvent:selector];
  if ("handleDayKeyCommand" == selector || "handleWeekKeyCommand" == selector || "handleMonthKeyCommand" == selector || "handleYearKeyCommand" == selector || "paste:" == selector || "copy:" == selector || "cut:" == selector || "delete:" == selector || "handleDeleteKeyCommand" == selector || "handleDuplicateKeyCommand" == selector || "handleViewAvailabilityCommand" == selector || "_performEditKeyCommand" == selector)
  {
    return 1;
  }

  return v5;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v24.receiver = self;
  v24.super_class = RootNavigationController;
  canPerformPaste = [(RootNavigationController *)&v24 canPerformAction:action withSender:senderCopy];
  traitCollection = [(RootNavigationController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 1)
  {

    goto LABEL_14;
  }

  if ("handleDayKeyCommand" == action || "handleWeekKeyCommand" == action || "handleMonthKeyCommand" == action)
  {

LABEL_13:
    canPerformPaste = 0;
    goto LABEL_14;
  }

  if ("handleYearKeyCommand" == action)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ([(RootNavigationController *)self _willKeyCommandChangeSelectedEvent:action])
  {
    _canChangeSelectedEvent = [(RootNavigationController *)self _canChangeSelectedEvent];
  }

  else
  {
    if (![(RootNavigationController *)self _willKeyCommandChangeSelectedDate:action])
    {
      goto LABEL_19;
    }

    _canChangeSelectedEvent = [(RootNavigationController *)self _canChangeSelectedDate];
  }

  canPerformPaste = _canChangeSelectedEvent;
LABEL_19:
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:action withSender:senderCopy]& 1) == 0)
  {
    if ("paste:" == action)
    {
      pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
      canPerformPaste = [pasteboardManager canPerformPaste];
    }

    if ("copy:" == action)
    {
      selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v18 = 1;
    }

    else
    {
      if ("cut:" != action)
      {
        if ("handleViewAvailabilityCommand" != action)
        {
LABEL_37:
          if ("delete:" == action || "handleDeleteKeyCommand" == action)
          {
            sender = [senderCopy sender];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_20;
            }

            sender2 = [senderCopy sender];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              goto LABEL_20;
            }

            _canPerformDeleteKeyCommand = [(RootNavigationController *)self _canPerformDeleteKeyCommand];
          }

          else if ("handleDuplicateKeyCommand" == action)
          {
            _canPerformDeleteKeyCommand = [(RootNavigationController *)self _canPerformDuplicateKeyCommand];
          }

          else if ("_performEditKeyCommand" == action)
          {
            _canPerformDeleteKeyCommand = [(RootNavigationController *)self _canPerformEditKeyCommand];
          }

          else if ("handleSelectNextOccurrenceCommand" == action)
          {
            _canPerformDeleteKeyCommand = [(RootNavigationController *)self _canPerformRecurringEventNextOccurrenceSelectionCommand];
          }

          else
          {
            if ("handleSelectPreviousOccurrenceCommand" != action)
            {
              goto LABEL_52;
            }

            _canPerformDeleteKeyCommand = [(RootNavigationController *)self _canPerformRecurringEventPreviousOccurrenceSelectionCommand];
          }

          canPerformPaste = _canPerformDeleteKeyCommand;
          goto LABEL_52;
        }

        selectedOccurrences2 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
        if ([selectedOccurrences2 count] == 1)
        {
          selectedOccurrences3 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
          firstObject = [selectedOccurrences3 firstObject];

          if (!firstObject || ![firstObject hasAttendees])
          {
            canPerformPaste = 0;
            goto LABEL_36;
          }

          selectedOccurrences2 = [firstObject calendar];
          source = [selectedOccurrences2 source];
          canPerformPaste = [source supportsAvailabilityRequests];
        }

        else
        {
          firstObject = 0;
          canPerformPaste = 0;
        }

LABEL_36:
        goto LABEL_37;
      }

      selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v18 = 0;
    }

    canPerformPaste = [CUIKPasteboardUtilities allEventsValidForAction:v18 fromEvents:selectedOccurrences];

    goto LABEL_52;
  }

LABEL_20:
  canPerformPaste = 0;
LABEL_52:

  return canPerformPaste;
}

- (BOOL)_canChangeSelectedEvent
{
  if ([(RootNavigationController *)self _isTextEditingInProgress]|| [(RootNavigationController *)self _isAddEventPopoverDisplayed])
  {
    return 0;
  }

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if (objc_opt_respondsToSelector())
  {
    mainViewControllerCanChangeSelectedEvent = [topMainViewControllerContainer mainViewControllerCanChangeSelectedEvent];
  }

  else
  {
    mainViewControllerCanChangeSelectedEvent = 1;
  }

  return mainViewControllerCanChangeSelectedEvent;
}

- (BOOL)_canChangeSelectedDate
{
  if ([(RootNavigationController *)self _isTextEditingInProgress]|| [(RootNavigationController *)self _isAddEventPopoverDisplayed])
  {
    return 0;
  }

  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  if (objc_opt_respondsToSelector())
  {
    mainViewControllerCanChangeSelectedDate = [topMainViewControllerContainer mainViewControllerCanChangeSelectedDate];
  }

  else
  {
    mainViewControllerCanChangeSelectedDate = 1;
  }

  return mainViewControllerCanChangeSelectedDate;
}

- (BOOL)_isTextEditingInProgress
{
  firstResponder = [(RootNavigationController *)self firstResponder];
  v3 = [firstResponder conformsToProtocol:&OBJC_PROTOCOL___UIKeyInput];

  return v3;
}

- (BOOL)_isAddEventPopoverDisplayed
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_switchToView:(int64_t)view
{
  if (!self->_viewSwitchKeyCommandsTemporarilyLockedOut)
  {
    presentedViewController = [(RootNavigationController *)self presentedViewController];

    if (!presentedViewController)
    {
      traitCollection = [(RootNavigationController *)self traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];

      if (horizontalSizeClass == 2 && [(RootNavigationController *)self currentViewType]!= view)
      {
        self->_viewSwitchKeyCommandsTemporarilyLockedOut = 1;
        topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
        bestDateForNewEvent = [topMainViewControllerContainer bestDateForNewEvent];

        v10 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:view andDate:bestDateForNewEvent];
        v11 = dispatch_time(0, 250000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C4184;
        block[3] = &unk_10020EB00;
        block[4] = self;
        dispatch_after(v11, &_dispatch_main_q, block);
      }
    }
  }
}

- (void)handleRefreshKeyCommand
{
  v3 = +[DADConnection sharedConnection];
  [v3 resetTimersAndWarnings];

  model = [(RootNavigationController *)self model];
  eventStore = [model eventStore];
  v5 = [eventStore refreshEverythingIfNecessary:1];
}

- (void)handleNewSubscribedCalendarCommand
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];

  if (!presentedViewController)
  {
    v4 = [EKSubscribedCalendarEditor alloc];
    model = [(RootNavigationController *)self model];
    eventStore = [model eventStore];
    model2 = [(RootNavigationController *)self model];
    sourceForSelectedIdentity = [model2 sourceForSelectedIdentity];
    v10 = [v4 initWithCalendar:0 eventStore:eventStore entityType:0 limitedToSource:sourceForSelectedIdentity];

    [v10 setDelegate:self];
    v9 = [[UINavigationController alloc] initWithRootViewController:v10];
    [v9 setPreferredContentSize:{480.0, 480.0}];
    [(RootNavigationController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)handleSelectNextOccurrenceCommand
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer showNextOccurrenceOfSelectableItem];
}

- (void)handleSelectPreviousOccurrenceCommand
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  [topMainViewControllerContainer showPreviousOccurrenceOfSelectableItem];
}

- (BOOL)_canPerformSequentialEventSelectionCommand
{
  if (![(RootNavigationController *)self _canChangeSelectedEvent])
  {
    return 0;
  }

  selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  v4 = selectedOccurrence != 0;

  return v4;
}

- (BOOL)_canPerformRecurringEventNextOccurrenceSelectionCommand
{
  if (![(RootNavigationController *)self _canPerformSequentialEventSelectionCommand])
  {
    return 0;
  }

  selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  nextOccurrence = [selectedOccurrence nextOccurrence];
  v5 = nextOccurrence != 0;

  return v5;
}

- (BOOL)_canPerformRecurringEventPreviousOccurrenceSelectionCommand
{
  if (![(RootNavigationController *)self _canPerformSequentialEventSelectionCommand])
  {
    return 0;
  }

  selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  previousOccurrence = [selectedOccurrence previousOccurrence];
  v5 = previousOccurrence != 0;

  return v5;
}

- (void)handleNewEventKeyCommand
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1000C4610;
  v7 = &unk_100210850;
  objc_copyWeak(&v8, &location);
  v2 = objc_retainBlock(&v4);
  v3 = [CalendarTipsManager sharedManager:v4];
  [v3 dismissTipDueToUserNavigationWithCompletionBlock:v2];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)handleSearchKeyCommand
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_1000C47E0;
  v7 = &unk_100210850;
  objc_copyWeak(&v8, &location);
  v2 = objc_retainBlock(&v4);
  v3 = [CalendarTipsManager sharedManager:v4];
  [v3 dismissTipDueToUserNavigationWithCompletionBlock:v2];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)handleCloseKeyCommand
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
  }

  else
  {
    selectedOccurrence = [(CUIKCalendarModel *)self->_model selectedOccurrence];
    if (selectedOccurrence)
    {
      v6 = selectedOccurrence;
      topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
      currentChildViewController = [topMainViewControllerContainer currentChildViewController];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
        currentChildViewController2 = [topMainViewControllerContainer2 currentChildViewController];
        [currentChildViewController2 performSelector:"handleCloseKeyCommand"];
      }
    }
  }
}

- (void)handleDismissSplashScreenKeyCommand
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentedViewController dismissSplashScreen];
  }
}

- (void)handleViewAvailabilityCommand
{
  _topPresentedController = [(RootNavigationController *)self _topPresentedController];
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  firstObject = [selectedOccurrences firstObject];
  v6 = [EKUIAvailabilityViewController presentAvailabilityViewControllerForEvent:firstObject fromViewController:_topPresentedController];

  objc_initWeak(&location, v6);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C4B94;
  v7[3] = &unk_100210EA0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v6 setSaveBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)handleGoToDateCommand
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];

  if (!presentedViewController)
  {
    v4 = [GoToDateViewController alloc];
    model = [(RootNavigationController *)self model];
    selectedDate = [model selectedDate];
    date = [selectedDate date];
    v8 = [(GoToDateViewController *)v4 initWithDate:date];

    [(GoToDateViewController *)v8 setDelegate:self];
    [(RootNavigationController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (BOOL)_canPerformDeleteKeyCommand
{
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    selectedOccurrences2 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    v5 = [EKUIContextMenuActions eventsAllDeletable:selectedOccurrences2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)delete:(id)delete
{
  if ([(RootNavigationController *)self _canPerformDeleteKeyCommand])
  {
    _topPresentedController = [(RootNavigationController *)self _topPresentedController];
    selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    [EKUIContextMenuActions deleteEvents:selectedOccurrences presentationController:_topPresentedController];
  }
}

- (BOOL)allSelectedEventsIndividuallyRepresented
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  v5 = [topMainViewControllerContainer allEventsIndividuallyRepresented:selectedOccurrences];

  return v5;
}

- (BOOL)_canPerformDuplicateKeyCommand
{
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    calendarToPasteTo = [pasteboardManager calendarToPasteTo];
    if (calendarToPasteTo)
    {
      selectedOccurrences2 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      if ([CUIKPasteboardUtilities allEventsValidForAction:2 fromEvents:selectedOccurrences2])
      {
        allSelectedEventsIndividuallyRepresented = [(RootNavigationController *)self allSelectedEventsIndividuallyRepresented];
      }

      else
      {
        allSelectedEventsIndividuallyRepresented = 0;
      }
    }

    else
    {
      allSelectedEventsIndividuallyRepresented = 0;
    }
  }

  else
  {
    allSelectedEventsIndividuallyRepresented = 0;
  }

  return allSelectedEventsIndividuallyRepresented;
}

- (void)handleDuplicateKeyCommand
{
  if ([(RootNavigationController *)self _canPerformDuplicateKeyCommand])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    v4 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager duplicateEvents:v4 withDateMode:3 delegate:self];
  }
}

- (void)handleSpaceBarKeyCommand
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  if (!presentedViewController)
  {
    v4 = [(CUIKCalendarModel *)self->_model selectedOccurrencesForSelectionSource:1];
    v5 = [v4 count];

    if (!v5)
    {
      return;
    }

    topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
    [topMainViewControllerContainer2 showDetailsForCurrentSelectableItem];
    presentedViewController = topMainViewControllerContainer2;
  }
}

- (void)handleMoveEventUpCommand
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
    [topMainViewControllerContainer2 moveSelectedOccurrenceUp];
  }
}

- (void)handleMoveEventDownCommand
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
    [topMainViewControllerContainer2 moveSelectedOccurrenceDown];
  }
}

- (void)handleMoveEventLeftCommand
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
    [topMainViewControllerContainer2 moveSelectedOccurrenceLeft];
  }
}

- (void)handleMoveEventRightCommand
{
  topMainViewControllerContainer = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topMainViewControllerContainer2 = [(RootNavigationController *)self topMainViewControllerContainer];
    [topMainViewControllerContainer2 moveSelectedOccurrenceRight];
  }
}

- (void)paste:(id)paste
{
  pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
  [pasteboardManager pasteEventsWithDateMode:0 delegate:self];
}

- (void)cut:(id)cut
{
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager cutEvents:v5 delegate:self];
  }
}

- (void)copy:(id)copy
{
  selectedOccurrences = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([selectedOccurrences count])
  {
    pasteboardManager = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:selectedOccurrences];
    [pasteboardManager copyEvents:v5 delegate:self];
  }
}

- (BOOL)_canPerformEditKeyCommand
{
  presentedViewController = [(RootNavigationController *)self presentedViewController];
  if (presentedViewController)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CUIKCalendarModel *)self->_model selectedOccurrencesForSelectionSource:1];
    v4 = [v5 count] == 1;
  }

  return v4;
}

- (void)_performEditKeyCommand
{
  if ([(RootNavigationController *)self _canPerformEditKeyCommand])
  {
    v3 = [(CUIKCalendarModel *)self->_model selectedOccurrencesForSelectionSource:1];
    firstObject = [v3 firstObject];

    v4 = firstObject;
    if (firstObject)
    {
      [(RootNavigationController *)self showEvent:firstObject animated:1 showMode:3 context:0];
      v4 = firstObject;
    }
  }
}

- (id)pasteboardManager
{
  model = [(RootNavigationController *)self model];
  pasteboardManager = [model pasteboardManager];

  return pasteboardManager;
}

- (void)pasteboardManager:(id)manager presentAlert:(id)alert
{
  alertCopy = alert;
  _topPresentedController = [(RootNavigationController *)self _topPresentedController];
  [alertCopy presentFromSource:_topPresentedController];
}

- (void)pasteboardManager:(id)manager didFinishPasteWithResult:(unint64_t)result willOpenEditor:(BOOL)editor
{
  if (!result && !editor)
  {
    [(RootNavigationController *)self attemptDisplayReviewPrompt];
  }
}

- (void)displayIntegrationAlert:(id)alert
{
  alertCopy = alert;
  parentViewController = [(RootNavigationController *)self parentViewController];
  v6 = parentViewController;
  if (parentViewController)
  {
    selfCopy = parentViewController;
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  v9 = [[EKUIIntegrationAlertDisplayer alloc] initWithViewController:v8 options:0];
  [v9 displayIntegrationAlert:alertCopy];
}

- (void)goToDateViewController:(id)controller didCompleteWithDate:(id)date
{
  dateCopy = date;
  model = [(RootNavigationController *)self model];
  eventStore = [model eventStore];
  timeZone = [eventStore timeZone];
  v9 = [EKCalendarDate calendarDateWithDate:dateCopy timeZone:timeZone];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C58D8;
  v11[3] = &unk_10020F7A8;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [(RootNavigationController *)self dismissPresentedViewControllerAnimated:1 completion:v11];
}

- (void)controllerAppearedTipsConfiguration
{
  v3 = +[CalendarTipsManager sharedManager];
  [v3 configureTipsCenter];

  v4 = +[CalendarTipsManager sharedManager];
  topViewController = [(RootNavigationController *)self topViewController];
  todayBarButtonItem = [(RootNavigationController *)self todayBarButtonItem];
  [v4 addObserversForController:topViewController todayButton:todayBarButtonItem];

  [(RootNavigationController *)self updateDeviceOrientationForJumpToTodayTip];
}

- (void)updateLabelWithAccountIdentifier:(id)identifier error:(unint64_t)error
{
  v6 = [identifier copy];
  currentDisplayingErrorAccount = self->_currentDisplayingErrorAccount;
  self->_currentDisplayingErrorAccount = v6;

  self->_currentDisplayingError = error;
  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  v8 = [(RootNavigationController *)self _errorTextForError:error];
  subtitleLabel = [(RootNavigationController *)self subtitleLabel];
  text = [subtitleLabel text];
  v11 = [v8 isEqualToString:text];

  if ((v11 & 1) == 0)
  {
    titleView = [(RootNavigationController *)self titleView];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C5BE4;
    v19[3] = &unk_10020EC68;
    v19[4] = self;
    v20 = v8;
    [UIView transitionWithView:titleView duration:5243012 options:v19 animations:0 completion:0.5];

    v13 = [CalAccountErrorSeverity severityForError:error];
    v14 = @"Account";
    if (v13 == 1)
    {
      v14 = @"Network";
    }

    v15 = v14;
    currentViewType = [(RootNavigationController *)self currentViewType];
    v21[0] = @"Component";
    v21[1] = @"ErrorType";
    v22[0] = @"HeaderUI";
    v22[1] = v15;
    v21[2] = @"currentView";
    v17 = [NSNumber numberWithInt:[(RootNavigationController *)self currentViewTypeInt:currentViewType]];
    v22[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

    CalAnalyticsSendEvent();
    +[EKUIAccountErrorsAnalyticsTracker trackCalendarListDisplayedOfflineError];
  }
}

- (void)updateLabelNoErrorWithText:(id)text
{
  textCopy = text;
  currentDisplayingErrorAccount = self->_currentDisplayingErrorAccount;
  self->_currentDisplayingErrorAccount = 0;

  self->_currentDisplayingError = 0;
  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  subtitleLabel = [(RootNavigationController *)self subtitleLabel];
  text = [subtitleLabel text];
  v8 = [textCopy isEqualToString:text];

  if ((v8 & 1) == 0)
  {
    titleView = [(RootNavigationController *)self titleView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C5DAC;
    v10[3] = &unk_10020EC68;
    v10[4] = self;
    v11 = textCopy;
    [UIView transitionWithView:titleView duration:5243012 options:v10 animations:0 completion:0.5];
  }
}

- (ViewSwitcherLayoutHandler)viewSwitcherLayoutHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_viewSwitcherLayoutHandler);

  return WeakRetained;
}

@end