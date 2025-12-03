@interface NPKRemotePassActionCompanionItemSelectionViewController
+ (id)_fallbackHeaderImageForMessage:(id)message;
+ (id)_makeSelectItemViewForAction:(id)action;
- (BOOL)_shouldHideNonEssentialUI;
- (NPKRemotePassActionCompanionItemSelectionViewController)initWithRequest:(id)request contact:(id)contact delegate:(id)delegate;
- (NPKRemotePassActionCompanionItemSelectionViewControllerDelegate)delegate;
- (id)_action;
- (id)_contactImageForContact:(id)contact;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_confirmButtonTapped:(id)tapped;
- (void)_fetchRemoteContentIfNeeded;
- (void)_reloadSelectItemView;
- (void)_setUpAppearance;
- (void)_setUpNavigationItem;
- (void)_setUpPassView;
- (void)_setUpSelectItemViewForCommutePlanField:(id)field;
- (void)_setUpTitleLabel;
- (void)_showGenericErrorAlert:(id)alert;
- (void)_showLoadingView:(BOOL)view;
- (void)_updateViewVisibility;
- (void)setContact:(id)contact;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKRemotePassActionCompanionItemSelectionViewController

- (NPKRemotePassActionCompanionItemSelectionViewController)initWithRequest:(id)request contact:(id)contact delegate:(id)delegate
{
  requestCopy = request;
  contactCopy = contact;
  delegateCopy = delegate;
  v34.receiver = self;
  v34.super_class = NPKRemotePassActionCompanionItemSelectionViewController;
  v12 = [(NPKRemotePassActionCompanionItemSelectionViewController *)&v34 initWithNibName:0 bundle:0];
  if (!v12)
  {
LABEL_12:
    v22 = v12;
    goto LABEL_13;
  }

  action = [requestCopy action];
  if ([action type] == 2)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    image = [requestCopy image];
    v15 = image;
    if (image)
    {
      v16 = image;
    }

    else
    {
      v16 = [objc_opt_class() _fallbackHeaderImageForMessage:requestCopy];
    }

    v23 = v16;

    v24 = [NPKRemotePassActionPassView alloc];
    view = [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 view];
    [view bounds];
    v26 = [(NPKRemotePassActionPassView *)v24 initWithPassImage:v23 frame:?];
    passView = v12->_passView;
    v12->_passView = v26;

    v28 = objc_alloc_init(UILabel);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v28;

    v30 = [objc_opt_class() _makeSelectItemViewForAction:action];
    selectItemView = v12->_selectItemView;
    v12->_selectItemView = v30;

    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpAppearance];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpPassView];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 setContact:contactCopy];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpTitleLabel];
    commutePlanField = [requestCopy commutePlanField];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpSelectItemViewForCommutePlanField:commutePlanField];

    goto LABEL_12;
  }

  v17 = pk_RemotePassAction_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

  if (v18)
  {
    v19 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      type = [action type];
      *buf = 138412802;
      v36 = v20;
      v37 = 2112;
      v38 = action;
      v39 = 2048;
      v40 = type;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error: Fail to init object of class %@ with action: %@ actionType: %lu", buf, 0x20u);
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NPKRemotePassActionCompanionItemSelectionViewController;
  [(NPKRemotePassActionCompanionItemSelectionViewController *)&v3 viewDidLoad];
  [(NPKRemotePassActionCompanionItemSelectionViewController *)self _setUpNavigationItem];
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = NPKRemotePassActionCompanionItemSelectionViewController;
  [(NPKRemotePassActionCompanionItemSelectionViewController *)&v28 viewWillLayoutSubviews];
  view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12 + 10.0;
  x = v5 + v13;
  y = v7 + v16;
  width = v9 - (v13 + v14 + 10.0);
  height = v11 - (v16 + v19);
  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  [(NPKRemotePassActionPassView *)self->_passView sizeThatFits:width, height];
  v22 = v21;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectDivide(v29, &slice, &remainder, v22, CGRectMinYEdge);
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

  [(UILabel *)self->_titleLabel sizeThatFits:width, height, 0, 0, 0, 0];
  v24 = v23;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectDivide(v30, &v25, &remainder, v24, CGRectMinYEdge);
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

  [(PKPerformActionSelectItemView *)self->_selectItemView setFrame:x, y, width, height];
  [(PKPerformActionLoadingView *)self->_loadingView setFrame:x, y, width, height];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = NPKRemotePassActionCompanionItemSelectionViewController;
  [(NPKRemotePassActionCompanionItemSelectionViewController *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(NPKRemotePassActionCompanionItemSelectionViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self traitCollection];
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

  [(NPKRemotePassActionCompanionItemSelectionViewController *)self _updateViewVisibility];
LABEL_6:
}

- (void)setContact:(id)contact
{
  objc_storeStrong(&self->_contact, contact);
  contactCopy = contact;
  v6 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self _contactImageForContact:contactCopy];
  [(NPKRemotePassActionPassView *)self->_passView setContactImage:v6];
}

- (void)_setUpAppearance
{
  v4 = +[UIColor systemBackgroundColor];
  view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
  [view setBackgroundColor:v4];
}

- (void)_setUpNavigationItem
{
  navigationItem = [(NPKRemotePassActionCompanionItemSelectionViewController *)self navigationItem];
  action = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  title = [action title];
  v5 = title;
  if (title)
  {
    v6 = title;
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"RENEW_REQUEST_TITLE" value:&stru_100010628 table:@"RemotePaymentPassActionsService"];
  }

  [navigationItem setTitle:v6];
  action2 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  confirmationTitle = [action2 confirmationTitle];

  v10 = [[UIBarButtonItem alloc] initWithTitle:confirmationTitle style:0 target:self action:"_confirmButtonTapped:"];
  confirmBarButtonItem = self->_confirmBarButtonItem;
  self->_confirmBarButtonItem = v10;

  [navigationItem setRightBarButtonItem:self->_confirmBarButtonItem];
  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [navigationItem setLeftBarButtonItem:v12];
}

- (void)_setUpPassView
{
  if (self->_passView)
  {
    [(NPKRemotePassActionPassView *)self->_passView setHidden:[(NPKRemotePassActionCompanionItemSelectionViewController *)self _shouldHideNonEssentialUI]];
    view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
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
    action = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
    title = [action title];
    [(UILabel *)self->_titleLabel setText:title];

    [(UILabel *)self->_titleLabel setHidden:[(NPKRemotePassActionCompanionItemSelectionViewController *)self _shouldHideNonEssentialUI]];
    view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
    [view addSubview:self->_titleLabel];
  }
}

- (void)_setUpSelectItemViewForCommutePlanField:(id)field
{
  selectItemView = self->_selectItemView;
  if (selectItemView)
  {
    [(PKPerformActionSelectItemView *)selectItemView setDelegate:self];
    view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
    [view addSubview:self->_selectItemView];
  }
}

+ (id)_makeSelectItemViewForAction:(id)action
{
  actionCopy = action;
  v4 = [[PKPerformActionSelectItemView alloc] initWithPass:0 action:actionCopy paymentDataProvider:0];

  return v4;
}

- (void)_confirmButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  transactionAmount = [(PKPerformActionSelectItemView *)self->_selectItemView transactionAmount];
  transactionCurrency = [(PKPerformActionSelectItemView *)self->_selectItemView transactionCurrency];
  v7 = PKCurrencyAmountMake();

  objc_initWeak(&location, self);
  selectItemView = self->_selectItemView;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003BB0;
  v10[3] = &unk_100010460;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [(PKPerformActionSelectItemView *)selectItemView fetchServiceProviderDataWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_cancelButtonTapped:(id)tapped
{
  delegate = [(NPKRemotePassActionCompanionItemSelectionViewController *)self delegate];
  identifier = [(NPKRemotePassActionSelectItemRequest *)self->_request identifier];
  [delegate selectItemViewController:self didCancelForRequestIdentifier:identifier];
}

- (id)_action
{
  action = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  remoteContentConfiguration = [action remoteContentConfiguration];

  if (remoteContentConfiguration && (remoteAction = self->_remoteAction) != 0)
  {
    action2 = remoteAction;
  }

  else
  {
    action2 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  }

  return action2;
}

+ (id)_fallbackHeaderImageForMessage:(id)message
{
  cardType = [message cardType];
  if (cardType <= 2)
  {
    v4 = [UIImage imageNamed:*(&off_100010510 + cardType)];
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
  v8 = qword_100016DC8;
  v27 = qword_100016DC8;
  if (!qword_100016DC8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v29 = sub_100004DFC;
    v30 = &unk_1000103C0;
    v31 = &v24;
    sub_100004DFC(&buf);
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

    v17 = qword_100016DC0;
    if (!qword_100016DC0)
    {
      v18 = [[CNMonogrammer alloc] initWithStyle:0 diameter:v7];
      v19 = qword_100016DC0;
      qword_100016DC0 = v18;

      v17 = qword_100016DC0;
    }

    v20 = [v17 monogramForContact:contactCopy];
    v21 = v20;
    if (v20)
    {
      silhouetteMonogram = v20;
    }

    else
    {
      silhouetteMonogram = [qword_100016DC0 silhouetteMonogram];
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

  traitCollection = [(NPKRemotePassActionCompanionItemSelectionViewController *)self traitCollection];
  v4 = [traitCollection verticalSizeClass] == 1;

  return v4;
}

- (void)_updateViewVisibility
{
  _shouldHideNonEssentialUI = [(NPKRemotePassActionCompanionItemSelectionViewController *)self _shouldHideNonEssentialUI];
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

  viewIfLoaded = [(NPKRemotePassActionCompanionItemSelectionViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_fetchRemoteContentIfNeeded
{
  action = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  remoteContentConfiguration = [action remoteContentConfiguration];
  if (remoteContentConfiguration)
  {
    remoteAction = self->_remoteAction;

    if (remoteAction)
    {
      return;
    }

    v5 = pk_RemotePassAction_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        action2 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
        *buf = 138412290;
        v28 = action2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Fetching remote content for action %@", buf, 0xCu);
      }
    }

    v9 = +[PKPaymentWebService sharedService];
    if ([v9 needsRegistration])
    {
      v10 = pk_RemotePassAction_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_RemotePassAction_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning: Web service needs registration", buf, 2u);
        }
      }
    }

    deviceIdentifier = [(NPKRemotePassActionSelectItemRequest *)self->_request deviceIdentifier];
    passTypeIdentifier = [(NPKRemotePassActionSelectItemRequest *)self->_request passTypeIdentifier];
    passSerialNumber = [(NPKRemotePassActionSelectItemRequest *)self->_request passSerialNumber];
    v16 = passSerialNumber;
    if (deviceIdentifier && passTypeIdentifier && passSerialNumber)
    {
      [(NPKRemotePassActionCompanionItemSelectionViewController *)self _showLoadingView:1];
      action3 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000470C;
      v26[3] = &unk_1000104B0;
      v26[4] = self;
      [v9 passActionWithRemoteContentPassAction:action3 forDeviceIdentifier:deviceIdentifier passTypeIdentifier:passTypeIdentifier passSerialNumber:v16 completion:v26];
    }

    else
    {
      v18 = pk_RemotePassAction_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
        goto LABEL_31;
      }

      action3 = pk_RemotePassAction_log();
      if (os_log_type_enabled(action3, OS_LOG_TYPE_ERROR))
      {
        action4 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
        v21 = action4;
        v22 = @"NO";
        if (deviceIdentifier)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        *buf = 138413058;
        v28 = action4;
        if (passTypeIdentifier)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v30 = v23;
        v29 = 2112;
        v31 = 2112;
        if (v16)
        {
          v22 = @"YES";
        }

        v32 = v24;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, action3, OS_LOG_TYPE_ERROR, "Error: Unable to load remote content for action %@! Remote content needed, but insufficient information exists to obtain it.\nHas deviceID? %@.\nHas passTypeIdentifier? %@.\nHas passSerialNumber? %@", buf, 0x2Au);
      }
    }

LABEL_31:
    return;
  }
}

- (void)_showLoadingView:(BOOL)view
{
  loadingView = self->_loadingView;
  if (view)
  {
    if (!loadingView)
    {
      v5 = [PKPerformActionLoadingView alloc];
      [(PKPerformActionSelectItemView *)self->_selectItemView frame];
      v6 = [v5 initWithFrame:?];
      v7 = self->_loadingView;
      self->_loadingView = v6;
    }

    view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
    [view addSubview:self->_loadingView];

    [(PKPerformActionSelectItemView *)self->_selectItemView setDelegate:0];
    [(PKPerformActionSelectItemView *)self->_selectItemView removeFromSuperview];
    selectItemView = self->_selectItemView;
    self->_selectItemView = 0;
  }

  else
  {

    [(PKPerformActionLoadingView *)loadingView removeFromSuperview];
  }
}

- (void)_reloadSelectItemView
{
  [(PKPerformActionSelectItemView *)self->_selectItemView setDelegate:0];
  [(PKPerformActionSelectItemView *)self->_selectItemView removeFromSuperview];
  v3 = objc_opt_class();
  _action = [(NPKRemotePassActionCompanionItemSelectionViewController *)self _action];
  v5 = [v3 _makeSelectItemViewForAction:_action];
  selectItemView = self->_selectItemView;
  self->_selectItemView = v5;

  [(PKPerformActionSelectItemView *)self->_selectItemView setDelegate:self];
  view = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
  [view insertSubview:self->_selectItemView belowSubview:self->_passView];
}

- (void)_showGenericErrorAlert:(id)alert
{
  alertCopy = alert;
  action = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  v6 = [PKPaymentPass displayableErrorForAction:action andReason:1];

  localizedDescription = [v6 localizedDescription];
  localizedRecoverySuggestion = [v6 localizedRecoverySuggestion];
  v9 = [UIAlertController alertControllerWithTitle:localizedDescription message:localizedRecoverySuggestion preferredStyle:1];

  v10 = PKLocalizedPaymentString(@"PASS_ACTION_UNAVAILABLE_OK_BUTTON_TITLE");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004C80;
  v13[3] = &unk_1000104D8;
  v14 = alertCopy;
  v11 = alertCopy;
  v12 = [UIAlertAction actionWithTitle:v10 style:1 handler:v13];
  [v9 addAction:v12];

  [(NPKRemotePassActionCompanionItemSelectionViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (NPKRemotePassActionCompanionItemSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end