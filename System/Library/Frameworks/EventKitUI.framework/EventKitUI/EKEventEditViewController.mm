@interface EKEventEditViewController
+ (EKEventEditViewController)eventEditViewControllerWithEvent:(id)event eventStore:(id)store editViewDelegate:(id)delegate;
+ (id)eventOrIntegrationViewControllerWithEvent:(id)event creationMethod:(unint64_t)method viewStart:(unint64_t)start eventEditViewDelegate:(id)delegate;
+ (void)registerIntegrationEditViewControllerCreator:(id)creator;
- (BOOL)displayingRootView;
- (CGSize)preferredContentSize;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (EKEventEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (EKEventEditViewController)initWithRemoteUI:(BOOL)i;
- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate;
- (EKEventStore)eventStore;
- (void)commonInit;
- (void)configureAppearanceForSplitDayView;
- (void)setEvent:(EKEvent *)event;
- (void)setEventStore:(EKEventStore *)eventStore;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EKEventEditViewController

- (EKEventEditViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = EKEventEditViewController;
  v4 = [(EKEventEditViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(EKEventEditViewController *)v4 commonInit];
    v6 = +[SwappableViewControllerImplementationFactory eventEditViewControllerImpl];
    impl = v5->_impl;
    v5->_impl = v6;

    [(EKEventEditViewController *)v5 pushViewController:v5->_impl animated:0];
  }

  return v5;
}

- (EKEventEditViewController)initWithRemoteUI:(BOOL)i
{
  iCopy = i;
  v9.receiver = self;
  v9.super_class = EKEventEditViewController;
  v4 = [(EKEventEditViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(EKEventEditViewController *)v4 commonInit];
    v6 = [SwappableViewControllerImplementationFactory eventEditViewControllerImplWithRemoteUI:iCopy];
    impl = v5->_impl;
    v5->_impl = v6;

    [(EKEventEditViewController *)v5 pushViewController:v5->_impl animated:0];
  }

  return v5;
}

- (void)commonInit
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  [(EKEventEditViewController *)self _setClipUnderlapWhileTransitioning:1];
}

- (CGSize)preferredContentSize
{
  [(EKEventEditViewControllerImpl *)self->_impl preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = EKEventEditViewController;
  [(EKEventEditViewController *)&v7 viewWillAppear:appear];
  presentationController = [(EKEventEditViewController *)self presentationController];
  delegate = [presentationController delegate];

  if (!delegate)
  {
    presentationController2 = [(EKEventEditViewController *)self presentationController];
    [presentationController2 setDelegate:self];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v11.receiver = self;
  v11.super_class = EKEventEditViewController;
  [(EKEventEditViewController *)&v11 viewIsAppearing:appearing];
  mEMORY[0x1E69933F8] = [MEMORY[0x1E69933F8] shared];
  isCurrentProcessAnApplicationExtension = [mEMORY[0x1E69933F8] isCurrentProcessAnApplicationExtension];

  if (isCurrentProcessAnApplicationExtension)
  {
    v6 = +[EKUIApplicationExtensionOverrides shared];
    viewHierarchyOrOverride = [v6 viewHierarchyOrOverride];

    ekui_tintColor = [viewHierarchyOrOverride ekui_tintColor];
    view = [(EKEventEditViewController *)self view];
    window = [view window];
    [window setTintColor:ekui_tintColor];
  }
}

- (void)setEvent:(EKEvent *)event
{
  v12 = event;
  event = [(EKEventEditViewControllerImpl *)self->_impl event];

  v5 = v12;
  if (event != v12)
  {
    eventStore = [(EKEventEditViewControllerImpl *)self->_impl eventStore];
    if (eventStore)
    {
      v7 = eventStore;
      eventStore2 = [(EKEvent *)v12 eventStore];
      if (eventStore2)
      {
        v9 = eventStore2;
        eventStore3 = [(EKEvent *)v12 eventStore];
        eventStore4 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

        if (eventStore3 != eventStore4)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Event does not belong to eventStore"];
        }
      }

      else
      {
      }
    }

    [(EKEventEditViewControllerImpl *)self->_impl setEvent:v12];
    v5 = v12;
  }
}

- (void)setEventStore:(EKEventStore *)eventStore
{
  v18 = eventStore;
  eventStore = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

  v5 = v18;
  if (eventStore != v18)
  {
    event = [(EKEventEditViewControllerImpl *)self->_impl event];
    if (event)
    {
      v7 = event;
      event2 = [(EKEventEditViewControllerImpl *)self->_impl event];
      eventStore2 = [event2 eventStore];
      if (eventStore2)
      {
        v10 = eventStore2;
        event3 = [(EKEventEditViewControllerImpl *)self->_impl event];
        eventStore3 = [event3 eventStore];

        if (eventStore3 != v18)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Event does not belong to eventStore"];
        }
      }

      else
      {
      }
    }

    [(EKEventEditViewControllerImpl *)self->_impl setEventStore:v18];
    event4 = [(EKEventEditViewControllerImpl *)self->_impl event];

    v5 = v18;
    if (!event4)
    {
      v14 = [MEMORY[0x1E6966A08] eventWithEventStore:v18];
      date = [MEMORY[0x1E695DF00] date];
      [v14 setStartDate:date];

      date2 = [MEMORY[0x1E695DF00] date];
      [v14 setEndDate:date2];

      defaultCalendarForNewEvents = [(EKEventStore *)v18 defaultCalendarForNewEvents];
      [v14 setCalendar:defaultCalendarForNewEvents];

      [(EKEventEditViewControllerImpl *)self->_impl setEvent:v14];
      [(EKEventEditViewControllerImpl *)self->_impl setCreatedOwnEKEvent:1];

      v5 = v18;
    }
  }
}

- (EKEventStore)eventStore
{
  eventStore = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

  if (!eventStore)
  {
    v4 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "EKEventEditViewController: Getting eventStore before setting it", v7, 2u);
    }
  }

  eventStore2 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

  return eventStore2;
}

- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate
{
  editViewDelegate = [(EKEventEditViewControllerImpl *)self->_impl editViewDelegate];
  if ([editViewDelegate conformsToProtocol:&unk_1F4F5A698])
  {
    v3 = editViewDelegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)displayingRootView
{
  visibleViewController = [(EKEventEditViewController *)self visibleViewController];
  viewControllers = [(EKEventEditViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];
  v6 = visibleViewController == firstObject;

  return v6;
}

- (void)configureAppearanceForSplitDayView
{
  if ((MEMORY[0x1D38B98D0](self, a2) & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v4 configureWithOpaqueBackground];
    navigationBar = [(EKEventEditViewController *)self navigationBar];
    [navigationBar setScrollEdgeAppearance:v4];
  }
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  event = [(EKEventEditViewController *)self event];
  calendar = [event calendar];

  return calendar;
}

+ (EKEventEditViewController)eventEditViewControllerWithEvent:(id)event eventStore:(id)store editViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  storeCopy = store;
  eventCopy = event;
  v10 = [[EKEventEditViewController alloc] initWithNibName:0 bundle:0];
  [(EKEventEditViewController *)v10 setEvent:eventCopy];

  [(EKEventEditViewController *)v10 setEventStore:storeCopy];
  [(EKEventEditViewController *)v10 setEditViewDelegate:delegateCopy];

  return v10;
}

+ (void)registerIntegrationEditViewControllerCreator:(id)creator
{
  creatorCopy = creator;
  v4 = _integrationEditViewControllerCreators;
  v7 = creatorCopy;
  if (!_integrationEditViewControllerCreators)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = _integrationEditViewControllerCreators;
    _integrationEditViewControllerCreators = v5;

    creatorCopy = v7;
    v4 = _integrationEditViewControllerCreators;
  }

  [v4 addObject:creatorCopy];
}

+ (id)eventOrIntegrationViewControllerWithEvent:(id)event creationMethod:(unint64_t)method viewStart:(unint64_t)start eventEditViewDelegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  delegateCopy = delegate;
  if ([eventCopy isIntegrationEvent])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = _integrationEditViewControllerCreators;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if ([v16 useThisIntegrationEditorForEvent:{eventCopy, v20}])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = [v16 integrationViewControllerForEvent:eventCopy eventEditViewDelegate:delegateCopy];

      if (v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }
  }

  eventStore = [eventCopy eventStore];
  v17 = [EKEventEditViewController eventEditViewControllerWithEvent:eventCopy eventStore:eventStore editViewDelegate:delegateCopy];

  [v17 setEventCreationMethod:method];
  [v17 setEventCreationViewStart:start];
LABEL_13:

  return v17;
}

@end