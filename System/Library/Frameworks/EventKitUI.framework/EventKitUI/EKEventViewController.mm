@interface EKEventViewController
- (CGSize)preferredContentSize;
- (EKEventViewController)initWithIsReminder:(BOOL)reminder;
- (EKEventViewController)initWithNibName:(id)name bundle:(id)bundle;
- (EKEventViewController)initWithRemoteUI:(BOOL)i;
- (id)actionButtonSymbol;
- (id)eventForDockedView;
- (unint64_t)supportedInterfaceOrientations;
- (void)actionButtonTapped;
- (void)commonInit;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation EKEventViewController

- (EKEventViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = EKEventViewController;
  v4 = [(EKEventViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [SwappableViewControllerImplementationFactory eventViewControllerImplAndIsReminder:0];
    impl = v4->_impl;
    v4->_impl = v5;

    [(EKEventViewController *)v4 addChildViewController:v4->_impl];
    [(EKEventViewControllerImpl *)v4->_impl didMoveToParentViewController:v4];
    [(EKEventViewController *)v4 commonInit];
  }

  return v4;
}

- (EKEventViewController)initWithIsReminder:(BOOL)reminder
{
  reminderCopy = reminder;
  v8.receiver = self;
  v8.super_class = EKEventViewController;
  v4 = [(EKEventViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [SwappableViewControllerImplementationFactory eventViewControllerImplAndIsReminder:reminderCopy];
    impl = v4->_impl;
    v4->_impl = v5;

    [(EKEventViewController *)v4 addChildViewController:v4->_impl];
    [(EKEventViewControllerImpl *)v4->_impl didMoveToParentViewController:v4];
    [(EKEventViewController *)v4 commonInit];
  }

  return v4;
}

- (EKEventViewController)initWithRemoteUI:(BOOL)i
{
  iCopy = i;
  v8.receiver = self;
  v8.super_class = EKEventViewController;
  v4 = [(EKEventViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [SwappableViewControllerImplementationFactory eventViewControllerImplWithRemoteUI:iCopy isReminder:0];
    impl = v4->_impl;
    v4->_impl = v5;

    [(EKEventViewController *)v4 addChildViewController:v4->_impl];
    [(EKEventViewControllerImpl *)v4->_impl didMoveToParentViewController:v4];
    [(EKEventViewController *)v4 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  EKUILogInitIfNeeded();
  [(EKEventViewController *)self setCalendarPreviewIsInlineDayView:1];
  [(EKEventViewController *)self setInlineDayViewRespectsSelectedCalendarsFilter:1];
  [(EKEventViewController *)self setAllowsSubitems:1];
  [(EKEventViewController *)self setAllowsInviteResponses:1];
  [(EKEventViewController *)self setShowsDoneButton:1];
  [(EKEventViewController *)self setEditorShowTransition:8];

  [(EKEventViewController *)self setEditorHideTransition:9];
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = EKEventViewController;
  [(EKEventViewController *)&v28 loadView];
  view = [(EKEventViewController *)self view];
  view2 = [(EKEventViewControllerImpl *)self->_impl view];
  [view addSubview:view2];

  view3 = [(EKEventViewControllerImpl *)self->_impl view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  view4 = [(EKEventViewControllerImpl *)self->_impl view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKEventViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v23;
  view6 = [(EKEventViewControllerImpl *)self->_impl view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(EKEventViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v17;
  view8 = [(EKEventViewControllerImpl *)self->_impl view];
  topAnchor = [view8 topAnchor];
  view9 = [(EKEventViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v9;
  view10 = [(EKEventViewControllerImpl *)self->_impl view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKEventViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v15];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = EKEventViewController;
  [(EKEventViewController *)&v2 viewDidLoad];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v11.receiver = self;
  v11.super_class = EKEventViewController;
  [(EKEventViewController *)&v11 viewIsAppearing:appearing];
  mEMORY[0x1E69933F8] = [MEMORY[0x1E69933F8] shared];
  isCurrentProcessAnApplicationExtension = [mEMORY[0x1E69933F8] isCurrentProcessAnApplicationExtension];

  if (isCurrentProcessAnApplicationExtension)
  {
    v6 = +[EKUIApplicationExtensionOverrides shared];
    viewHierarchyOrOverride = [v6 viewHierarchyOrOverride];

    ekui_tintColor = [viewHierarchyOrOverride ekui_tintColor];
    view = [(EKEventViewController *)self view];
    window = [view window];
    [window setTintColor:ekui_tintColor];
  }

  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
  {
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(UIViewController *)self ekui_adjustNavAndToolBarToTransparentStyles];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = EKEventViewController;
  [(EKEventViewController *)&v3 viewDidAppear:appear];
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_57);
  }
}

void __39__EKEventViewController_viewDidAppear___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"EKEventViewControllerDidAppearNotification" object:0];
}

- (CGSize)preferredContentSize
{
  [(EKEventViewControllerImpl *)self->_impl preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = EKEventViewController;
  containerCopy = container;
  [(EKEventViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EKEventViewController *)self setPreferredContentSize:v6, v8];
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(EKEventViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

  if (IsRegularInViewHierarchy)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (id)eventForDockedView
{
  [(EKEventViewControllerImpl *)self->_impl updateEKEventForDockedView];
  impl = self->_impl;

  return [(EKEventViewControllerImpl *)impl event];
}

- (id)actionButtonSymbol
{
  if ([(EKEventViewController *)self isEditingMode])
  {
    v2 = @"checkmark";
  }

  else
  {
    v2 = @"xmark";
  }

  return v2;
}

- (void)actionButtonTapped
{
  [(EKEventViewController *)self doneButtonTapped];

  [(EKEventViewController *)self dismissViewControllerAnimated:1 completion:0];
}

@end