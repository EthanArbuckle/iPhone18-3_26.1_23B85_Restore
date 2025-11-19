@interface NPKRemotePassActionCompanionItemSelectionViewController
+ (id)_fallbackHeaderImageForMessage:(id)a3;
+ (id)_makeSelectItemViewForAction:(id)a3;
- (BOOL)_shouldHideNonEssentialUI;
- (NPKRemotePassActionCompanionItemSelectionViewController)initWithRequest:(id)a3 contact:(id)a4 delegate:(id)a5;
- (NPKRemotePassActionCompanionItemSelectionViewControllerDelegate)delegate;
- (id)_action;
- (id)_contactImageForContact:(id)a3;
- (void)_cancelButtonTapped:(id)a3;
- (void)_confirmButtonTapped:(id)a3;
- (void)_fetchRemoteContentIfNeeded;
- (void)_reloadSelectItemView;
- (void)_setUpAppearance;
- (void)_setUpNavigationItem;
- (void)_setUpPassView;
- (void)_setUpSelectItemViewForCommutePlanField:(id)a3;
- (void)_setUpTitleLabel;
- (void)_showGenericErrorAlert:(id)a3;
- (void)_showLoadingView:(BOOL)a3;
- (void)_updateViewVisibility;
- (void)setContact:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKRemotePassActionCompanionItemSelectionViewController

- (NPKRemotePassActionCompanionItemSelectionViewController)initWithRequest:(id)a3 contact:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = NPKRemotePassActionCompanionItemSelectionViewController;
  v12 = [(NPKRemotePassActionCompanionItemSelectionViewController *)&v34 initWithNibName:0 bundle:0];
  if (!v12)
  {
LABEL_12:
    v22 = v12;
    goto LABEL_13;
  }

  v13 = [v9 action];
  if ([v13 type] == 2)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeWeak(&v12->_delegate, v11);
    v14 = [v9 image];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [objc_opt_class() _fallbackHeaderImageForMessage:v9];
    }

    v23 = v16;

    v24 = [NPKRemotePassActionPassView alloc];
    v25 = [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 view];
    [v25 bounds];
    v26 = [(NPKRemotePassActionPassView *)v24 initWithPassImage:v23 frame:?];
    passView = v12->_passView;
    v12->_passView = v26;

    v28 = objc_alloc_init(UILabel);
    titleLabel = v12->_titleLabel;
    v12->_titleLabel = v28;

    v30 = [objc_opt_class() _makeSelectItemViewForAction:v13];
    selectItemView = v12->_selectItemView;
    v12->_selectItemView = v30;

    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpAppearance];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpPassView];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 setContact:v10];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpTitleLabel];
    v32 = [v9 commutePlanField];
    [(NPKRemotePassActionCompanionItemSelectionViewController *)v12 _setUpSelectItemViewForCommutePlanField:v32];

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
      v21 = [v13 type];
      *buf = 138412802;
      v36 = v20;
      v37 = 2112;
      v38 = v13;
      v39 = 2048;
      v40 = v21;
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
  v3 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NPKRemotePassActionCompanionItemSelectionViewController;
  [(NPKRemotePassActionCompanionItemSelectionViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self traitCollection];
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

  [(NPKRemotePassActionCompanionItemSelectionViewController *)self _updateViewVisibility];
LABEL_6:
}

- (void)setContact:(id)a3
{
  objc_storeStrong(&self->_contact, a3);
  v5 = a3;
  v6 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self _contactImageForContact:v5];
  [(NPKRemotePassActionPassView *)self->_passView setContactImage:v6];
}

- (void)_setUpAppearance
{
  v4 = +[UIColor systemBackgroundColor];
  v3 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
  [v3 setBackgroundColor:v4];
}

- (void)_setUpNavigationItem
{
  v13 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self navigationItem];
  v3 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  v4 = [v3 title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"RENEW_REQUEST_TITLE" value:&stru_100010628 table:@"RemotePaymentPassActionsService"];
  }

  [v13 setTitle:v6];
  v8 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  v9 = [v8 confirmationTitle];

  v10 = [[UIBarButtonItem alloc] initWithTitle:v9 style:0 target:self action:"_confirmButtonTapped:"];
  confirmBarButtonItem = self->_confirmBarButtonItem;
  self->_confirmBarButtonItem = v10;

  [v13 setRightBarButtonItem:self->_confirmBarButtonItem];
  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped:"];
  [v13 setLeftBarButtonItem:v12];
}

- (void)_setUpPassView
{
  if (self->_passView)
  {
    [(NPKRemotePassActionPassView *)self->_passView setHidden:[(NPKRemotePassActionCompanionItemSelectionViewController *)self _shouldHideNonEssentialUI]];
    v3 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
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
    v5 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
    v6 = [v5 title];
    [(UILabel *)self->_titleLabel setText:v6];

    [(UILabel *)self->_titleLabel setHidden:[(NPKRemotePassActionCompanionItemSelectionViewController *)self _shouldHideNonEssentialUI]];
    v7 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
    [v7 addSubview:self->_titleLabel];
  }
}

- (void)_setUpSelectItemViewForCommutePlanField:(id)a3
{
  selectItemView = self->_selectItemView;
  if (selectItemView)
  {
    [(PKPerformActionSelectItemView *)selectItemView setDelegate:self];
    v5 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
    [v5 addSubview:self->_selectItemView];
  }
}

+ (id)_makeSelectItemViewForAction:(id)a3
{
  v3 = a3;
  v4 = [[PKPerformActionSelectItemView alloc] initWithPass:0 action:v3 paymentDataProvider:0];

  return v4;
}

- (void)_confirmButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(PKPerformActionSelectItemView *)self->_selectItemView transactionAmount];
  v6 = [(PKPerformActionSelectItemView *)self->_selectItemView transactionCurrency];
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

- (void)_cancelButtonTapped:(id)a3
{
  v5 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self delegate];
  v4 = [(NPKRemotePassActionSelectItemRequest *)self->_request identifier];
  [v5 selectItemViewController:self didCancelForRequestIdentifier:v4];
}

- (id)_action
{
  v3 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  v4 = [v3 remoteContentConfiguration];

  if (v4 && (remoteAction = self->_remoteAction) != 0)
  {
    v6 = remoteAction;
  }

  else
  {
    v6 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  }

  return v6;
}

+ (id)_fallbackHeaderImageForMessage:(id)a3
{
  v3 = [a3 cardType];
  if (v3 <= 2)
  {
    v4 = [UIImage imageNamed:*(&off_100010510 + v3)];
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

    v17 = qword_100016DC0;
    if (!qword_100016DC0)
    {
      v18 = [[CNMonogrammer alloc] initWithStyle:0 diameter:v7];
      v19 = qword_100016DC0;
      qword_100016DC0 = v18;

      v17 = qword_100016DC0;
    }

    v20 = [v17 monogramForContact:v4];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [qword_100016DC0 silhouetteMonogram];
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

  v3 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self traitCollection];
  v4 = [v3 verticalSizeClass] == 1;

  return v4;
}

- (void)_updateViewVisibility
{
  v3 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self _shouldHideNonEssentialUI];
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

  v5 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (void)_fetchRemoteContentIfNeeded
{
  v25 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  v3 = [v25 remoteContentConfiguration];
  if (v3)
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
        v8 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
        *buf = 138412290;
        v28 = v8;
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

    v13 = [(NPKRemotePassActionSelectItemRequest *)self->_request deviceIdentifier];
    v14 = [(NPKRemotePassActionSelectItemRequest *)self->_request passTypeIdentifier];
    v15 = [(NPKRemotePassActionSelectItemRequest *)self->_request passSerialNumber];
    v16 = v15;
    if (v13 && v14 && v15)
    {
      [(NPKRemotePassActionCompanionItemSelectionViewController *)self _showLoadingView:1];
      v17 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000470C;
      v26[3] = &unk_1000104B0;
      v26[4] = self;
      [v9 passActionWithRemoteContentPassAction:v17 forDeviceIdentifier:v13 passTypeIdentifier:v14 passSerialNumber:v16 completion:v26];
    }

    else
    {
      v18 = pk_RemotePassAction_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
        goto LABEL_31;
      }

      v17 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
        v21 = v20;
        v22 = @"NO";
        if (v13)
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        *buf = 138413058;
        v28 = v20;
        if (v14)
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
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error: Unable to load remote content for action %@! Remote content needed, but insufficient information exists to obtain it.\nHas deviceID? %@.\nHas passTypeIdentifier? %@.\nHas passSerialNumber? %@", buf, 0x2Au);
      }
    }

LABEL_31:
    return;
  }
}

- (void)_showLoadingView:(BOOL)a3
{
  loadingView = self->_loadingView;
  if (a3)
  {
    if (!loadingView)
    {
      v5 = [PKPerformActionLoadingView alloc];
      [(PKPerformActionSelectItemView *)self->_selectItemView frame];
      v6 = [v5 initWithFrame:?];
      v7 = self->_loadingView;
      self->_loadingView = v6;
    }

    v8 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
    [v8 addSubview:self->_loadingView];

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
  v4 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self _action];
  v5 = [v3 _makeSelectItemViewForAction:v4];
  selectItemView = self->_selectItemView;
  self->_selectItemView = v5;

  [(PKPerformActionSelectItemView *)self->_selectItemView setDelegate:self];
  v7 = [(NPKRemotePassActionCompanionItemSelectionViewController *)self view];
  [v7 insertSubview:self->_selectItemView belowSubview:self->_passView];
}

- (void)_showGenericErrorAlert:(id)a3
{
  v4 = a3;
  v5 = [(NPKRemotePassActionSelectItemRequest *)self->_request action];
  v6 = [PKPaymentPass displayableErrorForAction:v5 andReason:1];

  v7 = [v6 localizedDescription];
  v8 = [v6 localizedRecoverySuggestion];
  v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = PKLocalizedPaymentString(@"PASS_ACTION_UNAVAILABLE_OK_BUTTON_TITLE");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004C80;
  v13[3] = &unk_1000104D8;
  v14 = v4;
  v11 = v4;
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