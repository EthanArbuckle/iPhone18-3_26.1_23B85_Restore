@interface BuddyComplexPasscodeInputView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BuddyComplexPasscodeInputView)initWithFrame:(CGRect)a3 numericOnly:(BOOL)a4;
- (id)passcode;
- (void)setPasscode:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BuddyComplexPasscodeInputView

- (BuddyComplexPasscodeInputView)initWithFrame:(CGRect)a3 numericOnly:(BOOL)a4
{
  v44 = a3;
  v42 = a2;
  v41 = a4;
  location = 0;
  v40.receiver = self;
  v40.super_class = BuddyComplexPasscodeInputView;
  location = [(BuddyComplexPasscodeInputView *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v4 = objc_alloc_init(BuddyFeatureFlags);
    v5 = *(location + 2);
    *(location + 2) = v4;

    v6 = objc_alloc_init(UITextField);
    v7 = *(location + 3);
    *(location + 3) = v6;

    [*(location + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(location + 3) setDelegate:location];
    [*(location + 3) setSecureTextEntry:1];
    [*(location + 3) setReturnKeyType:4];
    if (v41)
    {
      [*(location + 3) setKeyboardType:4];
    }

    v39 = [*(location + 3) textInputTraits];
    [v39 setDevicePasscodeEntry:1];
    if ([*(location + 2) isSolariumEnabled])
    {
      [*(location + 3) setTextAlignment:4];
    }

    else
    {
      [*(location + 3) setTextAlignment:1];
    }

    v8 = *(location + 3);
    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v8 setFont:v9];

    v10 = [*(location + 3) layer];
    [v10 setBorderWidth:1.0];

    v11 = [location traitCollection];
    v33 = _NSConcreteStackBlock;
    v34 = -1073741824;
    v35 = 0;
    v36 = sub_100220FFC;
    v37 = &unk_10032B0D0;
    v38 = location;
    [v11 performAsCurrentTraitCollection:&v33];

    v12 = [*(location + 3) layer];
    [v12 setCornerRadius:10.0];

    v13 = *(location + 3);
    v14 = +[UIColor _labelColor];
    [v13 setTextColor:v14];

    [location addSubview:*(location + 3)];
    v32 = [*(location + 3) heightAnchor];
    [*(location + 3) intrinsicContentSize];
    v31 = [v32 constraintEqualToConstant:v15 * 2.0];
    v45[0] = v31;
    v30 = [*(location + 3) leadingAnchor];
    v29 = [location leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:?];
    v45[1] = v28;
    v16 = [*(location + 3) trailingAnchor];
    v17 = [location trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v45[2] = v18;
    v19 = [*(location + 3) topAnchor];
    v20 = [location topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v45[3] = v21;
    v22 = [*(location + 3) bottomAnchor];
    v23 = [location bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v45[4] = v24;
    v25 = [NSArray arrayWithObjects:v45 count:5];
    [NSLayoutConstraint activateConstraints:v25];

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  v26 = location;
  objc_storeStrong(&location, 0);
  return v26;
}

- (void)setPasscode:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyComplexPasscodeInputView *)v5 passcodeField];
  [(UITextField *)v3 setText:location[0]];

  objc_storeStrong(location, 0);
}

- (id)passcode
{
  v2 = [(BuddyComplexPasscodeInputView *)self passcodeField:a2];
  v3 = [(UITextField *)v2 text];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6.receiver = v8;
  v6.super_class = BuddyComplexPasscodeInputView;
  [(BuddyComplexPasscodeInputView *)&v6 traitCollectionDidChange:location[0]];
  v3 = [(BuddyComplexPasscodeInputView *)v8 passcodeField];
  v4 = [(UITextField *)v3 layer];
  v5 = +[UIColor _labelColor];
  [v4 setBorderColor:{objc_msgSend(v5, "CGColor")}];

  objc_storeStrong(location, 0);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v17 = a4;
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v6 = [(BuddyPasscodeInputView *)v16 delegate];
  v12 = 0;
  v7 = 0;
  if (v6)
  {
    v13 = [(BuddyPasscodeInputView *)v16 delegate];
    v12 = 1;
    v7 = objc_opt_respondsToSelector();
  }

  if (v12)
  {
  }

  if (v7)
  {
    v8 = [location[0] text];
    v11 = [v8 stringByReplacingCharactersInRange:v17.location withString:{v17.length, v14}];

    v9 = [(BuddyPasscodeInputView *)v16 delegate];
    [(BuddyPasscodeInputViewDelegate *)v9 passcodeInput:v16 willChangeContents:v11];

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyPasscodeInputView *)v12 delegate];
  v9 = 0;
  v4 = 0;
  if (v3)
  {
    v10 = [(BuddyPasscodeInputView *)v12 delegate];
    v9 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v9)
  {
  }

  if (v4)
  {
    v5 = [(BuddyPasscodeInputView *)v12 delegate];
    v6 = v12;
    v7 = [(BuddyComplexPasscodeInputView *)v12 passcode];
    [(BuddyPasscodeInputViewDelegate *)v5 passcodeInput:v6 enteredPasscode:v7];
  }

  objc_storeStrong(location, 0);
  return 1;
}

@end