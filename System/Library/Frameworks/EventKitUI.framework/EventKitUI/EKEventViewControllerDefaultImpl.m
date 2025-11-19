@interface EKEventViewControllerDefaultImpl
+ (id)_orderedActionsForMask:(int64_t)a3;
+ (void)adjustLayoutForCell:(id)a3 tableViewWidth:(double)a4 numRowsInSection:(unint64_t)a5 cellRow:(unint64_t)a6 forceLayout:(BOOL)a7;
+ (void)setDefaultDatesForEvent:(id)a3;
- (BOOL)_backingEventAllowsEditing;
- (BOOL)_canPerformEditKeyCommand;
- (BOOL)_isDisplayingDeletableEvent;
- (BOOL)_isDisplayingInvitation;
- (BOOL)_isDisplayingSuggestion;
- (BOOL)_navigationBarShouldBeHidden;
- (BOOL)_performSave:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)_presentedInAPopOver;
- (BOOL)_refreshEventAndReload;
- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage;
- (BOOL)_shouldDisplayDoneButton;
- (BOOL)_shouldDisplayStatusButtons;
- (BOOL)_shouldPopSelf;
- (BOOL)_shouldShowEditButton;
- (BOOL)_shouldShowInlineButtonFromDelegate;
- (BOOL)allowsCalendarPreview;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)eventDetailItemShouldPresentShareSheet:(id)a3;
- (BOOL)shouldShowEditButtonInline;
- (BOOL)shouldShowNextButton;
- (BOOL)shouldShowPreviousButton;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)_idealSize;
- (CGSize)calculatePreferredContentSize;
- (EKEventViewControllerDefaultImpl)init;
- (EKEventViewDelegate)delegate;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (UIEdgeInsets)_customInsets;
- (UIViewController)presentationSourceViewController;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (double)tableViewSectionContentWidth;
- (id)_detachSheetHandler;
- (id)_footerLabelContainingText:(id)a3;
- (id)_indexPathForAttendeesDetailItem;
- (id)_indexPathForSection:(unint64_t)a3;
- (id)_itemAtIndexPath:(id)a3 section:(id *)a4 subitemIndex:(unint64_t *)a5;
- (id)_proposedDate;
- (id)_sectionAtIndex:(int64_t)a3;
- (id)_statusButtonsContainerView;
- (id)_statusButtonsView;
- (id)_viewControllerForEditorPresentation;
- (id)accessDeniedView;
- (id)getCurrentContext;
- (id)items;
- (id)navigationController;
- (id)navigationItem;
- (id)pasteboardManagerForEventEditViewController:(id)a3;
- (id)presentationNavigationDelegate;
- (id)statusButtonActions;
- (id)tableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)toolbarItems;
- (id)viewTitle;
- (int64_t)_actionsMask;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_acceptProposedTimeWithSourceViewForPopover:(id)a3;
- (void)_addToCalendarClicked:(id)a3;
- (void)_annotateEventEntityIfNeeded;
- (void)_cancelProposedTime;
- (void)_clearCustomTitle;
- (void)_configureItemsForStoreConstraintsGivenCalendar:(id)a3;
- (void)_configureStatusButtonsToolbar;
- (void)_contentSizeCategoryChanged:(id)a3;
- (void)_createAndAddHeaderView;
- (void)_deleteClicked:(id)a3;
- (void)_deleteSuggestionTapped:(id)a3;
- (void)_dismissEditor:(BOOL)a3 deleted:(BOOL)a4;
- (void)_doneButtonTapped:(id)a3;
- (void)_eventEditViewControllerDidCompleteWithAction:(int64_t)a3;
- (void)_keyboardWasHidden:(id)a3;
- (void)_keyboardWasShown:(id)a3;
- (void)_localeChanged;
- (void)_notifyDetailItemsOfVisibilityOnScreen;
- (void)_performDelete:(int64_t)a3 editor:(id)a4;
- (void)_performEditKeyCommand;
- (void)_pop;
- (void)_prepareEventForEdit;
- (void)_presentDetachSheetFromBarButtonItem:(id)a3;
- (void)_presentDetachSheetFromView:(id)a3;
- (void)_rejectProposedTime;
- (void)_reloadIfNeeded;
- (void)_saveStatus:(int64_t)a3 sourceViewForPopover:(id)a4;
- (void)_saveStatus:(int64_t)a3 span:(int64_t)a4;
- (void)_setNeedsReloadIncludingItems;
- (void)_setNeedsReloadIncludingItems:(BOOL)a3;
- (void)_setObservesKeyboardNotifications:(BOOL)a3;
- (void)_setUpForEvent;
- (void)_storeChanged:(id)a3;
- (void)_teardownTableView;
- (void)_unsubscribeClicked:(id)a3;
- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)a3;
- (void)_updateHeaderAndFooterIfNeeded;
- (void)_updateNavBarAnimated:(BOOL)a3;
- (void)_updateResponse;
- (void)_updateResponseVisibility;
- (void)_updateStatusButtonsActions;
- (void)_updateTableContentInsetForKeyboard:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)completeWithAction:(int64_t)a3;
- (void)copy:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)detailItem:(id)a3 performActionsOnCellAtIndexPath:(id)a4 actions:(id)a5;
- (void)detailItem:(id)a3 wantsIndexPathsScrolledToVisible:(id)a4;
- (void)detailItem:(id)a3 wantsRowInsertions:(id)a4 rowDeletions:(id)a5 rowReloads:(id)a6;
- (void)detailItem:(id)a3 wantsRowReload:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissJunkView;
- (void)doneButtonTapped;
- (void)editButtonPressed;
- (void)editButtonTapped;
- (void)eventDetailItem:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5;
- (void)eventDetailItemAccessoryButtonTapped:(id)a3;
- (void)eventDetailItemWantsRefeshForHeightChange;
- (void)eventDetailItemWantsRefresh:(id)a3;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5;
- (void)eventItem:(id)a3 wantsViewControllerPresented:(id)a4;
- (void)eventItemDidCommit:(id)a3;
- (void)eventItemDidEndEditing:(id)a3;
- (void)eventItemDidSave:(id)a3;
- (void)fullReloadWithNewEvent:(id)a3;
- (void)invokeAction:(int64_t)a3 eventStatusButtonsView:(id)a4;
- (void)loadView;
- (void)nextButtonPressed;
- (void)openAttendeesDetailItem;
- (void)pasteboardManager:(id)a3 presentAlert:(id)a4;
- (void)performAddToCalendar;
- (void)presentEditorAnimated:(BOOL)a3;
- (void)previousButtonPressed;
- (void)reloadReminderWithEKEvent:(id)a3;
- (void)resetBackgroundColor;
- (void)scrollViewDidScroll:(id)a3;
- (void)setActiveEventEditor:(id)a3;
- (void)setAllowsCalendarPreview:(BOOL)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setAllowsInviteResponses:(BOOL)a3;
- (void)setCalendarPreviewIsInlineDayView:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEvent:(id)a3;
- (void)setHideCalendarPreview:(BOOL)a3;
- (void)setICSPreview:(BOOL)a3;
- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)a3;
- (void)setMinimalMode:(BOOL)a3;
- (void)setNoninteractivePlatterMode:(BOOL)a3;
- (void)setShowsAddToCalendarForICSPreview:(BOOL)a3;
- (void)setShowsDelegateMessage:(BOOL)a3;
- (void)setShowsDelegatorMessage:(BOOL)a3;
- (void)setShowsDeleteForICSPreview:(BOOL)a3;
- (void)setShowsDoneButton:(BOOL)a3;
- (void)setShowsOutOfDateMessage:(BOOL)a3;
- (void)setShowsUpdateCalendarForICSPreview:(BOOL)a3;
- (void)setToolbarItems:(id)a3;
- (void)setToolbarItems:(id)a3 animated:(BOOL)a4;
- (void)setTopInset:(double)a3;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)uneditableButtonDetailItem:(id)a3 requestsShowEvent:(id)a4;
- (void)updateStatusButtonsView;
- (void)updateTitleWithScrollView:(id)a3 animation:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation EKEventViewControllerDefaultImpl

+ (void)setDefaultDatesForEvent:(id)a3
{
  v3 = a3;
  v6 = CUIKDateRangeForNewEventOnDay();
  v4 = [v6 startDate];
  [v3 setStartDate:v4];

  v5 = [v6 endDate];
  [v3 setEndDateUnadjustedForLegacyClients:v5];
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

    v6 = [MEMORY[0x1E6993470] sharedPreferences];
    v7 = [v6 hideInlineDayViewInEventDetails];

    if (v7)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
  self->_dead = 1;
  [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController cancelAnimated:0];
  v4 = [EKWeakLinkClass() defaultContextManager];
  [v4 removeContextProvider:self];

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
  v4 = [(EKEventViewControllerDefaultImpl *)self view];
  v5 = [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (MEMORY[0x1D38B98D0](v5))
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
  v18 = [(EKEventViewControllerDefaultImpl *)self view];
  [v18 addSubview:self->_tableView];

  v19 = _NSDictionaryOfVariableBindings(&cfstr_Tableview.isa, self->_tableView, 0);
  [(EKEventViewControllerDefaultImpl *)self resetBackgroundColor];
  v20 = [(EKEventViewControllerDefaultImpl *)self event];
  if ([v20 couldBeJunk])
  {
    v21 = [(EKEventViewControllerDefaultImpl *)self minimalMode];

    if (!v21)
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
    v27 = [(EKEventViewControllerDefaultImpl *)self view];
    v28 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
    [v27 addSubview:v28];

    v29 = [(EKEventViewControllerDefaultImpl *)self view];
    v30 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
    [v29 bringSubviewToFront:v30];

    if (self->_lastAuthorizationStatus == 1)
    {
      v31 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [v31 setMessage:@" "];
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
  v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v8 = [(EKEventReportJunkView *)v6 initWithViewController:v7];

  junkView = self->_junkView;
  self->_junkView = v8;
  v10 = v8;

  [(EKEventReportJunkView *)v10 setIsLargeDayView:[(EKEventViewControllerDefaultImpl *)self isLargeDayView]];
  [(EKEventReportJunkView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_headerView addSubview:v10];
  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v13 = [MEMORY[0x1E69DC888] tableSeparatorLightColor];
  [v12 setBackgroundColor:v13];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_headerView addSubview:v12];
  v14 = [(EKEventViewControllerDefaultImpl *)self view];
  [v14 addSubview:self->_headerView];

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
  v30 = [(EKEventViewControllerDefaultImpl *)self view];
  v31 = [v28 constraintWithItem:v29 attribute:3 relatedBy:0 toItem:v30 attribute:15 multiplier:1.0 constant:0.0];
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
    v5 = [(EKEventViewControllerDefaultImpl *)self view];
    [v5 setBackgroundColor:0];
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
    v5 = ;
    [(UITableView *)self->_tableView setBackgroundColor:v5];
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v4 = [(EKEventViewControllerDefaultImpl *)self view];
    [v4 setBackgroundColor:v3];
  }
}

- (id)_indexPathForSection:(unint64_t)a3
{
  if (a3)
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
    v6[5] = a3;
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
    v4 = [(EKEventViewControllerDefaultImpl *)self _reminderMode];
    v5 = EventKitUIBundle();
    v6 = v5;
    if (v4)
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

    v4 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v5 = [v4 isNavigationBarHidden];

    v6 = (v5 & 1) == 0;
    v7 = 0.0;
    v8 = 23.0;
    goto LABEL_7;
  }

  if ([(EKEventViewControllerDefaultImpl *)self isLargeDayView])
  {
    v19 = [(EKEventViewControllerDefaultImpl *)self view];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v19);

    v2 = -12.0;
    if (IsRegularInViewHierarchy)
    {
      goto LABEL_10;
    }
  }

  v21 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v22 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  v23 = [v22 viewControllers];
  v24 = [v23 objectAtIndex:0];
  if (v21 == v24)
  {
    goto LABEL_19;
  }

  v25 = [(EKEventViewControllerDefaultImpl *)self presentingViewController];
  if (v25)
  {

LABEL_19:
    goto LABEL_20;
  }

  v34 = [(EKEventViewControllerDefaultImpl *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v34);

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
  v26 = [(EKEventViewControllerDefaultImpl *)self presentingViewController];
  if (v26)
  {
    v27 = v26;
    v28 = [(EKEventViewControllerDefaultImpl *)self sheetPresentationController];

    if (v28)
    {
      goto LABEL_28;
    }
  }

  v2 = 0.0;
  if ([(EKEventViewControllerDefaultImpl *)self isICSPreview])
  {
    if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayStatusButtons])
    {
      v29 = [(EKEventViewControllerDefaultImpl *)self presentationController];
      if (v29)
      {
        v30 = v29;
        v31 = [(EKEventViewControllerDefaultImpl *)self presentationController];
        if ([v31 presentationStyle] != 2)
        {

          goto LABEL_10;
        }

        v32 = [(EKEventViewControllerDefaultImpl *)self navigationController];
        v33 = [v32 isNavigationBarHidden];

        v6 = (v33 & 1) == 0;
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
    v11 = [(EKEventViewControllerDefaultImpl *)self view];
    [v11 frame];
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
  v3 = [(EKEventViewControllerDefaultImpl *)self viewTitle];
  v4 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v4 setTitle:v3];

  [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  [(EKEventViewControllerDefaultImpl *)self _annotateEventEntityIfNeeded];
  if ([(EKEventViewControllerDefaultImpl *)self useDynamicPocket]|| [(EKEventViewControllerDefaultImpl *)self shouldShowEditButtonInline])
  {
    [(UITableView *)self->_tableView _setHiddenPocketEdges:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v22 viewWillAppear:a3];
  [(UITableView *)self->_tableView setPreservesSuperviewLayoutMargins:1];
  v4 = [(UIViewController *)self EKUI_viewHierarchy];
  EKUIPushFallbackSizingContextWithViewHierarchy(v4);
  v5 = [v4 ekui_interfaceOrientation];
  lastOrientation = self->_lastOrientation;
  if (v5 != lastOrientation)
  {
    v7 = v5;
    if (lastOrientation)
    {
      v8 = [(EKEventViewControllerDefaultImpl *)self view];
      [v8 bounds];
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
      v14 = [(EKEventViewControllerDefaultImpl *)self traitCollection];
      v15 = [v14 userInterfaceIdiom];

      if (v15 == 1)
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
    v17 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v17 scrollToRowAtIndexPath:v16 atScrollPosition:1 animated:0];
  }

  v18 = [EKWeakLinkClass() defaultContextManager];
  [v18 addContextProvider:self];

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [v19 addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];
  [v19 addObserver:self selector:sel__storeChanged_ name:*MEMORY[0x1E6966928] object:0];
  [v19 addObserver:self selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  [(EKEventViewControllerDefaultImpl *)self _setObservesKeyboardNotifications:1];
  [(EKEventViewControllerDefaultImpl *)self _updateNavBarAnimated:0];
  [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
  v20 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  [v20 setNavigationBarHidden:-[EKEventViewControllerDefaultImpl _shouldShowInlineButtonFromDelegate](self animated:{"_shouldShowInlineButtonFromDelegate"), 0}];

  v21 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  [v21 setNavigationBarHidden:-[EKEventViewControllerDefaultImpl _navigationBarShouldBeHidden](self animated:{"_navigationBarShouldBeHidden"), 1}];

  [(EKEventTitleDetailItem *)self->_titleItem setHidesTopSeparator:1];
  self->_viewIsVisible = 1;
  [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  EKUIPopFallbackSizingContextWithViewHierarchy(v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v12 viewDidAppear:a3];
  self->_didAppear = 1;
  if (self->_autoPop)
  {
    v4 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v5 = [v4 popViewControllerAnimated:1];
  }

  if (!self->_countedAppearance)
  {
    self->_countedAppearance = 1;
    v6 = [(EKEvent *)self->_event suggestionInfo];
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp];

      if (v8)
      {
        [MEMORY[0x1E69930D0] trackPseudoEventDetailsOpened];
        v9 = MEMORY[0x1E69930D8];
        v10 = [(EKEvent *)self->_event suggestionInfo];
        v11 = [v10 uniqueKey];
        [v9 logEventShowedDetailsWithUniqueKey:v11];
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
    v6 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v7 = [WeakRetained eventViewControllerPresentedInAPopover:v6];
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
      v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v8 = [v6 eventViewControllerShouldAlwaysShowNavBar:v7];

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
      v14 = 0;
      goto LABEL_15;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v11 eventViewControllerPresentationWantsHiddenNavBarForSingleController];
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  if (v15)
  {
    v16 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v17 = [v16 viewControllers];
    if ([v17 count] == 1)
    {
      v18 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      v19 = [v18 viewControllers];
      v20 = [v19 firstObject];
      v21 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v22 = v20 == v21;
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

  return v10 & v14 & v22;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  self->_viewIsVisible = 0;
  [(EKEventViewControllerDefaultImpl *)self _setObservesKeyboardNotifications:0];
  v5 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  [v5 setNavigationBarHidden:-[EKEventViewControllerDefaultImpl _navigationBarShouldBeHidden](self animated:{"_navigationBarShouldBeHidden"), 1}];

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
  [(EKEventViewControllerDefaultImpl *)&v11 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v5 viewDidDisappear:a3];
  self->_didAppear = 0;
  v4 = [EKWeakLinkClass() defaultContextManager];
  [v4 removeContextProvider:self];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = [(EKEventViewControllerDefaultImpl *)self tableView:a4];
  [(EKEventViewControllerDefaultImpl *)self updateTitleWithScrollView:v5 animation:0];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = EKEventViewControllerDefaultImpl;
  [(EKEventViewControllerDefaultImpl *)&v5 didMoveToParentViewController:v4];
  if (v4)
  {
    [(EKEventViewControllerDefaultImpl *)self _updateNavBarAnimated:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 isNavigationBarHidden] & 1) == 0)
    {
      [(EKEventViewControllerDefaultImpl *)self setMinimalMode:0];
    }
  }
}

- (void)_contentSizeCategoryChanged:(id)a3
{
  v5 = a3;
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

- (void)_updateTableContentInsetForKeyboard:(id)a3
{
  v34 = a3;
  if (![(UIViewController *)self isPresentedInsidePopover])
  {
    [(UITableView *)self->_tableView contentInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [v34 userInfo];
    v11 = [v10 objectForKey:*MEMORY[0x1E69DDFA0]];
    [v11 CGRectValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v34 object];
    v21 = [v20 coordinateSpace];

    v22 = self->_tableView;
    [v21 convertRect:v22 toCoordinateSpace:{v13, v15, v17, v19}];
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
      v32 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [v32 safeAreaInsets];
      height = v33;
    }

    [(UITableView *)self->_tableView setContentInset:v5, v7, height, v9];
  }
}

- (BOOL)_shouldDisplayDoneButton
{
  v3 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
  v4 = [v3 leftBarButtonItem];
  if ([(EKEventViewControllerDefaultImpl *)self useDynamicPocket]|| !self->_showsDoneButton)
  {
    goto LABEL_8;
  }

  if (([v3 hidesBackButton] & 1) == 0 && (!v4 || !objc_msgSend(v4, "systemItem")))
  {
    v5 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v6 = [v5 viewControllers];

    if ([v6 count])
    {
      v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v8 = [v6 objectAtIndex:0];

      if (v7 != v8)
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

  if (![v4 systemItem])
  {
    [v3 setLeftBarButtonItem:0];
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (void)_updateNavBarAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton])
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editButtonTapped];
    if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayDoneButton])
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
      v6 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [v6 setLeftBarButtonItem:v9 animated:v3];

      v7 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [v7 setRightBarButtonItem:v5 animated:v3];
    }

    else
    {
      v5 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [v5 setRightBarButtonItem:v9 animated:v3];
    }
  }

  else if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayDoneButton])
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
    v8 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    [v8 setRightBarButtonItem:v9 animated:v3];
  }

  else
  {
    v9 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    [v9 setRightBarButtonItem:0 animated:v3];
  }
}

- (BOOL)_shouldShowEditButton
{
  v3 = [(EKEventViewControllerDefaultImpl *)self allowsEditing];
  if (v3)
  {

    LOBYTE(v3) = [(EKEventViewControllerDefaultImpl *)self _backingEventAllowsEditing];
  }

  return v3;
}

- (CGSize)_idealSize
{
  v40 = *MEMORY[0x1E69E9840];
  [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
  v3 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v3 layoutIfNeeded];

  if (MEMORY[0x1D38B98D0]())
  {
    noninteractivePlatterMode = self->_noninteractivePlatterMode;
    v5 = EKUIContainedControllerIdealWidth();
    v6 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v6 contentSize];
    v8 = v7;
    if (!noninteractivePlatterMode)
    {
      v9 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [v9 contentInset];
      v11 = v8 + v10;
      v12 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [v12 contentInset];
      v8 = v11 + v13;
    }
  }

  else
  {
    v14 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v14 bounds];
    if (v15 <= EKUIContainedControllerIdealWidth())
    {
      v18 = EKUIContainedControllerIdealWidth();
    }

    else
    {
      v16 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [v16 bounds];
      v18 = v17;
    }

    v19 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v19 contentInset];
    v21 = v20;
    v22 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v22 contentInset];
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
  v8 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v9 = [v7 eventViewControllerShouldDismissSelf:v8];

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

    v6 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v8 = [v6 popToViewController:v7 animated:0];

    v9 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v10 = [v9 viewControllers];
    v11 = [v10 count];

    v12 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    v5 = v12;
    if (v11 < 2)
    {
      [v12 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v13 = [v12 popViewControllerAnimated:1];
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

- (void)_setNeedsReloadIncludingItems:(BOOL)a3
{
  v3 = a3;
  if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded])
  {
    self->_needsReload = 1;
    if (v3)
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
        v10 = [(EKEvent *)self->_event calendar];
        [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v10];
      }

      else
      {
        [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
      }
    }

    self->_itemsNeedReload = 0;
    self->_needsReload = 0;
    v11 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v11 reloadData];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
    [(EKEventViewControllerDefaultImpl *)self calculatePreferredContentSize];
    [(EKEventViewControllerDefaultImpl *)self setPreferredContentSize:?];
  }
}

- (void)setEvent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event = self->_event;
    if (event != v5)
    {
      v7 = MEMORY[0x1E6966918];
      if (event)
      {
        v8 = [MEMORY[0x1E696AD88] defaultCenter];
        [v8 removeObserver:self name:*v7 object:self->_event];
      }

      [(EKEventViewControllerDefaultImpl *)self reloadReminderWithEKEvent:v5];
      objc_storeStrong(&self->_event, a3);
      cachedShowNext = self->_cachedShowNext;
      self->_cachedShowNext = 0;

      cachedShowPrevious = self->_cachedShowPrevious;
      self->_cachedShowPrevious = 0;

      [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
      if (self->_event)
      {
        v11 = [MEMORY[0x1E696AD88] defaultCenter];
        [v11 addObserver:self selector:sel_setNeedsReload name:*v7 object:self->_event];
      }

      if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded])
      {
        v12 = [(EKEventViewControllerDefaultImpl *)self tableView];
        [v12 reloadData];

        v13 = [(EKEventViewControllerDefaultImpl *)self tableView];
        [v13 selectRowAtIndexPath:0 animated:0 scrollPosition:0];

        [(EKEventViewControllerDefaultImpl *)self _updateResponseVisibility];
        [(EKEventViewControllerDefaultImpl *)self _updateResponse];
      }

      [(UIResponder *)self EKUI_setDataOwnersFromEvent:v5];
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
      v20 = v5;
      v16 = v18;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "Error: EKEventViewController setEvent given object of class %@. Description: %@", &v17, 0x16u);
    }
  }
}

- (void)reloadReminderWithEKEvent:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isReminderIntegrationEvent])
  {
    v5 = [v4 uniqueID];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
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
      *&buf[4] = v4;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "Trying to reload reminder with EKEvent, but it's not a reminder. %@", buf, 0xCu);
    }
  }
}

- (void)_annotateEventEntityIfNeeded
{
  v3 = [(EKEventViewControllerDefaultImpl *)self event];
  [(UIViewController *)self EKUI_annotateIfNeededWithAppEntityForEvent:v3 isEditing:0];
}

- (BOOL)_backingEventAllowsEditing
{
  if ((![(EKEvent *)self->_event isReminderIntegrationEvent]|| [(EKEvent *)self->_event CUIK_reminderShouldBeEditable]) && [(EKEvent *)self->_event isEditable])
  {
    v3 = [(EKEvent *)self->_event eventStore];
    if (v3)
    {
      v4 = [(EKEvent *)self->_event calendar];
      v5 = [v4 isSuggestedEventCalendar] ^ 1;
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

- (void)setAllowsEditing:(BOOL)a3
{
  if (self->_allowsEditing != a3)
  {
    self->_allowsEditing = a3;
    [(EKEventViewControllerDefaultImpl *)self setAllowsInviteResponses:?];
    if ([(EKEventViewControllerDefaultImpl *)self isViewLoaded]&& [(EKEventViewControllerDefaultImpl *)self viewIsVisible])
    {
      [(EKEventViewControllerDefaultImpl *)self _updateNavBarAnimated:1];
    }

    v4 = [(EKEvent *)self->_event calendar];

    if (v4)
    {
      v5 = [(NSArray *)self->_currentSections count];
      v6 = [(EKEvent *)self->_event calendar];
      [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v6];

      if (v5 != [(NSArray *)self->_currentSections count])
      {

        [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
      }
    }
  }
}

- (void)setAllowsInviteResponses:(BOOL)a3
{
  if (self->_allowsInviteResponses != a3)
  {
    self->_allowsInviteResponses = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (BOOL)allowsCalendarPreview
{
  if (self->_showsPreview)
  {
    v2 = [(EKEventViewControllerDefaultImpl *)self event];
    v3 = [v2 isAllDay] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)setAllowsCalendarPreview:(BOOL)a3
{
  if (!self->_hidePreview && self->_showsPreview != a3)
  {
    self->_showsPreview = a3;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
  }
}

- (void)setHideCalendarPreview:(BOOL)a3
{
  if (self->_hidePreview != a3)
  {
    self->_hidePreview = a3;
    if (a3)
    {
      self->_showsPreview = 0;
    }

    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
  }
}

- (void)setCalendarPreviewIsInlineDayView:(BOOL)a3
{
  if (self->_calendarPreviewIsInlineDayView != a3)
  {
    self->_calendarPreviewIsInlineDayView = a3;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems:1];
  }
}

- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)a3
{
  if (self->_inlineDayViewRespectsSelectedCalendarsFilter != a3)
  {
    self->_inlineDayViewRespectsSelectedCalendarsFilter = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setICSPreview:(BOOL)a3
{
  if (self->_ICSPreview != a3)
  {
    self->_ICSPreview = a3;
    self->_scrollToSection = 1;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsAddToCalendarForICSPreview:(BOOL)a3
{
  if (self->_showsAddToCalendarForICSPreview != a3)
  {
    self->_showsAddToCalendarForICSPreview = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsUpdateCalendarForICSPreview:(BOOL)a3
{
  if (self->_showsUpdateCalendarForICSPreview != a3)
  {
    self->_showsUpdateCalendarForICSPreview = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsDeleteForICSPreview:(BOOL)a3
{
  if (self->_showsDeleteForICSPreview != a3)
  {
    self->_showsDeleteForICSPreview = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsDoneButton:(BOOL)a3
{
  if (self->_showsDoneButton != a3)
  {
    self->_showsDoneButton = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }
}

- (void)setShowsOutOfDateMessage:(BOOL)a3
{
  if (self->_showsOutOfDateMessage != a3)
  {
    self->_showsOutOfDateMessage = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setShowsDelegatorMessage:(BOOL)a3
{
  if (self->_showsDelegatorMessage != a3)
  {
    self->_showsDelegatorMessage = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setShowsDelegateMessage:(BOOL)a3
{
  if (self->_showsDelegateMessage != a3)
  {
    self->_showsDelegateMessage = a3;
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];

    [(EKEventViewControllerDefaultImpl *)self _updateStatusButtonsActions];
  }
}

- (void)setMinimalMode:(BOOL)a3
{
  if (self->_minimalMode != a3)
  {
    self->_minimalMode = a3;
    [(EKEventViewControllerDefaultImpl *)self _setNeedsReloadIncludingItems];
  }
}

- (void)setNoninteractivePlatterMode:(BOOL)a3
{
  if (self->_noninteractivePlatterMode != a3)
  {
    self->_noninteractivePlatterMode = a3;
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

- (void)completeWithAction:(int64_t)a3
{
  if (a3 == 2)
  {
    self->_ignoreDBChanges = 1;
    recurrenceAlertController = self->_recurrenceAlertController;
    if (recurrenceAlertController)
    {
      v6 = [(EKUIRecurrenceAlertController *)recurrenceAlertController alertController];
      v7 = [v6 presentingViewController];
      [v7 dismissViewControllerAnimated:0 completion:0];
    }
  }

  [(EKEventViewControllerDefaultImpl *)self _dismissEditor:0 deleted:a3 == 2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(EKEventViewControllerDefaultImpl *)self _shouldPopSelf];

      if (!v11)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v12 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
        [v13 eventViewController:v12 didCompleteWithAction:a3];

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
    v5 = [(EKEventViewControllerDefaultImpl *)self view];
    [v5 bounds];
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

- (void)setTopInset:(double)a3
{
  [(UITableView *)self->_tableView contentInset];
  tableView = self->_tableView;

  [(UITableView *)tableView setContentInset:a3];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)_setObservesKeyboardNotifications:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  if (v3)
  {
    [v5 addObserver:self selector:sel__updateTableContentInsetForKeyboard_ name:*MEMORY[0x1E69DE080] object:0];
    [v5 addObserver:self selector:sel__updateTableContentInsetForKeyboard_ name:*MEMORY[0x1E69DE078] object:0];
    [v5 addObserver:self selector:sel__keyboardWasShown_ name:*MEMORY[0x1E69DDF78] object:0];
    [v5 addObserver:self selector:sel__keyboardWasHidden_ name:*MEMORY[0x1E69DDF70] object:0];
  }

  else
  {
    [v5 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
    [v5 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
    [v5 removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
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
    v6 = [(EKEventViewControllerDefaultImpl *)self items];
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

          [*(*(&v12 + 1) + 8 * v10++) refreshCopiedEvents];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  }

  return v3;
}

- (void)_storeChanged:(id)a3
{
  v9 = a3;
  if (![(EKEventViewControllerDefaultImpl *)self eventEditViewPresented]&& !self->_ignoreDBChanges && ([(EKEvent *)self->_event isNew]& 1) == 0)
  {
    v4 = [v9 userInfo];
    v5 = [v4 objectForKey:*MEMORY[0x1E6966930]];

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

- (void)_updateAccessDeniedViewWithNewStatus:(int64_t)a3
{
  if (self->_lastAuthorizationStatus != a3)
  {
    accessDeniedView = self->_accessDeniedView;
    if (a3 < 3)
    {
      if (accessDeniedView)
      {
        goto LABEL_9;
      }

      v7 = [(EKEventViewControllerDefaultImpl *)self firstResponder];
      [v7 resignFirstResponder];

      v8 = [(EKEventViewControllerDefaultImpl *)self view];
      v9 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [v8 addSubview:v9];

      v10 = [(EKEventViewControllerDefaultImpl *)self view];
      v11 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [v10 bringSubviewToFront:v11];

      if (a3 != 1)
      {
        goto LABEL_9;
      }

      v6 = [(EKEventViewControllerDefaultImpl *)self accessDeniedView];
      [v6 setMessage:@" "];
    }

    else
    {
      if (!accessDeniedView)
      {
LABEL_9:
        self->_lastAuthorizationStatus = a3;
        return;
      }

      [(_UIAccessDeniedView *)accessDeniedView removeFromSuperview];
      v6 = self->_accessDeniedView;
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
  v3 = [(EKEventViewControllerDefaultImpl *)self items];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v8 reloadData];
}

- (void)_keyboardWasShown:(id)a3
{
  v4 = [(EKEventViewControllerDefaultImpl *)self view];
  v5 = [v4 window];
  v8 = [v5 firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(EKEventViewControllerDefaultImpl *)self tableView];
    v7 = [v8 isDescendantOfView:v6];

    if (v7)
    {
      self->_tableIsBeingEdited = 1;
    }
  }
}

- (void)_keyboardWasHidden:(id)a3
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
    v6 = [(EKEventViewControllerDefaultImpl *)self context];
    v7 = [v6 objectForKeyedSubscript:@"EKUIEventDetailsFromTravelAdvisoryContext"];

    v45 = v7;
    v8 = [v7 BOOLValue];
    [(EKEventTitleDetailItem *)self->_titleItem setHasMapItemLaunchOptionFromTimeToLeaveNotification:v8];
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
    [(EKEventMapDetailItem *)v62 setHasMapItemLaunchOptionFromTimeToLeaveNotification:v8];
    v63 = objc_alloc_init(EKEventCalendarDetailItem);
    v61 = objc_alloc_init(EKEventAlarmDetailItem);
    [(EKEventDetailItem *)v61 setViewControllerToPresentFrom:self];
    v60 = objc_alloc_init(EKEventAvailabilityDetailItem);
    v59 = objc_alloc_init(EKEventTravelDetailItem);
    v58 = objc_alloc_init(EKEventCommentDetailItem);
    v14 = [(EKEventViewControllerDefaultImpl *)self optionalModel];
    v57 = [[EKEventProposeNewTimeItem alloc] initWithModel:v14];
    v56 = objc_alloc_init(EKEventProposedTimeDetailItem);
    v15 = objc_alloc_init(EKEventOrganizerDetailItem);
    v16 = objc_alloc_init(EKEventAttendeesDetailItem);
    [(EKEventDetailItem *)v16 setViewControllerToPresentFrom:self];
    v55 = objc_alloc_init(EKEventAttendeeCommentsDetailItem);
    [(EKEventDetailItem *)v55 setViewControllerToPresentFrom:self];
    v54 = objc_alloc_init(EKEventAttachmentDetailItem);
    v43 = [[EKEventPreviewDetailItem alloc] initWithModel:v14];
    objc_storeStrong(&self->_previewItem, v43);
    v41 = v14;
    v53 = [[EKEventShowInCalendarDetailItem alloc] initWithModel:v14];
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
      v21 = 0;
    }

    else
    {
      v21 = self;
    }

    v22 = [(EKReminderUneditableButtonDetailItem *)v20 initWithUneditableButtonDetailItemDelegate:v21];
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
      v29 = [(EKEventViewControllerDefaultImpl *)self minimalMode];
      v30 = [(EKEventViewControllerDefaultImpl *)self _reminderMode];
      if (v29)
      {
        v38 = v19;
        v31 = v18;
        if (v30)
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
      if (v30)
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

- (void)_configureItemsForStoreConstraintsGivenCalendar:(id)a3
{
  v4 = a3;
  if (self->_items)
  {
    v71 = v4;
    v5 = [(EKEventViewControllerDefaultImpl *)self items];
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
    v14 = [v5 count];
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
        v67 = self;
        do
        {
          v20 = [v5 objectAtIndexedSubscript:v15];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [(EKEventViewControllerDefaultImpl *)self allowsCalendarPreview]&& [(EKEventViewControllerDefaultImpl *)self calendarPreviewIsInlineDayView])
          {
            objc_opt_class();
            if (((objc_opt_isKindOfClass() & 1) == 0 || -[EKEventViewControllerDefaultImpl allowsCalendarPreview](self, "allowsCalendarPreview") && !-[EKEventViewControllerDefaultImpl calendarPreviewIsInlineDayView](self, "calendarPreviewIsInlineDayView")) && (![v20 showOnlyIfEditable] || -[EKEventViewControllerDefaultImpl allowsEditing](self, "allowsEditing") && !-[EKEventViewControllerDefaultImpl _backingEventAllowsEditing](self, "_backingEventAllowsEditing")))
            {
              if ([v20 configureWithEvent:*(&self->super.super.super.isa + v18[608]) calendar:v71 preview:*(&self->super.super.super.isa + v19[624])])
              {
                [v7 objectAtIndexedSubscript:{objc_msgSend(v20, "section")}];
                v21 = v5;
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
                v5 = v21;
                self = v67;
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [(EKEventViewControllerDefaultImpl *)v67 allowsCalendarPreview]&& [(EKEventViewControllerDefaultImpl *)v67 calendarPreviewIsInlineDayView])
                {
                  [v20 setInlineDayViewRespectsSelectedCalendarsFilter:{-[EKEventViewControllerDefaultImpl inlineDayViewRespectsSelectedCalendarsFilter](v67, "inlineDayViewRespectsSelectedCalendarsFilter")}];
                }
              }
            }
          }

          ++v15;
        }

        while (v15 < [v5 count]);
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

      v4 = v71;
      goto LABEL_103;
    }

    v29 = v71;
    if (!v14)
    {
LABEL_94:
      v52 = [v70 lastObject];
      if (v52)
      {
        v53 = v52;
        v54 = [v70 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v56 = [v70 lastObject];
          [v56 setShowExtraSpaceAtBottom:1];
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
      v31 = [v5 objectAtIndexedSubscript:v30];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(EKEventViewControllerDefaultImpl *)self allowsCalendarPreview]&& [(EKEventViewControllerDefaultImpl *)self calendarPreviewIsInlineDayView]&& [(EKEventTitleDetailItem *)v31 configureWithEvent:self->_event calendar:v29 preview:self->_ICSPreview])
        {
          v32 = [v70 lastObject];
          titleItem = self->_titleItem;

          [v70 addObject:v31];
          [(EKEventTitleDetailItem *)v31 setCellPosition:2];
          [(EKEventTitleDetailItem *)v31 setInlineDayViewRespectsSelectedCalendarsFilter:[(EKEventViewControllerDefaultImpl *)self inlineDayViewRespectsSelectedCalendarsFilter]];
          if (v32 == titleItem)
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

          v41 = [(EKEventViewControllerDefaultImpl *)self event];
          v42 = [v41 allowsProposedTimeModifications];

          if (!v42)
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
            v46 = [(EKEventViewControllerDefaultImpl *)self event];
            if ([v46 isAllDay] && -[EKEventViewControllerDefaultImpl noninteractivePlatterMode](self, "noninteractivePlatterMode"))
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
            v49 = [(EKEvent *)event eventStore];
            [(EKEventTitleDetailItem *)v31 setEvent:event reminder:reminder store:v49];

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

        v43 = [v70 lastObject];
        v44 = self->_titleItem;

        [v70 addObject:v31];
        [(EKEventTitleDetailItem *)v31 setCellPosition:5];
        v29 = v71;
        if (v43 == v44)
        {
          v45 = self->_titleItem;
LABEL_74:
          [(EKEventTitleDetailItem *)v45 setHidesBottomSeparator:1];
        }
      }

LABEL_49:

      if (++v30 >= [v5 count])
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
  v2 = [(EKEvent *)self->_event calendar];
  v3 = [v2 type] == 5;

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
  v7 = [v6 eventViewControllerShouldHideDeleteButton];

  v8 = v7 ^ 1;
LABEL_6:
  v9 = [(EKEvent *)self->_event calendar];
  if ([v9 allowsContentModifications] && (-[EKEvent isPrivateEventSharedToMe](self->_event, "isPrivateEventSharedToMe") & 1) == 0)
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

  v12 = [(EKEvent *)self->_event calendar];
  v13 = [v12 source];
  if ([v13 isDelegate])
  {
    v14 = [(EKEvent *)self->_event calendar];
    v15 = [v14 source];
    v11 = [v15 isWritable];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)_isDisplayingInvitation
{
  v3 = [(EKEventViewControllerDefaultImpl *)self allowsInviteResponses];
  if (v3)
  {
    event = self->_event;

    LOBYTE(v3) = [(EKEvent *)event allowsParticipationStatusModifications];
  }

  return v3;
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
      v7 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [v7 setTableFooterView:v6];

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

  v16 = [(EKEventViewControllerDefaultImpl *)self view];
  [v16 bounds];
  v18 = v17;
  v19 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v19 rowHeight];
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

  v23 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v23 setTableFooterView:v15];

  self->_showingBlankFooterView = 0;
LABEL_18:
  v27 = [(EKEventViewControllerDefaultImpl *)self event];
  if ([v27 couldBeJunk])
  {
  }

  else
  {
    v24 = [(UIView *)self->_headerView isHidden];

    if (!v24)
    {
      [(UIView *)self->_headerView setHidden:1];
      v25 = MEMORY[0x1E696ACD8];
      headerConstraints = self->_headerConstraints;

      [v25 deactivateConstraints:headerConstraints];
    }
  }
}

- (id)_footerLabelContainingText:(id)a3
{
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setText:v5];

  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [v6 setFont:v7];

  v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v6 setTextColor:v8];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v9];

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
  v3 = [(EKEventViewControllerDefaultImpl *)self items];
  [v3 makeObjectsPerformSelector:sel_setDelegate_ withObject:self];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(EKEventViewControllerDefaultImpl *)self items];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        event = self->_event;
        reminder = self->_reminder;
        v12 = [(EKEvent *)event eventStore];
        [v9 setEvent:event reminder:reminder store:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = [(EKEvent *)self->_event calendar];
  [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v13];

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

  v3 = [(UIViewController *)self EKUI_viewHierarchy];
  if ([v3 ekui_interfaceOrientation] == 1)
  {

LABEL_4:
    v4 = 1;
    goto LABEL_6;
  }

  v5 = [(EKEventViewControllerDefaultImpl *)self traitCollection];
  v4 = [v5 verticalSizeClass] != 1;

LABEL_6:
  v6 = [EKUIEventStatusButtonsView alloc];
  v7 = [(EKEventViewControllerDefaultImpl *)self statusButtonActions];
  v8 = [(EKUIEventStatusButtonsView *)v6 initWithFrame:v7 actions:self delegate:1 options:v4 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
  v6 = [(EKEventViewControllerDefaultImpl *)self statusButtonActions];
  v3 = [(EKUIEventStatusButtonsView *)self->_statusButtonsView actions];
  v4 = [v6 isEqualToArray:v3];

  if ((v4 & 1) == 0)
  {
    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setActions:v6];
    v5 = [(EKEventViewControllerDefaultImpl *)self toolbarItems];

    if (v5)
    {
      [(EKEventViewControllerDefaultImpl *)self updateStatusButtonsView];
      [(EKEventViewControllerDefaultImpl *)self _configureStatusButtonsToolbar];
    }
  }
}

- (void)_configureStatusButtonsToolbar
{
  v3 = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
  v17 = [v3 statusButtons];

  v4 = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
  v5 = [v4 actions];

  v6 = [v5 containsObject:&unk_1F4F326B0];
  v7 = objc_opt_new();
  if ([v17 count])
  {
    v8 = 0;
    do
    {
      v9 = objc_alloc(MEMORY[0x1E69DC708]);
      v10 = [v17 objectAtIndexedSubscript:v8];
      v11 = [v9 initWithCustomView:v10];

      [v7 addObject:v11];
      if ((v6 & 1) == 0 && v8 != [v17 count] - 1)
      {
        v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 menu:0];
        [v7 addObject:v12];
      }

      ++v8;
    }

    while ([v17 count] > v8);
  }

  [(EKEventViewControllerDefaultImpl *)self setToolbarItems:v7 animated:1];
  v13 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  v14 = [v13 toolbar];
  [v14 sizeToFit];

  v15 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  v16 = [v15 toolbar];
  [v16 _setItemDistribution:1];
}

- (void)_notifyDetailItemsOfVisibilityOnScreen
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = self->_currentSections;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(UITableView *)self->_tableView indexPathsForVisibleRows];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = -[NSArray objectAtIndex:](v3, "objectAtIndex:", [v9 section]);
        v11 = [v10 itemAtIndex:{objc_msgSend(v9, "row")}];
        v12 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
        [v11 eventViewController:v12 tableViewDidScroll:self->_tableView];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)doneButtonTapped
{
  v3 = [(EKEventTitleDetailItem *)self->_titleItem sourceViewForPopover];
  [(EKEventViewControllerDefaultImpl *)self _doneButtonTapped:v3];
}

- (void)_doneButtonTapped:(id)a3
{
  v4 = a3;
  if (!self->_recurrenceAlertController)
  {
    selectedEditItem = self->_selectedEditItem;
    v8 = v4;
    if (!selectedEditItem || (v6 = [(EKEventDetailItem *)selectedEditItem saveAndDismissWithForce:0], v4 = v8, v6))
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
        v4 = v8;
        goto LABEL_11;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v4 = v8;
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
      v8 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v9 = [v7 eventViewControllerEditButtonTemporarilyDisabled:v8];

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
  v19 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v20 = [v18 eventViewDelegateShouldCreateOwnEditViewController:v19];

  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(EKEventViewControllerDefaultImpl *)self presentEditorAnimated:1];
}

- (void)setActiveEventEditor:(id)a3
{
  v4 = a3;
  [v4 setInternalEditViewDelegate:self];
  v5 = [(EKEventViewControllerDefaultImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v5))
  {
    v6 = [(EKEventViewControllerDefaultImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(v6);

    if (IsRegular)
    {
      [v4 setModalPresentationStyle:3];
    }
  }

  else
  {
  }

  v8 = [(EKEventViewControllerDefaultImpl *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v4 setModalPresentationStyle:{objc_msgSend(WeakRetained, "editorPresentationStyle")}];
  }

  activeEventEditor = self->_activeEventEditor;
  self->_activeEventEditor = v4;
}

- (void)presentEditorAnimated:(BOOL)a3
{
  v3 = a3;
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
  v8 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v9 = [v7 eventViewDelegateShouldHandlePresentationOfEditViewController:v8];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [v10 eventViewController:v11 requestsDisplayOfEditViewController:v17 animated:v3];

LABEL_12:
    goto LABEL_13;
  }

LABEL_7:
  if (v17)
  {
    if (v3 && (v3 = [(EKEventViewControllerDefaultImpl *)self editorShowTransition], v3 == 8))
    {
      v10 = [(EKEventViewControllerDefaultImpl *)self _viewControllerForEditorPresentation];
      [v10 presentViewController:v17 animated:1 completion:0];
    }

    else
    {
      v10 = [(EKEventViewControllerDefaultImpl *)self _viewControllerForEditorPresentation];
      [v10 presentModalViewController:v17 withTransition:v3];
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
  v3 = [(EKEventViewControllerDefaultImpl *)self navigationController];

  if (v3)
  {
    v4 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)_saveStatus:(int64_t)a3 span:(int64_t)a4
{
  [(EKEvent *)self->_event setParticipationStatus:a3];
  [(EKEvent *)self->_event setInvitationStatus:0];

  [(EKEventViewControllerDefaultImpl *)self _performSave:a4 animated:1];
}

- (BOOL)_performSave:(int64_t)a3 animated:(BOOL)a4
{
  v6 = [(UIResponder *)self EKUI_editor:a3];
  event = self->_event;
  v17 = 0;
  v8 = [v6 saveEvent:event span:a3 error:&v17];
  v9 = v17;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      v11 = [v9 domain];
      if (v11 != *MEMORY[0x1E6966808])
      {
LABEL_6:

        goto LABEL_11;
      }

      v12 = [v10 code];

      if (v12 == 1010)
      {
        v11 = [(EKEvent *)self->_event eventStore];
        [v11 rollback];
        goto LABEL_6;
      }
    }

    else
    {
      v13 = [(EKEventViewControllerDefaultImpl *)self canvasView];
      if (v13 > 5)
      {
        v14 = &unk_1F4F326C8;
      }

      else
      {
        v14 = qword_1E8441FE0[v13];
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

- (void)_performDelete:(int64_t)a3 editor:(id)a4
{
  v6 = MEMORY[0x1E6966A10];
  v7 = a4;
  v8 = [v6 sharedInstance];
  [v8 handleEventDeletion:self->_event];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:self->_event];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__EKEventViewControllerDefaultImpl__performDelete_editor___block_invoke;
  v10[3] = &unk_1E843FF50;
  v10[4] = self;
  [v7 deleteEvents:v9 span:a3 result:v10];
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
      v7 = [(EKEventDetailItem *)currentEditItem viewController];
      [v7 preferredContentSize];
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
  v3 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v3 bounds];
  v5 = v4;

  v6 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v6 _sectionContentInset];
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
    v6 = [(EKEventViewControllerDefaultImpl *)self tableView];
    v7 = [v6 numberOfSections];

    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v9 = [(EKEventViewControllerDefaultImpl *)self tableView];
        v10 = [v9 numberOfRowsInSection:i];

        if (v10)
        {
          for (j = 0; j != v10; ++j)
          {
            v12 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:i];
            v13 = [(EKEventViewControllerDefaultImpl *)self tableView];
            v14 = [(EKEventViewControllerDefaultImpl *)self tableView:v13 cellForRowAtIndexPath:v12];

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
    v6 = self->_presentationSourceViewController;
  }

  else
  {
    v7 = [(EKEventViewControllerDefaultImpl *)self navigationController];

    if (v7)
    {
      v6 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    }

    else
    {
      v6 = self;
    }
  }

  return v6;
}

- (id)presentationNavigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    v4 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  }

  return v4;
}

- (void)_presentDetachSheetFromBarButtonItem:(id)a3
{
  v4 = a3;
  v8 = [(EKEventViewControllerDefaultImpl *)self _detachSheetHandler];
  v5 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  v6 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v5 barButtonItem:v4 forEvent:self->_event withCompletionHandler:v8];

  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v6;
}

- (void)_presentDetachSheetFromView:(id)a3
{
  v4 = a3;
  v8 = [(EKEventViewControllerDefaultImpl *)self _detachSheetHandler];
  v5 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  [v4 bounds];
  v6 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v5 sourceView:v4 sourceRect:self->_event forEvent:v8 withCompletionHandler:?];

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

- (void)eventDetailItemAccessoryButtonTapped:(id)a3
{
  v10 = a3;
  if ([(EKEventViewControllerDefaultImpl *)self allowsSubitems])
  {
    v4 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [v10 eventViewControllerDidTapInfoButton:v4];

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
    v3 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v3 beginUpdates];

    v4 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v4 endUpdates];
  }

  [(EKEventViewControllerDefaultImpl *)self calculatePreferredContentSize];

  [(EKEventViewControllerDefaultImpl *)self setPreferredContentSize:?];
}

- (void)eventItemDidSave:(id)a3
{
  v7 = a3;
  if ([v7 section] == 2)
  {
    self->_needsReload = 1;
    [(EKEventViewControllerDefaultImpl *)self _reloadIfNeeded];
  }

  else if ([v7 section] == 6)
  {
    v4 = [(EKEvent *)self->_event calendar];
    [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v4];

    [(UIResponder *)self EKUI_setDataOwnersFromEvent:self->_event];
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [(EKEventViewControllerDefaultImpl *)self reloadReminderWithEKEvent:self->_event];
    [(EKEventViewControllerDefaultImpl *)self _setUpForEvent];
  }

  v6 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v6 reloadData];
}

- (void)eventItemDidCommit:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewControllerModifiedEventWithoutEditing:v4];
  }
}

- (void)eventDetailItemWantsRefresh:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v6 = v4;
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
    v8 = [v6 numberOfSubitems];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathForRow:i + v18[3] inSection:v22[3]];
        [v9 addObject:v11];
      }
    }

    v12 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v12 reloadRowsAtIndexPaths:v9 withRowAnimation:0];
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

- (void)eventItemDidEndEditing:(id)a3
{
  currentEditItem = self->_currentEditItem;
  self->_currentEditItem = 0;
}

- (void)eventItem:(id)a3 wantsViewControllerPresented:(id)a4
{
  v5 = a4;
  v6 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (void)_dismissEditor:(BOOL)a3 deleted:(BOOL)a4
{
  activeEventEditor = self->_activeEventEditor;
  if (!activeEventEditor)
  {
    return;
  }

  v6 = a4;
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
      v14 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [v13 eventViewControllerWillFinishEditingEvent:v14 deleted:v6];
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    v17 = objc_loadWeakRetained(&self->_delegate);
    if (v16)
    {
      v18 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [v17 eventViewController:v18 requestsDismissalOfEditViewController:self->_activeEventEditor];
    }

    else
    {
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        v21 = objc_loadWeakRetained(&self->_delegate);
        v22 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
        [v21 eventViewController:v22 willDismissEditViewController:self->_activeEventEditor deleted:v6];
      }

      v23 = [(EKEventOrIntegrationEditView *)self->_activeEventEditor presentingViewController];
      [v23 dismissViewControllerWithTransition:-[EKEventViewControllerDefaultImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];

      v24 = objc_loadWeakRetained(&self->_delegate);
      v25 = objc_opt_respondsToSelector();

      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }

      v17 = objc_loadWeakRetained(&self->_delegate);
      v26 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [v17 eventViewController:v26 didDismissEditViewController:self->_activeEventEditor deleted:v6];
    }
  }

  else
  {
    v17 = [(EKEventOrIntegrationEditView *)self->_activeEventEditor presentingViewController];
    [v17 dismissViewControllerWithTransition:-[EKEventViewControllerDefaultImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];
  }

LABEL_12:
  [(EKEventOrIntegrationEditView *)self->_activeEventEditor setInternalEditViewDelegate:0];
  v19 = self->_activeEventEditor;
  self->_activeEventEditor = 0;
}

- (void)fullReloadWithNewEvent:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EKEventViewControllerDefaultImpl *)self setEvent:v4];
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
        v12 = [v4 eventStore];
        [v10 setEvent:v4 reminder:reminder store:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [(EKEvent *)self->_event calendar];
  [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v13];

  [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
  v14 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v14 reloadData];
}

- (BOOL)eventDetailItemShouldPresentShareSheet:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v8 = [v6 eventViewControllerShouldPresentShareSheet:v7];

  return v8;
}

- (void)eventDetailItem:(id)a3 requestPresentShareSheetWithActivityItems:(id)a4 withPopoverSourceView:(id)a5
{
  v12 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [v10 eventViewController:v11 requestPresentShareSheetWithActivityItems:v12 withPopoverSourceView:v7];
  }
}

- (void)_eventEditViewControllerDidCompleteWithAction:(int64_t)a3
{
  if (a3 == 2)
  {

    [(EKEventViewControllerDefaultImpl *)self completeWithAction:?];
  }

  else
  {
    [(EKEventViewControllerDefaultImpl *)self setNeedsReload];
    [(EKEventViewControllerDefaultImpl *)self _dismissEditor:1 deleted:0];
    if (a3 == 1)
    {
      v5 = [(EKEvent *)self->_event calendar];
      [(EKEventViewControllerDefaultImpl *)self _configureItemsForStoreConstraintsGivenCalendar:v5];

      v6 = [(EKEventViewControllerDefaultImpl *)self tableView];
      [v6 reloadData];
    }
  }
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 completionHandler:(id)a5
{
  v16 = a3;
  v8 = a5;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      v8[2](v8, v11);
    }

    else
    {
      v8[2](v8, self);
    }
  }

  editViewControllerForPasteboard = self->_editViewControllerForPasteboard;
  if (editViewControllerForPasteboard == v16)
  {
    v13 = [(EKEventEditViewController *)editViewControllerForPasteboard presentingViewController];
    [v13 dismissViewControllerAnimated:1 completion:0];

    v14 = self->_editViewControllerForPasteboard;
    self->_editViewControllerForPasteboard = 0;

    strongSelf = self->_strongSelf;
    self->_strongSelf = 0;
  }

  else
  {
    [(EKEventViewControllerDefaultImpl *)self _eventEditViewControllerDidCompleteWithAction:a4];
  }
}

- (id)pasteboardManagerForEventEditViewController:(id)a3
{
  v4 = [(EKEventViewControllerDefaultImpl *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained pasteboardManager];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  v3 = [(EKEvent *)self->_event calendar];

  if (!v3)
  {
    event = self->_event;
    v5 = [(EKEvent *)event eventStore];
    v6 = [v5 defaultCalendarForNewEvents];
    [(EKEvent *)event setCalendar:v6];
  }

  v7 = [(EKEvent *)self->_event startDate];

  if (!v7)
  {
    [objc_opt_class() setDefaultDatesForEvent:self->_event];
  }

  v8 = self->_event;
  v10[0] = *MEMORY[0x1E6992B40];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(EKEvent *)v8 prefetchAttendeesWithAdditionalProperties:v9];
}

- (void)invokeAction:(int64_t)a3 eventStatusButtonsView:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = [a4 buttonForAction:?];
  v7 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "EKEventViewController invoking action: %ld", &v9, 0xCu);
  }

  if (a3 > 4095)
  {
    if (a3 < 0x10000)
    {
      switch(a3)
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

    else if (a3 >= 0x80000)
    {
      if (a3 == 0x80000 || a3 == 0x100000)
      {
LABEL_27:
        [(EKEventViewControllerDefaultImpl *)self _deleteClicked:v6];
      }
    }

    else if (a3 == 0x10000)
    {
      PresentJunkAlertControllerForEvent(self->_event, v6, self, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    }

    else if (a3 == 0x40000)
    {
      [(EKEventViewControllerDefaultImpl *)self _unsubscribeClicked:v6];
    }
  }

  else
  {
    if (a3 <= 7)
    {
      switch(a3)
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

    if (a3 <= 127)
    {
      if (a3 != 8)
      {
        if (a3 != 16)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    if (a3 == 128)
    {
      [(EKEventViewControllerDefaultImpl *)self _deleteSuggestionTapped:self];
      goto LABEL_35;
    }

    if (a3 == 2048)
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
  v3 = [(EKEventViewControllerDefaultImpl *)self event];
  v4 = [v3 attendees];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 proposedStartDateStatus] == 1 || !objc_msgSend(v10, "proposedStartDateStatus"))
          {
            v11 = [(EKEventViewControllerDefaultImpl *)self event];
            v12 = [v10 proposedStartDateForEvent:v11];

            if (v12)
            {

              goto LABEL_15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_acceptProposedTimeWithSourceViewForPopover:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEventViewControllerDefaultImpl *)self _proposedDate];
  if (v5)
  {
    v6 = [(EKEventViewControllerDefaultImpl *)self event];
    v7 = [v6 endDateUnadjustedForLegacyClients];
    v8 = [v6 startDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    [v6 setStartDate:v5];
    v11 = [v5 dateByAddingTimeInterval:v10];
    [v6 setEndDateUnadjustedForLegacyClients:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v6 attendees];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v12);
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
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [v6 dismissAcceptedProposeNewTimeNotification];
    if ([v6 isOrWasPartOfRecurringSeries])
    {
      v19 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
      [v4 bounds];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __80__EKEventViewControllerDefaultImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke;
      v22[3] = &unk_1E843FE10;
      v22[4] = self;
      v20 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v19 sourceView:v4 sourceRect:v6 forEvent:v22 withCompletionHandler:?];
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
  v3 = [(EKEventViewControllerDefaultImpl *)self event];
  v4 = [v3 attendees];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [(EKEventViewControllerDefaultImpl *)self event];
  if ([v11 isOrWasPartOfRecurringSeries])
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
  v3 = [(EKEventViewControllerDefaultImpl *)self event];
  [v3 setProposedStartDate:0];

  [(EKEventViewControllerDefaultImpl *)self _performSave:0 animated:0];
}

- (void)_saveStatus:(int64_t)a3 sourceViewForPopover:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v8 = v6;
    if (([(EKEvent *)self->_event responseMustApplyToAll]& 1) != 0)
    {
      v7 = 4;
    }

    else
    {
      if ([(EKEvent *)self->_event isOrWasPartOfRecurringSeries]&& ([(EKEvent *)self->_event isSignificantlyDetached]& 1) == 0)
      {
        self->_pendingStatus = a3;
        [(EKEventViewControllerDefaultImpl *)self _presentDetachSheetFromView:v8];
        goto LABEL_8;
      }

      v7 = 0;
    }

    [(EKEventViewControllerDefaultImpl *)self _saveStatus:a3 span:v7];
LABEL_8:
    v6 = v8;
  }
}

- (void)_deleteClicked:(id)a3
{
  v4 = a3;
  v5 = [(EKEventViewControllerDefaultImpl *)self event];
  v6 = [v5 status];

  v7 = [(UIResponder *)self EKUI_editor];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v11 = [v9 eventViewDelegateShouldHandlePresentationOfDeleteAlert:v10];
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
  v12 = v7;
  v24 = v12;
  v26 = v6 == 3;
  v13 = _Block_copy(aBlock);
  if (v6 == 3)
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
      v18 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      v19 = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
      [v17 eventViewController:v18 requestsDisplayOfDeleteAlert:v19];
    }

    else
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    v20 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
    [v4 bounds];
    v21 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v14 viewController:v20 sourceView:v4 sourceRect:self->_event forEvent:0 stringForDeleteButton:v13 withCompletionHandler:?];
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

- (void)_unsubscribeClicked:(id)a3
{
  v4 = a3;
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
  v8 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v9 = [v7 eventViewDelegateShouldHandlePresentationOfDeleteAlert:v8];

  if (!v9)
  {
LABEL_5:
    v12 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
    [v4 bounds];
    v15 = [EKUIRecurrenceAlertController presentUnsubscribeAlertWithOptions:4 viewController:v12 sourceView:v4 sourceRect:v5 withCompletionHandler:?];
    recurrenceAlertController = self->_recurrenceAlertController;
    self->_recurrenceAlertController = v15;
    goto LABEL_6;
  }

  v10 = [EKUIRecurrenceAlertController unsubscribeAlertWithOptions:4 withCompletionHandler:v5];
  v11 = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v10;

  v12 = objc_loadWeakRetained(&self->_delegate);
  recurrenceAlertController = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v14 = [(EKUIRecurrenceAlertController *)self->_recurrenceAlertController alertController];
  [v12 eventViewController:recurrenceAlertController requestsDisplayOfDeleteAlert:v14];

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

- (void)_addToCalendarClicked:(id)a3
{
  if ([(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion])
  {
    v4 = [(EKEvent *)self->_event suggestionInfo];
    [v4 setChangedFields:0];

    [(EKEventViewControllerDefaultImpl *)self attemptDisplayReviewPrompt];
    v5 = [(EKEvent *)self->_event eventStore];
    [v5 acceptSuggestedEvent:self->_event];

    v6 = MEMORY[0x1E69930D8];
    v7 = [(EKEvent *)self->_event suggestionInfo];
    v8 = [v7 uniqueIdentifier];
    [v6 logEventConfirmedDetailsWithUniqueKey:v8];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewController:v9 didCompleteWithAction:0];
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

- (void)_deleteSuggestionTapped:(id)a3
{
  if ([(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion])
  {
    v4 = [(EKEvent *)self->_event suggestionInfo];
    [v4 setChangedFields:0];

    v5 = MEMORY[0x1E69930D8];
    v6 = [(EKEvent *)self->_event suggestionInfo];
    v7 = [v6 uniqueIdentifier];
    [v5 logEventRejectedDetailsWithUniqueKey:v7];

    v8 = [(EKEvent *)self->_event eventStore];
    [v8 deleteSuggestedEvent:self->_event];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewController:v9 didCompleteWithAction:2];
  }
}

- (void)_updateResponseVisibility
{
  v29[4] = *MEMORY[0x1E69E9840];
  if ([(EKEventViewControllerDefaultImpl *)self _shouldDisplayStatusButtons])
  {
    v3 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    [v3 setToolbarHidden:0];

    v4 = MEMORY[0x1D38B98D0]();
    v5 = [(EKEventViewControllerDefaultImpl *)self toolbarItems];
    v6 = v5;
    if (v4)
    {

      if (!v6)
      {

        [(EKEventViewControllerDefaultImpl *)self _configureStatusButtonsToolbar];
      }
    }

    else if (!v5 || (statusButtonsContainerView = self->_statusButtonsContainerView, v5, !statusButtonsContainerView))
    {
      v10 = [(EKEventViewControllerDefaultImpl *)self _statusButtonsContainerView];
      v11 = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
      [v10 addSubview:v11];
      v22 = MEMORY[0x1E696ACD8];
      v27 = [v11 leadingAnchor];
      v26 = [v10 leadingAnchor];
      v25 = [v27 constraintEqualToAnchor:v26];
      v29[0] = v25;
      v24 = [v11 trailingAnchor];
      v23 = [v10 trailingAnchor];
      v21 = [v24 constraintEqualToAnchor:v23];
      v29[1] = v21;
      v12 = [v11 topAnchor];
      v13 = [v10 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v29[2] = v14;
      v15 = [v11 bottomAnchor];
      v16 = [v10 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];
      v29[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
      [v22 activateConstraints:v18];

      v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
      v28 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [(EKEventViewControllerDefaultImpl *)self setToolbarItems:v20 animated:1];
    }
  }

  else
  {
    v7 = [(EKEventViewControllerDefaultImpl *)self toolbarItems];

    if (v7)
    {
      v8 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      [v8 setToolbarHidden:1];

      [(EKEventViewControllerDefaultImpl *)self setToolbarItems:0 animated:1];
    }
  }
}

- (void)_updateResponse
{
  v11 = [(EKEventViewControllerDefaultImpl *)self _statusButtonsView];
  event = self->_event;
  if (self->_trustsStatus)
  {
    v4 = [(EKEvent *)event participationStatus];
  }

  else
  {
    v5 = [(EKEvent *)event calendar];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 source];
      v8 = [v7 constraints];
      v9 = [v8 statusesAreAccurate] ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v4 = [(EKEvent *)self->_event participationStatus];
    if (v9 && ![(EKEvent *)self->_event isStatusDirty])
    {
      goto LABEL_11;
    }
  }

  if (![(EKEventViewControllerDefaultImpl *)self _isDisplayingSuggestion]&& (v4 - 2) <= 2)
  {
    v10 = qword_1D3600A98[v4 - 2];
    goto LABEL_12;
  }

LABEL_11:
  v10 = 0;
LABEL_12:
  [v11 setSelectedAction:v10];
}

- (BOOL)_shouldDisplayStatusButtons
{
  v2 = [(EKEventViewControllerDefaultImpl *)self statusButtonActions];
  v3 = [v2 count] != 0;

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
        v6 = [(EKEventViewControllerDefaultImpl *)self event];
        v7 = [v6 status];

        if (v7 == 3)
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
  v8 = [(EKEventViewControllerDefaultImpl *)self event];
  v9 = [v8 calendar];

  if ([v9 isSubscribed] && (objc_msgSend(v9, "isSubscribedHolidayCalendar") & 1) == 0 && objc_msgSend(MEMORY[0x1E6992FA0], "currentProcessIsFirstPartyCalendarApp"))
  {
    v3 |= 0x40000uLL;
  }

  return v3;
}

+ (id)_orderedActionsForMask:(int64_t)a3
{
  v4 = objc_opt_new();
  for (i = 0; i != 15; ++i)
  {
    if ((_orderedActionsForMask__actionOrder_1[i] & a3) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  return v4;
}

- (id)statusButtonActions
{
  v2 = [(EKEventViewControllerDefaultImpl *)self _actionsMask];
  v3 = objc_opt_class();

  return [v3 _orderedActionsForMask:v2];
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  if (!self->_showingBlankFooterView)
  {
    lastFooterLayoutWidth = self->_lastFooterLayoutWidth;
    if (lastFooterLayoutWidth != EKUIContainedControllerIdealWidth())
    {
      self = [(EKEventViewControllerDefaultImpl *)v2 _updateHeaderAndFooterIfNeeded];
    }
  }

  if ((MEMORY[0x1D38B98D0](self, a2) & 1) == 0)
  {
    v4 = [(EKEventViewControllerDefaultImpl *)v2 navigationController];
    v6 = [v4 toolbar];

    v5 = v6;
    if (v6)
    {
      [(SingleToolbarItemContainerView *)v2->_statusButtonsContainerView setBoundsWithToolbar:v6];
      v5 = v6;
    }
  }
}

- (id)_sectionAtIndex:(int64_t)a3
{
  v4 = self->_currentSections;
  v5 = v4;
  if (a3 < 0 || [(NSArray *)v4 count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (id)_itemAtIndexPath:(id)a3 section:(id *)a4 subitemIndex:(unint64_t *)a5
{
  v8 = a3;
  v9 = -[EKEventViewControllerDefaultImpl _sectionAtIndex:](self, "_sectionAtIndex:", [v8 section]);
  v10 = [v8 row];

  v11 = [v9 itemAtIndex:v10 subitemIndex:a5];
  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(EKEventViewControllerDefaultImpl *)self _sectionAtIndex:a4];
  [v6 frame];
  if (v8 > 0.0)
  {
    [v6 frame];
    [v7 updateCellLayoutsForRowCountIfNeededUsingWidth:v9];
  }

  v10 = [v7 numberOfRows];
  v11 = v10;
  if (self->_disclosedTableSection == a4)
  {
    v11 = self->_disclosedTableRange.length + v10;
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
    v5 = [(EKEventViewControllerDefaultImpl *)self view];
    v6 = [v5 window];

    if (v6)
    {
      v7 = [(EKEventViewControllerDefaultImpl *)self tableView];
      v8 = [v7 numberOfSections];

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = [(EKEventViewControllerDefaultImpl *)self tableView];
          v11 = [v10 numberOfRowsInSection:i];

          if (v11)
          {
            for (j = 0; j != v11; ++j)
            {
              v13 = [MEMORY[0x1E696AC88] indexPathForRow:j inSection:i];
              v14 = [(EKEventViewControllerDefaultImpl *)self tableView];
              v15 = [(EKEventViewControllerDefaultImpl *)self tableView:v14 cellForRowAtIndexPath:v13];

              [objc_opt_class() adjustLayoutForCell:v15 tableViewWidth:v11 numRowsInSection:j cellRow:0 forceLayout:v4];
            }
          }
        }
      }
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = [(EKEventViewControllerDefaultImpl *)self _sectionAtIndex:v8];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = [v7 row];
  v11 = [(EKEventViewControllerDefaultImpl *)self view];
  v12 = [v11 window];

  if (v12)
  {
    v13 = [(EKEventViewControllerDefaultImpl *)self view];
    v14 = [v13 window];
    EKUIPushFallbackSizingContextWithViewHierarchy(v14);
  }

  v15 = [(EKEventViewControllerDefaultImpl *)self traitCollection];
  v16 = [v9 cellForSubitemAtIndex:v10 withTraitCollection:v15];

  v17 = [(EKEventViewControllerDefaultImpl *)self view];
  v18 = [v17 window];

  if (v18)
  {
    v19 = [(EKEventViewControllerDefaultImpl *)self view];
    v20 = [v19 window];
    EKUIPopFallbackSizingContextWithViewHierarchy(v20);
  }

  if (!-[EKEventViewControllerDefaultImpl allowsSubitems](self, "allowsSubitems") && ([v16 accessoryType] == 1 || objc_msgSend(v16, "accessoryType") == 2) || objc_msgSend(v9, "tag") == 8 && !-[EKEventViewControllerDefaultImpl allowsEditing](self, "allowsEditing"))
  {
    [v16 setAccessoryType:0];
  }

  [(EKEventViewControllerDefaultImpl *)self tableViewSectionContentWidth];
  v22 = v21;
  if (v21 > 10.0)
  {
    v23 = [v6 numberOfRowsInSection:v8];
    v24 = [(EKEventViewControllerDefaultImpl *)self view];
    v25 = [v24 window];

    if (v25)
    {
      v26 = [(EKEventViewControllerDefaultImpl *)self view];
      v27 = [v26 window];
      EKUIPushFallbackSizingContextWithViewHierarchy(v27);
    }

    [objc_opt_class() adjustLayoutForCell:v16 tableViewWidth:v23 numRowsInSection:v10 cellRow:1 forceLayout:v22];
    v28 = [(EKEventViewControllerDefaultImpl *)self view];
    v29 = [v28 window];

    if (v29)
    {
      v30 = [(EKEventViewControllerDefaultImpl *)self view];
      v31 = [v30 window];
      EKUIPopFallbackSizingContextWithViewHierarchy(v31);
    }
  }

  if (![v9 tag] || objc_msgSend(v9, "tag") == 5 || objc_msgSend(v9, "tag") == 4 || objc_msgSend(v9, "tag") == 11)
  {
    v32 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v16 setBackgroundConfiguration:v32];
  }

  if (!v16)
  {
LABEL_24:
    v33 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v35 = 138412290;
      v36 = v7;
      _os_log_impl(&dword_1D3400000, v33, OS_LOG_TYPE_ERROR, "No cell found from EKEventViewController for index path %@.  Using empty cell to prevent crash.", &v35, 0xCu);
    }

    v16 = objc_opt_new();
  }

  return v16;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  cellHeights = self->_cellHeights;
  v7 = MEMORY[0x1E696AD98];
  v8 = a5;
  [a4 frame];
  v10 = [v7 numberWithDouble:v9];
  [(NSMutableDictionary *)cellHeights setObject:v10 forKey:v8];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(NSMutableDictionary *)self->_cellHeights objectForKey:a4];
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 rowHeight];
  v9 = v8;
  v10 = -[EKEventViewControllerDefaultImpl _sectionAtIndex:](self, "_sectionAtIndex:", [v7 section]);
  if (v10)
  {
    v11 = [v7 row];
    [(EKEventViewControllerDefaultImpl *)self tableViewSectionContentWidth];
    v13 = v12;
    [v6 _backgroundInset];
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

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = MEMORY[0x1D38B98D0](self, a2, a3, a4);
  result = 0.0;
  if (v4)
  {
    return 4.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v9 = 0;
  v5 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:a4 section:0 subitemIndex:&v9];
  if (v5)
  {
    v6 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v7 = [v5 eventViewController:v6 shouldSelectSubitem:v9];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v7 = 0;
  v5 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:a4 section:0 subitemIndex:&v7];
  v6 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v5 eventViewController:v6 didHighlightSubitem:v7];
}

- (void)tableView:(id)a3 didUnhighlightRowAtIndexPath:(id)a4
{
  v7 = 0;
  v5 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:a4 section:0 subitemIndex:&v7];
  v6 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v5 eventViewController:v6 didUnhighlightSubitem:v7];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = 0;
  v8 = [(EKEventViewControllerDefaultImpl *)self _itemAtIndexPath:v7 section:&v20 subitemIndex:&v21];
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
    [v6 deselectRowAtIndexPath:v7 animated:1];
    v12 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [(EKEventDetailItem *)v8 eventViewController:v12 didSelectReadOnlySubitem:v21];

    v13 = [(EKEventViewControllerDefaultImpl *)self _shouldShowEditButton];
    if (-[EKEventViewControllerDefaultImpl allowsSubitems](self, "allowsSubitems") && (!v13 || [v9 hasSubitemForIndexPathRow:{objc_msgSend(v7, "row")}]) && (objc_msgSend(v9, "tag") != 8 || -[EKEventViewControllerDefaultImpl allowsEditing](self, "allowsEditing")))
    {
      v14 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [(EKEventDetailItem *)v8 eventViewController:v14 didSelectSubitem:v21];

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
    [v6 selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(EKEventViewControllerDefaultImpl *)self _sectionAtIndex:a4];
  v5 = [v4 headerTitle];

  return v5;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v10 = a3;
  v6 = a4;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v10 backgroundColor];
      v9 = [v7 contentView];

      [v9 setBackgroundColor:v8];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  [(EKEventViewControllerDefaultImpl *)self updateTitleWithScrollView:a3 animation:1];

  [(EKEventViewControllerDefaultImpl *)self _notifyDetailItemsOfVisibilityOnScreen];
}

- (void)updateTitleWithScrollView:(id)a3 animation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UIViewController *)self isPresentedInsidePopover])
  {
    goto LABEL_5;
  }

  [v6 contentSize];
  v8 = v7;
  v9 = [(EKEventViewControllerDefaultImpl *)self view];
  [v9 frame];
  v11 = v10;
  v12 = [(EKEventViewControllerDefaultImpl *)self view];
  [v12 safeAreaInsets];
  if (v8 < v11 - v13)
  {

LABEL_5:
    [(EKEventViewControllerDefaultImpl *)self _clearCustomTitle];
    goto LABEL_6;
  }

  v14 = [(EKEventViewControllerDefaultImpl *)self _navigationBarShouldBeHidden];

  if (v14)
  {
    goto LABEL_5;
  }

  if ([(EKCustomTitleView *)self->_customTitle animating])
  {
    goto LABEL_6;
  }

  [v6 contentOffset];
  v16 = v15;
  v17 = [(EKEventViewControllerDefaultImpl *)self view];
  [v17 safeAreaInsets];
  v19 = v16 + v18;
  [(EKEventViewControllerDefaultImpl *)self _customInsets];
  v21 = v19 + v20;

  [(EKEventTitleDetailItem *)self->_titleItem titleHeight];
  v23 = v22;
  v24 = [(EKEventTitleDetailItem *)self->_titleItem titleHeight];
  if (v25 == 0.0)
  {
    v24 = [(EKReminderTitleDetailItem *)self->_reminderTitleItem titleHeight];
    v27 = v26 + 22.0;
  }

  else
  {
    v27 = v23 + 16.0;
  }

  v28 = MEMORY[0x1D38B98D0](v24);
  if (v21 <= v27)
  {
    if (v28)
    {
      if (!v4)
      {
        if (!self->_customTitle)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v50 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      v51 = [v50 title];

      if (v51)
      {
        v52 = [MEMORY[0x1E6979538] animation];
        [v52 setDuration:0.25];
        [v52 setType:*MEMORY[0x1E697A030]];
        v53 = [(EKEventViewControllerDefaultImpl *)self navigationController];
        v54 = [v53 navigationBar];
        v55 = [v54 layer];
        [v55 addAnimation:v52 forKey:@"fadeText"];

        v56 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
        [v56 setTitle:0];
      }
    }

    customTitle = self->_customTitle;
    if (!customTitle)
    {
      goto LABEL_6;
    }

    if (v4)
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

  if ((v28 & v4) == 1)
  {
    v29 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    v30 = [v29 title];

    if (!v30)
    {
      v31 = [MEMORY[0x1E6979538] animation];
      [v31 setDuration:0.25];
      [v31 setType:*MEMORY[0x1E697A030]];
      v32 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      v33 = [v32 navigationBar];
      v34 = [v33 layer];
      [v34 addAnimation:v31 forKey:@"fadeText"];

      v35 = [(EKEventViewControllerDefaultImpl *)self event];
      v36 = [v35 title];
      v37 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
      [v37 setTitle:v36];
    }
  }

  if (!self->_customTitle && (MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    v38 = [EKCustomTitleView alloc];
    v39 = [(EKEventViewControllerDefaultImpl *)self viewTitle];
    v40 = [(EKEventViewControllerDefaultImpl *)self event];
    v41 = [v40 title];
    v42 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v43 = [(EKCustomTitleView *)v38 initWithTitle:v39 subTitle:v41 eventViewController:v42];
    v44 = self->_customTitle;
    self->_customTitle = v43;

    v45 = self->_customTitle;
    v46 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
    [v46 setTitleView:v45];

    v47 = [(EKCustomTitleView *)self->_customTitle window];

    if (!v47)
    {
      goto LABEL_5;
    }

    if (v4)
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
  v3 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
  [v3 setTitle:&stru_1F4EF6790];

  v4 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
  [v4 setTitleView:0];

  v5 = [(EKEventViewControllerDefaultImpl *)self viewTitle];
  v6 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v6 setTitle:v5];

  customTitle = self->_customTitle;
  self->_customTitle = 0;
}

+ (void)adjustLayoutForCell:(id)a3 tableViewWidth:(double)a4 numRowsInSection:(unint64_t)a5 cellRow:(unint64_t)a6 forceLayout:(BOOL)a7
{
  v7 = a7;
  v14 = a3;
  if (objc_opt_respondsToSelector())
  {
    v11 = a5 - 1 == a6 ? 4 : 2;
    v12 = a6 ? v11 : 1;
    v13 = a5 == 1 ? 5 : v12;
    if (([v14 needsLayoutForWidth:v13 position:a4] & 1) != 0 || v7)
    {
      [v14 layoutForWidth:v13 position:a4];
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
    v8 = [(EKEvent *)event eventStore];
    v9 = [v8 timeZone];
    v10 = v7(event, v9);

    v11 = [v10 dictionary];
    if (v11)
    {
      [v3 addObject:v11];
    }
  }

  return v3;
}

- (void)detailItem:(id)a3 performActionsOnCellAtIndexPath:(id)a4 actions:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(EKEventViewControllerDefaultImpl *)self tableView];
  v10 = [v9 cellForRowAtIndexPath:v8];

  v7[2](v7, v10);
}

- (void)detailItem:(id)a3 wantsRowReload:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(EKEventViewControllerDefaultImpl *)self _sectionForDetailItem:a3];
  v8 = MEMORY[0x1E696AC88];
  v9 = [v6 row];
  v10 = [v6 section];

  v11 = [v8 indexPathForRow:v9 inSection:v10 + v7];
  v12 = [(EKEventViewControllerDefaultImpl *)self tableView];
  v14[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v12 reloadRowsAtIndexPaths:v13 withRowAnimation:0];
}

- (void)detailItem:(id)a3 wantsRowInsertions:(id)a4 rowDeletions:(id)a5 rowReloads:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v37 = a5;
  v35 = a6;
  v11 = [(EKEventViewControllerDefaultImpl *)self _sectionForDetailItem:a3];
  v12 = [(EKEventViewControllerDefaultImpl *)self tableView];
  [v12 beginUpdates];
  v36 = v10;
  if (v10)
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = v10;
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

    [v12 insertRowsAtIndexPaths:v13 withRowAnimation:0];
  }

  if (v37)
  {
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v37, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = v37;
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

    [v12 deleteRowsAtIndexPaths:v20 withRowAnimation:0];
  }

  v27 = v35;
  if (v35)
  {
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v35, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v35;
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

    [v12 reloadRowsAtIndexPaths:v28 withRowAnimation:0];
    v27 = v35;
  }

  [v12 endUpdates];
}

- (void)detailItem:(id)a3 wantsIndexPathsScrolledToVisible:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(EKEventViewControllerDefaultImpl *)self _sectionForDetailItem:a3];
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v6;
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
        v18 = [(EKEventViewControllerDefaultImpl *)self tableView];
        [v18 rectForRowAtIndexPath:v17];
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
    v27 = [(EKEventViewControllerDefaultImpl *)self tableView];
    [v27 scrollRectToVisible:1 animated:{x + -10.0, y, width, height + 20.0}];
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
    v4 = [(EKEventViewControllerDefaultImpl *)self navigationController];
    if (v4)
    {
      v5 = [(EKEventViewControllerDefaultImpl *)self navigationController];
      if ([v5 isNavigationBarHidden])
      {
        v3 = 0;
      }

      else
      {
        v6 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
        v7 = [v6 rightBarButtonItem];
        if ([v7 systemItem] == 2)
        {
          v3 = 1;
        }

        else
        {
          v8 = [(EKEventViewControllerDefaultImpl *)self navigationItem];
          v9 = [v8 leftBarButtonItem];
          v3 = [v9 systemItem] == 2;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v10 = [(EKEventViewControllerDefaultImpl *)self _shouldShowInlineButtonFromDelegate];
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
    v14 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    v15 = [WeakRetained eventViewControllerShouldShowInlineEditButtonForInvitations:v14];
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
  v17 = [(EKEventViewControllerDefaultImpl *)self noninteractivePlatterMode];
  v16 = 0;
  if (!v17 && v10)
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
  v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v8 = [v6 eventViewControllerShouldHandleInlineEdit:v7];

  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v9 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [v10 eventViewControllerInlineEditButtonWasTapped:v9];

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
  v6 = [v5 eventViewControllerShouldShowNextPreviousRecurrenceButtons];

  if (!v6)
  {
    return 0;
  }

  if (!self->_cachedShowNext)
  {
    v7 = [(EKEvent *)self->_event nextOccurrence];

    cachedShowNext = self->_cachedShowNext;
    v9 = MEMORY[0x1E695E118];
    if (!v7)
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
  v6 = [v5 eventViewControllerShouldShowNextPreviousRecurrenceButtons];

  if (!v6)
  {
    return 0;
  }

  if (!self->_cachedShowPrevious)
  {
    v7 = [(EKEvent *)self->_event previousOccurrence];

    cachedShowPrevious = self->_cachedShowPrevious;
    v9 = MEMORY[0x1E695E118];
    if (!v7)
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
    v5 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewControllerNextButtonWasTapped:v5];
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
    v5 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
    [WeakRetained eventViewControllerPreviousButtonWasTapped:v5];
  }
}

- (void)uneditableButtonDetailItem:(id)a3 requestsShowEvent:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
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
      v10 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
      [WeakRetained eventViewController:v10 requestsShowEvent:v6];
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

- (void)copy:(id)a3
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

- (void)cut:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v6 pasteboardManager];

    v7 = [MEMORY[0x1E695DFD8] setWithObject:self->_event];
    [v8 cutEvents:v7 delegate:self];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (sel__performEditKeyCommand == a3)
  {
    v8 = [(EKEventViewControllerDefaultImpl *)self _canPerformEditKeyCommand];
    goto LABEL_8;
  }

  v7 = 0;
  if (([MEMORY[0x1E6993458] declinesToPerformCutCopyPasteAction:a3 withSender:v6] & 1) == 0 && sel_paste_ != a3)
  {
    if (sel_copy_ == a3)
    {
      v9 = MEMORY[0x1E6993458];
      v17[0] = self->_event;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v11 = v9;
      v12 = 1;
    }

    else
    {
      if (sel_cut_ != a3)
      {
        v15.receiver = self;
        v15.super_class = EKEventViewControllerDefaultImpl;
        v8 = [(EKEventViewControllerDefaultImpl *)&v15 canPerformAction:a3 withSender:v6];
LABEL_8:
        v7 = v8;
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

- (void)pasteboardManager:(id)a3 presentAlert:(id)a4
{
  v5 = a4;
  v6 = [(EKEventViewControllerDefaultImpl *)self presentationSourceViewController];
  [v5 presentFromSource:v6];
}

- (void)setToolbarItems:(id)a3
{
  v4 = a3;
  v5 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v5 setToolbarItems:v4];
}

- (id)toolbarItems
{
  v2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v3 = [v2 toolbarItems];

  return v3;
}

- (void)setToolbarItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  [v7 setToolbarItems:v6 animated:v4];
}

- (id)navigationItem
{
  v2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v3 = [v2 navigationItem];

  return v3;
}

- (id)navigationController
{
  v2 = [(EKEventViewControllerDefaultImpl *)self _ekEventViewController];
  v3 = [v2 navigationController];

  return v3;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    v4 = [(EKEventViewControllerDefaultImpl *)self navigationController];
  }

  return v4;
}

- (EKEventViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end