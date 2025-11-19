@interface NameDetectorController
- (AXSDKeyboardReturnDelegate)delegate;
- (BOOL)textFieldShouldReturn:(id)a3;
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
  v5 = [(NameDetectorController *)self navigationItem];
  v6 = [v5 backBarButtonItem];
  v7 = [v3 initWithTitle:v4 style:objc_msgSend(v6 target:"style") action:{0, 0}];
  v8 = [(NameDetectorController *)self navigationItem];
  [v8 setBackBarButtonItem:v7];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_fontSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_setUpNameSoundTextField
{
  v3 = objc_alloc_init(UITextField);
  [(NameDetectorController *)self setDetectorNameTextField:v3];

  v4 = settingsLocString(@"CUSTOM_SOUND_PLACEHOLDER", @"SoundDetection");
  v5 = [(NameDetectorController *)self detectorNameTextField];
  [v5 setPlaceholder:v4];

  v6 = [(NameDetectorController *)self detectorName];

  if (v6)
  {
    v7 = [(NameDetectorController *)self detectorName];
    v8 = [(NameDetectorController *)self detectorNameTextField];
    [v8 setText:v7];
  }

  v9 = [(NameDetectorController *)self detectorNameTextField];
  [v9 setDelegate:self];

  v10 = [(NameDetectorController *)self detectorNameTextField];
  [v10 setBorderStyle:0];

  v11 = +[UIColor tertiarySystemFillColor];
  v12 = [(NameDetectorController *)self detectorNameTextField];
  [v12 setBackgroundColor:v11];

  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v14 = [(NameDetectorController *)self detectorNameTextField];
  [v14 setFont:v13];

  v15 = [(NameDetectorController *)self detectorNameTextField];
  [v15 setAdjustsFontForContentSizeCategory:1];

  v16 = [(NameDetectorController *)self detectorNameTextField];
  [v16 _setCornerRadius:15.0];

  v17 = [(NameDetectorController *)self detectorNameTextField];
  [v17 setReturnKeyType:11];

  v18 = [(NameDetectorController *)self detectorNameTextField];
  [v18 setEnablesReturnKeyOnNonWhiteSpaceContent:1];

  v19 = [(NameDetectorController *)self detectorNameTextField];
  [v19 setAutocapitalizationType:1];

  v20 = [(NameDetectorController *)self detectorNameTextField];
  [v20 setClearButtonMode:1];

  v21 = [(NameDetectorController *)self contentView];
  v22 = [(NameDetectorController *)self detectorNameTextField];
  [v21 addSubview:v22];

  [(NameDetectorController *)self _constrainNameSoundTextField];
  [(NameDetectorController *)self _constrainContentView];
  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, 15.0, 20.0}];
  v23 = [(NameDetectorController *)self detectorNameTextField];
  [v23 setLeftView:v25];

  v24 = [(NameDetectorController *)self detectorNameTextField];
  [v24 setLeftViewMode:3];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = [(NameDetectorController *)self delegate];
  [v3 keyboardReturnPressed];

  return 1;
}

- (void)_constrainNameSoundTextField
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:45.0];
  v5 = v4;

  v6 = [(NameDetectorController *)self detectorNameTextField];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintEqualToConstant:v5];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v8;

  v10 = [(NameDetectorController *)self detectorNameTextField];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(NameDetectorController *)self detectorNameTextField];
  v12 = [v11 leftAnchor];
  v13 = [(NameDetectorController *)self contentView];
  v14 = [v13 leftAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(NameDetectorController *)self detectorNameTextField];
  v17 = [v16 rightAnchor];
  v18 = [(NameDetectorController *)self contentView];
  v19 = [v18 rightAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(NameDetectorController *)self detectorNameTextField];
  v22 = [v21 topAnchor];
  v23 = [(NameDetectorController *)self contentView];
  v24 = [v23 topAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:10.0];
  [v25 setActive:1];

  v26 = self->_heightConstraint;

  [(NSLayoutConstraint *)v26 setActive:1];
}

- (void)_constrainContentView
{
  v3 = [(NameDetectorController *)self contentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(NameDetectorController *)self contentView];
  v4 = [v8 bottomAnchor];
  v5 = [(NameDetectorController *)self detectorNameTextField];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:10.0];
  [v7 setActive:1];
}

- (void)_updateTextField
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:45.0];
  v5 = v4;

  [(NSLayoutConstraint *)self->_heightConstraint setActive:0];
  v6 = [(NameDetectorController *)self detectorNameTextField];
  v7 = [v6 heightAnchor];
  v8 = [v7 constraintEqualToConstant:v5];
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