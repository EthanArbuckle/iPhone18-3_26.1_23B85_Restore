@interface EKEventViewController
- (CGSize)preferredContentSize;
- (EKEventViewController)initWithIsReminder:(BOOL)a3;
- (EKEventViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (EKEventViewController)initWithRemoteUI:(BOOL)a3;
- (id)actionButtonSymbol;
- (id)eventForDockedView;
- (unint64_t)supportedInterfaceOrientations;
- (void)actionButtonTapped;
- (void)commonInit;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation EKEventViewController

- (EKEventViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = EKEventViewController;
  v4 = [(EKEventViewController *)&v8 initWithNibName:a3 bundle:a4];
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

- (EKEventViewController)initWithIsReminder:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = EKEventViewController;
  v4 = [(EKEventViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [SwappableViewControllerImplementationFactory eventViewControllerImplAndIsReminder:v3];
    impl = v4->_impl;
    v4->_impl = v5;

    [(EKEventViewController *)v4 addChildViewController:v4->_impl];
    [(EKEventViewControllerImpl *)v4->_impl didMoveToParentViewController:v4];
    [(EKEventViewController *)v4 commonInit];
  }

  return v4;
}

- (EKEventViewController)initWithRemoteUI:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = EKEventViewController;
  v4 = [(EKEventViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [SwappableViewControllerImplementationFactory eventViewControllerImplWithRemoteUI:v3 isReminder:0];
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
  v3 = [(EKEventViewController *)self view];
  v4 = [(EKEventViewControllerImpl *)self->_impl view];
  [v3 addSubview:v4];

  v5 = [(EKEventViewControllerImpl *)self->_impl view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  v27 = [(EKEventViewControllerImpl *)self->_impl view];
  v25 = [v27 leadingAnchor];
  v26 = [(EKEventViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v22 = [(EKEventViewControllerImpl *)self->_impl view];
  v20 = [v22 trailingAnchor];
  v21 = [(EKEventViewController *)self view];
  v19 = [v21 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v17;
  v16 = [(EKEventViewControllerImpl *)self->_impl view];
  v6 = [v16 topAnchor];
  v7 = [(EKEventViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v29[2] = v9;
  v10 = [(EKEventViewControllerImpl *)self->_impl view];
  v11 = [v10 bottomAnchor];
  v12 = [(EKEventViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
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

- (void)viewIsAppearing:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = EKEventViewController;
  [(EKEventViewController *)&v11 viewIsAppearing:a3];
  v4 = [MEMORY[0x1E69933F8] shared];
  v5 = [v4 isCurrentProcessAnApplicationExtension];

  if (v5)
  {
    v6 = +[EKUIApplicationExtensionOverrides shared];
    v7 = [v6 viewHierarchyOrOverride];

    v8 = [v7 ekui_tintColor];
    v9 = [(EKEventViewController *)self view];
    v10 = [v9 window];
    [v10 setTintColor:v8];
  }

  if ([MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp])
  {
    if ((MEMORY[0x1D38B98D0]() & 1) == 0)
    {
      [(UIViewController *)self ekui_adjustNavAndToolBarToTransparentStyles];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = EKEventViewController;
  [(EKEventViewController *)&v3 viewDidAppear:a3];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = EKEventViewController;
  v4 = a3;
  [(EKEventViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EKEventViewController *)self setPreferredContentSize:v6, v8];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(EKEventViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v2);

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