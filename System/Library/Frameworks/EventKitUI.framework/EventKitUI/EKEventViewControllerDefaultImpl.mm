@interface EKEventViewControllerDefaultImpl
+ (id)_orderedActionsForMask:(int64_t)mask;
+ (void)adjustLayoutForCell:(id)cell tableViewWidth:(double)width numRowsInSection:(unint64_t)section cellRow:(unint64_t)row forceLayout:(BOOL)layout;
+ (void)setDefaultDatesForEvent:(id)event;
- (BOOL)_backingEventAllowsEditing;
- (BOOL)_canPerformEditKeyCommand;
- (BOOL)_isDisplayingDeletableEvent;
- (BOOL)_isDisplayingInvitation;
- (BOOL)_isDisplayingSuggestion;
- (BOOL)_navigationBarShouldBeHidden;
- (BOOL)_performSave:(int64_t)save animated:(BOOL)animated;
- (BOOL)_presentedInAPopOver;
- (BOOL)_refreshEventAndReload;
- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage;
- (BOOL)_shouldDisplayDoneButton;
- (BOOL)_shouldDisplayStatusButtons;
- (BOOL)_shouldPopSelf;
- (BOOL)_shouldShowEditButton;
- (BOOL)_shouldShowInlineButtonFromDelegate;
- (BOOL)allowsCalendarPreview;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)eventDetailItemShouldPresentShareSheet:(id)sheet;
- (BOOL)shouldShowEditButtonInline;
- (BOOL)shouldShowNextButton;
- (BOOL)shouldShowPreviousButton;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)_idealSize;
- (CGSize)calculatePreferredContentSize;
- (EKEventViewControllerDefaultImpl)init;
- (EKEventViewDelegate)delegate;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (UIEdgeInsets)_customInsets;
- (UIViewController)presentationSourceViewController;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (double)tableViewSectionContentWidth;
- (id)_detachSheetHandler;
- (id)_footerLabelContainingText:(id)text;
- (id)_indexPathForAttendeesDetailItem;
- (id)_indexPathForSection:(unint64_t)section;
- (id)_itemAtIndexPath:(id)path section:(id *)section subitemIndex:(unint64_t *)index;
- (id)_proposedDate;
- (id)_sectionAtIndex:(int64_t)index;
- (id)_statusButtonsContainerView;
- (id)_statusButtonsView;
- (id)_viewControllerForEditorPresentation;
- (id)accessDeniedView;
- (id)getCurrentContext;
- (id)items;
- (id)navigationController;
- (id)navigationItem;
- (id)pasteboardManagerForEventEditViewController:(id)controller;
- (id)presentationNavigationDelegate;
- (id)statusButtonActions;
- (id)tableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)toolbarItems;
- (id)viewTitle;
- (int64_t)_actionsMask;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_acceptProposedTimeWithSourceViewForPopover:(id)popover;
- (void)_addToCalendarClicked:(id)clicked;
- (void)_annotateEventEntityIfNeeded;
- (void)_cancelProposedTime;
- (void)_clearCustomTitle;
- (void)_configureItemsForStoreConstraintsGivenCalendar:(id)calendar;
- (void)_configureStatusButtonsToolbar;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_createAndAddHeaderView;
- (void)_deleteClicked:(id)clicked;
- (void)_deleteSuggestionTapped:(id)tapped;
- (void)_dismissEditor:(BOOL)editor deleted:(BOOL)deleted;
- (void)_doneButtonTapped:(id)tapped;
- (void)_eventEditViewControllerDidCompleteWithAction:(int64_t)action;
- (void)_keyboardWasHidden:(id)hidden;
- (void)_keyboardWasShown:(id)shown;
- (void)_localeChanged;
- (void)_notifyDetailItemsOfVisibilityOnScreen;
- (void)_performDelete:(int64_t)delete editor:(id)editor;
- (void)_performEditKeyCommand;
- (void)_pop;
- (void)_prepareEventForEdit;
- (void)_presentDetachSheetFromBarButtonItem:(id)item;
- (void)_presentDetachSheetFromView:(id)view;
- (void)_rejectProposedTime;
- (void)_reloadIfNeeded;
- (void)_saveStatus:(int64_t)status sourceViewForPopover:(id)popover;
- (void)_saveStatus:(int64_t)status span:(int64_t)span;
- (void)_setNeedsReloadIncludingItems;
- (void)_setNeedsReloadIncludingItems:(BOOL)items;
- (void)_setObservesKeyboardNotifications:(BOOL)notifications;
- (void)_setUpForEvent;
- (void)_storeChanged:(id)changed;
- (void)_teardownTableView;
- (void)_unsubscribeClicked:(id)clicked;
- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)status;
- (void)_updateHeaderAndFooterIfNeeded;
- (void)_updateNavBarAnimated:(BOOL)animated;
- (void)_updateResponse;
- (void)_updateResponseVisibility;
- (void)_updateStatusButtonsActions;
- (void)_updateTableContentInsetForKeyboard:(id)keyboard;
- (void)attemptDisplayReviewPrompt;
- (void)completeWithAction:(int64_t)action;
- (void)copy:(id)copy;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)detailItem:(id)item performActionsOnCellAtIndexPath:(id)path actions:(id)actions;
- (void)detailItem:(id)item wantsIndexPathsScrolledToVisible:(id)visible;
- (void)detailItem:(id)item wantsRowInsertions:(id)insertions rowDeletions:(id)deletions rowReloads:(id)reloads;
- (void)detailItem:(id)item wantsRowReload:(id)reload;
- (void)didMoveToParentViewController:(id)controller;
- (void)dismissJunkView;
- (void)doneButtonTapped;
- (void)editButtonPressed;
- (void)editButtonTapped;
- (void)eventDetailItem:(id)item requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view;
- (void)eventDetailItemAccessoryButtonTapped:(id)tapped;
- (void)eventDetailItemWantsRefeshForHeightChange;
- (void)eventDetailItemWantsRefresh:(id)refresh;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler;
- (void)eventItem:(id)item wantsViewControllerPresented:(id)presented;
- (void)eventItemDidCommit:(id)commit;
- (void)eventItemDidEndEditing:(id)editing;
- (void)eventItemDidSave:(id)save;
- (void)fullReloadWithNewEvent:(id)event;
- (void)invokeAction:(int64_t)action eventStatusButtonsView:(id)view;
- (void)loadView;
- (void)nextButtonPressed;
- (void)openAttendeesDetailItem;
- (void)pasteboardManager:(id)manager presentAlert:(id)alert;
- (void)performAddToCalendar;
- (void)presentEditorAnimated:(BOOL)animated;
- (void)previousButtonPressed;
- (void)reloadReminderWithEKEvent:(id)event;
- (void)resetBackgroundColor;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setActiveEventEditor:(id)editor;
- (void)setAllowsCalendarPreview:(BOOL)preview;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setAllowsInviteResponses:(BOOL)responses;
- (void)setCalendarPreviewIsInlineDayView:(BOOL)view;
- (void)setDelegate:(id)delegate;
- (void)setEvent:(id)event;
- (void)setHideCalendarPreview:(BOOL)preview;
- (void)setICSPreview:(BOOL)preview;
- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)filter;
- (void)setMinimalMode:(BOOL)mode;
- (void)setNoninteractivePlatterMode:(BOOL)mode;
- (void)setShowsAddToCalendarForICSPreview:(BOOL)preview;
- (void)setShowsDelegateMessage:(BOOL)message;
- (void)setShowsDelegatorMessage:(BOOL)message;
- (void)setShowsDeleteForICSPreview:(BOOL)preview;
- (void)setShowsDoneButton:(BOOL)button;
- (void)setShowsOutOfDateMessage:(BOOL)message;
- (void)setShowsUpdateCalendarForICSPreview:(BOOL)preview;
- (void)setToolbarItems:(id)items;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)setTopInset:(double)inset;
- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)uneditableButtonDetailItem:(id)item requestsShowEvent:(id)event;
- (void)updateStatusButtonsView;
- (void)updateTitleWithScrollView:(id)view animation:(BOOL)animation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation EKEventViewControllerDefaultImpl

+ (void)setDefaultDatesForEvent:(id)event
{
  eventCopy = event;
  v6 = CUIKDateRangeForNewEventOnDay();
  startDate = [v6 startDate];
  [eventCopy setStartDate:startDate];

  endDate = [v6 endDate];
  [eventCopy setEndDateUnadjustedForLegacyClients:endDate];
}

- (EKEventViewControllerDefaultImpl)init
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKEventViewControllerDefaultImpl;
  v2 = [(EKEventViewControllerDefaultImpl *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_showsPreview = 1;
    v4 = objc_opt_new();
    cellHeights = v3->_cellHeights;
    v3->_cellHeights = v4;

    mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
    hideInlineDayViewInEventDetails = [mEMORY[0x1E6993470] hideInlineDayViewInEventDetails];

    if (hideInlineDayViewInEventDetails)
    {
      [(EKEventViewControllerDefaultImpl *)v3 setHideCalendarPreview:1];
    }

    objc_initWeak(&location, v3);
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__EKEventViewControllerDefaultImpl_init__block_invoke;
    v11[3] = &unk_1E843EBE8;
    objc_copyWeak(&v12, &location);
    v9 = [(EKEventViewControllerDefaultImpl *)v3 registerForTraitChanges:v8 withHandler:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  return v3;
}

void __40__EKEventViewControllerDefaultImpl_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_23;
  }

  v8 = [v6 horizontalSizeClass];
  v9 = [v5 traitCollection];
  if (v8 != [v9 horizontalSizeClass])
  {

LABEL_6:
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      v13 = [WeakRetained _statusButtonsContainerView];

      if (v13)
      {
        WeakRetained[139] = 0;
        v14 = [WeakRetained navigationController];
        v15 = [v14 toolbar];

        if (v15)
        {
          v16 = [WeakRetained _statusButtonsContainerView];
          [v16 setBoundsWithToolbar:v15];
        }
      }
    }

    [WeakRetained _updateNavBarAnimated:0];
    v17 = [WeakRetained delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [WeakRetained delegate];
      v20 = [WeakRetained _ekEventViewController];
      [WeakRetained setMinimalMode:{objc_msgSend(v19, "eventViewControllerUseMinimalModeAfterTraitCollectionChange:", v20)}];
    }

    else
    {
      [WeakRetained setMinimalMode:0];
    }

    goto LABEL_14;
  }

  v10 = [v6 verticalSizeClass];
  v11 = [v5 traitCollection];
  v12 = [v11 verticalSizeClass];

  if (v10 != v12)
  {
    goto LABEL_6;
  }

LABEL_14:
  v21 = [v6 userInterfaceStyle];
  v22 = [v5 traitCollection];
  v23 = [v22 userInterfaceStyle];

  if (v21 != v23)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = [WeakRetained items];
    v25 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v30 + 1) + 8 * i) reset];
        }

        v26 = [v24 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v26);
    }

    v29 = [WeakRetained tableView];
    [v29 reloadData];
  }

LABEL_23:
}

- (void)_teardownTableView
{
  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  tableView = self->_tableView;
  self->_tableView = 0;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
  self->_dead = 1;
  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:0];
  defaultContextManager = [EKWeakLinkClass() defaultContextManager];
  [defaultContextManager removeContextProvider:self];

  items = self->_items;
  if (items)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = items;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          [v11 setDelegate:0];
          [v11 setEvent:0 reminder:0 store:0];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  [(EKEventViewControllerDefaultImpl *)self _teardownTableView];

  v12.receiver = self;
  v12.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v12 dealloc];
}

- (id)tableView
{
  [(EKEventViewControllerDefaultImpl *)self view];

  tableView = self->_tableView;

  return tableView;
}

- (void)loadView
{
  v32.receiver = self;
  v32.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v32 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(EKEventViewControllerDefaultImpl *)self view];
  frame = [view frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (MEMORY[0x1D38B98D0](frame))
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v3 initWithFrame:v14 style:{v7, v9, v11, v13}];
  tableView = self->_tableView;
  self->_tableView = v15;

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"EventDetailsContainer"];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setSeparatorStyle:!self->_minimalMode];
  if (self->_noninteractivePlatterMode)
  {
    [(UITableView *)self->_tableView setSeparatorStyle:0];
  }

  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  if (EKUIUnscaledCatalyst())
  {
    v17 = EKUIUnscaledCatalystTableRowHeightDefault();
  }

  else
  {
    v17 = *MEMORY[0x1E69DE3D0];
  }

  [(UITableView *)self->_tableView setRowHeight:v17];
  +[EKEventDetailCell detailsCellDefaultHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];
  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(EKEventViewControllerDefaultImpl *)self view];
  [view2 addSubview:self->_tableView];

  v19 = _NSDictionaryOfVariableBindings(&cfstr_Tableview.isa, self->_tableView, 0);
  [(EKEventViewControllerDefaultImpl *)self resetBackgroundColor];
  event = [(EKEventViewControllerDefaultImpl *)self event];
  if ([event couldBeJunk])
  {
    minimalMode = [(EKEventViewControllerDefaultImpl *)self minimalMode];

    if (!minimalMode)
    {
      [(EKEventViewControllerDefaultImpl *)self _createAndAddHeaderView];
    }
  }

  else
  {
  }

  v22 = MEMORY[0x1E696ACD8];
  v23 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[_tableView]|" options:0 metrics:0 views:v19];
  [v22 activateConstraints:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v19];
  [v24 activateConstraints:v25];

  if (self->_shouldOverrideAuthorizationStatus)
  {
    lastAuthorizationStatus = self->_lastAuthorizationStatus;
  }

  else
  {
    lastAuthorizationStatus = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
    self->_lastAuthorizationStatus = lastAuthorizationStatus;
  }

  if (lastAuthorizationStatus <= 2)
  {
    view3 = [(EKEventViewControllerDefaultImpl *)self view];
    accessDeniedView = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
    [view3 addSubview:accessDeniedView];

    view4 = [(EKEventViewControllerDefaultImpl *)self view];
    accessDeniedView2 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
    [view4 bringSubviewToFront:accessDeniedView2];

    if (self->_lastAuthorizationStatus == 1)
    {
      accessDeniedView3 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [accessDeniedView3 setMessage:@" "];
    }
  }

  [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
}

- (void)_createAndAddHeaderView
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  headerView = self->_headerView;
  self->_headerView = v3;

  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1148846080;
  [(UIView *)self->_headerView setContentCompressionResistancePriority:1 forAxis:v5];
  v6 = [EKEventReportJunkView alloc];
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v8 = [(EKEventReportJunkView *)v6 initWithViewController:_ekEventViewController];

  junkView = self->_junkView;
  self->_junkView = v8;
  v10 = v8;

  [(EKEventReportJunkView *)v10 setIsLargeDayView:[(EKEventViewControllerDefaultImpl *)self isLargeDayView]];
  [(EKEventReportJunkView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_headerView addSubview:v10];
  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  tableSeparatorLightColor = [MEMORY[0x1E69DC888] tableSeparatorLightColor];
  [v12 setBackgroundColor:tableSeparatorLightColor];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_headerView addSubview:v12];
  view = [(EKEventViewControllerDefaultImpl *)self view];
  [view addSubview:self->_headerView];

  v15 = _NSDictionaryOfVariableBindings(&cfstr_TableviewHeade.isa, self->_tableView, self->_headerView, v10, v12, 0);
  v37 = @"separatorLineThickness";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:EKUISeparatorLineThickness()];
  v38[0] = v16;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  v17 = MEMORY[0x1E696ACD8];
  v18 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-8-[junkView][dividerView(==separatorLineThickness)]|" options:0 metrics:v34 views:v15];
  [v17 activateConstraints:v18];

  v19 = MEMORY[0x1E696ACD8];
  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[junkView]|" options:0 metrics:0 views:v15];
  [v19 activateConstraints:v20];

  v21 = MEMORY[0x1E696ACD8];
  v22 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[dividerView]|" options:0 metrics:0 views:v15];
  [v21 activateConstraints:v22];

  v23 = MEMORY[0x1E696ACD8];
  v24 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_headerView]|" options:0 metrics:0 views:v15];
  [v23 activateConstraints:v24];

  v25 = MEMORY[0x1E696ACD8];
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_headerView attribute:8 relatedBy:0 toItem:v10 attribute:8 multiplier:1.0 constant:0.0];
  v36 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v25 activateConstraints:v27];

  v28 = MEMORY[0x1E696ACD8];
  v29 = self->_headerView;
  view2 = [(EKEventViewControllerDefaultImpl *)self view];
  v31 = [v28 constraintWithItem:v29 attribute:3 relatedBy:0 toItem:view2 attribute:15 multiplier:1.0 constant:0.0];
  v35 = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  headerConstraints = self->_headerConstraints;
  self->_headerConstraints = v32;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_headerConstraints];
}

- (void)resetBackgroundColor
{
  if ([(UIViewController *)self isPresentedInsidePopover]&& MEMORY[0x1D38B98D0]())
  {
    [(UITableView *)self->_tableView setBackgroundColor:0];
    view = [(EKEventViewControllerDefaultImpl *)self view];
    [view setBackgroundColor:0];
  }

  else
  {
    if (MEMORY[0x1D38B98D0]())
    {
      [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tableBackgroundColor];
    }
    view = ;
    [(UITableView *)self->_tableView setBackgroundColor:view];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view2 = [(EKEventViewControllerDefaultImpl *)self view];
    [view2 setBackgroundColor:systemBackgroundColor];
  }
}

- (id)_indexPathForSection:(unint64_t)section
{
  if (section)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    currentSections = self->_currentSections;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__EKEventViewControllerDefaultImpl__indexPathForSection___block_invoke;
    v6[3] = &unk_1E8441EB8;
    v6[4] = &v7;
    v6[5] = section;
    [(NSArray *)currentSections enumerateObjectsUsingBlock:v6];
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:v8[3]];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __57__EKEventViewControllerDefaultImpl__indexPathForSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 tag];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)_indexPathForAttendeesDetailItem
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  currentSections = self->_currentSections;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__EKEventViewControllerDefaultImpl__indexPathForAttendeesDetailItem__block_invoke;
  v5[3] = &unk_1E8441F08;
  v5[4] = &v10;
  v5[5] = &v6;
  [(NSArray *)currentSections enumerateObjectsUsingBlock:v5];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:v7[3] inSection:v11[3]];
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);

  return v3;
}

void __68__EKEventViewControllerDefaultImpl__indexPathForAttendeesDetailItem__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__EKEventViewControllerDefaultImpl__indexPathForAttendeesDetailItem__block_invoke_2;
  v6[3] = &unk_1E8441EE0;
  v8 = a3;
  v7 = *(a1 + 32);
  [v5 enumerateObjectsUsingBlock:v6];
}

void __68__EKEventViewControllerDefaultImpl__indexPathForAttendeesDetailItem__block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(a1[4] + 8) + 24) = a1[6];
    *(*(a1[5] + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)viewTitle
{
  if (MEMORY[0x1D38B98D0](self, a2))
  {
    v3 = 0;
  }

  else
  {
    _reminderMode = [(EKEventViewControllerDefaultImpl *)self _reminderMode];
    v5 = EventKitUIBundle();
    v6 = v5;
    if (_reminderMode)
    {
      v7 = @"Reminder Details";
    }

    else
    {
      v7 = @"Event Details";
    }

    v3 = [v5 localizedStringForKey:v7 value:&stru_1F4EF6790 table:0];
  }

  return v3;
}

- (UIEdgeInsets)_customInsets
{
  v2 = -22.0;
  if (self->_noninteractivePlatterMode)
  {
    goto LABEL_13;
  }

  if (!MEMORY[0x1D38B98D0]())
  {
    v6 = ![(EKEventViewControllerDefaultImpl *)self _reminderMode];
    v7 = 0.0;
    v8 = 16.0;
    goto LABEL_7;
  }

  if ([(UIViewController *)self isPresentedInsidePopover])
  {
    v2 = 0.0;
    if (![(EKEventViewControllerDefaultImpl *)self _shouldDisplayStatusButtons])
    {
      goto LABEL_10;
    }

    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
    isNavigationBarHidden = [navigationController isNavigationBarHidden];

    v6 = (isNavigationBarHidden & 1) == 0;
    v7 = 0.0;
    v8 = 23.0;
    goto LABEL_7;
  }

  if ([(EKEventViewControllerDefaultImpl *)self isLargeDayView])
  {
    view = [(EKEventViewControllerDefaultImpl *)self view];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

    v2 = -12.0;
    if (IsRegularInViewHierarchy)
    {
      goto LABEL_10;
    }
  }

  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  viewControllers = [navigationController2 viewControllers];
  v24 = [viewControllers objectAtIndex:0];
  if (_ekEventViewController == v24)
  {
    goto LABEL_19;
  }

  presentingViewController = [(EKEventViewControllerDefaultImpl *)self presentingViewController];
  if (presentingViewController)
  {

LABEL_19:
    goto LABEL_20;
  }

  view2 = [(EKEventViewControllerDefaultImpl *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view2);

  if (IsCompactInViewHierarchy)
  {
LABEL_28:
    v6 = ![(EKEventViewControllerDefaultImpl *)self _reminderMode];
    v7 = -34.0;
    v8 = -18.0;
LABEL_7:
    if (v6)
    {
      v2 = v7;
    }

    else
    {
      v2 = v8;
    }

    goto LABEL_10;
  }

LABEL_20:
  presentingViewController2 = [(EKEventViewControllerDefaultImpl *)self presentingViewController];
  if (presentingViewController2)
  {
    v27 = presentingViewController2;
    sheetPresentationController = [(EKEventViewControllerDefaultImpl *)self sheetPresentationController];

    if (sheetPresentationController)
    {
      goto LABEL_28;
    }
  }

  v2 = 0.0;
  if ([(EKEventViewControllerDefaultImpl *)self isICSPreview])
  {
    if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayStatusButtons])
    {
      presentationController = [(EKEventViewControllerDefaultImpl *)self presentationController];
      if (presentationController)
      {
        v30 = presentationController;
        presentationController2 = [(EKEventViewControllerDefaultImpl *)self presentationController];
        if ([presentationController2 presentationStyle] != 2)
        {

          goto LABEL_10;
        }

        navigationController3 = [(EKEventViewControllerDefaultImpl *)self navigationController];
        isNavigationBarHidden2 = [navigationController3 isNavigationBarHidden];

        v6 = (isNavigationBarHidden2 & 1) == 0;
        v7 = -34.0;
        v8 = 0.0;
        goto LABEL_7;
      }
    }
  }

LABEL_10:
  headerView = self->_headerView;
  if (headerView && ![(UIView *)headerView isHidden])
  {
    junkView = self->_junkView;
    view3 = [(EKEventViewControllerDefaultImpl *)self view];
    [view3 frame];
    [(EKEventReportJunkView *)junkView systemLayoutSizeFittingSize:v12, 1.79769313e308];
    v14 = v13;

    v2 = v2 + v14;
  }

LABEL_13:
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = v2;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v18;
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v5 viewDidLoad];
  viewTitle = [(EKEventViewControllerDefaultImpl *)self viewTitle];
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [_ekEventViewController setTitle:viewTitle];

  [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  [(EKEventViewControllerDefaultImpl *)self _annotateEventEntityIfNeeded];
  if ([(EKEventViewControllerDefaultImpl *)self useDynamicPocket]|| [(EKEventViewControllerDefaultImpl *)self shouldShowEditButtonInline])
  {
    [(UITableView *)self->_tableView _setHiddenPocketEdges:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v22 viewWillAppear:appear];
  [(UITableView *)self->_tableView setPreservesSuperviewLayoutMargins:1];
  eKUI_viewHierarchy = [(UIViewController *)self EKUI_viewHierarchy];
  EKUIPushFallbackSizingContextWithViewHierarchy(eKUI_viewHierarchy);
  ekui_interfaceOrientation = [eKUI_viewHierarchy ekui_interfaceOrientation];
  lastOrientation = self->_lastOrientation;
  if (ekui_interfaceOrientation != lastOrientation)
  {
    v7 = ekui_interfaceOrientation;
    if (lastOrientation)
    {
      view = [(EKEventViewControllerDefaultImpl *)self view];
      [view bounds];
      v10 = v9;
      v12 = v11;
      v13 = objc_opt_new();
      [(EKEventViewControllerDefaultImpl *)self viewWillTransitionToSize:v13 withTransitionCoordinator:v10, v12];
    }

    self->_lastOrientation = v7;
  }

  [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  [(EKEventViewControllerDefaultImpl *)self _updateResponse];
  if (MEMORY[0x1D38B98D0]([(EKEventViewControllerDefaultImpl *)self _updateHeaderAndFooterIfNeeded]))
  {
    if ([(EKEventViewControllerDefaultImpl *)self useDynamicPocket])
    {
      traitCollection = [(EKEventViewControllerDefaultImpl *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        [(UITableView *)self->_tableView setContentInsetAdjustmentBehavior:2];
      }
    }
  }

  [(EKEventViewControllerDefaultImpl *)self _customInsets];
  [(UITableView *)self->_tableView setContentInset:?];
  [(EKEventViewControllerDefaultImpl *)self resetBackgroundColor];
  v16 = [(EKEventViewControllerDefaultImpl *)self _indexPathForSection:self->_scrollToSection];
  if (v16)
  {
    tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView scrollToRowAtIndexPath:v16 atScrollPosition:1 animated:0];
  }

  defaultContextManager = [EKWeakLinkClass() defaultContextManager];
  [defaultContextManager addContextProvider:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];
  [defaultCenter addObserver:self selector:sel__storeChanged_ name:*MEMORY[0x1E6966928] object:0];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  [(EKEventViewControllerDefaultImpl *)self _setObservesKeyboardNotifications:1];
  [(EKEventViewControllerDefaultImpl *)self _updateNavBarAnimated:0];
  [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
  navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
  [navigationController setNavigationBarHidden:-[EKEventViewControllerDefaultImpl _shouldShowInlineButtonFromDelegate](self animated:{"_shouldShowInlineButtonFromDelegate"), 0}];

  navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  [navigationController2 setNavigationBarHidden:-[EKEventViewControllerDefaultImpl _navigationBarShouldBeHidden](self animated:{"_navigationBarShouldBeHidden"), 1}];

  [(EKEventTitleDetailItem *)self->_titleItem setHidesTopSeparator:1];
  self->_viewIsVisible = 1;
  [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  EKUIPopFallbackSizingContextWithViewHierarchy(eKUI_viewHierarchy);
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v12 viewDidAppear:appear];
  self->_didAppear = 1;
  if (self->_autoPop)
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
  }

  if (!self->_countedAppearance)
  {
    self->_countedAppearance = 1;
    suggestionInfo = [(EKEvent *)self->_event suggestionInfo];
    if (suggestionInfo)
    {
      v7 = suggestionInfo;
      currentProcessIsFirstPartyCalendarApp = [MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp];

      if (currentProcessIsFirstPartyCalendarApp)
      {
        [MEMORY[0x1E69930D0] trackPseudoEventDetailsOpened];
        v9 = MEMORY[0x1E69930D8];
        suggestionInfo2 = [(EKEvent *)self->_event suggestionInfo];
        uniqueKey = [suggestionInfo2 uniqueKey];
        [v9 logEventShowedDetailsWithUniqueKey:uniqueKey];
      }
    }
  }

  [(EKEventViewControllerDefaultImpl *)self becomeFirstResponder];
}

- (BOOL)_presentedInAPopOver
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v7 = [WeakRetained eventViewControllerPresentedInAPopover:_ekEventViewController];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_navigationBarShouldBeHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v8 = [v6 eventViewControllerShouldAlwaysShowNavBar:_ekEventViewController];

      if (v8)
      {
        return 0;
      }
    }
  }

  else
  {
  }

  if ([(EKEventViewControllerDefaultImpl *)self shouldShowEditButtonInline])
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v10 = ![(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton];
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  if ([v11 conformsToProtocol:&unk_1F4F9EBE0])
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      eventViewControllerPresentationWantsHiddenNavBarForSingleController = 0;
      goto LABEL_15;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    eventViewControllerPresentationWantsHiddenNavBarForSingleController = [v11 eventViewControllerPresentationWantsHiddenNavBarForSingleController];
  }

  else
  {
    eventViewControllerPresentationWantsHiddenNavBarForSingleController = 0;
  }

LABEL_15:
  navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
  if (navigationController)
  {
    navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    if ([viewControllers count] == 1)
    {
      navigationController3 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      viewControllers2 = [navigationController3 viewControllers];
      firstObject = [viewControllers2 firstObject];
      _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v22 = firstObject == _ekEventViewController2;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return v10 & eventViewControllerPresentationWantsHiddenNavBarForSingleController & v22;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  self->_viewIsVisible = 0;
  [(EKEventViewControllerDefaultImpl *)self _setObservesKeyboardNotifications:0];
  navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
  [navigationController setNavigationBarHidden:-[EKEventViewControllerDefaultImpl _navigationBarShouldBeHidden](self animated:{"_navigationBarShouldBeHidden"), 1}];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 performSelector:sel_eventViewControllerWillDisappear_ withObject:self];
    }
  }

  v11.receiver = self;
  v11.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v11 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v5 viewDidDisappear:disappear];
  self->_didAppear = 0;
  defaultContextManager = [EKWeakLinkClass() defaultContextManager];
  [defaultContextManager removeContextProvider:self];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5 = [(EKEventViewControllerDefaultImpl *)self tableView:coordinator];
  [(EKEventViewControllerDefaultImpl *)self updateTitleWithScrollView:v5 animation:0];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  v5.receiver = self;
  v5.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v5 didMoveToParentViewController:controllerCopy];
  if (controllerCopy)
  {
    [(EKEventViewControllerDefaultImpl *)self _updateNavBarAnimated:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([controllerCopy isNavigationBarHidden] & 1) == 0)
    {
      [(EKEventViewControllerDefaultImpl *)self setMinimalMode:0];
    }
  }
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  changedCopy = changed;
  headerView = self->_headerView;
  if (headerView && ![(UIView *)headerView isHidden])
  {
    [(UIView *)self->_headerView removeFromSuperview];
    [(EKEventViewControllerDefaultImpl *)self _createAndAddHeaderView];
    [(EKEventViewControllerDefaultImpl *)self _customInsets];
    [(UITableView *)self->_tableView setContentInset:?];
  }

  [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
}

- (void)_updateTableContentInsetForKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if (![(UIViewController *)self isPresentedInsidePopover])
  {
    [(UITableView *)self->_tableView contentInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    userInfo = [keyboardCopy userInfo];
    v11 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
    [v11 CGRectValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    object = [keyboardCopy object];
    coordinateSpace = [object coordinateSpace];

    v22 = self->_tableView;
    [coordinateSpace convertRect:v22 toCoordinateSpace:{v13, v15, v17, v19}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UITableView *)self->_tableView bounds];
    v38.origin.x = v24;
    v38.origin.y = v26;
    v38.size.width = v28;
    v38.size.height = v30;
    v37 = CGRectIntersection(v36, v38);
    height = v37.size.height;
    if (CGRectIsEmpty(v37))
    {
      tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
      [tableView safeAreaInsets];
      height = v33;
    }

    [(UITableView *)self->_tableView setContentInset:v5, v7, height, v9];
  }
}

- (BOOL)_shouldDisplayDoneButton
{
  navigationItem = [(EKEventViewControllerDefaultImpl *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  if ([(EKEventViewControllerDefaultImpl *)self useDynamicPocket]|| !self->_showsDoneButton)
  {
    goto LABEL_8;
  }

  if (([navigationItem hidesBackButton] & 1) == 0 && (!leftBarButtonItem || !objc_msgSend(leftBarButtonItem, "systemItem")))
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
    viewControllers = [navigationController viewControllers];

    if ([viewControllers count])
    {
      _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v8 = [viewControllers objectAtIndex:0];

      if (_ekEventViewController != v8)
      {
LABEL_8:
        v9 = 0;
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (![leftBarButtonItem systemItem])
  {
    [navigationItem setLeftBarButtonItem:0];
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (void)_updateNavBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton])
  {
    navigationItem5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editButtonTapped];
    if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayDoneButton])
    {
      navigationItem3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
      navigationItem = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [navigationItem setLeftBarButtonItem:navigationItem5 animated:animatedCopy];

      navigationItem2 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:navigationItem3 animated:animatedCopy];
    }

    else
    {
      navigationItem3 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:navigationItem5 animated:animatedCopy];
    }
  }

  else if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayDoneButton])
  {
    navigationItem5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
    navigationItem4 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:navigationItem5 animated:animatedCopy];
  }

  else
  {
    navigationItem5 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    [navigationItem5 setRightBarButtonItem:0 animated:animatedCopy];
  }
}

- (BOOL)_shouldShowEditButton
{
  allowsEditing = [(EKEventViewControllerDefaultImpl *)self allowsEditing];
  if (allowsEditing)
  {

    LOBYTE(allowsEditing) = [(EKEventViewControllerDefaultImpl *)self _backingEventAllowsEditing];
  }

  return allowsEditing;
}

- (CGSize)_idealSize
{
  v40 = *MEMORY[0x1E69E9840];
  [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView layoutIfNeeded];

  if (MEMORY[0x1D38B98D0]())
  {
    noninteractivePlatterMode = self->_noninteractivePlatterMode;
    v5 = EKUIContainedControllerIdealWidth();
    tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView2 contentSize];
    v8 = v7;
    if (!noninteractivePlatterMode)
    {
      tableView3 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [tableView3 contentInset];
      v11 = v8 + v10;
      tableView4 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [tableView4 contentInset];
      v8 = v11 + v13;
    }
  }

  else
  {
    tableView5 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView5 bounds];
    if (v15 <= EKUIContainedControllerIdealWidth())
    {
      v18 = EKUIContainedControllerIdealWidth();
    }

    else
    {
      tableView6 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [tableView6 bounds];
      v18 = v17;
    }

    tableView7 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView7 contentInset];
    v21 = v20;
    tableView8 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView8 contentInset];
    v8 = v21 + v23;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = self->_currentSections;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v36;
      v28 = *MEMORY[0x1E69DE3D0];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v35 + 1) + 8 * i);
          if ([v30 numberOfRows])
          {
            v31 = 0;
            do
            {
              [v30 defaultCellHeightForSubitemAtIndex:v31 forWidth:0 forceUpdate:v18];
              if (v32 == v28)
              {
                +[EKEventDetailCell detailsCellDefaultHeight];
              }

              v8 = v8 + v32;
              ++v31;
            }

            while (v31 < [v30 numberOfRows]);
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v26);
    }

    v5 = EKUIContainedControllerIdealWidth();
  }

  v33 = v5;
  v34 = v8;
  result.height = v34;
  result.width = v33;
  return result;
}

- (BOOL)_shouldPopSelf
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v9 = [v7 eventViewControllerShouldDismissSelf:_ekEventViewController];

  return v9;
}

- (void)_pop
{
  v3 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_INFO, "EKEventViewController is dismissing itself; clients of this class should ideally handle their own dismissal by implementing the delegate method eventViewController:didCompleteWithAction:", v14, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_navigationDelegate);
    [v5 popViewControllerAnimated:1];
  }

  else
  {
    if (!self->_didAppear)
    {
      self->_autoPop = 1;
      return;
    }

    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v8 = [navigationController popToViewController:_ekEventViewController animated:0];

    navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    v11 = [viewControllers count];

    navigationController3 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v5 = navigationController3;
    if (v11 < 2)
    {
      [navigationController3 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v13 = [navigationController3 popViewControllerAnimated:1];
    }
  }
}

- (void)openAttendeesDetailItem
{
  v3 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKEventViewControllerDefaultImpl_openAttendeesDetailItem__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

void __59__EKEventViewControllerDefaultImpl_openAttendeesDetailItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _indexPathForAttendeesDetailItem];
  v5 = 0;
  v3 = [*(a1 + 32) _itemAtIndexPath:v2 section:0 subitemIndex:&v5];
  v4 = [*(a1 + 32) _ekEventViewController];
  [v3 eventViewController:v4 didSelectSubitem:v5];
}

- (void)_setNeedsReloadIncludingItems:(BOOL)items
{
  itemsCopy = items;
  if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded])
  {
    self->_needsReload = 1;
    if (itemsCopy)
    {
      self->_itemsNeedReload = 1;
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadIfNeeded object:0];
    if (!self->_dead && !self->_tableIsBeingEdited)
    {

      [(EKEventViewControllerDefaultImpl *)self performSelector:sel__reloadIfNeeded withObject:0 afterDelay:0.0];
    }
  }
}

- (void)_reloadIfNeeded
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_needsReload && self->_viewIsVisible && [(EKEventViewControllerDefaultImpl *)self isViewLoaded])
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadIfNeeded object:0];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_items;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [v9 reset];
          v6 |= [v9 detailItemVisibilityChanged];
        }

        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    if (self->_itemsNeedReload || (v6 & 1) != 0)
    {
      if (self->_items)
      {
        calendar = [(EKEvent *)self->_event calendar];
        [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:calendar];
      }

      else
      {
        [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
      }
    }

    self->_itemsNeedReload = 0;
    self->_needsReload = 0;
    tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView reloadData];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
    [(EKEventViewControllerDefaultImpl *)self calculatePreferredContentSize];
    [(EKEventViewControllerDefaultImpl *)self setPreferredContentSize:?];
  }
}

- (void)setEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event = self->_event;
    if (event != eventCopy)
    {
      v7 = MEMORY[0x1E6966918];
      if (event)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:self name:*v7 object:self->_event];
      }

      [(EKEventViewControllerDefaultImpl *)self reloadReminderWithEKEvent:eventCopy];
      objc_storeStrong(&self->_event, event);
      cachedShowNext = self->_cachedShowNext;
      self->_cachedShowNext = 0;

      cachedShowPrevious = self->_cachedShowPrevious;
      self->_cachedShowPrevious = 0;

      [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
      if (self->_event)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:self selector:sel_setNeedsReload name:*v7 object:self->_event];
      }

      if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded])
      {
        tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
        [tableView reloadData];

        tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
        [tableView2 selectRowAtIndexPath:0 animated:0 scrollPosition:0];

        [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
        [(EKEventViewControllerDefaultImpl *)self _updateResponse];
      }

      [(UIResponder *)self EKUI_setDataOwnersFromEvent:eventCopy];
      [(EKEventViewControllerDefaultImpl *)self _annotateEventEntityIfNeeded];
    }
  }

  else
  {
    v14 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = eventCopy;
      v16 = v18;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "Error: EKEventViewController setEvent given object of class %@. Description: %@", &v17, 0x16u);
    }
  }
}

- (void)reloadReminderWithEKEvent:(id)event
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy isReminderIntegrationEvent])
  {
    uniqueID = [eventCopy uniqueID];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:uniqueID];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = getREMObjectIDClass_softClass_0;
    v24 = getREMObjectIDClass_softClass_0;
    if (!getREMObjectIDClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getREMObjectIDClass_block_invoke_0;
      v26 = &unk_1E843F520;
      v27 = &v21;
      __getREMObjectIDClass_block_invoke_0(buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    v9 = [v7 objectIDWithURL:v6];
    if (v9)
    {
      reminderStore = self->_reminderStore;
      if (!reminderStore)
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x2050000000;
        v11 = getREMStoreClass_softClass_0;
        v24 = getREMStoreClass_softClass_0;
        if (!getREMStoreClass_softClass_0)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getREMStoreClass_block_invoke_0;
          v26 = &unk_1E843F520;
          v27 = &v21;
          __getREMStoreClass_block_invoke_0(buf);
          v11 = v22[3];
        }

        v12 = v11;
        _Block_object_dispose(&v21, 8);
        v13 = objc_alloc_init(v11);
        v14 = self->_reminderStore;
        self->_reminderStore = v13;

        reminderStore = self->_reminderStore;
      }

      v20 = 0;
      v15 = [(REMStore *)reminderStore fetchReminderWithObjectID:v9 error:&v20];
      v16 = v20;
      reminder = self->_reminder;
      self->_reminder = v15;

      if (!self->_reminder || v16)
      {
        v18 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_ERROR, "Unable to fetch reminder (objectID: %@). Error: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v19 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = eventCopy;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "Trying to reload reminder with EKEvent, but it's not a reminder. %@", buf, 0xCu);
    }
  }
}

- (void)_annotateEventEntityIfNeeded
{
  event = [(EKEventViewControllerDefaultImpl *)self event];
  [(UIViewController *)self EKUI_annotateIfNeededWithAppEntityForEvent:event isEditing:0];
}

- (BOOL)_backingEventAllowsEditing
{
  if ((![(EKEvent *)self->_event isReminderIntegrationEvent]|| [(EKEvent *)self->_event CUIK_reminderShouldBeEditable]) && [(EKEvent *)self->_event isEditable])
  {
    eventStore = [(EKEvent *)self->_event eventStore];
    if (eventStore)
    {
      calendar = [(EKEvent *)self->_event calendar];
      v5 = [calendar isSuggestedEventCalendar] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setAllowsEditing:(BOOL)editing
{
  if (self->_allowsEditing != editing)
  {
    self->_allowsEditing = editing;
    [(EKEventViewControllerDefaultImpl *)self setAllowsInviteResponses:?];
    if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded]&& [(EKEventViewControllerDefaultImpl *)self viewIsVisible])
    {
      [(EKEventViewControllerDefaultImpl *)self _updateNavBarAnimated:1];
    }

    calendar = [(EKEvent *)self->_event calendar];

    if (calendar)
    {
      v5 = [(NSArray *)self->_currentSections count];
      calendar2 = [(EKEvent *)self->_event calendar];
      [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:calendar2];

      if (v5 != [(NSArray *)self->_currentSections count])
      {

        [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
      }
    }
  }
}

- (void)setAllowsInviteResponses:(BOOL)responses
{
  if (self->_allowsInviteResponses != responses)
  {
    self->_allowsInviteResponses = responses;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (BOOL)allowsCalendarPreview
{
  if (self->_showsPreview)
  {
    event = [(EKEventViewControllerDefaultImpl *)self event];
    v3 = [event isAllDay] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setAllowsCalendarPreview:(BOOL)preview
{
  if (!self->_hidePreview && self->_showsPreview != preview)
  {
    self->_showsPreview = preview;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
  }
}

- (void)setHideCalendarPreview:(BOOL)preview
{
  if (self->_hidePreview != preview)
  {
    self->_hidePreview = preview;
    if (preview)
    {
      self->_showsPreview = 0;
    }

    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
  }
}

- (void)setCalendarPreviewIsInlineDayView:(BOOL)view
{
  if (self->_calendarPreviewIsInlineDayView != view)
  {
    self->_calendarPreviewIsInlineDayView = view;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
  }
}

- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)filter
{
  if (self->_inlineDayViewRespectsSelectedCalendarsFilter != filter)
  {
    self->_inlineDayViewRespectsSelectedCalendarsFilter = filter;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setICSPreview:(BOOL)preview
{
  if (self->_ICSPreview != preview)
  {
    self->_ICSPreview = preview;
    self->_scrollToSection = 1;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsAddToCalendarForICSPreview:(BOOL)preview
{
  if (self->_showsAddToCalendarForICSPreview != preview)
  {
    self->_showsAddToCalendarForICSPreview = preview;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsUpdateCalendarForICSPreview:(BOOL)preview
{
  if (self->_showsUpdateCalendarForICSPreview != preview)
  {
    self->_showsUpdateCalendarForICSPreview = preview;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsDeleteForICSPreview:(BOOL)preview
{
  if (self->_showsDeleteForICSPreview != preview)
  {
    self->_showsDeleteForICSPreview = preview;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsDoneButton:(BOOL)button
{
  if (self->_showsDoneButton != button)
  {
    self->_showsDoneButton = button;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsOutOfDateMessage:(BOOL)message
{
  if (self->_showsOutOfDateMessage != message)
  {
    self->_showsOutOfDateMessage = message;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setShowsDelegatorMessage:(BOOL)message
{
  if (self->_showsDelegatorMessage != message)
  {
    self->_showsDelegatorMessage = message;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setShowsDelegateMessage:(BOOL)message
{
  if (self->_showsDelegateMessage != message)
  {
    self->_showsDelegateMessage = message;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setMinimalMode:(BOOL)mode
{
  if (self->_minimalMode != mode)
  {
    self->_minimalMode = mode;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems];
  }
}

- (void)setNoninteractivePlatterMode:(BOOL)mode
{
  if (self->_noninteractivePlatterMode != mode)
  {
    self->_noninteractivePlatterMode = mode;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems];
  }
}

- (void)_setNeedsReloadIncludingItems
{
  items = self->_items;
  self->_items = 0;

  [(UITableView *)self->_tableView setSeparatorStyle:!self->_minimalMode];

  [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
}

- (void)completeWithAction:(int64_t)action
{
  if (action == 2)
  {
    self->_ignoreDBChanges = 1;
    recurrenceAlertController = self->_recurrenceAlertController;
    if (recurrenceAlertController)
    {
      alertController = [(EKUIRecurrenceAlertController *)recurrenceAlertController alertController];
      presentingViewController = [alertController presentingViewController];
      [presentingViewController dismissViewControllerAnimated:0 completion:0];
    }
  }

  [(EKEventViewControllerDefaultImpl *)self _dismissEditor:0 deleted:action == 2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      _shouldPopSelf = [(EKEventViewControllerDefaultImpl *)self _shouldPopSelf];

      if (!_shouldPopSelf)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
        [v13 eventViewController:_ekEventViewController didCompleteWithAction:action];

        return;
      }
    }

    else
    {
    }
  }

  [(EKEventViewControllerDefaultImpl *)self _pop];
}

- (id)accessDeniedView
{
  accessDeniedView = self->_accessDeniedView;
  if (!accessDeniedView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD328]);
    view = [(EKEventViewControllerDefaultImpl *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_accessDeniedView;
    self->_accessDeniedView = v6;

    [(_UIAccessDeniedView *)self->_accessDeniedView setAutoresizingMask:18];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"This app does not have access to your calendars." value:&stru_1F4EF6790 table:0];
    [(_UIAccessDeniedView *)self->_accessDeniedView setTitle:v9];

    accessDeniedView = self->_accessDeniedView;
  }

  return accessDeniedView;
}

- (void)setTopInset:(double)inset
{
  [(UITableView *)self->_tableView contentInset];
  tableView = self->_tableView;

  [(UITableView *)tableView setContentInset:inset];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (obj)
    {
      [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
      v5 = obj;
    }
  }
}

- (void)_setObservesKeyboardNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (notificationsCopy)
  {
    [defaultCenter addObserver:self selector:sel__updateTableContentInsetForKeyboard_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:self selector:sel__updateTableContentInsetForKeyboard_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:self selector:sel__keyboardWasShown_ name:*MEMORY[0x1E69DDF78] object:0];
    [defaultCenter addObserver:self selector:sel__keyboardWasHidden_ name:*MEMORY[0x1E69DDF70] object:0];
  }

  else
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
  }
}

- (BOOL)_refreshEventAndReload
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(EKEvent *)self->_event refreshIfRefreshableAndNotify:1];
  if (v3)
  {
    if ([(EKEvent *)self->_event isReminderIntegrationEvent])
    {
      [(EKEventViewControllerDefaultImpl *)self reloadReminderWithEKEvent:self->_event];
      [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
    }

    cachedShowNext = self->_cachedShowNext;
    self->_cachedShowNext = 0;

    cachedShowPrevious = self->_cachedShowPrevious;
    self->_cachedShowPrevious = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    items = [(EKEventViewControllerDefaultImpl *)self items];
    v7 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(items);
          }

          [*(*(&v12 + 1) + 8 * v10++) refreshCopiedEvents];
        }

        while (v8 != v10);
        v8 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }

  return v3;
}

- (void)_storeChanged:(id)changed
{
  changedCopy = changed;
  if (![(EKEventViewControllerDefaultImpl *)self eventEditViewPresented]&& !self->_ignoreDBChanges && ([(EKEvent *)self->_event isNew]& 1) == 0)
  {
    userInfo = [changedCopy userInfo];
    v5 = [userInfo objectForKey:*MEMORY[0x1E6966930]];

    if (!v5 || (-[EKEvent objectID](self->_event, "objectID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 containsObject:v6], v6, v7))
    {
      if ([(EKEventViewControllerDefaultImpl *)self _refreshEventAndReload])
      {
        [(UIResponder *)self EKUI_setDataOwnersFromEvent:self->_event];
      }

      else
      {
        [(EKEventViewControllerDefaultImpl *)self completeWithAction:2];
      }
    }
  }

  if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded])
  {
    if (!self->_shouldOverrideAuthorizationStatus)
    {
      v8 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
      if (v8 != self->_lastAuthorizationStatus)
      {
        [(EKEventViewControllerDefaultImpl *)self _updateAccessDeniedViewWithNewStatus:v8];
      }
    }
  }
}

- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)status
{
  if (self->_lastAuthorizationStatus != status)
  {
    accessDeniedView = self->_accessDeniedView;
    if (status < 3)
    {
      if (accessDeniedView)
      {
        goto LABEL_9;
      }

      firstResponder = [(EKEventViewControllerDefaultImpl *)self firstResponder];
      [firstResponder resignFirstResponder];

      view = [(EKEventViewControllerDefaultImpl *)self view];
      accessDeniedView = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [view addSubview:accessDeniedView];

      view2 = [(EKEventViewControllerDefaultImpl *)self view];
      accessDeniedView2 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [view2 bringSubviewToFront:accessDeniedView2];

      if (status != 1)
      {
        goto LABEL_9;
      }

      accessDeniedView3 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [accessDeniedView3 setMessage:@" "];
    }

    else
    {
      if (!accessDeniedView)
      {
LABEL_9:
        self->_lastAuthorizationStatus = status;
        return;
      }

      [(_UIAccessDeniedView *)accessDeniedView removeFromSuperview];
      accessDeniedView3 = self->_accessDeniedView;
      self->_accessDeniedView = 0;
    }

    goto LABEL_9;
  }
}

- (void)_localeChanged
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [(EKEventViewControllerDefaultImpl *)self items];
  v4 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v9 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView reloadData];
}

- (void)_keyboardWasShown:(id)shown
{
  view = [(EKEventViewControllerDefaultImpl *)self view];
  window = [view window];
  firstResponder = [window firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
    v7 = [firstResponder isDescendantOfView:tableView];

    if (v7)
    {
      self->_tableIsBeingEdited = 1;
    }
  }
}

- (void)_keyboardWasHidden:(id)hidden
{
  if (self->_tableIsBeingEdited)
  {
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }

  self->_tableIsBeingEdited = 0;
}

- (id)items
{
  v69[7] = *MEMORY[0x1E69E9840];
  items = self->_items;
  if (!items)
  {
    v4 = objc_alloc_init(EKEventTitleDetailItem);
    titleItem = self->_titleItem;
    self->_titleItem = v4;

    [(EKEventTitleDetailItem *)self->_titleItem setEditDelegate:self];
    [(EKEventTitleDetailItem *)self->_titleItem setNonInteractivePlatterMode:[(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode]];
    context = [(EKEventViewControllerDefaultImpl *)self context];
    v7 = [context objectForKeyedSubscript:@"EKUIEventDetailsFromTravelAdvisoryContext"];

    v45 = v7;
    bOOLValue = [v7 BOOLValue];
    [(EKEventTitleDetailItem *)self->_titleItem setHasMapItemLaunchOptionFromTimeToLeaveNotification:bOOLValue];
    if ([(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode])
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    [(EKEventTitleDetailItem *)self->_titleItem setNumberOfTitleLines:v9];
    v10 = objc_alloc_init(EKEventSuggestedLocationDetailItem);
    suggestedLocationItem = self->_suggestedLocationItem;
    self->_suggestedLocationItem = v10;

    v12 = objc_alloc_init(EKEventConferenceDetailItem);
    conferenceCallItem = self->_conferenceCallItem;
    self->_conferenceCallItem = v12;

    v62 = objc_alloc_init(EKEventMapDetailItem);
    [(EKEventMapDetailItem *)v62 setHasMapItemLaunchOptionFromTimeToLeaveNotification:bOOLValue];
    v63 = objc_alloc_init(EKEventCalendarDetailItem);
    v61 = objc_alloc_init(EKEventAlarmDetailItem);
    [(EKEventDetailItem *)v61 setViewControllerToPresentFrom:self];
    v60 = objc_alloc_init(EKEventAvailabilityDetailItem);
    v59 = objc_alloc_init(EKEventTravelDetailItem);
    v58 = objc_alloc_init(EKEventCommentDetailItem);
    optionalModel = [(EKEventViewControllerDefaultImpl *)self optionalModel];
    v57 = [[EKEventProposeNewTimeItem alloc] initWithModel:optionalModel];
    v56 = objc_alloc_init(EKEventProposedTimeDetailItem);
    v15 = objc_alloc_init(EKEventOrganizerDetailItem);
    v16 = objc_alloc_init(EKEventAttendeesDetailItem);
    [(EKEventDetailItem *)v16 setViewControllerToPresentFrom:self];
    v55 = objc_alloc_init(EKEventAttendeeCommentsDetailItem);
    [(EKEventDetailItem *)v55 setViewControllerToPresentFrom:self];
    v54 = objc_alloc_init(EKEventAttachmentDetailItem);
    v43 = [[EKEventPreviewDetailItem alloc] initWithModel:optionalModel];
    objc_storeStrong(&self->_previewItem, v43);
    v41 = optionalModel;
    v53 = [[EKEventShowInCalendarDetailItem alloc] initWithModel:optionalModel];
    v52 = objc_alloc_init(EKEventURLDetailItem);
    v51 = objc_alloc_init(EKEventEditedByDetailItem);
    v50 = objc_alloc_init(EKEventNotesDetailItem);
    [(EKEventDetailItem *)v50 setViewControllerToPresentFrom:self];
    v49 = objc_alloc_init(EKEventConferenceInformationDetailItem);
    [(EKEventDetailItem *)v49 setViewControllerToPresentFrom:self];
    v48 = objc_alloc_init(EKEventPrivacyLevelDetailItem);
    v47 = objc_alloc_init(EKEventImportedNoticeDetailItem);
    v17 = objc_alloc_init(EKReminderTitleDetailItem);
    [(EKReminderTitleDetailItem *)v17 setEditDelegate:self];
    objc_storeStrong(&self->_reminderTitleItem, v17);
    v42 = objc_alloc_init(EKReminderDateDetailItem);
    v18 = objc_alloc_init(EKReminderListDetailItem);
    v40 = objc_alloc_init(EKReminderNotesDetailItem);
    v19 = objc_alloc_init(EKReminderURLDetailItem);
    v46 = objc_alloc_init(EKShowInRemindersDetailItem);
    v20 = [EKReminderUneditableButtonDetailItem alloc];
    if ([(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode])
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    v22 = [(EKReminderUneditableButtonDetailItem *)v20 initWithUneditableButtonDetailItemDelegate:selfCopy];
    v44 = v16;
    if ([(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode])
    {
      if ([(EKEventViewControllerDefaultImpl *)self _reminderMode])
      {
        v69[0] = v17;
        v69[1] = v22;
        v69[2] = v18;
        v69[3] = v19;
        v23 = v19;
        v24 = v40;
        v25 = v43;
        v69[4] = v40;
        v69[5] = v43;
        v26 = v18;
        v27 = v42;
        v69[6] = v42;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:7];
LABEL_21:
        v36 = self->_items;
        self->_items = v28;

        items = self->_items;
        goto LABEL_22;
      }

      [(EKEventOrganizerDetailItem *)v15 setHideDisclosureIndicator:1];
      v32 = self->_conferenceCallItem;
      v68[0] = self->_titleItem;
      v68[1] = v32;
      v68[2] = v63;
      v68[3] = v15;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
      v25 = v43;
    }

    else
    {
      v39 = v15;
      minimalMode = [(EKEventViewControllerDefaultImpl *)self minimalMode];
      _reminderMode = [(EKEventViewControllerDefaultImpl *)self _reminderMode];
      if (minimalMode)
      {
        v38 = v19;
        v31 = v18;
        if (_reminderMode)
        {
          v67[0] = v17;
          v67[1] = v22;
          v27 = v42;
          v67[2] = v42;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
          v15 = v39;
        }

        else
        {
          v33 = self->_conferenceCallItem;
          v66[0] = self->_titleItem;
          v66[1] = v33;
          v66[2] = v63;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
          v15 = v39;
          v27 = v42;
        }

        v25 = v43;
        v26 = v31;
        v24 = v40;
        v23 = v38;
        goto LABEL_21;
      }

      v25 = v43;
      if (_reminderMode)
      {
        v65[0] = v17;
        v65[1] = v22;
        v65[2] = v18;
        v65[3] = v19;
        v23 = v19;
        v24 = v40;
        v65[4] = v40;
        v65[5] = v46;
        v26 = v18;
        v27 = v42;
        v65[6] = v43;
        v65[7] = v42;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:8];
        v15 = v39;
        goto LABEL_21;
      }

      v34 = self->_suggestedLocationItem;
      v35 = self->_conferenceCallItem;
      v64[0] = self->_titleItem;
      v64[1] = v34;
      v64[2] = v35;
      v64[3] = v56;
      v64[4] = v57;
      v64[5] = v43;
      v15 = v39;
      v64[6] = v63;
      v64[7] = v39;
      v64[8] = v16;
      v64[9] = v55;
      v64[10] = v59;
      v64[11] = v61;
      v64[12] = v60;
      v64[13] = v48;
      v64[14] = v54;
      v64[15] = v52;
      v64[16] = v51;
      v64[17] = v49;
      v64[18] = v50;
      v64[19] = v53;
      v64[20] = v58;
      v64[21] = v62;
      v64[22] = v47;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:23];
    }

    v26 = v18;
    v27 = v42;
    v23 = v19;
    v24 = v40;
    goto LABEL_21;
  }

LABEL_22:

  return items;
}

- (void)_configureItemsForStoreConstraintsGivenCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (self->_items)
  {
    v71 = calendarCopy;
    items = [(EKEventViewControllerDefaultImpl *)self items];
    v6 = 0x1E695D000uLL;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 13; ++i)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v7 addObject:v10];

      if (i == 8)
      {
        v11 = off_1E843D4D0;
      }

      else
      {
        v11 = off_1E843D470;
      }

      v12 = [objc_alloc(*v11) initWithTag:i headerTitle:0];
      [v8 addObject:v12];
    }

    [(EKEventTitleDetailItem *)self->_titleItem setHidesBottomSeparator:MEMORY[0x1D38B98D0]([(EKEventTitleDetailItem *)self->_titleItem setHidesTopSeparator:1])];
    v70 = [v7 objectAtIndexedSubscript:0];
    v69 = [v7 objectAtIndexedSubscript:8];
    v13 = MEMORY[0x1D38B98D0]();
    v14 = [items count];
    v68 = v8;
    if (v13)
    {
      if (v14)
      {
        v15 = 0;
        p_cache = EKUIAutocompleteTracker.cache;
        v17 = EKUIAutocompleteTracker.cache;
        v18 = &OBJC_IVAR___EKUIViewHierarchyFromComponents__ekui_tintColor;
        v19 = &OBJC_IVAR___EKUIViewHierarchyFromComponents__ekui_tintColor;
        selfCopy = self;
        do
        {
          v20 = [items objectAtIndexedSubscript:v15];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(EKEventViewControllerDefaultImpl *)self allowsCalendarPreview]&& [(EKEventViewControllerDefaultImpl *)self calendarPreviewIsInlineDayView])
          {
            objc_opt_class();
            if (((objc_opt_isKindOfClass() & 1) == 0 || -[EKEventViewControllerDefaultImpl allowsCalendarPreview](self, "allowsCalendarPreview") && !-[EKEventViewControllerDefaultImpl calendarPreviewIsInlineDayView](self, "calendarPreviewIsInlineDayView")) && (![v20 showOnlyIfEditable] || -[EKEventViewControllerDefaultImpl allowsEditing](self, "allowsEditing") && !-[EKEventViewControllerDefaultImpl _backingEventAllowsEditing](self, "_backingEventAllowsEditing")))
            {
              if ([v20 configureWithEvent:*(&self->super.super.super.isa + v18[608]) calendar:v71 preview:*(&self->super.super.super.isa + v19[624])])
              {
                [v7 objectAtIndexedSubscript:{objc_msgSend(v20, "section")}];
                v21 = items;
                v22 = v6;
                v23 = v7;
                v24 = v19;
                v25 = p_cache;
                v26 = v17;
                v28 = v27 = v18;
                [v28 addObject:v20];

                v18 = v27;
                v17 = v26;
                p_cache = v25;
                v19 = v24;
                v7 = v23;
                v6 = v22;
                items = v21;
                self = selfCopy;
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [(EKEventViewControllerDefaultImpl *)selfCopy allowsCalendarPreview]&& [(EKEventViewControllerDefaultImpl *)selfCopy calendarPreviewIsInlineDayView])
                {
                  [v20 setInlineDayViewRespectsSelectedCalendarsFilter:{-[EKEventViewControllerDefaultImpl inlineDayViewRespectsSelectedCalendarsFilter](selfCopy, "inlineDayViewRespectsSelectedCalendarsFilter")}];
                }
              }
            }
          }

          ++v15;
        }

        while (v15 < [items count]);
      }

LABEL_102:
      v61 = objc_opt_new();
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __84__EKEventViewControllerDefaultImpl__configureItemsForStoreConstraintsGivenCalendar___block_invoke;
      v72[3] = &unk_1E8441F30;
      v73 = v68;
      v62 = v61;
      v74 = v62;
      v63 = v68;
      [v7 enumerateObjectsUsingBlock:v72];
      currentSections = self->_currentSections;
      self->_currentSections = v62;
      v65 = v62;

      calendarCopy = v71;
      goto LABEL_103;
    }

    v29 = v71;
    if (!v14)
    {
LABEL_94:
      lastObject = [v70 lastObject];
      if (lastObject)
      {
        v53 = lastObject;
        lastObject2 = [v70 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          lastObject3 = [v70 lastObject];
          [lastObject3 setShowExtraSpaceAtBottom:1];
        }
      }

      if ([v70 count])
      {
        v57 = [v70 count];
        v58 = [v70 objectAtIndex:0];
        v59 = v58;
        if (v57 == 1)
        {
          v60 = 5;
        }

        else
        {
          [v58 setCellPosition:1];

          v58 = [v70 objectAtIndex:{objc_msgSend(v70, "count") - 1}];
          v59 = v58;
          v60 = 4;
        }

        [v58 setCellPosition:v60];
      }

      goto LABEL_102;
    }

    v30 = 0;
    while (1)
    {
      v31 = [items objectAtIndexedSubscript:v30];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(EKEventViewControllerDefaultImpl *)self allowsCalendarPreview]&& [(EKEventViewControllerDefaultImpl *)self calendarPreviewIsInlineDayView]&& [(EKEventTitleDetailItem *)v31 configureWithEvent:self->_event calendar:v29 preview:self->_ICSPreview])
        {
          lastObject4 = [v70 lastObject];
          titleItem = self->_titleItem;

          [v70 addObject:v31];
          [(EKEventTitleDetailItem *)v31 setCellPosition:2];
          [(EKEventTitleDetailItem *)v31 setInlineDayViewRespectsSelectedCalendarsFilter:[(EKEventViewControllerDefaultImpl *)self inlineDayViewRespectsSelectedCalendarsFilter]];
          if (lastObject4 == titleItem)
          {
            [(EKEventTitleDetailItem *)self->_titleItem setHidesBottomSeparator:1];
          }

          [(EKEventTitleDetailItem *)v31 setHideBottomSeparator:[(EKEventViewControllerDefaultImpl *)self _reminderMode]];
          v29 = v71;
        }

        goto LABEL_49;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(EKEventViewControllerDefaultImpl *)self allowsCalendarPreview]|| [(EKEventViewControllerDefaultImpl *)self calendarPreviewIsInlineDayView]|| ![(EKEventTitleDetailItem *)v31 configureWithEvent:self->_event calendar:v29 preview:self->_ICSPreview])
        {
          goto LABEL_49;
        }

        v34 = v7;
        v35 = 5;
        goto LABEL_40;
      }

      if ([(EKEventTitleDetailItem *)v31 configureWithEvent:self->_event calendar:v29 preview:self->_ICSPreview])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(EKEventViewControllerDefaultImpl *)self allowsEditing])
          {
            [v69 addObject:v31];
            [(EKEventTitleDetailItem *)v31 setCellPosition:5];
          }

          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v70 addObject:v31];
          v37 = v31;
          v38 = 2;
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(EKEventViewControllerDefaultImpl *)self allowsEditing]|| ![(EKEvent *)self->_event allowsAvailabilityModifications])
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(EKEventViewControllerDefaultImpl *)self allowsEditing]|| ![(EKEvent *)self->_event allowsPrivacyLevelModifications])
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(EKEventViewControllerDefaultImpl *)self allowsEditing]|| ![(EKEvent *)self->_event allowsTravelTimeModifications])
          {
            goto LABEL_49;
          }

LABEL_62:
          if ([(EKEventViewControllerDefaultImpl *)self _backingEventAllowsEditing])
          {
            goto LABEL_49;
          }

          v39 = v69;
          goto LABEL_64;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = [v7 objectAtIndexedSubscript:11];
          [v40 addObject:v31];

          v37 = v31;
          v38 = 4;
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(EKEventViewControllerDefaultImpl *)self allowsEditing])
          {
            goto LABEL_45;
          }

          event = [(EKEventViewControllerDefaultImpl *)self event];
          allowsProposedTimeModifications = [event allowsProposedTimeModifications];

          if (!allowsProposedTimeModifications)
          {
            goto LABEL_45;
          }

          v39 = v70;
LABEL_64:
          [v39 addObject:v31];
          goto LABEL_45;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v70 addObject:v31];
            event2 = [(EKEventViewControllerDefaultImpl *)self event];
            if ([event2 isAllDay] && -[EKEventViewControllerDefaultImpl noninteractivePlatterMode](self, "noninteractivePlatterMode"))
            {
              if (CUIKCurrentLocaleRequiresIndianLanguageAdjustments())
              {
                v47 = 5;
              }

              else
              {
                v47 = 1;
              }
            }

            else
            {
              v47 = 1;
            }

            v37 = v31;
            v38 = v47;
            goto LABEL_48;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            event = self->_event;
            reminder = self->_reminder;
            eventStore = [(EKEvent *)event eventStore];
            [(EKEventTitleDetailItem *)v31 setEvent:event reminder:reminder store:eventStore];

            [v70 addObject:v31];
            v37 = v31;
            v38 = 1;
            goto LABEL_48;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v50 = objc_opt_isKindOfClass();
              [v70 addObject:v31];
              [(EKEventTitleDetailItem *)v31 setCellPosition:1];
              if (v50)
              {
                if ([(EKEventViewControllerDefaultImpl *)self minimalMode])
                {
                  v51 = [(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode]^ 1;
                }

                else
                {
                  v51 = 0;
                }

                [(EKEventTitleDetailItem *)v31 setShowExtraSpaceAtBottom:v51];
                v29 = v71;
              }

              goto LABEL_49;
            }

            [v70 addObject:v31];
            [(EKEventTitleDetailItem *)v31 setCellPosition:1];
            v45 = v31;
            goto LABEL_74;
          }

          v34 = v7;
          v35 = 12;
LABEL_40:
          v36 = [v34 objectAtIndexedSubscript:v35];
          [v36 addObject:v31];

LABEL_45:
          v37 = v31;
          v38 = 5;
LABEL_48:
          [(EKEventTitleDetailItem *)v37 setCellPosition:v38];
          goto LABEL_49;
        }

        lastObject5 = [v70 lastObject];
        v44 = self->_titleItem;

        [v70 addObject:v31];
        [(EKEventTitleDetailItem *)v31 setCellPosition:5];
        v29 = v71;
        if (lastObject5 == v44)
        {
          v45 = self->_titleItem;
LABEL_74:
          [(EKEventTitleDetailItem *)v45 setHidesBottomSeparator:1];
        }
      }

LABEL_49:

      if (++v30 >= [items count])
      {
        goto LABEL_94;
      }
    }
  }

LABEL_103:
}

void __84__EKEventViewControllerDefaultImpl__configureItemsForStoreConstraintsGivenCalendar___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([v6 count])
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    [v5 setItems:v6];
    [*(a1 + 40) addObject:v5];
  }
}

- (BOOL)_isDisplayingSuggestion
{
  calendar = [(EKEvent *)self->_event calendar];
  v3 = [calendar type] == 5;

  return v3;
}

- (BOOL)_isDisplayingDeletableEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (([WeakRetained conformsToProtocol:&unk_1F4F9EBE0] & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v8 = 1;
    goto LABEL_6;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  eventViewControllerShouldHideDeleteButton = [v6 eventViewControllerShouldHideDeleteButton];

  v8 = eventViewControllerShouldHideDeleteButton ^ 1;
LABEL_6:
  calendar = [(EKEvent *)self->_event calendar];
  if ([calendar allowsContentModifications] && (-[EKEvent isPrivateEventSharedToMe](self->_event, "isPrivateEventSharedToMe") & 1) == 0)
  {
    v10 = !self->_minimalMode & v8;
  }

  else
  {
    v10 = 0;
  }

  if ([(EKEventViewControllerDefaultImpl *)self _reminderMode])
  {
    if ([(EKEvent *)self->_event CUIK_reminderShouldBeEditable]& v10)
    {
      return 1;
    }
  }

  else if (v10)
  {
    return 1;
  }

  if ([(EKEvent *)self->_event status]!= EKEventStatusCanceled)
  {
    return 0;
  }

  calendar2 = [(EKEvent *)self->_event calendar];
  source = [calendar2 source];
  if ([source isDelegate])
  {
    calendar3 = [(EKEvent *)self->_event calendar];
    source2 = [calendar3 source];
    isWritable = [source2 isWritable];
  }

  else
  {
    isWritable = 1;
  }

  return isWritable;
}

- (BOOL)_isDisplayingInvitation
{
  allowsInviteResponses = [(EKEventViewControllerDefaultImpl *)self allowsInviteResponses];
  if (allowsInviteResponses)
  {
    event = self->_event;

    LOBYTE(allowsInviteResponses) = [(EKEvent *)event allowsParticipationStatusModifications];
  }

  return allowsInviteResponses;
}

- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage
{
  if ([(EKEventViewControllerDefaultImpl *)self showsOutOfDateMessage]|| [(EKEventViewControllerDefaultImpl *)self showsDelegatorMessage])
  {
    return 1;
  }

  return [(EKEventViewControllerDefaultImpl *)self showsDelegateMessage];
}

- (void)_updateHeaderAndFooterIfNeeded
{
  if (![(EKEventViewControllerDefaultImpl *)self isViewLoaded])
  {
    return;
  }

  if (![(EKEventViewControllerDefaultImpl *)self _shouldDisplayDelegateOrOutOfDateMessage])
  {
    if (!self->_blankFooterView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      blankFooterView = self->_blankFooterView;
      self->_blankFooterView = v4;
    }

    if (!self->_showingBlankFooterView)
    {
      v6 = self->_blankFooterView;
      tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
      [tableView setTableFooterView:v6];

      self->_showingBlankFooterView = 1;
    }

    goto LABEL_18;
  }

  if ([(EKEventViewControllerDefaultImpl *)self showsOutOfDateMessage])
  {
    v3 = @"This invitation data is out of date.";
  }

  else if ([(EKEventViewControllerDefaultImpl *)self showsDelegatorMessage])
  {
    v3 = @"This invitation is managed by your delegate.";
  }

  else
  {
    if (![(EKEventViewControllerDefaultImpl *)self showsDelegateMessage])
    {
      v9 = 0;
      goto LABEL_14;
    }

    v3 = @"You are being notified of this event because you are a delegate of an invitee.";
  }

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:v3 value:&stru_1F4EF6790 table:0];

LABEL_14:
  v10 = [(EKEventViewControllerDefaultImpl *)self _footerLabelContainingText:v9];
  [v10 frame];
  v12 = v11 + 15.0;
  v13 = MEMORY[0x1E69DD250];
  v14 = v10;
  v15 = [[v13 alloc] initWithFrame:{0.0, 0.0, 100.0, v12}];
  [v15 addSubview:v14];

  view = [(EKEventViewControllerDefaultImpl *)self view];
  [view bounds];
  v18 = v17;
  tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView2 rowHeight];
  v21 = v20;

  if (v12 >= v21)
  {
    v22 = v12;
  }

  else
  {
    v22 = v21;
  }

  [v15 setFrame:{0.0, 0.0, v18, v22}];

  tableView3 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView3 setTableFooterView:v15];

  self->_showingBlankFooterView = 0;
LABEL_18:
  event = [(EKEventViewControllerDefaultImpl *)self event];
  if ([event couldBeJunk])
  {
  }

  else
  {
    isHidden = [(UIView *)self->_headerView isHidden];

    if (!isHidden)
    {
      [(UIView *)self->_headerView setHidden:1];
      v25 = MEMORY[0x1E696ACD8];
      headerConstraints = self->_headerConstraints;

      [v25 deactivateConstraints:headerConstraints];
    }
  }
}

- (id)_footerLabelContainingText:(id)text
{
  v4 = MEMORY[0x1E69DCC10];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 setText:textCopy];

  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [v6 setFont:v7];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:secondaryLabelColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  [v6 setNumberOfLines:0];
  v10 = EKUIContainedControllerIdealWidth();
  self->_lastFooterLayoutWidth = v10;
  [v6 setFrame:{0.0, 0.0, v10 + -30.0, 1.79769313e308}];
  [v6 sizeToFit];
  [v6 frame];
  [v6 setFrame:{15.0, v11 + 6.0}];

  return v6;
}

- (void)_setUpForEvent
{
  v19 = *MEMORY[0x1E69E9840];
  [(EKEventViewControllerDefaultImpl *)self _prepareEventForEdit];
  items = [(EKEventViewControllerDefaultImpl *)self items];
  [items makeObjectsPerformSelector:sel_setDelegate_ withObject:self];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  items2 = [(EKEventViewControllerDefaultImpl *)self items];
  v5 = [items2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(items2);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        event = self->_event;
        reminder = self->_reminder;
        eventStore = [(EKEvent *)event eventStore];
        [v9 setEvent:event reminder:reminder store:eventStore];
      }

      v6 = [items2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  calendar = [(EKEvent *)self->_event calendar];
  [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:calendar];

  [(EKEventViewControllerDefaultImpl *)self _updateHeaderAndFooterIfNeeded];
  [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
}

- (id)_statusButtonsView
{
  statusButtonsView = self->_statusButtonsView;
  if (!statusButtonsView)
  {
    [(EKEventViewControllerDefaultImpl *)self updateStatusButtonsView];
    statusButtonsView = self->_statusButtonsView;
  }

  return statusButtonsView;
}

- (void)updateStatusButtonsView
{
  if (!MEMORY[0x1D38B98D0](self, a2))
  {
    goto LABEL_4;
  }

  eKUI_viewHierarchy = [(UIViewController *)self EKUI_viewHierarchy];
  if ([eKUI_viewHierarchy ekui_interfaceOrientation] == 1)
  {

LABEL_4:
    v4 = 1;
    goto LABEL_6;
  }

  traitCollection = [(EKEventViewControllerDefaultImpl *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] != 1;

LABEL_6:
  v6 = [EKUIEventStatusButtonsView alloc];
  statusButtonActions = [(EKEventViewControllerDefaultImpl *)self statusButtonActions];
  v8 = [(EKUIEventStatusButtonsView *)v6 initWithFrame:statusButtonActions actions:self delegate:1 options:v4 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  statusButtonsView = self->_statusButtonsView;
  self->_statusButtonsView = v8;

  [(EKUIEventStatusButtonsView *)self->_statusButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(EKEventViewControllerDefaultImpl *)self _isDisplayingInvitation]^ 1;
  v11 = self->_statusButtonsView;

  [(EKUIEventStatusButtonsView *)v11 setDisableButtonHighlights:v10];
}

- (id)_statusButtonsContainerView
{
  statusButtonsContainerView = self->_statusButtonsContainerView;
  if (!statusButtonsContainerView)
  {
    v4 = [SingleToolbarItemContainerView alloc];
    v5 = [(SingleToolbarItemContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_statusButtonsContainerView;
    self->_statusButtonsContainerView = v5;

    [(SingleToolbarItemContainerView *)self->_statusButtonsContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    statusButtonsContainerView = self->_statusButtonsContainerView;
  }

  return statusButtonsContainerView;
}

- (void)_updateStatusButtonsActions
{
  statusButtonActions = [(EKEventViewControllerDefaultImpl *)self statusButtonActions];
  actions = [(EKUIEventStatusButtonsView *)self->_statusButtonsView actions];
  v4 = [statusButtonActions isEqualToArray:actions];

  if ((v4 & 1) == 0)
  {
    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setActions:statusButtonActions];
    toolbarItems = [(EKEventViewControllerDefaultImpl *)self toolbarItems];

    if (toolbarItems)
    {
      [(EKEventViewControllerDefaultImpl *)self updateStatusButtonsView];
      [(EKEventViewControllerDefaultImpl *)self _configureStatusButtonsToolbar];
    }
  }
}

- (void)_configureStatusButtonsToolbar
{
  _statusButtonsView = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
  statusButtons = [_statusButtonsView statusButtons];

  _statusButtonsView2 = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
  actions = [_statusButtonsView2 actions];

  v6 = [actions containsObject:&unk_1F4F326B0];
  v7 = objc_opt_new();
  if ([statusButtons count])
  {
    v8 = 0;
    do
    {
      v9 = objc_alloc(MEMORY[0x1E69DC708]);
      v10 = [statusButtons objectAtIndexedSubscript:v8];
      v11 = [v9 initWithCustomView:v10];

      [v7 addObject:v11];
      if ((v6 & 1) == 0 && v8 != [statusButtons count] - 1)
      {
        v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 menu:0];
        [v7 addObject:v12];
      }

      ++v8;
    }

    while ([statusButtons count] > v8);
  }

  [(EKEventViewControllerDefaultImpl *)self setToolbarItems:v7 animated:1];
  navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar sizeToFit];

  navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  toolbar2 = [navigationController2 toolbar];
  [toolbar2 _setItemDistribution:1];
}

- (void)_notifyDetailItemsOfVisibilityOnScreen
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = self->_currentSections;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  indexPathsForVisibleRows = [(UITableView *)self->_tableView indexPathsForVisibleRows];
  v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = -[NSArray objectAtIndex:](v3, "objectAtIndex:", [v9 section]);
        v11 = [v10 itemAtIndex:{objc_msgSend(v9, "row")}];
        _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
        [v11 eventViewController:_ekEventViewController tableViewDidScroll:self->_tableView];
      }

      v6 = [indexPathsForVisibleRows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)doneButtonTapped
{
  sourceViewForPopover = [(EKEventTitleDetailItem *)self->_titleItem sourceViewForPopover];
  [(EKEventViewControllerDefaultImpl *)self _doneButtonTapped:sourceViewForPopover];
}

- (void)_doneButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (!self->_recurrenceAlertController)
  {
    selectedEditItem = self->_selectedEditItem;
    v8 = tappedCopy;
    if (!selectedEditItem || (v6 = [(EKEventDetailItem *)selectedEditItem saveAndDismissWithForce:0], tappedCopy = v8, v6))
    {
      if (![(EKEvent *)self->_event hasChanges])
      {
        [(EKEventViewControllerDefaultImpl *)self completeWithAction:0];
        goto LABEL_10;
      }

      if (![(EKEvent *)self->_event requiresDetach])
      {
        [(EKEventViewControllerDefaultImpl *)self _performSave:0 animated:1];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(EKEventViewControllerDefaultImpl *)self _presentDetachSheetFromBarButtonItem:v8];
LABEL_10:
        tappedCopy = v8;
        goto LABEL_11;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      tappedCopy = v8;
      if (isKindOfClass)
      {
        [(EKEventViewControllerDefaultImpl *)self _presentDetachSheetFromView:v8];
        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

- (void)editButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v9 = [v7 eventViewControllerEditButtonTemporarilyDisabled:_ekEventViewController];

      if (v9)
      {
        return;
      }
    }
  }

  v10 = objc_loadWeakRetained(&self->_delegate);
  if (v10)
  {
    v11 = v10;
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 performSelector:sel_eventViewControllerWillBeginEditingEvent_ withObject:self];
    }
  }

  v15 = objc_loadWeakRetained(&self->_delegate);
  if (([v15 conformsToProtocol:&unk_1F4F9EBE0] & 1) == 0)
  {

LABEL_12:
    v21 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:self->_event creationMethod:0 viewStart:[(EKEventViewControllerDefaultImpl *)self canvasView] eventEditViewDelegate:self];
    [(EKEventViewControllerDefaultImpl *)self setActiveEventEditor:v21];

    goto LABEL_13;
  }

  v16 = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

  v18 = objc_loadWeakRetained(&self->_delegate);
  _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v20 = [v18 eventViewDelegateShouldCreateOwnEditViewController:_ekEventViewController2];

  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(EKEventViewControllerDefaultImpl *)self presentEditorAnimated:1];
}

- (void)setActiveEventEditor:(id)editor
{
  editorCopy = editor;
  [editorCopy setInternalEditViewDelegate:self];
  view = [(EKEventViewControllerDefaultImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
  {
    view2 = [(EKEventViewControllerDefaultImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(view2);

    if (IsRegular)
    {
      [editorCopy setModalPresentationStyle:3];
    }
  }

  else
  {
  }

  delegate = [(EKEventViewControllerDefaultImpl *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [editorCopy setModalPresentationStyle:{objc_msgSend(WeakRetained, "editorPresentationStyle")}];
  }

  activeEventEditor = self->_activeEventEditor;
  self->_activeEventEditor = editorCopy;
}

- (void)presentEditorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = self->_activeEventEditor;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    goto LABEL_6;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v9 = [v7 eventViewDelegateShouldHandlePresentationOfEditViewController:_ekEventViewController];

  if (v9)
  {
    _viewControllerForEditorPresentation = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [_viewControllerForEditorPresentation eventViewController:_ekEventViewController2 requestsDisplayOfEditViewController:v17 animated:animatedCopy];

LABEL_12:
    goto LABEL_13;
  }

LABEL_7:
  if (v17)
  {
    if (animatedCopy && (animatedCopy = [(EKEventViewControllerDefaultImpl *)self editorShowTransition], animatedCopy == 8))
    {
      _viewControllerForEditorPresentation = [(EKEventViewControllerDefaultImpl *)self _viewControllerForEditorPresentation];
      [_viewControllerForEditorPresentation presentViewController:v17 animated:1 completion:0];
    }

    else
    {
      _viewControllerForEditorPresentation = [(EKEventViewControllerDefaultImpl *)self _viewControllerForEditorPresentation];
      [_viewControllerForEditorPresentation presentModalViewController:v17 withTransition:animatedCopy];
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = objc_loadWeakRetained(&self->_delegate);
  if (v12)
  {
    v13 = v12;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 performSelector:sel_eventViewControllerDidBeginEditingEventWithEditViewController_ withObject:v17];
    }
  }
}

- (id)_viewControllerForEditorPresentation
{
  navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];

  if (navigationController)
  {
    selfCopy = [(EKEventViewControllerDefaultImpl *)self navigationController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_saveStatus:(int64_t)status span:(int64_t)span
{
  [(EKEvent *)self->_event setParticipationStatus:status];
  [(EKEvent *)self->_event setInvitationStatus:0];

  [(EKEventViewControllerDefaultImpl *)self _performSave:span animated:1];
}

- (BOOL)_performSave:(int64_t)save animated:(BOOL)animated
{
  v6 = [(UIResponder *)self EKUI_editor:save];
  event = self->_event;
  v17 = 0;
  v8 = [v6 saveEvent:event span:save error:&v17];
  v9 = v17;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      domain = [v9 domain];
      if (domain != *MEMORY[0x1E6966808])
      {
LABEL_6:

        goto LABEL_11;
      }

      code = [v10 code];

      if (code == 1010)
      {
        domain = [(EKEvent *)self->_event eventStore];
        [domain rollback];
        goto LABEL_6;
      }
    }

    else
    {
      canvasView = [(EKEventViewControllerDefaultImpl *)self canvasView];
      if (canvasView > 5)
      {
        v14 = &unk_1F4F326C8;
      }

      else
      {
        v14 = qword_1E8441FE0[canvasView];
      }

      v16 = v14;
      CalAnalyticsSendEventLazy();
    }
  }

LABEL_11:
  [(EKEventViewControllerDefaultImpl *)self completeWithAction:1];

  return 1;
}

void __58__EKEventViewControllerDefaultImpl__performSave_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 event];
  if ([v4 isReminderIntegrationEvent])
  {
    v5 = @"Reminder";
  }

  else
  {
    v5 = @"Event";
  }

  [v9 setObject:v5 forKeyedSubscript:@"eventType"];

  v6 = [*(a1 + 32) event];
  v7 = [v6 attendees];
  if ([v7 count])
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  [v9 setObject:v8 forKeyedSubscript:@"hasAttendees"];

  [v9 setObject:*(a1 + 40) forKeyedSubscript:@"currentView"];
}

- (void)_performDelete:(int64_t)delete editor:(id)editor
{
  v6 = MEMORY[0x1E6966A10];
  editorCopy = editor;
  sharedInstance = [v6 sharedInstance];
  [sharedInstance handleEventDeletion:self->_event];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:self->_event];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__EKEventViewControllerDefaultImpl__performDelete_editor___block_invoke;
  v10[3] = &unk_1E843FF50;
  v10[4] = self;
  [editorCopy deleteEvents:v9 span:delete result:v10];
}

void __58__EKEventViewControllerDefaultImpl__performDelete_editor___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) completeWithAction:2];
    v7 = [*(a1 + 32) canvasView];
    if (v7 > 5)
    {
      v8 = &unk_1F4F326C8;
    }

    else
    {
      v8 = qword_1E8441FE0[v7];
    }

    v13 = v8;
    CalAnalyticsSendEventLazy();
  }

  else
  {
    v9 = [v5 domain];
    v10 = v9;
    if (v9 == *MEMORY[0x1E6966808])
    {
      v11 = [v6 code];

      if (v11 == 1010)
      {
        v12 = [*(*(a1 + 32) + 1000) eventStore];
        [v12 rollback];
      }
    }

    else
    {
    }
  }
}

void __58__EKEventViewControllerDefaultImpl__performDelete_editor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 event];
  if ([v4 isReminderIntegrationEvent])
  {
    v5 = @"Reminder";
  }

  else
  {
    v5 = @"Event";
  }

  [v9 setObject:v5 forKeyedSubscript:@"eventType"];

  v6 = [*(a1 + 32) event];
  v7 = [v6 attendees];
  if ([v7 count])
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  [v9 setObject:v8 forKeyedSubscript:@"hasAttendees"];

  [v9 setObject:*(a1 + 40) forKeyedSubscript:@"currentView"];
}

- (void)performAddToCalendar
{
  if ([(EKEventViewControllerDefaultImpl *)self isICSPreview]&& [(EKEventViewControllerDefaultImpl *)self showsAddToCalendarForICSPreview])
  {

    [(EKEventViewControllerDefaultImpl *)self _addToCalendarClicked:self];
  }
}

- (void)dismissJunkView
{
  [(EKEvent *)self->_event setIsJunk:0 shouldSave:1];
  [(EKEventViewControllerDefaultImpl *)self _updateHeaderAndFooterIfNeeded];
  [(EKEventViewControllerDefaultImpl *)self _customInsets];
  tableView = self->_tableView;

  [(UITableView *)tableView setContentInset:?];
}

- (CGSize)calculatePreferredContentSize
{
  if (self->_activeEventEditor)
  {
    activeEventEditor = self->_activeEventEditor;

    [(EKEventOrIntegrationEditView *)activeEventEditor preferredContentSize];
  }

  else
  {
    currentEditItem = self->_currentEditItem;
    if (currentEditItem)
    {
      viewController = [(EKEventDetailItem *)currentEditItem viewController];
      [viewController preferredContentSize];
      v9 = v8;
      v11 = v10;

      v4 = v9;
      v5 = v11;
    }

    else
    {

      [(EKEventViewControllerDefaultImpl *)self _idealSize];
    }
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (double)tableViewSectionContentWidth
{
  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView bounds];
  v5 = v4;

  tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView2 _sectionContentInset];
  v8 = v7;
  v10 = v9;

  return v5 - (v8 + v10);
}

- (void)viewLayoutMarginsDidChange
{
  v15.receiver = self;
  v15.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v15 viewLayoutMarginsDidChange];
  [(EKEventViewControllerDefaultImpl *)self calculatePreferredContentSize];
  [(EKEventViewControllerDefaultImpl *)self setPreferredContentSize:?];
  [(EKEventPreviewDetailItem *)self->_previewItem reset];
  [(EKEventViewControllerDefaultImpl *)self tableViewSectionContentWidth];
  v4 = v3;
  if (v3 < 1.0)
  {
    [(EKEventViewControllerDefaultImpl *)self preferredContentSize];
    v4 = v5;
  }

  if (v4 >= 1.0)
  {
    tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
    numberOfSections = [tableView numberOfSections];

    if (numberOfSections)
    {
      for (i = 0; i != numberOfSections; ++i)
      {
        tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
        v10 = [tableView2 numberOfRowsInSection:i];

        if (v10)
        {
          for (j = 0; j != v10; ++j)
          {
            v12 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:i];
            tableView3 = [(EKEventViewControllerDefaultImpl *)self tableView];
            v14 = [(EKEventViewControllerDefaultImpl *)self tableView:tableView3 cellForRowAtIndexPath:v12];

            [objc_opt_class() adjustLayoutForCell:v14 tableViewWidth:v10 numRowsInSection:j cellRow:1 forceLayout:v4];
          }
        }
      }
    }
  }
}

- (UIViewController)presentationSourceViewController
{
  presentationSourceViewController = self->_presentationSourceViewController;
  if (presentationSourceViewController && (-[UIViewController view](presentationSourceViewController, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 window], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    selfCopy = self->_presentationSourceViewController;
  }

  else
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];

    if (navigationController)
    {
      selfCopy = [(EKEventViewControllerDefaultImpl *)self navigationController];
    }

    else
    {
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (id)presentationNavigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    presentationSourceViewController = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  }

  return presentationSourceViewController;
}

- (void)_presentDetachSheetFromBarButtonItem:(id)item
{
  itemCopy = item;
  _detachSheetHandler = [(EKEventViewControllerDefaultImpl *)self _detachSheetHandler];
  presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  v6 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentationSourceViewController barButtonItem:itemCopy forEvent:self->_event withCompletionHandler:_detachSheetHandler];

  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v6;
}

- (void)_presentDetachSheetFromView:(id)view
{
  viewCopy = view;
  _detachSheetHandler = [(EKEventViewControllerDefaultImpl *)self _detachSheetHandler];
  presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  [viewCopy bounds];
  v6 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentationSourceViewController sourceView:viewCopy sourceRect:self->_event forEvent:_detachSheetHandler withCompletionHandler:?];

  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v6;
}

- (id)_detachSheetHandler
{
  v2 = self->_pendingStatus == 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__EKEventViewControllerDefaultImpl__detachSheetHandler__block_invoke;
  v7[3] = &unk_1E8441088;
  v3 = !v2;
  v7[4] = self;
  v8 = v3;
  v4 = _Block_copy(v7);
  v5 = _Block_copy(v4);

  return v5;
}

void __55__EKEventViewControllerDefaultImpl__detachSheetHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      return;
    }
  }

  else if (a2 == 1 || a2 == 2)
  {
    v4 = a2;
  }

  else if (a2 == 3)
  {
    [*(a1 + 32) _updateResponse];
    goto LABEL_12;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  if (v5 == 1)
  {
    [v6 _saveStatus:v6[134] span:v4];
  }

  else
  {
    [v6 _performSave:v4 animated:1];
  }

LABEL_12:
  v7 = *(a1 + 32);
  v8 = *(v7 + 1088);
  *(v7 + 1088) = 0;
}

- (void)eventDetailItemAccessoryButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([(EKEventViewControllerDefaultImpl *)self allowsSubitems])
  {
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [tappedCopy eventViewControllerDidTapInfoButton:_ekEventViewController];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        [v9 performSelector:sel_eventViewControllerDidReceiveEditUserInteraction_ withObject:self];
      }
    }
  }
}

- (void)eventDetailItemWantsRefeshForHeightChange
{
  if (self->_needsReload)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadIfNeeded object:0];
    [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  }

  else
  {
    tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView beginUpdates];

    tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView2 endUpdates];
  }

  [(EKEventViewControllerDefaultImpl *)self calculatePreferredContentSize];

  [(EKEventViewControllerDefaultImpl *)self setPreferredContentSize:?];
}

- (void)eventItemDidSave:(id)save
{
  saveCopy = save;
  if ([saveCopy section] == 2)
  {
    self->_needsReload = 1;
    [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  }

  else if ([saveCopy section] == 6)
  {
    calendar = [(EKEvent *)self->_event calendar];
    [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:calendar];

    [(UIResponder *)self EKUI_setDataOwnersFromEvent:self->_event];
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [(EKEventViewControllerDefaultImpl *)self reloadReminderWithEKEvent:self->_event];
    [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
  }

  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView reloadData];
}

- (void)eventItemDidCommit:(id)commit
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewControllerModifiedEventWithoutEditing:_ekEventViewController];
  }
}

- (void)eventDetailItemWantsRefresh:(id)refresh
{
  v27 = *MEMORY[0x1E69E9840];
  refreshCopy = refresh;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  currentSections = self->_currentSections;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__EKEventViewControllerDefaultImpl_eventDetailItemWantsRefresh___block_invoke;
  v13[3] = &unk_1E8441FA8;
  v15 = &v17;
  v6 = refreshCopy;
  v14 = v6;
  v16 = &v21;
  [(NSArray *)currentSections enumerateObjectsUsingBlock:v13];
  if (v22[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "Event detail item to reload (%@) not found", buf, 0xCu);
    }
  }

  else
  {
    numberOfSubitems = [v6 numberOfSubitems];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:numberOfSubitems];
    if (numberOfSubitems)
    {
      for (i = 0; i != numberOfSubitems; ++i)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathForRow:i + v18[3] inSection:v22[3]];
        [v9 addObject:v11];
      }
    }

    tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView reloadRowsAtIndexPaths:v9 withRowAnimation:0];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __64__EKEventViewControllerDefaultImpl_eventDetailItemWantsRefresh___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v7 = [a2 items];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__EKEventViewControllerDefaultImpl_eventDetailItemWantsRefresh___block_invoke_2;
  v8[3] = &unk_1E8441F80;
  v9 = *(a1 + 32);
  v11 = a3;
  v10 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  [v7 enumerateObjectsUsingBlock:v8];

  *a4 = *(*(*(a1 + 48) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __64__EKEventViewControllerDefaultImpl_eventDetailItemWantsRefresh___block_invoke_2(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  v4 = result;
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(result + 56);
    *a4 = 1;
  }

  else
  {
    result = [a2 numberOfSubitems];
    *(*(*(v4 + 48) + 8) + 24) += result;
  }

  return result;
}

- (void)eventItemDidEndEditing:(id)editing
{
  currentEditItem = self->_currentEditItem;
  self->_currentEditItem = 0;
}

- (void)eventItem:(id)item wantsViewControllerPresented:(id)presented
{
  presentedCopy = presented;
  v6 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  [v6 presentViewController:presentedCopy animated:1 completion:0];
}

- (void)_dismissEditor:(BOOL)editor deleted:(BOOL)deleted
{
  activeEventEditor = self->_activeEventEditor;
  if (!activeEventEditor)
  {
    return;
  }

  deletedCopy = deleted;
  if (([(EKEventOrIntegrationEditView *)activeEventEditor isBeingDismissed]& 1) != 0)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v8 = WeakRetained, v9 = objc_loadWeakRetained(&self->_delegate), v10 = [v9 conformsToProtocol:&unk_1F4F9EBE0], v9, v8, v10))
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [v13 eventViewControllerWillFinishEditingEvent:_ekEventViewController deleted:deletedCopy];
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    presentingViewController2 = objc_loadWeakRetained(&self->_delegate);
    if (v16)
    {
      _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [presentingViewController2 eventViewController:_ekEventViewController2 requestsDismissalOfEditViewController:self->_activeEventEditor];
    }

    else
    {
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = objc_loadWeakRetained(&self->_delegate);
        _ekEventViewController3 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
        [v21 eventViewController:_ekEventViewController3 willDismissEditViewController:self->_activeEventEditor deleted:deletedCopy];
      }

      presentingViewController = [(EKEventOrIntegrationEditView *)self->_activeEventEditor presentingViewController];
      [presentingViewController dismissViewControllerWithTransition:-[EKEventViewControllerDefaultImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];

      v24 = objc_loadWeakRetained(&self->_delegate);
      v25 = objc_opt_respondsToSelector();

      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      presentingViewController2 = objc_loadWeakRetained(&self->_delegate);
      _ekEventViewController4 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [presentingViewController2 eventViewController:_ekEventViewController4 didDismissEditViewController:self->_activeEventEditor deleted:deletedCopy];
    }
  }

  else
  {
    presentingViewController2 = [(EKEventOrIntegrationEditView *)self->_activeEventEditor presentingViewController];
    [presentingViewController2 dismissViewControllerWithTransition:-[EKEventViewControllerDefaultImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];
  }

LABEL_12:
  [(EKEventOrIntegrationEditView *)self->_activeEventEditor setInternalEditViewDelegate:0];
  v19 = self->_activeEventEditor;
  self->_activeEventEditor = 0;
}

- (void)fullReloadWithNewEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKEventViewControllerDefaultImpl *)self setEvent:eventCopy];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        reminder = self->_reminder;
        eventStore = [eventCopy eventStore];
        [v10 setEvent:eventCopy reminder:reminder store:eventStore];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  calendar = [(EKEvent *)self->_event calendar];
  [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:calendar];

  [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView reloadData];
}

- (BOOL)eventDetailItemShouldPresentShareSheet:(id)sheet
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v8 = [v6 eventViewControllerShouldPresentShareSheet:_ekEventViewController];

  return v8;
}

- (void)eventDetailItem:(id)item requestPresentShareSheetWithActivityItems:(id)items withPopoverSourceView:(id)view
{
  itemsCopy = items;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [v10 eventViewController:_ekEventViewController requestPresentShareSheetWithActivityItems:itemsCopy withPopoverSourceView:viewCopy];
  }
}

- (void)_eventEditViewControllerDidCompleteWithAction:(int64_t)action
{
  if (action == 2)
  {

    [(EKEventViewControllerDefaultImpl *)self completeWithAction:?];
  }

  else
  {
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
    [(EKEventViewControllerDefaultImpl *)self _dismissEditor:1 deleted:0];
    if (action == 1)
    {
      calendar = [(EKEvent *)self->_event calendar];
      [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:calendar];

      tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
      [tableView reloadData];
    }
  }
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if (handlerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      handlerCopy[2](handlerCopy, v11);
    }

    else
    {
      handlerCopy[2](handlerCopy, self);
    }
  }

  editViewControllerForPasteboard = self->_editViewControllerForPasteboard;
  if (editViewControllerForPasteboard == controllerCopy)
  {
    presentingViewController = [(EKEventEditViewController *)editViewControllerForPasteboard presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    v14 = self->_editViewControllerForPasteboard;
    self->_editViewControllerForPasteboard = 0;

    strongSelf = self->_strongSelf;
    self->_strongSelf = 0;
  }

  else
  {
    [(EKEventViewControllerDefaultImpl *)self _eventEditViewControllerDidCompleteWithAction:action];
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)controller
{
  delegate = [(EKEventViewControllerDefaultImpl *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    pasteboardManager = [WeakRetained pasteboardManager];
  }

  else
  {
    pasteboardManager = 0;
  }

  return pasteboardManager;
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (void)_prepareEventForEdit
{
  v10[1] = *MEMORY[0x1E69E9840];
  calendar = [(EKEvent *)self->_event calendar];

  if (!calendar)
  {
    event = self->_event;
    eventStore = [(EKEvent *)event eventStore];
    defaultCalendarForNewEvents = [eventStore defaultCalendarForNewEvents];
    [(EKEvent *)event setCalendar:defaultCalendarForNewEvents];
  }

  startDate = [(EKEvent *)self->_event startDate];

  if (!startDate)
  {
    [objc_opt_class() setDefaultDatesForEvent:self->_event];
  }

  v8 = self->_event;
  v10[0] = *MEMORY[0x1E6992B40];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(EKEvent *)v8 prefetchAttendeesWithAdditionalProperties:v9];
}

- (void)invokeAction:(int64_t)action eventStatusButtonsView:(id)view
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = [view buttonForAction:?];
  v7 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    actionCopy = action;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "EKEventViewController invoking action: %ld", &v9, 0xCu);
  }

  if (action > 4095)
  {
    if (action < 0x10000)
    {
      switch(action)
      {
        case 0x1000:
          [(EKEventViewControllerDefaultImpl *)self _acceptProposedTimeWithSourceViewForPopover:v6];
          break;
        case 0x2000:
          [(EKEventViewControllerDefaultImpl *)self _rejectProposedTime];
          break;
        case 0x8000:
          [(EKEventViewControllerDefaultImpl *)self _cancelProposedTime];
          break;
      }
    }

    else if (action >= 0x80000)
    {
      if (action == 0x80000 || action == 0x100000)
      {
LABEL_27:
        [(EKEventViewControllerDefaultImpl *)self _deleteClicked:v6];
      }
    }

    else if (action == 0x10000)
    {
      PresentJunkAlertControllerForEvent(self->_event, v6, self, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

    else if (action == 0x40000)
    {
      [(EKEventViewControllerDefaultImpl *)self _unsubscribeClicked:v6];
    }
  }

  else
  {
    if (action <= 7)
    {
      switch(action)
      {
        case 1:
          v8 = 2;
          break;
        case 2:
          v8 = 4;
          break;
        case 4:
          v8 = 3;
          break;
        default:
          goto LABEL_35;
      }

      [(EKEventViewControllerDefaultImpl *)self _saveStatus:v8 sourceViewForPopover:v6];
      goto LABEL_35;
    }

    if (action <= 127)
    {
      if (action != 8)
      {
        if (action != 16)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    if (action == 128)
    {
      [(EKEventViewControllerDefaultImpl *)self _deleteSuggestionTapped:self];
      goto LABEL_35;
    }

    if (action == 2048)
    {
LABEL_24:
      [(EKEventViewControllerDefaultImpl *)self _addToCalendarClicked:self];
    }
  }

LABEL_35:
}

- (id)_proposedDate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  event = [(EKEventViewControllerDefaultImpl *)self event];
  attendees = [event attendees];

  v5 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(attendees);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 proposedStartDateStatus] == 1 || !objc_msgSend(v10, "proposedStartDateStatus"))
          {
            event2 = [(EKEventViewControllerDefaultImpl *)self event];
            v12 = [v10 proposedStartDateForEvent:event2];

            if (v12)
            {

              goto LABEL_15;
            }
          }
        }
      }

      v6 = [attendees countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (void)_acceptProposedTimeWithSourceViewForPopover:(id)popover
{
  v28 = *MEMORY[0x1E69E9840];
  popoverCopy = popover;
  _proposedDate = [(EKEventViewControllerDefaultImpl *)self _proposedDate];
  if (_proposedDate)
  {
    event = [(EKEventViewControllerDefaultImpl *)self event];
    endDateUnadjustedForLegacyClients = [event endDateUnadjustedForLegacyClients];
    startDate = [event startDate];
    [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate];
    v10 = v9;

    [event setStartDate:_proposedDate];
    v11 = [_proposedDate dateByAddingTimeInterval:v10];
    [event setEndDateUnadjustedForLegacyClients:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    attendees = [event attendees];
    v13 = [attendees countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(attendees);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            [v18 setCommentChanged:0];
            [v18 setStatusChanged:0];
            [v18 setProposedStartDateChanged:0];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [attendees countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [event dismissAcceptedProposeNewTimeNotification];
    if ([event isOrWasPartOfRecurringSeries])
    {
      presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
      [popoverCopy bounds];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __80__EKEventViewControllerDefaultImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke;
      v22[3] = &unk_1E843FE10;
      v22[4] = self;
      v20 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentationSourceViewController sourceView:popoverCopy sourceRect:event forEvent:v22 withCompletionHandler:?];
      recurrenceAlertController = self->_recurrenceAlertController;
      self->_recurrenceAlertController = v20;
    }

    else
    {
      [(EKEventViewControllerDefaultImpl *)self _performSave:0 animated:0];
    }
  }
}

void __80__EKEventViewControllerDefaultImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    if (a2 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = a2 == 1;
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 1088);
    *(v6 + 1088) = 0;

    v8 = *(a1 + 32);

    [v8 _performSave:v5 animated:0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1088);
    *(v3 + 1088) = 0;
  }
}

- (void)_rejectProposedTime
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  event = [(EKEventViewControllerDefaultImpl *)self event];
  attendees = [event attendees];

  v5 = [attendees countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(attendees);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          [v10 setCommentChanged:0];
          [v10 setStatusChanged:0];
          [v10 setProposedStartDateChanged:0];
          [v10 setProposedStartDateStatus:3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [attendees countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  event2 = [(EKEventViewControllerDefaultImpl *)self event];
  if ([event2 isOrWasPartOfRecurringSeries])
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  [(EKEventViewControllerDefaultImpl *)self _performSave:v12 animated:0];
}

- (void)_cancelProposedTime
{
  event = [(EKEventViewControllerDefaultImpl *)self event];
  [event setProposedStartDate:0];

  [(EKEventViewControllerDefaultImpl *)self _performSave:0 animated:0];
}

- (void)_saveStatus:(int64_t)status sourceViewForPopover:(id)popover
{
  popoverCopy = popover;
  if (status)
  {
    v8 = popoverCopy;
    if (([(EKEvent *)self->_event responseMustApplyToAll]& 1) != 0)
    {
      v7 = 4;
    }

    else
    {
      if ([(EKEvent *)self->_event isOrWasPartOfRecurringSeries]&& ([(EKEvent *)self->_event isSignificantlyDetached]& 1) == 0)
      {
        self->_pendingStatus = status;
        [(EKEventViewControllerDefaultImpl *)self _presentDetachSheetFromView:v8];
        goto LABEL_8;
      }

      v7 = 0;
    }

    [(EKEventViewControllerDefaultImpl *)self _saveStatus:status span:v7];
LABEL_8:
    popoverCopy = v8;
  }
}

- (void)_deleteClicked:(id)clicked
{
  clickedCopy = clicked;
  event = [(EKEventViewControllerDefaultImpl *)self event];
  status = [event status];

  eKUI_editor = [(UIResponder *)self EKUI_editor];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v11 = [v9 eventViewDelegateShouldHandlePresentationOfDeleteAlert:_ekEventViewController];
  }

  else
  {
    v11 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__EKEventViewControllerDefaultImpl__deleteClicked___block_invoke;
  aBlock[3] = &unk_1E843FF28;
  v25 = v11;
  aBlock[4] = self;
  v12 = eKUI_editor;
  v24 = v12;
  v26 = status == 3;
  v13 = _Block_copy(aBlock);
  if (status == 3)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  if (v11)
  {
    v15 = [EKUIRecurrenceAlertController deleteAlertWithOptions:v14 forEvent:self->_event stringForDeleteButton:0 withCompletionHandler:v13];
    recurrenceAlertController = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v15;

    if (self->_recurrenceAlertController)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      alertController = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
      [v17 eventViewController:_ekEventViewController2 requestsDisplayOfDeleteAlert:alertController];
    }

    else
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
    [clickedCopy bounds];
    v21 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v14 viewController:presentationSourceViewController sourceView:clickedCopy sourceRect:self->_event forEvent:0 stringForDeleteButton:v13 withCompletionHandler:?];
    v22 = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v21;
  }
}

void __51__EKEventViewControllerDefaultImpl__deleteClicked___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v14 = *MEMORY[0x1E69932E8];
    v4 = [EKUIEventViewDelegateAlertDisplayer alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1384));
    v6 = [(EKUIEventViewDelegateAlertDisplayer *)v4 initWithDelegate:WeakRetained eventViewController:*(a1 + 32)];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__EKEventViewControllerDefaultImpl__deleteClicked___block_invoke_2;
  v10[3] = &unk_1E843FF00;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = a2;
  v10[4] = v9;
  v13 = *(a1 + 49);
  v11 = v8;
  [v11 performWithOptions:v7 block:v10];
}

uint64_t __51__EKEventViewControllerDefaultImpl__deleteClicked___block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 == 2)
  {
    v3 = *(result + 40);
    v4 = *(result + 32);
    v2 = 2;
  }

  else if (v1 == 1)
  {
    v3 = *(result + 40);
    v4 = *(result + 32);
    v2 = 1;
  }

  else
  {
    if (v1)
    {
      return result;
    }

    if (*(result + 56))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(result + 40);
    v4 = *(result + 32);
  }

  return [v4 _performDelete:v2 editor:v3];
}

- (void)_unsubscribeClicked:(id)clicked
{
  clickedCopy = clicked;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__EKEventViewControllerDefaultImpl__unsubscribeClicked___block_invoke;
  aBlock[3] = &unk_1E843FE10;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = objc_loadWeakRetained(&self->_delegate);
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v9 = [v7 eventViewDelegateShouldHandlePresentationOfDeleteAlert:_ekEventViewController];

  if (!v9)
  {
LABEL_5:
    presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
    [clickedCopy bounds];
    v15 = [EKUIRecurrenceAlertController presentUnsubscribeAlertWithOptions:4 viewController:presentationSourceViewController sourceView:clickedCopy sourceRect:v5 withCompletionHandler:?];
    recurrenceAlertController = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v15;
    goto LABEL_6;
  }

  v10 = [EKUIRecurrenceAlertController unsubscribeAlertWithOptions:4 withCompletionHandler:v5];
  v11 = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v10;

  presentationSourceViewController = objc_loadWeakRetained(&self->_delegate);
  recurrenceAlertController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  alertController = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
  [presentationSourceViewController eventViewController:recurrenceAlertController requestsDisplayOfDeleteAlert:alertController];

LABEL_6:
}

void __56__EKEventViewControllerDefaultImpl__unsubscribeClicked___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    v3 = [*(*(a1 + 32) + 1000) calendar];
    v4 = kEKUILogHandle;
    v5 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT);
    if (a2 == 5)
    {
      if (v5)
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Removing calendar %@ because the user unsubscribed from event details, and reporting it as junk", &v6, 0xCu);
      }

      [MEMORY[0x1E6993498] unsubscribeFromCalendar:v3 reportAsJunk:1];
    }

    else
    {
      if (v5)
      {
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Removing calendar %@ because the user unsubscribed from event details", &v6, 0xCu);
      }

      [MEMORY[0x1E6993498] unsubscribeFromCalendar:v3];
    }
  }
}

- (void)_addToCalendarClicked:(id)clicked
{
  if ([(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion])
  {
    suggestionInfo = [(EKEvent *)self->_event suggestionInfo];
    [suggestionInfo setChangedFields:0];

    [(EKEventViewControllerDefaultImpl *)self attemptDisplayReviewPrompt];
    eventStore = [(EKEvent *)self->_event eventStore];
    [eventStore acceptSuggestedEvent:self->_event];

    v6 = MEMORY[0x1E69930D8];
    suggestionInfo2 = [(EKEvent *)self->_event suggestionInfo];
    uniqueIdentifier = [suggestionInfo2 uniqueIdentifier];
    [v6 logEventConfirmedDetailsWithUniqueKey:uniqueIdentifier];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewController:_ekEventViewController didCompleteWithAction:0];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained performSelector:sel_eventViewControllerDidRequestAddToCalendar_ withObject:self];
  }
}

- (void)_deleteSuggestionTapped:(id)tapped
{
  if ([(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion])
  {
    suggestionInfo = [(EKEvent *)self->_event suggestionInfo];
    [suggestionInfo setChangedFields:0];

    v5 = MEMORY[0x1E69930D8];
    suggestionInfo2 = [(EKEvent *)self->_event suggestionInfo];
    uniqueIdentifier = [suggestionInfo2 uniqueIdentifier];
    [v5 logEventRejectedDetailsWithUniqueKey:uniqueIdentifier];

    eventStore = [(EKEvent *)self->_event eventStore];
    [eventStore deleteSuggestedEvent:self->_event];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewController:_ekEventViewController didCompleteWithAction:2];
  }
}

- (void)_updateResponseVisibility
{
  v29[4] = *MEMORY[0x1E69E9840];
  if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayStatusButtons])
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
    [navigationController setToolbarHidden:0];

    v4 = MEMORY[0x1D38B98D0]();
    toolbarItems = [(EKEventViewControllerDefaultImpl *)self toolbarItems];
    v6 = toolbarItems;
    if (v4)
    {

      if (!v6)
      {

        [(EKEventViewControllerDefaultImpl *)self _configureStatusButtonsToolbar];
      }
    }

    else if (!toolbarItems || (statusButtonsContainerView = self->_statusButtonsContainerView, toolbarItems, !statusButtonsContainerView))
    {
      _statusButtonsContainerView = [(EKEventViewControllerDefaultImpl *)self _statusButtonsContainerView];
      _statusButtonsView = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
      [_statusButtonsContainerView addSubview:_statusButtonsView];
      v22 = MEMORY[0x1E696ACD8];
      leadingAnchor = [_statusButtonsView leadingAnchor];
      leadingAnchor2 = [_statusButtonsContainerView leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v29[0] = v25;
      trailingAnchor = [_statusButtonsView trailingAnchor];
      trailingAnchor2 = [_statusButtonsContainerView trailingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v29[1] = v21;
      topAnchor = [_statusButtonsView topAnchor];
      topAnchor2 = [_statusButtonsContainerView topAnchor];
      v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v29[2] = v14;
      bottomAnchor = [_statusButtonsView bottomAnchor];
      bottomAnchor2 = [_statusButtonsContainerView bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v29[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
      [v22 activateConstraints:v18];

      v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:_statusButtonsContainerView];
      v28 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [(EKEventViewControllerDefaultImpl *)self setToolbarItems:v20 animated:1];
    }
  }

  else
  {
    toolbarItems2 = [(EKEventViewControllerDefaultImpl *)self toolbarItems];

    if (toolbarItems2)
    {
      navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      [navigationController2 setToolbarHidden:1];

      [(EKEventViewControllerDefaultImpl *)self setToolbarItems:0 animated:1];
    }
  }
}

- (void)_updateResponse
{
  _statusButtonsView = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
  event = self->_event;
  if (self->_trustsStatus)
  {
    participationStatus = [(EKEvent *)event participationStatus];
  }

  else
  {
    calendar = [(EKEvent *)event calendar];
    v6 = calendar;
    if (calendar)
    {
      source = [calendar source];
      constraints = [source constraints];
      v9 = [constraints statusesAreAccurate] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    participationStatus = [(EKEvent *)self->_event participationStatus];
    if (v9 && ![(EKEvent *)self->_event isStatusDirty])
    {
      goto LABEL_11;
    }
  }

  if (![(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion]&& (participationStatus - 2) <= 2)
  {
    v10 = qword_1D3600A98[participationStatus - 2];
    goto LABEL_12;
  }

LABEL_11:
  v10 = 0;
LABEL_12:
  [_statusButtonsView setSelectedAction:v10];
}

- (BOOL)_shouldDisplayStatusButtons
{
  statusButtonActions = [(EKEventViewControllerDefaultImpl *)self statusButtonActions];
  v3 = [statusButtonActions count] != 0;

  return v3;
}

- (int64_t)_actionsMask
{
  if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayDelegateOrOutOfDateMessage])
  {
    return 0;
  }

  if (![(EKEventViewControllerDefaultImpl *)self _isDisplayingInvitation])
  {
    if ([(EKEventViewControllerDefaultImpl *)self isICSPreview])
    {
      if ([(EKEventViewControllerDefaultImpl *)self showsAddToCalendarForICSPreview])
      {
        v3 = 8;
        goto LABEL_13;
      }

      v4 = ![(EKEventViewControllerDefaultImpl *)self showsUpdateCalendarForICSPreview];
      v5 = 2048;
    }

    else
    {
      v4 = ![(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion];
      v5 = 136;
    }

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v3 = v5;
    }

LABEL_13:
    if ([(EKEventViewControllerDefaultImpl *)self _isDisplayingDeletableEvent]&& (![(EKEventViewControllerDefaultImpl *)self isICSPreview]|| [(EKEventViewControllerDefaultImpl *)self showsDeleteForICSPreview]))
    {
      if ([(EKEventViewControllerDefaultImpl *)self _reminderMode])
      {
        v3 |= 0x80000uLL;
      }

      else
      {
        event = [(EKEventViewControllerDefaultImpl *)self event];
        status = [event status];

        if (status == 3)
        {
          v3 |= 0x100000uLL;
        }

        else
        {
          v3 |= 0x10uLL;
        }
      }
    }

    goto LABEL_21;
  }

  v3 = 7;
LABEL_21:
  event2 = [(EKEventViewControllerDefaultImpl *)self event];
  calendar = [event2 calendar];

  if ([calendar isSubscribed] && (objc_msgSend(calendar, "isSubscribedHolidayCalendar") & 1) == 0 && objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsFirstPartyCalendarApp"))
  {
    v3 |= 0x40000uLL;
  }

  return v3;
}

+ (id)_orderedActionsForMask:(int64_t)mask
{
  v4 = objc_opt_new();
  for (i = 0; i != 15; ++i)
  {
    if ((_orderedActionsForMask__actionOrder_1[i] & mask) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  return v4;
}

- (id)statusButtonActions
{
  _actionsMask = [(EKEventViewControllerDefaultImpl *)self _actionsMask];
  v3 = objc_opt_class();

  return [v3 _orderedActionsForMask:_actionsMask];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  if (!self->_showingBlankFooterView)
  {
    lastFooterLayoutWidth = self->_lastFooterLayoutWidth;
    if (lastFooterLayoutWidth != EKUIContainedControllerIdealWidth())
    {
      self = [(EKEventViewControllerDefaultImpl *)selfCopy _updateHeaderAndFooterIfNeeded];
    }
  }

  if ((MEMORY[0x1D38B98D0](self, a2) & 1) == 0)
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)selfCopy navigationController];
    toolbar = [navigationController toolbar];

    v5 = toolbar;
    if (toolbar)
    {
      [(SingleToolbarItemContainerView *)selfCopy->_statusButtonsContainerView setBoundsWithToolbar:toolbar];
      v5 = toolbar;
    }
  }
}

- (id)_sectionAtIndex:(int64_t)index
{
  v4 = self->_currentSections;
  v5 = v4;
  if (index < 0 || [(NSArray *)v4 count]<= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)v5 objectAtIndexedSubscript:index];
  }

  return v6;
}

- (id)_itemAtIndexPath:(id)path section:(id *)section subitemIndex:(unint64_t *)index
{
  pathCopy = path;
  v9 = -[EKEventViewControllerDefaultImpl _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  v10 = [pathCopy row];

  v11 = [v9 itemAtIndex:v10 subitemIndex:index];
  if (section)
  {
    v12 = v9;
    *section = v9;
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(EKEventViewControllerDefaultImpl *)self _sectionAtIndex:section];
  [viewCopy frame];
  if (v8 > 0.0)
  {
    [viewCopy frame];
    [v7 updateCellLayoutsForRowCountIfNeededUsingWidth:v9];
  }

  numberOfRows = [v7 numberOfRows];
  v11 = numberOfRows;
  if (self->_disclosedTableSection == section)
  {
    v11 = self->_disclosedTableRange.length + numberOfRows;
  }

  return v11;
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v16 viewDidLayoutSubviews];
  [(EKEventViewControllerDefaultImpl *)self tableViewSectionContentWidth];
  v4 = v3;
  if (v3 >= 10.0)
  {
    view = [(EKEventViewControllerDefaultImpl *)self view];
    window = [view window];

    if (window)
    {
      tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
      numberOfSections = [tableView numberOfSections];

      if (numberOfSections)
      {
        for (i = 0; i != numberOfSections; ++i)
        {
          tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
          v11 = [tableView2 numberOfRowsInSection:i];

          if (v11)
          {
            for (j = 0; j != v11; ++j)
            {
              v13 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:i];
              tableView3 = [(EKEventViewControllerDefaultImpl *)self tableView];
              v15 = [(EKEventViewControllerDefaultImpl *)self tableView:tableView3 cellForRowAtIndexPath:v13];

              [objc_opt_class() adjustLayoutForCell:v15 tableViewWidth:v11 numRowsInSection:j cellRow:0 forceLayout:v4];
            }
          }
        }
      }
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v9 = [(EKEventViewControllerDefaultImpl *)self _sectionAtIndex:section];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = [pathCopy row];
  view = [(EKEventViewControllerDefaultImpl *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(EKEventViewControllerDefaultImpl *)self view];
    window2 = [view2 window];
    EKUIPushFallbackSizingContextWithViewHierarchy(window2);
  }

  traitCollection = [(EKEventViewControllerDefaultImpl *)self traitCollection];
  v16 = [v9 cellForSubitemAtIndex:v10 withTraitCollection:traitCollection];

  view3 = [(EKEventViewControllerDefaultImpl *)self view];
  window3 = [view3 window];

  if (window3)
  {
    view4 = [(EKEventViewControllerDefaultImpl *)self view];
    window4 = [view4 window];
    EKUIPopFallbackSizingContextWithViewHierarchy(window4);
  }

  if (!-[EKEventViewControllerDefaultImpl allowsSubitems](self, "allowsSubitems") && ([v16 accessoryType] == 1 || objc_msgSend(v16, "accessoryType") == 2) || objc_msgSend(v9, "tag") == 8 && !-[EKEventViewControllerDefaultImpl allowsEditing](self, "allowsEditing"))
  {
    [v16 setAccessoryType:0];
  }

  [(EKEventViewControllerDefaultImpl *)self tableViewSectionContentWidth];
  v22 = v21;
  if (v21 > 10.0)
  {
    v23 = [viewCopy numberOfRowsInSection:section];
    view5 = [(EKEventViewControllerDefaultImpl *)self view];
    window5 = [view5 window];

    if (window5)
    {
      view6 = [(EKEventViewControllerDefaultImpl *)self view];
      window6 = [view6 window];
      EKUIPushFallbackSizingContextWithViewHierarchy(window6);
    }

    [objc_opt_class() adjustLayoutForCell:v16 tableViewWidth:v23 numRowsInSection:v10 cellRow:1 forceLayout:v22];
    view7 = [(EKEventViewControllerDefaultImpl *)self view];
    window7 = [view7 window];

    if (window7)
    {
      view8 = [(EKEventViewControllerDefaultImpl *)self view];
      window8 = [view8 window];
      EKUIPopFallbackSizingContextWithViewHierarchy(window8);
    }
  }

  if (![v9 tag] || objc_msgSend(v9, "tag") == 5 || objc_msgSend(v9, "tag") == 4 || objc_msgSend(v9, "tag") == 11)
  {
    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v16 setBackgroundConfiguration:clearConfiguration];
  }

  if (!v16)
  {
LABEL_24:
    v33 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v35 = 138412290;
      v36 = pathCopy;
      _os_log_impl(&dword_1D3400000, v33, OS_LOG_TYPE_ERROR, "No cell found from EKEventViewController for index path %@.  Using empty cell to prevent crash.", &v35, 0xCu);
    }

    v16 = objc_opt_new();
  }

  return v16;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellHeights = self->_cellHeights;
  v7 = MEMORY[0x1E696AD98];
  pathCopy = path;
  [cell frame];
  v10 = [v7 numberWithDouble:v9];
  [(NSMutableDictionary *)cellHeights setObject:v10 forKey:pathCopy];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(NSMutableDictionary *)self->_cellHeights objectForKey:path];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    +[EKEventDetailCell detailsCellDefaultHeight];
  }

  v7 = v6;

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy rowHeight];
  v9 = v8;
  v10 = -[EKEventViewControllerDefaultImpl _sectionAtIndex:](self, "_sectionAtIndex:", [pathCopy section]);
  if (v10)
  {
    v11 = [pathCopy row];
    [(EKEventViewControllerDefaultImpl *)self tableViewSectionContentWidth];
    v13 = v12;
    [viewCopy _backgroundInset];
    if (v13 + v14 * -2.0 > 10.0)
    {
      [v10 defaultCellHeightForSubitemAtIndex:v11 forWidth:?];
      if (v15 > 0.0)
      {
        v9 = v15;
      }
    }
  }

  return v9;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  v4 = MEMORY[0x1D38B98D0](self, a2, view, section);
  result = 0.0;
  if (v4)
  {
    return 4.0;
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  return v4;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v9 = 0;
  v5 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:path section:0 subitemIndex:&v9];
  if (v5)
  {
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v7 = [v5 eventViewController:_ekEventViewController shouldSelectSubitem:v9];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)tableView:(id)view didHighlightRowAtIndexPath:(id)path
{
  v7 = 0;
  v5 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:path section:0 subitemIndex:&v7];
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v5 eventViewController:_ekEventViewController didHighlightSubitem:v7];
}

- (void)tableView:(id)view didUnhighlightRowAtIndexPath:(id)path
{
  v7 = 0;
  v5 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:path section:0 subitemIndex:&v7];
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v5 eventViewController:_ekEventViewController didUnhighlightSubitem:v7];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v20 = 0;
  v21 = 0;
  v8 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:pathCopy section:&v20 subitemIndex:&v21];
  v9 = v20;
  currentEditItem = self->_currentEditItem;
  if (currentEditItem)
  {
    v11 = v8 == currentEditItem;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || [(EKEventDetailItem *)currentEditItem saveAndDismissWithForce:0])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [(EKEventDetailItem *)v8 eventViewController:_ekEventViewController didSelectReadOnlySubitem:v21];

    _shouldShowEditButton = [(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton];
    if (-[EKEventViewControllerDefaultImpl allowsSubitems](self, "allowsSubitems") && (!_shouldShowEditButton || [v9 hasSubitemForIndexPathRow:{objc_msgSend(pathCopy, "row")}]) && (objc_msgSend(v9, "tag") != 8 || -[EKEventViewControllerDefaultImpl allowsEditing](self, "allowsEditing")))
    {
      _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [(EKEventDetailItem *)v8 eventViewController:_ekEventViewController2 didSelectSubitem:v21];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained)
      {
        v16 = WeakRetained;
        v17 = objc_loadWeakRetained(&self->_delegate);
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          v19 = objc_loadWeakRetained(&self->_delegate);
          [v19 performSelector:sel_eventViewControllerDidReceiveEditUserInteraction_ withObject:self];
        }
      }
    }
  }

  else
  {
    [viewCopy selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(EKEventViewControllerDefaultImpl *)self _sectionAtIndex:section];
  headerTitle = [v4 headerTitle];

  return headerTitle;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = headerViewCopy;
      backgroundColor = [viewCopy backgroundColor];
      contentView = [v7 contentView];

      [contentView setBackgroundColor:backgroundColor];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(EKEventViewControllerDefaultImpl *)self updateTitleWithScrollView:scroll animation:1];

  [(EKEventViewControllerDefaultImpl *)self _notifyDetailItemsOfVisibilityOnScreen];
}

- (void)updateTitleWithScrollView:(id)view animation:(BOOL)animation
{
  animationCopy = animation;
  viewCopy = view;
  if ([(UIViewController *)self isPresentedInsidePopover])
  {
    goto LABEL_5;
  }

  [viewCopy contentSize];
  v8 = v7;
  view = [(EKEventViewControllerDefaultImpl *)self view];
  [view frame];
  v11 = v10;
  view2 = [(EKEventViewControllerDefaultImpl *)self view];
  [view2 safeAreaInsets];
  if (v8 < v11 - v13)
  {

LABEL_5:
    [(EKEventViewControllerDefaultImpl *)self _clearCustomTitle];
    goto LABEL_6;
  }

  _navigationBarShouldBeHidden = [(EKEventViewControllerDefaultImpl *)self _navigationBarShouldBeHidden];

  if (_navigationBarShouldBeHidden)
  {
    goto LABEL_5;
  }

  if ([(EKCustomTitleView *)self->_customTitle animating])
  {
    goto LABEL_6;
  }

  [viewCopy contentOffset];
  v16 = v15;
  view3 = [(EKEventViewControllerDefaultImpl *)self view];
  [view3 safeAreaInsets];
  v19 = v16 + v18;
  [(EKEventViewControllerDefaultImpl *)self _customInsets];
  v21 = v19 + v20;

  [(EKEventTitleDetailItem *)self->_titleItem titleHeight];
  v23 = v22;
  titleHeight = [(EKEventTitleDetailItem *)self->_titleItem titleHeight];
  if (v25 == 0.0)
  {
    titleHeight = [(EKReminderTitleDetailItem *)self->_reminderTitleItem titleHeight];
    v27 = v26 + 22.0;
  }

  else
  {
    v27 = v23 + 16.0;
  }

  v28 = MEMORY[0x1D38B98D0](titleHeight);
  if (v21 <= v27)
  {
    if (v28)
    {
      if (!animationCopy)
      {
        if (!self->_customTitle)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      navigationItem = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      title = [navigationItem title];

      if (title)
      {
        animation = [MEMORY[0x1E6979538] animation];
        [animation setDuration:0.25];
        [animation setType:*MEMORY[0x1E697A030]];
        navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
        navigationBar = [navigationController navigationBar];
        layer = [navigationBar layer];
        [layer addAnimation:animation forKey:@"fadeText"];

        navigationItem2 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
        [navigationItem2 setTitle:0];
      }
    }

    customTitle = self->_customTitle;
    if (!customTitle)
    {
      goto LABEL_6;
    }

    if (animationCopy)
    {
      [(EKCustomTitleView *)customTitle setAnimating:1];
      v58 = self->_customTitle;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke_4;
      v59[3] = &unk_1E843EC10;
      v59[4] = self;
      [(EKCustomTitleView *)v58 animateOutWithCompletionBlock:v59];
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v28 & animationCopy) == 1)
  {
    navigationItem3 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    title2 = [navigationItem3 title];

    if (!title2)
    {
      animation2 = [MEMORY[0x1E6979538] animation];
      [animation2 setDuration:0.25];
      [animation2 setType:*MEMORY[0x1E697A030]];
      navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      layer2 = [navigationBar2 layer];
      [layer2 addAnimation:animation2 forKey:@"fadeText"];

      event = [(EKEventViewControllerDefaultImpl *)self event];
      title3 = [event title];
      navigationItem4 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [navigationItem4 setTitle:title3];
    }
  }

  if (!self->_customTitle && (MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    v38 = [EKCustomTitleView alloc];
    viewTitle = [(EKEventViewControllerDefaultImpl *)self viewTitle];
    event2 = [(EKEventViewControllerDefaultImpl *)self event];
    title4 = [event2 title];
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v43 = [(EKCustomTitleView *)v38 initWithTitle:viewTitle subTitle:title4 eventViewController:_ekEventViewController];
    v44 = self->_customTitle;
    self->_customTitle = v43;

    v45 = self->_customTitle;
    navigationItem5 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    [navigationItem5 setTitleView:v45];

    window = [(EKCustomTitleView *)self->_customTitle window];

    if (!window)
    {
      goto LABEL_5;
    }

    if (animationCopy)
    {
      [(EKCustomTitleView *)self->_customTitle setAnimating:1];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke;
      v61[3] = &unk_1E843EC60;
      v61[4] = self;
      v48 = MEMORY[0x1E69E96A0];
      v49 = v61;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke_3;
      block[3] = &unk_1E843EC60;
      block[4] = self;
      v48 = MEMORY[0x1E69E96A0];
      v49 = block;
    }

    dispatch_async(v48, v49);
  }

LABEL_6:
}

uint64_t __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 navigationBar];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);
  v5 = *(v4 + 1168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke_2;
  v7[3] = &unk_1E843EC10;
  v7[4] = v4;
  return [v5 animateInWithCompletionBlock:v7];
}

uint64_t __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1168) setAnimating:0];
  }

  return result;
}

uint64_t __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1168) setShowSubtitle:1];
  v2 = *(*(a1 + 32) + 1168);

  return [v2 setNeedsLayout];
}

uint64_t __72__EKEventViewControllerDefaultImpl_updateTitleWithScrollView_animation___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _clearCustomTitle];
  }

  return result;
}

- (void)_clearCustomTitle
{
  navigationItem = [(EKEventViewControllerDefaultImpl *)self navigationItem];
  [navigationItem setTitle:&stru_1F4EF6790];

  navigationItem2 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
  [navigationItem2 setTitleView:0];

  viewTitle = [(EKEventViewControllerDefaultImpl *)self viewTitle];
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [_ekEventViewController setTitle:viewTitle];

  customTitle = self->_customTitle;
  self->_customTitle = 0;
}

+ (void)adjustLayoutForCell:(id)cell tableViewWidth:(double)width numRowsInSection:(unint64_t)section cellRow:(unint64_t)row forceLayout:(BOOL)layout
{
  layoutCopy = layout;
  cellCopy = cell;
  if (objc_opt_respondsToSelector())
  {
    v11 = section - 1 == row ? 4 : 2;
    v12 = row ? v11 : 1;
    v13 = section == 1 ? 5 : v12;
    if (([cellCopy needsLayoutForWidth:v13 position:width] & 1) != 0 || layoutCopy)
    {
      [cellCopy layoutForWidth:v13 position:width];
    }
  }
}

- (id)getCurrentContext
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v4 = EKWeakLinkSymbol();
  CreateAceEventFromEKEvent = v4;
  event = self->_event;
  if (event)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = v4;
    eventStore = [(EKEvent *)event eventStore];
    timeZone = [eventStore timeZone];
    v10 = v7(event, timeZone);

    dictionary = [v10 dictionary];
    if (dictionary)
    {
      [v3 addObject:dictionary];
    }
  }

  return v3;
}

- (void)detailItem:(id)item performActionsOnCellAtIndexPath:(id)path actions:(id)actions
{
  actionsCopy = actions;
  pathCopy = path;
  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  v10 = [tableView cellForRowAtIndexPath:pathCopy];

  actionsCopy[2](actionsCopy, v10);
}

- (void)detailItem:(id)item wantsRowReload:(id)reload
{
  v14[1] = *MEMORY[0x1E69E9840];
  reloadCopy = reload;
  v7 = [(EKEventViewControllerDefaultImpl *)self _sectionForDetailItem:item];
  v8 = MEMORY[0x1E696AC88];
  v9 = [reloadCopy row];
  section = [reloadCopy section];

  v11 = [v8 indexPathForRow:v9 inSection:section + v7];
  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [tableView reloadRowsAtIndexPaths:v13 withRowAnimation:0];
}

- (void)detailItem:(id)item wantsRowInsertions:(id)insertions rowDeletions:(id)deletions rowReloads:(id)reloads
{
  v53 = *MEMORY[0x1E69E9840];
  insertionsCopy = insertions;
  deletionsCopy = deletions;
  reloadsCopy = reloads;
  v11 = [(EKEventViewControllerDefaultImpl *)self _sectionForDetailItem:item];
  tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
  [tableView beginUpdates];
  v36 = insertionsCopy;
  if (insertionsCopy)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(insertionsCopy, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = insertionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v47;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(&v46 + 1) + 8 * i) inSection:{"row"), objc_msgSend(*(*(&v46 + 1) + 8 * i), "section") + v11}];
          [v13 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v16);
    }

    [tableView insertRowsAtIndexPaths:v13 withRowAnimation:0];
  }

  if (deletionsCopy)
  {
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(deletionsCopy, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = deletionsCopy;
    v22 = [v21 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v43;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(&v42 + 1) + 8 * j) inSection:{"row"), objc_msgSend(*(*(&v42 + 1) + 8 * j), "section") + v11}];
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v23);
    }

    [tableView deleteRowsAtIndexPaths:v20 withRowAnimation:0];
  }

  v27 = reloadsCopy;
  if (reloadsCopy)
  {
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(reloadsCopy, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = reloadsCopy;
    v30 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v39;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(&v38 + 1) + 8 * k) inSection:{"row"), objc_msgSend(*(*(&v38 + 1) + 8 * k), "section") + v11}];
          [v28 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v31);
    }

    [tableView reloadRowsAtIndexPaths:v28 withRowAnimation:0];
    v27 = reloadsCopy;
  }

  [tableView endUpdates];
}

- (void)detailItem:(id)item wantsIndexPathsScrolledToVisible:(id)visible
{
  v33 = *MEMORY[0x1E69E9840];
  visibleCopy = visible;
  v7 = [(EKEventViewControllerDefaultImpl *)self _sectionForDetailItem:item];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = visibleCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(&v28 + 1) + 8 * v16) inSection:{"row", v28), objc_msgSend(*(*(&v28 + 1) + 8 * v16), "section") + v7}];
        tableView = [(EKEventViewControllerDefaultImpl *)self tableView];
        [tableView rectForRowAtIndexPath:v17];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        if (CGRectIsEmpty(v34))
        {
          height = v26;
          width = v24;
          y = v22;
          x = v20;
        }

        else
        {
          v35.origin.x = v20;
          v35.origin.y = v22;
          v35.size.width = v24;
          v35.size.height = v26;
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          v36 = CGRectUnion(v35, v38);
          x = v36.origin.x;
          y = v36.origin.y;
          width = v36.size.width;
          height = v36.size.height;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  if (!CGRectIsEmpty(v37))
  {
    tableView2 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [tableView2 scrollRectToVisible:1 animated:{x + -10.0, y, width, height + 20.0}];
  }
}

- (BOOL)shouldShowEditButtonInline
{
  if ([(EKEventViewControllerDefaultImpl *)self minimalMode])
  {
    v3 = 0;
  }

  else
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
    if (navigationController)
    {
      navigationController2 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      if ([navigationController2 isNavigationBarHidden])
      {
        v3 = 0;
      }

      else
      {
        navigationItem = [(EKEventViewControllerDefaultImpl *)self navigationItem];
        rightBarButtonItem = [navigationItem rightBarButtonItem];
        if ([rightBarButtonItem systemItem] == 2)
        {
          v3 = 1;
        }

        else
        {
          navigationItem2 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
          leftBarButtonItem = [navigationItem2 leftBarButtonItem];
          v3 = [leftBarButtonItem systemItem] == 2;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  _shouldShowInlineButtonFromDelegate = [(EKEventViewControllerDefaultImpl *)self _shouldShowInlineButtonFromDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      v15 = 0;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v15 = [WeakRetained eventViewControllerShouldShowInlineEditButtonForInvitations:_ekEventViewController];
  }

  else
  {
    v15 = 0;
  }

  if (v3)
  {
LABEL_18:
    v16 = 0;
    return v16 & 1;
  }

LABEL_20:
  noninteractivePlatterMode = [(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode];
  v16 = 0;
  if (!noninteractivePlatterMode && _shouldShowInlineButtonFromDelegate)
  {
    v16 = [(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton]| v15;
  }

  return v16 & 1;
}

- (BOOL)_shouldShowInlineButtonFromDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = [v5 performSelector:sel_eventViewControllerShouldHideInlineEditButton withObject:self] == 0;

  return v6;
}

- (void)editButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    goto LABEL_10;
  }

  v4 = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_9;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v8 = [v6 eventViewControllerShouldHandleInlineEdit:_ekEventViewController];

  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [v10 eventViewControllerInlineEditButtonWasTapped:_ekEventViewController2];

    return;
  }

LABEL_11:

  [(EKEventViewControllerDefaultImpl *)self editButtonTapped];
}

- (BOOL)shouldShowNextButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  eventViewControllerShouldShowNextPreviousRecurrenceButtons = [v5 eventViewControllerShouldShowNextPreviousRecurrenceButtons];

  if (!eventViewControllerShouldShowNextPreviousRecurrenceButtons)
  {
    return 0;
  }

  if (!self->_cachedShowNext)
  {
    nextOccurrence = [(EKEvent *)self->_event nextOccurrence];

    cachedShowNext = self->_cachedShowNext;
    v9 = MEMORY[0x1E695E118];
    if (!nextOccurrence)
    {
      v9 = MEMORY[0x1E695E110];
    }

    self->_cachedShowNext = v9;
  }

  v10 = self->_cachedShowNext;

  return [(NSNumber *)v10 BOOLValue];
}

- (BOOL)shouldShowPreviousButton
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  eventViewControllerShouldShowNextPreviousRecurrenceButtons = [v5 eventViewControllerShouldShowNextPreviousRecurrenceButtons];

  if (!eventViewControllerShouldShowNextPreviousRecurrenceButtons)
  {
    return 0;
  }

  if (!self->_cachedShowPrevious)
  {
    previousOccurrence = [(EKEvent *)self->_event previousOccurrence];

    cachedShowPrevious = self->_cachedShowPrevious;
    v9 = MEMORY[0x1E695E118];
    if (!previousOccurrence)
    {
      v9 = MEMORY[0x1E695E110];
    }

    self->_cachedShowPrevious = v9;
  }

  v10 = self->_cachedShowPrevious;

  return [(NSNumber *)v10 BOOLValue];
}

- (void)nextButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v3 = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewControllerNextButtonWasTapped:_ekEventViewController];
  }
}

- (void)previousButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v3 = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if ((v4 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewControllerPreviousButtonWasTapped:_ekEventViewController];
  }
}

- (void)uneditableButtonDetailItem:(id)item requestsShowEvent:(id)event
{
  itemCopy = item;
  eventCopy = event;
  if (eventCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        goto LABEL_6;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [WeakRetained eventViewController:_ekEventViewController requestsShowEvent:eventCopy];
    }
  }

LABEL_6:
}

- (BOOL)_canPerformEditKeyCommand
{
  if ([(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton])
  {
    return 1;
  }

  return [(EKEventViewControllerDefaultImpl *)self shouldShowEditButtonInline];
}

- (void)_performEditKeyCommand
{
  if ([(EKEventViewControllerDefaultImpl *)self _canPerformEditKeyCommand])
  {

    [(EKEventViewControllerDefaultImpl *)self editButtonPressed];
  }
}

- (void)copy:(id)copy
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([WeakRetained conformsToProtocol:&unk_1F4F9EBE0])
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    WeakRetained = [v6 pasteboardManager];

    v7 = [MEMORY[0x1E695DFD8] setWithObject:self->_event];
    [WeakRetained copyEvents:v7 delegate:self];
  }
}

- (void)cut:(id)cut
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    pasteboardManager = [v6 pasteboardManager];

    v7 = [MEMORY[0x1E695DFD8] setWithObject:self->_event];
    [pasteboardManager cutEvents:v7 delegate:self];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v17[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  if (sel__performEditKeyCommand == action)
  {
    _canPerformEditKeyCommand = [(EKEventViewControllerDefaultImpl *)self _canPerformEditKeyCommand];
    goto LABEL_8;
  }

  v7 = 0;
  if (([MEMORY[0x1E6993458] declinesToPerformCutCopyPasteAction:action withSender:senderCopy] & 1) == 0 && sel_paste_ != action)
  {
    if (sel_copy_ == action)
    {
      v9 = MEMORY[0x1E6993458];
      v17[0] = self->_event;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v11 = v9;
      v12 = 1;
    }

    else
    {
      if (sel_cut_ != action)
      {
        v15.receiver = self;
        v15.super_class = EKEventViewControllerDefaultImpl;
        _canPerformEditKeyCommand = [(EKEventViewControllerDefaultImpl *)&v15 canPerformAction:action withSender:senderCopy];
LABEL_8:
        v7 = _canPerformEditKeyCommand;
        goto LABEL_12;
      }

      v13 = MEMORY[0x1E6993458];
      event = self->_event;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&event count:1];
      v11 = v13;
      v12 = 0;
    }

    v7 = [v11 allEventsValidForAction:v12 fromEvents:v10];
  }

LABEL_12:

  return v7;
}

- (void)pasteboardManager:(id)manager presentAlert:(id)alert
{
  alertCopy = alert;
  presentationSourceViewController = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  [alertCopy presentFromSource:presentationSourceViewController];
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [_ekEventViewController setToolbarItems:itemsCopy];
}

- (id)toolbarItems
{
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  toolbarItems = [_ekEventViewController toolbarItems];

  return toolbarItems;
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [_ekEventViewController setToolbarItems:itemsCopy animated:animatedCopy];
}

- (id)navigationItem
{
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  navigationItem = [_ekEventViewController navigationItem];

  return navigationItem;
}

- (id)navigationController
{
  _ekEventViewController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  navigationController = [_ekEventViewController navigationController];

  return navigationController;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    navigationController = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    navigationController = [(EKEventViewControllerDefaultImpl *)self navigationController];
  }

  return navigationController;
}

- (EKEventViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end