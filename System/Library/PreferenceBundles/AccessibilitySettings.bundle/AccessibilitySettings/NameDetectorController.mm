@interface NameDetectorController
- (AXSDKeyboardReturnDelegate)delegate;
- (BOOL)textFieldShouldReturn:(id)return;
- (void)_constrainContentView;
- (void)_constrainNameSoundTextField;
- (void)_setUpNameSoundTextField;
- (void)_updateTextField;
- (void)viewDidLoad;
@end

@implementation NameDetectorController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = NameDetectorController;
  [(NameDetectorController *)&v10 viewDidLoad];
  [(NameDetectorController *)self _setUpNameSoundTextField];
  v3 = [UIBarButtonItem alloc];
  v4 = settingsLocString(@"NAME_SOUND_TITLE", @"SoundDetection");
  navigationItem = [(NameDetectorController *)self navigationItem];
  backBarButtonItem = [navigationItem backBarButtonItem];
  v7 = [v3 initWithTitle:v4 style:objc_msgSend(backBarButtonItem target:"style") action:{0, 0}];
  navigationItem2 = [(NameDetectorController *)self navigationItem];
  [navigationItem2 setBackBarButtonItem:v7];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_setUpNameSoundTextField
{
  v3 = objc_alloc_init(UITextField);
  [(NameDetectorController *)self setDetectorNameTextField:v3];

  v4 = settingsLocString(@"CUSTOM_SOUND_PLACEHOLDER", @"SoundDetection");
  detectorNameTextField = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField setPlaceholder:v4];

  detectorName = [(NameDetectorController *)self detectorName];

  if (detectorName)
  {
    detectorName2 = [(NameDetectorController *)self detectorName];
    detectorNameTextField2 = [(NameDetectorController *)self detectorNameTextField];
    [detectorNameTextField2 setText:detectorName2];
  }

  detectorNameTextField3 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField3 setDelegate:self];

  detectorNameTextField4 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField4 setBorderStyle:0];

  v11 = +[UIColor tertiarySystemFillColor];
  detectorNameTextField5 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField5 setBackgroundColor:v11];

  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  detectorNameTextField6 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField6 setFont:v13];

  detectorNameTextField7 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField7 setAdjustsFontForContentSizeCategory:1];

  detectorNameTextField8 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField8 _setCornerRadius:15.0];

  detectorNameTextField9 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField9 setReturnKeyType:11];

  detectorNameTextField10 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField10 setEnablesReturnKeyOnNonWhiteSpaceContent:1];

  detectorNameTextField11 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField11 setAutocapitalizationType:1];

  detectorNameTextField12 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField12 setClearButtonMode:1];

  contentView = [(NameDetectorController *)self contentView];
  detectorNameTextField13 = [(NameDetectorController *)self detectorNameTextField];
  [contentView addSubview:detectorNameTextField13];

  [(NameDetectorController *)self _constrainNameSoundTextField];
  [(NameDetectorController *)self _constrainContentView];
  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 15.0, 20.0}];
  detectorNameTextField14 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField14 setLeftView:v25];

  detectorNameTextField15 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField15 setLeftViewMode:3];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  delegate = [(NameDetectorController *)self delegate];
  [delegate keyboardReturnPressed];

  return 1;
}

- (void)_constrainNameSoundTextField
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:45.0];
  v5 = v4;

  detectorNameTextField = [(NameDetectorController *)self detectorNameTextField];
  heightAnchor = [detectorNameTextField heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:v5];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v8;

  detectorNameTextField2 = [(NameDetectorController *)self detectorNameTextField];
  [detectorNameTextField2 setTranslatesAutoresizingMaskIntoConstraints:0];

  detectorNameTextField3 = [(NameDetectorController *)self detectorNameTextField];
  leftAnchor = [detectorNameTextField3 leftAnchor];
  contentView = [(NameDetectorController *)self contentView];
  leftAnchor2 = [contentView leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v15 setActive:1];

  detectorNameTextField4 = [(NameDetectorController *)self detectorNameTextField];
  rightAnchor = [detectorNameTextField4 rightAnchor];
  contentView2 = [(NameDetectorController *)self contentView];
  rightAnchor2 = [contentView2 rightAnchor];
  v20 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v20 setActive:1];

  detectorNameTextField5 = [(NameDetectorController *)self detectorNameTextField];
  topAnchor = [detectorNameTextField5 topAnchor];
  contentView3 = [(NameDetectorController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v25 setActive:1];

  v26 = self->_heightConstraint;

  [(NSLayoutConstraint *)v26 setActive:1];
}

- (void)_constrainContentView
{
  contentView = [(NameDetectorController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(NameDetectorController *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  detectorNameTextField = [(NameDetectorController *)self detectorNameTextField];
  bottomAnchor2 = [detectorNameTextField bottomAnchor];
  v7 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  [v7 setActive:1];
}

- (void)_updateTextField
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:45.0];
  v5 = v4;

  [(NSLayoutConstraint *)self->_heightConstraint setActive:0];
  detectorNameTextField = [(NameDetectorController *)self detectorNameTextField];
  heightAnchor = [detectorNameTextField heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:v5];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v8;

  v10 = self->_heightConstraint;

  [(NSLayoutConstraint *)v10 setActive:1];
}

- (AXSDKeyboardReturnDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end