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
  v4 = [(_SFAccountManagerLockViewController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = [(_SFAccountManagerLockViewController *)self navigationItem];
  [v5 setHidesBackButton:1];

  v6 = [(_SFAccountManagerLockViewController *)self view];
  v7 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  accountManagerLockedLabel = self->_accountManagerLockedLabel;
  self->_accountManagerLockedLabel = v8;

  [(UILabel *)self->_accountManagerLockedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_accountManagerLockedLabel setTextColor:v10];

  [(UILabel *)self->_accountManagerLockedLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_accountManagerLockedLabel setNumberOfLines:0];
  [(UILabel *)self->_accountManagerLockedLabel setTextAlignment:1];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  [(UILabel *)self->_accountManagerLockedLabel setFont:v11];

  v12 = _WBSLocalizedString();
  [(UILabel *)self->_accountManagerLockedLabel setText:v12];

  [v6 addSubview:self->_accountManagerLockedLabel];
  v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.fill"];
  v15 = [v13 initWithImage:v14];
  lockImage = self->_lockImage;
  self->_lockImage = v15;

  [(UIImageView *)self->_lockImage setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UIImageView *)self->_lockImage setTintColor:v17];

  v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:-1 scale:140.0];
  [(UIImageView *)self->_lockImage setPreferredSymbolConfiguration:v18];

  v46 = v6;
  [v6 addSubview:self->_lockImage];
  v19 = [v6 layoutMarginsGuide];
  v36 = MEMORY[0x1E696ACD8];
  v45 = [(UILabel *)self->_accountManagerLockedLabel centerXAnchor];
  v44 = [v19 centerXAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v48[0] = v43;
  v42 = [(UILabel *)self->_accountManagerLockedLabel topAnchor];
  v41 = [v19 centerYAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v48[1] = v40;
  v39 = [(UILabel *)self->_accountManagerLockedLabel leadingAnchor];
  v38 = [v19 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v48[2] = v37;
  v35 = [(UILabel *)self->_accountManagerLockedLabel trailingAnchor];
  v34 = [v19 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v48[3] = v33;
  v32 = [(UILabel *)self->_accountManagerLockedLabel bottomAnchor];
  v31 = [v19 bottomAnchor];
  v30 = [v32 constraintLessThanOrEqualToAnchor:v31];
  v48[4] = v30;
  v29 = [(UIImageView *)self->_lockImage centerXAnchor];
  v20 = [v19 centerXAnchor];
  v21 = [v29 constraintEqualToAnchor:v20];
  v48[5] = v21;
  v22 = [(UIImageView *)self->_lockImage topAnchor];
  v23 = [v19 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];
  v48[6] = v24;
  v25 = [(UIImageView *)self->_lockImage bottomAnchor];
  v26 = [v19 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v48[7] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:8];
  [v36 activateConstraints:v28];
}

@end