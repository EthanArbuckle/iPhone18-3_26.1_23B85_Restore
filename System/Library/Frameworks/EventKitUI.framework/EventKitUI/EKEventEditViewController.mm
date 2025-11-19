@interface EKEventEditViewController
+ (EKEventEditViewController)eventEditViewControllerWithEvent:(id)a3 eventStore:(id)a4 editViewDelegate:(id)a5;
+ (id)eventOrIntegrationViewControllerWithEvent:(id)a3 creationMethod:(unint64_t)a4 viewStart:(unint64_t)a5 eventEditViewDelegate:(id)a6;
+ (void)registerIntegrationEditViewControllerCreator:(id)a3;
- (BOOL)displayingRootView;
- (CGSize)preferredContentSize;
- (EKCalendar)calendarToMakeVisibleOnSave;
- (EKEventEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (EKEventEditViewController)initWithRemoteUI:(BOOL)a3;
- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate;
- (EKEventStore)eventStore;
- (void)commonInit;
- (void)configureAppearanceForSplitDayView;
- (void)setEvent:(EKEvent *)event;
- (void)setEventStore:(EKEventStore *)eventStore;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKEventEditViewController

- (EKEventEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = EKEventEditViewController;
  v4 = [(EKEventEditViewController *)&v9 initWithNibName:a3 bundle:a4];
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

- (EKEventEditViewController)initWithRemoteUI:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = EKEventEditViewController;
  v4 = [(EKEventEditViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(EKEventEditViewController *)v4 commonInit];
    v6 = [SwappableViewControllerImplementationFactory eventEditViewControllerImplWithRemoteUI:v3];
    impl = v5->_impl;
    v5->_impl = v6;

    [(EKEventEditViewController *)v5 pushViewController:v5->_impl animated:0];
  }

  return v5;
}

- (void)commonInit
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  [(EKEventEditViewController *)self _setClipUnderlapWhileTransitioning:1];
}

- (CGSize)preferredContentSize
{
  [(EKEventEditViewControllerImpl *)self->_impl preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = EKEventEditViewController;
  [(EKEventEditViewController *)&v7 viewWillAppear:a3];
  v4 = [(EKEventEditViewController *)self presentationController];
  v5 = [v4 delegate];

  if (!v5)
  {
    v6 = [(EKEventEditViewController *)self presentationController];
    [v6 setDelegate:self];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = EKEventEditViewController;
  [(EKEventEditViewController *)&v11 viewIsAppearing:a3];
  v4 = [MEMORY[0x1E69933F8] shared];
  v5 = [v4 isCurrentProcessAnApplicationExtension];

  if (v5)
  {
    v6 = +[EKUIApplicationExtensionOverrides shared];
    v7 = [v6 viewHierarchyOrOverride];

    v8 = [v7 ekui_tintColor];
    v9 = [(EKEventEditViewController *)self view];
    v10 = [v9 window];
    [v10 setTintColor:v8];
  }
}

- (void)setEvent:(EKEvent *)event
{
  v12 = event;
  v4 = [(EKEventEditViewControllerImpl *)self->_impl event];

  v5 = v12;
  if (v4 != v12)
  {
    v6 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];
    if (v6)
    {
      v7 = v6;
      v8 = [(EKEvent *)v12 eventStore];
      if (v8)
      {
        v9 = v8;
        v10 = [(EKEvent *)v12 eventStore];
        v11 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

        if (v10 != v11)
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
  v4 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

  v5 = v18;
  if (v4 != v18)
  {
    v6 = [(EKEventEditViewControllerImpl *)self->_impl event];
    if (v6)
    {
      v7 = v6;
      v8 = [(EKEventEditViewControllerImpl *)self->_impl event];
      v9 = [v8 eventStore];
      if (v9)
      {
        v10 = v9;
        v11 = [(EKEventEditViewControllerImpl *)self->_impl event];
        v12 = [v11 eventStore];

        if (v12 != v18)
        {
          [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Event does not belong to eventStore"];
        }
      }

      else
      {
      }
    }

    [(EKEventEditViewControllerImpl *)self->_impl setEventStore:v18];
    v13 = [(EKEventEditViewControllerImpl *)self->_impl event];

    v5 = v18;
    if (!v13)
    {
      v14 = [MEMORY[0x1E6966A08] eventWithEventStore:v18];
      v15 = [MEMORY[0x1E695DF00] date];
      [v14 setStartDate:v15];

      v16 = [MEMORY[0x1E695DF00] date];
      [v14 setEndDate:v16];

      v17 = [(EKEventStore *)v18 defaultCalendarForNewEvents];
      [v14 setCalendar:v17];

      [(EKEventEditViewControllerImpl *)self->_impl setEvent:v14];
      [(EKEventEditViewControllerImpl *)self->_impl setCreatedOwnEKEvent:1];

      v5 = v18;
    }
  }
}

- (EKEventStore)eventStore
{
  v3 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

  if (!v3)
  {
    v4 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, "EKEventEditViewController: Getting eventStore before setting it", v7, 2u);
    }
  }

  v5 = [(EKEventEditViewControllerImpl *)self->_impl eventStore];

  return v5;
}

- (EKEventOrIntegrationEditViewDelegate)internalEditViewDelegate
{
  v2 = [(EKEventEditViewControllerImpl *)self->_impl editViewDelegate];
  if ([v2 conformsToProtocol:&unk_1F4F5A698])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)displayingRootView
{
  v3 = [(EKEventEditViewController *)self visibleViewController];
  v4 = [(EKEventEditViewController *)self viewControllers];
  v5 = [v4 firstObject];
  v6 = v3 == v5;

  return v6;
}

- (void)configureAppearanceForSplitDayView
{
  if ((MEMORY[0x1D38B98D0](self, a2) & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v4 configureWithOpaqueBackground];
    v3 = [(EKEventEditViewController *)self navigationBar];
    [v3 setScrollEdgeAppearance:v4];
  }
}

- (EKCalendar)calendarToMakeVisibleOnSave
{
  v2 = [(EKEventEditViewController *)self event];
  v3 = [v2 calendar];

  return v3;
}

+ (EKEventEditViewController)eventEditViewControllerWithEvent:(id)a3 eventStore:(id)a4 editViewDelegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[EKEventEditViewController alloc] initWithNibName:0 bundle:0];
  [(EKEventEditViewController *)v10 setEvent:v9];

  [(EKEventEditViewController *)v10 setEventStore:v8];
  [(EKEventEditViewController *)v10 setEditViewDelegate:v7];

  return v10;
}

+ (void)registerIntegrationEditViewControllerCreator:(id)a3
{
  v3 = a3;
  v4 = _integrationEditViewControllerCreators;
  v7 = v3;
  if (!_integrationEditViewControllerCreators)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = _integrationEditViewControllerCreators;
    _integrationEditViewControllerCreators = v5;

    v3 = v7;
    v4 = _integrationEditViewControllerCreators;
  }

  [v4 addObject:v3];
}

+ (id)eventOrIntegrationViewControllerWithEvent:(id)a3 creationMethod:(unint64_t)a4 viewStart:(unint64_t)a5 eventEditViewDelegate:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  if ([v9 isIntegrationEvent])
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
        if ([v16 useThisIntegrationEditorForEvent:{v9, v20}])
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

      v17 = [v16 integrationViewControllerForEvent:v9 eventEditViewDelegate:v10];

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

  v18 = [v9 eventStore];
  v17 = [EKEventEditViewController eventEditViewControllerWithEvent:v9 eventStore:v18 editViewDelegate:v10];

  [v17 setEventCreationMethod:a4];
  [v17 setEventCreationViewStart:a5];
LABEL_13:

  return v17;
}

@end