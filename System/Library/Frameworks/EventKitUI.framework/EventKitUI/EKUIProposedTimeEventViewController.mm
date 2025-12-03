@interface EKUIProposedTimeEventViewController
- (CGSize)preferredContentSize;
- (EKUIProposedTimeEventViewController)initWithProposedTimeAttendee:(id)attendee;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation EKUIProposedTimeEventViewController

- (EKUIProposedTimeEventViewController)initWithProposedTimeAttendee:(id)attendee
{
  attendeeCopy = attendee;
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
    [(EKUIProposedTimeEventViewControllerImpl *)v5->_impl setProposedTimeAttendee:attendeeCopy];
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
  view = [(EKUIProposedTimeEventViewController *)self view];
  view2 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  [view addSubview:view2];

  view3 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  view4 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKUIProposedTimeEventViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v23;
  view6 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(EKUIProposedTimeEventViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v17;
  view8 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  topAnchor = [view8 topAnchor];
  view9 = [(EKUIProposedTimeEventViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v9;
  view10 = [(EKUIProposedTimeEventViewControllerImpl *)self->_impl view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKUIProposedTimeEventViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = EKUIProposedTimeEventViewController;
  containerCopy = container;
  [(EKUIProposedTimeEventViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EKUIProposedTimeEventViewController *)self setPreferredContentSize:v6, v8];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = EKUIProposedTimeEventViewController;
  [(EKUIProposedTimeEventViewController *)&v3 viewDidAppear:appear];
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
  view = [(EKUIProposedTimeEventViewController *)self view];
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

@end