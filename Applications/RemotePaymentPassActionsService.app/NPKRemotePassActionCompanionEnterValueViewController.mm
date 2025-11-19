@interface NPKRemotePassActionCompanionEnterValueViewController
+ (id)_fallbackHeaderImageForMessage:(id)a3;
- (BOOL)_shouldHideNonEssentialUI;
- (NPKRemotePassActionCompanionEnterValueViewController)initWithRequest:(id)a3 contact:(id)a4 delegate:(id)a5;
- (NPKRemotePassActionCompanionEnterValueViewControllerDelegate)delegate;
- (id)_contactImageForContact:(id)a3;
- (void)_cancelButtonTapped:(id)a3;
- (void)_confirmButtonTapped:(id)a3;
- (void)_keyboardWillChange:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_registerObservers;
- (void)_setUpAppearance;
- (void)_setUpEnterValueViewForBalanceField:(id)a3;
- (void)_setUpNavigationItem;
- (void)_setUpPassView;
- (void)_setUpTitleLabel;
- (void)_updateFirstResponder;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)_updateViewVisibility;
- (void)setContact:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKRemotePassActionCompanionEnterValueViewController

- (NPKRemotePassActionCompanionEnterValueViewController)initWithRequest:(id)a3 contact:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35.receiver = self;
  v35.super_class = NPKRemotePassActionCompanionEnterValueViewController;
  v12 = [(NPKRemotePassActionCompanionEnterValueViewController *)&v35 initWithNibName:0 bundle:0];
  if (!v12)
  {
LABEL_12:
    v23 = v12;
    goto LABEL_13;
  }

  v13 = [v9 balanceField];
  v14 = [v13 action];

  if ([v14 type] == 1)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeWeak(&v12->_delegate, v11);
    v15 = [v9 image];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [objc_opt_class() _fallbackHeaderImageForMessage:v9];
    }

    v24 = v17;

    v25 = [NPKRemotePassActionPassView alloc];
    v26 = [(NPKRemotePassActionCompanionEnterValueViewController *)v12 view];
    [v26 bounds];
    v27 = [(NPKRemotePassActionPassView *)v25 initWithPassImage:v24 frame:?];
    passView = v12->_passView;
    v12->_passView = v27;

    v29 = objc_alloc_init(UILabel);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v29;

    v31 = [[PKPerformActionEnterValueView alloc] initWithPass:0 action:v14 paymentDataProvider:0];
    enterValueView = v12->_enterValueView;
    v12->_enterValueView = v31;

    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpAppearance];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpPassView];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 setContact:v10];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpTitleLabel];
    v33 = [v9 balanceField];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpEnterValueViewForBalanceField:v33];

    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _registerObservers];
    goto LABEL_12;
  }

  v18 = pk_RemotePassAction_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

  if (v19)
  {
    v20 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = [v14 type];
      *buf = 138412802;
      v37 = v21;
      v38 = 2112;
      v39 = v14;
      v40 = 2048;
      v41 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error: Fail to init object of class %@ with action: %@ actionType: %lu", buf, 0x20u);
    }
  }

  v23 = 0;
LABEL_13:

  return v23;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NPKRemotePassActionCompanionEnterValueViewController;
  [(NPKRemotePassActionCompanionEnterValueViewController *)&v3 viewDidLoad];
  [(NPKRemotePassActionCompanionEnterValueViewController *)self _setUpNavigationItem];
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = NPKRemotePassActionCompanionEnterValueViewController;
  [(NPKRemotePassActionCompanionEnterValueViewController *)&v27 viewWillLayoutSubviews];
  v3 = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v23 = v10;
  [v3 safeAreaInsets];
  x = v5 + v11 + 10.0;
  y = v7 + v15;
  width = v9 - (v11 + 10.0 + v13 + 10.0);
  height = v23 - (v15 + v12 + CGRectGetHeight(self->_keyboardFrame));
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  [(NPKRemotePassActionPassView *)self->_passView sizeThatFits:width, height];
  v20 = v19;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectDivide(v28, &slice, &remainder, v20, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(NPKRemotePassActionPassView *)self->_passView setFrame:?];
  if (([(NPKRemotePassActionPassView *)self->_passView isHidden]& 1) == 0)
  {
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  memset(&v24, 0, sizeof(v24));
  [(UILabel *)self->_titleLabel sizeThatFits:width, height];
  v22 = v21;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectDivide(v29, &v24, &remainder, v22, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)self->_titleLabel setFrame:?];
  if (([(UILabel *)self->_titleLabel isHidden]& 1) == 0)
  {
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  [(PKPerformActionEnterValueView *)self->_enterValueView setFrame:x, y, width, height];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NPKRemotePassActionCompanionEnterValueViewController;
  [(NPKRemotePassActionCompanionEnterValueViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(NPKRemotePassActionCompanionEnterValueViewController *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(NPKRemotePassActionCompanionEnterValueViewController *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(NPKRemotePassActionCompanionEnterValueViewController *)self _updateViewVisibility];
LABEL_6:
}

- (void)setContact:(id)a3
{
  objc_storeStrong(&self->_contact, a3);
  v5 = a3;
  v6 = [(NPKRemotePassActionCompanionEnterValueViewController *)self _contactImageForContact:v5];
  [(NPKRemotePassActionPassView *)self->_passView setContactImage:v6];
}

- (void)_setUpAppearance
{
  v4 = +[UIColor systemBackgroundColor];
  v3 = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
  [v3 setBackgroundColor:v4];
}

- (void)_setUpPassView
{
  if (self->_passView)
  {
    [(NPKRemotePassActionPassView *)self->_passView setHidden:[(NPKRemotePassActionCompanionEnterValueViewController *)self _shouldHideNonEssentialUI]];
    v3 = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
    [v3 addSubview:self->_passView];
  }
}

- (void)_setUpTitleLabel
{
  if (self->_titleLabel)
  {
    v3 = [objc_opt_class() _primaryFont];
    [(UILabel *)self->_titleLabel setFont:v3];

    v4 = [objc_opt_class() _primaryTextColor];
    [(UILabel *)self->_titleLabel setTextColor:v4];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setNumberOfLines:3];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_SELECT_RELOAD_AMOUNT_TITLE" value:&stru_100010628 table:@"RemotePaymentPassActionsService"];
    [(UILabel *)self->_titleLabel setText:v6];

    [(UILabel *)self->_titleLabel setHidden:[(NPKRemotePassActionCompanionEnterValueViewController *)self _shouldHideNonEssentialUI]];
    v7 = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
    [v7 addSubview:self->_titleLabel];
  }
}

- (void)_setUpEnterValueViewForBalanceField:(id)a3
{
  enterValueView = self->_enterValueView;
  if (enterValueView)
  {
    v5 = a3;
    [(PKPerformActionEnterValueView *)enterValueView setDelegate:self];
    v6 = [v5 balance];
    v7 = [v6 value];
    [(PKPerformActionEnterValueView *)self->_enterValueView setCardBalance:v7];

    v17 = [v5 action];

    v8 = [v17 enteredValueItem];
    v9 = [v8 minLoadAmount];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMinLoadAmount:v9];

    v10 = [v17 enteredValueItem];
    v11 = [v10 maxLoadAmount];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMaxLoadAmount:v11];

    v12 = [v17 enteredValueItem];
    v13 = [v12 minLoadedBalance];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMinLoadedBalance:v13];

    v14 = [v17 enteredValueItem];
    v15 = [v14 maxLoadedBalance];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMaxLoadedBalance:v15];

    v16 = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
    [v16 addSubview:self->_enterValueView];
  }
}

- (void)_setUpNavigationItem
{
  v15 = [(NPKRemotePassActionCompanionEnterValueViewController *)self navigationItem];
  v3 = [(NPKRemotePassActionEnterValueRequest *)self->_request balanceField];
  v4 = [v3 action];
  v5 = [v4 title];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"RELOAD_REQUEST_TITLE" value:&stru_100010628 table:@"RemotePaymentPassActionsService"];
  }

  [v15 setTitle:v7];
  v9 = [(NPKRemotePassActionEnterValueRequest *)self->_request balanceField];
  v10 = [v9 action];
  v11 = [v10 confirmationTitle];

  v12 = [[UIBarButtonItem alloc] initWithTitle:v11 style:0 target:self action:"_confirmButtonTapped:"];
  confirmBarButtonItem = self->_confirmBarButtonItem;
  self->_confirmBarButtonItem = v12;

  [v15 setRightBarButtonItem:self->_confirmBarButtonItem];
  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [v15 setLeftBarButtonItem:v14];
}

- (void)_registerObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  [v3 addObserver:self selector:"_keyboardWillChange:" name:UIKeyboardWillChangeFrameNotification object:0];
  [v3 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)_confirmButtonTapped:(id)a3
{
  v4 = [(PKPerformActionEnterValueView *)self->_enterValueView transactionAmount];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSDecimalNumber zero];
  }

  v7 = v6;

  v8 = [(PKPerformActionEnterValueView *)self->_enterValueView transactionCurrency];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(NPKRemotePassActionEnterValueRequest *)self->_request balanceField];
    v12 = [v11 balance];
    v10 = [v12 currencyCode];
  }

  v13 = PKCurrencyAmountMake();
  if (v13)
  {
    v14 = [(NPKRemotePassActionCompanionEnterValueViewController *)self delegate];
    v15 = [(NPKRemotePassActionEnterValueRequest *)self->_request identifier];
    [v14 enterValueViewController:self didFinishWithCurrencyAmount:v13 forRequestIdentifier:v15];
  }

  else
  {
    v16 = pk_RemotePassAction_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412802;
        v20 = 0;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Unable to identify currency amount! (%@). transactionAmount: %@ currencyCode: %@", &v19, 0x20u);
      }
    }

    v14 = [(NPKRemotePassActionCompanionEnterValueViewController *)self delegate];
    v15 = [(NPKRemotePassActionEnterValueRequest *)self->_request identifier];
    [v14 enterValueViewController:self didCancelForRequestIdentifier:v15];
  }
}

- (void)_cancelButtonTapped:(id)a3
{
  v5 = [(NPKRemotePassActionCompanionEnterValueViewController *)self delegate];
  v4 = [(NPKRemotePassActionEnterValueRequest *)self->_request identifier];
  [v5 enterValueViewController:self didCancelForRequestIdentifier:v4];
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:UIKeyboardFrameEndUserInfoKey];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002218;
  v7[3] = &unk_100010348;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(NPKRemotePassActionCompanionEnterValueViewController *)self _updateLayoutForKeyboardAction:v7];
}

- (void)_keyboardWillChange:(id)a3
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:UIKeyboardFrameEndUserInfoKey];

    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000242C;
      v8[3] = &unk_100010348;
      v8[4] = self;
      v9 = v7;
      [(NPKRemotePassActionCompanionEnterValueViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002598;
  v3[3] = &unk_100010370;
  v3[4] = self;
  [(NPKRemotePassActionCompanionEnterValueViewController *)self _updateLayoutForKeyboardAction:v3];
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NPKRemotePassActionCompanionEnterValueViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      [v5 layoutIfNeeded];
      if (v4[2](v4))
      {
        [v6 setNeedsLayout];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100002700;
        v7[3] = &unk_100010398;
        v8 = v6;
        [UIView _animateUsingDefaultTimingWithOptions:134 animations:v7 completion:0];
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (void)_updateFirstResponder
{
  v2 = [(PKPerformActionEnterValueView *)self->_enterValueView amountTextField];
  [v2 becomeFirstResponder];
}

+ (id)_fallbackHeaderImageForMessage:(id)a3
{
  v3 = [a3 cardType];
  if (v3 <= 2)
  {
    v4 = [UIImage imageNamed:off_100010418[v3]];
  }

  return v4;
}

- (id)_contactImageForContact:(id)a3
{
  v4 = a3;
  passView = self->_passView;
  [objc_opt_class() contactImageSize];
  v7 = v6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = qword_100016DB0;
  v27 = qword_100016DB0;
  if (!qword_100016DB0)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v29 = sub_100002CE0;
    v30 = &unk_1000103C0;
    v31 = &v24;
    sub_100002CE0(&buf);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = [v4 givenName];
  v11 = [v4 familyName];
  v12 = [v8 profilePictureForContact:v4 serverImageData:0 firstName:v10 lastName:v11 diameter:v7];

  if (!v12 || ([UIImage imageWithData:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = pk_RemotePassAction_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: No photo data found; falling back to monogram for contact: %@", &buf, 0xCu);
      }
    }

    v17 = qword_100016DA8;
    if (!qword_100016DA8)
    {
      v18 = [[CNMonogrammer alloc] initWithStyle:0 diameter:v7];
      v19 = qword_100016DA8;
      qword_100016DA8 = v18;

      v17 = qword_100016DA8;
    }

    v20 = [v17 monogramForContact:v4];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [qword_100016DA8 silhouetteMonogram];
    }

    v13 = v22;
  }

  return v13;
}

- (BOOL)_shouldHideNonEssentialUI
{
  if (!PKUIGetMinScreenWidthType())
  {
    return 1;
  }

  v3 = [(NPKRemotePassActionCompanionEnterValueViewController *)self traitCollection];
  v4 = [v3 verticalSizeClass] == 1;

  return v4;
}

- (void)_updateViewVisibility
{
  v3 = [(NPKRemotePassActionCompanionEnterValueViewController *)self _shouldHideNonEssentialUI];
  if (v3 == [(NPKRemotePassActionPassView *)self->_passView isHidden])
  {
    v4 = [(UILabel *)self->_titleLabel isHidden];
    [(NPKRemotePassActionPassView *)self->_passView setHidden:v3];
    [(UILabel *)self->_titleLabel setHidden:v3];
    if (v3 == v4)
    {
      return;
    }
  }

  else
  {
    [(NPKRemotePassActionPassView *)self->_passView setHidden:v3];
    [(UILabel *)self->_titleLabel setHidden:v3];
  }

  v5 = [(NPKRemotePassActionCompanionEnterValueViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (NPKRemotePassActionCompanionEnterValueViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end