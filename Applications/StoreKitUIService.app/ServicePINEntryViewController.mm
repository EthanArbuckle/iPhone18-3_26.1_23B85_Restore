@interface ServicePINEntryViewController
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didAcceptEnteredPIN:(id)n;
- (void)viewDidLoad;
@end

@implementation ServicePINEntryViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  actions = [context actions];
  allObjects = [actions allObjects];
  firstObject = [allObjects firstObject];
  [(ServicePINEntryViewController *)self setDidAcceptPINAction:firstObject];

  completionCopy[2]();
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ServicePINEntryViewController;
  [(ServicePINEntryViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(ServicePINEntryViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)didAcceptEnteredPIN:(id)n
{
  nCopy = n;
  didAcceptPINAction = [(ServicePINEntryViewController *)self didAcceptPINAction];
  canSendResponse = [didAcceptPINAction canSendResponse];

  if (canSendResponse)
  {
    v6 = objc_alloc_init(BSMutableSettings);
    [v6 setObject:nCopy forSetting:1];
    didAcceptPINAction2 = [(ServicePINEntryViewController *)self didAcceptPINAction];
    v8 = [BSActionResponse responseWithInfo:v6];
    [didAcceptPINAction2 sendResponse:v8];
  }

  [(ServicePINEntryViewController *)self _dismiss];
}

- (void)_dismiss
{
  _remoteViewControllerProxy = [(ServicePINEntryViewController *)self _remoteViewControllerProxy];
  pinController = [(ServicePINEntryViewController *)self pinController];

  if (pinController)
  {
    pinController2 = [(ServicePINEntryViewController *)self pinController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000A208;
    v6[3] = &unk_100051148;
    v7 = _remoteViewControllerProxy;
    [pinController2 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [_remoteViewControllerProxy dismiss];
  }
}

@end