@interface STKBaseInputAlertViewController
- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (id)newBottomBar;
- (id)newTopBar;
- (void)_sendClicked;
- (void)dealloc;
- (void)setDigitsOnly:(BOOL)only;
- (void)viewDidLoad;
@end

@implementation STKBaseInputAlertViewController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = STKBaseInputAlertViewController;
  [(STKBaseAlertViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = STKBaseInputAlertViewController;
  [(STKBaseAlertViewController *)&v3 viewDidLoad];
  self->_minLength = 0;
  self->_maxLength = -1;
}

- (id)newTopBar
{
  v3 = objc_alloc_init(UINavigationBar);
  [v3 setDelegate:self];
  [v3 _setHidesShadow:1];
  [v3 setBarStyle:1];
  v4 = objc_alloc_init(UIImage);
  [v3 setBackgroundImage:v4 forBarMetrics:0];

  v5 = [UINavigationItem alloc];
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v7 = [v6 localizedStringForKey:@"BACK" value:&stru_100018670 table:@"SIMToolkitUI"];
  v8 = [v5 initWithTitle:v7];

  [v3 pushNavigationItem:v8 animated:0];
  v9 = [[UINavigationItem alloc] initWithTitle:&stru_100018670];
  v10 = [UIBarButtonItem alloc];
  v11 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_100018670 table:@"SIMToolkitUI"];
  v13 = [v10 initWithTitle:v12 style:0 target:self action:"rightNavigationButtonPressed"];

  [v9 setRightBarButtonItem:v13];
  [v3 pushNavigationItem:v9 animated:0];

  return v3;
}

- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item
{
  if (objc_opt_respondsToSelector())
  {
    [(STKBaseInputAlertViewController *)self performSelector:"leftNavigationButtonPressed" withObject:0];
  }

  return 0;
}

- (id)newBottomBar
{
  view = [(STKBaseInputAlertViewController *)self view];
  [view bounds];
  v5 = v4;

  v6 = objc_alloc_init(UIView);
  sendingFieldView = self->_sendingFieldView;
  self->_sendingFieldView = v6;

  [(UIView *)self->_sendingFieldView _setLayoutDebuggingIdentifier:@"_sendingFieldView"];
  [(UIView *)self->_sendingFieldView setFrame:0.0, 0.0, v5, 36.0];
  v8 = objc_alloc_init(UIButton);
  button = self->_button;
  self->_button = v8;

  [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v10) = 1144750080;
  [(UIButton *)self->_button setContentHuggingPriority:0 forAxis:v10];
  v11 = self->_button;
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.CTNotifyUIService"];
  v13 = [v12 localizedStringForKey:@"SEND" value:&stru_100018670 table:@"SIMToolkitUI"];
  [(UIButton *)v11 setTitle:v13 forState:0];

  titleLabel = [(UIButton *)self->_button titleLabel];
  v15 = [UIFont systemFontOfSize:18.0];
  [titleLabel setFont:v15];

  [(UIButton *)self->_button addTarget:self action:"_sendClicked" forControlEvents:64];
  [(UIButton *)self->_button setContentEdgeInsets:5.0, 5.0, 5.0, 5.0];
  [(UIView *)self->_sendingFieldView addSubview:self->_button];
  v16 = [RoundedBorderView alloc];
  v17 = [UIColor colorWithRed:255.0 green:255.0 blue:255.0 alpha:0.1];
  v18 = [(RoundedBorderView *)v16 initWithFrame:v17 color:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  textBorderView = self->_textBorderView;
  self->_textBorderView = v18;

  [(UIView *)self->_textBorderView _setLayoutDebuggingIdentifier:@"_textBorderView"];
  [(UIView *)self->_textBorderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_sendingFieldView addSubview:self->_textBorderView];
  v20 = objc_alloc_init(UITextField);
  inputTextField = self->_inputTextField;
  self->_inputTextField = v20;

  [(UITextField *)self->_inputTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_inputTextField setBorderStyle:0];
  v22 = self->_inputTextField;
  v23 = +[UIColor whiteColor];
  [(UITextField *)v22 setBackgroundColor:v23];

  v24 = self->_inputTextField;
  v25 = [UIFont systemFontOfSize:18.0];
  [(UITextField *)v24 setFont:v25];

  v26 = self->_inputTextField;
  v27 = +[UIColor blackColor];
  [(UITextField *)v26 setTextColor:v27];

  [(UITextField *)self->_inputTextField setDelegate:self];
  [(UIView *)self->_textBorderView addSubview:self->_inputTextField];
  trailingAnchor = [(UIButton *)self->_button trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_sendingFieldView trailingAnchor];
  v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v62[0] = v59;
  centerYAnchor = [(UIButton *)self->_button centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_sendingFieldView centerYAnchor];
  v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v62[1] = v56;
  leadingAnchor = [(UIView *)self->_textBorderView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_sendingFieldView leadingAnchor];
  v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v62[2] = v53;
  trailingAnchor3 = [(UIView *)self->_textBorderView trailingAnchor];
  leadingAnchor3 = [(UIButton *)self->_button leadingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-10.0];
  v62[3] = v50;
  heightAnchor = [(UIView *)self->_textBorderView heightAnchor];
  heightAnchor2 = [(UIView *)self->_sendingFieldView heightAnchor];
  v47 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:-10.0];
  v62[4] = v47;
  centerYAnchor3 = [(UIView *)self->_textBorderView centerYAnchor];
  centerYAnchor4 = [(UIView *)self->_sendingFieldView centerYAnchor];
  v44 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v62[5] = v44;
  leadingAnchor4 = [(UITextField *)self->_inputTextField leadingAnchor];
  leadingAnchor5 = [(UIView *)self->_textBorderView leadingAnchor];
  v41 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:5.0];
  v62[6] = v41;
  trailingAnchor4 = [(UITextField *)self->_inputTextField trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_textBorderView trailingAnchor];
  v28 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-5.0];
  v62[7] = v28;
  heightAnchor3 = [(UITextField *)self->_inputTextField heightAnchor];
  heightAnchor4 = [(UIView *)self->_textBorderView heightAnchor];
  v31 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v62[8] = v31;
  centerYAnchor5 = [(UITextField *)self->_inputTextField centerYAnchor];
  centerYAnchor6 = [(UIView *)self->_textBorderView centerYAnchor];
  v34 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v62[9] = v34;
  v35 = [NSArray arrayWithObjects:v62 count:10];
  [NSLayoutConstraint activateConstraints:v35];

  textInputTraits = [(UITextField *)self->_inputTextField textInputTraits];
  [textInputTraits setAcceptsFloatingKeyboard:0];
  [textInputTraits setAcceptsSplitKeyboard:0];
  v37 = self->_sendingFieldView;

  return v37;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  stringCopy = string;
  text = [field text];
  v10 = [text length];

  if (v10 >= length)
  {
    v11 = &v10[-length];
  }

  else
  {
    v11 = 0;
  }

  if (&v11[[stringCopy length]] <= self->_maxLength)
  {
    if (self->_digitsOnly)
    {
      v13 = +[NSCharacterSet phonePadCharacterSet];
      v14 = [stringCopy stringByTrimmingCharactersInSet:v13];
      v12 = [v14 length] == 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setDigitsOnly:(BOOL)only
{
  self->_digitsOnly = only;
  if (only)
  {
    [(UITextField *)self->_inputTextField setKeyboardType:5];
  }
}

- (void)_sendClicked
{
  text = [(UITextField *)self->_inputTextField text];
  v4 = [text length];

  if (v4 >= self->_minLength && v4 <= self->_maxLength)
  {

    [(STKBaseInputAlertViewController *)self sendButtonPressed];
  }
}

@end