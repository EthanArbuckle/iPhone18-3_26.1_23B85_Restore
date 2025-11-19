@interface AddEventViewController
+ (id)editOrAddViewControllerForEventOrIntegrationWithEvent:(id)a3 model:(id)a4 creationMethod:(unint64_t)a5 viewStart:(unint64_t)a6 eventEditViewDelegate:(id)a7;
- (AddEventDelegate)addEventDelegate;
- (AddEventViewController)initWithModel:(id)a3 event:(id)a4;
- (AddEventViewController)initWithModel:(id)a3 eventStartDate:(id)a4;
- (AddEventViewController)initWithModel:(id)a3 eventTitle:(id)a4 startDate:(id)a5 endDate:(id)a6 location:(id)a7;
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
- (void)addItemViewControllerManager:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)attemptDisplayReviewPrompt;
- (void)cancelEditing;
- (void)completeAndSaveWithContinueBlock:(id)a3;
- (void)configureAppearanceForSplitDayView;
- (void)didAttemptToDismiss;
- (void)loadViewController;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)selectSegmentIndex:(unint64_t)a3;
- (void)setDockable:(BOOL)a3;
- (void)setEvent:(id)a3;
- (void)setIgnoreUnsavedChanges:(BOOL)a3;
- (void)setupManagers;
- (void)setupNavigationItemFor:(id)a3;
- (void)updateOccurrenceAwaitingRefreshTo:(id)a3 from:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AddEventViewController

+ (id)editOrAddViewControllerForEventOrIntegrationWithEvent:(id)a3 model:(id)a4 creationMethod:(unint64_t)a5 viewStart:(unint64_t)a6 eventEditViewDelegate:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if ([v11 isNew])
  {
    v14 = [[AddEventViewController alloc] initWithModel:v12 event:v11];
    [(AddEventViewController *)v14 setEventCreationMethod:a5];
    [(AddEventViewController *)v14 setCalendarItemCreationViewStart:a6];
    [(AddEventViewController *)v14 setInternalEditViewDelegate:v13];
  }

  else
  {
    v14 = [EKEventEditViewController eventOrIntegrationViewControllerWithEvent:v11 creationMethod:a5 viewStart:a6 eventEditViewDelegate:v13];
  }

  return v14;
}

- (AddEventViewController)initWithModel:(id)a3 eventStartDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AddEventViewController;
  v9 = [(AddEventViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, a3);
    objc_storeStrong(&v10->_eventStartDate, a4);
    [(AddEventViewController *)v10 _setClipUnderlapWhileTransitioning:1];
    [(AddEventViewController *)v10 setupManagers];
  }

  return v10;
}

- (AddEventViewController)initWithModel:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = [(AddEventViewController *)self initWithModel:a3 eventStartDate:0];
  v8 = v7;
  if (v7)
  {
    [(AddEventViewController *)v7 setEvent:v6];
    if ([v6 isReminderIntegrationEvent])
    {
      if ([(NSArray *)v8->_managers count]>= 2)
      {
        v8->_selectedIndex = 1;
      }
    }
  }

  return v8;
}

- (AddEventViewController)initWithModel:(id)a3 eventTitle:(id)a4 startDate:(id)a5 endDate:(id)a6 location:(id)a7
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(AddEventViewController *)self initWithModel:a3 eventStartDate:a5];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_eventTitle, a4);
    objc_storeStrong(&v17->_eventEndDate, a6);
    objc_storeStrong(&v17->_eventLocation, a7);
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

- (void)setEvent:(id)a3
{
  v6 = a3;
  if (CalDraftUIEnabled() && self->_dockable)
  {
    [(AddEventViewController *)self updateOccurrenceAwaitingRefreshTo:v6 from:self->_event];
  }

  v5 = v6;
  if (v6)
  {
    objc_storeStrong(&self->_event, a3);
    v5 = v6;
  }
}

- (void)updateOccurrenceAwaitingRefreshTo:(id)a3 from:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 != v6)
  {
    if (v6)
    {
      [(CUIKCalendarModel *)self->_model removeOccurrenceAwaitingRefresh:v6];
    }

    model = self->_model;
    if (v9)
    {
      [(CUIKCalendarModel *)model addOccurrenceAwaitingRefresh:v9];
      [(CUIKCalendarModel *)self->_model setSelectedOccurrence:v9];
    }

    else
    {
      [(CUIKCalendarModel *)model removeOccurrenceAwaitingRefresh:v6];
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:CUIKCalendarModelDisplayedOccurrencesChangedNotification object:self->_model];
  }
}

- (BOOL)hasReminderCalendar
{
  v2 = [(CUIKCalendarModel *)self->_model reminderCalendar];
  v3 = v2 != 0;

  return v3;
}

- (id)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_managers, "count")}];
    v14 = self;
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

          v9 = [*(*(&v18 + 1) + 8 * i) newItemTitle];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_100123E58;
          v16[3] = &unk_100211DE0;
          objc_copyWeak(v17, &location);
          v17[1] = v6;
          v10 = [UIAction actionWithTitle:v9 image:0 identifier:0 handler:v16];

          [v4 addObject:v10];
          objc_destroyWeak(v17);
          ++v6;
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v11 = [[UISegmentedControl alloc] initWithFrame:v4 actions:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UISegmentedControl *)v11 setSelectedSegmentIndex:v14->_selectedIndex];
    [(UISegmentedControl *)v11 setAccessibilityIdentifier:@"event-reminder-control"];
    v12 = v14->_segmentedControl;
    v14->_segmentedControl = v11;

    objc_destroyWeak(&location);
    segmentedControl = v14->_segmentedControl;
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
    v3 = [(AddEventViewController *)self view];
    [v3 layoutMargins];
    v5 = v4;
    v7 = v6;

    v8 = [(AddEventViewController *)self navigationBar];
    [v8 bounds];
    v10 = v9;

    v11 = v10 - v5 - v7;
    v12 = [(AddEventViewController *)self traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 2)
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
    v15 = [(AddEventViewController *)self traitCollection];
    [v15 displayScale];
    UIRectRoundToScale();
    [(UISegmentedControl *)self->_segmentedControl setFrame:?];
  }
}

- (void)setupNavigationItemFor:(id)a3
{
  v20 = a3;
  if ([(NSArray *)self->_managers count]>= 2)
  {
    if (!self->_palette)
    {
      v4 = [(AddEventViewController *)self segmentedControl];
      [v4 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v6 = v5;
      v8 = v7;
      [v4 setFrame:{0.0, 0.0, v5, v7}];
      v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, v6, v8 + 12.0}];
      [v9 addSubview:v4];
      v10 = [[_UINavigationBarPalette alloc] initWithContentView:v9];
      palette = self->_palette;
      self->_palette = v10;
    }

    v12 = [(AddEventViewController *)self currentRootViewController];

    v13 = v20;
    if (v12 == v20)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"NewItemNavigationTitle" value:@"New" table:0];
      v17 = [v20 navigationItem];
      [v17 setTitle:v16];

      v18 = [v20 navigationItem];
      [v18 setBackButtonTitle:0];

      v13 = v20;
      v14 = self->_palette;
    }

    else
    {
      v14 = 0;
    }

    v19 = [v13 navigationItem];
    [v19 _setBottomPalette:v14];
  }
}

- (void)selectSegmentIndex:(unint64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    v5 = [(AddEventViewController *)self currentManager];
    v6 = [v5 viewController];
    v7 = [v6 view];

    v8 = [v7 firstResponder];
    if (v8 && (objc_opt_respondsToSelector() & 1) != 0 && [v8 isDescendantOfView:v7])
    {
      [(NSMutableArray *)self->_lastFirstResponders setObject:v8 atIndexedSubscript:self->_selectedIndex];
    }

    else
    {
      v9 = +[NSNull null];
      [(NSMutableArray *)self->_lastFirstResponders setObject:v9 atIndexedSubscript:self->_selectedIndex];
    }

    v10 = [(AddEventViewController *)self view];
    [v10 endEditing:1];

    v11 = [(AddEventViewController *)self currentManager];
    v12 = [(AddEventViewController *)self configuration];
    v13 = [v12 addItemState];
    [v11 updateStateFromUI:v13];

    v14 = [(AddEventViewController *)self viewControllers];
    [(NSMutableArray *)self->_preservedViewControllerStacks setObject:v14 atIndexedSubscript:self->_selectedIndex];

    self->_selectedIndex = a3;
    v15 = [(NSMutableArray *)self->_preservedViewControllerStacks objectAtIndexedSubscript:a3];
    if ([v15 count])
    {
      [(NSMutableArray *)self->_preservedViewControllerStacks setObject:&__NSArray0__struct atIndexedSubscript:a3];
    }

    else
    {
      v16 = [(AddEventViewController *)self currentRootViewController];
      v24 = v16;
      v17 = [NSArray arrayWithObjects:&v24 count:1];

      v15 = v17;
    }

    [(AddEventViewController *)self setViewControllers:v15 animated:0];
    v18 = [(AddEventViewController *)self currentManager];
    v19 = [(AddEventViewController *)self configuration];
    v20 = [v19 addItemState];
    [v18 updateUIFromState:v20];

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
      v6 = [(CUIKCalendarModel *)v5 eventStore];
      v7 = [EKEvent eventWithEventStore:v6];

      v8 = [(CUIKCalendarModel *)v5 defaultCalendarForNewEvents];
      [v7 setCalendar:v8];

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
        v12 = [(CUIKCalendarModel *)v5 eventStore];
        v13 = [v12 timeZone];
        v9 = [v10 initWithDateComponents:v11 timeZone:v13];
      }

      v30 = v9;
      v14 = [(EKCalendarDate *)v9 date];
      v15 = CUIKDateRangeForNewEventOnDay();

      v16 = [v15 startDate];
      v17 = [v15 endDate];
      exactEventStartDate = self->_exactEventStartDate;
      if (exactEventStartDate)
      {
        v19 = [(EKCalendarDate *)exactEventStartDate date];

        v16 = v19;
      }

      eventEndDate = self->_eventEndDate;
      v31 = v5;
      if (eventEndDate)
      {
        v21 = [(EKCalendarDate *)eventEndDate date];

        v17 = v21;
      }

      [v7 setStartDate:v16];
      [v7 setEndDate:v17];
      [v7 setAllDay:self->_allDay];
      v22 = [v7 calendar];
      v23 = [v22 source];
      v24 = [v23 defaultAlarmOffset];

      if (v24)
      {
        v25 = +[EKAlarm alarmWithRelativeOffset:](EKAlarm, "alarmWithRelativeOffset:", [v24 intValue]);
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
  v2 = [(AddEventViewController *)self view];
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v7 = [(AddEventViewController *)self presentedViewController:a3];
  NSClassFromString(@"_UIDatePickerNumericKeyboardViewController");
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AddEventViewController *)self presentedViewController];
    v6 = [v5 isBeingDismissed];

    if ((v6 & 1) == 0)
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
  v5 = [(AddEventViewController *)self backgroundColor];
  v3 = [(AddEventViewController *)self view];
  [v3 setBackgroundColor:v5];
  v4 = [(AddEventViewController *)self currentManager];
  [v4 setEditorBackgroundColor:v5];
}

- (id)_eventEditorForTestingOnly
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_managers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v3 = [v6 _eventEditorForTestingOnly];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(AddEventViewController *)self currentRootViewController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = AddEventViewController;
  [(AddEventViewController *)&v10 viewWillAppear:a3];
  v4 = [(AddEventViewController *)self viewControllers];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(AddEventViewController *)self currentRootViewController];
    [(AddEventViewController *)self pushViewController:v6 animated:0];
  }

  v7 = [(AddEventViewController *)self presentationController];
  v8 = [v7 delegate];

  if (!v8)
  {
    v9 = [(AddEventViewController *)self presentationController];
    [v9 setDelegate:self];
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
  v5 = [(AddEventViewController *)self currentManager];
  v3 = [(AddEventViewController *)self configuration];
  v4 = [v5 createViewController:v3];
}

- (id)currentRootViewController
{
  v3 = [(AddEventViewController *)self currentManager];
  v4 = [v3 viewController];

  if (!v4)
  {
    [(AddEventViewController *)self loadViewController];
    v5 = [(AddEventViewController *)self currentManager];
    v4 = [v5 viewController];
  }

  return v4;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(AddEventViewController *)self currentManager];
  [v3 presentationControllerDidDismiss];
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v3 = [(AddEventViewController *)self currentManager];
  [v3 presentationControllerDidAttemptToDismiss];
}

- (void)addItemViewControllerManager:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v6 = a3;
  v7 = [(AddEventViewController *)self doneBlock];

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100125110;
      v20[3] = &unk_100211E08;
      v21 = v6;
      v8 = objc_retainBlock(v20);
    }

    else
    {
      v8 = 0;
    }

    v9 = [(AddEventViewController *)self doneBlock];
    (v9)[2](v9, self, v8);
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
      v19 = v6;
      v11 = objc_retainBlock(&v15);
    }

    else
    {
      v11 = 0;
    }

    [WeakRetained eventEditViewController:self didCompleteWithAction:a4 completionHandler:{v11, v15, v16, v17, v18}];
LABEL_16:

    goto LABEL_17;
  }

  if (a4 == 1)
  {
    v11 = [v6 calendarToMakeVisibleOnSave];
    model = self->_model;
    v13 = [v11 objectID];
    [(CUIKCalendarModel *)model ensureCalendarVisibleWithId:v13];

    if ([(AddEventViewController *)self showEventWhenAdded])
    {
      v14 = [(AddEventViewController *)self addEventDelegate];
      [v14 showNewEvent:self->_event];
    }

    if ([v11 sharingStatus])
    {
      [(AddEventViewController *)self attemptDisplayReviewPrompt];
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)attemptDisplayReviewPrompt
{
  v5 = [(AddEventViewController *)self view];
  v3 = [v5 window];
  v4 = [v3 windowScene];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:v4 calendarModel:self->_model];
}

- (BOOL)canDismiss
{
  v2 = [(AddEventViewController *)self currentManager];
  v3 = [v2 canDismiss];

  return v3;
}

- (BOOL)displayingRootView
{
  v3 = [(AddEventViewController *)self visibleViewController];
  v4 = [(AddEventViewController *)self viewControllers];
  v5 = [v4 firstObject];
  v6 = v3 == v5;

  return v6;
}

- (void)didAttemptToDismiss
{
  if ([(AddEventViewController *)self displayingRootView])
  {
    v3 = [(AddEventViewController *)self currentManager];
    v5 = [v3 confirmDismissAlertController];

    v4 = v5;
    if (v5)
    {
      [(AddEventViewController *)self presentViewController:v5 animated:1 completion:0];
      v4 = v5;
    }
  }
}

- (void)configureAppearanceForSplitDayView
{
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    v4 = objc_alloc_init(UINavigationBarAppearance);
    [v4 configureWithOpaqueBackground];
    v3 = [(AddEventViewController *)self navigationBar];
    [v3 setScrollEdgeAppearance:v4];
  }
}

- (BOOL)hasUnsavedChanges
{
  v2 = [(AddEventViewController *)self currentManager];
  v3 = [v2 hasUnsavedChanges];

  return v3;
}

- (BOOL)willPresentDialogOnSave
{
  v2 = [(AddEventViewController *)self currentManager];
  v3 = [v2 willPresentDialogOnSave];

  return v3;
}

- (void)completeAndSaveWithContinueBlock:(id)a3
{
  v4 = a3;
  v5 = [(AddEventViewController *)self currentManager];
  [v5 completeAndSaveWithContinueBlock:v4];
}

- (void)setIgnoreUnsavedChanges:(BOOL)a3
{
  v3 = a3;
  v4 = [(AddEventViewController *)self currentManager];
  [v4 setIgnoreUnsavedChanges:v3];
}

- (BOOL)ignoreUnsavedChanges
{
  v2 = [(AddEventViewController *)self currentManager];
  v3 = [v2 ignoreUnsavedChanges];

  return v3;
}

- (void)cancelEditing
{
  v2 = [(AddEventViewController *)self currentManager];
  [v2 cancelEditing];
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  v2 = [(AddEventViewController *)self currentManager];
  v3 = [v2 calendarToMakeVisibleOnSave];

  return v3;
}

- (void)setDockable:(BOOL)a3
{
  if (self->_dockable != a3)
  {
    self->_dockable = a3;
    event = self->_event;
    if (a3)
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
  v3 = [(AddEventViewController *)self currentManager];
  v4 = [(AddEventViewController *)self configuration];
  v5 = [v4 addItemState];
  [v3 updateStateFromUI:v5];

  event = self->_event;

  return event;
}

- (void)actionButtonTapped
{
  v2 = [(AddEventViewController *)self currentManager];
  [v2 completeAndSaveForDockedView];
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