@interface EKEventViewControllerOOPWrapperImpl
+ (id)_orderedActionsForMask:(int64_t)a3;
+ (void)setDefaultDatesForEvent:(id)a3;
- (BOOL)_backingEventAllowsEditing;
- (BOOL)_isDisplayingDeletableEvent;
- (BOOL)_isDisplayingInvitation;
- (BOOL)_performSave:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage;
- (BOOL)_shouldDisplayDoneButton;
- (BOOL)_shouldDisplayStatusButtons;
- (BOOL)_shouldPopSelf;
- (BOOL)_shouldShowEditButton;
- (BOOL)allowsCalendarPreview;
- (BOOL)allowsEditing;
- (BOOL)allowsInviteResponses;
- (BOOL)allowsSubitems;
- (BOOL)calendarPreviewIsInlineDayView;
- (BOOL)canShowRealContent;
- (BOOL)hasInProcessNavBar;
- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter;
- (BOOL)isEditingMode;
- (BOOL)isICSPreview;
- (BOOL)isLargeDayView;
- (BOOL)minimalMode;
- (BOOL)noninteractivePlatterMode;
- (BOOL)showsAddToCalendarForICSPreview;
- (BOOL)showsDelegateMessage;
- (BOOL)showsDelegatorMessage;
- (BOOL)showsDeleteForICSPreview;
- (BOOL)showsDetectedConferenceItem;
- (BOOL)showsDoneButton;
- (BOOL)showsOutOfDateMessage;
- (BOOL)showsUpdateCalendarForICSPreview;
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (EKEventViewControllerOOPWrapperImpl)init;
- (EKEventViewDelegate)delegate;
- (id)_detachSheetHandler;
- (id)_proposedDate;
- (id)_statusButtonsContainerView;
- (id)_statusButtonsView;
- (id)_viewControllerForEditorPresentation;
- (id)navigationItem;
- (id)presentationSourceViewController;
- (id)statusButtonActions;
- (id)toolbarItems;
- (id)viewTitle;
- (int64_t)_actionsMask;
- (void)_acceptProposedTimeWithSourceViewForPopover:(id)a3;
- (void)_addToCalendarClicked:(id)a3;
- (void)_cancelProposedTime;
- (void)_configureStatusButtonsToolbar;
- (void)_deleteClicked:(id)a3;
- (void)_dismissEditor:(BOOL)a3 deleted:(BOOL)a4;
- (void)_performDelete:(int64_t)a3 editor:(id)a4;
- (void)_prepareEventForEdit:(id)a3;
- (void)_presentDetachSheetFromView:(id)a3;
- (void)_rejectProposedTime;
- (void)_saveStatus:(int64_t)a3 sourceViewForPopover:(id)a4;
- (void)_saveStatus:(int64_t)a3 span:(int64_t)a4;
- (void)_updateNavBarAnimated:(BOOL)a3;
- (void)_updateResponse;
- (void)_updateResponseVisibility;
- (void)_updateStatusButtonsActions;
- (void)cancelButtonTapped;
- (void)changeEditButtonTitleForMode:(BOOL)a3;
- (void)completeWithAction:(int64_t)a3;
- (void)doneButtonTapped;
- (void)editButtonTapped;
- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 waitUntil:(id)a5;
- (void)fullReloadWithNewEvent:(id)a3;
- (void)invokeAction:(int64_t)a3 eventStatusButtonsView:(id)a4;
- (void)performAddToCalendar;
- (void)presentEditorAnimated:(BOOL)a3;
- (void)reloadRemoteViewWithUpdatedEventID:(id)a3 withAction:(int64_t)a4 waitUntil:(id)a5;
- (void)setActiveEventEditor:(id)a3;
- (void)setAllowsCalendarPreview:(BOOL)a3;
- (void)setAllowsEditing:(BOOL)a3;
- (void)setAllowsInviteResponses:(BOOL)a3;
- (void)setAllowsSubitems:(BOOL)a3;
- (void)setCalendarPreviewIsInlineDayView:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEvent:(id)a3;
- (void)setICSPreview:(BOOL)a3;
- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)a3;
- (void)setIsEditingMode:(BOOL)a3;
- (void)setIsLargeDayView:(BOOL)a3;
- (void)setMinimalMode:(BOOL)a3;
- (void)setNeedsReload;
- (void)setNoninteractivePlatterMode:(BOOL)a3;
- (void)setShowsAddToCalendarForICSPreview:(BOOL)a3;
- (void)setShowsDelegateMessage:(BOOL)a3;
- (void)setShowsDelegatorMessage:(BOOL)a3;
- (void)setShowsDeleteForICSPreview:(BOOL)a3;
- (void)setShowsDetectedConferenceItem:(BOOL)a3;
- (void)setShowsDoneButton:(BOOL)a3;
- (void)setShowsOutOfDateMessage:(BOOL)a3;
- (void)setShowsUpdateCalendarForICSPreview:(BOOL)a3;
- (void)setToolbarItems:(id)a3;
- (void)setToolbarItems:(id)a3 animated:(BOOL)a4;
- (void)updateStatusButtonsView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation EKEventViewControllerOOPWrapperImpl

+ (void)setDefaultDatesForEvent:(id)a3
{
  v3 = a3;
  v6 = CUIKDateRangeForNewEventOnDay();
  v4 = [v6 startDate];
  [v3 setStartDate:v4];

  v5 = [v6 endDate];
  [v3 setEndDateUnadjustedForLegacyClients:v5];
}

- (EKEventViewControllerOOPWrapperImpl)init
{
  v5.receiver = self;
  v5.super_class = EKEventViewControllerOOPWrapperImpl;
  v2 = [(EKEventViewControllerOOPWrapperImpl *)&v5 init];
  v3 = objc_alloc_init(_TtC10EventKitUI28EKEventViewControllerOOPImpl);
  [(EKEventViewControllerOOPWrapperImpl *)v2 setVc:v3];

  return v2;
}

- (void)viewDidLoad
{
  v47[3] = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = EKEventViewControllerOOPWrapperImpl;
  [(EKEventViewControllerOOPWrapperImpl *)&v46 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(EKEventViewControllerOOPWrapperImpl *)self viewTitle];
  [(EKEventViewControllerOOPWrapperImpl *)self setTitle:v5];

  v6 = [(EKEventViewControllerOOPWrapperImpl *)self viewTitle];
  v7 = [(EKEventViewControllerOOPWrapperImpl *)self parentViewController];
  [v7 setTitle:v6];

  v8 = [(EKEventViewControllerOOPWrapperImpl *)self hasInProcessNavBar];
  v9 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v9 setHasInProcessNavBar:v8];

  if ((MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self _updateResponseVisibility];
  }

  v10 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [(EKEventViewControllerOOPWrapperImpl *)self addChildViewController:v10];

  v11 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v12 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v13 = [v12 view];
  [v11 addSubview:v13];

  v14 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v14 didMoveToParentViewController:self];

  v15 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v16 = [v15 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = MEMORY[0x1E696ACD8];
  v45 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v44 = [v45 view];
  v42 = [v44 leadingAnchor];
  v43 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v47[0] = v40;
  v39 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v38 = [v39 view];
  v35 = [v38 topAnchor];
  v36 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v17 = [v36 topAnchor];
  v18 = [v35 constraintEqualToAnchor:v17];
  v47[1] = v18;
  v19 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v20 = [v19 view];
  v21 = [v20 trailingAnchor];
  v22 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v47[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  [v37 activateConstraints:v25];

  if (MEMORY[0x1D38B98D0]())
  {
    v26 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
    v27 = [v26 view];
    v28 = [v27 bottomAnchor];
    v29 = [(EKEventViewControllerOOPWrapperImpl *)self view];
    v30 = v29;
LABEL_7:
    v32 = [v29 bottomAnchor];
    v33 = [v28 constraintEqualToAnchor:v32];
    [v33 setActive:1];
    goto LABEL_8;
  }

  statusButtonsContainerView = self->_statusButtonsContainerView;
  v26 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v27 = [v26 view];
  v28 = [v27 bottomAnchor];
  v29 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v30 = v29;
  if (!statusButtonsContainerView)
  {
    goto LABEL_7;
  }

  v32 = [v29 safeAreaLayoutGuide];
  v33 = [v32 bottomAnchor];
  v34 = [v28 constraintEqualToAnchor:v33];
  [v34 setActive:1];

LABEL_8:
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKEventViewControllerOOPWrapperImpl;
  [(EKEventViewControllerOOPWrapperImpl *)&v4 viewWillAppear:a3];
  [(EKEventViewControllerOOPWrapperImpl *)self _updateStatusButtonsActions];
  [(EKEventViewControllerOOPWrapperImpl *)self _updateResponse];
  if (MEMORY[0x1D38B98D0]([(EKEventViewControllerOOPWrapperImpl *)self _updateNavBarAnimated:0]))
  {
    [(EKEventViewControllerOOPWrapperImpl *)self _updateResponseVisibility];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = EKEventViewControllerOOPWrapperImpl;
  [(EKEventViewControllerOOPWrapperImpl *)&v10 viewWillDisappear:a3];
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [v8 performSelector:sel_eventViewControllerWillDisappear_ withObject:self];
    }
  }

  v9 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  [v9 setToolbarHidden:1];
}

- (void)viewWillLayoutSubviews
{
  if ((MEMORY[0x1D38B98D0](self, a2) & 1) == 0)
  {
    v3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
    v5 = [v3 toolbar];

    v4 = v5;
    if (v5)
    {
      [(SingleToolbarItemContainerView *)self->_statusButtonsContainerView setBoundsWithToolbar:v5];
      v4 = v5;
    }
  }
}

- (CGSize)preferredContentSize
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)viewTitle
{
  MEMORY[0x1D38B98D0](self, a2);
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Event Details" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)_updateNavBarAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldShowEditButton])
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editButtonTapped];
    if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayDoneButton])
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
      v6 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
      [v6 setLeftBarButtonItem:v9 animated:v3];

      v7 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
      [v7 setRightBarButtonItem:v5 animated:v3];
    }

    else
    {
      v5 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
      [v5 setRightBarButtonItem:v9 animated:v3];
    }
  }

  else if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayDoneButton])
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
    v8 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
    [v8 setRightBarButtonItem:v9 animated:v3];
  }

  else
  {
    v9 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
    [v9 setRightBarButtonItem:0 animated:v3];
  }
}

- (BOOL)_shouldShowEditButton
{
  if (![(EKEventViewControllerOOPWrapperImpl *)self allowsEditing]|| ![(EKEventViewControllerOOPWrapperImpl *)self _backingEventAllowsEditing])
  {
    return 0;
  }

  return [(EKEventViewControllerOOPWrapperImpl *)self canShowRealContent];
}

- (BOOL)_backingEventAllowsEditing
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  if ([v3 isEditable])
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v5 = [v4 eventStore];
    if (v5)
    {
      v6 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      v7 = [v6 calendar];
      v8 = [v7 isSuggestedEventCalendar] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_shouldDisplayDoneButton
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
  v4 = [v3 leftBarButtonItem];
  if (![(EKEventViewControllerOOPWrapperImpl *)self showsDoneButton])
  {
    LOBYTE(v5) = 0;
    goto LABEL_15;
  }

  if (([v3 hidesBackButton] & 1) != 0 || v4 && objc_msgSend(v4, "systemItem"))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
    v7 = [v6 viewControllers];

    if ([v7 count])
    {
      v8 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      v9 = [v7 objectAtIndex:0];
      v5 = v8 == v9;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if (v4)
  {
    if (![v4 systemItem])
    {
      [v3 setLeftBarButtonItem:0];
    }

    LOBYTE(v5) = 1;
  }

LABEL_15:

  return v5;
}

- (void)doneButtonTapped
{
  if ([(EKEventViewControllerOOPWrapperImpl *)self canShowRealContent])
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
    [v4 doneButtonTapped];
  }

  else
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v3 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
    [v4 eventViewController:v3 didCompleteWithAction:0];
  }
}

- (void)editButtonTapped
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      v8 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      v9 = [v7 eventViewControllerEditButtonTemporarilyDisabled:v8];

      if (v9)
      {
        return;
      }
    }
  }

  v10 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (v10)
  {
    v11 = v10;
    v12 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [v14 performSelector:sel_eventViewControllerWillBeginEditingEvent_ withObject:self];
    }
  }

  v15 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (([v15 conformsToProtocol:&unk_1F4F9EBE0] & 1) == 0)
  {

LABEL_12:
    v21 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v22 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:v21 creationMethod:0 viewStart:4 eventEditViewDelegate:self];

    [(EKEventViewControllerOOPWrapperImpl *)self setActiveEventEditor:v22];
    goto LABEL_13;
  }

  v16 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

  v18 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v19 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v20 = [v18 eventViewDelegateShouldCreateOwnEditViewController:v19];

  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:

  [(EKEventViewControllerOOPWrapperImpl *)self presentEditorAnimated:1];
}

- (void)cancelButtonTapped
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v3 setIsEditingMode:0];

  [(EKEventViewControllerOOPWrapperImpl *)self changeEditButtonTitleForMode:0];
}

- (void)changeEditButtonTitleForMode:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = &selRef_cancelButtonTapped;
  if (!v3)
  {
    v7 = &selRef_editButtonTapped;
  }

  v9 = [v5 initWithBarButtonSystemItem:v6 target:self action:*v7];
  v8 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
  [v8 setLeftBarButtonItem:v9 animated:1];
}

- (BOOL)hasInProcessNavBar
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v3 = [v2 navigationController];

  if (v3)
  {
    v4 = [v3 isNavigationBarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateResponse
{
  v13 = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsView];
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v4 = [v3 calendar];

  if (v4)
  {
    v5 = [v4 source];
    v6 = [v5 constraints];
    v7 = [v6 statusesAreAccurate] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v9 = [v8 participationStatus];

  if (v7 && (-[EKEventViewControllerOOPWrapperImpl event](self, "event"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isStatusDirty], v10, !v11) || (v9 - 2) > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1D36007B8[v9 - 2];
  }

  [v13 setSelectedAction:v12];
}

- (BOOL)_shouldDisplayStatusButtons
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self statusButtonActions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_updateResponseVisibility
{
  v31[4] = *MEMORY[0x1E69E9840];
  if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayStatusButtons])
  {
    v3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
    [v3 setToolbarHidden:0];

    if (MEMORY[0x1D38B98D0]())
    {
      v4 = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];

      if (!v4)
      {

        [(EKEventViewControllerOOPWrapperImpl *)self _configureStatusButtonsToolbar];
      }
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v8 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
      v9 = [v8 toolbar];
      [v9 setBackgroundColor:v7];

      v10 = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];
      if (!v10 || (statusButtonsContainerView = self->_statusButtonsContainerView, v10, !statusButtonsContainerView))
      {
        v12 = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsContainerView];
        v13 = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsView];
        [v12 addSubview:v13];
        v24 = MEMORY[0x1E696ACD8];
        v29 = [v13 leadingAnchor];
        v28 = [v12 leadingAnchor];
        v27 = [v29 constraintEqualToAnchor:v28];
        v31[0] = v27;
        v26 = [v13 trailingAnchor];
        v25 = [v12 trailingAnchor];
        v23 = [v26 constraintEqualToAnchor:v25];
        v31[1] = v23;
        v14 = [v13 topAnchor];
        v15 = [v12 topAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];
        v31[2] = v16;
        v17 = [v13 bottomAnchor];
        v18 = [v12 bottomAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        v31[3] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
        [v24 activateConstraints:v20];

        v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v12];
        v30 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [(EKEventViewControllerOOPWrapperImpl *)self setToolbarItems:v22 animated:1];
      }
    }
  }

  else
  {
    v5 = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];

    if (v5)
    {
      v6 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
      [v6 setToolbarHidden:1];

      [(EKEventViewControllerOOPWrapperImpl *)self setToolbarItems:0 animated:1];
    }
  }
}

- (void)_updateStatusButtonsActions
{
  v6 = [(EKEventViewControllerOOPWrapperImpl *)self statusButtonActions];
  v3 = [(EKUIEventStatusButtonsView *)self->_statusButtonsView actions];
  v4 = [v6 isEqualToArray:v3];

  if ((v4 & 1) == 0)
  {
    if (MEMORY[0x1D38B98D0]([(EKUIEventStatusButtonsView *)self->_statusButtonsView setActions:v6]))
    {
      v5 = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];

      if (v5)
      {
        [(EKEventViewControllerOOPWrapperImpl *)self updateStatusButtonsView];
        [(EKEventViewControllerOOPWrapperImpl *)self _configureStatusButtonsToolbar];
      }
    }
  }
}

- (id)_statusButtonsView
{
  statusButtonsView = self->_statusButtonsView;
  if (!statusButtonsView)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self updateStatusButtonsView];
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

  v5 = [(EKEventViewControllerOOPWrapperImpl *)self traitCollection];
  v4 = [v5 verticalSizeClass] != 1;

LABEL_6:
  v6 = [EKUIEventStatusButtonsView alloc];
  v7 = [(EKEventViewControllerOOPWrapperImpl *)self statusButtonActions];
  v8 = [(EKUIEventStatusButtonsView *)v6 initWithFrame:v7 actions:self delegate:1 options:v4 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  statusButtonsView = self->_statusButtonsView;
  self->_statusButtonsView = v8;

  [(EKUIEventStatusButtonsView *)self->_statusButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(EKEventViewControllerOOPWrapperImpl *)self _isDisplayingInvitation]^ 1;
  v11 = self->_statusButtonsView;

  [(EKUIEventStatusButtonsView *)v11 setDisableButtonHighlights:v10];
}

- (void)_configureStatusButtonsToolbar
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsView];
  v13 = [v3 statusButtons];

  v4 = objc_opt_new();
  if ([v13 count])
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = [v13 objectAtIndexedSubscript:v5];
      v8 = [v6 initWithCustomView:v7];

      [v4 addObject:v8];
      ++v5;
    }

    while ([v13 count] > v5);
  }

  [(EKEventViewControllerOOPWrapperImpl *)self setToolbarItems:v4 animated:1];
  v9 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  v10 = [v9 toolbar];
  [v10 sizeToFit];

  v11 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  v12 = [v11 toolbar];
  [v12 _setItemDistribution:1];
}

- (id)statusButtonActions
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self _actionsMask];
  v3 = objc_opt_class();

  return [v3 _orderedActionsForMask:v2];
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

- (BOOL)canShowRealContent
{
  v3 = [MEMORY[0x1E6966A18] realAuthorizationStatusForEntityType:0];
  if (v3 == 4)
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v5 = [v4 eventStore];
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v7 = [v5 isCurrentProcessCreatorOfEvent:v6];

    if (v7)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }
  }

  v8 = v3 - 3;
  v9 = [(EKEventViewControllerOOPWrapperImpl *)self event];

  return v8 < 2 && v9 != 0;
}

- (BOOL)_shouldDisplayDelegateOrOutOfDateMessage
{
  if ([(EKEventViewControllerOOPWrapperImpl *)self showsOutOfDateMessage]|| [(EKEventViewControllerOOPWrapperImpl *)self showsDelegatorMessage])
  {
    return 1;
  }

  return [(EKEventViewControllerOOPWrapperImpl *)self showsDelegateMessage];
}

- (BOOL)_isDisplayingInvitation
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self allowsInviteResponses];
  if (v3)
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v5 = [v4 allowsParticipationStatusModifications];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)_isDisplayingDeletableEvent
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v4 = [v3 calendar];
  if ([v4 allowsContentModifications])
  {
    v5 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v6 = [v5 isPrivateEventSharedToMe];

    if (!v6)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  if ([v8 status] == 3)
  {
    v9 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v10 = [v9 calendar];
    v11 = [v10 source];
    if ([v11 isDelegate])
    {
      v12 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      v13 = [v12 calendar];
      v14 = [v13 source];
      v7 = [v14 isWritable];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_actionsMask
{
  if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayDelegateOrOutOfDateMessage]|| ![(EKEventViewControllerOOPWrapperImpl *)self canShowRealContent])
  {
    return 0;
  }

  if ([(EKEventViewControllerOOPWrapperImpl *)self _isDisplayingInvitation])
  {
    return 7;
  }

  if ([(EKEventViewControllerOOPWrapperImpl *)self isICSPreview])
  {
    if ([(EKEventViewControllerOOPWrapperImpl *)self showsAddToCalendarForICSPreview])
    {
      v3 = 8;
    }

    else if ([(EKEventViewControllerOOPWrapperImpl *)self showsUpdateCalendarForICSPreview])
    {
      v3 = 2048;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if ([(EKEventViewControllerOOPWrapperImpl *)self _isDisplayingDeletableEvent]&& (![(EKEventViewControllerOOPWrapperImpl *)self isICSPreview]|| [(EKEventViewControllerOOPWrapperImpl *)self showsDeleteForICSPreview]))
  {
    v5 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v6 = [v5 status];

    if (v6 == 3)
    {
      return v3 | 0x100000;
    }

    else
    {
      return v3 | 0x10;
    }
  }

  return v3;
}

+ (id)_orderedActionsForMask:(int64_t)a3
{
  v4 = objc_opt_new();
  for (i = 0; i != 11; ++i)
  {
    if ((_orderedActionsForMask__actionOrder_0[i] & a3) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  return v4;
}

- (void)_prepareEventForEdit:(id)a3
{
  v7 = a3;
  v3 = [v7 calendar];

  if (!v3)
  {
    v4 = [v7 eventStore];
    v5 = [v4 defaultCalendarForNewEvents];
    [v7 setCalendar:v5];
  }

  v6 = [v7 startDate];

  if (!v6)
  {
    [objc_opt_class() setDefaultDatesForEvent:v7];
  }
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

  if (a3 <= 2047)
  {
    if (a3 <= 3)
    {
      if (a3 == 1)
      {
        v8 = 2;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_27;
        }

        v8 = 4;
      }
    }

    else
    {
      if (a3 != 4)
      {
        if (a3 == 8)
        {
          goto LABEL_21;
        }

        if (a3 != 16)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      v8 = 3;
    }

    [(EKEventViewControllerOOPWrapperImpl *)self _saveStatus:v8 sourceViewForPopover:v6];
    goto LABEL_27;
  }

  if (a3 < 0x8000)
  {
    if (a3 != 2048)
    {
      if (a3 == 4096)
      {
        [(EKEventViewControllerOOPWrapperImpl *)self _acceptProposedTimeWithSourceViewForPopover:v6];
      }

      else if (a3 == 0x2000)
      {
        [(EKEventViewControllerOOPWrapperImpl *)self _rejectProposedTime];
      }

      goto LABEL_27;
    }

LABEL_21:
    [(EKEventViewControllerOOPWrapperImpl *)self _addToCalendarClicked:self];
    goto LABEL_27;
  }

  if (a3 == 0x8000)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self _cancelProposedTime];
    goto LABEL_27;
  }

  if (a3 == 0x80000 || a3 == 0x100000)
  {
LABEL_17:
    [(EKEventViewControllerOOPWrapperImpl *)self _deleteClicked:v6];
  }

LABEL_27:
}

- (id)_proposedDate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
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
            v11 = [(EKEventViewControllerOOPWrapperImpl *)self event];
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
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self _proposedDate];
  if (v5)
  {
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self event];
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
    if ([v6 hasRecurrenceRules])
    {
      v19 = [(EKEventViewControllerOOPWrapperImpl *)self presentationSourceViewController];
      [v4 bounds];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __83__EKEventViewControllerOOPWrapperImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke;
      v22[3] = &unk_1E843FE10;
      v22[4] = self;
      v20 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v19 sourceView:v4 sourceRect:v6 forEvent:v22 withCompletionHandler:?];
      recurrenceAlertController = self->_recurrenceAlertController;
      self->_recurrenceAlertController = v20;
    }

    else
    {
      [(EKEventViewControllerOOPWrapperImpl *)self _performSave:0 animated:0];
    }
  }
}

void __83__EKEventViewControllerOOPWrapperImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke(uint64_t a1, uint64_t a2)
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
    v7 = *(v6 + 1016);
    *(v6 + 1016) = 0;

    v8 = *(a1 + 32);

    [v8 _performSave:v5 animated:0];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 1016);
    *(v3 + 1016) = 0;
  }
}

- (void)_rejectProposedTime
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
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

  v11 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  if ([v11 hasRecurrenceRules])
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  [(EKEventViewControllerOOPWrapperImpl *)self _performSave:v12 animated:0];
}

- (void)_cancelProposedTime
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [v3 setProposedStartDate:0];

  [(EKEventViewControllerOOPWrapperImpl *)self _performSave:0 animated:0];
}

- (void)_saveStatus:(int64_t)a3 sourceViewForPopover:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v13 = v6;
    v7 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v8 = [v7 responseMustApplyToAll];

    if (v8)
    {
      v9 = 4;
    }

    else
    {
      v10 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      v11 = [v10 hasRecurrenceRules];

      if (v11)
      {
        self->_pendingStatus = a3;
        [(EKEventViewControllerOOPWrapperImpl *)self _presentDetachSheetFromView:v13];
LABEL_8:
        v6 = v13;
        goto LABEL_9;
      }

      v12 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      [v12 isDetached];

      v9 = 0;
    }

    [(EKEventViewControllerOOPWrapperImpl *)self _saveStatus:a3 span:v9];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_saveStatus:(int64_t)a3 span:(int64_t)a4
{
  v7 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [v7 setParticipationStatus:a3];

  v8 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [v8 setInvitationStatus:0];

  [(EKEventViewControllerOOPWrapperImpl *)self _performSave:a4 animated:1];
}

- (BOOL)_performSave:(int64_t)a3 animated:(BOOL)a4
{
  v6 = [(UIResponder *)self EKUI_editor:a3];
  v7 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v14 = 0;
  v8 = [v6 saveEvent:v7 span:a3 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0 && v9)
  {
    v10 = [v9 domain];
    if (v10 != *MEMORY[0x1E6966808])
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = [v9 code];

    if (v11 == 1010)
    {
      v10 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      v12 = [v10 eventStore];
      [v12 rollback];

      goto LABEL_6;
    }
  }

LABEL_7:
  [(EKEventViewControllerOOPWrapperImpl *)self completeWithAction:1];

  return 1;
}

- (void)_deleteClicked:(id)a3
{
  v4 = a3;
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v6 = [v5 status];

  v7 = [(UIResponder *)self EKUI_editor];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__EKEventViewControllerOOPWrapperImpl__deleteClicked___block_invoke;
  aBlock[3] = &unk_1E8441060;
  v25 = v6 == 3;
  aBlock[4] = self;
  v24 = v7;
  if (v6 == 3)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v9 = v7;
  v10 = _Block_copy(aBlock);
  v11 = [(EKEventViewControllerOOPWrapperImpl *)self presentationSourceViewController];
  [v4 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v21 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v8 viewController:v11 sourceView:v4 sourceRect:v20 forEvent:0 stringForDeleteButton:v10 withCompletionHandler:v13, v15, v17, v19];

  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v21;
}

void __54__EKEventViewControllerOOPWrapperImpl__deleteClicked___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v3 = 2;
  }

  else if (a2 == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v3 = 1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_11;
    }

    if (*(a1 + 48))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
  }

  [v4 _performDelete:v3 editor:v5];
LABEL_11:
  v6 = *(a1 + 32);
  v7 = *(v6 + 1016);
  *(v6 + 1016) = 0;
}

- (void)_performDelete:(int64_t)a3 editor:(id)a4
{
  v6 = MEMORY[0x1E6966A10];
  v7 = a4;
  v8 = [v6 sharedInstance];
  v9 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [v8 handleEventDeletion:v9];

  v10 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v15 = 0;
  LOBYTE(v9) = [v7 deleteEvent:v10 span:a3 error:&v15];

  v11 = v15;
  if ((v9 & 1) == 0)
  {
    v12 = [v11 domain];
    if (v12 != *MEMORY[0x1E6966808])
    {
LABEL_5:

      goto LABEL_6;
    }

    v13 = [v11 code];

    if (v13 == 1010)
    {
      v12 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      v14 = [v12 eventStore];
      [v14 rollback];

      goto LABEL_5;
    }
  }

LABEL_6:
  [(EKEventViewControllerOOPWrapperImpl *)self completeWithAction:2];
}

- (void)_addToCalendarClicked:(id)a3
{
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [v8 performSelector:sel_eventViewControllerDidRequestAddToCalendar_ withObject:self];
    }
  }
}

- (void)_presentDetachSheetFromView:(id)a3
{
  v4 = a3;
  v17 = [(EKEventViewControllerOOPWrapperImpl *)self _detachSheetHandler];
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self presentationSourceViewController];
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v15 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v5 sourceView:v4 sourceRect:v14 forEvent:v17 withCompletionHandler:v7, v9, v11, v13];

  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v15;
}

- (id)_detachSheetHandler
{
  v2 = self->_pendingStatus == 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__EKEventViewControllerOOPWrapperImpl__detachSheetHandler__block_invoke;
  v7[3] = &unk_1E8441088;
  v3 = !v2;
  v7[4] = self;
  v8 = v3;
  v4 = _Block_copy(v7);
  v5 = _Block_copy(v4);

  return v5;
}

void __58__EKEventViewControllerOOPWrapperImpl__detachSheetHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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
    [v6 _saveStatus:v6[125] span:v4];
  }

  else
  {
    [v6 _performSave:v4 animated:1];
  }

LABEL_12:
  v7 = *(a1 + 32);
  v8 = *(v7 + 1016);
  *(v7 + 1016) = 0;
}

- (void)setEvent:(id)a3
{
  v4 = a3;
  [(EKEventViewControllerOOPWrapperImpl *)self _prepareEventForEdit:v4];
  v5 = [v4 eventStore];
  eventStore = self->_eventStore;
  self->_eventStore = v5;

  v7 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v7 setEvent:v4];
}

- (EKEvent)event
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 event];

  return v3;
}

- (void)setAllowsEditing:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsEditing:v3];
}

- (BOOL)allowsEditing
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 allowsEditing];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v5 setDelegate:v4];
}

- (EKEventViewDelegate)delegate
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 delegate];

  return v3;
}

- (void)setAllowsCalendarPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsCalendarPreview:v3];
}

- (BOOL)allowsCalendarPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 allowsCalendarPreview];

  return v3;
}

- (void)setIsEditingMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setIsEditingMode:v3];
}

- (BOOL)isEditingMode
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 isEditingMode];

  return v3;
}

- (void)setCalendarPreviewIsInlineDayView:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setCalendarPreviewIsInlineDayView:v3];
}

- (BOOL)calendarPreviewIsInlineDayView
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 calendarPreviewIsInlineDayView];

  return v3;
}

- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setInlineDayViewRespectsSelectedCalendarsFilter:v3];
}

- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 inlineDayViewRespectsSelectedCalendarsFilter];

  return v3;
}

- (void)setICSPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setICSPreview:v3];
}

- (BOOL)isICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 ICSPreview];

  return v3;
}

- (void)setAllowsInviteResponses:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsInviteResponses:v3];
}

- (BOOL)allowsInviteResponses
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 allowsInviteResponses];

  return v3;
}

- (void)setShowsAddToCalendarForICSPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsAddToCalendarForICSPreview:v3];
}

- (BOOL)showsAddToCalendarForICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsAddToCalendarForICSPreview];

  return v3;
}

- (void)setShowsUpdateCalendarForICSPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsUpdateCalendarForICSPreview:v3];
}

- (BOOL)showsUpdateCalendarForICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsUpdateCalendarForICSPreview];

  return v3;
}

- (void)setShowsDeleteForICSPreview:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDeleteForICSPreview:v3];
}

- (BOOL)showsDeleteForICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsDeleteForICSPreview];

  return v3;
}

- (void)setAllowsSubitems:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsSubitems:v3];
}

- (BOOL)allowsSubitems
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 allowsSubitems];

  return v3;
}

- (void)setShowsDoneButton:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDoneButton:v3];
}

- (BOOL)showsDoneButton
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsDoneButton];

  return v3;
}

- (void)setShowsOutOfDateMessage:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsOutOfDateMessage:v3];
}

- (BOOL)showsOutOfDateMessage
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsOutOfDateMessage];

  return v3;
}

- (void)setShowsDelegatorMessage:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDelegatorMessage:v3];
}

- (BOOL)showsDelegatorMessage
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsDelegatorMessage];

  return v3;
}

- (void)setShowsDelegateMessage:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDelegateMessage:v3];
}

- (BOOL)showsDelegateMessage
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsDelegateMessage];

  return v3;
}

- (void)setShowsDetectedConferenceItem:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDetectedConferenceItem:v3];
}

- (BOOL)showsDetectedConferenceItem
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 showsDetectedConferenceItem];

  return v3;
}

- (void)setMinimalMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setMinimalMode:v3];
}

- (BOOL)minimalMode
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 minimalMode];

  return v3;
}

- (void)setNoninteractivePlatterMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setNoninteractivePlatterMode:v3];
}

- (BOOL)noninteractivePlatterMode
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 noninteractivePlatterMode];

  return v3;
}

- (void)setIsLargeDayView:(BOOL)a3
{
  v3 = a3;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setIsLargeDayView:v3];
}

- (BOOL)isLargeDayView
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  v3 = [v2 isLargeDayView];

  return v3;
}

- (void)eventEditViewController:(id)a3 didCompleteWithAction:(int64_t)a4 waitUntil:(id)a5
{
  v11 = a5;
  v8 = [a3 event];
  [(EKEventViewControllerOOPWrapperImpl *)self setEvent:v8];

  if (a4 == 2)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self completeWithAction:2];
  }

  else
  {
    v9 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v10 = [v9 eventIdentifier];
    [(EKEventViewControllerOOPWrapperImpl *)self reloadRemoteViewWithUpdatedEventID:v10 withAction:a4 waitUntil:v11];

    [(EKEventViewControllerOOPWrapperImpl *)self _dismissEditor:1 deleted:0];
  }
}

- (void)setActiveEventEditor:(id)a3
{
  v4 = a3;
  [v4 setInternalEditViewDelegate:self];
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v5))
  {
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(v6);

    if (IsRegular)
    {
      [v4 setModalPresentationStyle:3];
    }
  }

  else
  {
  }

  v8 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    [v4 setModalPresentationStyle:{objc_msgSend(v10, "editorPresentationStyle")}];
  }

  activeEventEditor = self->_activeEventEditor;
  self->_activeEventEditor = v4;
}

- (void)presentEditorAnimated:(BOOL)a3
{
  v3 = a3;
  v18 = self->_activeEventEditor;
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (![v5 conformsToProtocol:&unk_1F4F9E5E0])
  {
    goto LABEL_6;
  }

  v6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v8 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v9 = [v7 eventViewDelegateShouldHandlePresentationOfEditViewController:v8];

  if (v9)
  {
    v10 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v11 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
    [v10 eventViewController:v11 requestsDisplayOfEditViewController:v18 animated:v3];

LABEL_12:
    goto LABEL_13;
  }

LABEL_7:
  if (v18)
  {
    if (v3 && (v3 = [(EKEventViewControllerOOPWrapperImpl *)self editorShowTransition], v3 == 8))
    {
      v10 = [(EKEventViewControllerOOPWrapperImpl *)self _viewControllerForEditorPresentation];
      [v10 presentViewController:v18 animated:1 completion:0];
    }

    else
    {
      v10 = [(EKEventViewControllerOOPWrapperImpl *)self _viewControllerForEditorPresentation];
      [v10 presentModalViewController:v18 withTransition:v3];
    }

    goto LABEL_12;
  }

LABEL_13:
  v12 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (v12)
  {
    v13 = v12;
    v14 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [v16 performSelector:sel_eventViewControllerDidBeginEditingEventWithEditViewController_ withObject:v18];
    }
  }

  v17 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v17 eventEditViewPresented:1];
}

- (id)_viewControllerForEditorPresentation
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];

  if (v3)
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)_dismissEditor:(BOOL)a3 deleted:(BOOL)a4
{
  activeEventEditor = self->_activeEventEditor;
  if (activeEventEditor)
  {
    v6 = a4;
    if (([(EKEventOrIntegrationEditView *)activeEventEditor isBeingDismissed]& 1) == 0)
    {
      v7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      if (v7)
      {
        v8 = v7;
        v9 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
        v10 = [v9 conformsToProtocol:&unk_1F4F9E5E0];

        if (v10)
        {
          v11 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            v13 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
            v14 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
            [v13 eventViewControllerWillFinishEditingEvent:v14 deleted:v6];
          }

          v15 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
          v16 = objc_opt_respondsToSelector();

          v17 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
          if (v16)
          {
            v18 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
            [v17 eventViewController:v18 requestsDismissalOfEditViewController:self->_activeEventEditor];
            goto LABEL_19;
          }

          v19 = objc_opt_respondsToSelector();

          if (v19)
          {
            v20 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
            v21 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
            [v20 eventViewController:v21 willDismissEditViewController:self->_activeEventEditor deleted:v6];
          }

          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      v22 = [(EKEventViewControllerOOPWrapperImpl *)self editorHideTransition];
      v23 = [(EKEventOrIntegrationEditView *)self->_activeEventEditor presentingViewController];
      v24 = v23;
      if (v22 == 9)
      {
        [v23 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        [v23 dismissViewControllerWithTransition:-[EKEventViewControllerOOPWrapperImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];
      }

      if (!v10)
      {
        goto LABEL_20;
      }

      v25 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      v18 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      [v17 eventViewController:v18 didDismissEditViewController:self->_activeEventEditor deleted:v6];
LABEL_19:

LABEL_20:
      [(EKEventOrIntegrationEditView *)self->_activeEventEditor setEditViewDelegate:0];
      v27 = self->_activeEventEditor;
      self->_activeEventEditor = 0;
    }
  }

  v28 = [(EKEventViewControllerOOPWrapperImpl *)self vc:a3];
  [v28 eventEditViewPresented:0];
}

- (BOOL)_shouldPopSelf
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v8 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v9 = [v7 eventViewControllerShouldDismissSelf:v8];

  return v9;
}

- (void)completeWithAction:(int64_t)a3
{
  [(EKEventViewControllerOOPWrapperImpl *)self _dismissEditor:0 deleted:a3 == 2];
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (v5)
  {
    v8 = v5;
    v6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(EKEventViewControllerOOPWrapperImpl *)self _shouldPopSelf];

      if (v7)
      {
        return;
      }

      v8 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      v6 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      [v8 eventViewController:v6 didCompleteWithAction:a3];
    }
  }
}

- (void)setNeedsReload
{
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v3 = [v4 eventIdentifier];
  [(EKEventViewControllerOOPWrapperImpl *)self reloadRemoteViewWithUpdatedEventID:v3 withAction:1 waitUntil:0];
}

- (void)fullReloadWithNewEvent:(id)a3
{
  v4 = [a3 eventIdentifier];
  [(EKEventViewControllerOOPWrapperImpl *)self reloadRemoteViewWithUpdatedEventID:v4 withAction:1 waitUntil:0];
}

- (void)reloadRemoteViewWithUpdatedEventID:(id)a3 withAction:(int64_t)a4 waitUntil:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v10 eventEditViewCompletedWith:a4 eventID:v9 waitUntil:v8];
}

- (void)performAddToCalendar
{
  v2 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_ERROR, "performAddToCalendar not permitted on out-of-process EKEventViewController.", v3, 2u);
  }
}

- (id)presentationSourceViewController
{
  v3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];

  if (v3)
  {
    v4 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)setToolbarItems:(id)a3
{
  v4 = a3;
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  [v5 setToolbarItems:v4];
}

- (id)toolbarItems
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v3 = [v2 toolbarItems];

  return v3;
}

- (void)setToolbarItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  [v7 setToolbarItems:v6 animated:v4];
}

- (id)navigationItem
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v3 = [v2 navigationItem];

  return v3;
}

@end