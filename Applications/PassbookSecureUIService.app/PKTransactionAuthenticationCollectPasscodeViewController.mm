@interface PKTransactionAuthenticationCollectPasscodeViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (PKTransactionAuthenticationCollectPasscodeViewController)initWithPassUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 delegate:(id)a5;
- (PKTransactionAuthenticationCollectPasscodeViewControllerDelegate)delegate;
- (void)_cancelButtonPressed;
- (void)_clearPasscodeField;
- (void)_createPasscodeField;
- (void)_encryptPIN:(id)a3 withCertificates:(id)a4 completion:(id)a5;
- (void)_encryptPasscodeInput;
- (void)_footerButtonPressed;
- (void)_passcodeInputFinished;
- (void)_retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)_transitionToState:(unint64_t)a3;
- (void)_updateFailureLabelVisibility;
- (void)dealloc;
- (void)explanationViewDidUpdateLayout:(id)a3;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)loadView;
- (void)pinCodeTextFieldWasUpdated:(id)a3 isComplete:(BOOL)a4;
- (void)preflightWithCompletion:(id)a3;
- (void)resetWithTransactionAuthenticationFailure:(int64_t)a3 completion:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation PKTransactionAuthenticationCollectPasscodeViewController

- (PKTransactionAuthenticationCollectPasscodeViewController)initWithPassUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PKTransactionAuthenticationCollectPasscodeViewController;
  v12 = [(PKTransactionAuthenticationCollectPasscodeViewController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    p_keyboardSize = &v12->_keyboardSize;
    [UIKeyboard sizeForInterfaceOrientation:1];
    *&p_keyboardSize->width = v15;
    v13->_keyboardSize.height = v16;
    objc_storeStrong(&v13->_passUniqueIdentifier, a3);
    objc_storeWeak(&v13->_delegate, v11);
    objc_storeStrong(&v13->_transactionIdentifier, a4);
    v17 = +[PKPaymentService paymentService];
    paymentService = v13->_paymentService;
    v13->_paymentService = v17;

    v13->_currentState = 0;
  }

  return v13;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKTransactionAuthenticationCollectPasscodeViewController;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)&v3 dealloc];
}

- (void)preflightWithCompletion:(id)a3
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000014C4;
  v16[3] = &unk_10000C398;
  v4 = a3;
  v17 = v4;
  v5 = objc_retainBlock(v16);
  if (!self->_passUniqueIdentifier)
  {
    goto LABEL_5;
  }

  if (!self->_transactionIdentifier)
  {
    goto LABEL_5;
  }

  v6 = +[PKPassLibrary sharedInstance];
  v7 = [v6 passWithUniqueID:self->_passUniqueIdentifier];
  v8 = [v7 paymentPass];
  pass = self->_pass;
  self->_pass = v8;

  if (self->_pass)
  {
    objc_initWeak(&location, self);
    paymentService = self->_paymentService;
    transactionIdentifier = self->_transactionIdentifier;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000014DC;
    v12[3] = &unk_10000C3C0;
    objc_copyWeak(&v14, &location);
    v12[4] = self;
    v13 = v5;
    [(PKPaymentService *)paymentService transactionWithTransactionIdentifier:transactionIdentifier completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_5:
    (v5[2])(v5, 0);
  }
}

- (void)resetWithTransactionAuthenticationFailure:(int64_t)a3 completion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001664;
  block[3] = &unk_10000C3E8;
  v8 = a4;
  v9 = a3;
  block[4] = self;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadView
{
  v68.receiver = self;
  v68.super_class = PKTransactionAuthenticationCollectPasscodeViewController;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)&v68 loadView];
  v3 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PKPaymentPass *)self->_pass compactBankLogoDarkImage];
  v6 = [UIImage imageWithPKImage:v5];

  v7 = [(PKPaymentPass *)self->_pass compactBankLogoLightImage];
  v8 = [UIImage imageWithPKImage:v7];

  if (v8)
  {
    v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    v10 = [v6 imageAsset];
    [v10 registerImage:v8 withTraitCollection:v9];
  }

  v63 = v8;
  v64 = v6;
  if (v6)
  {
    v11 = [[UIImageView alloc] initWithImage:v6];
    logoImageView = self->_logoImageView;
    self->_logoImageView = v11;

    [v3 addSubview:self->_logoImageView];
    v13 = UIContentSizeCategoryAccessibilityMedium;
  }

  else
  {
    v14 = objc_alloc_init(UILabel);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v14;

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    v16 = self->_titleLabel;
    v17 = [(PKPaymentPass *)self->_pass organizationName];
    [(UILabel *)v16 setText:v17];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v18 = self->_titleLabel;
    v13 = UIContentSizeCategoryAccessibilityMedium;
    v19 = PKFontForDefaultDesign(UIFontTextStyleTitle1, UIContentSizeCategoryAccessibilityMedium);
    [(UILabel *)v18 setFont:v19];

    [v3 addSubview:self->_titleLabel];
  }

  v20 = v3;
  v21 = [(PKPaymentTransaction *)self->_transaction currencyAmount];
  v22 = [v21 formattedStringValue];
  v23 = [(PKPaymentTransaction *)self->_transaction merchant];
  v24 = [v23 displayName];
  v25 = [(PKPaymentPass *)self->_pass organizationName];
  v26 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_PAYMENT_PIN_BODY", @"%@%@%@", v22, v24, v25);

  v27 = objc_alloc_init(UILabel);
  bodyTextLabel = self->_bodyTextLabel;
  self->_bodyTextLabel = v27;

  [(UILabel *)self->_bodyTextLabel setNumberOfLines:0];
  [(UILabel *)self->_bodyTextLabel setText:v26];
  [(UILabel *)self->_bodyTextLabel setTextAlignment:1];
  v29 = self->_bodyTextLabel;
  v30 = PKFontForDefaultDesign(UIFontTextStyleBody, v13);
  [(UILabel *)v29 setFont:v30];

  [v20 addSubview:self->_bodyTextLabel];
  v31 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_BUTTON");
  v32 = PKFontForDefaultDesign(UIFontTextStyleCallout, v13);
  v33 = [UIButtonConfiguration pkui_plainConfigurationWithTitle:v31 font:v32];

  objc_initWeak(&location, self);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100001E48;
  v65[3] = &unk_10000C410;
  objc_copyWeak(&v66, &location);
  v34 = [UIAction actionWithHandler:v65];
  v35 = [UIButton buttonWithConfiguration:v33 primaryAction:v34];
  footerButton = self->_footerButton;
  self->_footerButton = v35;

  v37 = [[PKLinkedApplication alloc] initWithPass:self->_pass];
  linkedApplication = self->_linkedApplication;
  self->_linkedApplication = v37;

  [(PKLinkedApplication *)self->_linkedApplication addObserver:self];
  [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  v39 = self->_footerButton;
  v40 = [(PKLinkedApplication *)self->_linkedApplication state];
  v41 = 0.0;
  if (v40 == 1)
  {
    v41 = 1.0;
  }

  [(UIButton *)v39 setAlpha:v41];
  [v20 addSubview:self->_footerButton];
  [(PKTransactionAuthenticationCollectPasscodeViewController *)self _createPasscodeField];
  [v20 addSubview:self->_passcodeField];
  v42 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v42;

  [(UIActivityIndicatorView *)self->_spinner setHidden:1];
  [v20 addSubview:self->_spinner];
  v44 = objc_alloc_init(UILabel);
  failureLabel = self->_failureLabel;
  self->_failureLabel = v44;

  v46 = self->_failureLabel;
  v47 = PKFontForDefaultDesign(UIFontTextStyleCallout, v13);
  [(UILabel *)v46 setFont:v47];

  v48 = self->_failureLabel;
  v49 = +[UIColor systemWhiteColor];
  [(UILabel *)v48 setTextColor:v49];

  v50 = self->_failureLabel;
  v51 = +[UIColor systemRedColor];
  [(UILabel *)v50 setBackgroundColor:v51];

  [(UILabel *)self->_failureLabel setTextAlignment:1];
  [(UILabel *)self->_failureLabel setClipsToBounds:1];
  v52 = [(UILabel *)self->_failureLabel layer];
  [v52 setCornerCurve:kCACornerCurveContinuous];

  [v20 addSubview:self->_failureLabel];
  [(PKTransactionAuthenticationCollectPasscodeViewController *)self _updateFailureLabelVisibility];
  v53 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonPressed"];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v53;

  v55 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
  [v55 setLeftBarButtonItem:self->_cancelButton];

  if (self->_PINFormat == 2)
  {
    v56 = [UIBarButtonItem alloc];
    v57 = PKLocalizedAquamanString(@"CONFIRM");
    v58 = [v56 initWithTitle:v57 style:0 target:self action:"_passcodeInputFinished"];
    confirmButton = self->_confirmButton;
    self->_confirmButton = v58;

    [(UIBarButtonItem *)self->_confirmButton setEnabled:0];
    v60 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
    [v60 setRightBarButtonItem:self->_confirmButton];
  }

  v61 = objc_alloc_init(UINavigationBarAppearance);
  [v61 configureWithTransparentBackground];
  v62 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
  [v62 setStandardAppearance:v61];

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v52.receiver = self;
  v52.super_class = PKTransactionAuthenticationCollectPasscodeViewController;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)&v52 viewWillLayoutSubviews];
  v3 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self view];
  v4 = PKUIGetMinScreenWidthType();
  v5 = 44.0;
  if (v4 == 1)
  {
    v5 = 24.0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 16.0;
  }

  [v3 bounds];
  v51 = v7;
  v9 = v8 - (v6 + v6);
  PKUIGetMinScreenWidthType();
  v10 = [(UIImageView *)self->_logoImageView superview];

  if (v10)
  {
    v11 = [(UIImageView *)self->_logoImageView image];
    [v11 size];

    PKSizeAspectFit();
    UIRectCenteredXInRect();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(UIImageView *)self->_logoImageView setFrame:?];
    v53.origin.x = v13;
    v53.origin.y = v15;
    v53.size.width = v17;
    v53.size.height = v19;
    CGRectGetMaxY(v53);
  }

  else
  {
    v20 = [(UILabel *)self->_titleLabel superview];

    if (v20)
    {
      [(UILabel *)self->_titleLabel sizeThatFits:v9, 1.79769313e308];
      UIRectCenteredXInRect();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(UILabel *)self->_titleLabel setFrame:?];
      v54.origin.x = v22;
      v54.origin.y = v24;
      v54.size.width = v26;
      v54.size.height = v28;
      CGRectGetMaxY(v54);
    }
  }

  [(UILabel *)self->_bodyTextLabel sizeThatFits:v9];
  UIRectCenteredXInRect();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(UILabel *)self->_bodyTextLabel setFrame:?];
  v55.origin.x = v30;
  v55.origin.y = v32;
  v55.size.width = v34;
  v55.size.height = v36;
  CGRectGetMaxY(v55);
  PINFormat = self->_PINFormat;
  PKFloatRoundToPixel();
  [(UIView *)self->_passcodeField sizeThatFits:?];
  UIRectCenteredXInRect();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  [(UIView *)self->_passcodeField setFrame:?];
  v56.origin.x = v39;
  v56.origin.y = v41;
  v56.size.width = v43;
  v56.size.height = v45;
  CGRectGetMaxY(v56);
  [(UIActivityIndicatorView *)self->_spinner frame];
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
  [(UILabel *)self->_failureLabel sizeThatFits:v9, 1.79769313e308];
  v47 = v46 + 4.0;
  UIRectCenteredXInRect();
  [(UILabel *)self->_failureLabel setFrame:?];
  v48 = [(UILabel *)self->_failureLabel layer];
  [v48 setCornerRadius:v47 * 0.5];

  [(UIButton *)self->_footerButton sizeToFit];
  [(UIButton *)self->_footerButton frame];
  v49 = v51 - self->_keyboardSize.height;
  v50 = [(UIButton *)self->_footerButton titleLabel];
  [v50 frame];

  UIRectCenteredXInRect();
  [(UIButton *)self->_footerButton setFrame:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = [a3 userInterfaceStyle];
  v5 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v4 != v6)
  {
    v8 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    v7 = +[UIColor labelColor];
    [v8 setBorderColor:{objc_msgSend(v7, "CGColor")}];
  }
}

- (void)explanationViewDidUpdateLayout:(id)a3
{
  v3 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self view];
  [v3 setNeedsLayout];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  if (self->_PINFormat == 2)
  {
    length = a4.length;
    location = a4.location;
    v9 = a5;
    v10 = [a3 text];
    v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

    -[UIBarButtonItem setEnabled:](self->_confirmButton, "setEnabled:", [v11 length] > 5);
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 length];

  if (v5 >= 6)
  {
    [(PKTransactionAuthenticationCollectPasscodeViewController *)self _passcodeInputFinished];
  }

  return v5 > 5;
}

- (void)pinCodeTextFieldWasUpdated:(id)a3 isComplete:(BOOL)a4
{
  if (a4)
  {
    [(PKTransactionAuthenticationCollectPasscodeViewController *)self _passcodeInputFinished];
  }
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  if ([a3 state] == 1)
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000026C8;
    v4[3] = &unk_10000C438;
    objc_copyWeak(&v5, &location);
    dispatch_async(&_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002864;
  v5[3] = &unk_10000C460;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_createPasscodeField
{
  PINFormat = self->_PINFormat;
  if (PINFormat == 2)
  {
    v7 = objc_alloc_init(PKTransactionAuthenticationComplexPasscodeTextField);
    p_complexPasscodeField = &self->_complexPasscodeField;
    complexPasscodeField = self->_complexPasscodeField;
    self->_complexPasscodeField = v7;

    v9 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    v10 = +[UIColor labelColor];
    [v9 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    [v11 setBorderWidth:1.0];

    v12 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    [v12 setCornerRadius:10.0];

    [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField setTextInsets:0.0, 10.0, 0.0, 10.0];
    [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField setSecureTextEntry:1];
    [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField setDevicePasscodeEntry:1];
    [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField setDelegate:self];
  }

  else
  {
    if (PINFormat != 1)
    {
      return;
    }

    v4 = [[PKPinCodeField alloc] initWithPinCodeLength:6 style:1 delegate:self];
    p_complexPasscodeField = &self->_simplePasscodeField;
    simplePasscodeField = self->_simplePasscodeField;
    self->_simplePasscodeField = v4;

    [(PKPinCodeField *)self->_simplePasscodeField setHyphenatePinCode:0];
    [(PKPinCodeField *)self->_simplePasscodeField setSecureTextEntry:1];
  }

  v13 = *p_complexPasscodeField;

  objc_storeStrong(&self->_passcodeField, v13);
}

- (void)_clearPasscodeField
{
  [(PKPinCodeField *)self->_simplePasscodeField setPinCode:0];
  complexPasscodeField = self->_complexPasscodeField;

  [(PKTransactionAuthenticationComplexPasscodeTextField *)complexPasscodeField setText:0];
}

- (void)_cancelButtonPressed
{
  v3 = PKAnalyticsSubjectSecureUIService;
  v7[0] = PKAnalyticsReportEventKey;
  v7[1] = PKAnalyticsReportButtonTagKey;
  v8[0] = PKAnalyticsReportEventTypeButtonTap;
  v8[1] = PKAnalyticsReportPaymentPINInputCancelButtonTag;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  [PKAnalyticsReporter subject:v3 sendEvent:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 passcodeViewControllerDidCancel:self];
  }

  else
  {
    v6 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_footerButtonPressed
{
  objc_initWeak(&location, self);
  v3 = PKLocalizedAquamanString(@"CANCEL");
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100002FB8;
  v18[3] = &unk_10000C488;
  objc_copyWeak(&v19, &location);
  v4 = [UIAlertAction actionWithTitle:v3 style:1 handler:v18];

  v5 = [(PKPaymentPass *)self->_pass organizationName];
  if ([(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    v6 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_ALERT_TITLE");
    v7 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_ALERT_BODY", @"%@", v5);
    v8 = PKLocalizedAquamanString(@"OPEN");
    v9 = &PKAnalyticsReportResetPaymentPINOpenButtonTag;
  }

  else
  {
    v6 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REQUIRED_TITLE", @"%@", v5);
    v7 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_APP_REQUIRED_ALERT_BODY", @"%@%@", v5, v5);
    v8 = PKLocalizedAquamanString(@"VIEW_IN_APP_STORE");
    v9 = &PKAnalyticsReportResetPaymentPINViewInAppStoreButtonTag;
  }

  v10 = *v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000030B4;
  v14[3] = &unk_10000C4B0;
  objc_copyWeak(&v17, &location);
  v11 = v10;
  v15 = v11;
  v16 = self;
  v12 = [UIAlertAction actionWithTitle:v8 style:0 handler:v14];
  v13 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  PKApplyDefaultIconToAlertController();
  [v13 addAction:v4];
  [v13 addAction:v12];
  [v13 setPreferredAction:v12];
  [(PKTransactionAuthenticationCollectPasscodeViewController *)self presentViewController:v13 animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_passcodeInputFinished
{
  [(UIView *)self->_passcodeField forceDisplayIfNeeded];
  v3 = dispatch_time(0, 76000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000330C;
  block[3] = &unk_10000C4D8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)_transitionToState:(unint64_t)a3
{
  if (self->_currentState != a3)
  {
    v14 = v3;
    self->_currentState = a3;
    if (!a3 || a3 == 2)
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating:v6];
      [(UIBarButtonItem *)self->_confirmButton setEnabled:0];
      v12 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [v12 setRightBarButtonItem:self->_confirmButton];

      v13 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [v13 setLeftBarButtonItem:self->_cancelButton];

      [(UIButton *)self->_footerButton setEnabled:1];
      [(UIView *)self->_passcodeField setHidden:0];
      [(UIView *)self->_passcodeField becomeFirstResponder];
    }

    else if (a3 == 1)
    {
      [(UIView *)self->_passcodeField setHidden:?];
      [(UIView *)self->_passcodeField resignFirstResponder];
      [(PKTransactionAuthenticationCollectPasscodeViewController *)self _clearPasscodeField];
      [(UIButton *)self->_footerButton setEnabled:0];
      v10 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [v10 setRightBarButtonItem:0];

      v11 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [v11 setLeftBarButtonItem:0];

      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    [(PKTransactionAuthenticationCollectPasscodeViewController *)self _updateFailureLabelVisibility];
  }
}

- (void)_encryptPasscodeInput
{
  PINFormat = self->_PINFormat;
  if (PINFormat == 2)
  {
    v4 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField text];
  }

  else
  {
    if (PINFormat != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = [(PKPinCodeField *)self->_simplePasscodeField pinCode];
  }

  v5 = v4;
  v6 = [v4 pk_zString];

LABEL_7:
  v7 = [(PKPaymentPass *)self->_pass uniqueID];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000362C;
  v9[3] = &unk_10000C528;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)self _retrievePINEncryptionCertificateForPassUniqueIdentifier:v7 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000038A8;
    v9[3] = &unk_10000C578;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v10 = v6;
    [WeakRetained passcodeViewController:self requestSessionExchangeToken:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_encryptPIN:(id)a3 withCertificates:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([v9 count])
    {
      objc_initWeak(&location, self);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100003BE0;
      v12[3] = &unk_10000C5C8;
      objc_copyWeak(&v16, &location);
      v15 = v10;
      v13 = v8;
      v14 = v9;
      [WeakRetained passcodeViewController:self requestSessionExchangeToken:v12];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)_updateFailureLabelVisibility
{
  if (self->_currentFailure == 1 && self->_currentState == 2)
  {
    v3 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_INCORRECT_PIN_ENTRY");
    [(UILabel *)self->_failureLabel setText:v3];
    v4 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self viewIfLoaded];
    [v4 setNeedsLayout];

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  failureLabel = self->_failureLabel;

  [(UILabel *)failureLabel setHidden:v5];
}

- (PKTransactionAuthenticationCollectPasscodeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end