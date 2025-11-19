@interface PasscodeEmbeddedViewController
- (BOOL)hasAlphaNumericPasscode;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)alphanumericFieldPlaceholder;
- (unint64_t)passcodeLength;
- (void)_selectPasscodeField:(id)a3;
- (void)_shakePasscodeFieldWithCompletion:(id)a3;
- (void)loadView;
- (void)setBackoffTimeout:(double)a3 showBackoffTitle:(BOOL)a4 passcodeFocused:(BOOL)a5;
- (void)setPasscodeFocused:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PasscodeEmbeddedViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(PasscodeEmbeddedViewController *)self setView:v3];

  v4 = [(PasscodeEmbeddedViewController *)self view];
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_selectPasscodeField:"];
  [v4 addGestureRecognizer:v5];

  v6 = objc_alloc_init(UIStackView);
  mainContainer = self->_mainContainer;
  self->_mainContainer = v6;

  [(UIStackView *)self->_mainContainer setAxis:1];
  [(UIStackView *)self->_mainContainer setAlignment:3];
  [(UIStackView *)self->_mainContainer setSpacing:8.0];
  v8 = [(PasscodeEmbeddedViewController *)self view];
  [v8 addSubview:self->_mainContainer];

  [(UIStackView *)self->_mainContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(UIStackView *)self->_mainContainer topAnchor];
  v10 = [(PasscodeEmbeddedViewController *)self view];
  v11 = [v10 topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(UIStackView *)self->_mainContainer bottomAnchor];
  v14 = [(PasscodeEmbeddedViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(UIStackView *)self->_mainContainer leadingAnchor];
  v18 = [(PasscodeEmbeddedViewController *)self view];
  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [(UIStackView *)self->_mainContainer trailingAnchor];
  v22 = [(PasscodeEmbeddedViewController *)self view];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
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
  LODWORD(v22) = [(PasscodeEmbeddedViewController *)self _useDotPattern];
  v29 = LALogForCategory();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (v22)
  {
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Presenting fixed length passcode UI", buf, 2u);
    }

    v31 = [(PasscodeEmbeddedViewController *)self traitCollection];
    [v31 userInterfaceStyle];
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
        v36 = [(PasscodeEmbeddedViewController *)self traitCollection];
        if ([v36 userInterfaceStyle] == 2)
        {
          +[UIColor labelColor];
        }

        else
        {
          +[UIColor secondaryLabelColor];
        }
        v37 = ;
        v38 = [v37 CGColor];
        v39 = [v35 layer];
        [v39 setBorderColor:v38];

        v40 = [v35 layer];
        [v40 setBorderWidth:1.7];

        v41 = [v35 layer];
        [v41 setCornerRadius:10.0];

        [(UIStackView *)self->_passcodeFieldBackground addArrangedSubview:v35];
        [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
        v42 = [v35 widthAnchor];
        v43 = [v42 constraintEqualToConstant:20.0];
        [v43 setActive:1];

        v44 = [v35 heightAnchor];
        v45 = [v44 constraintEqualToConstant:20.0];
        [v45 setActive:1];

        ++v34;
      }

      while (v34 < [(PasscodeEmbeddedViewController *)self passcodeLength]);
    }

    [(UIView *)self->_passcodeFieldContainer addSubview:self->_passcodeFieldBackground];
    [(UIStackView *)self->_passcodeFieldBackground setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = [(UIStackView *)self->_passcodeFieldBackground centerXAnchor];
    v47 = [(UIView *)self->_passcodeFieldContainer centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:-1.25];
    [v48 setActive:1];

    v49 = [(UIStackView *)self->_passcodeFieldBackground centerYAnchor];
    v50 = [(UIView *)self->_passcodeFieldContainer centerYAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
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

          v63 = [v60 defaultTextAttributes];
          [v63 setValue:&off_10009AD70 forKey:NSKernAttributeName];

          [v60 setKeyboardType:4];
          [(UIView *)self->_passcodeFieldContainer addSubview:v60];
          [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
          v64 = [v60 topAnchor];
          v65 = [(UIView *)self->_passcodeFieldContainer topAnchor];
          v66 = [v64 constraintEqualToAnchor:v65];
          [v66 setActive:1];

          v67 = [v60 bottomAnchor];
          v68 = [(UIView *)self->_passcodeFieldContainer bottomAnchor];
          v69 = [v67 constraintEqualToAnchor:v68];
          [v69 setActive:1];

          v70 = [v60 centerXAnchor];
          v71 = [(UIView *)self->_passcodeFieldContainer centerXAnchor];
          v72 = [v70 constraintEqualToAnchor:v71 constant:5.0];
          [v72 setActive:1];

          v73 = [v60 widthAnchor];
          v74 = [v73 constraintEqualToConstant:{(41 * -[PasscodeEmbeddedViewController passcodeLength](self, "passcodeLength"))}];
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

    v82 = [(PasscodeEmbeddedViewController *)self alphanumericFieldPlaceholder];
    [(UITextField *)self->_passcodeField setAttributedPlaceholder:v82];

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
      v86 = [v85 userInterfaceIdiom];

      if (v86 != 1)
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

    v88 = [(PasscodeEmbeddedViewController *)self traitCollection];
    if ([v88 userInterfaceStyle] == 2)
    {
      +[UIColor quaternaryLabelColor];
    }

    else
    {
      +[UIColor systemLightGrayTintColor];
    }
    v89 = ;
    v90 = [v89 CGColor];
    v91 = [(UIView *)self->_passcodeFieldContainer layer];
    [v91 setBackgroundColor:v90];

    v92 = [(UIView *)self->_passcodeFieldContainer layer];
    [v92 setCornerRadius:10.0];

    [(UIView *)self->_passcodeFieldContainer addSubview:self->_passcodeField];
    [(UITextField *)self->_passcodeField setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [(UITextField *)self->_passcodeField topAnchor];
    v94 = [(UIView *)self->_passcodeFieldContainer topAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:15.0];
    [v95 setActive:1];

    v96 = [(UITextField *)self->_passcodeField bottomAnchor];
    v97 = [(UIView *)self->_passcodeFieldContainer bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:-15.0];
    [v98 setActive:1];

    v99 = [(UITextField *)self->_passcodeField leadingAnchor];
    v100 = [(UIView *)self->_passcodeFieldContainer leadingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100 constant:15.0];
    [v101 setActive:1];

    v102 = [(UITextField *)self->_passcodeField trailingAnchor];
    v103 = [(UIView *)self->_passcodeFieldContainer trailingAnchor];
    v104 = [v102 constraintEqualToAnchor:v103 constant:-15.0];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if ([(PasscodeEmbeddedViewController *)self _useDotPattern])
  {
    v21 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(UIStackView *)self->_passcodeFieldBackground arrangedSubviews];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(PasscodeEmbeddedViewController *)self traitCollection];
          if ([v11 userInterfaceStyle] == 2)
          {
            +[UIColor labelColor];
          }

          else
          {
            +[UIColor secondaryLabelColor];
          }
          v12 = ;
          v13 = [v12 CGColor];
          v14 = [v10 layer];
          [v14 setBorderColor:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v15 = +[UIColor labelColor];
    [(UITextField *)self->_passcodeField setTextColor:v15];

    v16 = [(PasscodeEmbeddedViewController *)self traitCollection];
    [v16 userInterfaceStyle];
    [(UIView *)self->_passcodeFieldContainer setAlpha:1.0];

    v4 = v21;
  }

  else
  {
    v17 = [(PasscodeEmbeddedViewController *)self traitCollection];
    if ([v17 userInterfaceStyle] == 2)
    {
      +[UIColor quaternaryLabelColor];
    }

    else
    {
      +[UIColor systemLightGrayTintColor];
    }
    v18 = ;
    v19 = [v18 CGColor];
    v20 = [(UIView *)self->_passcodeFieldContainer layer];
    [v20 setBackgroundColor:v19];
  }
}

- (void)setPasscodeFocused:(BOOL)a3
{
  v3 = a3;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"off";
    if (v3)
    {
      v6 = @"on";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting passcode field focus %@", &v8, 0xCu);
  }

  passcodeField = self->_passcodeField;
  if (v3)
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

- (void)setBackoffTimeout:(double)a3 showBackoffTitle:(BOOL)a4 passcodeFocused:(BOOL)a5
{
  v6 = a4;
  v9 = a3 == 0.0;
  v10 = LALogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = @"on";
    if (a3 == 0.0)
    {
      v11 = @"off";
    }

    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Turning backoff UI %@", buf, 0xCu);
  }

  if (a3 == 0.0)
  {
    v12 = [(PasscodeEmbeddedViewController *)self _useDotPattern];
  }

  else
  {
    v12 = 1;
  }

  [(UIStackView *)self->_mainContainer setAxis:v12];
  v13 = a3 == 0.0 || !v6;
  [(UIView *)self->_passcodeFieldContainer setHidden:a3 != 0.0];
  [(UILabel *)self->_backoffTitle setHidden:v13];
  [(UILabel *)self->_backoffSubtitle setHidden:a3 == 0.0];
  if (a3 == 0.0)
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
    *&v21[5] = a3;
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
  v20 = a5;
  dispatch_async(&_dispatch_main_q, v17);
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  passcodeField = self->_passcodeField;
  if (passcodeField == a3)
  {
    [a3 resignFirstResponder];
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", a3];
  }

  return passcodeField == a3;
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passcodeField == v4)
  {
    v8 = [(UITextField *)v4 text];
    v9 = [v8 length];

    if (!v9)
    {
      v6 = 1;
      goto LABEL_4;
    }

    if (!self->_animating)
    {
      v10 = [(UITextField *)v5 text];
      v11 = [(PasscodeEmbeddedViewController *)self verifyPasscode:v10];

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
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", v4];
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (self->_passcodeField != v9)
  {
    [NSException raise:NSInvalidArgumentException format:@"Received delegate message for invalid text field (%@)", v9];
    goto LABEL_10;
  }

  if (self->_animating)
  {
    goto LABEL_10;
  }

  v11 = [(UITextField *)v9 text];
  v12 = [v11 length];
  if (v12 >= [(PasscodeEmbeddedViewController *)self passcodeLength])
  {
    v13 = [(PasscodeEmbeddedViewController *)self passcodeLength];

    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = [(UITextField *)v9 text];
  v15 = [v14 stringByReplacingCharactersInRange:location withString:{length, v10}];
  [(UITextField *)v9 setText:v15];

LABEL_8:
  v16 = [(UITextField *)v9 text];
  v17 = [v16 length];
  v18 = [(PasscodeEmbeddedViewController *)self passcodeLength];

  if (v17 >= v18)
  {
    [(UITextField *)v9 endEditing:1];
  }

LABEL_10:

  return 0;
}

- (void)_selectPasscodeField:(id)a3
{
  if ([a3 numberOfTouches] == 1 && -[UILabel isHidden](self->_backoffTitle, "isHidden") && -[UILabel isHidden](self->_backoffSubtitle, "isHidden"))
  {

    [(PasscodeEmbeddedViewController *)self setPasscodeFocused:1];
  }
}

- (void)_shakePasscodeFieldWithCompletion:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v8 = v6;
  [UIView animateWithDuration:0 delay:v9 usingSpringWithDamping:v7 initialSpringVelocity:0.4 options:0.0 animations:0.03 completion:1.2];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (unint64_t)passcodeLength
{
  v2 = +[LAPasscodeHelper sharedInstance];
  v3 = [v2 passcodeType];

  v4 = 6;
  if (v3 != 2)
  {
    v4 = -1;
  }

  if (v3 == 1)
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