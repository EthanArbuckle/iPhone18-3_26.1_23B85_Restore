@interface PasscodeEmbeddedViewController
- (BOOL)hasAlphaNumericPasscode;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)alphanumericFieldPlaceholder;
- (unint64_t)passcodeLength;
- (void)_selectPasscodeField:(id)field;
- (void)_shakePasscodeFieldWithCompletion:(id)completion;
- (void)loadView;
- (void)setBackoffTimeout:(double)timeout showBackoffTitle:(BOOL)title passcodeFocused:(BOOL)focused;
- (void)setPasscodeFocused:(BOOL)focused;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PasscodeEmbeddedViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(PasscodeEmbeddedViewController *)self setView:v3];

  view = [(PasscodeEmbeddedViewController *)self view];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_selectPasscodeField:"];
  [view addGestureRecognizer:v5];

  v6 = objc_alloc_init(UIStackView);
  mainContainer = self->_mainContainer;
  self->_mainContainer = v6;

  [(UIStackView *)self->_mainContainer setAxis:1];
  [(UIStackView *)self->_mainContainer setAlignment:3];
  [(UIStackView *)self->_mainContainer setSpacing:8.0];
  view2 = [(PasscodeEmbeddedViewController *)self view];
  [view2 addSubview:self->_mainContainer];

  [(UIStackView *)self->_mainContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIStackView *)self->_mainContainer topAnchor];
  view3 = [(PasscodeEmbeddedViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v12 setActive:1];

  bottomAnchor = [(UIStackView *)self->_mainContainer bottomAnchor];
  view4 = [(PasscodeEmbeddedViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v16 setActive:1];

  leadingAnchor = [(UIStackView *)self->_mainContainer leadingAnchor];
  view5 = [(PasscodeEmbeddedViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v20 setActive:1];

  trailingAnchor = [(UIStackView *)self->_mainContainer trailingAnchor];
  view6 = [(PasscodeEmbeddedViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v24 setActive:1];

  v25 = [[UIImpactFeedbackGenerator alloc] initWithStyle:2];
  hapticGenerator = self->_hapticGenerator;
  self->_hapticGenerator = v25;

  [(UIImpactFeedbackGenerator *)self->_hapticGenerator prepare];
  v27 = objc_alloc_init(UIView);
  passcodeFieldContainer = self->_passcodeFieldContainer;
  self->_passcodeFieldContainer = v27;

  [(UIStackView *)self->_mainContainer addArrangedSubview:self->_passcodeFieldContainer];
  [(UIView *)self->_passcodeFieldContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(view6) = [(PasscodeEmbeddedViewController *)self _useDotPattern];
  v29 = LALogForCategory();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (view6)
  {
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Presenting fixed length passcode UI", buf, 2u);
    }

    traitCollection = [(PasscodeEmbeddedViewController *)self traitCollection];
    [traitCollection userInterfaceStyle];
    [(UIView *)self->_passcodeFieldContainer setAlpha:1.0];

    v32 = objc_alloc_init(UIStackView);
    passcodeFieldBackground = self->_passcodeFieldBackground;
    self->_passcodeFieldBackground = v32;

    [(UIStackView *)self->_passcodeFieldBackground setAxis:0];
    [(UIStackView *)self->_passcodeFieldBackground setSpacing:20.75];
    if ([(PasscodeEmbeddedViewController *)self passcodeLength])
    {
      v34 = 0;
      do
      {
        v35 = objc_alloc_init(UIView);
        traitCollection2 = [(PasscodeEmbeddedViewController *)self traitCollection];
        if ([traitCollection2 userInterfaceStyle] == 2)
        {
          +[UIColor labelColor];
        }

        else
        {
          +[UIColor secondaryLabelColor];
        }
        v37 = ;
        cGColor = [v37 CGColor];
        layer = [v35 layer];
        [layer setBorderColor:cGColor];

        layer2 = [v35 layer];
        [layer2 setBorderWidth:1.7];

        layer3 = [v35 layer];
        [layer3 setCornerRadius:10.0];

        [(UIStackView *)self->_passcodeFieldBackground addArrangedSubview:v35];
        [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
        widthAnchor = [v35 widthAnchor];
        v43 = [widthAnchor constraintEqualToConstant:20.0];
        [v43 setActive:1];

        heightAnchor = [v35 heightAnchor];
        v45 = [heightAnchor constraintEqualToConstant:20.0];
        [v45 setActive:1];

        ++v34;
      }

      while (v34 < [(PasscodeEmbeddedViewController *)self passcodeLength]);
    }

    [(UIView *)self->_passcodeFieldContainer addSubview:self->_passcodeFieldBackground];
    [(UIStackView *)self->_passcodeFieldBackground setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(UIStackView *)self->_passcodeFieldBackground centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_passcodeFieldContainer centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-1.25];
    [v48 setActive:1];

    centerYAnchor = [(UIStackView *)self->_passcodeFieldBackground centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_passcodeFieldContainer centerYAnchor];
    v51 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v51 setActive:1];

    v52 = objc_alloc_init(UITextField);
    passcodeField = self->_passcodeField;
    self->_passcodeField = v52;

    v54 = +[UIColor clearColor];
    [(UITextField *)self->_passcodeField setTintColor:v54];

    v55 = +[UIColor labelColor];
    [(UITextField *)self->_passcodeField setTextColor:v55];

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v120 = self->_passcodeField;
    obj = [NSArray arrayWithObjects:&v120 count:1];
    v56 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v116;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v116 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v115 + 1) + 8 * i);
          [v60 setTextAlignment:0];
          [v60 setDelegate:self];
          [v60 setSecureTextEntry:1];
          if (UIAccessibilityIsBoldTextEnabled())
          {
            v61 = 48.0;
          }

          else
          {
            v61 = 50.0;
          }

          v62 = [UIFont systemFontOfSize:v61];
          [v60 setFont:v62];

          defaultTextAttributes = [v60 defaultTextAttributes];
          [defaultTextAttributes setValue:&off_10009AD70 forKey:NSKernAttributeName];

          [v60 setKeyboardType:4];
          [(UIView *)self->_passcodeFieldContainer addSubview:v60];
          [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
          topAnchor3 = [v60 topAnchor];
          topAnchor4 = [(UIView *)self->_passcodeFieldContainer topAnchor];
          v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
          [v66 setActive:1];

          bottomAnchor3 = [v60 bottomAnchor];
          bottomAnchor4 = [(UIView *)self->_passcodeFieldContainer bottomAnchor];
          v69 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
          [v69 setActive:1];

          centerXAnchor3 = [v60 centerXAnchor];
          centerXAnchor4 = [(UIView *)self->_passcodeFieldContainer centerXAnchor];
          v72 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:5.0];
          [v72 setActive:1];

          widthAnchor2 = [v60 widthAnchor];
          v74 = [widthAnchor2 constraintEqualToConstant:{(41 * -[PasscodeEmbeddedViewController passcodeLength](self, "passcodeLength"))}];
          [v74 setActive:1];

          LODWORD(v75) = 1148846080;
          [v60 setContentCompressionResistancePriority:0 forAxis:v75];
          LODWORD(v76) = 1132068864;
          [v60 setContentHuggingPriority:0 forAxis:v76];
          v77 = +[UIColor clearColor];
          [v60 setBackgroundColor:v77];
        }

        v57 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
      }

      while (v57);
    }

    v78 = UIFontTextStyleTitle2;
  }

  else
  {
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Presenting variable length passcode UI", buf, 2u);
    }

    [(UIStackView *)self->_mainContainer setAxis:0];
    v79 = objc_opt_new();
    v80 = self->_passcodeField;
    self->_passcodeField = v79;

    [(UITextField *)self->_passcodeField setDelegate:self];
    [(UITextField *)self->_passcodeField setDevicePasscodeEntry:1];
    [(UITextField *)self->_passcodeField setSecureTextEntry:1];
    [(UITextField *)self->_passcodeField setTextContentType:UITextContentTypeOneTimeCode];
    v78 = UIFontTextStyleTitle2;
    v81 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(UITextField *)self->_passcodeField setFont:v81];

    alphanumericFieldPlaceholder = [(PasscodeEmbeddedViewController *)self alphanumericFieldPlaceholder];
    [(UITextField *)self->_passcodeField setAttributedPlaceholder:alphanumericFieldPlaceholder];

    [(UITextField *)self->_passcodeField setTextAlignment:[(PasscodeEmbeddedViewController *)self alphanumericFieldTextAlignment]];
    v83 = +[UIColor labelColor];
    [(UITextField *)self->_passcodeField setTextColor:v83];

    [(UITextField *)self->_passcodeField setReturnKeyType:9];
    if ([(PasscodeEmbeddedViewController *)self hasAlphaNumericPasscode])
    {
      v84 = 1;
    }

    else
    {
      v84 = 4;
    }

    [(UITextField *)self->_passcodeField setKeyboardType:v84];
    if (![(PasscodeEmbeddedViewController *)self hasAlphaNumericPasscode])
    {
      v85 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v85 userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        v114[0] = _NSConcreteStackBlock;
        v114[1] = 3221225472;
        v114[2] = sub_100023010;
        v114[3] = &unk_100096D10;
        v114[4] = self;
        v87 = sub_100023010(v114);
        [(UITextField *)self->_passcodeField setInputAccessoryView:v87];
      }
    }

    traitCollection3 = [(PasscodeEmbeddedViewController *)self traitCollection];
    if ([traitCollection3 userInterfaceStyle] == 2)
    {
      +[UIColor quaternaryLabelColor];
    }

    else
    {
      +[UIColor systemLightGrayTintColor];
    }
    v89 = ;
    cGColor2 = [v89 CGColor];
    layer4 = [(UIView *)self->_passcodeFieldContainer layer];
    [layer4 setBackgroundColor:cGColor2];

    layer5 = [(UIView *)self->_passcodeFieldContainer layer];
    [layer5 setCornerRadius:10.0];

    [(UIView *)self->_passcodeFieldContainer addSubview:self->_passcodeField];
    [(UITextField *)self->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor5 = [(UITextField *)self->_passcodeField topAnchor];
    topAnchor6 = [(UIView *)self->_passcodeFieldContainer topAnchor];
    v95 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:15.0];
    [v95 setActive:1];

    bottomAnchor5 = [(UITextField *)self->_passcodeField bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_passcodeFieldContainer bottomAnchor];
    v98 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-15.0];
    [v98 setActive:1];

    leadingAnchor3 = [(UITextField *)self->_passcodeField leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_passcodeFieldContainer leadingAnchor];
    v101 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
    [v101 setActive:1];

    trailingAnchor3 = [(UITextField *)self->_passcodeField trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_passcodeFieldContainer trailingAnchor];
    v104 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
    [v104 setActive:1];
  }

  v105 = objc_opt_new();
  backoffTitle = self->_backoffTitle;
  self->_backoffTitle = v105;

  v107 = [UIFont preferredFontForTextStyle:v78];
  [(UILabel *)self->_backoffTitle setFont:v107];

  v108 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_backoffTitle setTextColor:v108];

  [(UILabel *)self->_backoffTitle setHidden:1];
  [(UIStackView *)self->_mainContainer addArrangedSubview:self->_backoffTitle];
  v109 = objc_opt_new();
  backoffSubtitle = self->_backoffSubtitle;
  self->_backoffSubtitle = v109;

  v111 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_backoffSubtitle setFont:v111];

  v112 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_backoffSubtitle setTextColor:v112];

  [(UILabel *)self->_backoffSubtitle setHidden:1];
  [(UIStackView *)self->_mainContainer addArrangedSubview:self->_backoffSubtitle];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if ([(PasscodeEmbeddedViewController *)self _useDotPattern])
  {
    v21 = changeCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    arrangedSubviews = [(UIStackView *)self->_passcodeFieldBackground arrangedSubviews];
    v6 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          traitCollection = [(PasscodeEmbeddedViewController *)self traitCollection];
          if ([traitCollection userInterfaceStyle] == 2)
          {
            +[UIColor labelColor];
          }

          else
          {
            +[UIColor secondaryLabelColor];
          }
          v12 = ;
          cGColor = [v12 CGColor];
          layer = [v10 layer];
          [layer setBorderColor:cGColor];
        }

        v7 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v15 = +[UIColor labelColor];
    [(UITextField *)self->_passcodeField setTextColor:v15];

    traitCollection2 = [(PasscodeEmbeddedViewController *)self traitCollection];
    [traitCollection2 userInterfaceStyle];
    [(UIView *)self->_passcodeFieldContainer setAlpha:1.0];

    changeCopy = v21;
  }

  else
  {
    traitCollection3 = [(PasscodeEmbeddedViewController *)self traitCollection];
    if ([traitCollection3 userInterfaceStyle] == 2)
    {
      +[UIColor quaternaryLabelColor];
    }

    else
    {
      +[UIColor systemLightGrayTintColor];
    }
    v18 = ;
    cGColor2 = [v18 CGColor];
    layer2 = [(UIView *)self->_passcodeFieldContainer layer];
    [layer2 setBackgroundColor:cGColor2];
  }
}

- (void)setPasscodeFocused:(BOOL)focused
{
  focusedCopy = focused;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"off";
    if (focusedCopy)
    {
      v6 = @"on";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting passcode field focus %@", &v8, 0xCu);
  }

  passcodeField = self->_passcodeField;
  if (focusedCopy)
  {
    [(UITextField *)passcodeField becomeFirstResponder];
  }

  else
  {
    [(UITextField *)passcodeField setText:&stru_1000992A0];
    [(UITextField *)self->_passcodeField setDelegate:0];
    [(UITextField *)self->_passcodeField endEditing:1];
    [(UITextField *)self->_passcodeField setDelegate:self];
  }
}

- (void)setBackoffTimeout:(double)timeout showBackoffTitle:(BOOL)title passcodeFocused:(BOOL)focused
{
  titleCopy = title;
  v9 = timeout == 0.0;
  v10 = LALogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"on";
    if (timeout == 0.0)
    {
      v11 = @"off";
    }

    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Turning backoff UI %@", buf, 0xCu);
  }

  if (timeout == 0.0)
  {
    _useDotPattern = [(PasscodeEmbeddedViewController *)self _useDotPattern];
  }

  else
  {
    _useDotPattern = 1;
  }

  [(UIStackView *)self->_mainContainer setAxis:_useDotPattern];
  v13 = timeout == 0.0 || !titleCopy;
  [(UIView *)self->_passcodeFieldContainer setHidden:timeout != 0.0];
  [(UILabel *)self->_backoffTitle setHidden:v13];
  [(UILabel *)self->_backoffSubtitle setHidden:timeout == 0.0];
  if (timeout == 0.0)
  {
    [(UILabel *)self->_backoffTitle setText:&stru_1000992A0];
    [(UILabel *)self->_backoffSubtitle setText:&stru_1000992A0];
  }

  else
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DEVICE_BLOCKED" value:&stru_1000992A0 table:@"MobileUI"];
    [(UILabel *)self->_backoffTitle setText:v15];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000237F8;
    v21[3] = &unk_100096D38;
    *&v21[5] = timeout;
    v21[4] = self;
    v16 = sub_1000237F8(v21);
    [(UILabel *)self->_backoffSubtitle setText:v16];
  }

  objc_initWeak(buf, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000238BC;
  v17[3] = &unk_1000963E0;
  objc_copyWeak(&v18, buf);
  v19 = v9;
  focusedCopy = focused;
  dispatch_async(&_dispatch_main_q, v17);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  passcodeField = self->_passcodeField;
  if (passcodeField == return)
  {
    [return resignFirstResponder];
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", return];
  }

  return passcodeField == return;
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  editingCopy = editing;
  v5 = editingCopy;
  if (self->_passcodeField == editingCopy)
  {
    text = [(UITextField *)editingCopy text];
    v9 = [text length];

    if (!v9)
    {
      v6 = 1;
      goto LABEL_4;
    }

    if (!self->_animating)
    {
      text2 = [(UITextField *)v5 text];
      v11 = [(PasscodeEmbeddedViewController *)self verifyPasscode:text2];

      v6 = 1;
      if (v11)
      {
        goto LABEL_4;
      }

      self->_animating = 1;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100023AF0;
      v12[3] = &unk_100096AB8;
      v12[4] = self;
      v13 = v5;
      [(PasscodeEmbeddedViewController *)self _shakePasscodeFieldWithCompletion:v12];
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", editingCopy];
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if (self->_passcodeField != fieldCopy)
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", fieldCopy];
    goto LABEL_10;
  }

  if (self->_animating)
  {
    goto LABEL_10;
  }

  text = [(UITextField *)fieldCopy text];
  v12 = [text length];
  if (v12 >= [(PasscodeEmbeddedViewController *)self passcodeLength])
  {
    passcodeLength = [(PasscodeEmbeddedViewController *)self passcodeLength];

    if (passcodeLength)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  text2 = [(UITextField *)fieldCopy text];
  v15 = [text2 stringByReplacingCharactersInRange:location withString:{length, stringCopy}];
  [(UITextField *)fieldCopy setText:v15];

LABEL_8:
  text3 = [(UITextField *)fieldCopy text];
  v17 = [text3 length];
  passcodeLength2 = [(PasscodeEmbeddedViewController *)self passcodeLength];

  if (v17 >= passcodeLength2)
  {
    [(UITextField *)fieldCopy endEditing:1];
  }

LABEL_10:

  return 0;
}

- (void)_selectPasscodeField:(id)field
{
  if ([field numberOfTouches] == 1 && -[UILabel isHidden](self->_backoffTitle, "isHidden") && -[UILabel isHidden](self->_backoffSubtitle, "isHidden"))
  {

    [(PasscodeEmbeddedViewController *)self setPasscodeFocused:1];
  }
}

- (void)_shakePasscodeFieldWithCompletion:(id)completion
{
  completionCopy = completion;
  CGAffineTransformMakeTranslation(&v12, 30.0, 0.0);
  passcodeFieldContainer = self->_passcodeFieldContainer;
  location = v12;
  [(UIView *)passcodeFieldContainer setTransform:&location];
  [(UIImpactFeedbackGenerator *)self->_hapticGenerator impactOccurred];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100023F40;
  v9[3] = &unk_1000963B8;
  objc_copyWeak(&v10, &location);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023FA4;
  v7[3] = &unk_100096D60;
  v6 = completionCopy;
  v8 = v6;
  [UIView animateWithDuration:0 delay:v9 usingSpringWithDamping:v7 initialSpringVelocity:0.4 options:0.0 animations:0.03 completion:1.2];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (unint64_t)passcodeLength
{
  v2 = +[LAPasscodeHelper sharedInstance];
  passcodeType = [v2 passcodeType];

  v4 = 6;
  if (passcodeType != 2)
  {
    v4 = -1;
  }

  if (passcodeType == 1)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

- (BOOL)hasAlphaNumericPasscode
{
  v2 = +[LAPasscodeHelper sharedInstance];
  v3 = [v2 passcodeType] == 4;

  return v3;
}

- (id)alphanumericFieldPlaceholder
{
  v2 = [NSAttributedString alloc];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENTER_PASSCODE" value:&stru_1000992A0 table:@"MobileUI"];
  v5 = [v2 initWithString:v4];

  return v5;
}

@end