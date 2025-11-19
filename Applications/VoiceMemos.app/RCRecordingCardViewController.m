@interface RCRecordingCardViewController
- (RCRecordingCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIView)hostedView;
- (unint64_t)supportedInterfaceOrientations;
- (void)setHostedView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RCRecordingCardViewController

- (RCRecordingCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = RCRecordingCardViewController;
  v4 = [(RCRecordingCardViewController *)&v10 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RCRecordingCardViewController *)v4 navigationItem];
    [v6 setHidesBackButton:1];

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
  v4 = [v3 recordingCardBackgroundColor];
  v5 = [(RCRecordingCardViewController *)self view];
  [v5 setBackgroundColor:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCRecordingCardViewController;
  [(RCRecordingCardViewController *)&v4 viewDidAppear:a3];
  [(RCRecordingCardViewController *)self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCRecordingCardViewController;
  [(RCRecordingCardViewController *)&v4 viewWillDisappear:a3];
  [(RCRecordingCardViewController *)self resignFirstResponder];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (void)setHostedView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostedView);
  [WeakRetained removeFromSuperview];

  objc_storeWeak(&self->_hostedView, v4);
  v6 = [(RCRecordingCardViewController *)self view];
  [v6 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [v4 bottomAnchor];
  v23 = [(RCRecordingCardViewController *)self view];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v18 = [v4 topAnchor];
  v19 = [(RCRecordingCardViewController *)self view];
  v17 = [v19 topAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v7;
  v8 = [v4 leadingAnchor];
  v9 = [(RCRecordingCardViewController *)self view];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[2] = v11;
  v12 = [v4 trailingAnchor];

  v13 = [(RCRecordingCardViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
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