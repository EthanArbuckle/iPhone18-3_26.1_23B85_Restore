@interface EKUIProposedTimeEventViewController
- (CGSize)preferredContentSize;
- (EKUIProposedTimeEventViewController)initWithProposedTimeAttendee:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation EKUIProposedTimeEventViewController

- (EKUIProposedTimeEventViewController)initWithProposedTimeAttendee:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKUIProposedTimeEventViewController;
  v5 = [(EKUIProposedTimeEventViewController *)&v9 init];
  if (v5)
  {
    v6 = +[SwappableViewControllerImplementationFactory proposedTimeEventViewControllerImpl];
    impl = v5->_impl;
    v5->_impl = v6;

    [(EKUIProposedTimeEventViewController *)v5 addChildViewController:v5->_impl];
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl didMoveToParentViewController:v5];
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl setProposedTimeAttendee:v4];
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl setCalendarPreviewIsInlineDayView:1];
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl setAllowsEditing:1];
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl setAllowsCalendarPreview:1];
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl setShowsDetectedConferenceItem:1];
  }

  return v5;
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = EKUIProposedTimeEventViewController;
  [(EKUIProposedTimeEventViewController *)&v28 loadView];
  v3 = [(EKUIProposedTimeEventViewController *)self view];
  v4 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  [v3 addSubview:v4];

  v5 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  v27 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  v25 = [v27 leadingAnchor];
  v26 = [(EKUIProposedTimeEventViewController *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v22 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  v20 = [v22 trailingAnchor];
  v21 = [(EKUIProposedTimeEventViewController *)self view];
  v19 = [v21 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v17;
  v16 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  v6 = [v16 topAnchor];
  v7 = [(EKUIProposedTimeEventViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v29[2] = v9;
  v10 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  v11 = [v10 bottomAnchor];
  v12 = [(EKUIProposedTimeEventViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v29[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v15];
}

- (CGSize)preferredContentSize
{
  [(EKUIProposedTimeEventViewControllerImpl *)self->_impl preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = EKUIProposedTimeEventViewController;
  v4 = a3;
  [(EKUIProposedTimeEventViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EKUIProposedTimeEventViewController *)self setPreferredContentSize:v6, v8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = EKUIProposedTimeEventViewController;
  [(EKUIProposedTimeEventViewController *)&v3 viewDidAppear:a3];
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_61);
  }
}

void __53__EKUIProposedTimeEventViewController_viewDidAppear___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"EKEventViewControllerDidAppearNotification" object:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(EKUIProposedTimeEventViewController *)self view];
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

@end