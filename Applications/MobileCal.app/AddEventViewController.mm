@interface AddEventViewController
+ (id)editOrAddViewControllerForEventOrIntegrationWithEvent:(id)event model:(id)model creationMethod:(unint64_t)method viewStart:(unint64_t)start eventEditViewDelegate:(id)delegate;
- (AddEventDelegate)addEventDelegate;
- (AddEventViewController)initWithModel:(id)model event:(id)event;
- (AddEventViewController)initWithModel:(id)model eventStartDate:(id)date;
- (AddEventViewController)initWithModel:(id)model eventTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location;
- (BOOL)canDismiss;
- (BOOL)displayingRootView;
- (BOOL)hasReminderCalendar;
- (BOOL)hasUnsavedChanges;
- (BOOL)ignoreUnsavedChanges;
- (BOOL)willPresentDialogOnSave;
- (CGSize)preferredContentSize;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate;
- (id)_eventEditorForTestingOnly;
- (id)backgroundColor;
- (id)configuration;
- (id)currentManager;
- (id)currentRootViewController;
- (id)eventForDockedView;
- (id)segmentedControl;
- (unint64_t)supportedInterfaceOrientations;
- (void)actionButtonTapped;
- (void)addItemViewControllerManager:(id)manager didCompleteWithAction:(int64_t)action;
- (void)attemptDisplayReviewPrompt;
- (void)cancelEditing;
- (void)completeAndSaveWithContinueBlock:(id)block;
- (void)configureAppearanceForSplitDayView;
- (void)didAttemptToDismiss;
- (void)loadViewController;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)selectSegmentIndex:(unint64_t)index;
- (void)setDockable:(BOOL)dockable;
- (void)setEvent:(id)event;
- (void)setIgnoreUnsavedChanges:(BOOL)changes;
- (void)setupManagers;
- (void)setupNavigationItemFor:(id)for;
- (void)updateOccurrenceAwaitingRefreshTo:(id)to from:(id)from;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation AddEventViewController

+ (id)editOrAddViewControllerForEventOrIntegrationWithEvent:(id)event model:(id)model creationMethod:(unint64_t)method viewStart:(unint64_t)start eventEditViewDelegate:(id)delegate
{
  eventCopy = event;
  modelCopy = model;
  delegateCopy = delegate;
  if ([eventCopy isNew])
  {
    v14 = [[AddEventViewController alloc] initWithModel:modelCopy event:eventCopy];
    [(AddEventViewController *)v14 setEventCreationMethod:method];
    [(AddEventViewController *)v14 setCalendarItemCreationViewStart:start];
    [(AddEventViewController *)v14 setInternalEditViewDelegate:delegateCopy];
  }

  else
  {
    v14 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:eventCopy creationMethod:method viewStart:start eventEditViewDelegate:delegateCopy];
  }

  return v14;
}

- (AddEventViewController)initWithModel:(id)model eventStartDate:(id)date
{
  modelCopy = model;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = AddEventViewController;
  v9 = [(AddEventViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, model);
    objc_storeStrong(&v10->_eventStartDate, date);
    [(AddEventViewController *)v10 _setClipUnderlapWhileTransitioning:1];
    [(AddEventViewController *)v10 setupManagers];
  }

  return v10;
}

- (AddEventViewController)initWithModel:(id)model event:(id)event
{
  eventCopy = event;
  v7 = [(AddEventViewController *)self initWithModel:model eventStartDate:0];
  v8 = v7;
  if (v7)
  {
    [(AddEventViewController *)v7 setEvent:eventCopy];
    if ([eventCopy isReminderIntegrationEvent])
    {
      if ([(NSArray *)v8->_managers count]>= 2)
      {
        v8->_selectedIndex = 1;
      }
    }
  }

  return v8;
}

- (AddEventViewController)initWithModel:(id)model eventTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location
{
  titleCopy = title;
  endDateCopy = endDate;
  locationCopy = location;
  v16 = [(AddEventViewController *)self initWithModel:model eventStartDate:date];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_eventTitle, title);
    objc_storeStrong(&v17->_eventEndDate, endDate);
    objc_storeStrong(&v17->_eventLocation, location);
  }

  return v17;
}

- (void)setupManagers
{
  v14 = objc_alloc_init(NSMutableArray);
  v3 = [[AddEventViewControllerManager alloc] initWithCalendarModel:self->_model];
  [(AddEventViewControllerManager *)v3 setAddItemViewControllerManagerDelegate:self];
  [v14 addObject:v3];
  if ([(AddEventViewController *)self hasReminderCalendar]&& (+[EKAppProtectionUtils isReminderAppLocked]& 1) == 0)
  {
    v4 = [[_TtC9MobileCal32AddReminderViewControllerManager alloc] initWithModel:self->_model];
    [(AddReminderViewControllerManager *)v4 setAddItemViewControllerManagerDelegate:self];
    [v14 addObject:v4];
  }

  v5 = [v14 copy];
  managers = self->_managers;
  self->_managers = v5;

  v7 = [(NSArray *)self->_managers count];
  v8 = [[NSMutableArray alloc] initWithCapacity:v7];
  preservedViewControllerStacks = self->_preservedViewControllerStacks;
  self->_preservedViewControllerStacks = v8;

  v10 = [[NSMutableArray alloc] initWithCapacity:v7];
  lastFirstResponders = self->_lastFirstResponders;
  self->_lastFirstResponders = v10;

  for (; v7; --v7)
  {
    [(NSMutableArray *)self->_preservedViewControllerStacks addObject:&__NSArray0__struct];
    v12 = self->_lastFirstResponders;
    v13 = +[NSNull null];
    [(NSMutableArray *)v12 addObject:v13];
  }
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  if (CalDraftUIEnabled() && self->_dockable)
  {
    [(AddEventViewController *)self updateOccurrenceAwaitingRefreshTo:eventCopy from:self->_event];
  }

  v5 = eventCopy;
  if (eventCopy)
  {
    objc_storeStrong(&self->_event, event);
    v5 = eventCopy;
  }
}

- (void)updateOccurrenceAwaitingRefreshTo:(id)to from:(id)from
{
  toCopy = to;
  fromCopy = from;
  if (toCopy != fromCopy)
  {
    if (fromCopy)
    {
      [(CUIKCalendarModel *)self->_model removeOccurrenceAwaitingRefresh:fromCopy];
    }

    model = self->_model;
    if (toCopy)
    {
      [(CUIKCalendarModel *)model addOccurrenceAwaitingRefresh:toCopy];
      [(CUIKCalendarModel *)self->_model setSelectedOccurrence:toCopy];
    }

    else
    {
      [(CUIKCalendarModel *)model removeOccurrenceAwaitingRefresh:fromCopy];
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->_model];
  }
}

- (BOOL)hasReminderCalendar
{
  reminderCalendar = [(CUIKCalendarModel *)self->_model reminderCalendar];
  v3 = reminderCalendar != 0;

  return v3;
}

- (id)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_managers, "count")}];
    selfCopy = self;
    objc_initWeak(&location, self);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = self->_managers;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v5)
    {
      v6 = 0;
      v7 = *v19;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          newItemTitle = [*(*(&v18 + 1) + 8 * i) newItemTitle];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100123E58;
          v16[3] = &unk_100211DE0;
          objc_copyWeak(v17, &location);
          v17[1] = v6;
          v10 = [UIAction actionWithTitle:newItemTitle image:0 identifier:0 handler:v16];

          [v4 addObject:v10];
          objc_destroyWeak(v17);
          ++v6;
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v11 = [[UISegmentedControl alloc] initWithFrame:v4 actions:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UISegmentedControl *)v11 setSelectedSegmentIndex:selfCopy->_selectedIndex];
    [(UISegmentedControl *)v11 setAccessibilityIdentifier:@"event-reminder-control"];
    v12 = selfCopy->_segmentedControl;
    selfCopy->_segmentedControl = v11;

    objc_destroyWeak(&location);
    segmentedControl = selfCopy->_segmentedControl;
  }

  return segmentedControl;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AddEventViewController;
  [(AddEventViewController *)&v3 viewDidLoad];
  [(AddEventViewController *)self setDelegate:self];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = AddEventViewController;
  [(AddEventViewController *)&v16 viewDidLayoutSubviews];
  if (self->_segmentedControl)
  {
    view = [(AddEventViewController *)self view];
    [view layoutMargins];
    v5 = v4;
    v7 = v6;

    navigationBar = [(AddEventViewController *)self navigationBar];
    [navigationBar bounds];
    v10 = v9;

    v11 = v10 - v5 - v7;
    traitCollection = [(AddEventViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
    {
      v14 = 366.0;
    }

    else
    {
      v14 = v11;
    }

    if (v14 < v11)
    {
      [(UISegmentedControl *)self->_segmentedControl sizeThatFits:v11, 0.0];
    }

    [(UISegmentedControl *)self->_segmentedControl bounds];
    traitCollection2 = [(AddEventViewController *)self traitCollection];
    [traitCollection2 displayScale];
    UIRectRoundToScale();
    [(UISegmentedControl *)self->_segmentedControl setFrame:?];
  }
}

- (void)setupNavigationItemFor:(id)for
{
  forCopy = for;
  if ([(NSArray *)self->_managers count]>= 2)
  {
    if (!self->_palette)
    {
      segmentedControl = [(AddEventViewController *)self segmentedControl];
      [segmentedControl sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v6 = v5;
      v8 = v7;
      [segmentedControl setFrame:{0.0, 0.0, v5, v7}];
      v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, v6, v8 + 12.0}];
      [v9 addSubview:segmentedControl];
      v10 = [[_UINavigationBarPalette alloc] initWithContentView:v9];
      palette = self->_palette;
      self->_palette = v10;
    }

    currentRootViewController = [(AddEventViewController *)self currentRootViewController];

    v13 = forCopy;
    if (currentRootViewController == forCopy)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"NewItemNavigationTitle" value:@"New" table:0];
      navigationItem = [forCopy navigationItem];
      [navigationItem setTitle:v16];

      navigationItem2 = [forCopy navigationItem];
      [navigationItem2 setBackButtonTitle:0];

      v13 = forCopy;
      v14 = self->_palette;
    }

    else
    {
      v14 = 0;
    }

    navigationItem3 = [v13 navigationItem];
    [navigationItem3 _setBottomPalette:v14];
  }
}

- (void)selectSegmentIndex:(unint64_t)index
{
  if (self->_selectedIndex != index)
  {
    currentManager = [(AddEventViewController *)self currentManager];
    viewController = [currentManager viewController];
    view = [viewController view];

    firstResponder = [view firstResponder];
    if (firstResponder && (objc_opt_respondsToSelector() & 1) != 0 && [firstResponder isDescendantOfView:view])
    {
      [(NSMutableArray *)self->_lastFirstResponders setObject:firstResponder atIndexedSubscript:self->_selectedIndex];
    }

    else
    {
      v9 = +[NSNull null];
      [(NSMutableArray *)self->_lastFirstResponders setObject:v9 atIndexedSubscript:self->_selectedIndex];
    }

    view2 = [(AddEventViewController *)self view];
    [view2 endEditing:1];

    currentManager2 = [(AddEventViewController *)self currentManager];
    configuration = [(AddEventViewController *)self configuration];
    addItemState = [configuration addItemState];
    [currentManager2 updateStateFromUI:addItemState];

    viewControllers = [(AddEventViewController *)self viewControllers];
    [(NSMutableArray *)self->_preservedViewControllerStacks setObject:viewControllers atIndexedSubscript:self->_selectedIndex];

    self->_selectedIndex = index;
    v15 = [(NSMutableArray *)self->_preservedViewControllerStacks objectAtIndexedSubscript:index];
    if ([v15 count])
    {
      [(NSMutableArray *)self->_preservedViewControllerStacks setObject:&__NSArray0__struct atIndexedSubscript:index];
    }

    else
    {
      currentRootViewController = [(AddEventViewController *)self currentRootViewController];
      v24 = currentRootViewController;
      v17 = [NSArray arrayWithObjects:&v24 count:1];

      v15 = v17;
    }

    [(AddEventViewController *)self setViewControllers:v15 animated:0];
    currentManager3 = [(AddEventViewController *)self currentManager];
    configuration2 = [(AddEventViewController *)self configuration];
    addItemState2 = [configuration2 addItemState];
    [currentManager3 updateUIFromState:addItemState2];

    v21 = [(NSMutableArray *)self->_lastFirstResponders objectAtIndexedSubscript:self->_selectedIndex];
    v22 = +[NSNull null];

    if (v21 != v22)
    {
      v23 = [(NSMutableArray *)self->_lastFirstResponders objectAtIndexedSubscript:self->_selectedIndex];
      [v23 becomeFirstResponder];
    }
  }
}

- (id)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    event = self->_event;
    if (!event)
    {
      v5 = self->_model;
      eventStore = [(CUIKCalendarModel *)v5 eventStore];
      v7 = [EKEvent eventWithEventStore:eventStore];

      defaultCalendarForNewEvents = [(CUIKCalendarModel *)v5 defaultCalendarForNewEvents];
      [v7 setCalendar:defaultCalendarForNewEvents];

      if (self->_eventTitle)
      {
        [v7 setTitle:?];
      }

      if (self->_eventLocation)
      {
        [v7 setStructuredLocation:?];
      }

      v9 = self->_eventStartDate;
      if (!v9)
      {
        v10 = [EKCalendarDate alloc];
        v11 = CUIKNowComponents();
        eventStore2 = [(CUIKCalendarModel *)v5 eventStore];
        timeZone = [eventStore2 timeZone];
        v9 = [v10 initWithDateComponents:v11 timeZone:timeZone];
      }

      v30 = v9;
      date = [(EKCalendarDate *)v9 date];
      v15 = CUIKDateRangeForNewEventOnDay();

      startDate = [v15 startDate];
      endDate = [v15 endDate];
      exactEventStartDate = self->_exactEventStartDate;
      if (exactEventStartDate)
      {
        date2 = [(EKCalendarDate *)exactEventStartDate date];

        startDate = date2;
      }

      eventEndDate = self->_eventEndDate;
      v31 = v5;
      if (eventEndDate)
      {
        date3 = [(EKCalendarDate *)eventEndDate date];

        endDate = date3;
      }

      [v7 setStartDate:startDate];
      [v7 setEndDate:endDate];
      [v7 setAllDay:self->_allDay];
      calendar = [v7 calendar];
      source = [calendar source];
      defaultAlarmOffset = [source defaultAlarmOffset];

      if (defaultAlarmOffset)
      {
        v25 = +[EKAlarm alarmWithRelativeOffset:](EKAlarm, "alarmWithRelativeOffset:", [defaultAlarmOffset intValue]);
        [v7 addAlarm:v25];
      }

      [(AddEventViewController *)self setEvent:v7];
    }

    v26 = [[AddItemState alloc] initWithEvent:self->_event];
    [(AddItemState *)v26 setExplicitTime:event != 0];
    v27 = [[AddItemViewControllerConfiguration alloc] initWithAddItemState:v26];
    [(AddItemViewControllerConfiguration *)v27 setSuggestionKey:self->_suggestionKey];
    [(AddItemViewControllerConfiguration *)v27 setCreationMethod:self->_eventCreationMethod];
    [(AddItemViewControllerConfiguration *)v27 setCreationViewStart:self->_calendarItemCreationViewStart];
    v28 = self->_configuration;
    self->_configuration = v27;

    configuration = self->_configuration;
  }

  return configuration;
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(AddEventViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    return 26;
  }

  else
  {
    return 30;
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v7 = [(AddEventViewController *)self presentedViewController:collection];
  NSClassFromString(@"_UIDatePickerNumericKeyboardViewController");
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [(AddEventViewController *)self presentedViewController];
    isBeingDismissed = [presentedViewController isBeingDismissed];

    if ((isBeingDismissed & 1) == 0)
    {

      [(AddEventViewController *)self dismissViewControllerAnimated:0 completion:0];
    }
  }

  else
  {
  }
}

- (void)viewWillLayoutSubviews
{
  backgroundColor = [(AddEventViewController *)self backgroundColor];
  view = [(AddEventViewController *)self view];
  [view setBackgroundColor:backgroundColor];
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager setEditorBackgroundColor:backgroundColor];
}

- (id)_eventEditorForTestingOnly
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_managers;
  _eventEditorForTestingOnly = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (_eventEditorForTestingOnly)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != _eventEditorForTestingOnly; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          _eventEditorForTestingOnly = [v6 _eventEditorForTestingOnly];
          goto LABEL_11;
        }
      }

      _eventEditorForTestingOnly = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (_eventEditorForTestingOnly)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return _eventEditorForTestingOnly;
}

- (id)backgroundColor
{
  if ([(AddEventViewController *)self isPresentedInsidePopover])
  {
    +[UIColor clearColor];
  }

  else
  {
    +[UIColor tableViewBackgroundColorOpaque];
  }
  v2 = ;

  return v2;
}

- (CGSize)preferredContentSize
{
  currentRootViewController = [(AddEventViewController *)self currentRootViewController];
  [currentRootViewController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = AddEventViewController;
  [(AddEventViewController *)&v10 viewWillAppear:appear];
  viewControllers = [(AddEventViewController *)self viewControllers];
  v5 = [viewControllers count];

  if (!v5)
  {
    currentRootViewController = [(AddEventViewController *)self currentRootViewController];
    [(AddEventViewController *)self pushViewController:currentRootViewController animated:0];
  }

  presentationController = [(AddEventViewController *)self presentationController];
  delegate = [presentationController delegate];

  if (!delegate)
  {
    presentationController2 = [(AddEventViewController *)self presentationController];
    [presentationController2 setDelegate:self];
  }
}

- (id)currentManager
{
  selectedIndex = self->_selectedIndex;
  v4 = [(NSArray *)self->_managers count];
  managers = self->_managers;
  if (selectedIndex <= v4)
  {
    [(NSArray *)managers objectAtIndexedSubscript:self->_selectedIndex];
  }

  else
  {
    [(NSArray *)managers lastObject];
  }
  v6 = ;

  return v6;
}

- (void)loadViewController
{
  currentManager = [(AddEventViewController *)self currentManager];
  configuration = [(AddEventViewController *)self configuration];
  v4 = [currentManager createViewController:configuration];
}

- (id)currentRootViewController
{
  currentManager = [(AddEventViewController *)self currentManager];
  viewController = [currentManager viewController];

  if (!viewController)
  {
    [(AddEventViewController *)self loadViewController];
    currentManager2 = [(AddEventViewController *)self currentManager];
    viewController = [currentManager2 viewController];
  }

  return viewController;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager presentationControllerDidDismiss];
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager presentationControllerDidAttemptToDismiss];
}

- (void)addItemViewControllerManager:(id)manager didCompleteWithAction:(int64_t)action
{
  managerCopy = manager;
  doneBlock = [(AddEventViewController *)self doneBlock];

  if (doneBlock)
  {
    if (objc_opt_respondsToSelector())
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100125110;
      v20[3] = &unk_100211E08;
      v21 = managerCopy;
      v8 = objc_retainBlock(v20);
    }

    else
    {
      v8 = 0;
    }

    doneBlock2 = [(AddEventViewController *)self doneBlock];
    (doneBlock2)[2](doneBlock2, self, v8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_10012511C;
      v18 = &unk_100211E08;
      v19 = managerCopy;
      calendarToMakeVisibleOnSave = objc_retainBlock(&v15);
    }

    else
    {
      calendarToMakeVisibleOnSave = 0;
    }

    [WeakRetained eventEditViewController:self didCompleteWithAction:action completionHandler:{calendarToMakeVisibleOnSave, v15, v16, v17, v18}];
LABEL_16:

    goto LABEL_17;
  }

  if (action == 1)
  {
    calendarToMakeVisibleOnSave = [managerCopy calendarToMakeVisibleOnSave];
    model = self->_model;
    objectID = [calendarToMakeVisibleOnSave objectID];
    [(CUIKCalendarModel *)model ensureCalendarVisibleWithId:objectID];

    if ([(AddEventViewController *)self showEventWhenAdded])
    {
      addEventDelegate = [(AddEventViewController *)self addEventDelegate];
      [addEventDelegate showNewEvent:self->_event];
    }

    if ([calendarToMakeVisibleOnSave sharingStatus])
    {
      [(AddEventViewController *)self attemptDisplayReviewPrompt];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)attemptDisplayReviewPrompt
{
  view = [(AddEventViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:windowScene calendarModel:self->_model];
}

- (BOOL)canDismiss
{
  currentManager = [(AddEventViewController *)self currentManager];
  canDismiss = [currentManager canDismiss];

  return canDismiss;
}

- (BOOL)displayingRootView
{
  visibleViewController = [(AddEventViewController *)self visibleViewController];
  viewControllers = [(AddEventViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];
  v6 = visibleViewController == firstObject;

  return v6;
}

- (void)didAttemptToDismiss
{
  if ([(AddEventViewController *)self displayingRootView])
  {
    currentManager = [(AddEventViewController *)self currentManager];
    confirmDismissAlertController = [currentManager confirmDismissAlertController];

    v4 = confirmDismissAlertController;
    if (confirmDismissAlertController)
    {
      [(AddEventViewController *)self presentViewController:confirmDismissAlertController animated:1 completion:0];
      v4 = confirmDismissAlertController;
    }
  }
}

- (void)configureAppearanceForSplitDayView
{
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v4 = objc_alloc_init(UINavigationBarAppearance);
    [v4 configureWithOpaqueBackground];
    navigationBar = [(AddEventViewController *)self navigationBar];
    [navigationBar setScrollEdgeAppearance:v4];
  }
}

- (BOOL)hasUnsavedChanges
{
  currentManager = [(AddEventViewController *)self currentManager];
  hasUnsavedChanges = [currentManager hasUnsavedChanges];

  return hasUnsavedChanges;
}

- (BOOL)willPresentDialogOnSave
{
  currentManager = [(AddEventViewController *)self currentManager];
  willPresentDialogOnSave = [currentManager willPresentDialogOnSave];

  return willPresentDialogOnSave;
}

- (void)completeAndSaveWithContinueBlock:(id)block
{
  blockCopy = block;
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager completeAndSaveWithContinueBlock:blockCopy];
}

- (void)setIgnoreUnsavedChanges:(BOOL)changes
{
  changesCopy = changes;
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager setIgnoreUnsavedChanges:changesCopy];
}

- (BOOL)ignoreUnsavedChanges
{
  currentManager = [(AddEventViewController *)self currentManager];
  ignoreUnsavedChanges = [currentManager ignoreUnsavedChanges];

  return ignoreUnsavedChanges;
}

- (void)cancelEditing
{
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager cancelEditing];
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  currentManager = [(AddEventViewController *)self currentManager];
  calendarToMakeVisibleOnSave = [currentManager calendarToMakeVisibleOnSave];

  return calendarToMakeVisibleOnSave;
}

- (void)setDockable:(BOOL)dockable
{
  if (self->_dockable != dockable)
  {
    self->_dockable = dockable;
    event = self->_event;
    if (dockable)
    {
      v4 = self->_event;
      event = 0;
    }

    else
    {
      v4 = 0;
    }

    [(AddEventViewController *)self updateOccurrenceAwaitingRefreshTo:v4 from:event];
  }
}

- (id)eventForDockedView
{
  currentManager = [(AddEventViewController *)self currentManager];
  configuration = [(AddEventViewController *)self configuration];
  addItemState = [configuration addItemState];
  [currentManager updateStateFromUI:addItemState];

  event = self->_event;

  return event;
}

- (void)actionButtonTapped
{
  currentManager = [(AddEventViewController *)self currentManager];
  [currentManager completeAndSaveForDockedView];
}

- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);

  return WeakRetained;
}

- (AddEventDelegate)addEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addEventDelegate);

  return WeakRetained;
}

@end