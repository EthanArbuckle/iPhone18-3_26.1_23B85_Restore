@interface ServicePINEntryViewController
- (void)_dismiss;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)viewDidLoad;
@end

@implementation ServicePINEntryViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = [a3 actions];
  v7 = [v6 allObjects];
  v8 = [v7 firstObject];
  [(ServicePINEntryViewController *)self setDidAcceptPINAction:v8];

  v9[2]();
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ServicePINEntryViewController;
  [(ServicePINEntryViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(ServicePINEntryViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (void)didAcceptEnteredPIN:(id)a3
{
  v9 = a3;
  v4 = [(ServicePINEntryViewController *)self didAcceptPINAction];
  v5 = [v4 canSendResponse];

  if (v5)
  {
    v6 = objc_alloc_init(BSMutableSettings);
    [v6 setObject:v9 forSetting:1];
    v7 = [(ServicePINEntryViewController *)self didAcceptPINAction];
    v8 = [BSActionResponse responseWithInfo:v6];
    [v7 sendResponse:v8];
  }

  [(ServicePINEntryViewController *)self _dismiss];
}

- (void)_dismiss
{
  v3 = [(ServicePINEntryViewController *)self _remoteViewControllerProxy];
  v4 = [(ServicePINEntryViewController *)self pinController];

  if (v4)
  {
    v5 = [(ServicePINEntryViewController *)self pinController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000A208;
    v6[3] = &unk_100051148;
    v7 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [v3 dismiss];
  }
}

@end