@interface PKTransactionAuthenticationCollectPasscodeViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (PKTransactionAuthenticationCollectPasscodeViewController)initWithPassUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier delegate:(id)delegate;
- (PKTransactionAuthenticationCollectPasscodeViewControllerDelegate)delegate;
- (void)_cancelButtonPressed;
- (void)_clearPasscodeField;
- (void)_createPasscodeField;
- (void)_encryptPIN:(id)n withCertificates:(id)certificates completion:(id)completion;
- (void)_encryptPasscodeInput;
- (void)_footerButtonPressed;
- (void)_passcodeInputFinished;
- (void)_retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)_transitionToState:(unint64_t)state;
- (void)_updateFailureLabelVisibility;
- (void)dealloc;
- (void)explanationViewDidUpdateLayout:(id)layout;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)loadView;
- (void)pinCodeTextFieldWasUpdated:(id)updated isComplete:(BOOL)complete;
- (void)preflightWithCompletion:(id)completion;
- (void)resetWithTransactionAuthenticationFailure:(int64_t)failure completion:(id)completion;
- (void)traitCollectionDidChange:(id)change;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)viewWillLayoutSubviews;
@end

@implementation PKTransactionAuthenticationCollectPasscodeViewController

- (PKTransactionAuthenticationCollectPasscodeViewController)initWithPassUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier delegate:(id)delegate
{
  identifierCopy = identifier;
  transactionIdentifierCopy = transactionIdentifier;
  delegateCopy = delegate;
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
    objc_storeStrong(&v13->_passUniqueIdentifier, identifier);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_transactionIdentifier, transactionIdentifier);
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

- (void)preflightWithCompletion:(id)completion
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000014C4;
  v16[3] = &unk_10000C398;
  completionCopy = completion;
  v17 = completionCopy;
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
  paymentPass = [v7 paymentPass];
  pass = self->_pass;
  self->_pass = paymentPass;

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

- (void)resetWithTransactionAuthenticationFailure:(int64_t)failure completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001664;
  block[3] = &unk_10000C3E8;
  completionCopy = completion;
  failureCopy = failure;
  block[4] = self;
  v6 = completionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadView
{
  v68.receiver = self;
  v68.super_class = PKTransactionAuthenticationCollectPasscodeViewController;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)&v68 loadView];
  view = [(PKTransactionAuthenticationCollectPasscodeViewController *)self view];
  v4 = +[UIColor systemBackgroundColor];
  [view setBackgroundColor:v4];

  compactBankLogoDarkImage = [(PKPaymentPass *)self->_pass compactBankLogoDarkImage];
  v6 = [UIImage imageWithPKImage:compactBankLogoDarkImage];

  compactBankLogoLightImage = [(PKPaymentPass *)self->_pass compactBankLogoLightImage];
  v8 = [UIImage imageWithPKImage:compactBankLogoLightImage];

  if (v8)
  {
    v9 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
    imageAsset = [v6 imageAsset];
    [imageAsset registerImage:v8 withTraitCollection:v9];
  }

  v63 = v8;
  v64 = v6;
  if (v6)
  {
    v11 = [[UIImageView alloc] initWithImage:v6];
    logoImageView = self->_logoImageView;
    self->_logoImageView = v11;

    [view addSubview:self->_logoImageView];
    v13 = UIContentSizeCategoryAccessibilityMedium;
  }

  else
  {
    v14 = objc_alloc_init(UILabel);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v14;

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    v16 = self->_titleLabel;
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    [(UILabel *)v16 setText:organizationName];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v18 = self->_titleLabel;
    v13 = UIContentSizeCategoryAccessibilityMedium;
    v19 = PKFontForDefaultDesign(UIFontTextStyleTitle1, UIContentSizeCategoryAccessibilityMedium);
    [(UILabel *)v18 setFont:v19];

    [view addSubview:self->_titleLabel];
  }

  v20 = view;
  currencyAmount = [(PKPaymentTransaction *)self->_transaction currencyAmount];
  formattedStringValue = [currencyAmount formattedStringValue];
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  displayName = [merchant displayName];
  organizationName2 = [(PKPaymentPass *)self->_pass organizationName];
  v26 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_PAYMENT_PIN_BODY", @"%@%@%@", formattedStringValue, displayName, organizationName2);

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
  state = [(PKLinkedApplication *)self->_linkedApplication state];
  v41 = 0.0;
  if (state == 1)
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
  layer = [(UILabel *)self->_failureLabel layer];
  [layer setCornerCurve:kCACornerCurveContinuous];

  [v20 addSubview:self->_failureLabel];
  [(PKTransactionAuthenticationCollectPasscodeViewController *)self _updateFailureLabelVisibility];
  v53 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonPressed"];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v53;

  navigationItem = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:self->_cancelButton];

  if (self->_PINFormat == 2)
  {
    v56 = [UIBarButtonItem alloc];
    v57 = PKLocalizedAquamanString(@"CONFIRM");
    v58 = [v56 initWithTitle:v57 style:0 target:self action:"_passcodeInputFinished"];
    confirmButton = self->_confirmButton;
    self->_confirmButton = v58;

    [(UIBarButtonItem *)self->_confirmButton setEnabled:0];
    navigationItem2 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:self->_confirmButton];
  }

  v61 = objc_alloc_init(UINavigationBarAppearance);
  [v61 configureWithTransparentBackground];
  navigationItem3 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
  [navigationItem3 setStandardAppearance:v61];

  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);
}

- (void)viewWillLayoutSubviews
{
  v52.receiver = self;
  v52.super_class = PKTransactionAuthenticationCollectPasscodeViewController;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)&v52 viewWillLayoutSubviews];
  view = [(PKTransactionAuthenticationCollectPasscodeViewController *)self view];
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

  [view bounds];
  v51 = v7;
  v9 = v8 - (v6 + v6);
  PKUIGetMinScreenWidthType();
  superview = [(UIImageView *)self->_logoImageView superview];

  if (superview)
  {
    image = [(UIImageView *)self->_logoImageView image];
    [image size];

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
    superview2 = [(UILabel *)self->_titleLabel superview];

    if (superview2)
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
  layer = [(UILabel *)self->_failureLabel layer];
  [layer setCornerRadius:v47 * 0.5];

  [(UIButton *)self->_footerButton sizeToFit];
  [(UIButton *)self->_footerButton frame];
  v49 = v51 - self->_keyboardSize.height;
  titleLabel = [(UIButton *)self->_footerButton titleLabel];
  [titleLabel frame];

  UIRectCenteredXInRect();
  [(UIButton *)self->_footerButton setFrame:?];
}

- (void)traitCollectionDidChange:(id)change
{
  userInterfaceStyle = [change userInterfaceStyle];
  traitCollection = [(PKTransactionAuthenticationCollectPasscodeViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    layer = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    v7 = +[UIColor labelColor];
    [layer setBorderColor:{objc_msgSend(v7, "CGColor")}];
  }
}

- (void)explanationViewDidUpdateLayout:(id)layout
{
  view = [(PKTransactionAuthenticationCollectPasscodeViewController *)self view];
  [view setNeedsLayout];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  if (self->_PINFormat == 2)
  {
    length = range.length;
    location = range.location;
    stringCopy = string;
    text = [field text];
    v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    -[UIBarButtonItem setEnabled:](self->_confirmButton, "setEnabled:", [v11 length] > 5);
  }

  return 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  v5 = [text length];

  if (v5 >= 6)
  {
    [(PKTransactionAuthenticationCollectPasscodeViewController *)self _passcodeInputFinished];
  }

  return v5 > 5;
}

- (void)pinCodeTextFieldWasUpdated:(id)updated isComplete:(BOOL)complete
{
  if (complete)
  {
    [(PKTransactionAuthenticationCollectPasscodeViewController *)self _passcodeInputFinished];
  }
}

- (void)linkedApplicationDidChangeState:(id)state
{
  if ([state state] == 1)
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

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002864;
  v5[3] = &unk_10000C460;
  v5[4] = self;
  transactionCopy = transaction;
  v4 = transactionCopy;
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

    layer = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    v10 = +[UIColor labelColor];
    [layer setBorderColor:{objc_msgSend(v10, "CGColor")}];

    layer2 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    [layer2 setBorderWidth:1.0];

    layer3 = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField layer];
    [layer3 setCornerRadius:10.0];

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
    presentingViewController = objc_loadWeakRetained(&self->_delegate);
    [presentingViewController passcodeViewControllerDidCancel:self];
  }

  else
  {
    presentingViewController = [(PKTransactionAuthenticationCollectPasscodeViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
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

  organizationName = [(PKPaymentPass *)self->_pass organizationName];
  if ([(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    v6 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_ALERT_TITLE");
    v7 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_ALERT_BODY", @"%@", organizationName);
    v8 = PKLocalizedAquamanString(@"OPEN");
    v9 = &PKAnalyticsReportResetPaymentPINOpenButtonTag;
  }

  else
  {
    v6 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_APP_REQUIRED_TITLE", @"%@", organizationName);
    v7 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_FORGOT_PIN_APP_REQUIRED_ALERT_BODY", @"%@%@", organizationName, organizationName);
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
  selfCopy = self;
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

- (void)_transitionToState:(unint64_t)state
{
  if (self->_currentState != state)
  {
    v14 = v3;
    self->_currentState = state;
    if (!state || state == 2)
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating:v6];
      [(UIBarButtonItem *)self->_confirmButton setEnabled:0];
      navigationItem = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [navigationItem setRightBarButtonItem:self->_confirmButton];

      navigationItem2 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:self->_cancelButton];

      [(UIButton *)self->_footerButton setEnabled:1];
      [(UIView *)self->_passcodeField setHidden:0];
      [(UIView *)self->_passcodeField becomeFirstResponder];
    }

    else if (state == 1)
    {
      [(UIView *)self->_passcodeField setHidden:?];
      [(UIView *)self->_passcodeField resignFirstResponder];
      [(PKTransactionAuthenticationCollectPasscodeViewController *)self _clearPasscodeField];
      [(UIButton *)self->_footerButton setEnabled:0];
      navigationItem3 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:0];

      navigationItem4 = [(PKTransactionAuthenticationCollectPasscodeViewController *)self navigationItem];
      [navigationItem4 setLeftBarButtonItem:0];

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
    text = [(PKTransactionAuthenticationComplexPasscodeTextField *)self->_complexPasscodeField text];
  }

  else
  {
    if (PINFormat != 1)
    {
      pk_zString = 0;
      goto LABEL_7;
    }

    text = [(PKPinCodeField *)self->_simplePasscodeField pinCode];
  }

  v5 = text;
  pk_zString = [text pk_zString];

LABEL_7:
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000362C;
  v9[3] = &unk_10000C528;
  objc_copyWeak(&v11, &location);
  v8 = pk_zString;
  v10 = v8;
  [(PKTransactionAuthenticationCollectPasscodeViewController *)self _retrievePINEncryptionCertificateForPassUniqueIdentifier:uniqueID completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_retrievePINEncryptionCertificateForPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000038A8;
    v9[3] = &unk_10000C578;
    objc_copyWeak(&v12, &location);
    v11 = completionCopy;
    v10 = identifierCopy;
    [WeakRetained passcodeViewController:self requestSessionExchangeToken:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_encryptPIN:(id)n withCertificates:(id)certificates completion:(id)completion
{
  nCopy = n;
  certificatesCopy = certificates;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([certificatesCopy count])
    {
      objc_initWeak(&location, self);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100003BE0;
      v12[3] = &unk_10000C5C8;
      objc_copyWeak(&v16, &location);
      v15 = completionCopy;
      v13 = nCopy;
      v14 = certificatesCopy;
      [WeakRetained passcodeViewController:self requestSessionExchangeToken:v12];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_updateFailureLabelVisibility
{
  if (self->_currentFailure == 1 && self->_currentState == 2)
  {
    v3 = PKLocalizedAquamanString(@"TRANSACTION_AUTHENTICATION_INCORRECT_PIN_ENTRY");
    [(UILabel *)self->_failureLabel setText:v3];
    viewIfLoaded = [(PKTransactionAuthenticationCollectPasscodeViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];

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