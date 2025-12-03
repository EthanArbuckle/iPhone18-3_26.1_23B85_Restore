@interface NPKRemotePassActionCompanionEnterValueViewController
+ (id)_fallbackHeaderImageForMessage:(id)message;
- (BOOL)_shouldHideNonEssentialUI;
- (NPKRemotePassActionCompanionEnterValueViewController)initWithRequest:(id)request contact:(id)contact delegate:(id)delegate;
- (NPKRemotePassActionCompanionEnterValueViewControllerDelegate)delegate;
- (id)_contactImageForContact:(id)contact;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_confirmButtonTapped:(id)tapped;
- (void)_keyboardWillChange:(id)change;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_registerObservers;
- (void)_setUpAppearance;
- (void)_setUpEnterValueViewForBalanceField:(id)field;
- (void)_setUpNavigationItem;
- (void)_setUpPassView;
- (void)_setUpTitleLabel;
- (void)_updateFirstResponder;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)_updateViewVisibility;
- (void)setContact:(id)contact;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKRemotePassActionCompanionEnterValueViewController

- (NPKRemotePassActionCompanionEnterValueViewController)initWithRequest:(id)request contact:(id)contact delegate:(id)delegate
{
  requestCopy = request;
  contactCopy = contact;
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = NPKRemotePassActionCompanionEnterValueViewController;
  v12 = [(NPKRemotePassActionCompanionEnterValueViewController *)&v35 initWithNibName:0 bundle:0];
  if (!v12)
  {
LABEL_12:
    v23 = v12;
    goto LABEL_13;
  }

  balanceField = [requestCopy balanceField];
  action = [balanceField action];

  if ([action type] == 1)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    image = [requestCopy image];
    v16 = image;
    if (image)
    {
      v17 = image;
    }

    else
    {
      v17 = [objc_opt_class() _fallbackHeaderImageForMessage:requestCopy];
    }

    v24 = v17;

    v25 = [NPKRemotePassActionPassView alloc];
    view = [(NPKRemotePassActionCompanionEnterValueViewController *)v12 view];
    [view bounds];
    v27 = [(NPKRemotePassActionPassView *)v25 initWithPassImage:v24 frame:?];
    passView = v12->_passView;
    v12->_passView = v27;

    v29 = objc_alloc_init(UILabel);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v29;

    v31 = [[PKPerformActionEnterValueView alloc] initWithPass:0 action:action paymentDataProvider:0];
    enterValueView = v12->_enterValueView;
    v12->_enterValueView = v31;

    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpAppearance];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpPassView];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 setContact:contactCopy];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpTitleLabel];
    balanceField2 = [requestCopy balanceField];
    [(NPKRemotePassActionCompanionEnterValueViewController *)v12 _setUpEnterValueViewForBalanceField:balanceField2];

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
      type = [action type];
      *buf = 138412802;
      v37 = v21;
      v38 = 2112;
      v39 = action;
      v40 = 2048;
      v41 = type;
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
  view = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v23 = v10;
  [view safeAreaInsets];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = NPKRemotePassActionCompanionEnterValueViewController;
  [(NPKRemotePassActionCompanionEnterValueViewController *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(NPKRemotePassActionCompanionEnterValueViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(NPKRemotePassActionCompanionEnterValueViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
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

- (void)setContact:(id)contact
{
  objc_storeStrong(&self->_contact, contact);
  contactCopy = contact;
  v6 = [(NPKRemotePassActionCompanionEnterValueViewController *)self _contactImageForContact:contactCopy];
  [(NPKRemotePassActionPassView *)self->_passView setContactImage:v6];
}

- (void)_setUpAppearance
{
  v4 = +[UIColor systemBackgroundColor];
  view = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
  [view setBackgroundColor:v4];
}

- (void)_setUpPassView
{
  if (self->_passView)
  {
    [(NPKRemotePassActionPassView *)self->_passView setHidden:[(NPKRemotePassActionCompanionEnterValueViewController *)self _shouldHideNonEssentialUI]];
    view = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
    [view addSubview:self->_passView];
  }
}

- (void)_setUpTitleLabel
{
  if (self->_titleLabel)
  {
    _primaryFont = [objc_opt_class() _primaryFont];
    [(UILabel *)self->_titleLabel setFont:_primaryFont];

    _primaryTextColor = [objc_opt_class() _primaryTextColor];
    [(UILabel *)self->_titleLabel setTextColor:_primaryTextColor];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setNumberOfLines:3];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"REMOTE_PAYMENT_PASS_ACTION_SELECT_RELOAD_AMOUNT_TITLE" value:&stru_100010628 table:@"RemotePaymentPassActionsService"];
    [(UILabel *)self->_titleLabel setText:v6];

    [(UILabel *)self->_titleLabel setHidden:[(NPKRemotePassActionCompanionEnterValueViewController *)self _shouldHideNonEssentialUI]];
    view = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
    [view addSubview:self->_titleLabel];
  }
}

- (void)_setUpEnterValueViewForBalanceField:(id)field
{
  enterValueView = self->_enterValueView;
  if (enterValueView)
  {
    fieldCopy = field;
    [(PKPerformActionEnterValueView *)enterValueView setDelegate:self];
    balance = [fieldCopy balance];
    value = [balance value];
    [(PKPerformActionEnterValueView *)self->_enterValueView setCardBalance:value];

    action = [fieldCopy action];

    enteredValueItem = [action enteredValueItem];
    minLoadAmount = [enteredValueItem minLoadAmount];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMinLoadAmount:minLoadAmount];

    enteredValueItem2 = [action enteredValueItem];
    maxLoadAmount = [enteredValueItem2 maxLoadAmount];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMaxLoadAmount:maxLoadAmount];

    enteredValueItem3 = [action enteredValueItem];
    minLoadedBalance = [enteredValueItem3 minLoadedBalance];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMinLoadedBalance:minLoadedBalance];

    enteredValueItem4 = [action enteredValueItem];
    maxLoadedBalance = [enteredValueItem4 maxLoadedBalance];
    [(PKPerformActionEnterValueView *)self->_enterValueView setMaxLoadedBalance:maxLoadedBalance];

    view = [(NPKRemotePassActionCompanionEnterValueViewController *)self view];
    [view addSubview:self->_enterValueView];
  }
}

- (void)_setUpNavigationItem
{
  navigationItem = [(NPKRemotePassActionCompanionEnterValueViewController *)self navigationItem];
  balanceField = [(NPKRemotePassActionEnterValueRequest *)self->_request balanceField];
  action = [balanceField action];
  title = [action title];
  v6 = title;
  if (title)
  {
    v7 = title;
  }

  else
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"RELOAD_REQUEST_TITLE" value:&stru_100010628 table:@"RemotePaymentPassActionsService"];
  }

  [navigationItem setTitle:v7];
  balanceField2 = [(NPKRemotePassActionEnterValueRequest *)self->_request balanceField];
  action2 = [balanceField2 action];
  confirmationTitle = [action2 confirmationTitle];

  v12 = [[UIBarButtonItem alloc] initWithTitle:confirmationTitle style:0 target:self action:"_confirmButtonTapped:"];
  confirmBarButtonItem = self->_confirmBarButtonItem;
  self->_confirmBarButtonItem = v12;

  [navigationItem setRightBarButtonItem:self->_confirmBarButtonItem];
  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [navigationItem setLeftBarButtonItem:v14];
}

- (void)_registerObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  [v3 addObserver:self selector:"_keyboardWillChange:" name:UIKeyboardWillChangeFrameNotification object:0];
  [v3 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)_confirmButtonTapped:(id)tapped
{
  transactionAmount = [(PKPerformActionEnterValueView *)self->_enterValueView transactionAmount];
  v5 = transactionAmount;
  if (transactionAmount)
  {
    v6 = transactionAmount;
  }

  else
  {
    v6 = +[NSDecimalNumber zero];
  }

  v7 = v6;

  transactionCurrency = [(PKPerformActionEnterValueView *)self->_enterValueView transactionCurrency];
  v9 = transactionCurrency;
  if (transactionCurrency)
  {
    currencyCode = transactionCurrency;
  }

  else
  {
    balanceField = [(NPKRemotePassActionEnterValueRequest *)self->_request balanceField];
    balance = [balanceField balance];
    currencyCode = [balance currencyCode];
  }

  v13 = PKCurrencyAmountMake();
  if (v13)
  {
    delegate = [(NPKRemotePassActionCompanionEnterValueViewController *)self delegate];
    identifier = [(NPKRemotePassActionEnterValueRequest *)self->_request identifier];
    [delegate enterValueViewController:self didFinishWithCurrencyAmount:v13 forRequestIdentifier:identifier];
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
        v24 = currencyCode;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: Unable to identify currency amount! (%@). transactionAmount: %@ currencyCode: %@", &v19, 0x20u);
      }
    }

    delegate = [(NPKRemotePassActionCompanionEnterValueViewController *)self delegate];
    identifier = [(NPKRemotePassActionEnterValueRequest *)self->_request identifier];
    [delegate enterValueViewController:self didCancelForRequestIdentifier:identifier];
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  delegate = [(NPKRemotePassActionCompanionEnterValueViewController *)self delegate];
  identifier = [(NPKRemotePassActionEnterValueRequest *)self->_request identifier];
  [delegate enterValueViewController:self didCancelForRequestIdentifier:identifier];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002218;
  v7[3] = &unk_100010348;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(NPKRemotePassActionCompanionEnterValueViewController *)self _updateLayoutForKeyboardAction:v7];
}

- (void)_keyboardWillChange:(id)change
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    userInfo = [change userInfo];
    v7 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];

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

- (void)_keyboardWillHide:(id)hide
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002598;
  v3[3] = &unk_100010370;
  v3[4] = self;
  [(NPKRemotePassActionCompanionEnterValueViewController *)self _updateLayoutForKeyboardAction:v3];
}

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    viewIfLoaded = [(NPKRemotePassActionCompanionEnterValueViewController *)self viewIfLoaded];
    v6 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      if (actionCopy[2](actionCopy))
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
      actionCopy[2](actionCopy);
    }
  }
}

- (void)_updateFirstResponder
{
  amountTextField = [(PKPerformActionEnterValueView *)self->_enterValueView amountTextField];
  [amountTextField becomeFirstResponder];
}

+ (id)_fallbackHeaderImageForMessage:(id)message
{
  cardType = [message cardType];
  if (cardType <= 2)
  {
    v4 = [UIImage imageNamed:off_100010418[cardType]];
  }

  return v4;
}

- (id)_contactImageForContact:(id)contact
{
  contactCopy = contact;
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
  givenName = [contactCopy givenName];
  familyName = [contactCopy familyName];
  v12 = [v8 profilePictureForContact:contactCopy serverImageData:0 firstName:givenName lastName:familyName diameter:v7];

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
        *(&buf + 4) = contactCopy;
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

    v20 = [v17 monogramForContact:contactCopy];
    v21 = v20;
    if (v20)
    {
      silhouetteMonogram = v20;
    }

    else
    {
      silhouetteMonogram = [qword_100016DA8 silhouetteMonogram];
    }

    v13 = silhouetteMonogram;
  }

  return v13;
}

- (BOOL)_shouldHideNonEssentialUI
{
  if (!PKUIGetMinScreenWidthType())
  {
    return 1;
  }

  traitCollection = [(NPKRemotePassActionCompanionEnterValueViewController *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] == 1;

  return v4;
}

- (void)_updateViewVisibility
{
  _shouldHideNonEssentialUI = [(NPKRemotePassActionCompanionEnterValueViewController *)self _shouldHideNonEssentialUI];
  if (_shouldHideNonEssentialUI == [(NPKRemotePassActionPassView *)self->_passView isHidden])
  {
    isHidden = [(UILabel *)self->_titleLabel isHidden];
    [(NPKRemotePassActionPassView *)self->_passView setHidden:_shouldHideNonEssentialUI];
    [(UILabel *)self->_titleLabel setHidden:_shouldHideNonEssentialUI];
    if (_shouldHideNonEssentialUI == isHidden)
    {
      return;
    }
  }

  else
  {
    [(NPKRemotePassActionPassView *)self->_passView setHidden:_shouldHideNonEssentialUI];
    [(UILabel *)self->_titleLabel setHidden:_shouldHideNonEssentialUI];
  }

  viewIfLoaded = [(NPKRemotePassActionCompanionEnterValueViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (NPKRemotePassActionCompanionEnterValueViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end