@interface ASCredentialRequestEnableBluetoothViewController
- (ASCredentialRequestEnableBluetoothViewController)initWithMode:(int64_t)a3 activity:(id)a4;
- (ASCredentialRequestEnableBluetoothViewController)initWithPresentationContext:(id)a3 activity:(id)a4;
- (id)_message;
- (void)_enableBluetooth;
- (void)_setUpButtonPane;
- (void)_setUpHeaderPane;
- (void)viewDidLoad;
@end

@implementation ASCredentialRequestEnableBluetoothViewController

- (ASCredentialRequestEnableBluetoothViewController)initWithPresentationContext:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cableAuthenticatorURL];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = [v6 isRegistrationRequest] ^ 1;
  }

  v10 = [(ASCredentialRequestEnableBluetoothViewController *)self initWithMode:v9 activity:v7];

  return v10;
}

- (ASCredentialRequestEnableBluetoothViewController)initWithMode:(int64_t)a3 activity:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ASCredentialRequestEnableBluetoothViewController;
  v8 = [(ASCredentialRequestPaneViewController *)&v12 initRequiringTableView:0];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    objc_storeStrong(&v8->_authorizationActivity, a4);
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
  v3 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v3 addEmptyViewWithSpacing:0.0];

  [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
}

- (void)_setUpHeaderPane
{
  v6 = _WBSLocalizedString();
  v3 = [(ASCredentialRequestEnableBluetoothViewController *)self _message];
  v4 = [[ASCredentialRequestPaneHeaderConfiguration alloc] initWithTitle:v6 subtitle:v3];
  v5 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v5 addHeaderWithConfiguration:v4];
}

- (void)_setUpButtonPane
{
  v6 = [[ASCredentialRequestConfirmButtonSubPane alloc] initWithActivity:self->_authorizationActivity];
  v3 = _WBSLocalizedString();
  [(ASCredentialRequestConfirmButtonSubPane *)v6 setButtonText:v3];

  v4 = [(ASCredentialRequestConfirmButtonSubPane *)v6 authorizationButton];
  [v4 addTarget:self action:sel__enableBluetooth];

  v5 = [(ASCredentialRequestPaneViewController *)self headerPaneContext];
  [v5 addSubPane:v6 withCustomSpacingAfter:80.0];
}

- (id)_message
{
  mode = self->_mode;
  if (mode < 2)
  {
    v4 = [MEMORY[0x1E69C8860] currentDevice];
    [v4 deviceClass];
  }

  else
  {
    if (mode != 2)
    {
      goto LABEL_6;
    }

    v3 = [MEMORY[0x1E69C8860] currentDevice];
    [v3 deviceClass];
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