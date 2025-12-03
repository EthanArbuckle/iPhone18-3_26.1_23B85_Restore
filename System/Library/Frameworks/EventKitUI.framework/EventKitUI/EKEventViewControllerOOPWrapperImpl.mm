@interface EKEventViewControllerOOPWrapperImpl
+ (id)_orderedActionsForMask:(int64_t)mask;
+ (void)setDefaultDatesForEvent:(id)event;
- (BOOL)_backingEventAllowsEditing;
- (BOOL)_isDisplayingDeletableEvent;
- (BOOL)_isDisplayingInvitation;
- (BOOL)_performSave:(int64_t)save animated:(BOOL)animated;
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
- (void)_acceptProposedTimeWithSourceViewForPopover:(id)popover;
- (void)_addToCalendarClicked:(id)clicked;
- (void)_cancelProposedTime;
- (void)_configureStatusButtonsToolbar;
- (void)_deleteClicked:(id)clicked;
- (void)_dismissEditor:(BOOL)editor deleted:(BOOL)deleted;
- (void)_performDelete:(int64_t)delete editor:(id)editor;
- (void)_prepareEventForEdit:(id)edit;
- (void)_presentDetachSheetFromView:(id)view;
- (void)_rejectProposedTime;
- (void)_saveStatus:(int64_t)status sourceViewForPopover:(id)popover;
- (void)_saveStatus:(int64_t)status span:(int64_t)span;
- (void)_updateNavBarAnimated:(BOOL)animated;
- (void)_updateResponse;
- (void)_updateResponseVisibility;
- (void)_updateStatusButtonsActions;
- (void)cancelButtonTapped;
- (void)changeEditButtonTitleForMode:(BOOL)mode;
- (void)completeWithAction:(int64_t)action;
- (void)doneButtonTapped;
- (void)editButtonTapped;
- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action waitUntil:(id)until;
- (void)fullReloadWithNewEvent:(id)event;
- (void)invokeAction:(int64_t)action eventStatusButtonsView:(id)view;
- (void)performAddToCalendar;
- (void)presentEditorAnimated:(BOOL)animated;
- (void)reloadRemoteViewWithUpdatedEventID:(id)d withAction:(int64_t)action waitUntil:(id)until;
- (void)setActiveEventEditor:(id)editor;
- (void)setAllowsCalendarPreview:(BOOL)preview;
- (void)setAllowsEditing:(BOOL)editing;
- (void)setAllowsInviteResponses:(BOOL)responses;
- (void)setAllowsSubitems:(BOOL)subitems;
- (void)setCalendarPreviewIsInlineDayView:(BOOL)view;
- (void)setDelegate:(id)delegate;
- (void)setEvent:(id)event;
- (void)setICSPreview:(BOOL)preview;
- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)filter;
- (void)setIsEditingMode:(BOOL)mode;
- (void)setIsLargeDayView:(BOOL)view;
- (void)setMinimalMode:(BOOL)mode;
- (void)setNeedsReload;
- (void)setNoninteractivePlatterMode:(BOOL)mode;
- (void)setShowsAddToCalendarForICSPreview:(BOOL)preview;
- (void)setShowsDelegateMessage:(BOOL)message;
- (void)setShowsDelegatorMessage:(BOOL)message;
- (void)setShowsDeleteForICSPreview:(BOOL)preview;
- (void)setShowsDetectedConferenceItem:(BOOL)item;
- (void)setShowsDoneButton:(BOOL)button;
- (void)setShowsOutOfDateMessage:(BOOL)message;
- (void)setShowsUpdateCalendarForICSPreview:(BOOL)preview;
- (void)setToolbarItems:(id)items;
- (void)setToolbarItems:(id)items animated:(BOOL)animated;
- (void)updateStatusButtonsView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation EKEventViewControllerOOPWrapperImpl

+ (void)setDefaultDatesForEvent:(id)event
{
  eventCopy = event;
  v6 = CUIKDateRangeForNewEventOnDay();
  startDate = [v6 startDate];
  [eventCopy setStartDate:startDate];

  endDate = [v6 endDate];
  [eventCopy setEndDateUnadjustedForLegacyClients:endDate];
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(EKEventViewControllerOOPWrapperImpl *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  viewTitle = [(EKEventViewControllerOOPWrapperImpl *)self viewTitle];
  [(EKEventViewControllerOOPWrapperImpl *)self setTitle:viewTitle];

  viewTitle2 = [(EKEventViewControllerOOPWrapperImpl *)self viewTitle];
  parentViewController = [(EKEventViewControllerOOPWrapperImpl *)self parentViewController];
  [parentViewController setTitle:viewTitle2];

  hasInProcessNavBar = [(EKEventViewControllerOOPWrapperImpl *)self hasInProcessNavBar];
  v9 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v9 setHasInProcessNavBar:hasInProcessNavBar];

  if ((MEMORY[0x1D38B98D0]() & 1) == 0)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self _updateResponseVisibility];
  }

  v10 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [(EKEventViewControllerOOPWrapperImpl *)self addChildViewController:v10];

  view2 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v12 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  view3 = [v12 view];
  [view2 addSubview:view3];

  v14 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v14 didMoveToParentViewController:self];

  v15 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  view4 = [v15 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = MEMORY[0x1E696ACD8];
  v45 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  view5 = [v45 view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v40;
  v39 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  view7 = [v39 view];
  topAnchor = [view7 topAnchor];
  view8 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  topAnchor2 = [view8 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[1] = v18;
  v19 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  view9 = [v19 view];
  trailingAnchor = [view9 trailingAnchor];
  view10 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  trailingAnchor2 = [view10 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  [v37 activateConstraints:v25];

  if (MEMORY[0x1D38B98D0]())
  {
    v26 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
    view11 = [v26 view];
    bottomAnchor = [view11 bottomAnchor];
    view12 = [(EKEventViewControllerOOPWrapperImpl *)self view];
    v30 = view12;
LABEL_7:
    bottomAnchor2 = [view12 bottomAnchor];
    v32BottomAnchor = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v32BottomAnchor setActive:1];
    goto LABEL_8;
  }

  statusButtonsContainerView = self->_statusButtonsContainerView;
  v26 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  view11 = [v26 view];
  bottomAnchor = [view11 bottomAnchor];
  view12 = [(EKEventViewControllerOOPWrapperImpl *)self view];
  v30 = view12;
  if (!statusButtonsContainerView)
  {
    goto LABEL_7;
  }

  bottomAnchor2 = [view12 safeAreaLayoutGuide];
  v32BottomAnchor = [bottomAnchor2 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:v32BottomAnchor];
  [v34 setActive:1];

LABEL_8:
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = EKEventViewControllerOOPWrapperImpl;
  [(EKEventViewControllerOOPWrapperImpl *)&v4 viewWillAppear:appear];
  [(EKEventViewControllerOOPWrapperImpl *)self _updateStatusButtonsActions];
  [(EKEventViewControllerOOPWrapperImpl *)self _updateResponse];
  if (MEMORY[0x1D38B98D0]([(EKEventViewControllerOOPWrapperImpl *)self _updateNavBarAnimated:0]))
  {
    [(EKEventViewControllerOOPWrapperImpl *)self _updateResponseVisibility];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = EKEventViewControllerOOPWrapperImpl;
  [(EKEventViewControllerOOPWrapperImpl *)&v10 viewWillDisappear:disappear];
  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [delegate3 performSelector:sel_eventViewControllerWillDisappear_ withObject:self];
    }
  }

  navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  [navigationController setToolbarHidden:1];
}

- (void)viewWillLayoutSubviews
{
  if ((MEMORY[0x1D38B98D0](self, a2) & 1) == 0)
  {
    navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
    toolbar = [navigationController toolbar];

    v4 = toolbar;
    if (toolbar)
    {
      [(SingleToolbarItemContainerView *)self->_statusButtonsContainerView setBoundsWithToolbar:toolbar];
      v4 = toolbar;
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

- (void)_updateNavBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldShowEditButton])
  {
    navigationItem5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel_editButtonTapped];
    if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayDoneButton])
    {
      navigationItem3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
      navigationItem = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
      [navigationItem setLeftBarButtonItem:navigationItem5 animated:animatedCopy];

      navigationItem2 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:navigationItem3 animated:animatedCopy];
    }

    else
    {
      navigationItem3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:navigationItem5 animated:animatedCopy];
    }
  }

  else if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayDoneButton])
  {
    navigationItem5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
    navigationItem4 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:navigationItem5 animated:animatedCopy];
  }

  else
  {
    navigationItem5 = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
    [navigationItem5 setRightBarButtonItem:0 animated:animatedCopy];
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
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  if ([event isEditable])
  {
    event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    eventStore = [event2 eventStore];
    if (eventStore)
    {
      event3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      calendar = [event3 calendar];
      v8 = [calendar isSuggestedEventCalendar] ^ 1;
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
  navigationItem = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  if (![(EKEventViewControllerOOPWrapperImpl *)self showsDoneButton])
  {
    LOBYTE(v5) = 0;
    goto LABEL_15;
  }

  if (([navigationItem hidesBackButton] & 1) != 0 || leftBarButtonItem && objc_msgSend(leftBarButtonItem, "systemItem"))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
    viewControllers = [navigationController viewControllers];

    if ([viewControllers count])
    {
      _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      v9 = [viewControllers objectAtIndex:0];
      v5 = _ekEventViewController == v9;
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

  if (leftBarButtonItem)
  {
    if (![leftBarButtonItem systemItem])
    {
      [navigationItem setLeftBarButtonItem:0];
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
    delegate = [(EKEventViewControllerOOPWrapperImpl *)self vc];
    [delegate doneButtonTapped];
  }

  else
  {
    delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
    [delegate eventViewController:_ekEventViewController didCompleteWithAction:0];
  }
}

- (void)editButtonTapped
{
  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      v9 = [delegate3 eventViewControllerEditButtonTemporarilyDisabled:_ekEventViewController];

      if (v9)
      {
        return;
      }
    }
  }

  delegate4 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (delegate4)
  {
    v11 = delegate4;
    delegate5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [delegate6 performSelector:sel_eventViewControllerWillBeginEditingEvent_ withObject:self];
    }
  }

  delegate7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (([delegate7 conformsToProtocol:&unk_1F4F9EBE0] & 1) == 0)
  {

LABEL_12:
    event = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v22 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:event creationMethod:0 viewStart:4 eventEditViewDelegate:self];

    [(EKEventViewControllerOOPWrapperImpl *)self setActiveEventEditor:v22];
    goto LABEL_13;
  }

  delegate8 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

  delegate9 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  _ekEventViewController2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v20 = [delegate9 eventViewDelegateShouldCreateOwnEditViewController:_ekEventViewController2];

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

- (void)changeEditButtonTitleForMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  if (modeCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = &selRef_cancelButtonTapped;
  if (!modeCopy)
  {
    v7 = &selRef_editButtonTapped;
  }

  v9 = [v5 initWithBarButtonSystemItem:v6 target:self action:*v7];
  navigationItem = [(EKEventViewControllerOOPWrapperImpl *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v9 animated:1];
}

- (BOOL)hasInProcessNavBar
{
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  navigationController = [_ekEventViewController navigationController];

  if (navigationController)
  {
    v4 = [navigationController isNavigationBarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateResponse
{
  _statusButtonsView = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsView];
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  calendar = [event calendar];

  if (calendar)
  {
    source = [calendar source];
    constraints = [source constraints];
    v7 = [constraints statusesAreAccurate] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  participationStatus = [event2 participationStatus];

  if (v7 && (-[EKEventViewControllerOOPWrapperImpl event](self, "event"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isStatusDirty], v10, !v11) || (participationStatus - 2) > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_1D36007B8[participationStatus - 2];
  }

  [_statusButtonsView setSelectedAction:v12];
}

- (BOOL)_shouldDisplayStatusButtons
{
  statusButtonActions = [(EKEventViewControllerOOPWrapperImpl *)self statusButtonActions];
  v3 = [statusButtonActions count] != 0;

  return v3;
}

- (void)_updateResponseVisibility
{
  v31[4] = *MEMORY[0x1E69E9840];
  if ([(EKEventViewControllerOOPWrapperImpl *)self _shouldDisplayStatusButtons])
  {
    navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
    [navigationController setToolbarHidden:0];

    if (MEMORY[0x1D38B98D0]())
    {
      toolbarItems = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];

      if (!toolbarItems)
      {

        [(EKEventViewControllerOOPWrapperImpl *)self _configureStatusButtonsToolbar];
      }
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      navigationController2 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
      toolbar = [navigationController2 toolbar];
      [toolbar setBackgroundColor:systemBackgroundColor];

      toolbarItems2 = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];
      if (!toolbarItems2 || (statusButtonsContainerView = self->_statusButtonsContainerView, toolbarItems2, !statusButtonsContainerView))
      {
        _statusButtonsContainerView = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsContainerView];
        _statusButtonsView = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsView];
        [_statusButtonsContainerView addSubview:_statusButtonsView];
        v24 = MEMORY[0x1E696ACD8];
        leadingAnchor = [_statusButtonsView leadingAnchor];
        leadingAnchor2 = [_statusButtonsContainerView leadingAnchor];
        v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v31[0] = v27;
        trailingAnchor = [_statusButtonsView trailingAnchor];
        trailingAnchor2 = [_statusButtonsContainerView trailingAnchor];
        v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v31[1] = v23;
        topAnchor = [_statusButtonsView topAnchor];
        topAnchor2 = [_statusButtonsContainerView topAnchor];
        v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v31[2] = v16;
        bottomAnchor = [_statusButtonsView bottomAnchor];
        bottomAnchor2 = [_statusButtonsContainerView bottomAnchor];
        v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v31[3] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
        [v24 activateConstraints:v20];

        v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:_statusButtonsContainerView];
        v30 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [(EKEventViewControllerOOPWrapperImpl *)self setToolbarItems:v22 animated:1];
      }
    }
  }

  else
  {
    toolbarItems3 = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];

    if (toolbarItems3)
    {
      navigationController3 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
      [navigationController3 setToolbarHidden:1];

      [(EKEventViewControllerOOPWrapperImpl *)self setToolbarItems:0 animated:1];
    }
  }
}

- (void)_updateStatusButtonsActions
{
  statusButtonActions = [(EKEventViewControllerOOPWrapperImpl *)self statusButtonActions];
  actions = [(EKUIEventStatusButtonsView *)self->_statusButtonsView actions];
  v4 = [statusButtonActions isEqualToArray:actions];

  if ((v4 & 1) == 0)
  {
    if (MEMORY[0x1D38B98D0]([(EKUIEventStatusButtonsView *)self->_statusButtonsView setActions:statusButtonActions]))
    {
      toolbarItems = [(EKEventViewControllerOOPWrapperImpl *)self toolbarItems];

      if (toolbarItems)
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

  eKUI_viewHierarchy = [(UIViewController *)self EKUI_viewHierarchy];
  if ([eKUI_viewHierarchy ekui_interfaceOrientation] == 1)
  {

LABEL_4:
    v4 = 1;
    goto LABEL_6;
  }

  traitCollection = [(EKEventViewControllerOOPWrapperImpl *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] != 1;

LABEL_6:
  v6 = [EKUIEventStatusButtonsView alloc];
  statusButtonActions = [(EKEventViewControllerOOPWrapperImpl *)self statusButtonActions];
  v8 = [(EKUIEventStatusButtonsView *)v6 initWithFrame:statusButtonActions actions:self delegate:1 options:v4 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  statusButtonsView = self->_statusButtonsView;
  self->_statusButtonsView = v8;

  [(EKUIEventStatusButtonsView *)self->_statusButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(EKEventViewControllerOOPWrapperImpl *)self _isDisplayingInvitation]^ 1;
  v11 = self->_statusButtonsView;

  [(EKUIEventStatusButtonsView *)v11 setDisableButtonHighlights:v10];
}

- (void)_configureStatusButtonsToolbar
{
  _statusButtonsView = [(EKEventViewControllerOOPWrapperImpl *)self _statusButtonsView];
  statusButtons = [_statusButtonsView statusButtons];

  v4 = objc_opt_new();
  if ([statusButtons count])
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = [statusButtons objectAtIndexedSubscript:v5];
      v8 = [v6 initWithCustomView:v7];

      [v4 addObject:v8];
      ++v5;
    }

    while ([statusButtons count] > v5);
  }

  [(EKEventViewControllerOOPWrapperImpl *)self setToolbarItems:v4 animated:1];
  navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar sizeToFit];

  navigationController2 = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  toolbar2 = [navigationController2 toolbar];
  [toolbar2 _setItemDistribution:1];
}

- (id)statusButtonActions
{
  _actionsMask = [(EKEventViewControllerOOPWrapperImpl *)self _actionsMask];
  v3 = objc_opt_class();

  return [v3 _orderedActionsForMask:_actionsMask];
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
    event = [(EKEventViewControllerOOPWrapperImpl *)self event];
    eventStore = [event eventStore];
    event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    v7 = [eventStore isCurrentProcessCreatorOfEvent:event2];

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
  event3 = [(EKEventViewControllerOOPWrapperImpl *)self event];

  return v8 < 2 && event3 != 0;
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
  allowsInviteResponses = [(EKEventViewControllerOOPWrapperImpl *)self allowsInviteResponses];
  if (allowsInviteResponses)
  {
    event = [(EKEventViewControllerOOPWrapperImpl *)self event];
    allowsParticipationStatusModifications = [event allowsParticipationStatusModifications];

    LOBYTE(allowsInviteResponses) = allowsParticipationStatusModifications;
  }

  return allowsInviteResponses;
}

- (BOOL)_isDisplayingDeletableEvent
{
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  calendar = [event calendar];
  if ([calendar allowsContentModifications])
  {
    event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    isPrivateEventSharedToMe = [event2 isPrivateEventSharedToMe];

    if (!isPrivateEventSharedToMe)
    {
      return 1;
    }
  }

  else
  {
  }

  event3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  if ([event3 status] == 3)
  {
    event4 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    calendar2 = [event4 calendar];
    source = [calendar2 source];
    if ([source isDelegate])
    {
      event5 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      calendar3 = [event5 calendar];
      source2 = [calendar3 source];
      isWritable = [source2 isWritable];
    }

    else
    {
      isWritable = 1;
    }
  }

  else
  {
    isWritable = 0;
  }

  return isWritable;
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
    event = [(EKEventViewControllerOOPWrapperImpl *)self event];
    status = [event status];

    if (status == 3)
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

+ (id)_orderedActionsForMask:(int64_t)mask
{
  v4 = objc_opt_new();
  for (i = 0; i != 11; ++i)
  {
    if ((_orderedActionsForMask__actionOrder_0[i] & mask) != 0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v4 addObject:v6];
    }
  }

  return v4;
}

- (void)_prepareEventForEdit:(id)edit
{
  editCopy = edit;
  calendar = [editCopy calendar];

  if (!calendar)
  {
    eventStore = [editCopy eventStore];
    defaultCalendarForNewEvents = [eventStore defaultCalendarForNewEvents];
    [editCopy setCalendar:defaultCalendarForNewEvents];
  }

  startDate = [editCopy startDate];

  if (!startDate)
  {
    [objc_opt_class() setDefaultDatesForEvent:editCopy];
  }
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

  if (action <= 2047)
  {
    if (action <= 3)
    {
      if (action == 1)
      {
        v8 = 2;
      }

      else
      {
        if (action != 2)
        {
          goto LABEL_27;
        }

        v8 = 4;
      }
    }

    else
    {
      if (action != 4)
      {
        if (action == 8)
        {
          goto LABEL_21;
        }

        if (action != 16)
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

  if (action < 0x8000)
  {
    if (action != 2048)
    {
      if (action == 4096)
      {
        [(EKEventViewControllerOOPWrapperImpl *)self _acceptProposedTimeWithSourceViewForPopover:v6];
      }

      else if (action == 0x2000)
      {
        [(EKEventViewControllerOOPWrapperImpl *)self _rejectProposedTime];
      }

      goto LABEL_27;
    }

LABEL_21:
    [(EKEventViewControllerOOPWrapperImpl *)self _addToCalendarClicked:self];
    goto LABEL_27;
  }

  if (action == 0x8000)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self _cancelProposedTime];
    goto LABEL_27;
  }

  if (action == 0x80000 || action == 0x100000)
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
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
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
            event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
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
  _proposedDate = [(EKEventViewControllerOOPWrapperImpl *)self _proposedDate];
  if (_proposedDate)
  {
    event = [(EKEventViewControllerOOPWrapperImpl *)self event];
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
    if ([event hasRecurrenceRules])
    {
      presentationSourceViewController = [(EKEventViewControllerOOPWrapperImpl *)self presentationSourceViewController];
      [popoverCopy bounds];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __83__EKEventViewControllerOOPWrapperImpl__acceptProposedTimeWithSourceViewForPopover___block_invoke;
      v22[3] = &unk_1E843FE10;
      v22[4] = self;
      v20 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentationSourceViewController sourceView:popoverCopy sourceRect:event forEvent:v22 withCompletionHandler:?];
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
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
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

  event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  if ([event2 hasRecurrenceRules])
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
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [event setProposedStartDate:0];

  [(EKEventViewControllerOOPWrapperImpl *)self _performSave:0 animated:0];
}

- (void)_saveStatus:(int64_t)status sourceViewForPopover:(id)popover
{
  popoverCopy = popover;
  if (status)
  {
    v13 = popoverCopy;
    event = [(EKEventViewControllerOOPWrapperImpl *)self event];
    responseMustApplyToAll = [event responseMustApplyToAll];

    if (responseMustApplyToAll)
    {
      v9 = 4;
    }

    else
    {
      event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      hasRecurrenceRules = [event2 hasRecurrenceRules];

      if (hasRecurrenceRules)
      {
        self->_pendingStatus = status;
        [(EKEventViewControllerOOPWrapperImpl *)self _presentDetachSheetFromView:v13];
LABEL_8:
        popoverCopy = v13;
        goto LABEL_9;
      }

      event3 = [(EKEventViewControllerOOPWrapperImpl *)self event];
      [event3 isDetached];

      v9 = 0;
    }

    [(EKEventViewControllerOOPWrapperImpl *)self _saveStatus:status span:v9];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_saveStatus:(int64_t)status span:(int64_t)span
{
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [event setParticipationStatus:status];

  event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [event2 setInvitationStatus:0];

  [(EKEventViewControllerOOPWrapperImpl *)self _performSave:span animated:1];
}

- (BOOL)_performSave:(int64_t)save animated:(BOOL)animated
{
  v6 = [(UIResponder *)self EKUI_editor:save];
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v14 = 0;
  v8 = [v6 saveEvent:event span:save error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0 && v9)
  {
    domain = [v9 domain];
    if (domain != *MEMORY[0x1E6966808])
    {
LABEL_6:

      goto LABEL_7;
    }

    code = [v9 code];

    if (code == 1010)
    {
      domain = [(EKEventViewControllerOOPWrapperImpl *)self event];
      eventStore = [domain eventStore];
      [eventStore rollback];

      goto LABEL_6;
    }
  }

LABEL_7:
  [(EKEventViewControllerOOPWrapperImpl *)self completeWithAction:1];

  return 1;
}

- (void)_deleteClicked:(id)clicked
{
  clickedCopy = clicked;
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  status = [event status];

  eKUI_editor = [(UIResponder *)self EKUI_editor];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__EKEventViewControllerOOPWrapperImpl__deleteClicked___block_invoke;
  aBlock[3] = &unk_1E8441060;
  v25 = status == 3;
  aBlock[4] = self;
  v24 = eKUI_editor;
  if (status == 3)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v9 = eKUI_editor;
  v10 = _Block_copy(aBlock);
  presentationSourceViewController = [(EKEventViewControllerOOPWrapperImpl *)self presentationSourceViewController];
  [clickedCopy bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v21 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v8 viewController:presentationSourceViewController sourceView:clickedCopy sourceRect:event2 forEvent:0 stringForDeleteButton:v10 withCompletionHandler:v13, v15, v17, v19];

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

- (void)_performDelete:(int64_t)delete editor:(id)editor
{
  v6 = MEMORY[0x1E6966A10];
  editorCopy = editor;
  sharedInstance = [v6 sharedInstance];
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  [sharedInstance handleEventDeletion:event];

  event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v15 = 0;
  LOBYTE(event) = [editorCopy deleteEvent:event2 span:delete error:&v15];

  v11 = v15;
  if ((event & 1) == 0)
  {
    domain = [v11 domain];
    if (domain != *MEMORY[0x1E6966808])
    {
LABEL_5:

      goto LABEL_6;
    }

    code = [v11 code];

    if (code == 1010)
    {
      domain = [(EKEventViewControllerOOPWrapperImpl *)self event];
      eventStore = [domain eventStore];
      [eventStore rollback];

      goto LABEL_5;
    }
  }

LABEL_6:
  [(EKEventViewControllerOOPWrapperImpl *)self completeWithAction:2];
}

- (void)_addToCalendarClicked:(id)clicked
{
  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [delegate3 performSelector:sel_eventViewControllerDidRequestAddToCalendar_ withObject:self];
    }
  }
}

- (void)_presentDetachSheetFromView:(id)view
{
  viewCopy = view;
  _detachSheetHandler = [(EKEventViewControllerOOPWrapperImpl *)self _detachSheetHandler];
  presentationSourceViewController = [(EKEventViewControllerOOPWrapperImpl *)self presentationSourceViewController];
  [viewCopy bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  v15 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentationSourceViewController sourceView:viewCopy sourceRect:event forEvent:_detachSheetHandler withCompletionHandler:v7, v9, v11, v13];

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

- (void)setEvent:(id)event
{
  eventCopy = event;
  [(EKEventViewControllerOOPWrapperImpl *)self _prepareEventForEdit:eventCopy];
  eventStore = [eventCopy eventStore];
  eventStore = self->_eventStore;
  self->_eventStore = eventStore;

  v7 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v7 setEvent:eventCopy];
}

- (EKEvent)event
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  event = [v2 event];

  return event;
}

- (void)setAllowsEditing:(BOOL)editing
{
  editingCopy = editing;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsEditing:editingCopy];
}

- (BOOL)allowsEditing
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  allowsEditing = [v2 allowsEditing];

  return allowsEditing;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v5 setDelegate:delegateCopy];
}

- (EKEventViewDelegate)delegate
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  delegate = [v2 delegate];

  return delegate;
}

- (void)setAllowsCalendarPreview:(BOOL)preview
{
  previewCopy = preview;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsCalendarPreview:previewCopy];
}

- (BOOL)allowsCalendarPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  allowsCalendarPreview = [v2 allowsCalendarPreview];

  return allowsCalendarPreview;
}

- (void)setIsEditingMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setIsEditingMode:modeCopy];
}

- (BOOL)isEditingMode
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  isEditingMode = [v2 isEditingMode];

  return isEditingMode;
}

- (void)setCalendarPreviewIsInlineDayView:(BOOL)view
{
  viewCopy = view;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setCalendarPreviewIsInlineDayView:viewCopy];
}

- (BOOL)calendarPreviewIsInlineDayView
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  calendarPreviewIsInlineDayView = [v2 calendarPreviewIsInlineDayView];

  return calendarPreviewIsInlineDayView;
}

- (void)setInlineDayViewRespectsSelectedCalendarsFilter:(BOOL)filter
{
  filterCopy = filter;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setInlineDayViewRespectsSelectedCalendarsFilter:filterCopy];
}

- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  inlineDayViewRespectsSelectedCalendarsFilter = [v2 inlineDayViewRespectsSelectedCalendarsFilter];

  return inlineDayViewRespectsSelectedCalendarsFilter;
}

- (void)setICSPreview:(BOOL)preview
{
  previewCopy = preview;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setICSPreview:previewCopy];
}

- (BOOL)isICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  iCSPreview = [v2 ICSPreview];

  return iCSPreview;
}

- (void)setAllowsInviteResponses:(BOOL)responses
{
  responsesCopy = responses;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsInviteResponses:responsesCopy];
}

- (BOOL)allowsInviteResponses
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  allowsInviteResponses = [v2 allowsInviteResponses];

  return allowsInviteResponses;
}

- (void)setShowsAddToCalendarForICSPreview:(BOOL)preview
{
  previewCopy = preview;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsAddToCalendarForICSPreview:previewCopy];
}

- (BOOL)showsAddToCalendarForICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsAddToCalendarForICSPreview = [v2 showsAddToCalendarForICSPreview];

  return showsAddToCalendarForICSPreview;
}

- (void)setShowsUpdateCalendarForICSPreview:(BOOL)preview
{
  previewCopy = preview;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsUpdateCalendarForICSPreview:previewCopy];
}

- (BOOL)showsUpdateCalendarForICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsUpdateCalendarForICSPreview = [v2 showsUpdateCalendarForICSPreview];

  return showsUpdateCalendarForICSPreview;
}

- (void)setShowsDeleteForICSPreview:(BOOL)preview
{
  previewCopy = preview;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDeleteForICSPreview:previewCopy];
}

- (BOOL)showsDeleteForICSPreview
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsDeleteForICSPreview = [v2 showsDeleteForICSPreview];

  return showsDeleteForICSPreview;
}

- (void)setAllowsSubitems:(BOOL)subitems
{
  subitemsCopy = subitems;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setAllowsSubitems:subitemsCopy];
}

- (BOOL)allowsSubitems
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  allowsSubitems = [v2 allowsSubitems];

  return allowsSubitems;
}

- (void)setShowsDoneButton:(BOOL)button
{
  buttonCopy = button;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDoneButton:buttonCopy];
}

- (BOOL)showsDoneButton
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsDoneButton = [v2 showsDoneButton];

  return showsDoneButton;
}

- (void)setShowsOutOfDateMessage:(BOOL)message
{
  messageCopy = message;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsOutOfDateMessage:messageCopy];
}

- (BOOL)showsOutOfDateMessage
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsOutOfDateMessage = [v2 showsOutOfDateMessage];

  return showsOutOfDateMessage;
}

- (void)setShowsDelegatorMessage:(BOOL)message
{
  messageCopy = message;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDelegatorMessage:messageCopy];
}

- (BOOL)showsDelegatorMessage
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsDelegatorMessage = [v2 showsDelegatorMessage];

  return showsDelegatorMessage;
}

- (void)setShowsDelegateMessage:(BOOL)message
{
  messageCopy = message;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDelegateMessage:messageCopy];
}

- (BOOL)showsDelegateMessage
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsDelegateMessage = [v2 showsDelegateMessage];

  return showsDelegateMessage;
}

- (void)setShowsDetectedConferenceItem:(BOOL)item
{
  itemCopy = item;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setShowsDetectedConferenceItem:itemCopy];
}

- (BOOL)showsDetectedConferenceItem
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  showsDetectedConferenceItem = [v2 showsDetectedConferenceItem];

  return showsDetectedConferenceItem;
}

- (void)setMinimalMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setMinimalMode:modeCopy];
}

- (BOOL)minimalMode
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  minimalMode = [v2 minimalMode];

  return minimalMode;
}

- (void)setNoninteractivePlatterMode:(BOOL)mode
{
  modeCopy = mode;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setNoninteractivePlatterMode:modeCopy];
}

- (BOOL)noninteractivePlatterMode
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  noninteractivePlatterMode = [v2 noninteractivePlatterMode];

  return noninteractivePlatterMode;
}

- (void)setIsLargeDayView:(BOOL)view
{
  viewCopy = view;
  v4 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v4 setIsLargeDayView:viewCopy];
}

- (BOOL)isLargeDayView
{
  v2 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  isLargeDayView = [v2 isLargeDayView];

  return isLargeDayView;
}

- (void)eventEditViewController:(id)controller didCompleteWithAction:(int64_t)action waitUntil:(id)until
{
  untilCopy = until;
  event = [controller event];
  [(EKEventViewControllerOOPWrapperImpl *)self setEvent:event];

  if (action == 2)
  {
    [(EKEventViewControllerOOPWrapperImpl *)self completeWithAction:2];
  }

  else
  {
    event2 = [(EKEventViewControllerOOPWrapperImpl *)self event];
    eventIdentifier = [event2 eventIdentifier];
    [(EKEventViewControllerOOPWrapperImpl *)self reloadRemoteViewWithUpdatedEventID:eventIdentifier withAction:action waitUntil:untilCopy];

    [(EKEventViewControllerOOPWrapperImpl *)self _dismissEditor:1 deleted:0];
  }
}

- (void)setActiveEventEditor:(id)editor
{
  editorCopy = editor;
  [editorCopy setInternalEditViewDelegate:self];
  view = [(EKEventViewControllerOOPWrapperImpl *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view))
  {
    view2 = [(EKEventViewControllerOOPWrapperImpl *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(view2);

    if (IsRegular)
    {
      [editorCopy setModalPresentationStyle:3];
    }
  }

  else
  {
  }

  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    [editorCopy setModalPresentationStyle:{objc_msgSend(delegate2, "editorPresentationStyle")}];
  }

  activeEventEditor = self->_activeEventEditor;
  self->_activeEventEditor = editorCopy;
}

- (void)presentEditorAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = self->_activeEventEditor;
  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (![delegate conformsToProtocol:&unk_1F4F9E5E0])
  {
    goto LABEL_6;
  }

  delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v9 = [delegate3 eventViewDelegateShouldHandlePresentationOfEditViewController:_ekEventViewController];

  if (v9)
  {
    delegate4 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    _ekEventViewController2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
    [delegate4 eventViewController:_ekEventViewController2 requestsDisplayOfEditViewController:v18 animated:animatedCopy];

LABEL_12:
    goto LABEL_13;
  }

LABEL_7:
  if (v18)
  {
    if (animatedCopy && (animatedCopy = [(EKEventViewControllerOOPWrapperImpl *)self editorShowTransition], animatedCopy == 8))
    {
      delegate4 = [(EKEventViewControllerOOPWrapperImpl *)self _viewControllerForEditorPresentation];
      [delegate4 presentViewController:v18 animated:1 completion:0];
    }

    else
    {
      delegate4 = [(EKEventViewControllerOOPWrapperImpl *)self _viewControllerForEditorPresentation];
      [delegate4 presentModalViewController:v18 withTransition:animatedCopy];
    }

    goto LABEL_12;
  }

LABEL_13:
  delegate5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (delegate5)
  {
    v13 = delegate5;
    delegate6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      [delegate7 performSelector:sel_eventViewControllerDidBeginEditingEventWithEditViewController_ withObject:v18];
    }
  }

  v17 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v17 eventEditViewPresented:1];
}

- (id)_viewControllerForEditorPresentation
{
  navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];

  if (navigationController)
  {
    selfCopy = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_dismissEditor:(BOOL)editor deleted:(BOOL)deleted
{
  activeEventEditor = self->_activeEventEditor;
  if (activeEventEditor)
  {
    deletedCopy = deleted;
    if (([(EKEventOrIntegrationEditView *)activeEventEditor isBeingDismissed]& 1) == 0)
    {
      delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      if (delegate)
      {
        v8 = delegate;
        delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
        v10 = [delegate2 conformsToProtocol:&unk_1F4F9E5E0];

        if (v10)
        {
          delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            delegate4 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
            _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
            [delegate4 eventViewControllerWillFinishEditingEvent:_ekEventViewController deleted:deletedCopy];
          }

          delegate5 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
          v16 = objc_opt_respondsToSelector();

          delegate6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
          if (v16)
          {
            _ekEventViewController2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
            [delegate6 eventViewController:_ekEventViewController2 requestsDismissalOfEditViewController:self->_activeEventEditor];
            goto LABEL_19;
          }

          v19 = objc_opt_respondsToSelector();

          if (v19)
          {
            delegate7 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
            _ekEventViewController3 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
            [delegate7 eventViewController:_ekEventViewController3 willDismissEditViewController:self->_activeEventEditor deleted:deletedCopy];
          }

          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      editorHideTransition = [(EKEventViewControllerOOPWrapperImpl *)self editorHideTransition];
      presentingViewController = [(EKEventOrIntegrationEditView *)self->_activeEventEditor presentingViewController];
      v24 = presentingViewController;
      if (editorHideTransition == 9)
      {
        [presentingViewController dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        [presentingViewController dismissViewControllerWithTransition:-[EKEventViewControllerOOPWrapperImpl editorHideTransition](self completion:{"editorHideTransition"), 0}];
      }

      if (!v10)
      {
        goto LABEL_20;
      }

      delegate8 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_20;
      }

      delegate6 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      _ekEventViewController2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      [delegate6 eventViewController:_ekEventViewController2 didDismissEditViewController:self->_activeEventEditor deleted:deletedCopy];
LABEL_19:

LABEL_20:
      [(EKEventOrIntegrationEditView *)self->_activeEventEditor setEditViewDelegate:0];
      v27 = self->_activeEventEditor;
      self->_activeEventEditor = 0;
    }
  }

  v28 = [(EKEventViewControllerOOPWrapperImpl *)self vc:editor];
  [v28 eventEditViewPresented:0];
}

- (BOOL)_shouldPopSelf
{
  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (!delegate)
  {
    return 0;
  }

  v4 = delegate;
  delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  v9 = [delegate3 eventViewControllerShouldDismissSelf:_ekEventViewController];

  return v9;
}

- (void)completeWithAction:(int64_t)action
{
  [(EKEventViewControllerOOPWrapperImpl *)self _dismissEditor:0 deleted:action == 2];
  delegate = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
  if (delegate)
  {
    delegate3 = delegate;
    delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      _shouldPopSelf = [(EKEventViewControllerOOPWrapperImpl *)self _shouldPopSelf];

      if (_shouldPopSelf)
      {
        return;
      }

      delegate3 = [(EKEventViewControllerOOPWrapperImpl *)self delegate];
      delegate2 = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
      [delegate3 eventViewController:delegate2 didCompleteWithAction:action];
    }
  }
}

- (void)setNeedsReload
{
  event = [(EKEventViewControllerOOPWrapperImpl *)self event];
  eventIdentifier = [event eventIdentifier];
  [(EKEventViewControllerOOPWrapperImpl *)self reloadRemoteViewWithUpdatedEventID:eventIdentifier withAction:1 waitUntil:0];
}

- (void)fullReloadWithNewEvent:(id)event
{
  eventIdentifier = [event eventIdentifier];
  [(EKEventViewControllerOOPWrapperImpl *)self reloadRemoteViewWithUpdatedEventID:eventIdentifier withAction:1 waitUntil:0];
}

- (void)reloadRemoteViewWithUpdatedEventID:(id)d withAction:(int64_t)action waitUntil:(id)until
{
  untilCopy = until;
  dCopy = d;
  v10 = [(EKEventViewControllerOOPWrapperImpl *)self vc];
  [v10 eventEditViewCompletedWith:action eventID:dCopy waitUntil:untilCopy];
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
  navigationController = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];

  if (navigationController)
  {
    selfCopy = [(EKEventViewControllerOOPWrapperImpl *)self navigationController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  [_ekEventViewController setToolbarItems:itemsCopy];
}

- (id)toolbarItems
{
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  toolbarItems = [_ekEventViewController toolbarItems];

  return toolbarItems;
}

- (void)setToolbarItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  [_ekEventViewController setToolbarItems:itemsCopy animated:animatedCopy];
}

- (id)navigationItem
{
  _ekEventViewController = [(EKEventViewControllerOOPWrapperImpl *)self _ekEventViewController];
  navigationItem = [_ekEventViewController navigationItem];

  return navigationItem;
}

@end