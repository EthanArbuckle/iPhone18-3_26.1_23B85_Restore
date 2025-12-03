@interface _SFAccountManagerLockViewController
- (void)viewDidLoad;
@end

@implementation _SFAccountManagerLockViewController

- (void)viewDidLoad
{
  v48[8] = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = _SFAccountManagerLockViewController;
  [(_SFAccountManagerLockViewController *)&v47 viewDidLoad];
  v3 = _WBSLocalizedString();
  navigationItem = [(_SFAccountManagerLockViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  navigationItem2 = [(_SFAccountManagerLockViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  view = [(_SFAccountManagerLockViewController *)self view];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  accountManagerLockedLabel = self->_accountManagerLockedLabel;
  self->_accountManagerLockedLabel = v8;

  [(UILabel *)self->_accountManagerLockedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_accountManagerLockedLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_accountManagerLockedLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_accountManagerLockedLabel setNumberOfLines:0];
  [(UILabel *)self->_accountManagerLockedLabel setTextAlignment:1];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  [(UILabel *)self->_accountManagerLockedLabel setFont:v11];

  v12 = _WBSLocalizedString();
  [(UILabel *)self->_accountManagerLockedLabel setText:v12];

  [view addSubview:self->_accountManagerLockedLabel];
  v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.fill"];
  v15 = [v13 initWithImage:v14];
  lockImage = self->_lockImage;
  self->_lockImage = v15;

  [(UIImageView *)self->_lockImage setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UIImageView *)self->_lockImage setTintColor:secondaryLabelColor2];

  v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:-1 scale:140.0];
  [(UIImageView *)self->_lockImage setPreferredSymbolConfiguration:v18];

  v46 = view;
  [view addSubview:self->_lockImage];
  layoutMarginsGuide = [view layoutMarginsGuide];
  v36 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(UILabel *)self->_accountManagerLockedLabel centerXAnchor];
  centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v48[0] = v43;
  topAnchor = [(UILabel *)self->_accountManagerLockedLabel topAnchor];
  centerYAnchor = [layoutMarginsGuide centerYAnchor];
  v40 = [topAnchor constraintEqualToAnchor:centerYAnchor];
  v48[1] = v40;
  leadingAnchor = [(UILabel *)self->_accountManagerLockedLabel leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[2] = v37;
  trailingAnchor = [(UILabel *)self->_accountManagerLockedLabel trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[3] = v33;
  bottomAnchor = [(UILabel *)self->_accountManagerLockedLabel bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v30 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v48[4] = v30;
  centerXAnchor3 = [(UIImageView *)self->_lockImage centerXAnchor];
  centerXAnchor4 = [layoutMarginsGuide centerXAnchor];
  v21 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v48[5] = v21;
  topAnchor2 = [(UIImageView *)self->_lockImage topAnchor];
  topAnchor3 = [layoutMarginsGuide topAnchor];
  v24 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
  v48[6] = v24;
  bottomAnchor3 = [(UIImageView *)self->_lockImage bottomAnchor];
  centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:centerYAnchor2];
  v48[7] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:8];
  [v36 activateConstraints:v28];
}

@end