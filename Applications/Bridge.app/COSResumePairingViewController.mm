@interface COSResumePairingViewController
- (COSResumePairingViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)alternateButtonPressed:(id)pressed;
- (void)dismissSetupFlow:(id)flow;
- (void)suggestedButtonPressed:(id)pressed;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSResumePairingViewController

- (COSResumePairingViewController)init
{
  v5.receiver = self;
  v5.super_class = COSResumePairingViewController;
  v2 = [(COSResumePairingViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSResumePairingViewController *)v2 setStyle:10];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = COSResumePairingViewController;
  [(COSResumePairingViewController *)&v9 viewWillAppear:appear];
  navigationItem = [(COSResumePairingViewController *)self navigationItem];
  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CANCEL_SETUP_FLOW" value:&stru_10026E598 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"dismissSetupFlow:"];

  [navigationItem setRightBarButtonItem:v8 animated:0];
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RESUME_SETUP_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RESUME_SETUP_DETAIL" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RESUME_SETUP_CONTINUE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RESUME_SETUP_START_OVER" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  delegate = [(COSResumePairingViewController *)self delegate];
  resumePairingController = [delegate resumePairingController];
  [resumePairingController resumePairing];

  delegate2 = [(COSResumePairingViewController *)self delegate];
  [delegate2 buddyControllerDone:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  delegate = [(COSResumePairingViewController *)self delegate];
  resumePairingController = [delegate resumePairingController];
  [resumePairingController startPairingOver];

  delegate2 = [(COSResumePairingViewController *)self delegate];
  [delegate2 buddyControllerDone:self];
}

- (void)dismissSetupFlow:(id)flow
{
  [PBBridgeCAReporter incrementSuccessType:17];
  v3 = UIApp;

  [v3 dismissSetupFlowComplete:0 animated:1];
}

@end