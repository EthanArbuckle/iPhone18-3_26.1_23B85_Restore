@interface ASCredentialRequestEnableBluetoothViewController
- (ASCredentialRequestEnableBluetoothViewController)initWithMode:(int64_t)mode activity:(id)activity;
- (ASCredentialRequestEnableBluetoothViewController)initWithPresentationContext:(id)context activity:(id)activity;
- (id)_message;
- (void)_enableBluetooth;
- (void)_setUpButtonPane;
- (void)_setUpHeaderPane;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestEnableBluetoothViewController

- (ASCredentialRequestEnableBluetoothViewController)initWithPresentationContext:(id)context activity:(id)activity
{
  contextCopy = context;
  activityCopy = activity;
  cableAuthenticatorURL = [contextCopy cableAuthenticatorURL];

  if (cableAuthenticatorURL)
  {
    v9 = 2;
  }

  else
  {
    v9 = [contextCopy isRegistrationRequest] ^ 1;
  }

  v10 = [(ASCredentialRequestEnableBluetoothViewController *)self initWithMode:v9 activity:activityCopy];

  return v10;
}

- (ASCredentialRequestEnableBluetoothViewController)initWithMode:(int64_t)mode activity:(id)activity
{
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = ASCredentialRequestEnableBluetoothViewController;
  v8 = [(ASCredentialRequestPaneViewController *)&v12 initRequiringTableView:0];
  v9 = v8;
  if (v8)
  {
    v8->_mode = mode;
    objc_storeStrong(&v8->_authorizationActivity, activity);
    v10 = v9;
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ASCredentialRequestEnableBluetoothViewController;
  [(ASCredentialRequestPaneViewController *)&v4 viewDidLoad];
  [(ASCredentialRequestEnableBluetoothViewController *)self _setUpHeaderPane];
  [(ASCredentialRequestEnableBluetoothViewController *)self _setUpButtonPane];
  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addEmptyViewWithSpacing:0.0];

  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

- (void)_setUpHeaderPane
{
  v6 = _WBSLocalizedString();
  _message = [(ASCredentialRequestEnableBluetoothViewController *)self _message];
  v4 = [[ASCredentialRequestPaneHeaderConfiguration alloc] initWithTitle:v6 subtitle:_message];
  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addHeaderWithConfiguration:v4];
}

- (void)_setUpButtonPane
{
  v6 = [[ASCredentialRequestConfirmButtonSubPane alloc] initWithActivity:self->_authorizationActivity];
  v3 = _WBSLocalizedString();
  [(ASCredentialRequestConfirmButtonSubPane *)v6 setButtonText:v3];

  authorizationButton = [(ASCredentialRequestConfirmButtonSubPane *)v6 authorizationButton];
  [authorizationButton addTarget:self action:sel__enableBluetooth];

  headerPaneContext = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [headerPaneContext addSubPane:v6 withCustomSpacingAfter:80.0];
}

- (id)_message
{
  mode = self->_mode;
  if (mode < 2)
  {
    currentDevice = [MEMORY[0x1E69C8860] currentDevice];
    [currentDevice deviceClass];
  }

  else
  {
    if (mode != 2)
    {
      goto LABEL_6;
    }

    currentDevice2 = [MEMORY[0x1E69C8860] currentDevice];
    [currentDevice2 deviceClass];
  }

  self = _WBSLocalizedString();
LABEL_6:

  return self;
}

- (void)_enableBluetooth
{
  enableBluetoothHandler = self->_enableBluetoothHandler;
  if (enableBluetoothHandler)
  {
    enableBluetoothHandler[2]();
  }
}

@end