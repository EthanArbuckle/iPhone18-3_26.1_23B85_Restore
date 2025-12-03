@interface HSPCTextFieldViewController
- (HSPCTextFieldViewController)initWithCoordinator:(id)coordinator config:(id)config withTextFieldMinimumHeight:(double)height;
- (NSString)textFieldPlaceholderText;
- (NSString)textFieldText;
- (PRXTextField)textField;
- (id)commitConfiguration;
- (void)endEditing;
- (void)setTextFieldPlaceholderText:(id)text;
- (void)setTextFieldText:(id)text;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation HSPCTextFieldViewController

- (HSPCTextFieldViewController)initWithCoordinator:(id)coordinator config:(id)config withTextFieldMinimumHeight:(double)height
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v18.receiver = self;
  v18.super_class = HSPCTextFieldViewController;
  v11 = [(HSPCTextFieldViewController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_config, config);
    objc_storeStrong(&v12->_coordinator, coordinator);
    v12->_textFieldMinimumHeight = height;
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

- (void)setTextFieldText:(id)text
{
  textCopy = text;
  textField = [(HSPCTextFieldViewController *)self textField];
  [textField setText:textCopy];
}

- (NSString)textFieldText
{
  textField = [(HSPCTextFieldViewController *)self textField];
  text = [textField text];
  v4 = text;
  if (text)
  {
    v5 = text;
  }

  else
  {
    v5 = &stru_1000C89F8;
  }

  v6 = v5;

  return &v5->isa;
}

- (void)setTextFieldPlaceholderText:(id)text
{
  textCopy = text;
  textField = [(HSPCTextFieldViewController *)self textField];
  [textField setPlaceholder:textCopy];
}

- (NSString)textFieldPlaceholderText
{
  textField = [(HSPCTextFieldViewController *)self textField];
  placeholder = [textField placeholder];

  return placeholder;
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
  contentView = [(HSPCTextFieldViewController *)self contentView];
  textField = [(HSPCTextFieldViewController *)self textField];
  [contentView addSubview:textField];

  contentView2 = [(HSPCTextFieldViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  textField2 = [(HSPCTextFieldViewController *)self textField];
  [textField2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = objc_opt_new();
  textField3 = [(HSPCTextFieldViewController *)self textField];
  topAnchor = [textField3 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v8 na_safeAddObject:v12];

  textField4 = [(HSPCTextFieldViewController *)self textField];
  leadingAnchor = [textField4 leadingAnchor];
  leadingAnchor2 = [mainContentGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v8 na_safeAddObject:v16];

  textField5 = [(HSPCTextFieldViewController *)self textField];
  trailingAnchor = [textField5 trailingAnchor];
  trailingAnchor2 = [mainContentGuide trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v8 na_safeAddObject:v20];

  [(HSPCTextFieldViewController *)self textFieldMinimumHeight];
  if (NACGFloatGreaterThanFloat())
  {
    textField6 = [(HSPCTextFieldViewController *)self textField];
    heightAnchor = [textField6 heightAnchor];
    [(HSPCTextFieldViewController *)self textFieldMinimumHeight];
    v23 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];

    [v8 na_safeAddObject:v23];
  }

  footnoteLabel = [(HSPCTextFieldViewController *)self footnoteLabel];
  [footnoteLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(HSPCTextFieldViewController *)self contentView];
  footnoteLabel2 = [(HSPCTextFieldViewController *)self footnoteLabel];
  [contentView3 addSubview:footnoteLabel2];

  footnoteLabel3 = [(HSPCTextFieldViewController *)self footnoteLabel];
  leadingAnchor3 = [footnoteLabel3 leadingAnchor];
  leadingAnchor4 = [mainContentGuide leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v8 na_safeAddObject:v30];

  footnoteLabel4 = [(HSPCTextFieldViewController *)self footnoteLabel];
  trailingAnchor3 = [footnoteLabel4 trailingAnchor];
  trailingAnchor4 = [mainContentGuide trailingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v8 na_safeAddObject:v34];

  footnoteLabel5 = [(HSPCTextFieldViewController *)self footnoteLabel];
  topAnchor3 = [footnoteLabel5 topAnchor];
  textField7 = [(HSPCTextFieldViewController *)self textField];
  bottomAnchor = [textField7 bottomAnchor];
  v39 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  [v8 na_safeAddObject:v39];

  bottomAnchor2 = [mainContentGuide bottomAnchor];
  footnoteLabel6 = [(HSPCTextFieldViewController *)self footnoteLabel];
  bottomAnchor3 = [footnoteLabel6 bottomAnchor];
  v43 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:10.0];
  [v8 na_safeAddObject:v43];

  footnoteLabel7 = [(HSPCTextFieldViewController *)self footnoteLabel];
  heightAnchor2 = [footnoteLabel7 heightAnchor];
  v46 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:40.0];
  [v8 na_safeAddObject:v46];

  [NSLayoutConstraint activateConstraints:v8];
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [text stringByTrimmingCharactersInSet:v4];
  [(HSPCTextFieldViewController *)self setTextFieldText:v5];
}

- (void)endEditing
{
  contentView = [(HSPCTextFieldViewController *)self contentView];
  [contentView endEditing:1];
}

@end