@interface BuddyComplexPasscodeInputView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (BuddyComplexPasscodeInputView)initWithFrame:(CGRect)frame numericOnly:(BOOL)only;
- (id)passcode;
- (void)setPasscode:(id)passcode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BuddyComplexPasscodeInputView

- (BuddyComplexPasscodeInputView)initWithFrame:(CGRect)frame numericOnly:(BOOL)only
{
  frameCopy = frame;
  v42 = a2;
  onlyCopy = only;
  location = 0;
  v40.receiver = self;
  v40.super_class = BuddyComplexPasscodeInputView;
  location = [(BuddyComplexPasscodeInputView *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    if (onlyCopy)
    {
      [*(location + 3) setKeyboardType:4];
    }

    textInputTraits = [*(location + 3) textInputTraits];
    [textInputTraits setDevicePasscodeEntry:1];
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

    layer = [*(location + 3) layer];
    [layer setBorderWidth:1.0];

    traitCollection = [location traitCollection];
    v33 = _NSConcreteStackBlock;
    v34 = -1073741824;
    v35 = 0;
    v36 = sub_100220FFC;
    v37 = &unk_10032B0D0;
    v38 = location;
    [traitCollection performAsCurrentTraitCollection:&v33];

    layer2 = [*(location + 3) layer];
    [layer2 setCornerRadius:10.0];

    v13 = *(location + 3);
    v14 = +[UIColor _labelColor];
    [v13 setTextColor:v14];

    [location addSubview:*(location + 3)];
    heightAnchor = [*(location + 3) heightAnchor];
    [*(location + 3) intrinsicContentSize];
    v31 = [heightAnchor constraintEqualToConstant:v15 * 2.0];
    v45[0] = v31;
    leadingAnchor = [*(location + 3) leadingAnchor];
    leadingAnchor2 = [location leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:?];
    v45[1] = v28;
    trailingAnchor = [*(location + 3) trailingAnchor];
    trailingAnchor2 = [location trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[2] = v18;
    topAnchor = [*(location + 3) topAnchor];
    topAnchor2 = [location topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[3] = v21;
    bottomAnchor = [*(location + 3) bottomAnchor];
    bottomAnchor2 = [location bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[4] = v24;
    v25 = [NSArray arrayWithObjects:v45 count:5];
    [NSLayoutConstraint activateConstraints:v25];

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&textInputTraits, 0);
  }

  v26 = location;
  objc_storeStrong(&location, 0);
  return v26;
}

- (void)setPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, passcode);
  passcodeField = [(BuddyComplexPasscodeInputView *)selfCopy passcodeField];
  [(UITextField *)passcodeField setText:location[0]];

  objc_storeStrong(location, 0);
}

- (id)passcode
{
  v2 = [(BuddyComplexPasscodeInputView *)self passcodeField:a2];
  text = [(UITextField *)v2 text];

  return text;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v6.receiver = selfCopy;
  v6.super_class = BuddyComplexPasscodeInputView;
  [(BuddyComplexPasscodeInputView *)&v6 traitCollectionDidChange:location[0]];
  passcodeField = [(BuddyComplexPasscodeInputView *)selfCopy passcodeField];
  layer = [(UITextField *)passcodeField layer];
  v5 = +[UIColor _labelColor];
  [layer setBorderColor:{objc_msgSend(v5, "CGColor")}];

  objc_storeStrong(location, 0);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v14 = 0;
  objc_storeStrong(&v14, string);
  delegate = [(BuddyPasscodeInputView *)selfCopy delegate];
  v12 = 0;
  v7 = 0;
  if (delegate)
  {
    delegate2 = [(BuddyPasscodeInputView *)selfCopy delegate];
    v12 = 1;
    v7 = objc_opt_respondsToSelector();
  }

  if (v12)
  {
  }

  if (v7)
  {
    text = [location[0] text];
    v11 = [text stringByReplacingCharactersInRange:rangeCopy.location withString:{rangeCopy.length, v14}];

    delegate3 = [(BuddyPasscodeInputView *)selfCopy delegate];
    [(BuddyPasscodeInputViewDelegate *)delegate3 passcodeInput:selfCopy willChangeContents:v11];

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  delegate = [(BuddyPasscodeInputView *)selfCopy delegate];
  v9 = 0;
  v4 = 0;
  if (delegate)
  {
    delegate2 = [(BuddyPasscodeInputView *)selfCopy delegate];
    v9 = 1;
    v4 = objc_opt_respondsToSelector();
  }

  if (v9)
  {
  }

  if (v4)
  {
    delegate3 = [(BuddyPasscodeInputView *)selfCopy delegate];
    v6 = selfCopy;
    passcode = [(BuddyComplexPasscodeInputView *)selfCopy passcode];
    [(BuddyPasscodeInputViewDelegate *)delegate3 passcodeInput:v6 enteredPasscode:passcode];
  }

  objc_storeStrong(location, 0);
  return 1;
}

@end