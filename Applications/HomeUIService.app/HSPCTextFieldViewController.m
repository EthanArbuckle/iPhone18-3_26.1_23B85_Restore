@interface HSPCTextFieldViewController
- (HSPCTextFieldViewController)initWithCoordinator:(id)a3 config:(id)a4 withTextFieldMinimumHeight:(double)a5;
- (NSString)textFieldPlaceholderText;
- (NSString)textFieldText;
- (PRXTextField)textField;
- (id)commitConfiguration;
- (void)endEditing;
- (void)setTextFieldPlaceholderText:(id)a3;
- (void)setTextFieldText:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation HSPCTextFieldViewController

- (HSPCTextFieldViewController)initWithCoordinator:(id)a3 config:(id)a4 withTextFieldMinimumHeight:(double)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = HSPCTextFieldViewController;
  v11 = [(HSPCTextFieldViewController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_config, a4);
    objc_storeStrong(&v12->_coordinator, a3);
    v12->_textFieldMinimumHeight = a5;
    v13 = [(HSPCTextFieldViewController *)v12 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v12 futureSelector:"commitConfiguration"];
    continueAction = v12->_continueAction;
    v12->_continueAction = v13;

    v15 = [PRXLabel labelWithStyle:3];
    footnoteLabel = v12->_footnoteLabel;
    v12->_footnoteLabel = v15;
  }

  return v12;
}

- (id)commitConfiguration
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HSPCTextFieldViewController.m" lineNumber:89 description:@"Subclass to override."];

  return [NAFuture futureWithResult:&off_1000CD828];
}

- (void)setTextFieldText:(id)a3
{
  v4 = a3;
  v5 = [(HSPCTextFieldViewController *)self textField];
  [v5 setText:v4];
}

- (NSString)textFieldText
{
  v2 = [(HSPCTextFieldViewController *)self textField];
  v3 = [v2 text];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1000C89F8;
  }

  v6 = v5;

  return &v5->isa;
}

- (void)setTextFieldPlaceholderText:(id)a3
{
  v4 = a3;
  v5 = [(HSPCTextFieldViewController *)self textField];
  [v5 setPlaceholder:v4];
}

- (NSString)textFieldPlaceholderText
{
  v2 = [(HSPCTextFieldViewController *)self textField];
  v3 = [v2 placeholder];

  return v3;
}

- (PRXTextField)textField
{
  textField = self->_textField;
  if (!textField)
  {
    v4 = objc_alloc_init(HSPCTextField);
    [(HSPCTextField *)v4 setClearButtonMode:3];
    [(HSPCTextField *)v4 setAutocapitalizationType:1];
    [(HSPCTextField *)v4 setReturnKeyType:9];
    [(HSPCTextField *)v4 setDelegate:self];
    v5 = self->_textField;
    self->_textField = v4;

    textField = self->_textField;
  }

  return textField;
}

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = HSPCTextFieldViewController;
  [(HSPCTextFieldViewController *)&v47 viewDidLoad];
  v3 = [(HSPCTextFieldViewController *)self contentView];
  v4 = [(HSPCTextFieldViewController *)self textField];
  [v3 addSubview:v4];

  v5 = [(HSPCTextFieldViewController *)self contentView];
  v6 = [v5 mainContentGuide];

  v7 = [(HSPCTextFieldViewController *)self textField];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = objc_opt_new();
  v9 = [(HSPCTextFieldViewController *)self textField];
  v10 = [v9 topAnchor];
  v11 = [v6 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v8 na_safeAddObject:v12];

  v13 = [(HSPCTextFieldViewController *)self textField];
  v14 = [v13 leadingAnchor];
  v15 = [v6 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v8 na_safeAddObject:v16];

  v17 = [(HSPCTextFieldViewController *)self textField];
  v18 = [v17 trailingAnchor];
  v19 = [v6 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v8 na_safeAddObject:v20];

  [(HSPCTextFieldViewController *)self textFieldMinimumHeight];
  if (NACGFloatGreaterThanFloat())
  {
    v21 = [(HSPCTextFieldViewController *)self textField];
    v22 = [v21 heightAnchor];
    [(HSPCTextFieldViewController *)self textFieldMinimumHeight];
    v23 = [v22 constraintGreaterThanOrEqualToConstant:?];

    [v8 na_safeAddObject:v23];
  }

  v24 = [(HSPCTextFieldViewController *)self footnoteLabel];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(HSPCTextFieldViewController *)self contentView];
  v26 = [(HSPCTextFieldViewController *)self footnoteLabel];
  [v25 addSubview:v26];

  v27 = [(HSPCTextFieldViewController *)self footnoteLabel];
  v28 = [v27 leadingAnchor];
  v29 = [v6 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v8 na_safeAddObject:v30];

  v31 = [(HSPCTextFieldViewController *)self footnoteLabel];
  v32 = [v31 trailingAnchor];
  v33 = [v6 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v8 na_safeAddObject:v34];

  v35 = [(HSPCTextFieldViewController *)self footnoteLabel];
  v36 = [v35 topAnchor];
  v37 = [(HSPCTextFieldViewController *)self textField];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:10.0];
  [v8 na_safeAddObject:v39];

  v40 = [v6 bottomAnchor];
  v41 = [(HSPCTextFieldViewController *)self footnoteLabel];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintGreaterThanOrEqualToAnchor:v42 constant:10.0];
  [v8 na_safeAddObject:v43];

  v44 = [(HSPCTextFieldViewController *)self footnoteLabel];
  v45 = [v44 heightAnchor];
  v46 = [v45 constraintGreaterThanOrEqualToConstant:40.0];
  [v8 na_safeAddObject:v46];

  [NSLayoutConstraint activateConstraints:v8];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v6 = [a3 text];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v6 stringByTrimmingCharactersInSet:v4];
  [(HSPCTextFieldViewController *)self setTextFieldText:v5];
}

- (void)endEditing
{
  v2 = [(HSPCTextFieldViewController *)self contentView];
  [v2 endEditing:1];
}

@end