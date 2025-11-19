@interface RootNavigationController
+ (BOOL)_diagnosticsAvailable;
+ (id)_inboxTitleForNotificationCount:(unint64_t)a3;
- (BOOL)_calendarsButtonHasBackground;
- (BOOL)_canChangeSelectedDate;
- (BOOL)_canChangeSelectedEvent;
- (BOOL)_canPerformDeleteKeyCommand;
- (BOOL)_canPerformDuplicateKeyCommand;
- (BOOL)_canPerformEditKeyCommand;
- (BOOL)_canPerformRecurringEventNextOccurrenceSelectionCommand;
- (BOOL)_canPerformRecurringEventPreviousOccurrenceSelectionCommand;
- (BOOL)_canPerformSequentialEventSelectionCommand;
- (BOOL)_canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:(id)a3 toNewCollection:(id)a4;
- (BOOL)_containsViewControllerRequiringNavBarVisibilityRestoration;
- (BOOL)_dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (BOOL)_isAddEventPopoverDisplayed;
- (BOOL)_isCurrentlyDraggingEvent;
- (BOOL)_isTextEditingInProgress;
- (BOOL)_isThisTheOnlyConnectedScene;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (BOOL)_nodeContainsViewControllersRequiringTeardown:(id)a3;
- (BOOL)_shouldShowListViewInModeSwitcher;
- (BOOL)_updateCalendarButtonError;
- (BOOL)_updateCalendarButtonSpinner;
- (BOOL)_viewControllerRequiresSystemPresentation:(id)a3;
- (BOOL)_viewControllerTreeIsEligibleForJournalingConsideration:(id)a3;
- (BOOL)_viewControllerWantsDismissOnSizeClassChange:(id)a3 transitioningToTraitCollection:(id)a4;
- (BOOL)allSelectedEventsIndividuallyRepresented;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)eventViewControllerShouldHideInlineEditButton;
- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (BOOL)isDateVisible:(id)a3;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)shouldDonateTomorrowActivity;
- (BOOL)shouldHandleCanPerformActionForSelector:(SEL)a3;
- (BOOL)shouldSaveSelectedEvent;
- (CalSplitViewControllerDelegate)splitViewDelegate;
- (Class)_classRepresentingViewType:(int64_t)a3 forTraitCollection:(id)a4;
- (RootNavigationController)initWithModel:(id)a3 targetWindow:(id)a4;
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
- (id)_applyAttributesToDateString:(id)a3 date:(id)a4 rightAlign:(BOOL)a5 yearOnly:(BOOL)a6;
- (id)_calendarsButtonConfiguration;
- (id)_compactMonthDividedListSwitchBarButtonItem;
- (id)_contactForCurrentIdentity:(BOOL)a3;
- (id)_doneBlockWithCompletion:(id)a3;
- (id)_ensureStackBaseCalendarViewControllerContainerIsPresent;
- (id)_errorTextForError:(unint64_t)a3;
- (id)_getSources;
- (id)_goToCompactWeek;
- (id)_higherScopeCompactCalendarViewControllerRelativeTo:(id)a3;
- (id)_listViewSwitchBarButtonItem;
- (id)_meContact;
- (id)_navBarDateStringFromDate:(id)a3 includingMonth:(BOOL)a4 includingYear:(BOOL)a5 format:(int64_t)a6;
- (id)_navBarStringYearFontForTraitCollection:(id)a3 useSmallerSize:(BOOL)a4 bold:(BOOL)a5;
- (id)_now;
- (id)_popToViewControllerSatisfying:(id)a3;
- (id)_presentedEditor;
- (id)_switcherFontOfSize:(double)a3 isSemibold:(BOOL)a4;
- (id)_topPresentedController;
- (id)_tornDownJournalOfShownViewControllersTransitioningToTraitCollection:(id)a3;
- (id)_viewSwitcherLabelStrings;
- (id)_viewSwitcherSegmentedControl;
- (id)attributedTitleForDate:(id)a3 format:(id)a4 rightAlign:(BOOL)a5 yearOnly:(BOOL)a6;
- (id)bestDateForNewEvent;
- (id)calendarsButtonTitle;
- (id)compactMonthMenu;
- (id)compactTodayButtonView;
- (id)delegatesMenu;
- (id)ekui_futureTraitCollection;
- (id)generateCurrentListToggleBarButtonItemMenu;
- (id)imageForCurrentDayViewMode;
- (id)imageNameForDayViewMode:(int64_t)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)newAddEventBarButtonItem;
- (id)newSearchBarButtonItem;
- (id)pasteboardManager;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (id)pushCalendarViewControllerWithViewType:(int64_t)a3 andDate:(id)a4;
- (id)resetToDayView;
- (id)resetToMonthView;
- (id)resetToMonthViewSplit:(BOOL)a3;
- (id)resetToWeekView;
- (id)resetToYearView;
- (id)showInboxAnimated:(BOOL)a3;
- (id)showInboxAnimated:(BOOL)a3 completion:(id)a4;
- (id)showSearchAnimated:(BOOL)a3 becomeFirstResponder:(BOOL)a4 completion:(id)a5;
- (id)todayButtonView;
- (id)topMainViewControllerContainer;
- (id)traitCollection;
- (int)currentViewTypeInt:(int64_t)a3;
- (int64_t)_preferredCompactSingleDayView;
- (int64_t)_preferredPostTransitionViewFromTraitCollection:(id)a3 toTraitCollection:(id)a4 currentViewType:(int64_t)a5;
- (int64_t)_viewTypeRepresentedByViewSwitcherIndex:(unint64_t)a3;
- (int64_t)activeWidthSizeClass;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)currentDayViewMode;
- (int64_t)currentViewType;
- (unint64_t)_viewSwitcherIndexRepresentingViewType:(int64_t)a3;
- (unint64_t)_viewSwitcherNumSegments;
- (unint64_t)numberOfNotifications;
- (unint64_t)supportedInterfaceOrientations;
- (void)_accountsInInitialSyncCountChanged;
- (void)_addButtonsToNavigationBarForViewController:(id)a3;
- (void)_adjustNavBarVisibilityAfterTraitCollectionChange;
- (void)_calendarErrorCountChanged:(id)a3;
- (void)_configureViewSwitcherShowingViewController:(id)a3;
- (void)_contentSizeCategoryChanged:(id)a3;
- (void)_createLeftFixedSpaceBarItemIfNeeded;
- (void)_delegatesChanged:(id)a3;
- (void)_dismissReportProblemController;
- (void)_focusModeConfigurationChanged:(id)a3;
- (void)_forceInboxButtonCreationIfNeeded;
- (void)_identityChanged:(id)a3;
- (void)_initializeCalendarsButton;
- (void)_meContactChangedNoticationReceived:(id)a3;
- (void)_monthWeekScaleChanged:(id)a3;
- (void)_notificationCountChanged:(id)a3;
- (void)_performCustomRotationAnimationForMainWindowWithTransitionCoordinator:(id)a3;
- (void)_performEditKeyCommand;
- (void)_presentAdaptiveModalPopoverViewController:(id)a3 relativeToBarButtonItem:(id)a4 permittedArrowDirections:(unint64_t)a5 contentSize:(CGSize)a6 animated:(BOOL)a7 completion:(id)a8;
- (void)_presentAdaptiveModalViewController:(id)a3 withPresentationStyleOverride:(int64_t)a4 relativeToBarButtonItem:(id)a5 withSourceView:(id)a6 sourceRect:(CGRect)a7 permittedArrowDirections:(unint64_t)a8 contentSize:(CGSize)a9 passThroughViews:(id)a10 animated:(BOOL)a11 completion:(id)a12;
- (void)_replayJournal:(id)a3 withRootVC:(id)a4 topMainVC:(id)a5;
- (void)_restoreLastUsedCalendarViewType;
- (void)_saveUserActivityInfo:(id)a3;
- (void)_searchPressed;
- (void)_selectNextEvent;
- (void)_selectPreviousEvent;
- (void)_selectTodayForMainViewControllerContainer:(id)a3 animated:(BOOL)a4;
- (void)_selectedDateChanged:(id)a3;
- (void)_setCurrentDateLabelString:(id)a3;
- (void)_setNavigationStackOfMainViewControllersForTraitsTransitionFromTraitCollection:(id)a3 toNewTraitCollection:(id)a4 withPreTransitionViewType:(int64_t)a5 withPreferredPostTransitionViewType:(int64_t)a6;
- (void)_setNeedsUserActivityUpdate;
- (void)_setSegmentWidthsForViewSwitcher:(id)a3;
- (void)_setUpInitialUserActivityUpdate;
- (void)_setupSearchController;
- (void)_setupSearchControllerForViewController:(id)a3;
- (void)_setupTitleViewIfNeeded;
- (void)_showAddSubscribedCalendarWithURL:(id)a3;
- (void)_showCalendarsAnimated:(BOOL)a3 completion:(id)a4;
- (void)_showDebugReportProblemViewController;
- (void)_showNextDateComponentUnitAnimated:(BOOL)a3;
- (void)_showNowForMainViewControllerContainer:(id)a3 animated:(BOOL)a4;
- (void)_showPreviousDateComponentUnitAnimated:(BOOL)a3;
- (void)_showSearchController:(id)a3 withSearchBar:(id)a4 animated:(BOOL)a5 becomeFirstResponder:(BOOL)a6 completion:(id)a7;
- (void)_significantDateChange:(id)a3;
- (void)_switchToView:(int64_t)a3;
- (void)_updateAddEventButtonEnabledness;
- (void)_updateAfterExtendedLaunch:(id)a3;
- (void)_updateBackButtonToDate:(id)a3 container:(id)a4;
- (void)_updateCalendarButtonAccessory;
- (void)_updateCalendarsButtonConfiguration;
- (void)_updateCalendarsButtonMenuProvider;
- (void)_updateCalendarsButtonTitle;
- (void)_updateDateLabelFrame;
- (void)_updateFilterLabelAnimate:(BOOL)a3;
- (void)_updateInboxBarButtonItem;
- (void)_updateInteractivePopAllowed;
- (void)_updateLeftFixedSpaceBarButtonItemWidthWithViewController:(id)a3 targetWindowSize:(CGSize)a4;
- (void)_updateNavbarStringForNewStateAfterWindowSizeChange;
- (void)_updateNavigationBarAppearanceForMainViewControllerContainer:(id)a3;
- (void)_updateNavigationTitleToContainer:(id)a3 titleView:(id)a4;
- (void)_updatePaletteStateWithViewController:(id)a3;
- (void)_updateUserActivity;
- (void)_updateViewSwitcherFont;
- (void)_updateViewSwitcherSegmentWidthsAfterWindowSizeChange;
- (void)_viewSwitcherSelectedValueChanged:(id)a3;
- (void)addEventPressed;
- (void)addToolbarButtonItemsWithViewController:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)calendarsPressed;
- (void)continueSearchWithTerm:(id)a3 animated:(BOOL)a4 removeViewControllersIncapableOfSearchIfNeeded:(BOOL)a5;
- (void)controllerAppearedTipsConfiguration;
- (void)copy:(id)a3;
- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)didEnterBackground;
- (void)displayIntegrationAlert:(id)a3;
- (void)doCrossfadeAnimationWithCurrentScreenContents;
- (void)doCrossfadeAnimationWithNavigationViewContents;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4;
- (void)focusBannerViewToggled:(id)a3;
- (void)goToDateViewController:(id)a3 didCompleteWithDate:(id)a4;
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
- (void)handleURL:(id)a3 context:(id)a4;
- (void)handleViewAvailabilityCommand;
- (void)inboxPressed;
- (void)inboxViewControllerWantsShowEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5;
- (void)largeNewEventButtonTapped;
- (void)loadView;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)openCalendarsLinkActionWithCompletion:(id)a3;
- (void)openInboxLinkActionWithCompletion:(id)a3;
- (void)openSearchLinkActionWithCompletion:(id)a3;
- (void)paste:(id)a3;
- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5;
- (void)pasteboardManager:(id)a3 presentAlert:(id)a4;
- (void)performUIAction:(id)a3 block:(id)a4 cancelBlock:(id)a5;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)recursiveAnimationRemoveForSmallLayers:(id)a3;
- (void)recursiveBuildJournal:(id)a3 ofViewControllerSubtree:(id)a4 transitioningToTraitCollection:(id)a5 stopCondition:(id)a6;
- (void)refreshErrors;
- (void)restoreEventDetailViewControllers:(id)a3;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchResultsViewController:(id)a3 didSelectEvent:(id)a4;
- (void)selectTodayWithTrigger:(int64_t)a3 animated:(BOOL)a4;
- (void)selectViewType:(int64_t)a3;
- (void)setNavBarStringFromDate:(id)a3 includeMonth:(BOOL)a4 includeYear:(BOOL)a5;
- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setupPresentationControllerIfStyleIsPopover:(int64_t)a3 barButtonItem:(id)a4 passThroughViews:(id)a5 permittedArrowDirections:(unint64_t)a6 sourceRect:(CGRect)a7 sourceView:(id)a8 viewController:(id)a9;
- (void)showAddEventAnimated:(BOOL)a3 completion:(id)a4;
- (void)showAddEventAnimated:(BOOL)a3 fromBarButtonItem:(id)a4;
- (void)showAddEventAnimated:(BOOL)a3 fromBarButtonItem:(id)a4 withTitle:(id)a5 startDate:(id)a6 exactStartDate:(id)a7 endDate:(id)a8 location:(id)a9 suggestionKey:(id)a10 allDay:(BOOL)a11 completion:(id)a12;
- (void)showCalendarsAnimated:(BOOL)a3 completion:(id)a4;
- (void)showContactWithIdentifier:(id)a3;
- (void)showDate:(id)a3 andTime:(BOOL)a4 animated:(BOOL)a5;
- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6;
- (void)showEventWithIdentifier:(id)a3 isSearchResult:(BOOL)a4 date:(id)a5 context:(id)a6;
- (void)showNewEvent:(id)a3;
- (void)showSearchBar:(BOOL)a3;
- (void)subtitleLabelTapped;
- (void)todayPressed;
- (void)toggleDayViewMode:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackButtonToDate:(id)a3;
- (void)updateCurrentIdentity:(BOOL)a3;
- (void)updateDayViewModeContainer;
- (void)updateDeviceOrientationForJumpToTodayTip;
- (void)updateDividedMonthBarButtonItemAnimated:(BOOL)a3;
- (void)updateErrorWithErrorDisplayManager;
- (void)updateLabelNoErrorWithText:(id)a3;
- (void)updateLabelWithAccountIdentifier:(id)a3 error:(unint64_t)a4;
- (void)updateNavigationBarButtonItemsWithViewController:(id)a3;
- (void)updateSelectedDateForJumpToTodayTip;
- (void)updateShouldDisplayJumpToTodayTip;
- (void)updateTitleToDate:(id)a3 yearOnly:(BOOL)a4;
- (void)updateTodayButtonDayOfWeek:(id)a3 dayOfMonth:(id)a4 compact:(BOOL)a5;
- (void)updateToolbarItemsWithViewController:(id)a3;
- (void)updateViewPickerToViewType:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)weekViewController:(id)a3 didEditEvent:(id)a4 creationMethod:(unint64_t)a5;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RootNavigationController

- (void)_setupTitleViewIfNeeded
{
  if (self->_titleView)
  {
    return;
  }

  v14 = [(RootNavigationController *)self traitCollection];
  if ([v14 horizontalSizeClass] != 1)
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
    v14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"subtitleLabelTapped"];
    [(UILabel *)self->_subtitleLabel setUserInteractionEnabled:1];
    [(UILabel *)self->_subtitleLabel addGestureRecognizer:v14];
    [(RootNavigationErrorDisplayManager *)self->_errorDisplayManager start];
    goto LABEL_10;
  }

  v3 = [(RootNavigationController *)self presentedViewController];
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
  v4 = [v3 lastViewMode];
  v5 = [v4 integerValue];

  if (v5 <= 2)
  {
    if (v5 != -1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = [(RootNavigationController *)self model];
      [v6 setShowDayAsList:0];

      v7 = +[MultiDayWeekView numMultiDays];
      v8 = [(RootNavigationController *)self model];
      [v8 setNumDaysToShow:v7];
      v5 = 2;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v5 == 3)
  {
LABEL_10:
    v9 = [(RootNavigationController *)self model];
    [v9 setShowDayAsList:0];

    v8 = [(RootNavigationController *)self model];
    [v8 setNumDaysToShow:1];
    v5 = 3;
    goto LABEL_11;
  }

  if (v5 != 4)
  {
    goto LABEL_12;
  }

  v8 = [(RootNavigationController *)self model];
  [v8 setShowDayAsList:1];
LABEL_11:

LABEL_12:
  v10 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Root Navigation Controller restoring last view type: %d", v13, 8u);
  }

  v11 = [(CUIKCalendarModel *)self->_model selectedDate];
  v12 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:v5 andDate:v11];
}

- (id)_ensureStackBaseCalendarViewControllerContainerIsPresent
{
  v3 = [(RootNavigationController *)self classForStackBaseContainerForCurrentTraits];
  v4 = [(RootNavigationController *)self viewControllers];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 currentChildViewController];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 firstObject];
      v10 = [objc_opt_class() isEqual:v3];

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

  v12 = [v3 alloc];
  v13 = [(RootNavigationController *)self model];
  v14 = [(RootNavigationController *)self window];
  v11 = [v12 initWithModel:v13 window:v14];

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
  v2 = [(RootNavigationController *)self viewControllers];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
  v4 = [(RootNavigationController *)self view];
  v5 = +[UIColor systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [[PaletteView alloc] initWithBarPalette:self->_palette];
  paletteView = self->_paletteView;
  self->_paletteView = v6;

  v8 = [[_UINavigationBarPalette alloc] initWithContentView:self->_paletteView];
  palette = self->_palette;
  self->_palette = v8;

  [(PaletteView *)self->_paletteView setContainingPalette:self->_palette];
  if (CalSystemSolariumEnabled())
  {
    v10 = [(RootNavigationController *)self view];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
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
  v3 = objc_getAssociatedObject(self, [(RootNavigationController *)self ekui_futureTraitCollectionCategoryPropertyKey]);
  if (!v3)
  {
    v3 = [(RootNavigationController *)self traitCollection];
  }

  return v3;
}

- (id)traitCollection
{
  v8.receiver = self;
  v8.super_class = RootNavigationController;
  v3 = [(RootNavigationController *)&v8 traitCollection];
  if (EKUIOverriddenTraitsBasedOnWindowGeometryIsEnforced())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B162C;
    v7[3] = &unk_100210828;
    v7[4] = self;
    v4 = [v3 traitCollectionByModifyingTraits:v7];
  }

  else
  {
    v4 = v3;
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
  v7 = [v6 imageFlippedForRightToLeftLayoutDirection];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000B50B4;
  v50[3] = &unk_100210988;
  v8 = v3;
  v51 = v8;
  v9 = [UIAction actionWithTitle:v5 image:v7 identifier:0 handler:v50];
  minimalScaleAction = self->_minimalScaleAction;
  self->_minimalScaleAction = v9;

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"Stacked" value:&stru_1002133B8 table:0];
  v13 = [UIImage _systemImageNamed:@"event.compact.2"];
  v14 = [v13 imageFlippedForRightToLeftLayoutDirection];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000B50CC;
  v48[3] = &unk_100210988;
  v15 = v8;
  v49 = v15;
  v16 = [UIAction actionWithTitle:v12 image:v14 identifier:0 handler:v48];
  compactScaleAction = self->_compactScaleAction;
  self->_compactScaleAction = v16;

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"Details" value:&stru_1002133B8 table:0];
  v20 = [UIImage _systemImageNamed:@"event.2.text"];
  v21 = [v20 imageFlippedForRightToLeftLayoutDirection];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000B50E4;
  v46[3] = &unk_100210988;
  v22 = v15;
  v47 = v22;
  v23 = [UIAction actionWithTitle:v19 image:v21 identifier:0 handler:v46];
  largeScaleAction = self->_largeScaleAction;
  self->_largeScaleAction = v23;

  v25 = [NSBundle bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"List" value:&stru_1002133B8 table:0];
  v27 = [UIImage _systemImageNamed:@"list.bullet.below.rectangle"];
  v28 = [v27 imageFlippedForRightToLeftLayoutDirection];
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_1000B5150;
  v44 = &unk_100210988;
  v29 = v22;
  v45 = v29;
  v30 = [UIAction actionWithTitle:v26 image:v28 identifier:0 handler:&v41];
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
  v2 = [(RootNavigationController *)self ekui_futureTraitCollection];
  v3 = [v2 horizontalSizeClass];

  return v3;
}

- (UIBarButtonItem)searchBarButtonItem
{
  searchBarButtonItem = self->_searchBarButtonItem;
  if (!searchBarButtonItem)
  {
    v4 = [(RootNavigationController *)self newSearchBarButtonItem];
    v5 = self->_searchBarButtonItem;
    self->_searchBarButtonItem = v4;

    searchBarButtonItem = self->_searchBarButtonItem;
  }

  return searchBarButtonItem;
}

- (id)newSearchBarButtonItem
{
  if (CalSolariumEnabled())
  {
    v3 = [(RootNavigationController *)self searchController];
    v4 = [v3 _inlineToolbarSearchBarItem];

    [v4 setTarget:self];
  }

  else
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:12 target:self action:"_searchPressed"];
  }

  [v4 setAccessibilityIdentifier:@"searchbar-button"];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v5 = CalendarAppTintColor();
    [v4 setTintColor:v5];
  }

  return v4;
}

- (id)_compactMonthDividedListSwitchBarButtonItem
{
  dividedMonthToggleBarButtonItem = self->_dividedMonthToggleBarButtonItem;
  if (!dividedMonthToggleBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithImage:0 menu:0];
    v5 = self->_dividedMonthToggleBarButtonItem;
    self->_dividedMonthToggleBarButtonItem = v4;

    v6 = [(RootNavigationController *)self compactMonthMenu];
    [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setMenu:v6];

    [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:0];
    [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setAccessibilityIdentifier:@"toggle-month-view"];
    dividedMonthToggleBarButtonItem = self->_dividedMonthToggleBarButtonItem;
  }

  return dividedMonthToggleBarButtonItem;
}

- (void)_updateInteractivePopAllowed
{
  v3 = [(RootNavigationController *)self navigationItem];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    v5 = [(RootNavigationController *)self window];
    IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

    if (IsCompactInViewHierarchy)
    {
      v9 = [(RootNavigationController *)self topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v8 = [(RootNavigationController *)self interactivePopGestureRecognizer];
      [v8 setEnabled:(isKindOfClass & 1) == 0];
    }

    else
    {
      v9 = [(RootNavigationController *)self interactivePopGestureRecognizer];
      [v9 setEnabled:0];
    }
  }
}

- (UIBarButtonItem)addEventBarButtonItem
{
  addEventBarButtonItem = self->_addEventBarButtonItem;
  if (!addEventBarButtonItem)
  {
    v4 = [(RootNavigationController *)self newAddEventBarButtonItem];
    v5 = self->_addEventBarButtonItem;
    self->_addEventBarButtonItem = v4;

    addEventBarButtonItem = self->_addEventBarButtonItem;
  }

  return addEventBarButtonItem;
}

- (int64_t)currentViewType
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  if (!v2)
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
  v3 = [(RootNavigationController *)self calendarsButtonTitle];
  calendarsButton = self->_calendarsButton;
  if (calendarsButton)
  {
    v7 = v3;
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
  v3 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];

  if (v3)
  {
    v4 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    [v4 title];
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    [v4 localizedStringForKey:@"Calendars" value:&stru_1002133B8 table:0];
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
  v3 = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(RootNavigationController *)self view];
    v6 = [v5 window];
    v7 = [v6 windowScene];
    v8 = [v7 interfaceOrientation];

    return 1 << v8;
  }

  else
  {
    v10 = [(RootNavigationController *)self visibleViewController];
    v11 = v10;
    if (v10)
    {
      v9 = [v10 supportedInterfaceOrientations];
    }

    else if ([(RootNavigationController *)self activeWidthSizeClass]== 1)
    {
      v9 = 26;
    }

    else
    {
      v9 = 30;
    }
  }

  return v9;
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
  v3 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v4 = [(RootNavigationController *)self topMainViewControllerContainer];
  if (([v4 currentChildViewControllerIsLoaded] & 1) == 0)
  {
    v5 = [(RootNavigationController *)self topViewController];

    if (v4 == v5)
    {
      [v4 setupForViewAppearance];
    }
  }

  if (CalUIKitNavBarEnabled())
  {
    if (!self->_viewSwitcherContainerView)
    {
      v6 = [CalNavigationBarTitleView alloc];
      v7 = [(RootNavigationController *)self viewSwitcher];
      v8 = [(CalNavigationBarTitleView *)v6 initWithContents:v7];
      viewSwitcherContainerView = self->_viewSwitcherContainerView;
      self->_viewSwitcherContainerView = v8;
    }

    v10 = [(RootNavigationController *)self traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = self->_viewSwitcherContainerView;
    }

    v13 = [v4 navigationItem];
    [v13 setTitleView:v12];
  }

  [(RootNavigationController *)self _updateViewSwitcherSegmentWidthsAfterWindowSizeChange];
  [(RootNavigationController *)self _updateNavbarStringForNewStateAfterWindowSizeChange];
  v14 = [(RootNavigationController *)self topViewController];
  if (v4 == v14)
  {
    extendedLaunchOver = self->_extendedLaunchOver;

    if (extendedLaunchOver)
    {
      [(RootNavigationController *)self updateNavigationBarButtonItemsWithViewController:v4];
      [(RootNavigationController *)self updateToolbarItemsWithViewController:v4];
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
    v4 = [(CUIKCalendarModel *)self->_model selectedDate];
    v5 = [v4 calendarDateForDay];
    v6 = [v5 date];

    v7 = [(CUIKCalendarModel *)self->_model calendar];
    v8 = [v7 dateByAddingUnit:16 value:-5 toDate:v15 options:0];

    v9 = [(CUIKCalendarModel *)self->_model calendar];
    v10 = [v6 isBeforeDayForDate:v8 inCalendar:v9];

    v11 = [(CUIKCalendarModel *)self->_model calendar];
    v12 = [v11 dateByAddingUnit:16 value:5 toDate:v15 options:0];

    v13 = [(CUIKCalendarModel *)self->_model calendar];
    LOBYTE(v11) = [v6 isAfterDayForDate:v12 inCalendar:v13];

    v14 = +[CalendarTipsManager sharedManager];
    [v14 donateIsSelectedDateFiveDaysAwayFromToday:(v10 | v11) & 1];
  }
}

- (UISegmentedControl)viewSwitcher
{
  viewSwitcherSegmentedControl = self->_viewSwitcherSegmentedControl;
  if (viewSwitcherSegmentedControl)
  {
    v3 = viewSwitcherSegmentedControl;
  }

  else
  {
    v3 = [(RootNavigationController *)self _viewSwitcherSegmentedControl];
  }

  return v3;
}

- (id)_viewSwitcherSegmentedControl
{
  viewSwitcherSegmentedControl = self->_viewSwitcherSegmentedControl;
  if (!viewSwitcherSegmentedControl)
  {
    v4 = [(RootNavigationController *)self _viewSwitcherLabelStrings];
    v5 = [[SplitViewSegmentedControl alloc] initWithItems:v4];
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
      v9 = [(RootNavigationController *)self splitViewRootDelegate];
      [(UISegmentedControl *)self->_viewSwitcherSegmentedControl setSplitViewController:v9];
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
    v4 = [(RootNavigationController *)self window];
    if (EKUICurrentHeightSizeClassIsRegular())
    {
      v5 = [(RootNavigationController *)self window];
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
  v3 = [(RootNavigationController *)self _viewSwitcherLabelStrings];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BCBC;
  v6[3] = &unk_100210E10;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_updateViewSwitcherFont
{
  v3 = [(RootNavigationController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (CalSystemSolariumEnabled())
  {
    v5 = 15.0;
  }

  else
  {
    v5 = 13.0;
  }

  if (UIContentSizeCategoryCompareToCategory(v4, UIContentSizeCategoryExtraExtraLarge) == NSOrderedDescending)
  {
    v6 = 4.0;
  }

  else
  {
    if (UIContentSizeCategoryCompareToCategory(v4, UIContentSizeCategoryExtraLarge) != NSOrderedDescending)
    {
      if (UIContentSizeCategoryCompareToCategory(v4, UIContentSizeCategoryLarge) == NSOrderedDescending)
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
    v11 = [(RootNavigationController *)self _viewSwitcherLabelStrings];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C1844;
    v19[3] = &unk_100210E38;
    *&v19[6] = v7;
    v19[4] = self;
    v19[5] = &v20;
    [v11 enumerateObjectsUsingBlock:v19];

    v12 = v21[3];
    v7 = v7 + -1.0;
    _Block_object_dispose(&v20, 8);
  }

  while (v12 > v9);
  v13 = [(RootNavigationController *)self viewSwitcher];
  v26 = NSFontAttributeName;
  v14 = [(RootNavigationController *)self _switcherFontOfSize:0 isSemibold:v10];
  v27 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v13 setTitleTextAttributes:v15 forState:0];

  v16 = [(RootNavigationController *)self viewSwitcher];
  v24 = NSFontAttributeName;
  v17 = [(RootNavigationController *)self _switcherFontOfSize:1 isSemibold:v10];
  v25 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v16 setTitleTextAttributes:v18 forState:4];
}

- (void)_updateViewSwitcherSegmentWidthsAfterWindowSizeChange
{
  if ([(RootNavigationController *)self activeWidthSizeClass]== 2)
  {
    v3 = [(RootNavigationController *)self viewSwitcher];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RootNavigationController *)self _setSegmentWidthsForViewSwitcher:v3];
      [(RootNavigationController *)self _updateDateLabelFrame];
    }
  }
}

- (void)_updateNavbarStringForNewStateAfterWindowSizeChange
{
  if ([(RootNavigationController *)self activeWidthSizeClass]== 2)
  {
    v3 = [(RootNavigationController *)self topMainViewControllerContainer];
    if (objc_opt_respondsToSelector())
    {
      [v3 updateNavigationBarDisplayedDateString];
    }
  }
}

- (void)_setupSearchController
{
  if (CalSolariumEnabled())
  {
    v3 = [(RootNavigationController *)self searchController];

    if (!v3)
    {
      v4 = [SearchResultsViewController alloc];
      v5 = [(RootNavigationController *)self model];
      v6 = [(RootNavigationController *)self window];
      v7 = [(SearchResultsViewController *)v4 initWithModel:v5 window:v6];
      searchResultVC = self->_searchResultVC;
      self->_searchResultVC = v7;

      v11 = [[UISearchController alloc] initWithSearchResultsController:self->_searchResultVC];
      v9 = [v11 searchBar];
      [v9 setDelegate:self];

      [v11 setSearchResultsUpdater:self->_searchResultVC];
      v10 = [v11 searchBar];
      [(SearchResultsViewController *)self->_searchResultVC setSearchBar:v10];

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
  v3 = [(RootNavigationController *)self model];
  v4 = [v3 showDayAsList];

  if (v4)
  {
    return 2;
  }

  v6 = [(RootNavigationController *)self model];
  v5 = [v6 numDaysToShow] > 1;

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

  v8 = [(RootNavigationController *)self model];
  if ([v8 showDayAsList])
  {
  }

  else
  {
    v9 = [(RootNavigationController *)self model];
    v10 = [v9 numDaysToShow];

    if (v10 < 2)
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

  v17 = [(RootNavigationController *)self model];
  if ([v17 showDayAsList])
  {
  }

  else
  {
    v18 = [(RootNavigationController *)self model];
    v19 = [v18 numDaysToShow];

    if (v19 == 2)
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

  v26 = [(RootNavigationController *)self model];
  LODWORD(v21) = [v26 showDayAsList];

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
  v3 = [(RootNavigationController *)self _calendarsButtonHasBackground];
  v4 = [(RootNavigationController *)self model];
  v5 = [v4 accountsInInitialSyncCount];

  v6 = [(RootNavigationController *)self model];
  v7 = [(RootNavigationController *)self model];
  v8 = [v7 sourceForSelectedIdentity];
  v10 = [v6 displayableAccountErrorsForSource:v8] > 0 && v5 < 1;

  if (v3)
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
    v20 = [(RootNavigationController *)self calendarsButtonTitle];
    v21 = [v19 initWithString:v20 attributes:v14];
    [v11 setAttributedTitle:v21];

    [v11 setTitleAlignment:2];
  }

  if (v5 >= 1)
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
    v24 = [v11 background];
    [v24 setCornerRadius:20.0];

    v25 = 15.0;
    v26 = 0.0;
    v27 = 0.0;
  }

  else
  {
    if (v3)
    {
      CalendarAppBarButtonItemTintColor();
    }

    else
    {
      +[UIColor clearColor];
    }
    v28 = ;
    v29 = [v11 background];
    [v29 setBackgroundColor:v28];

    v30 = [v11 background];
    [v30 setCornerRadius:5.0];

    [v11 contentInsets];
    v25 = 6.0;
  }

  [v11 setContentInsets:{v26, v25, v27, v25}];

  return v11;
}

- (BOOL)_calendarsButtonHasBackground
{
  v2 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
  v3 = v2 != 0;

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
  v2 = [(RootNavigationController *)self window];
  v3 = [v2 interfaceOrientation] - 1 < 2;

  v4 = +[CalendarTipsManager sharedManager];
  [v4 donateIsPortraitOrientation:v3];
}

- (void)_updateCalendarsButtonConfiguration
{
  [(UIButton *)self->_calendarsButton setNeedsUpdateConfiguration];
  v5 = [(UIButton *)self->_calendarsButton superview];
  if (CalSolariumEnabled())
  {
    v3 = [(RootNavigationController *)self calendarsButtonTitle];
    [v5 setAccessibilityLabel:v3];
  }

  else
  {
    v3 = [(UIButton *)self->_calendarsButton configuration];
    v4 = [v3 title];
    [v5 setAccessibilityLabel:v4];
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
  v7 = [(UIButton *)self->_calendarsButton widthAnchor];
  v8 = [v6 widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(UIButton *)self->_calendarsButton heightAnchor];
  v11 = [v6 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(UIButton *)self->_calendarsButton centerXAnchor];
  v14 = [v6 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(UIButton *)self->_calendarsButton centerYAnchor];
  v17 = [v6 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  [(RootNavigationController *)self _updateFilterLabel];
  v19 = [[UIBarButtonItem alloc] initWithCustomView:v6];
  v20 = [(RootNavigationController *)self calendarsButtonTitle];
  [v19 setTitle:v20];

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
  v3 = [(RootNavigationController *)self inboxBarButtonItem];

  if (v3)
  {

    [(RootNavigationController *)self _updateInboxBarButtonItem];
  }

  else
  {
    if (CalSystemSolariumEnabled())
    {
      v4 = [(RootNavigationController *)self traitCollection];
      v5 = [v4 legibilityWeight] == 1;

      v6 = [UIBarButtonItem alloc];
      v7 = [MainWindowControlHeaderView inboxImageForCount:[(RootNavigationController *)self numberOfNotifications] selected:0 forToolbar:1 bold:v5];
      v11 = [v6 initWithImage:v7 style:0 target:self action:"inboxPressed"];

      [(RootNavigationController *)self setInboxBarButtonItem:v11];
      v8 = [(RootNavigationController *)self inboxBarButtonItem];
      [v8 setAccessibilityIdentifier:@"inbox-button"];

      v9 = CalendarAppBarButtonItemTintColor();
      v10 = [(RootNavigationController *)self inboxBarButtonItem];
      [v10 setTintColor:v9];
    }

    else
    {
      v11 = [objc_opt_class() _inboxTitleForNotificationCount:{-[RootNavigationController numberOfNotifications](self, "numberOfNotifications")}];
      v9 = [[ToolbarBarButtonItem alloc] initWithTitle:v11 target:self action:"inboxPressed"];
      [(RootNavigationController *)self setInboxBarButtonItem:v9];
      v10 = [(RootNavigationController *)self inboxBarButtonItem];
      [v10 setAccessibilityIdentifier:@"inbox-button"];
    }
  }
}

- (unint64_t)numberOfNotifications
{
  if (!self->_hasLoadedInitialNotificationCount)
  {
    v3 = [(RootNavigationController *)self model];
    self->_numberOfNotifications = [v3 eventNotificationsForCurrentIdentityCount];

    self->_hasLoadedInitialNotificationCount = 1;
  }

  return self->_numberOfNotifications;
}

- (void)updateErrorWithErrorDisplayManager
{
  errorDisplayManager = self->_errorDisplayManager;
  v3 = [(RootNavigationController *)self sourceErrorsDictionary];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__NSDictionary0__struct;
  }

  [(RootNavigationErrorDisplayManager *)errorDisplayManager updateContentWith:v4];
}

- (id)_getSources
{
  v2 = [(RootNavigationController *)self model];
  v3 = [v2 eventStore];
  v4 = [v3 sources];

  return v4;
}

- (void)updateShouldDisplayJumpToTodayTip
{
  if (self->_extendedLaunchOver)
  {
    v4 = [(RootNavigationController *)self currentViewType];
    v5 = [(RootNavigationController *)self currentViewType];
    if (v4 == 3 || v5 == 4 && (-[RootNavigationController traitCollection](self, "traitCollection"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 horizontalSizeClass], v9, v10 == 1))
    {
      v6 = +[CalendarTipsManager sharedManager];
      v7 = [(RootNavigationController *)self topViewController];
      [v6 updatePresentedControllerTo:v7];

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
  v3 = [(RootNavigationController *)self window];
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

- (RootNavigationController)initWithModel:(id)a3 targetWindow:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = RootNavigationController;
  v9 = [(RootNavigationController *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, a3);
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
    objc_storeWeak(&v15->_window, v8);
    v17 = [(CUIKCalendarModel *)v10->_model undoManager];
    v32 = [v17 undoableEditor];

    v18 = [CUIKIPendingReminderTracker alloc];
    v19 = [(CUIKCalendarModel *)v10->_model eventStore];
    v20 = [v18 initWithEventStore:v19];

    [v7 setPendingReminderTracker:v20];
    v21 = [CUIKIReminderEditor alloc];
    [(CUIKCalendarModel *)v10->_model eventStore];
    v22 = v8;
    v24 = v23 = v7;
    v25 = [(CUIKCalendarModel *)v10->_model undoManager];
    v26 = [v21 initWithEventStore:v24 undoManager:v25 alertDisplayer:v15 pendingReminderTracker:v20];

    v27 = [CUIKCompositeEditor alloc];
    v36[0] = v32;
    v36[1] = v26;
    v28 = [NSArray arrayWithObjects:v36 count:2];
    v29 = [v27 initWithEditors:v28];

    v30 = [(CUIKCalendarModel *)v10->_model undoManager];
    [v30 setUndoableEditor:v29];

    v7 = v23;
    v8 = v22;
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

- (void)viewDidAppear:(BOOL)a3
{
  v33.receiver = self;
  v33.super_class = RootNavigationController;
  [(RootNavigationController *)&v33 viewDidAppear:a3];
  if (CalSolariumEnabled())
  {
    v4 = [(RootNavigationController *)self view];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(RootNavigationController *)self view];
    v28 = [v31 leadingAnchor];
    v30 = [(RootNavigationController *)self view];
    v29 = [v30 superview];
    v27 = [v29 safeAreaLayoutGuide];
    v26 = [v27 leadingAnchor];
    v25 = [v28 constraintEqualToAnchor:v26];
    v34[0] = v25;
    v24 = [(RootNavigationController *)self view];
    v21 = [v24 trailingAnchor];
    v23 = [(RootNavigationController *)self view];
    v22 = [v23 superview];
    v20 = [v22 safeAreaLayoutGuide];
    v19 = [v20 trailingAnchor];
    v18 = [v21 constraintEqualToAnchor:v19];
    v34[1] = v18;
    v17 = [(RootNavigationController *)self view];
    v15 = [v17 topAnchor];
    v16 = [(RootNavigationController *)self view];
    v14 = [v16 superview];
    v5 = [v14 topAnchor];
    v6 = [v15 constraintEqualToAnchor:v5];
    v34[2] = v6;
    v7 = [(RootNavigationController *)self view];
    v8 = [v7 bottomAnchor];
    v9 = [(RootNavigationController *)self view];
    v10 = [v9 superview];
    v11 = [v10 bottomAnchor];
    v12 = [v8 constraintEqualToAnchor:v11];
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

- (void)_contentSizeCategoryChanged:(id)a3
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

- (void)_focusModeConfigurationChanged:(id)a3
{
  [(RootNavigationController *)self _updateFilterLabelAnimate:1];
  v4 = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self _updatePaletteStateWithViewController:v4];

  if (self->_focusButton)
  {
    v5 = [(RootNavigationController *)self model];
    -[EKUIFocusBannerViewModern setOn:](self->_focusButton, "setOn:", [v5 focusFilterMode] == 1);

    v6 = [(RootNavigationController *)self splitViewDelegate];
    [v6 updateNavigationBarButtons];

    v7 = [(RootNavigationController *)self splitViewRootDelegate];
    [v7 updateNavigationBarButtons];
  }
}

- (void)_selectedDateChanged:(id)a3
{
  [(RootNavigationController *)self _setNeedsUserActivityUpdate];

  [(RootNavigationController *)self updateSelectedDateForJumpToTodayTip];
}

- (void)_identityChanged:(id)a3
{
  [(RootNavigationController *)self updateCurrentIdentity:1];
  [(RootNavigationController *)self _updateCalendarButtonAccessory];
  [(RootNavigationController *)self refreshErrors];
  [(RootNavigationController *)self _updateAddEventButtonEnabledness];

  [(RootNavigationController *)self _notificationCountChanged:0];
}

- (void)_delegatesChanged:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CUIKCalendarModel *)self->_model sortedEnabledDelegates:a3];
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

        v9 = [*(*(&v13 + 1) + 8 * v8) sourceIdentifier];
        v10 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
        v11 = [v10 sourceIdentifier];
        v12 = [v9 isEqualToString:v11];

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

- (void)focusBannerViewToggled:(id)a3
{
  if ([a3 on])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [(RootNavigationController *)self model];
  [v5 setFocusFilterMode:v4];
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

- (void)_updateAfterExtendedLaunch:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B1C30;
  v5[3] = &unk_10020EC68;
  v6 = a3;
  v7 = self;
  v4 = v6;
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
      v6 = [v5 disableContinuity];

      if ((v6 & 1) == 0)
      {
        v7 = [(CUIKCalendarModel *)self->_model selectedOccurrence];

        v8 = [(RootNavigationController *)self shouldDonateTomorrowActivity];
        if (v7)
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
          v12 = v8;
          v13 = &OBJC_IVAR___RootNavigationController__userActivityForDateInView;
          if (v8)
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
        v16 = [(CUIKCalendarModel *)self->_model selectedOccurrence];

        if (v16)
        {
          v17 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
          v18 = [CSSearchableItemAttributeSet alloc];
          v19 = [v3 activityType];
          v20 = [v18 initWithItemContentType:v19];

          v21 = [v17 title];
          [v20 setContentDescription:v21];

          v22 = [v17 structuredLocation];
          v23 = [v22 title];
          [v20 setNamedLocation:v23];

          v24 = [v22 geoLocation];
          v25 = v24;
          if (v24)
          {
            [v24 coordinate];
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

          v29 = [v17 virtualConference];
          v30 = [v29 firstPhoneNumber];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = [v17 conferenceURLForDisplay];
          }

          v33 = v32;

          if ([v33 cal_hasSchemeTel])
          {
            v34 = [v33 absoluteString];
            v36 = v34;
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

- (void)_saveUserActivityInfo:(id)a3
{
  v14 = a3;
  v4 = [(RootNavigationController *)self currentViewType];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1001F8410[v4];
  }

  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  v7 = [(RootNavigationController *)self shouldDonateTomorrowActivity];
  if (v6)
  {
    v8 = [[CUIKUserActivityCalendarEvent alloc] initWithEvent:v6 view:v5];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v7)
    {
      v9 = CUIKUserActivityTomorrow;
    }

    else
    {
      v9 = CUIKUserActivityCalendarDate;
    }

    v10 = [v9 alloc];
    v11 = [(CUIKCalendarModel *)self->_model selectedDate];
    v12 = [v11 date];
    v13 = [(CUIKCalendarModel *)self->_model calendar];
    v8 = [v10 initWithDate:v12 view:v5 calendar:v13];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [v8 updateActivity:v14];
LABEL_7:
}

- (BOOL)shouldDonateTomorrowActivity
{
  v2 = [(CUIKCalendarModel *)self->_model selectedDay];
  v3 = CUIKTodayComponents();
  v4 = [v2 timeZone];
  v5 = [EKCalendarDate calendarDateWithDateComponents:v3 timeZone:v4];

  LOBYTE(v4) = [v2 differenceInDays:v5] == 1;
  return v4;
}

- (void)showSearchBar:(BOOL)a3
{
  v3 = a3;
  v4 = [(RootNavigationController *)self searchController];
  [v4 setShowsSearchResultsController:v3];
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  if (CalSolariumEnabled() && [(RootNavigationController *)self activeWidthSizeClass]== 1)
  {
    v4 = 1;
    [(RootNavigationController *)self showSearchBar:1];
  }

  else
  {
    [(RootNavigationController *)self showSearchBar:0];
    v5 = [(RootNavigationController *)self splitViewDelegate];
    [v5 showSearch];

    return 0;
  }

  return v4;
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  if (CalSolariumEnabled())
  {

    [(RootNavigationController *)self showSearchBar:0];
  }
}

- (void)updateNavigationBarButtonItemsWithViewController:(id)a3
{
  v4 = a3;
  if ([v4 allowsOverriddenRightNavigationBarItems])
  {
    [(RootNavigationController *)self _addButtonsToNavigationBarForViewController:v4];
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
      v11 = [v4 navigationItem];
      [v11 setLeftBarButtonItems:v10];
    }

    currentDateLabelString = self->_currentDateLabelString;
    self->_currentDateLabelString = 0;
    v13 = currentDateLabelString;

    [(RootNavigationController *)self _setCurrentDateLabelString:v13];
  }

  else
  {
    v14 = [v4 navigationItem];
    [v14 setHidesBackButton:1];

    v15 = [v4 navigationItem];
    [v15 setLeftBarButtonItems:0];

    v16 = [v4 navigationItem];
    [v16 setRightBarButtonItems:0];
  }
}

- (void)updateToolbarItemsWithViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 allowsOverriddenToolbarItems])
    {
      [(RootNavigationController *)self addToolbarButtonItemsWithViewController:v4];
      goto LABEL_13;
    }
  }

  else
  {
    if (([(RootNavigationController *)self isToolbarHidden]& 1) != 0)
    {
      goto LABEL_13;
    }

    v5 = [v4 toolbarItems];
    v6 = v5;
    if (v5 && [v5 count])
    {

      goto LABEL_13;
    }

    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
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

- (id)_contactForCurrentIdentity:(BOOL)a3
{
  v3 = a3;
  if ([(CUIKCalendarModel *)self->_model containsDelegateSources])
  {
    v5 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
    if (v5)
    {
      cachedContactsForSources = self->_cachedContactsForSources;
      if (cachedContactsForSources)
      {
        v7 = !v3;
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

      v10 = [v5 sourceIdentifier];
      v11 = [(NSMutableDictionary *)cachedContactsForSources objectForKeyedSubscript:v10];

      if (!v11)
      {
        v11 = contactForSource(v5);
        if (v11)
        {
          v12 = self->_cachedContactsForSources;
          v13 = [v5 sourceIdentifier];
          [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
        }
      }
    }

    else
    {
      v11 = [(RootNavigationController *)self _meContact];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_meContact
{
  cachedMeContact = self->_cachedMeContact;
  if (!cachedMeContact)
  {
    v4 = +[CalContactsProvider defaultProvider];
    v5 = [v4 unifiedMeContact];

    if (v5)
    {
      v6 = +[ContactsUtils defaultContactKeysToFetch];
      v7 = [ContactsUtils contactForContact:v5 keysToFetch:v6];
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

- (void)_meContactChangedNoticationReceived:(id)a3
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

- (void)updateCurrentIdentity:(BOOL)a3
{
  v3 = a3;
  [(RootNavigationController *)self _updateCalendarsButtonTitle];
  v8 = [(RootNavigationController *)self _contactForCurrentIdentity:v3];
  if (v8)
  {
    [(PaletteView *)self->_paletteView setAvatarContact:v8];
  }

  v5 = [(CUIKCalendarModel *)self->_model sourceForSelectedIdentity];
  errorDisplayManager = self->_errorDisplayManager;
  if (v5)
  {
    v7 = CUIKDisplayedTitleForSource();
    [(RootNavigationErrorDisplayManager *)errorDisplayManager updateNoErrorTextTo:v7];
  }

  else
  {
    [(RootNavigationErrorDisplayManager *)errorDisplayManager updateNoErrorTextTo:&stru_1002133B8];
  }
}

- (void)addToolbarButtonItemsWithViewController:(id)a3
{
  v4 = a3;
  [(RootNavigationController *)self setToolbarHidden:0 animated:0];
  v5 = [(RootNavigationController *)self todayBarButtonItem];

  if (!v5)
  {
    if (CalSolariumEnabled())
    {
      v6 = [(RootNavigationController *)self largeTodayBarButtonItem];
    }

    else
    {
      v7 = [ToolbarBarButtonItem alloc];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
      v6 = [(ToolbarBarButtonItem *)v7 initWithTitle:v9 target:self action:"todayPressed"];
    }

    [(RootNavigationController *)self setTodayBarButtonItem:v6];

    v10 = [(RootNavigationController *)self todayBarButtonItem];
    [v10 setAccessibilityIdentifier:@"today-button"];
  }

  [(RootNavigationController *)self _updateFilterLabel];
  v11 = [(RootNavigationController *)self calendarsBarButtonItem];

  if (v11)
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
    v12 = [(RootNavigationController *)self searchController];

    if (!v12)
    {
      [(RootNavigationController *)self _setupSearchControllerForViewController:v4];
    }
  }

  v13 = [v4 toolbarItems];

  if (!v13)
  {
    if (CalSolariumEnabled())
    {
      v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
      v16 = [(RootNavigationController *)self compactTodayBarButtonItem];
      v34[0] = v16;
      v34[1] = v14;
      v17 = [(RootNavigationController *)self calendarsBarButtonItem];
      v34[2] = v17;
      v18 = [(RootNavigationController *)self inboxBarButtonItem];
      v34[3] = v18;
      v19 = [(RootNavigationController *)self searchBarButtonItem];
      v34[4] = v19;
      v34[5] = v15;
      v20 = [(RootNavigationController *)self addEventBarButtonItem];
      v34[6] = v20;
      v21 = [NSArray arrayWithObjects:v34 count:7];

      [v4 setToolbarItems:v21 animated:1];
      v22 = [v4 toolbarItems];

      if (!v22)
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
        v24 = [(RootNavigationController *)self todayBarButtonItem];
        v33[0] = v24;
        v33[1] = v14;
        v25 = [(RootNavigationController *)self calendarsBarButtonItem];
        v33[2] = v25;
        v26 = [(RootNavigationController *)self inboxBarButtonItem];
        v33[3] = v26;
        v15 = [NSArray arrayWithObjects:v33 count:4];

        [v4 setToolbarItems:v15 animated:0];
        v27 = [v4 toolbarItems];

        if (!v27)
        {
          [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
        }
      }

      else
      {
        v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
        v28 = [(RootNavigationController *)self todayBarButtonItem];
        v32[0] = v28;
        v32[1] = v14;
        v29 = [(RootNavigationController *)self calendarsBarButtonItem];
        v32[2] = v29;
        v32[3] = v15;
        v30 = [(RootNavigationController *)self inboxBarButtonItem];
        v32[4] = v30;
        v31 = [NSArray arrayWithObjects:v32 count:5];

        [v4 setToolbarItems:v31 animated:0];
        [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
      }
    }
  }

  [(RootNavigationController *)self setShowingOverriddenToolbarItems:1];
}

- (void)_updateFilterLabelAnimate:(BOOL)a3
{
  if (a3)
  {
    v4 = [(RootNavigationController *)self calendarsBarButtonItem];
    v5 = [v4 customView];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B3284;
    v6[3] = &unk_10020EB00;
    v6[4] = self;
    [UIView transitionWithView:v5 duration:5242884 options:v6 animations:0 completion:0.2];
  }

  else
  {

    [(RootNavigationController *)self _updateFilterLabel];
  }
}

- (void)_updateInboxBarButtonItem
{
  v3 = [objc_opt_class() _inboxTitleForNotificationCount:{-[RootNavigationController numberOfNotifications](self, "numberOfNotifications")}];
  v4 = [(RootNavigationController *)self inboxBarButtonItem];
  [v4 setTitle:v3];

  if (CalSystemSolariumEnabled())
  {
    v5 = [(RootNavigationController *)self traitCollection];
    v6 = [v5 legibilityWeight] == 1;

    v8 = [MainWindowControlHeaderView inboxImageForCount:[(RootNavigationController *)self numberOfNotifications] selected:0 forToolbar:1 bold:v6];
    v7 = [(RootNavigationController *)self inboxBarButtonItem];
    [v7 setImage:v8];
  }
}

- (void)_setupSearchControllerForViewController:(id)a3
{
  v10 = a3;
  [(RootNavigationController *)self _setupSearchController];
  if ([(RootNavigationController *)self activeWidthSizeClass]== 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 currentChildViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass))
    {
      v6 = [v10 navigationItem];
      [v6 setSearchController:0];
    }

    else
    {
      v6 = [(RootNavigationController *)self searchController];
      v7 = [v10 navigationItem];
      [v7 setSearchController:v6];
    }

    v8 = [v10 navigationItem];
    [v8 setHidesSearchBarWhenScrolling:0];

    v9 = [v10 navigationItem];
    [v9 setPreferredSearchBarPlacement:0];
  }
}

- (UIBarButtonItem)largeFocusModeItem
{
  largeFocusModeItem = self->_largeFocusModeItem;
  if (!largeFocusModeItem)
  {
    v4 = objc_opt_new();
    [v4 setDelegate:self];
    v5 = [(RootNavigationController *)self model];
    [v4 setOn:{objc_msgSend(v5, "focusFilterMode") == 1}];

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
    v7 = [(RootNavigationController *)self delegatesMenu];
    [v6 setMenu:v7];

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
    v5 = [(RootNavigationController *)self viewPicker];
    v6 = [v4 initWithCustomView:v5];
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

    v6 = [(RootNavigationController *)self splitViewDelegate];
    v7 = [(UISearchController *)self->_largeSearchController searchBar];
    [v7 setDelegate:v6];

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
  v25 = [(UILabel *)self->_todayButtonDayOfWeek centerXAnchor];
  v24 = [v3 centerXAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v26[0] = v23;
  v22 = [(UILabel *)self->_todayButtonDayOfMonth centerXAnchor];
  v21 = [v3 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v26[1] = v20;
  v19 = [(UILabel *)self->_todayButtonDayOfWeek topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v19 constraintEqualToAnchor:v9 constant:4.0];
  v26[2] = v10;
  v11 = [(UILabel *)self->_todayButtonDayOfMonth topAnchor];
  v12 = [(UILabel *)self->_todayButtonDayOfWeek bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-5.0];
  v26[3] = v13;
  v14 = [(UILabel *)self->_todayButtonDayOfMonth bottomAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
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
  v25 = [(UILabel *)self->_todayButtonDayOfWeekCompact centerXAnchor];
  v24 = [v3 centerXAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v26[0] = v23;
  v22 = [(UILabel *)self->_todayButtonDayOfMonthCompact centerXAnchor];
  v21 = [v3 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v26[1] = v20;
  v19 = [(UILabel *)self->_todayButtonDayOfWeekCompact topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v19 constraintGreaterThanOrEqualToAnchor:v9 constant:2.0];
  v26[2] = v10;
  v11 = [(UILabel *)self->_todayButtonDayOfMonthCompact topAnchor];
  v12 = [(UILabel *)self->_todayButtonDayOfWeekCompact bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
  v26[3] = v13;
  v14 = [(UILabel *)self->_todayButtonDayOfMonthCompact bottomAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15 constant:2.0];
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
    v5 = [(RootNavigationController *)self todayButtonView];
    v6 = [v4 initWithCustomView:v5];
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
    v5 = [(RootNavigationController *)self compactTodayButtonView];
    v6 = [v4 initWithCustomView:v5];
    v7 = self->_compactTodayBarButtonItem;
    self->_compactTodayBarButtonItem = v6;

    compactTodayBarButtonItem = self->_compactTodayBarButtonItem;
  }

  return compactTodayBarButtonItem;
}

- (void)updateTodayButtonDayOfWeek:(id)a3 dayOfMonth:(id)a4 compact:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[NSDate CalSimulatedDateForNow];
  v10 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:2 options:0];
  v11 = 10.0;
  if (v5)
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
  v16 = [v15 localizedUppercaseString];
  v17 = [v14 initWithString:v16 attributes:v13];
  [v8 setAttributedText:v17];

  [v8 setAdjustsFontForContentSizeCategory:v5];
  v18 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleBody];

  if (v5)
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
  [v7 setAttributedText:v24];

  [v7 setAdjustsFontForContentSizeCategory:v5];
}

- (void)_significantDateChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:CUIKCalendarModelSignificantTimeChangeNotificationDayChangedKey];
  v6 = [v5 BOOLValue];

  if (v6)
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

- (void)_addButtonsToNavigationBarForViewController:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self splitViewDelegate];
  [v5 updateNavigationBarButtons];

  v6 = [(RootNavigationController *)self splitViewRootDelegate];
  [v6 updateNavigationBarButtons];

  if ([(RootNavigationController *)self activeWidthSizeClass]== 1)
  {
    [(RootNavigationController *)self setNavigationBarHidden:0 animated:0];
    if (CalSolariumEnabled())
    {
      v7 = &__NSArray0__struct;
    }

    else
    {
      v26 = [(RootNavigationController *)self addEventBarButtonItem];
      v106[0] = v26;
      v27 = [(RootNavigationController *)self searchBarButtonItem];
      v106[1] = v27;
      v7 = [NSArray arrayWithObjects:v106 count:2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v4 supportedToggleMode];
      if (v28 == 2)
      {
        v29 = [(RootNavigationController *)self _compactMonthDividedListSwitchBarButtonItem];
        if (!v29)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (v28 == 1)
      {
        v29 = [(RootNavigationController *)self _listViewSwitchBarButtonItem];
        self->_lastListToggleBarButtonDayViewMode = [(RootNavigationController *)self currentDayViewMode];
        v30 = [(RootNavigationController *)self imageNameForDayViewMode:[(RootNavigationController *)self currentDayViewMode]];
        v31 = [UIImage _systemImageNamed:v30];
        v32 = [v31 imageFlippedForRightToLeftLayoutDirection];

        lastDayNavButtonImageName = self->_lastDayNavButtonImageName;
        if (lastDayNavButtonImageName && ([(NSString *)lastDayNavButtonImageName isEqual:v30]& 1) == 0)
        {
          listToggleBarButtonItem = self->_listToggleBarButtonItem;
          v98 = v4;
          v80 = +[NSSymbolReplaceContentTransition replaceOffUpTransition];
          v81 = [v80 transitionWithByLayer];
          v82 = [NSSymbolReplaceContentTransition magicTransitionWithFallback:v81];
          v83 = +[NSSymbolEffectOptions optionsWithNonRepeating];
          [(UIBarButtonItem *)listToggleBarButtonItem setSymbolImage:v32 withContentTransition:v82 options:v83];

          v4 = v98;
        }

        else
        {
          [(UIBarButtonItem *)self->_listToggleBarButtonItem setImage:v32];
        }

        v84 = [(RootNavigationController *)self generateCurrentListToggleBarButtonItemMenu];
        [(UIBarButtonItem *)self->_listToggleBarButtonItem setMenu:v84];

        if (!v29)
        {
          goto LABEL_32;
        }

LABEL_31:
        v85 = [v7 arrayByAddingObject:v29];

        v7 = v85;
        goto LABEL_32;
      }
    }

    v29 = 0;
LABEL_32:
    v86 = CalSolariumEnabled();
    v87 = [v4 navigationItem];
    v88 = v87;
    if (v86)
    {
      [v87 setLeadingItemGroups:&__NSArray0__struct];

      v60 = [v4 navigationItem];
      [v60 setTrailingItemGroups:&__NSArray0__struct];
      goto LABEL_36;
    }

    v89 = [v87 rightBarButtonItems];
    v90 = [v89 isEqual:v7];

    if ((v90 & 1) == 0)
    {
      v91 = [v4 navigationItem];
      [v91 setRightBarButtonItems:&__NSArray0__struct animated:0];

      v60 = [v4 navigationItem];
      [v60 setRightBarButtonItems:v7 animated:0];
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (CalSolariumEnabled())
  {
    v8 = [(RootNavigationController *)self largeCurrentDateLabel];
    v9 = [(RootNavigationController *)self topViewController];
    v10 = [v9 navigationItem];
    [v10 setTitleView:v8];

    v11 = [(RootNavigationController *)self model];
    if ([v11 containsDelegateSources])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = [(RootNavigationController *)self model];
    v14 = [v13 focusFilterMode] + v12 != 0;

    v15 = [(RootNavigationController *)self topViewController];
    v16 = [v15 navigationItem];
    v17 = [v16 leadingItemGroups];
    v18 = [v17 firstObject];
    v19 = [v18 barButtonItems];
    v97 = v4;
    if ([v19 count] == v14)
    {
      v93 = [(RootNavigationController *)self topViewController];
      v20 = [v93 navigationItem];
      v21 = [v20 leadingItemGroups];
      v22 = [v21 firstObject];
      [v22 barButtonItems];
      v23 = v94 = v15;
      v24 = [v23 firstObject];
      [(RootNavigationController *)self largeAddEventBarButtonItem];
      v25 = v92 = v16;

      v4 = v97;
      if (v24 == v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    v34 = [UIBarButtonItemGroup alloc];
    v35 = [(RootNavigationController *)self largeAddEventBarButtonItem];
    v105 = v35;
    v36 = [NSArray arrayWithObjects:&v105 count:1];
    v7 = [v34 initWithBarButtonItems:v36 representativeItem:0];

    v29 = [NSMutableArray arrayWithObject:v7];
    v37 = [(RootNavigationController *)self model];
    LODWORD(v36) = [v37 containsDelegateSources];

    if (v36)
    {
      v38 = [UIBarButtonItemGroup alloc];
      v39 = [(RootNavigationController *)self largeDelegateSwitcherItem];
      v104 = v39;
      v40 = [NSArray arrayWithObjects:&v104 count:1];
      v41 = [v38 initWithBarButtonItems:v40 representativeItem:0];

      [v29 addObject:v41];
    }

    v42 = [(RootNavigationController *)self model];
    v43 = [v42 focusFilterMode];

    if (v43)
    {
      v44 = [UIBarButtonItemGroup alloc];
      v45 = [(RootNavigationController *)self largeFocusModeItem];
      v103 = v45;
      v46 = [NSArray arrayWithObjects:&v103 count:1];
      v47 = [v44 initWithBarButtonItems:v46 representativeItem:0];

      [v29 addObject:v47];
    }

    v48 = [(RootNavigationController *)self topViewController];
    v49 = [v48 navigationItem];
    [v49 setLeadingItemGroups:v29];

    v50 = [(RootNavigationController *)self topViewController];
    v51 = [v50 navigationItem];
    v52 = [v51 trailingItemGroups];
    v53 = [v52 firstObject];
    v54 = [v53 barButtonItems];
    v55 = [v54 firstObject];
    v56 = [(RootNavigationController *)self largeViewSwitcherItem];

    if (v55 != v56)
    {
      v57 = [UIBarButtonItemGroup alloc];
      v58 = [(RootNavigationController *)self largeViewSwitcherItem];
      v102 = v58;
      v59 = [NSArray arrayWithObjects:&v102 count:1];
      v60 = [v57 initWithBarButtonItems:v59 representativeItem:0];

      v61 = [UIBarButtonItemGroup alloc];
      v62 = [(RootNavigationController *)self largeSpacerBarButtonItem];
      v101 = v62;
      v63 = [NSArray arrayWithObjects:&v101 count:1];
      v95 = [v61 initWithBarButtonItems:v63 representativeItem:0];

      v64 = [UIBarButtonItemGroup alloc];
      v65 = [(RootNavigationController *)self largeTodayBarButtonItem];
      v100[0] = v65;
      v66 = [(RootNavigationController *)self largeSpacerBarButtonItem];
      v100[1] = v66;
      v67 = [NSArray arrayWithObjects:v100 count:2];
      v68 = [v64 initWithBarButtonItems:v67 representativeItem:0];

      v99[0] = v60;
      v99[1] = v95;
      v99[2] = v68;
      v69 = [NSArray arrayWithObjects:v99 count:3];
      v70 = [(RootNavigationController *)self topViewController];
      v71 = [v70 navigationItem];
      [v71 setTrailingItemGroups:v69];

      v72 = [(RootNavigationController *)self largeSearchController];
      v73 = [(RootNavigationController *)self topViewController];
      v74 = [v73 navigationItem];
      [v74 setSearchController:v72];

      v75 = [(RootNavigationController *)self splitViewDelegate];
      v76 = [(RootNavigationController *)self topViewController];
      v77 = [v76 navigationItem];
      v78 = [v77 searchController];
      v79 = [v78 searchBar];
      [v79 setDelegate:v75];

      v4 = v97;
LABEL_36:

      goto LABEL_37;
    }

    v4 = v97;
LABEL_37:
  }

LABEL_38:
}

- (void)updateDividedMonthBarButtonItemAnimated:(BOOL)a3
{
  v4 = [(RootNavigationController *)self model];
  v5 = [v4 showMonthAsDivided];

  if (v5)
  {
    v6 = @"list.bullet.below.rectangle";
    v7 = @"list";
    v8 = &OBJC_IVAR___RootNavigationController__listAction;
  }

  else
  {
    v9 = +[CUIKPreferences sharedPreferences];
    v10 = [v9 monthViewScaleSize];

    v8 = &OBJC_IVAR___RootNavigationController__minimalScaleAction;
    v11 = @"event.2.text";
    v12 = @"details";
    v13 = &OBJC_IVAR___RootNavigationController__largeScaleAction;
    if (v10 == 2)
    {
      v13 = &OBJC_IVAR___RootNavigationController__compactScaleAction;
      v12 = @"stacked";
      v11 = @"event.compact.2";
    }

    v14 = v10 == 1;
    if (v10 == 1)
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
    v18 = [v17 imageFlippedForRightToLeftLayoutDirection];

    [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setImage:v18];
  }
}

- (void)_monthWeekScaleChanged:(id)a3
{
  [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:1];
  v4 = [(RootNavigationController *)self compactMonthMenu];
  [(UIBarButtonItem *)self->_dividedMonthToggleBarButtonItem setMenu:v4];
}

- (BOOL)_isCurrentlyDraggingEvent
{
  v2 = [(RootNavigationController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 currentChildViewControllerIsLoaded])
    {
      v4 = [v3 currentChildViewController];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 currentlyEditingEventsWithGestures])
  {
    v5 = kCalUILogHandle;
    v6 = 1;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
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
    v3 = [(RootNavigationController *)self splitViewDelegate];
    [v3 updateCalendarBarButtonItem];
  }
}

- (BOOL)_updateCalendarButtonSpinner
{
  v3 = [(RootNavigationController *)self model];
  v4 = [v3 accountsInInitialSyncCount];

  v5 = [(UIButton *)self->_calendarsButton configuration];
  v6 = [v5 showsActivityIndicator];

  if ((((v4 < 1) ^ v6) & 1) == 0)
  {
    [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
  }

  return (v4 < 1) ^ v6 ^ 1;
}

- (BOOL)_updateCalendarButtonError
{
  v3 = [(RootNavigationController *)self model];
  v4 = [(RootNavigationController *)self model];
  v5 = [v4 sourceForSelectedIdentity];
  if ([v3 displayableAccountErrorsForSource:v5] < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(RootNavigationController *)self model];
    v7 = [v6 accountsInInitialSyncCount] == 0;
  }

  showingAccountErrors = self->_showingAccountErrors;
  if (showingAccountErrors != v7)
  {
    [(RootNavigationController *)self _updateCalendarsButtonConfiguration];
    self->_showingAccountErrors = v7;
  }

  return showingAccountErrors != v7;
}

- (void)_calendarErrorCountChanged:(id)a3
{
  [(RootNavigationController *)self _updateCalendarButtonAccessory];

  [(RootNavigationController *)self refreshErrors];
}

- (void)_accountsInInitialSyncCountChanged
{
  [(RootNavigationController *)self _updateCalendarButtonAccessory];

  [(RootNavigationController *)self refreshErrors];
}

- (id)_errorTextForError:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 <= 8 && ((0x1BFu >> v3) & 1) != 0)
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

- (void)openSearchLinkActionWithCompletion:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B5844;
  v7[3] = &unk_1002109D8;
  v8 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B5874;
  v5[3] = &unk_10020F680;
  v6 = v8;
  v4 = v8;
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
  v3 = [(RootNavigationController *)self largeAddEventBarButtonItem];
  [(RootNavigationController *)self showAddEventAnimated:1 fromBarButtonItem:v3];
}

- (void)subtitleLabelTapped
{
  if ([EKUIAccountErrorDisplayer errorIsActionable:self->_currentDisplayingError])
  {
    v4 = [(CUIKCalendarModel *)self->_model eventStore];
    v3 = [v4 sourceWithIdentifier:self->_currentDisplayingErrorAccount];
    [EKUIAccountErrorDisplayer presentAlertForAccount:v3 error:self->_currentDisplayingError usingViewController:self completion:0];
  }
}

- (void)performUIAction:(id)a3 block:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v29 = v14;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[UserStateLog] Action -> %{public}@ %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000B5E38;
  v23 = &unk_100210A60;
  objc_copyWeak(&v27, buf);
  v15 = v8;
  v24 = v15;
  v16 = v10;
  v25 = v16;
  v17 = v9;
  v26 = v17;
  v18 = objc_retainBlock(&v20);
  v19 = [CalendarTipsManager sharedManager:v20];
  [v19 dismissTipDueToUserNavigationWithCompletionBlock:v18];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)toggleDayViewMode:(int64_t)a3
{
  v5 = [(RootNavigationController *)self imageNameForDayViewMode:[(RootNavigationController *)self currentDayViewMode]];
  lastDayNavButtonImageName = self->_lastDayNavButtonImageName;
  self->_lastDayNavButtonImageName = v5;

  if (a3 == 2)
  {
    v8 = [(RootNavigationController *)self model];
    [v8 setShowDayAsList:1];
    v9 = @"list";
  }

  else if (a3 == 1)
  {
    v10 = [(RootNavigationController *)self model];
    [v10 setShowDayAsList:0];

    v11 = +[MultiDayWeekView numMultiDays];
    v8 = [(RootNavigationController *)self model];
    [v8 setNumDaysToShow:v11];
    v9 = @"multiDay";
  }

  else
  {
    if (a3)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v7 = [(RootNavigationController *)self model];
    [v7 setShowDayAsList:0];

    v8 = [(RootNavigationController *)self model];
    [v8 setNumDaysToShow:1];
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

- (id)imageNameForDayViewMode:(int64_t)a3
{
  v3 = @"calendar.day.timeline.leading";
  if (a3 == 1)
  {
    v3 = @"calendar.multiday.timeline.leading";
  }

  if (a3 == 2)
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
  v4 = [v3 imageFlippedForRightToLeftLayoutDirection];

  return v4;
}

- (void)updateDayViewModeContainer
{
  v3 = [(RootNavigationController *)self window];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    return;
  }

  v19 = [(RootNavigationController *)self topMainViewControllerContainer];
  if ([v19 representsDayInViewHierarchy])
  {
    v5 = [(RootNavigationController *)self currentDayViewMode];
    if (v5 == 2)
    {
      v11 = [ListViewContainerViewController alloc];
      v12 = [(RootNavigationController *)self model];
      v13 = [(RootNavigationController *)self window];
      v10 = [(MainViewControllerContainer *)v11 initWithModel:v12 window:v13];

      v8 = [(ListViewContainerViewController *)v10 currentChildViewController];
      [v8 setAllowExtendedHeightCells:1];
    }

    else
    {
      if (v5 == 1)
      {
        v6 = MultiDayWeekViewContainerViewController;
      }

      else
      {
        if (v5)
        {
          v10 = 0;
          goto LABEL_12;
        }

        v6 = DayViewContainerViewController;
      }

      v7 = [v6 alloc];
      v8 = [(RootNavigationController *)self model];
      v9 = [(RootNavigationController *)self window];
      v10 = [v7 initWithModel:v8 window:v9];
    }

LABEL_12:
    v14 = [(RootNavigationController *)self viewControllers];
    v15 = [v14 count];

    v16 = [(RootNavigationController *)self viewControllers];
    v17 = [v16 subarrayWithRange:{0, v15 - 1}];

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

- (void)openCalendarsLinkActionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self ekui_futureTraitCollection];
  if ([v5 horizontalSizeClass] == 1)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B6810;
    v8[3] = &unk_1002109D8;
    v9 = v4;
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

- (void)openInboxLinkActionWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B6A30;
  v5[3] = &unk_1002109D8;
  v6 = a3;
  v4 = v6;
  [(RootNavigationController *)self performUIAction:@"Calendars Button Link Action" block:v5 cancelBlock:v4];
}

- (id)_presentedEditor
{
  v2 = [(RootNavigationController *)self presentedViewController];
  if (v2)
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

      v3 = [v2 presentedViewController];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (BOOL)_dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RootNavigationController *)self presentedViewController];
  if (!v7)
  {
    v9 = 1;
    v15 = 1;
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v8 = [(RootNavigationController *)self _presentedEditor];
  v9 = v8 != 0;
  v10 = kCalUILogHandle;
  v11 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO);
  if (v8)
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
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Dismissing view controller: [%@]", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B6D14;
    v17[3] = &unk_10020F550;
    v17[4] = self;
    v18 = v6;
    v19 = 1;
    [(RootNavigationController *)self dismissViewControllerAnimated:v4 completion:v17];
  }

  v15 = v8 == 0;

  if (v6)
  {
LABEL_11:
    if (v9)
    {
      (*(v6 + 2))(v6, v15);
    }
  }

LABEL_13:

  return v15;
}

- (id)showInboxAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(RootNavigationController *)self dismissPresentedViewController])
  {
    v5 = [(RootNavigationController *)self _popToViewControllerSatisfying:&stru_100210AA0];
    if (v5)
    {
      v6 = v5;
      v7 = [(RootNavigationController *)self showInboxAnimated:v3 completion:0];

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

- (id)showInboxAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(RootNavigationController *)self model];
  [v7 startNotificationMonitor];

  v8 = [InboxViewController alloc];
  v9 = [(RootNavigationController *)self model];
  v10 = [(InboxViewController *)v8 initWithModel:v9 destination:0];

  [(InboxViewController *)v10 setDelegate:self];
  [(RootNavigationController *)self _forceInboxButtonCreationIfNeeded];
  if (CalSystemSolariumEnabled())
  {
    [(RootNavigationController *)self presentAdaptiveModalViewController:v10 animated:1 completion:v6];
  }

  else
  {
    v11 = [(RootNavigationController *)self inboxBarButtonItem];
    EKUIContainedControllerIdealWidth();
    v13 = v12;
    EKUIContainedControllerIdealWidth();
    v15 = v14;
    EKUIGoldenRatioPhi();
    [(RootNavigationController *)self _presentAdaptiveModalPopoverViewController:v10 relativeToBarButtonItem:v11 permittedArrowDirections:2 contentSize:v4 animated:v6 completion:v13, v15 * v16];
  }

  return v10;
}

- (void)inboxViewControllerWantsShowEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v9 showEvent:v8 animated:v6 showMode:a5 context:0];
}

- (void)showCalendarsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B7128;
  v6[3] = &unk_10020FCA8;
  v9 = a3;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(RootNavigationController *)v7 _dismissPresentedViewControllerAnimated:v4 completion:v6];
}

- (void)_showCalendarsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [CalendarsViewController alloc];
  v8 = [(RootNavigationController *)self model];
  v9 = [(CalendarsViewController *)v7 initWithModel:v8 destination:0];
  calendarsViewController = self->_calendarsViewController;
  self->_calendarsViewController = v9;

  v11 = [(RootNavigationController *)self _doneBlock];
  [(CalendarsViewController *)self->_calendarsViewController setDoneBlock:v11];

  v12 = self->_calendarsViewController;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000B7258;
  v14[3] = &unk_10020EBC8;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  [(RootNavigationController *)self presentViewController:v12 animated:v4 completion:v14];
}

- (id)delegatesMenu
{
  if (([(CUIKCalendarModel *)self->_model containsDelegateSources]& 1) != 0)
  {
    val = self;
    v3 = [(RootNavigationController *)self model];
    v27 = [v3 sortedEnabledDelegates];

    v30 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v27, "count") + 1}];
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

    v8 = [(RootNavigationController *)val model];
    v9 = [v8 sourceForSelectedIdentity];
    v10 = v9 == 0;

    if (v10)
    {
      [v7 setState:1];
    }

    [v30 addObject:{v7, v25}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [(RootNavigationController *)val model];
    obj = [v11 sortedEnabledDelegates];

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

          v17 = [v15 sourceIdentifier];
          v18 = [(RootNavigationController *)val model];
          v19 = [v18 sourceForSelectedIdentity];
          v20 = [v19 sourceIdentifier];
          v21 = [v17 isEqualToString:v20];

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

- (void)showAddEventAnimated:(BOOL)a3 fromBarButtonItem:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [(RootNavigationController *)self bestDateForNewEvent];
  LOBYTE(v7) = 0;
  [(RootNavigationController *)self showAddEventAnimated:v4 fromBarButtonItem:v6 withTitle:0 startDate:v8 exactStartDate:0 endDate:0 location:0 suggestionKey:0 allDay:v7 completion:0];
}

- (void)showAddEventAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [(RootNavigationController *)self bestDateForNewEvent];
  LOBYTE(v7) = 0;
  [(RootNavigationController *)self showAddEventAnimated:v4 fromBarButtonItem:0 withTitle:0 startDate:v8 exactStartDate:0 endDate:0 location:0 suggestionKey:0 allDay:v7 completion:v6];
}

- (void)showAddEventAnimated:(BOOL)a3 fromBarButtonItem:(id)a4 withTitle:(id)a5 startDate:(id)a6 exactStartDate:(id)a7 endDate:(id)a8 location:(id)a9 suggestionKey:(id)a10 allDay:(BOOL)a11 completion:(id)a12
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000B7B5C;
  v30[3] = &unk_100210B38;
  v30[4] = self;
  v31 = v18;
  v32 = v19;
  v33 = a8;
  v39 = a11;
  v34 = a9;
  v35 = v20;
  v36 = a10;
  v37 = v17;
  v38 = a12;
  v40 = a3;
  v21 = v38;
  v22 = v17;
  v23 = v36;
  v24 = v20;
  v25 = v34;
  v26 = v33;
  v27 = v19;
  v28 = v18;
  [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:v30];
}

- (void)showNewEvent:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v5 showEvent:v4 animated:1 showMode:0 context:0];
}

- (id)_doneBlockWithCompletion:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B7F10;
  v7[3] = &unk_100210B88;
  v7[4] = self;
  v8 = a3;
  v3 = v8;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (void)_presentAdaptiveModalPopoverViewController:(id)a3 relativeToBarButtonItem:(id)a4 permittedArrowDirections:(unint64_t)a5 contentSize:(CGSize)a6 animated:(BOOL)a7 completion:(id)a8
{
  height = a6.height;
  width = a6.width;
  v15 = a8;
  v16 = a4;
  v17 = a3;
  v19 = [(RootNavigationController *)self view];
  LOBYTE(v18) = a7;
  [(RootNavigationController *)self _presentAdaptiveModalViewController:v17 withPresentationStyleOverride:7 relativeToBarButtonItem:v16 withSourceView:v19 sourceRect:a5 permittedArrowDirections:0 contentSize:CGRectNull.origin.x passThroughViews:CGRectNull.origin.y animated:CGRectNull.size.width completion:CGRectNull.size.height, width, height, v18, v15];
}

- (void)setupPresentationControllerIfStyleIsPopover:(int64_t)a3 barButtonItem:(id)a4 passThroughViews:(id)a5 permittedArrowDirections:(unint64_t)a6 sourceRect:(CGRect)a7 sourceView:(id)a8 viewController:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v23 = a4;
  v19 = a5;
  v20 = a8;
  if (a3 != 7)
  {
    goto LABEL_10;
  }

  v21 = [a9 popoverPresentationController];
  [v21 _setIgnoreBarButtonItemSiblings:1];
  [v21 setDelegate:self];
  [v21 setPermittedArrowDirections:a6];
  if (v23)
  {
    [v21 setBarButtonItem:v23];
  }

  if (!v20)
  {
    v22 = [(RootNavigationController *)self view];
    [v21 setSourceView:v22];

    if (!v19)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v21 setSourceView:v20];
  if (v19)
  {
LABEL_6:
    [v21 setPassthroughViews:v19];
  }

LABEL_7:
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectIsNull(v25))
  {
    [v21 setSourceRect:{x, y, width, height}];
  }

LABEL_10:
}

- (void)_presentAdaptiveModalViewController:(id)a3 withPresentationStyleOverride:(int64_t)a4 relativeToBarButtonItem:(id)a5 withSourceView:(id)a6 sourceRect:(CGRect)a7 permittedArrowDirections:(unint64_t)a8 contentSize:(CGSize)a9 passThroughViews:(id)a10 animated:(BOOL)a11 completion:(id)a12
{
  height = a9.height;
  width = a9.width;
  v18 = a7.size.height;
  v19 = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v23 = a3;
  v24 = a5;
  v48 = a6;
  v25 = a10;
  v26 = a12;
  v27 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000B87C8;
  v49[3] = &unk_10020EBC8;
  v28 = v26;
  v49[4] = self;
  v50 = v28;
  v29 = objc_retainBlock(v49);
  if (objc_opt_respondsToSelector())
  {
    v30 = [(RootNavigationController *)self _doneBlock];
    [(DockableEventContainerController *)v23 performSelector:"setDoneBlock:" withObject:v30];
  }

  if (CalDraftUIEnabled() && [(DockableEventContainerController *)v23 conformsToProtocol:&OBJC_PROTOCOL___DockableEventContainerControllerDelegate])
  {
    v31 = [[_TtC9MobileCal32DockableEventContainerController alloc] initWithFullViewController:v23];

    v23 = v31;
  }

  if (a4 == -1)
  {
    v32 = [(RootNavigationController *)self view];
    v33 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();

    if (v33)
    {
      a4 = 1;
    }

    else
    {
      a4 = 7;
    }
  }

  [(DockableEventContainerController *)v23 setModalPresentationStyle:a4, a8];
  v34 = CGSizeZero.width == width;
  if (CGSizeZero.height != height)
  {
    v34 = 0;
  }

  if (a4 == 1 || v34)
  {
    EKUIContainedControllerIdealWidth();
    width = v35;
    EKUIContainedControllerIdealWidth();
    v37 = v36;
    EKUIGoldenRatioPhi();
    height = v37 * v38;
  }

  [(DockableEventContainerController *)v23 setPreferredContentSize:width, height];
  if (v24)
  {
    v39 = v48;
    [(RootNavigationController *)self setupPresentationControllerIfStyleIsPopover:a4 barButtonItem:v24 passThroughViews:v25 permittedArrowDirections:v47 sourceRect:v48 sourceView:v23 viewController:x, y, v19, v18];
    v40 = kCalUILogHandle;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v42 = v23;
      if (isKindOfClass)
      {
        v42 = [(DockableEventContainerController *)v23 topViewController];
      }

      *buf = 138412290;
      v52 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[83058884] presenting adaptive vc %@", buf, 0xCu);
      if (isKindOfClass)
      {
      }

      v39 = v48;
    }

    [(RootNavigationController *)self presentViewController:v23 animated:a11 completion:v29];
  }

  else
  {
    v43 = [(RootNavigationController *)self topMainViewControllerContainer];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();
    v45 = v43;
    if (v44)
    {
      [(DockableEventContainerController *)v23 setModalPresentationStyle:[(RootNavigationController *)v43 presentationStyleOverrideForChildViewControllers]];
      v45 = self;
    }

    [(RootNavigationController *)v45 showViewController:v23 sender:self animated:a11 completion:v29];
    v39 = v48;
    [(RootNavigationController *)self setupPresentationControllerIfStyleIsPopover:a4 barButtonItem:0 passThroughViews:v25 permittedArrowDirections:v47 sourceRect:v48 sourceView:v23 viewController:x, y, v19, v18];
  }
}

- (void)continueSearchWithTerm:(id)a3 animated:(BOOL)a4 removeViewControllersIncapableOfSearchIfNeeded:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = [(RootNavigationController *)self topViewController];
  v10 = [v9 navigationItem];
  v11 = [v10 rightBarButtonItems];
  v12 = [(RootNavigationController *)self searchBarButtonItem];
  v13 = [v11 containsObject:v12];

  v21 = v13;
  if (v5 && (v19[3] & 1) == 0)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B8A00;
    v17[3] = &unk_100210BD8;
    v17[4] = self;
    v17[5] = &v18;
    [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:v17];
  }

  if (v8 && *(v19 + 24) == 1)
  {
    v14 = [(RootNavigationController *)self presentedViewController];

    if (v14)
    {
      [(RootNavigationController *)self dismissViewControllerAnimated:0 completion:0];
    }

    v15 = [(RootNavigationController *)self showSearchAnimated:v6 becomeFirstResponder:0 completion:0];
    v16 = [v15 searchBar];
    [v16 setText:v8];
  }

  _Block_object_dispose(&v18, 8);
}

- (id)showSearchAnimated:(BOOL)a3 becomeFirstResponder:(BOOL)a4 completion:(id)a5
{
  v44 = a3;
  v6 = a5;
  v7 = [SearchResultsNavigationController alloc];
  v8 = [(RootNavigationController *)self model];
  v9 = [(RootNavigationController *)self window];
  v10 = [(SearchResultsNavigationController *)v7 initWithModel:v8 window:v9];

  v11 = [(SearchResultsNavigationController *)v10 searchResultsViewController];
  [v11 setSearchResultsDelegate:self];
  v12 = [(SearchResultsNavigationController *)v10 toolbar];
  v13 = [v12 standardAppearance];
  v14 = [v13 copy];
  v15 = [(SearchResultsNavigationController *)v10 toolbar];
  [v15 setScrollEdgeAppearance:v14];

  v16 = [[AdaptiveSearchController alloc] initWithSearchResultsController:v10];
  [(AdaptiveSearchController *)v16 setObscuresBackgroundDuringPresentation:1];
  [(AdaptiveSearchController *)v16 setHidesNavigationBarDuringPresentation:0];
  [(AdaptiveSearchController *)v16 setSearchResultsUpdater:v11];
  [(AdaptiveSearchController *)v16 setDelegate:v10];
  [(AdaptiveSearchController *)v16 setModalPresentationStyle:2];
  v17 = [(SearchResultsNavigationController *)v10 view];
  [v17 bounds];
  [(AdaptiveSearchController *)v16 setPreferredContentSize:v18, v19];

  v20 = [(RootNavigationController *)self view];
  [(AdaptiveSearchController *)v16 _setShouldRespectPreferredContentSize:EKUICurrentWindowInterfaceParadigm_ShouldUseLargeFormatInterface()];

  v21 = [(AdaptiveSearchController *)v16 presentationController];
  [v21 setDelegate:self];

  v22 = [(AdaptiveSearchController *)v16 searchBar];
  [(SearchResultsNavigationController *)v10 setSearchBar:v22];
  v23 = [(SearchResultsNavigationController *)v10 searchResultsViewController];
  [v22 setDelegate:v23];

  v24 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [v22 layoutSubviews];
  v25 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  v26 = [(RootNavigationController *)self view];
  [v26 layoutMargins];
  v28 = v27;
  v30 = v29;

  [v22 setContentInset:{0.0, v28, 0.0, v30}];
  [v22 setShowsCancelButton:1 animated:0];
  v31 = [v22 cancelButton];
  v32 = [NSBundle bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"Cancel - show search animated" value:@"Cancel" table:0];
  [v31 setTitle:v33 forState:0];

  v34 = CalendarAppTintColor();
  [v31 setTitleColor:v34 forState:0];

  v35 = CalendarAppTintColor();
  [v31 setTintColor:v35];

  v36 = [NSBundle bundleForClass:objc_opt_class()];
  v37 = [v36 localizedStringForKey:@"Placeholder used in the search bar in the calendar occurrences list" value:@"Search" table:0];
  [v22 setPlaceholder:v37];

  [v22 _setBackdropStyle:2005];
  v52.receiver = self;
  v52.super_class = RootNavigationController;
  v38 = [(RootNavigationController *)&v52 traitCollection];
  v39 = [v38 traitCollectionByModifyingTraits:&stru_100210BF8];

  [(SearchResultsNavigationController *)v10 setEkui_futureTraitCollection:v39];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1000B8FA8;
  v46[3] = &unk_100210C20;
  v46[4] = self;
  v47 = v16;
  v50 = v44;
  v51 = a4;
  v48 = v22;
  v49 = v6;
  v40 = v6;
  v41 = v22;
  v42 = v16;
  [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:v44 completion:v46];

  return v11;
}

- (void)_showSearchController:(id)a3 withSearchBar:(id)a4 animated:(BOOL)a5 becomeFirstResponder:(BOOL)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B90C0;
  v16[3] = &unk_100210C48;
  v21 = a6;
  v17 = a4;
  v18 = v12;
  v19 = self;
  v20 = a7;
  v13 = v12;
  v14 = v20;
  v15 = v17;
  [(RootNavigationController *)self presentViewController:v13 animated:v9 completion:v16];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v4 = a3;
  v5 = [v4 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = 2;
  }

  else
  {
    v7 = [v4 presentationStyle];
  }

  return v7;
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v5 = a3;
  [v5 setDelegate:0];
  v7 = [(RootNavigationController *)self _doneBlock];
  v7[2](v7, v5, 0);

  v6 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v6 invalidateManagedNavigationController];
}

- (BOOL)eventViewControllerShouldHideInlineEditButton
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  v3 = [v2 currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 eventViewControllerShouldHideInlineEditButton];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)eventViewDelegateShouldShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(RootNavigationController *)self topMainViewControllerContainer];
  v8 = [v7 currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 eventViewDelegateShouldShowNextOccurrenceOfEvent:v6 forward:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)eventViewDelegateShowNextOccurrenceOfEvent:(id)a3 forward:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(RootNavigationController *)self topMainViewControllerContainer];
  v7 = [v6 currentChildViewController];

  if (v7)
  {
    if (v4)
    {
      [v9 nextOccurrence];
    }

    else
    {
      [v9 previousOccurrence];
    }
    v8 = ;
    if (v8)
    {
      [v7 showEvent:v8 animated:1 showMode:objc_msgSend(v9 context:{"isBirthday") ^ 1, 0}];
    }
  }
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v45;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000B98C8;
    v45[3] = &unk_10020EBC8;
    v5 = &v46;
    v13 = v10;
    v45[4] = self;
    v46 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = objc_retainBlock(v12);
  if (a4 == 1)
  {
    v15 = [v9 event];
    v16 = [v15 calendar];
    v17 = [v16 sharingStatus];

    if (v17)
    {
      if (v14)
      {
        v38 = _NSConcreteStackBlock;
        v39 = 3221225472;
        v40 = sub_1000B992C;
        v41 = &unk_10020EBC8;
        v42 = self;
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

  v19 = [(RootNavigationController *)self topMainViewControllerContainer];
  v20 = [v19 currentChildViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v21 = [(RootNavigationController *)self topMainViewControllerContainer];
    [v21 currentChildViewController];
    v37 = self;
    v22 = a4;
    v23 = v11;
    v24 = v9;
    v25 = v14;
    v27 = v26 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = v26;
    v14 = v25;
    v9 = v24;
    v11 = v23;
    a4 = v22;
    self = v37;

    if ((isKindOfClass & 1) == 0)
    {
      [v9 setInternalEditViewDelegate:0];
      v30 = [(RootNavigationController *)v37 _doneBlockWithCompletion:v14];
      (v30)[2](v30, v9, 0);
      v31 = [(RootNavigationController *)v37 topMainViewControllerContainer];
      [v31 invalidateManagedNavigationController];
      goto LABEL_24;
    }
  }

  v29 = [(RootNavigationController *)self topMainViewControllerContainer:v37];
  v30 = [v29 currentChildViewController];

  v31 = [v9 event];
  if (a4 == 1)
  {
    v32 = [v9 calendarToMakeVisibleOnSave];
    v33 = [v32 objectID];

    if (v33)
    {
      v34 = [(RootNavigationController *)self model];
      [v34 ensureCalendarVisibleWithId:v33];
    }

    [v30 editorDidSaveEvent:v31];
    v35 = [v9 internalEditViewDelegate];

    if (v35 == self)
    {
      [(RootNavigationController *)self dismissViewControllerAnimated:1 completion:v14];
    }
  }

  else if (a4)
  {
    if (a4 == 2)
    {
      [v30 editorDidDeleteEvent:v31];
    }
  }

  else
  {
    [v30 editorDidCancelEditingEvent:v31];
    v36 = [v9 internalEditViewDelegate];

    if (v36 == self)
    {
      [(RootNavigationController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_24:

  if (v11)
  {
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  v3 = [(RootNavigationController *)self model];
  v4 = [v3 pasteboardManager];

  return v4;
}

- (void)attemptDisplayReviewPrompt
{
  v5 = [(RootNavigationController *)self window];
  v3 = [v5 windowScene];
  v4 = [(RootNavigationController *)self model];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:v3 calendarModel:v4];
}

- (void)searchResultsViewController:(id)a3 didSelectEvent:(id)a4
{
  v5 = a4;
  v6 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v6 showEvent:v5 animated:1 showMode:1 context:0];
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = a3;
  v4 = [v3 presentedViewController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___PopoverContentView];

  if (v5)
  {
    v6 = [v3 presentedViewController];
    v7 = [v6 canDismiss];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v6 = a3;
  v3 = [v6 presentedViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___PresentationDismissal];

  if (v4)
  {
    v5 = [v6 presentedViewController];
    [v5 didAttemptToDismiss];
  }
}

- (void)_updatePaletteStateWithViewController:(id)a3
{
  v16 = a3;
  [(RootNavigationController *)self updateCurrentIdentity:0];
  if (objc_opt_respondsToSelector())
  {
    v4 = +[UIColor clearColor];
    [(PaletteView *)self->_paletteView setBackgroundColor:v4];

    [(PaletteView *)self->_paletteView setOpaqueBackground:0];
    [v16 updatePalette:self->_paletteView];
    if (-[RootNavigationController activeWidthSizeClass](self, "activeWidthSizeClass") == 2 && [v16 useContainingPalette])
    {
      v5 = [(PaletteView *)self->_paletteView containingPalette];
      v6 = [v16 navigationItem];
      [v6 _setBottomPalette:v5];
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
  v15 = [v16 navigationItem];
  [v15 _setBottomPalette:v14];
}

- (int)currentViewTypeInt:(int64_t)a3
{
  if (a3 > 4)
  {
    return 5;
  }

  else
  {
    return dword_1001F8460[a3];
  }
}

- (BOOL)_isThisTheOnlyConnectedScene
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 connectedScenes];

  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([CalendarSceneManager isSceneCalendarAppScene:v8])
        {
          v9 = [v8 _sceneIdentifier];
          WeakRetained = objc_loadWeakRetained(&self->_window);
          v11 = [WeakRetained windowScene];
          v12 = [v11 _sceneIdentifier];
          v13 = [v9 isEqualToString:v12];

          if (!v13)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (Class)_classRepresentingViewType:(int64_t)a3 forTraitCollection:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == -1)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if ([v5 horizontalSizeClass] == 1 && objc_msgSend(v6, "verticalSizeClass") == 1)
  {
    goto LABEL_13;
  }

  v7 = 0;
  if (a3 <= 1)
  {
    if (a3 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a3 == 2)
  {
    [v6 horizontalSizeClass];
LABEL_13:
    v7 = objc_opt_class();
    goto LABEL_14;
  }

  if (a3 == 3 || a3 == 4)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (id)pushCalendarViewControllerWithViewType:(int64_t)a3 andDate:(id)a4
{
  v6 = a4;
  [(CUIKCalendarModel *)self->_model setSelectedDate:v6];
  v7 = [(RootNavigationController *)self _ensureStackBaseCalendarViewControllerContainerIsPresent];
  v8 = [(RootNavigationController *)self ekui_futureTraitCollection];
  v9 = [(RootNavigationController *)self _classRepresentingViewType:a3 forTraitCollection:v8];

  if (!v9)
  {
    v19 = 0;
    goto LABEL_44;
  }

  [(RootNavigationController *)self viewControllers];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = v45 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v46 count:16];
  v41 = v6;
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
        v17 = [v10 lastObject];
        v18 = v17 == v16;

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

    v19 = v16;
    v20 = [v10 lastObject];

    if (v19)
    {
      v6 = v41;
      if (v20 != v19)
      {
        v21 = [(RootNavigationController *)self popToViewController:v19 animated:0];
        goto LABEL_43;
      }

      v23 = [v19 currentChildViewController];
      [v23 selectDate:v41 animated:0];
      goto LABEL_42;
    }

LABEL_19:
    v6 = v41;
    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }

    v22 = [(RootNavigationController *)self popViewControllerAnimated:0];
    v23 = [(RootNavigationController *)self viewControllers];
    v19 = [v23 lastObject];
LABEL_42:

    goto LABEL_43;
  }

LABEL_21:
  v24 = [(RootNavigationController *)self viewControllers];
  v25 = [v24 firstObject];

  v19 = v25;
  v26 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v26 beginAppearanceTransition:0 animated:0];

  v27 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v27 endAppearanceTransition];

  v28 = [(RootNavigationController *)self popToRootViewControllerAnimated:0];
  if (v19)
  {
    v29 = v19;
    while (1)
    {
      v30 = v29;
      v29 = v19;

      v19 = [v29 pushedNextLevelMainViewControllerContainerAnimated:0];

      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v31 = [(RootNavigationController *)self window];
      IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy();

      if (IsCompactInViewHierarchy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v19;
          if ([v33 allowsOverriddenRightNavigationBarItems])
          {
            v34 = [v33 navigationItem];
            v35 = [v34 rightBarButtonItems];

            if (!v35)
            {
              [(RootNavigationController *)self _addButtonsToNavigationBarForViewController:v33];
            }
          }
        }
      }

      if (!v19)
      {
        goto LABEL_33;
      }
    }

    v6 = v41;
    goto LABEL_40;
  }

  v29 = 0;
LABEL_33:
  v36 = [(RootNavigationController *)self ekui_futureTraitCollection];
  if ([v36 verticalSizeClass] != 1)
  {

    v6 = v41;
    goto LABEL_37;
  }

  v37 = [(RootNavigationController *)self ekui_futureTraitCollection];
  v38 = [v37 horizontalSizeClass];

  v6 = v41;
  if (v38 != 1)
  {
LABEL_37:
    v39 = v29;
    v29 = v39;
    goto LABEL_38;
  }

  v39 = [(RootNavigationController *)self _goToCompactWeek];
LABEL_38:
  v19 = v39;
LABEL_40:

LABEL_43:
LABEL_44:

  return v19;
}

- (void)_showNextDateComponentUnitAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v4 navigateToNextDateComponentUnitAnimated:v3];
}

- (void)_showPreviousDateComponentUnitAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v4 navigateToPreviousDateComponentUnitAnimated:v3];
}

- (void)_selectNextEvent
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v2 navigateToNextSelectableItem];
}

- (void)_selectPreviousEvent
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v2 navigateToPreviousSelectableItem];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v49 = a5;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v52 = v10;
  [(RootNavigationController *)self _setupSearchControllerForViewController:v8];
  v11 = [(RootNavigationController *)self transitionCoordinator];
  v12 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(RootNavigationController *)self _updatePaletteStateWithViewController:v8];
  if (v11)
  {
    if ([v11 initiallyInteractive])
    {
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_1000BAC8C;
      v61[3] = &unk_10020F1F0;
      v61[4] = self;
      v13 = &v62;
      v62 = v8;
      [v11 notifyWhenInteractionChangesUsingBlock:v61];
    }

    else
    {
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000BAD1C;
      v59[3] = &unk_10020F1F0;
      v59[4] = self;
      v13 = &v60;
      v60 = v8;
      [v11 animateAlongsideTransition:0 completion:v59];
    }
  }

  v14 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();

  v15 = [v7 disappearingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v7 viewControllers];
    v17 = [v16 containsObject:v15];

    if ((v17 & 1) == 0)
    {
      v18 = [(RootNavigationController *)self model];
      [v18 setSelectedOccurrence:0];
    }
  }

  v51 = v15;
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
      v22 = [(RootNavigationController *)self currentViewType];
      v23 = [(RootNavigationController *)self model];
      [v23 persistedSceneState];
      v25 = v24 = v11;
      [v25 setLastUsedNonYearView:v22];

      v11 = v24;
    }

    [(RootNavigationController *)self updateNavigationBarButtonItemsWithViewController:v8];
    if (CalSystemSolariumEnabled())
    {
      CalendarAppBarButtonItemTintColor();
      v27 = v26 = v11;
      v28 = [(RootNavigationController *)self navigationBar];
      [v28 setTintColor:v27];

      v11 = v26;
      if (v26 && v49)
      {
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_1000BAD28;
        v57[3] = &unk_10020F1F0;
        v57[4] = self;
        v58 = v8;
        [v26 animateAlongsideTransition:v57 completion:0];
      }

      else
      {
        [(RootNavigationController *)self _updateNavigationBarAppearanceForMainViewControllerContainer:v8];
      }
    }
  }

  [(RootNavigationController *)self updateToolbarItemsWithViewController:v8];
  if (CalSystemSolariumEnabled())
  {
    CalendarAppBarButtonItemTintColor();
    v30 = v29 = v11;
    v31 = [(RootNavigationController *)self toolbar];
    [v31 setTintColor:v30];

    v11 = v29;
  }

  [(RootNavigationController *)self updateErrorWithErrorDisplayManager];
  if ([(RootNavigationController *)self activeWidthSizeClass]== 2)
  {
    if (isKindOfClass)
    {
      [(RootNavigationController *)self _configureViewSwitcherShowingViewController:v8];
    }

    v32 = [(RootNavigationController *)self view];
    [v32 bounds];
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

  else if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 useCustomBackButton] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v48 = v11;
      v50 = v7;
      v35 = [(RootNavigationController *)self viewControllers];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v36 = [v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
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
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [v40 hidesBackButton];
              v42 = [v40 navigationItem];
              [v42 setHidesBackButton:v41];

              v43 = [v40 navigationItem];
              [v43 setLeftBarButtonItems:0];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v37);
      }

      if ((CalSolariumEnabled() & 1) == 0)
      {
        v44 = [(RootNavigationController *)self model];
        v45 = [v44 selectedDate];
        [(RootNavigationController *)self updateBackButtonToDate:v45];
      }

      v11 = v48;
      v7 = v50;
      v19 = v52;
    }
  }

  [(RootNavigationController *)self _setNeedsUserActivityUpdate];
  [(RootNavigationController *)self updateShouldDisplayJumpToTodayTip];
  if (CalUIKitNavBarEnabled())
  {
    v47 = [(RootNavigationController *)self splitViewRootDelegate];
    [v47 updateNavigationAdditionalBarButtons];
  }
}

- (void)_updateNavigationBarAppearanceForMainViewControllerContainer:(id)a3
{
  v7 = a3;
  if (CalSystemSolariumEnabled())
  {
    v4 = objc_opt_new();
    if ((CalCanvasPocketEnabled() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && [v7 useSolariumNavigationBarAppearance])
    {
      [v4 configureWithDefaultBackground];
    }

    else
    {
      v5 = CalNavBarBlurEffect();
      [v4 setBackgroundEffect:v5];
    }

    v6 = [(RootNavigationController *)self navigationBar];
    [v6 setStandardAppearance:v4];
    [v6 setScrollEdgeAppearance:v4];
    [v6 setCompactAppearance:v4];
    [v6 setCompactScrollEdgeAppearance:v4];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  [(RootNavigationController *)self _updateInteractivePopAllowed:a3];
  [(RootNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  self->_todayButtonPushNextViewFunctionalityLocked = 0;
}

- (id)_popToViewControllerSatisfying:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(RootNavigationController *)self viewControllers];
    v6 = [v5 reverseObjectEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (v4[2](v4, v11))
          {
            v12 = v11;

            if (v12)
            {
              v13 = kCalUILogHandle;
              if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v21 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Popping to view controller: [%@]", buf, 0xCu);
              }

              v14 = [(RootNavigationController *)self popToViewController:v12 animated:0];
            }

            goto LABEL_16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = [(RootNavigationController *)self topViewController];
  }

LABEL_16:

  return v12;
}

- (void)selectTodayWithTrigger:(int64_t)a3 animated:(BOOL)a4
{
  if (a3 == 2)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      model = self->_model;
      v7 = v5;
      v8 = [(CUIKCalendarModel *)model selectedDate];
      *buf = 136315394;
      v15 = "[RootNavigationController selectTodayWithTrigger:animated:]";
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: WithinTimeout trigger specified with model date [%@]; will not select today", buf, 0x16u);
    }
  }

  else
  {
    v9 = a4;
    v11 = [(RootNavigationController *)self topMainViewControllerContainer];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      if (a3 == 1)
      {
        [v11 setShouldRespondToApplicationDidBecomeActiveStateChange:1];
        [(RootNavigationController *)self _selectTodayForMainViewControllerContainer:v13 animated:v9];
        v11 = [v13 setShouldRespondToApplicationDidBecomeActiveStateChange:0];
      }

      else
      {
        v11 = [(RootNavigationController *)self _selectTodayForMainViewControllerContainer:v11 animated:v9];
      }

      v12 = v13;
    }

    _objc_release_x1(v11, v12);
  }
}

- (void)_selectTodayForMainViewControllerContainer:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 shouldPushNextLevelViewControllerWhenTodayIsVisible])
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
      [v6 showTodayAnimated:v4];
    }
  }

  else
  {
    [(RootNavigationController *)self _showNowForMainViewControllerContainer:v6 animated:v4];
  }
}

- (void)_showNowForMainViewControllerContainer:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(RootNavigationController *)self _now];
  v7 = [(RootNavigationController *)self model];
  [v7 setSelectedDate:v8];

  [v6 selectDate:v8 animated:v4];
}

- (void)doCrossfadeAnimationWithNavigationViewContents
{
  v3 = [(RootNavigationController *)self presentedViewController];

  if (!v3)
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
  v3 = [(RootNavigationController *)self view];
  v4 = [v3 window];
  v14 = [v4 snapshotViewAfterScreenUpdates:0];

  v5 = [(RootNavigationController *)self view];
  v6 = [v5 superview];

  [v6 addSubview:v10[5]];
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

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v8 = a5;
  v9 = a6;
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = [(RootNavigationController *)self model];
      v11 = [v10 showMonthAsDivided];

      if (v11)
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
      v16 = [(RootNavigationController *)self model];
      v17 = [v16 showMonthAsDivided];

      if (v17)
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
      v21 = [(RootNavigationController *)self model];
      v22 = [(YearMonthAnimator *)v20 initWithModel:v21 paletteView:self->_paletteView reverse:1];

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      v23 = [v8 currentChildViewController];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 dividedListMode])
      {
        v24 = [v23 dateForCurrentMonthOnScreen];
        [(YearMonthAnimator *)v22 setSelectedDate:v24];
      }

      goto LABEL_41;
    }

    if (objc_opt_isKindOfClass())
    {
      v34 = [(RootNavigationController *)self model];
      v35 = [v34 showMonthAsDivided];

      if (v35)
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

    v13 = [(RootNavigationController *)self model];
    v14 = [v13 showMonthAsDivided];

    if (v14)
    {
      v15 = CompactDividedMonthDayAnimator;
      goto LABEL_39;
    }

    v27 = [(RootNavigationController *)self model];
    v28 = [v27 numDaysToShow];

    if (v28 < 2)
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

    v18 = [(RootNavigationController *)self model];
    v19 = [v18 showMonthAsDivided];

    if (v19)
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

    v25 = [(RootNavigationController *)self model];
    v26 = [v25 showMonthAsDivided];

    if (v26)
    {
      v15 = DividedMonthListAnimator;
    }

    else
    {
      v15 = CompactMonthListAnimator;
    }

LABEL_39:
    v36 = [v15 alloc];
    v23 = [(RootNavigationController *)self model];
    paletteView = self->_paletteView;
    v31 = v36;
    v32 = v23;
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
  v23 = [(RootNavigationController *)self model];
  paletteView = self->_paletteView;
  v31 = v29;
  v32 = v23;
  v33 = 0;
LABEL_40:
  v22 = [v31 initWithModel:v32 paletteView:paletteView reverse:v33];
LABEL_41:

LABEL_42:

  return v22;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v3 = [a3 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)_viewControllerTreeIsEligibleForJournalingConsideration:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___EKUIManagedViewController])
  {
    v4 = [v3 wantsManagement];
  }

  else
  {
    NSClassFromString(@"MFMailComposeViewController");
    v4 = 1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (BOOL)_viewControllerWantsDismissOnSizeClassChange:(id)a3 transitioningToTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 conformsToProtocol:&OBJC_PROTOCOL___EKUIManagedViewController])
  {
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 wantsDismissOnSizeClassChangeWithNewTraitCollection:v6];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [v5 wantsDismissOnSizeClassChange];
LABEL_6:
  v8 = v7;
LABEL_8:

  return v8;
}

- (void)recursiveBuildJournal:(id)a3 ofViewControllerSubtree:(id)a4 transitioningToTraitCollection:(id)a5 stopCondition:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    goto LABEL_35;
  }

  if ([(RootNavigationController *)self _viewControllerWantsDismissOnSizeClassChange:v11 transitioningToTraitCollection:v12])
  {
    goto LABEL_3;
  }

  if (![(RootNavigationController *)self _viewControllerTreeIsEligibleForJournalingConsideration:v11])
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
                v40 = v11;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Dropping UIViewController subtree descended from node: %@", buf, 0x16u);
              }

              goto LABEL_35;
            }
          }
        }
      }
    }

LABEL_3:
    v14 = [v11 presentingViewController];
    [v14 dismissViewControllerAnimated:0 completion:0];

    goto LABEL_4;
  }

  v16 = [v11 presentedViewController];
  [(RootNavigationController *)self recursiveBuildJournal:v10 ofViewControllerSubtree:v16 transitioningToTraitCollection:v12 stopCondition:v13];

  v17 = [v11 presentingViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v17 || [(RootNavigationController *)self _nodeContainsViewControllersRequiringTeardown:v11])
  {
    v34 = v10;
    v18 = v11;
    v19 = [v18 topViewController];
    for (i = v13[2](v13, v19); ; i = v13[2](v13, v19))
    {
      if (i)
      {

LABEL_24:
        v10 = v34;
        goto LABEL_25;
      }

      v21 = [v18 viewControllers];
      v22 = [v21 count];

      if (!v22)
      {
        goto LABEL_24;
      }

      v23 = [v18 topViewController];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v34 addPushedViewController:v24 withPresenter:v17];
      }

      v25 = [v18 viewControllers];
      v36 = v24;
      v26 = [NSArray arrayWithObjects:&v36 count:1];
      v27 = [v25 arrayByExcludingObjectsInArray:v26];

      [v18 setViewControllers:v27 animated:0];
      v19 = [v18 topViewController];
    }

    v33 = kCalUILogHandle;
    v10 = v34;
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

    v18 = v11;
    v28 = [v18 topViewController];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v28 canRequirePushOrPresentation])
    {
      [v10 addPresentedViewController:v28 withPresenter:v17];
      v29 = [v18 viewControllers];
      v35 = v28;
      [NSArray arrayWithObjects:&v35 count:1];
      v31 = v30 = v10;
      v32 = [v29 arrayByExcludingObjectsInArray:v31];

      v10 = v30;
      [v18 setViewControllers:v32 animated:0];
    }
  }

LABEL_25:

LABEL_26:
  if (v17)
  {
    if ([v17 conformsToProtocol:&OBJC_PROTOCOL___EnqueueableDismissOperationProtocol])
    {
      [v17 setAllowsEnqueuedDismissal:0];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || [v11 canBeDirectlyManaged])
    {
      [v10 addPresentedViewController:v11 withPresenter:v17];
    }

    [v17 dismissViewControllerAnimated:0 completion:0];
    if ([v17 conformsToProtocol:&OBJC_PROTOCOL___EnqueueableDismissOperationProtocol])
    {
      [v17 setAllowsEnqueuedDismissal:1];
    }
  }

LABEL_35:
}

- (BOOL)_nodeContainsViewControllersRequiringTeardown:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v4 = [v3 viewControllers];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
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

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(RootNavigationController *)self _updateInteractivePopAllowed];
  v5 = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self _updatePaletteStateWithViewController:v5];

  v6 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [(RootNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  v8.receiver = self;
  v8.super_class = RootNavigationController;
  [(RootNavigationController *)&v8 viewWillAppear:v3];
  v7 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v9 = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self navigationController:self willShowViewController:v9 animated:0];

  v19.receiver = self;
  v19.super_class = RootNavigationController;
  [(RootNavigationController *)&v19 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  if (!CGAffineTransformIsIdentity(&v18))
  {
    [(RootNavigationController *)self _performCustomRotationAnimationForMainWindowWithTransitionCoordinator:v7];
  }

  v10 = [(RootNavigationController *)self window];
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
  [v7 animateAlongsideTransition:v14 completion:v12];
}

- (void)_performCustomRotationAnimationForMainWindowWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self presentedViewController];
  if (v5)
  {
  }

  else
  {
    v6 = [(RootNavigationController *)self ekui_futureTraitCollection];
    if ([v6 horizontalSizeClass] == 2)
    {
      v7 = [(RootNavigationController *)self ekui_futureTraitCollection];
      v8 = [v7 verticalSizeClass];

      if (v8 == 2)
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
    v9 = [(RootNavigationController *)self view];
    v10 = [v9 window];
    v22 = [v10 snapshotViewAfterScreenUpdates:0];

    v11 = [(RootNavigationController *)self topViewController];
    v12 = [v11 view];
    v13 = [v12 superview];

    [v13 addSubview:v18[5]];
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
    [v4 animateAlongsideTransition:v15 completion:v14];

    _Block_object_dispose(&v17, 8);
  }

LABEL_8:
}

- (void)recursiveAnimationRemoveForSmallLayers:(id)a3
{
  if (a3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [a3 sublayers];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          [(RootNavigationController *)self recursiveAnimationRemoveForSmallLayers:v9];
          [v9 bounds];
          v11 = v10;
          v12 = [(RootNavigationController *)self view];
          v13 = [v12 layer];
          [v13 bounds];
          v15 = v14;

          if (v11 < v15)
          {
            [v9 removeAllAnimations];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }
}

- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isTransitioningTraitCollection)
  {
    self->_hideNavBarAfterTraitCollectionTransition = a3;
    self->_shouldSetNavBarVisibilityAfterTraitCollectionTransition = 1;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = RootNavigationController;
    [(RootNavigationController *)&v6 setNavigationBarHidden:a3 animated:a4];
  }
}

- (id)_tornDownJournalOfShownViewControllersTransitioningToTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self topMainViewControllerContainer];
  v6 = [v5 currentChildViewController];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 shouldJournalMainViewControllerParent] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v6 viewControllerToShowFrom];
  v9 = objc_alloc_init(ViewControllerJournal);
  v10 = [(RootNavigationController *)self window];
  v11 = [v10 rootViewController];
  [(RootNavigationController *)self recursiveBuildJournal:v9 ofViewControllerSubtree:v11 transitioningToTraitCollection:v4 stopCondition:&stru_100210D08];

  [(RootNavigationController *)self recursiveBuildJournal:v9 ofViewControllerSubtree:v6 transitioningToTraitCollection:v4 stopCondition:&stru_100210D08];
  if ((v7 & 1) == 0)
  {
    [(RootNavigationController *)self recursiveBuildJournal:v9 ofViewControllerSubtree:v8 transitioningToTraitCollection:v4 stopCondition:&stru_100210D08];
  }

  v12 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = [v6 ekui_futureTraitCollection];
    v16 = 136315650;
    v17 = "[RootNavigationController _tornDownJournalOfShownViewControllersTransitioningToTraitCollection:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Oldtopmain: %@, futureTraits: %@", &v16, 0x20u);
  }

  return v9;
}

- (BOOL)_viewControllerRequiresSystemPresentation:(id)a3
{
  v3 = a3;
  NSClassFromString(@"DDParsecCollectionViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_replayJournal:(id)a3 withRootVC:(id)a4 topMainVC:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = v13;
    *buf = 138412802;
    v96 = v8;
    v97 = 2112;
    v98 = v13;
    v99 = 2112;
    v100 = objc_opt_class();
    v15 = v100;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[_replayJournal:%@ withRootVC:%@ topMainVC:%@]", buf, 0x20u);
  }

  v16 = [v8 nextJournaledViewController];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 viewController];
    v69 = self;
    v75 = v10;
    if (![v18 conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditView])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [(RootNavigationController *)v10 conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegatePrivateAllInProcess];
        v27 = v10;
        if ((v26 & 1) == 0)
        {
          if ([(RootNavigationController *)v10 conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegate])
          {
            v27 = v10;
          }

          else
          {
            v27 = self;
          }
        }

        [v18 setDelegate:v27];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = [v18 event];
          v19 = v28;
          if (!v28)
          {
            v33 = 0;
            v29 = 0;
LABEL_31:

            [(RootNavigationController *)v10 reconfigureViewController:v18];
            if ((v33 & 1) != 0 || !v29)
            {
              v72 = v33;
LABEL_44:
              v76 = v17;
              v70 = v29;
              if ([v17 displayType] == 1)
              {
                v39 = [v17 presentingViewController];
                if (v39)
                {
                  v40 = v39;
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
                            v45 = v18;
                            v88 = v45;
                            v89 = self;
                            v71 = v9;
                            v90 = v9;
                            v91 = v8;
                            v92 = v10;
                            v46 = objc_retainBlock(v86);
                            v47 = [v44 presentedViewController];
                            v48 = [v44 viewControllerToShowFrom];
                            v49 = [(RootNavigationController *)self ekui_futureTraitCollection];
                            v50 = [v49 horizontalSizeClass];
                            v51 = v50 == 1;

                            if ([v45 conformsToProtocol:&OBJC_PROTOCOL___EKUIManagedViewController])
                            {
                              if (objc_opt_respondsToSelector())
                              {
                                v52 = [v45 canRequirePushOrPresentation];
                              }

                              else
                              {
                                v52 = 0;
                              }

                              if (objc_opt_respondsToSelector())
                              {
                                [(RootNavigationController *)v69 ekui_futureTraitCollection];
                                v54 = v48;
                                v56 = v55 = v8;
                                v53 = [v45 prefersPushForSizeClass:{objc_msgSend(v56, "horizontalSizeClass")}];

                                v8 = v55;
                                v48 = v54;
                                v51 = v50 == 1;
                              }

                              else
                              {
                                v53 = 0;
                              }

                              if ([v45 canManagePresentationStyle])
                              {
                                if (v50 == 1)
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
                              v52 = 0;
                            }

                            if (v47)
                            {
                              v58 = v47 == v48;
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
                                  v62 = v8;
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

                                  v8 = v62;
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
                              v80 = v69;
                              v81 = v45;
                              v84 = v52;
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

                            v9 = v71;
                            v10 = v75;
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
              if ([v18 prefersToBePresentedFromApplicationRootViewController] && (-[RootNavigationController presentedViewController](self, "presentedViewController"), v42 = objc_claimAutoreleasedReturnValue(), v42, !v42))
              {
                v43 = self;
              }

              else if (isKindOfClass & 1 | ((objc_opt_respondsToSelector() & 1) == 0))
              {
                v43 = [v9 viewControllerToShowFrom];
              }

              else
              {
                v43 = v9;
              }

              v40 = v43;
              goto LABEL_59;
            }

            v34 = [(RootNavigationController *)self model];
            [v34 setSelectedOccurrences:v29];

LABEL_43:
            v72 = 0;
            goto LABEL_44;
          }

          v93 = v28;
          v29 = [NSArray arrayWithObjects:&v93 count:1];
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
          if ([(RootNavigationController *)v10 conformsToProtocol:&OBJC_PROTOCOL___CNContactViewControllerDelegate])
          {
            [v18 setDelegate:v10];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v29 = [v19 events];
            [v19 setTransitioningDelegate:0];
            if ([(RootNavigationController *)v10 conformsToProtocol:&OBJC_PROTOCOL___EKExpandedReminderStackViewControllerDelegate])
            {
              [v19 setEKExpandedReminderStackViewControllerDelegate:v10];
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

      [(RootNavigationController *)v10 reconfigureViewController:v18];
      v29 = 0;
      goto LABEL_43;
    }

    v19 = v18;
    if (([(RootNavigationController *)v10 requiresSelfAsEventEditorDelegate]& 1) == 0)
    {
      v20 = [v19 internalEditViewDelegate];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v19 internalEditViewDelegate];
        [v21 view];
        v23 = v22 = v17;
        v24 = [v23 window];
        v25 = [(RootNavigationController *)self window];

        v17 = v22;
        v58 = v24 == v25;
        self = v69;
        v10 = v75;
        if (v58)
        {
LABEL_26:
          v31 = [v19 event];
          v32 = v31;
          if (v31)
          {
            v94 = v31;
            v29 = [NSArray arrayWithObjects:&v94 count:1];
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if ([(RootNavigationController *)v10 conformsToProtocol:&OBJC_PROTOCOL___EKEventOrIntegrationEditViewDelegate])
    {
      v30 = v10;
    }

    else
    {
      v30 = self;
    }

    [v19 setInternalEditViewDelegate:v30];
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

- (int64_t)_preferredPostTransitionViewFromTraitCollection:(id)a3 toTraitCollection:(id)a4 currentViewType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 horizontalSizeClass];
  if (v10 != [v9 horizontalSizeClass] || (v11 = objc_msgSend(v8, "verticalSizeClass"), v11 != objc_msgSend(v9, "verticalSizeClass")))
  {
    v12 = [(RootNavigationController *)self window];
    v13 = [v12 windowScene];
    if ([v13 activationState] == 2)
    {
      v14 = [v8 horizontalSizeClass];
      v15 = [v9 horizontalSizeClass];

      if (v14 != v15)
      {
        if ([v9 horizontalSizeClass] == 1)
        {
          v16 = 224;
LABEL_15:
          a5 = *(&self->super.super.super.super.isa + v16);
          goto LABEL_16;
        }

        if ([v9 horizontalSizeClass] == 2)
        {
          v16 = 216;
          goto LABEL_15;
        }
      }
    }

    else
    {
    }

    if (a5 == 4 && [v8 horizontalSizeClass] == 1 && objc_msgSend(v9, "horizontalSizeClass") == 2)
    {
      a5 = 3;
    }

    else
    {
      a5 = -1;
    }
  }

LABEL_16:

  return a5;
}

- (BOOL)_canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:(id)a3 toNewCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 verticalSizeClass];
  if (v7 == [v6 verticalSizeClass])
  {
    v8 = [v5 horizontalSizeClass];
    v9 = v8 == [v6 horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RootNavigationController *)self traitCollection];
  v9 = [(RootNavigationController *)self _canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:v8 toNewCollection:v6];

  if (v9)
  {
    v10 = [(RootNavigationController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    v49.receiver = self;
    v49.super_class = RootNavigationController;
    [(RootNavigationController *)&v49 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
    v11 = [(RootNavigationController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();
  }

  else
  {
    self->_isTransitioningTraitCollection = 1;
    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(RootNavigationController *)self traitCollection];
      *buf = 138412546;
      v51 = v6;
      v52 = 2112;
      v53 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[51150180] willTransitionToTraitCollection: %@ from %@", buf, 0x16u);
    }

    v11 = [(RootNavigationController *)self topMainViewControllerContainer];
    v15 = [v11 preferredPreSizeClassTransitionSelectedDate];
    if (v15)
    {
      [(CUIKCalendarModel *)self->_model setSelectedDate:v15];
    }

    v37 = v15;
    [(CUIKCalendarModel *)self->_model setSelectedDateChangesDelayedUntilAfterTransition:1];
    [(RootNavigationController *)self _updateInteractivePopAllowed];
    if ((CalSolariumEnabled() & 1) == 0 && -[RootNavigationController isNavigationBarHidden](self, "isNavigationBarHidden") && [v6 horizontalSizeClass] == 2 && -[RootNavigationController _containsViewControllerRequiringNavBarVisibilityRestoration](self, "_containsViewControllerRequiringNavBarVisibilityRestoration"))
    {
      [(RootNavigationController *)self setNavigationBarHidden:0];
    }

    v16 = [(RootNavigationController *)self traitCollection];
    v17 = [(RootNavigationController *)self currentViewType];
    v18 = [(RootNavigationController *)self firstResponder];
    v19 = [(RootNavigationController *)self currentViewType];
    v20 = [(RootNavigationController *)self topMainViewControllerContainer];
    v21 = [v20 shouldAdaptEventViewControllers];

    if (v21)
    {
      v22 = [(RootNavigationController *)self _tornDownJournalOfShownViewControllersTransitioningToTraitCollection:v6];
    }

    else
    {
      v22 = 0;
    }

    [(RootNavigationController *)self setEkui_futureTraitCollection:v6];
    v23 = [(RootNavigationController *)self window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    v48.receiver = self;
    v48.super_class = RootNavigationController;
    [(RootNavigationController *)&v48 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
    v24 = [(RootNavigationController *)self window];
    EKUIPopFallbackSizingContextWithViewHierarchy();

    if ([v16 horizontalSizeClass] == 2 && objc_msgSend(v6, "horizontalSizeClass") == 1 && v19 == 2)
    {
      v25 = [(RootNavigationController *)self model];
      self->_traitCollectionChangeShouldResultInCompactDayView = [v25 showDayAsList] ^ 1;
    }

    else
    {
      self->_traitCollectionChangeShouldResultInCompactDayView = 0;
    }

    [(PaletteView *)self->_paletteView updateForChangeToTraitCollection:v6];
    v26 = [(RootNavigationController *)self _preferredPostTransitionViewFromTraitCollection:v16 toTraitCollection:v6 currentViewType:v19];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000BE828;
    v42[3] = &unk_100210D58;
    v42[4] = self;
    v27 = v16;
    v43 = v27;
    v44 = v6;
    v46 = v17;
    v47 = v26;
    v28 = v22;
    v45 = v28;
    v29 = objc_retainBlock(v42);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000BE930;
    v39[3] = &unk_10020F1F0;
    v30 = v18;
    v40 = v30;
    v41 = self;
    v31 = objc_retainBlock(v39);
    if (v7 && [v7 isAnimated])
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

      v33 = [(RootNavigationController *)self window];
      EKUIPushFallbackSizingContextWithViewHierarchy();

      (v29[2])(v29, 0);
      v34 = [(RootNavigationController *)self window];
      EKUIPopFallbackSizingContextWithViewHierarchy();

      [v7 animateAlongsideTransition:0 completion:v31];
    }

    else
    {
      v35 = [(RootNavigationController *)self window];
      EKUIPushFallbackSizingContextWithViewHierarchy();

      (v29[2])(v29, 0);
      v36 = [(RootNavigationController *)self window];
      EKUIPopFallbackSizingContextWithViewHierarchy();

      (v31[2])(v31, 0);
    }

    [(CUIKCalendarModel *)self->_model setSelectedDateChangesDelayedUntilAfterTransition:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self traitCollection];
  v6 = [(RootNavigationController *)self _canSkipViewHierarchyRebuildingWhenTransitioningFromOldCollection:v4 toNewCollection:v5];

  if ((v6 & 1) == 0)
  {
    [(RootNavigationController *)self setEkui_futureTraitCollection:0];
    self->_traitCollectionChangeShouldResultInCompactDayView = 0;
  }

  [(RootNavigationController *)self _adjustNavBarVisibilityAfterTraitCollectionChange];
  v7 = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self _updatePaletteStateWithViewController:v7];

  v8.receiver = self;
  v8.super_class = RootNavigationController;
  [(RootNavigationController *)&v8 traitCollectionDidChange:v4];
}

- (id)_goToCompactWeek
{
  v3 = [(RootNavigationController *)self viewControllers];
  v4 = [NSMutableArray arrayWithArray:v3];
  v5 = [(RootNavigationController *)self topMainViewControllerContainer];
  v6 = [v3 indexOfObject:v5];
  v7 = [WeekViewContainerViewController alloc];
  model = self->_model;
  v9 = [(RootNavigationController *)self window];
  v10 = [(MainViewControllerContainer *)v7 initWithModel:model window:v9];

  v11 = [(RootNavigationController *)self ekui_futureTraitCollection];
  [(WeekViewContainerViewController *)v10 setEkui_futureTraitCollection:v11];

  [v4 insertObject:v10 atIndex:v6 + 1];
  [(RootNavigationController *)self setViewControllers:v4 animated:0];

  return v10;
}

- (void)_setNavigationStackOfMainViewControllersForTraitsTransitionFromTraitCollection:(id)a3 toNewTraitCollection:(id)a4 withPreTransitionViewType:(int64_t)a5 withPreferredPostTransitionViewType:(int64_t)a6
{
  v39 = a3;
  v10 = a4;
  v11 = [(RootNavigationController *)self _ensureStackBaseCalendarViewControllerContainerIsPresent];
  if ([v39 horizontalSizeClass] != 1 || objc_msgSend(v39, "verticalSizeClass") != 1)
  {
    if ([v10 horizontalSizeClass] == 1 && objc_msgSend(v10, "verticalSizeClass") == 1)
    {
      if (!self->_traitCollectionChangeShouldResultInCompactDayView)
      {
        v12 = [(RootNavigationController *)self _goToCompactWeek];
LABEL_30:
        v31 = 0;
        goto LABEL_37;
      }
    }

    else if ([v39 horizontalSizeClass] == 1 && objc_msgSend(v10, "horizontalSizeClass") == 2)
    {
      if (!self->_traitCollectionChangeShouldResultInCompactDayView && (a5 - 2) <= 2)
      {
        v13 = [(RootNavigationController *)self viewControllers];
        if ([v13 count] >= 2)
        {
          v14 = [(RootNavigationController *)self viewControllers];
          v15 = [v14 objectAtIndexedSubscript:1];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 nextLevelWeekViewController];
            if (v16)
            {
              v17 = [NSMutableArray arrayWithArray:v13];
              v18 = v17;
              if (a5 == 2)
              {
                [v17 removeLastObject];
              }

              [v18 insertObject:v16 atIndex:2];
              if ([v18 count] == 3)
              {
                [v16 setupForViewAppearance];
              }

              v19 = [v18 lastObject];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) != 0 && ([v18 lastObject], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v22 = v21;
                v23 = [v21 currentChildViewController];
                [v23 viewWillAppear:0];

                [(RootNavigationController *)self setViewControllers:v18];
                v24 = [v22 currentChildViewController];
                [v24 viewDidAppear:0];
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

    else if ([v39 horizontalSizeClass] == 2 && objc_msgSend(v10, "horizontalSizeClass") == 1)
    {
      v25 = [(RootNavigationController *)self model];
      v26 = [v25 showDayAsList];

      if (v26)
      {
        [(RootNavigationController *)self updateDayViewModeContainer];
      }

      else if (self->_traitCollectionChangeShouldResultInCompactDayView)
      {
        v27 = [(RootNavigationController *)self model];
        if ([v27 numDaysToShow] >= 2)
        {
          v28 = 2;
        }

        else
        {
          v28 = 3;
        }

        v29 = [(CUIKCalendarModel *)self->_model selectedDate];
        v30 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:v28 andDate:v29];

        goto LABEL_30;
      }
    }
  }

  v31 = 1;
LABEL_37:
  v32 = [v10 horizontalSizeClass];
  v34 = a6 != 4 || v32 != 2;
  if (a6 != -1 && v31 && v34)
  {
    v35 = [(CUIKCalendarModel *)self->_model selectedDate];
    v36 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:a6 andDate:v35];
  }

  v37 = [(RootNavigationController *)self topViewController];
  [(RootNavigationController *)self navigationController:self willShowViewController:v37 animated:0];
  v38 = [(RootNavigationController *)self view];
  [v38 setNeedsLayout];
}

- (void)restoreEventDetailViewControllers:(id)a3
{
  v4 = a3;
  v25 = [(RootNavigationController *)self topMainViewControllerContainer];
  v5 = [v25 currentChildViewController];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
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
          if ([(RootNavigationController *)v5 conformsToProtocol:&OBJC_PROTOCOL___EKEventEditViewDelegate])
          {
            v12 = v5;
          }

          else
          {
            v12 = self;
          }

          [v11 setEditViewDelegate:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [(RootNavigationController *)v5 reconfigureViewController:v11];
            goto LABEL_20;
          }

          v13 = [(RootNavigationController *)v5 conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegatePrivateAllInProcess];
          v14 = v5;
          if ((v13 & 1) == 0)
          {
            if ([(RootNavigationController *)v5 conformsToProtocol:&OBJC_PROTOCOL___EKEventViewDelegate])
            {
              v14 = v5;
            }

            else
            {
              v14 = self;
            }
          }

          [v11 setDelegate:v14];
        }

        v15 = [v11 event];
        [(RootNavigationController *)v5 reconfigureViewController:v11];
        if (v15)
        {
          [(RootNavigationController *)self model];
          v16 = v7;
          v17 = v9;
          v19 = v18 = v8;
          v20 = [v15 startCalendarDate];
          [v19 setSelectedDate:v20];

          v21 = [(RootNavigationController *)self model];
          [v21 setSelectedOccurrence:v15];

          v22 = [v15 startCalendarDate];
          [(RootNavigationController *)v5 selectDate:v22 animated:0];

          v8 = v18;
          v9 = v17;
          v7 = v16;
        }

LABEL_20:
        if (objc_opt_respondsToSelector())
        {
          v23 = v5;
        }

        else
        {
          v23 = [(RootNavigationController *)v5 viewControllerToShowFrom];
        }

        v24 = v23;
        [(RootNavigationController *)v23 showViewController:v11 sender:self animated:0 completion:0];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldSaveSelectedEvent
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  v3 = [v2 currentChildViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 selectedEventWasAutoSelected] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)didEnterBackground
{
  v3 = [(RootNavigationController *)self currentViewType];
  v4 = [(RootNavigationController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    self->_compactBackgroundedViewType = -1;
  }

  else
  {
    v6 = [(RootNavigationController *)self traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1)
    {
      self->_compactBackgroundedViewType = v3;
      v3 = -1;
    }

    else
    {
      v3 = -1;
      self->_compactBackgroundedViewType = -1;
    }
  }

  self->_regularBackgroundedViewType = v3;
}

- (id)bestDateForNewEvent
{
  v3 = [(RootNavigationController *)self topViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RootNavigationController *)self topViewController];
    v6 = [v5 bestDateForNewEvent];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)showDate:(id)a3 andTime:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000BF558;
  v8[3] = &unk_100210D80;
  v9 = self;
  v10 = a3;
  v11 = a4;
  v12 = v5;
  v7 = v10;
  [(RootNavigationController *)v9 _dismissPresentedViewControllerAnimated:v5 completion:v8];
}

- (BOOL)isDateVisible:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self topMainViewControllerContainer];
  if (!v5)
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No top main view controller to query if a date is visible.", v9, 2u);
    }
  }

  v7 = [v5 isDateVisible:v4];

  return v7;
}

- (void)currentlyVisibleDateRangeFromStartDate:(id *)a3 toEndDate:(id *)a4
{
  v6 = [(RootNavigationController *)self topMainViewControllerContainer];
  if (!v6)
  {
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No top main view controller to query if a date is visible.", v8, 2u);
    }
  }

  [v6 currentlyVisibleDateRangeFromStartDate:a3 toEndDate:a4];
}

- (void)showEvent:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5 context:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BF7D4;
  v11[3] = &unk_100210DC8;
  v12 = self;
  v13 = a3;
  v16 = a4;
  v14 = a6;
  v15 = a5;
  v9 = v14;
  v10 = v13;
  [(RootNavigationController *)v12 _dismissPresentedViewControllerAnimated:0 completion:v11];
}

- (void)showContactWithIdentifier:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF9A0;
  v5[3] = &unk_10020EC68;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)weekViewController:(id)a3 didEditEvent:(id)a4 creationMethod:(unint64_t)a5
{
  v14 = a4;
  v7 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:v14 model:self->_model creationMethod:a5 viewStart:1 eventEditViewDelegate:self];
  [(RootNavigationController *)self presentModalViewController:v7 withTransition:8];
  v8 = [v14 title];
  if (v8)
  {
    v9 = v8;
    v10 = [v14 title];
    if ([v10 length])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      v9 = [v7 viewControllers];
      v10 = [v9 lastObject];
      v12 = [v10 navigationItem];
      v13 = [v12 rightBarButtonItem];
      [v13 setEnabled:1];
    }
  }

LABEL_6:
}

- (void)updateTitleToDate:(id)a3 yearOnly:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  v6 = &CALFullYearFormat;
  if (!v4)
  {
    v6 = &CALFullYearMonth;
  }

  v7 = *v6;
  monthYearLabel = self->_monthYearLabel;
  v9 = [v18 date];
  v10 = [(RootNavigationController *)self attributedTitleForDate:v9 format:v7 rightAlign:0 yearOnly:v4];
  [(UILabel *)monthYearLabel setAttributedText:v10];

  v11 = [(RootNavigationController *)self childViewControllers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(RootNavigationController *)self childViewControllers];
      v15 = [v14 objectAtIndexedSubscript:v13];
      [(RootNavigationController *)self _updateNavigationTitleToContainer:v15 titleView:self->_titleView];

      ++v13;
      v16 = [(RootNavigationController *)self childViewControllers];
      v17 = [v16 count];
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
    v4 = [(RootNavigationController *)self _getSources];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [(RootNavigationController *)self _getAccountErrorForSource:v9];
          if ([CalAccountErrorSeverity severityForError:v10]- 1 <= 1)
          {
            v11 = [NSNumber numberWithUnsignedInteger:v10];
            v12 = [v9 sourceIdentifier];
            [v3 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [(RootNavigationController *)self setSourceErrorsDictionary:v3];
    [(RootNavigationController *)self updateErrorWithErrorDisplayManager];
  }
}

- (id)attributedTitleForDate:(id)a3 format:(id)a4 rightAlign:(BOOL)a5 yearOnly:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [v10 localizedStringWithFormat:a4];
  if ([v11 length])
  {
    v12 = [(RootNavigationController *)self _applyAttributesToDateString:v11 date:v10 rightAlign:v7 yearOnly:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_applyAttributesToDateString:(id)a3 date:(id)a4 rightAlign:(BOOL)a5 yearOnly:(BOOL)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  if (qword_100251A70 != -1)
  {
    sub_100170548();
  }

  v11 = &qword_100251A60;
  if (!v7)
  {
    v11 = &qword_100251A58;
  }

  v12 = *v11;
  v13 = [[NSMutableAttributedString alloc] initWithString:v9 attributes:v12];

  v14 = +[UIColor labelColor];
  [v13 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, objc_msgSend(v13, "length")}];

  if (!a6)
  {
    v15 = [v10 localizedYear];
    v16 = [v9 rangeOfString:v15];
    v18 = v17;
    v19 = +[UIColor systemGray4Color];
    [v13 addAttribute:NSForegroundColorAttributeName value:v19 range:{v16, v18}];
  }

  return v13;
}

- (void)_updateNavigationTitleToContainer:(id)a3 titleView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = v5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [v10 navigationItem];
    v8 = [v7 titleView];

    if (!v8)
    {
      v9 = [v10 navigationItem];
      [v9 setTitleView:v6];
    }
  }
}

- (void)updateBackButtonToDate:(id)a3
{
  v15 = a3;
  v4 = [(RootNavigationController *)self traitCollection];
  if ([v4 horizontalSizeClass] != 1)
  {
    v6 = CalSolariumEnabled();

    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v5 = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_10;
  }

  v7 = CalSolariumEnabled();

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(RootNavigationController *)self childViewControllers];
    v9 = [v8 count];

    if (v9 >= 2)
    {
      v10 = 1;
      do
      {
        v11 = [(RootNavigationController *)self childViewControllers];
        v12 = [v11 objectAtIndexedSubscript:v10];
        [(RootNavigationController *)self _updateBackButtonToDate:v15 container:v12];

        ++v10;
        v13 = [(RootNavigationController *)self childViewControllers];
        v14 = [v13 count];
      }

      while (v10 < v14);
    }
  }

LABEL_10:
}

- (void)_updateBackButtonToDate:(id)a3 container:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(RootNavigationController *)self window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v8 = v6;
  v9 = [(RootNavigationController *)self _higherScopeCompactCalendarViewControllerRelativeTo:v8];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v8 shouldUpdateOwnBackButtonWhenTopViewController])
  {
    v10 = [v8 updateBackButtonWhileTopViewControllerToDate:v14];
    if (v10)
    {
      v11 = [v9 parentViewController];
      v12 = [v11 navigationItem];
      [v12 setBackButtonTitle:v10];
    }

    goto LABEL_9;
  }

  if (CalSolariumEnabled() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v10 = [v9 parentViewController];
    [v10 updateBackButtonToDate:v14];
LABEL_9:
  }

  v13 = [(RootNavigationController *)self window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

- (id)_higherScopeCompactCalendarViewControllerRelativeTo:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self viewControllers];
  v6 = [v5 indexOfObject:v4];

  v7 = 0;
  if (!v4 || (v6 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
  {
    goto LABEL_11;
  }

  v8 = 0;
  v9 = v6 + 1;
  while (1)
  {
    v10 = [(RootNavigationController *)self viewControllers];
    v11 = [v10 objectAtIndex:v9 - 2];

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

  v13 = [v12 childViewControllerForCompactWidthRegularHeight];
  if (!v13)
  {
    v8 = v12;
    goto LABEL_7;
  }

  v7 = v13;

  v8 = v12;
LABEL_10:

LABEL_11:

  return v7;
}

- (void)setNavBarStringFromDate:(id)a3 includeMonth:(BOOL)a4 includeYear:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (!self->_navBarDateStringCache)
  {
    v9 = objc_opt_new();
    navBarDateStringCache = self->_navBarDateStringCache;
    self->_navBarDateStringCache = v9;
  }

  v11 = objc_opt_new();
  if (v6)
  {
    v12 = [v8 month];
  }

  else
  {
    v12 = -1;
  }

  [v11 setMonth:v12];
  if (v5)
  {
    v13 = [v8 year];
  }

  else
  {
    v13 = -1;
  }

  [v11 setYear:v13];
  v14 = [(RootNavigationController *)self window];
  v15 = [(RootNavigationController *)self traitCollection];
  v16 = paletteTitleFont(v14, v15);
  [v11 setFont:v16];

  v17 = [(NSMutableDictionary *)self->_navBarDateStringCache objectForKeyedSubscript:v11];
  if (v17 || ([(RootNavigationController *)self _navBarDateStringFromDate:v8 includingMonth:v6 includingYear:v5 format:0], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
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

          v18 = -[RootNavigationController _navBarDateStringFromDate:includingMonth:includingYear:format:](self, "_navBarDateStringFromDate:includingMonth:includingYear:format:", v8, v6, v5, [*(*(&v27 + 1) + 8 * v24) integerValue]);

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

- (id)_navBarDateStringFromDate:(id)a3 includingMonth:(BOOL)a4 includingYear:(BOOL)a5 format:(int64_t)a6
{
  v8 = a4;
  v10 = a3;
  if (v10)
  {
    if (!v8 || a5)
    {
      if (v8)
      {
        v17 = [(RootNavigationController *)self traitCollection];
        v18 = [(RootNavigationController *)self _navBarStringYearFontForTraitCollection:v17 useSmallerSize:1 bold:0];

        v19 = [(RootNavigationController *)self window];
        v20 = [(RootNavigationController *)self traitCollection];
        v13 = paletteTitleFont(v19, v20);

        if (a6 == 2)
        {
          v35 = [v10 date];
          v22 = CUIKVeryShortStringForMonthYear();

          [v10 month];
          v23 = CUIKStringVeryShortAbbreviationForMonth();
        }

        else if (a6 == 1)
        {
          v34 = [v10 date];
          v22 = CUIKShortStringForMonthYear();

          [v10 month];
          v23 = CUIKStringAbbreviationForMonth();
        }

        else if (a6)
        {
          v23 = 0;
          v22 = 0;
        }

        else
        {
          v21 = [v10 date];
          v22 = CUIKStringForMonthYear();

          [v10 month];
          v23 = CUIKStringForMonthNumber();
        }

        v47 = v23;
        v36 = [v23 lowercaseString];
        v37 = [v22 lowercaseString];
        v38 = [v37 rangeOfString:v36];
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

      v24 = (a6 - 1) < 2;
      v25 = [(RootNavigationController *)self traitCollection];
      v18 = [(RootNavigationController *)self _navBarStringYearFontForTraitCollection:v25 useSmallerSize:v24 bold:1];

      v26 = [v10 date];
      v13 = CUIKStringForYear();

      v16 = [[NSMutableAttributedString alloc] initWithString:v13];
      [v16 addAttribute:NSFontAttributeName value:v18 range:{0, objc_msgSend(v16, "length")}];
      v27 = [v10 date];
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

    v11 = [(RootNavigationController *)self window];
    v12 = [(RootNavigationController *)self traitCollection];
    v13 = paletteTitleFont(v11, v12);

    if (a6 == 2)
    {
      [v10 month];
      v14 = CUIKStringVeryShortAbbreviationForMonth();
    }

    else if (a6 == 1)
    {
      [v10 month];
      v14 = CUIKStringAbbreviationForMonth();
    }

    else
    {
      if (a6)
      {
        v18 = 0;
        goto LABEL_22;
      }

      [v10 month];
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

- (void)_updateLeftFixedSpaceBarButtonItemWidthWithViewController:(id)a3 targetWindowSize:(CGSize)a4
{
  v9 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(RootNavigationController *)self _createLeftFixedSpaceBarItemIfNeeded];
    [v9 leftBarButtonBlankFixedSpaceWidth];
    v5 = [(RootNavigationController *)self view];
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

- (void)_setCurrentDateLabelString:(id)a3
{
  v5 = a3;
  if (![(NSAttributedString *)self->_currentDateLabelString isEqualToAttributedString:v5])
  {
    objc_storeStrong(&self->_currentDateLabelString, a3);
    currentDateLabelString = self->_currentDateLabelString;
    v7 = [(PaletteView *)self->_paletteView dateString];
    LOBYTE(currentDateLabelString) = [(NSAttributedString *)currentDateLabelString isEqualToAttributedString:v7];

    if ((currentDateLabelString & 1) == 0)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000C1310;
      v9[3] = &unk_10020EB00;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
    }

    v8 = [(RootNavigationController *)self largeCurrentDateLabel];
  }
}

- (double)_dateLabelMaxWidth
{
  v3 = [(RootNavigationController *)self view];
  [v3 bounds];
  MidX = CGRectGetMidX(v17);
  [(RootNavigationController *)self _viewSwitcherSegmentWidth];
  v6 = MidX + v5 * -0.5 * [(RootNavigationController *)self _viewSwitcherNumSegments];

  v7 = [(RootNavigationController *)self topMainViewControllerContainer];
  v8 = [(RootNavigationController *)self view];
  [v8 bounds];
  [(RootNavigationController *)self _updateLeftFixedSpaceBarButtonItemWidthWithViewController:v7 targetWindowSize:v9, v10];

  [(UIBarButtonItem *)self->_leftFixedSpaceBarItem width];
  v12 = v6 + v11 * -1.5;
  v13 = [(RootNavigationController *)self view];
  [v13 layoutMargins];
  v15 = v12 + v14 * -2.0;

  return v15;
}

- (id)_navBarStringYearFontForTraitCollection:(id)a3 useSmallerSize:(BOOL)a4 bold:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    v9 = [(RootNavigationController *)self window];
    v10 = paletteTitleFont(v9, v8);
  }

  else
  {
    v11 = [v7 userInterfaceIdiom];

    v12 = &UIFontTextStyleTitle2;
    if (v11)
    {
      v12 = &UIFontTextStyleLargeTitle;
    }

    v10 = [UIFont _preferredFontForTextStyle:*v12 maximumContentSizeCategory:UIContentSizeCategoryMedium];
  }

  return v10;
}

- (unint64_t)_viewSwitcherIndexRepresentingViewType:(int64_t)a3
{
  if ((a3 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1001F8478[a3 + 1];
  }
}

- (int64_t)_viewTypeRepresentedByViewSwitcherIndex:(unint64_t)a3
{
  if (a3 > 4)
  {
    return -1;
  }

  else
  {
    return qword_1001F84A8[a3];
  }
}

- (void)_viewSwitcherSelectedValueChanged:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  v6 = -[RootNavigationController _viewTypeRepresentedByViewSwitcherIndex:](self, "_viewTypeRepresentedByViewSwitcherIndex:", [v4 selectedSegmentIndex]);
  if (v6 != [(RootNavigationController *)self currentViewType])
  {
    v7 = [(RootNavigationController *)self topMainViewControllerContainer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C163C;
    v9[3] = &unk_10020EE00;
    v9[4] = self;
    v9[5] = v6;
    v8 = [v7 performModalDialogsIfNeededWithContinue:v9];

    if (v8)
    {
      [v4 setSelectedSegmentIndex:{-[RootNavigationController _viewSwitcherIndexRepresentingViewType:](self, "_viewSwitcherIndexRepresentingViewType:", -[RootNavigationController currentViewType](self, "currentViewType"))}];
    }
  }
}

- (void)_configureViewSwitcherShowingViewController:(id)a3
{
  v4 = [(RootNavigationController *)self viewSwitcher];
  [v4 setSelectedSegmentIndex:{-[RootNavigationController _viewSwitcherIndexRepresentingViewType:](self, "_viewSwitcherIndexRepresentingViewType:", -[RootNavigationController currentViewType](self, "currentViewType"))}];
  [(RootNavigationController *)self updateViewPickerToViewType:[(RootNavigationController *)self currentViewType]];
}

- (id)_switcherFontOfSize:(double)a3 isSemibold:(BOOL)a4
{
  if (a4)
  {
    [UIFont systemFontOfSize:a3 weight:UIFontWeightSemibold];
  }

  else
  {
    [UIFont systemFontOfSize:a3];
  }
  v4 = ;

  return v4;
}

- (void)_setSegmentWidthsForViewSwitcher:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(RootNavigationController *)self _viewSwitcherNumSegments];
    [(RootNavigationController *)self _viewSwitcherSegmentWidth];
    v4 = v9;
    if (v5)
    {
      v7 = v6;
      for (i = 0; i != v5; ++i)
      {
        [v9 setWidth:i forSegmentAtIndex:v7];
        v4 = v9;
      }
    }
  }
}

- (void)selectViewType:(int64_t)a3
{
  if ([(RootNavigationController *)self currentViewType]!= a3)
  {
    v5 = [(RootNavigationController *)self topMainViewControllerContainer];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C1A20;
    v7[3] = &unk_10020EE00;
    v7[4] = self;
    v7[5] = a3;
    v6 = [v5 performModalDialogsIfNeededWithContinue:v7];

    if (v6)
    {
      [(RootNavigationController *)self updateViewPickerToViewType:a3];
    }
  }
}

- (void)updateViewPickerToViewType:(int64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(UIButton *)self->_viewPicker menu];
  v5 = [v4 children];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (a3 > 1)
        {
          if (a3 == 2)
          {
            v11 = [*(*(&v16 + 1) + 8 * v9) identifier];
            v12 = v11;
            v13 = @"Week";
          }

          else
          {
            if (a3 != 3)
            {
              goto LABEL_17;
            }

            v11 = [*(*(&v16 + 1) + 8 * v9) identifier];
            v12 = v11;
            v13 = @"Day";
          }
        }

        else if (a3)
        {
          if (a3 != 1)
          {
            goto LABEL_17;
          }

          v11 = [*(*(&v16 + 1) + 8 * v9) identifier];
          v12 = v11;
          v13 = @"Month";
        }

        else
        {
          v11 = [*(*(&v16 + 1) + 8 * v9) identifier];
          v12 = v11;
          v13 = @"Year";
        }

        v14 = [v11 isEqualToString:v13];

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
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_notificationCountChanged:(id)a3
{
  if (qword_100251A80 != -1)
  {
    sub_10017055C();
  }

  v4 = [(RootNavigationController *)self model];
  v5 = qword_100251A78;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C21F0;
  v7[3] = &unk_10020EC68;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (id)_inboxTitleForNotificationCount:(unint64_t)a3
{
  if (a3)
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

- (void)handleURL:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v69 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Preparing to handle URL: [%@]", buf, 0xCu);
  }

  v9 = [v6 scheme];
  v10 = [(RootNavigationController *)self model];
  v11 = [v6 searchResultIdentifier];

  if (v11)
  {
    v12 = [v6 searchResultIdentifier];
    v13 = [v12 stringValue];
  }

  else
  {
    v13 = 0;
  }

  if ([v9 isEqualToString:_EKEventURLScheme])
  {
    v14 = [v10 eventStore];
    v15 = [v14 _eventWithURI:v6 checkValid:1];

    if (v15)
    {
      v16 = [v15 calendar];
      v17 = [v16 source];
      [v10 updateSourceForSelectedIdentity:v17 selectedCalendars:0];

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
        [(RootNavigationController *)self showEvent:v15 animated:0 showMode:1 context:v7];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if ([v9 isEqualToString:@"calinvite"])
  {
    v18 = [v6 resourceSpecifier];
    v15 = [NSURL URLWithString:v18];

    v19 = [v10 eventStore];
    v20 = [v19 _eventWithURI:v15 checkValid:1];

    if (v20)
    {
      model = self->_model;
      [v20 calendar];
      v22 = v61 = v11;
      [v22 source];
      v58 = v15;
      v23 = v6;
      v24 = self;
      v25 = v9;
      v26 = v13;
      v27 = v10;
      v29 = v28 = v7;
      [(CUIKCalendarModel *)model updateSourceForSelectedIdentity:v29 selectedCalendars:0];

      v7 = v28;
      v10 = v27;
      v13 = v26;
      v9 = v25;
      self = v24;
      v6 = v23;
      v15 = v58;

      v11 = v61;
      [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
      [(RootNavigationController *)self showEvent:v20 animated:0 showMode:1 context:v7];
    }

    goto LABEL_24;
  }

  if ([v9 isEqualToString:@"calinvitelist"] && objc_msgSend(v10, "allEventNotificationsCount"))
  {
    [v10 setSelectedOccurrence:0];
    v30 = [(RootNavigationController *)self showInboxAnimated:0];
LABEL_25:
    v31 = 0;
    v32 = 0;
    goto LABEL_26;
  }

  if (([v9 isEqualToString:@"calsubcal"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"webcal"))
  {
    v15 = [CalWindowRootViewController sanitizeCalSubCal:v6];
    if (v15)
    {
      [(RootNavigationController *)self _showAddSubscribedCalendarWithURL:v15];
    }

    goto LABEL_24;
  }

  if (![v9 isEqualToString:@"calshow"])
  {
    goto LABEL_25;
  }

  v33 = [v6 host];
  if (![v33 isEqual:@"familyCalendar"])
  {
    v62 = v11;
    v35 = [v6 resourceSpecifier];
    if ([objc_opt_class() _diagnosticsAvailable] && objc_msgSend(v35, "rangeOfString:", @"?calendardiagnostics=reporttraveladvisoryproblem") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v35, "rangeOfString:", @"?calendardiagnostics=reportproblem") != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(RootNavigationController *)self _showDebugReportProblemViewController];
      v31 = 0;
      v34 = v35;
      v32 = 0;
      goto LABEL_58;
    }

    v56 = v33;
    v36 = [v35 rangeOfString:@"?eventid="];
    v57 = v35;
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = [v35 rangeOfString:@"?contactid="];
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = 0;
        goto LABEL_47;
      }

      v43 = v38;
      v44 = v39;
      v59 = [v35 substringToIndex:v38];
      v45 = v43 + v44;
      if ([v35 length] <= v45)
      {
        v32 = 0;
      }

      else
      {
        v32 = [v35 substringFromIndex:v45];
      }
    }

    else
    {
      v40 = v36;
      v41 = v37;
      v59 = [v35 substringToIndex:v36];
      if (&v40[v41] >= [v35 length])
      {
        v32 = 0;
      }

      else
      {
        v42 = [v35 substringFromIndex:?];

        v32 = 0;
        v13 = v42;
      }

      v11 = v62;
    }

    v46 = v59;
    if (v59)
    {
LABEL_48:
      v60 = v46;
      if ([v46 length])
      {
        v55 = v7;
        v31 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v46 intValue]);
        v47 = [(RootNavigationController *)self currentViewType];
        if (v47 == -1)
        {
          if (EKUIShouldSaveStateInPreferences())
          {
            v48 = +[CUIKPreferences sharedPreferences];
            v49 = [v48 lastViewMode];
            v47 = [v49 integerValue];
          }

          else
          {
            v47 = -1;
          }
        }

        [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0, v47];
        v51 = [v10 calendar];
        v52 = [v51 timeZone];
        v50 = [EKCalendarDate calendarDateWithDate:v31 timeZone:v52];

        v53 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:v54 andDate:v50];
        [(RootNavigationController *)self showDate:v50 andTime:1 animated:0];
        v7 = v55;
        v11 = v62;
      }

      else
      {
        v31 = 0;
        v50 = v13;
        v13 = 0;
      }

      v33 = v56;
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
  v64 = v10;
  v65 = self;
  [(RootNavigationController *)self showCalendarsAnimated:1 completion:v63];
  v31 = 0;
  v32 = 0;
  v34 = v64;
LABEL_58:

LABEL_26:
  if ([v13 length])
  {
    [(RootNavigationController *)self showEventWithIdentifier:v13 isSearchResult:v11 != 0 date:v31 context:v7];
  }

  else if ([v32 length])
  {
    [(RootNavigationController *)self showContactWithIdentifier:v32];
  }
}

- (void)showEventWithIdentifier:(id)a3 isSearchResult:(BOOL)a4 date:(id)a5 context:(id)a6
{
  v8 = a4;
  v27 = a3;
  v10 = a5;
  v11 = a6;
  if ([v27 length])
  {
    v12 = [v27 componentsSeparatedByString:@"_"];
    if ([v12 count] < 2)
    {
      v14 = kCADMainDatabaseID;
      v16 = [v27 intValue];
    }

    else
    {
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v13 intValue];

      v15 = [v12 objectAtIndexedSubscript:1];
      v16 = [v15 intValue];
    }

    v17 = [EKObjectID objectIDWithEntityType:2 rowID:v16 databaseID:v14];
    if (v16 < 1 || (v14 & 0x80000000) != 0)
    {
      goto LABEL_13;
    }

    model = self->_model;
    if (!v10 || v8)
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
      v19 = [(CUIKCalendarModel *)model eventStore];
      v20 = [v19 eventForObjectID:v17 occurrenceDate:v10];

      if (!v20)
      {
        goto LABEL_13;
      }
    }

    v21 = self->_model;
    v22 = [v20 calendar];
    v23 = [v22 source];
    [(CUIKCalendarModel *)v21 updateSourceForSelectedIdentity:v23 selectedCalendars:0];

    v24 = self->_model;
    v25 = [v20 calendar];
    v26 = [v25 objectID];
    [(CUIKCalendarModel *)v24 ensureCalendarVisibleWithId:v26];

    [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
    [(RootNavigationController *)self showEvent:v20 animated:0 showMode:1 context:v11];

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
  v3 = [(RootNavigationController *)self reportProblemNavigationController];

  if (!v3)
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
    v9 = [v6 navigationItem];
    [v9 setRightBarButtonItem:v8];

    [(RootNavigationController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)_showAddSubscribedCalendarWithURL:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C328C;
  v4[3] = &unk_10020F7A8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(RootNavigationController *)v5 _dismissPresentedViewControllerAnimated:0 completion:v4];
}

- (void)_dismissReportProblemController
{
  [(RootNavigationController *)self dismissViewControllerAnimated:1 completion:0];

  [(RootNavigationController *)self setReportProblemNavigationController:0];
}

- (id)resetToYearView
{
  v3 = 0;
  if ([(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0])
  {
    v4 = [(RootNavigationController *)self topViewController];
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
          v9 = [(RootNavigationController *)self topViewController];
          *buf = v19;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Popping top view controller: [%@].", buf, 0xCu);
        }

        v10 = [(RootNavigationController *)self popViewControllerAnimated:0, v19];
        v11 = [(RootNavigationController *)self topViewController];
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();
      }

      while ((v12 & 1) == 0);
    }

    v13 = [(RootNavigationController *)self viewControllers];
    v14 = [v13 objectAtIndex:0];
    v3 = [v14 currentChildViewController];

    v15 = [(RootNavigationController *)self model];
    v16 = [v15 selectedDate];

    v17 = [v16 date];
    [v3 showDate:v17 animated:0];
  }

  return v3;
}

- (id)resetToMonthView
{
  v3 = [(RootNavigationController *)self resetToYearView];

  if (v3)
  {
    v4 = [(RootNavigationController *)self model];
    v5 = [v4 selectedDate];

    v6 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:1 andDate:v5];
    v7 = [v6 currentChildViewController];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)resetToMonthViewSplit:(BOOL)a3
{
  v3 = a3;
  v5 = [(RootNavigationController *)self resetToMonthView];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = +[CUIKPreferences sharedPreferences];
      v8 = [v7 monthViewScaleSize];

      if (v3)
      {
        v8 = 1;
      }

      else if (v8 == 3)
      {
        v9 = +[CUIKPreferences sharedPreferences];
        v8 = [v9 monthViewEventScaleSize];
      }

      [v6 animateToMonthWeekSize:v8 divided:v3];
      [(RootNavigationController *)self updateDividedMonthBarButtonItemAnimated:0];
    }

    v10 = v5;
  }

  return v5;
}

- (id)resetToDayView
{
  v3 = [(RootNavigationController *)self resetToMonthView];

  if (v3)
  {
    v4 = [(CUIKCalendarModel *)self->_model selectedDate];
    v5 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:3 andDate:v4];

    v6 = [(RootNavigationController *)self viewControllers];
    v7 = [v6 lastObject];
    v8 = [v7 currentChildViewController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_now
{
  v2 = [(RootNavigationController *)self model];
  v3 = [v2 calendar];
  v4 = [v3 timeZone];

  v5 = [EKCalendarDate alloc];
  v6 = CUIKNowComponents();
  v7 = [v5 initWithDateComponents:v6 timeZone:v4];

  return v7;
}

- (id)resetToWeekView
{
  v3 = [(RootNavigationController *)self resetToYearView];

  if (v3)
  {
    v4 = [(CUIKCalendarModel *)self->_model selectedDate];
    v5 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:2 andDate:v4];

    v6 = [(RootNavigationController *)self viewControllers];
    v7 = [v6 lastObject];
    v8 = [v7 currentChildViewController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_topPresentedController
{
  v2 = self;
  v3 = [(RootNavigationController *)v2 presentedViewController];

  if (v3)
  {
    do
    {
      v4 = [(RootNavigationController *)v2 presentedViewController];

      v5 = [(RootNavigationController *)v4 presentedViewController];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (BOOL)shouldHandleCanPerformActionForSelector:(SEL)a3
{
  v5 = [(RootNavigationController *)self _willKeyCommandChangeSelectedDate:?]|| [(RootNavigationController *)self _willKeyCommandChangeSelectedEvent:a3];
  if ("handleDayKeyCommand" == a3 || "handleWeekKeyCommand" == a3 || "handleMonthKeyCommand" == a3 || "handleYearKeyCommand" == a3 || "paste:" == a3 || "copy:" == a3 || "cut:" == a3 || "delete:" == a3 || "handleDeleteKeyCommand" == a3 || "handleDuplicateKeyCommand" == a3 || "handleViewAvailabilityCommand" == a3 || "_performEditKeyCommand" == a3)
  {
    return 1;
  }

  return v5;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v24.receiver = self;
  v24.super_class = RootNavigationController;
  v7 = [(RootNavigationController *)&v24 canPerformAction:a3 withSender:v6];
  v8 = [(RootNavigationController *)self traitCollection];
  if ([v8 horizontalSizeClass] != 1)
  {

    goto LABEL_14;
  }

  if ("handleDayKeyCommand" == a3 || "handleWeekKeyCommand" == a3 || "handleMonthKeyCommand" == a3)
  {

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if ("handleYearKeyCommand" == a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ([(RootNavigationController *)self _willKeyCommandChangeSelectedEvent:a3])
  {
    v11 = [(RootNavigationController *)self _canChangeSelectedEvent];
  }

  else
  {
    if (![(RootNavigationController *)self _willKeyCommandChangeSelectedDate:a3])
    {
      goto LABEL_19;
    }

    v11 = [(RootNavigationController *)self _canChangeSelectedDate];
  }

  v7 = v11;
LABEL_19:
  if (([CUIKPasteboardUtilities declinesToPerformCutCopyPasteAction:a3 withSender:v6]& 1) == 0)
  {
    if ("paste:" == a3)
    {
      v12 = [(CUIKCalendarModel *)self->_model pasteboardManager];
      v7 = [v12 canPerformPaste];
    }

    if ("copy:" == a3)
    {
      v17 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v18 = 1;
    }

    else
    {
      if ("cut:" != a3)
      {
        if ("handleViewAvailabilityCommand" != a3)
        {
LABEL_37:
          if ("delete:" == a3 || "handleDeleteKeyCommand" == a3)
          {
            v20 = [v6 sender];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              goto LABEL_20;
            }

            v21 = [v6 sender];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              goto LABEL_20;
            }

            v19 = [(RootNavigationController *)self _canPerformDeleteKeyCommand];
          }

          else if ("handleDuplicateKeyCommand" == a3)
          {
            v19 = [(RootNavigationController *)self _canPerformDuplicateKeyCommand];
          }

          else if ("_performEditKeyCommand" == a3)
          {
            v19 = [(RootNavigationController *)self _canPerformEditKeyCommand];
          }

          else if ("handleSelectNextOccurrenceCommand" == a3)
          {
            v19 = [(RootNavigationController *)self _canPerformRecurringEventNextOccurrenceSelectionCommand];
          }

          else
          {
            if ("handleSelectPreviousOccurrenceCommand" != a3)
            {
              goto LABEL_52;
            }

            v19 = [(RootNavigationController *)self _canPerformRecurringEventPreviousOccurrenceSelectionCommand];
          }

          v7 = v19;
          goto LABEL_52;
        }

        v13 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
        if ([v13 count] == 1)
        {
          v14 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
          v15 = [v14 firstObject];

          if (!v15 || ![v15 hasAttendees])
          {
            v7 = 0;
            goto LABEL_36;
          }

          v13 = [v15 calendar];
          v16 = [v13 source];
          v7 = [v16 supportsAvailabilityRequests];
        }

        else
        {
          v15 = 0;
          v7 = 0;
        }

LABEL_36:
        goto LABEL_37;
      }

      v17 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      v18 = 0;
    }

    v7 = [CUIKPasteboardUtilities allEventsValidForAction:v18 fromEvents:v17];

    goto LABEL_52;
  }

LABEL_20:
  v7 = 0;
LABEL_52:

  return v7;
}

- (BOOL)_canChangeSelectedEvent
{
  if ([(RootNavigationController *)self _isTextEditingInProgress]|| [(RootNavigationController *)self _isAddEventPopoverDisplayed])
  {
    return 0;
  }

  v4 = [(RootNavigationController *)self topMainViewControllerContainer];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v4 mainViewControllerCanChangeSelectedEvent];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_canChangeSelectedDate
{
  if ([(RootNavigationController *)self _isTextEditingInProgress]|| [(RootNavigationController *)self _isAddEventPopoverDisplayed])
  {
    return 0;
  }

  v4 = [(RootNavigationController *)self topMainViewControllerContainer];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v4 mainViewControllerCanChangeSelectedDate];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_isTextEditingInProgress
{
  v2 = [(RootNavigationController *)self firstResponder];
  v3 = [v2 conformsToProtocol:&OBJC_PROTOCOL___UIKeyInput];

  return v3;
}

- (BOOL)_isAddEventPopoverDisplayed
{
  v2 = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_switchToView:(int64_t)a3
{
  if (!self->_viewSwitchKeyCommandsTemporarilyLockedOut)
  {
    v5 = [(RootNavigationController *)self presentedViewController];

    if (!v5)
    {
      v6 = [(RootNavigationController *)self traitCollection];
      v7 = [v6 horizontalSizeClass];

      if (v7 == 2 && [(RootNavigationController *)self currentViewType]!= a3)
      {
        self->_viewSwitchKeyCommandsTemporarilyLockedOut = 1;
        v8 = [(RootNavigationController *)self topMainViewControllerContainer];
        v9 = [v8 bestDateForNewEvent];

        v10 = [(RootNavigationController *)self pushCalendarViewControllerWithViewType:a3 andDate:v9];
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

  v6 = [(RootNavigationController *)self model];
  v4 = [v6 eventStore];
  v5 = [v4 refreshEverythingIfNecessary:1];
}

- (void)handleNewSubscribedCalendarCommand
{
  v3 = [(RootNavigationController *)self presentedViewController];

  if (!v3)
  {
    v4 = [EKSubscribedCalendarEditor alloc];
    v5 = [(RootNavigationController *)self model];
    v6 = [v5 eventStore];
    v7 = [(RootNavigationController *)self model];
    v8 = [v7 sourceForSelectedIdentity];
    v10 = [v4 initWithCalendar:0 eventStore:v6 entityType:0 limitedToSource:v8];

    [v10 setDelegate:self];
    v9 = [[UINavigationController alloc] initWithRootViewController:v10];
    [v9 setPreferredContentSize:{480.0, 480.0}];
    [(RootNavigationController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)handleSelectNextOccurrenceCommand
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v2 showNextOccurrenceOfSelectableItem];
}

- (void)handleSelectPreviousOccurrenceCommand
{
  v2 = [(RootNavigationController *)self topMainViewControllerContainer];
  [v2 showPreviousOccurrenceOfSelectableItem];
}

- (BOOL)_canPerformSequentialEventSelectionCommand
{
  if (![(RootNavigationController *)self _canChangeSelectedEvent])
  {
    return 0;
  }

  v3 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_canPerformRecurringEventNextOccurrenceSelectionCommand
{
  if (![(RootNavigationController *)self _canPerformSequentialEventSelectionCommand])
  {
    return 0;
  }

  v3 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  v4 = [v3 nextOccurrence];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)_canPerformRecurringEventPreviousOccurrenceSelectionCommand
{
  if (![(RootNavigationController *)self _canPerformSequentialEventSelectionCommand])
  {
    return 0;
  }

  v3 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
  v4 = [v3 previousOccurrence];
  v5 = v4 != 0;

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
  v3 = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    [(RootNavigationController *)self _dismissPresentedViewControllerAnimated:0 completion:0];
  }

  else
  {
    v5 = [(CUIKCalendarModel *)self->_model selectedOccurrence];
    if (v5)
    {
      v6 = v5;
      v7 = [(RootNavigationController *)self topMainViewControllerContainer];
      v8 = [v7 currentChildViewController];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v11 = [(RootNavigationController *)self topMainViewControllerContainer];
        v10 = [v11 currentChildViewController];
        [v10 performSelector:"handleCloseKeyCommand"];
      }
    }
  }
}

- (void)handleDismissSplashScreenKeyCommand
{
  v2 = [(RootNavigationController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 dismissSplashScreen];
  }
}

- (void)handleViewAvailabilityCommand
{
  v3 = [(RootNavigationController *)self _topPresentedController];
  v4 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  v5 = [v4 firstObject];
  v6 = [EKUIAvailabilityViewController presentAvailabilityViewControllerForEvent:v5 fromViewController:v3];

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
  v3 = [(RootNavigationController *)self presentedViewController];

  if (!v3)
  {
    v4 = [GoToDateViewController alloc];
    v5 = [(RootNavigationController *)self model];
    v6 = [v5 selectedDate];
    v7 = [v6 date];
    v8 = [(GoToDateViewController *)v4 initWithDate:v7];

    [(GoToDateViewController *)v8 setDelegate:self];
    [(RootNavigationController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (BOOL)_canPerformDeleteKeyCommand
{
  v3 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([v3 count])
  {
    v4 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    v5 = [EKUIContextMenuActions eventsAllDeletable:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)delete:(id)a3
{
  if ([(RootNavigationController *)self _canPerformDeleteKeyCommand])
  {
    v5 = [(RootNavigationController *)self _topPresentedController];
    v4 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    [EKUIContextMenuActions deleteEvents:v4 presentationController:v5];
  }
}

- (BOOL)allSelectedEventsIndividuallyRepresented
{
  v3 = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  v5 = [v3 allEventsIndividuallyRepresented:v4];

  return v5;
}

- (BOOL)_canPerformDuplicateKeyCommand
{
  v3 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([v3 count])
  {
    v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [v4 calendarToPasteTo];
    if (v5)
    {
      v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
      if ([CUIKPasteboardUtilities allEventsValidForAction:2 fromEvents:v6])
      {
        v7 = [(RootNavigationController *)self allSelectedEventsIndividuallyRepresented];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleDuplicateKeyCommand
{
  if ([(RootNavigationController *)self _canPerformDuplicateKeyCommand])
  {
    v5 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v3 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
    v4 = [NSSet setWithArray:v3];
    [v5 duplicateEvents:v4 withDateMode:3 delegate:self];
  }
}

- (void)handleSpaceBarKeyCommand
{
  v3 = [(RootNavigationController *)self presentedViewController];
  if (!v3)
  {
    v4 = [(CUIKCalendarModel *)self->_model selectedOccurrencesForSelectionSource:1];
    v5 = [v4 count];

    if (!v5)
    {
      return;
    }

    v6 = [(RootNavigationController *)self topMainViewControllerContainer];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(RootNavigationController *)self topMainViewControllerContainer];
    [v8 showDetailsForCurrentSelectableItem];
    v3 = v8;
  }
}

- (void)handleMoveEventUpCommand
{
  v3 = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RootNavigationController *)self topMainViewControllerContainer];
    [v5 moveSelectedOccurrenceUp];
  }
}

- (void)handleMoveEventDownCommand
{
  v3 = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RootNavigationController *)self topMainViewControllerContainer];
    [v5 moveSelectedOccurrenceDown];
  }
}

- (void)handleMoveEventLeftCommand
{
  v3 = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RootNavigationController *)self topMainViewControllerContainer];
    [v5 moveSelectedOccurrenceLeft];
  }
}

- (void)handleMoveEventRightCommand
{
  v3 = [(RootNavigationController *)self topMainViewControllerContainer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RootNavigationController *)self topMainViewControllerContainer];
    [v5 moveSelectedOccurrenceRight];
  }
}

- (void)paste:(id)a3
{
  v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
  [v4 pasteEventsWithDateMode:0 delegate:self];
}

- (void)cut:(id)a3
{
  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([v6 count])
  {
    v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:v6];
    [v4 cutEvents:v5 delegate:self];
  }
}

- (void)copy:(id)a3
{
  v6 = [(CUIKCalendarModel *)self->_model selectedOccurrences];
  if ([v6 count])
  {
    v4 = [(CUIKCalendarModel *)self->_model pasteboardManager];
    v5 = [NSSet setWithArray:v6];
    [v4 copyEvents:v5 delegate:self];
  }
}

- (BOOL)_canPerformEditKeyCommand
{
  v3 = [(RootNavigationController *)self presentedViewController];
  if (v3)
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
    v5 = [v3 firstObject];

    v4 = v5;
    if (v5)
    {
      [(RootNavigationController *)self showEvent:v5 animated:1 showMode:3 context:0];
      v4 = v5;
    }
  }
}

- (id)pasteboardManager
{
  v2 = [(RootNavigationController *)self model];
  v3 = [v2 pasteboardManager];

  return v3;
}

- (void)pasteboardManager:(id)a3 presentAlert:(id)a4
{
  v5 = a4;
  v6 = [(RootNavigationController *)self _topPresentedController];
  [v5 presentFromSource:v6];
}

- (void)pasteboardManager:(id)a3 didFinishPasteWithResult:(unint64_t)a4 willOpenEditor:(BOOL)a5
{
  if (!a4 && !a5)
  {
    [(RootNavigationController *)self attemptDisplayReviewPrompt];
  }
}

- (void)displayIntegrationAlert:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self parentViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = self;
  }

  v8 = v7;

  v9 = [[EKUIIntegrationAlertDisplayer alloc] initWithViewController:v8 options:0];
  [v9 displayIntegrationAlert:v4];
}

- (void)goToDateViewController:(id)a3 didCompleteWithDate:(id)a4
{
  v5 = a4;
  v6 = [(RootNavigationController *)self model];
  v7 = [v6 eventStore];
  v8 = [v7 timeZone];
  v9 = [EKCalendarDate calendarDateWithDate:v5 timeZone:v8];

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
  v5 = [(RootNavigationController *)self topViewController];
  v6 = [(RootNavigationController *)self todayBarButtonItem];
  [v4 addObserversForController:v5 todayButton:v6];

  [(RootNavigationController *)self updateDeviceOrientationForJumpToTodayTip];
}

- (void)updateLabelWithAccountIdentifier:(id)a3 error:(unint64_t)a4
{
  v6 = [a3 copy];
  currentDisplayingErrorAccount = self->_currentDisplayingErrorAccount;
  self->_currentDisplayingErrorAccount = v6;

  self->_currentDisplayingError = a4;
  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  v8 = [(RootNavigationController *)self _errorTextForError:a4];
  v9 = [(RootNavigationController *)self subtitleLabel];
  v10 = [v9 text];
  v11 = [v8 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [(RootNavigationController *)self titleView];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000C5BE4;
    v19[3] = &unk_10020EC68;
    v19[4] = self;
    v20 = v8;
    [UIView transitionWithView:v12 duration:5243012 options:v19 animations:0 completion:0.5];

    v13 = [CalAccountErrorSeverity severityForError:a4];
    v14 = @"Account";
    if (v13 == 1)
    {
      v14 = @"Network";
    }

    v15 = v14;
    v16 = [(RootNavigationController *)self currentViewType];
    v21[0] = @"Component";
    v21[1] = @"ErrorType";
    v22[0] = @"HeaderUI";
    v22[1] = v15;
    v21[2] = @"currentView";
    v17 = [NSNumber numberWithInt:[(RootNavigationController *)self currentViewTypeInt:v16]];
    v22[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

    CalAnalyticsSendEvent();
    +[EKUIAccountErrorsAnalyticsTracker trackCalendarListDisplayedOfflineError];
  }
}

- (void)updateLabelNoErrorWithText:(id)a3
{
  v4 = a3;
  currentDisplayingErrorAccount = self->_currentDisplayingErrorAccount;
  self->_currentDisplayingErrorAccount = 0;

  self->_currentDisplayingError = 0;
  [(RootNavigationController *)self _setupTitleViewIfNeeded];
  v6 = [(RootNavigationController *)self subtitleLabel];
  v7 = [v6 text];
  v8 = [v4 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(RootNavigationController *)self titleView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C5DAC;
    v10[3] = &unk_10020EC68;
    v10[4] = self;
    v11 = v4;
    [UIView transitionWithView:v9 duration:5243012 options:v10 animations:0 completion:0.5];
  }
}

- (ViewSwitcherLayoutHandler)viewSwitcherLayoutHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_viewSwitcherLayoutHandler);

  return WeakRetained;
}

@end