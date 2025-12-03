@interface RCRecordingCardViewController
- (RCRecordingCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIView)hostedView;
- (unint64_t)supportedInterfaceOrientations;
- (void)setHostedView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RCRecordingCardViewController

- (RCRecordingCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = RCRecordingCardViewController;
  v4 = [(RCRecordingCardViewController *)&v10 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    navigationItem = [(RCRecordingCardViewController *)v4 navigationItem];
    [navigationItem setHidesBackButton:1];

    v7 = objc_opt_new();
    undoManager = v5->_undoManager;
    v5->_undoManager = v7;
  }

  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = RCRecordingCardViewController;
  [(RCRecordingCardViewController *)&v6 viewDidLoad];
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  recordingCardBackgroundColor = [v3 recordingCardBackgroundColor];
  view = [(RCRecordingCardViewController *)self view];
  [view setBackgroundColor:recordingCardBackgroundColor];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RCRecordingCardViewController;
  [(RCRecordingCardViewController *)&v4 viewDidAppear:appear];
  [(RCRecordingCardViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RCRecordingCardViewController;
  [(RCRecordingCardViewController *)&v4 viewWillDisappear:disappear];
  [(RCRecordingCardViewController *)self resignFirstResponder];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportedInterfaceOrientations = [v2 supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (void)setHostedView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_hostedView);
  [WeakRetained removeFromSuperview];

  objc_storeWeak(&self->_hostedView, viewCopy);
  view = [(RCRecordingCardViewController *)self view];
  [view addSubview:viewCopy];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  bottomAnchor = [viewCopy bottomAnchor];
  view2 = [(RCRecordingCardViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[0] = v20;
  topAnchor = [viewCopy topAnchor];
  view3 = [(RCRecordingCardViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[1] = v7;
  leadingAnchor = [viewCopy leadingAnchor];
  view4 = [(RCRecordingCardViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[2] = v11;
  trailingAnchor = [viewCopy trailingAnchor];

  view5 = [(RCRecordingCardViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (UIView)hostedView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedView);

  return WeakRetained;
}

@end