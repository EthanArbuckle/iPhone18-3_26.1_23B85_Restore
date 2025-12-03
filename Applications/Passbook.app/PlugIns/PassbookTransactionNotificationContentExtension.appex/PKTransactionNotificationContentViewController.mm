@interface PKTransactionNotificationContentViewController
- (BOOL)_shouldShowAwardsForTransaction:(id)transaction;
- (BOOL)_shouldShowViewInThirdPartyAppAction;
- (BOOL)_transactionHasLocation:(id)location;
- (PKTransactionNotificationContentViewController)init;
- (id)_descriptionForTransaction:(id)transaction pass:(id)pass;
- (id)_paymentRewardsRedemptionBadge;
- (id)_personContact;
- (id)_subtitleForTransaction:(id)transaction pass:(id)pass;
- (id)_transactionURLForIssuerApp;
- (void)_handlePeerPaymentAccountChanged:(id)changed;
- (void)_setupWithTransaction:(id)transaction monthlySummary:(id)summary;
- (void)accountChanged:(id)changed;
- (void)dealloc;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKTransactionNotificationContentViewController

- (PKTransactionNotificationContentViewController)init
{
  v15.receiver = self;
  v15.super_class = PKTransactionNotificationContentViewController;
  v2 = [(PKTransactionNotificationContentViewController *)&v15 init];
  if (v2)
  {
    v3 = +[PKPaymentService paymentService];
    paymentService = v2->_paymentService;
    v2->_paymentService = v3;

    v5 = +[PKPeerPaymentService sharedInstance];
    peerPaymentService = v2->_peerPaymentService;
    v2->_peerPaymentService = v5;

    v7 = +[PKPassLibrary sharedInstance];
    passLibrary = v2->_passLibrary;
    v2->_passLibrary = v7;

    v9 = +[PKAccountService sharedInstance];
    accountService = v2->_accountService;
    v2->_accountService = v9;

    [(PKAccountService *)v2->_accountService registerObserver:v2];
    v11 = objc_alloc_init(NSDateFormatter);
    transactionDateFormatter = v2->_transactionDateFormatter;
    v2->_transactionDateFormatter = v11;

    [(NSDateFormatter *)v2->_transactionDateFormatter setDateStyle:3];
    [(NSDateFormatter *)v2->_transactionDateFormatter setTimeStyle:1];
    v13 = PKCurrentRegion();
    v2->_isChinaRegion = [v13 caseInsensitiveCompare:@"CN"] == 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v4.receiver = self;
  v4.super_class = PKTransactionNotificationContentViewController;
  [(PKTransactionNotificationContentViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v50.receiver = self;
  v50.super_class = PKTransactionNotificationContentViewController;
  [(PKTransactionNotificationContentViewController *)&v50 viewDidLoad];
  v3 = objc_alloc_init(UIView);
  containerView = self->_containerView;
  self->_containerView = v3;

  view = [(PKTransactionNotificationContentViewController *)self view];
  [view addSubview:self->_containerView];

  v6 = objc_alloc_init(PKTransactionMapView);
  mapView = self->_mapView;
  self->_mapView = v6;

  v8 = objc_alloc_init(UIView);
  mapHairline = self->_mapHairline;
  self->_mapHairline = v8;

  v10 = self->_mapHairline;
  v11 = +[UIColor separatorColor];
  [(UIView *)v10 setBackgroundColor:v11];

  v12 = objc_alloc_init(UILabel);
  amountLabel = self->_amountLabel;
  self->_amountLabel = v12;

  v14 = self->_amountLabel;
  v15 = PKRoundedSystemFontOfSizeAndWeight();
  [(UILabel *)v14 setFont:v15];

  [(UILabel *)self->_amountLabel setTextAlignment:1];
  [(UILabel *)self->_amountLabel setNumberOfLines:1];
  [(UILabel *)self->_amountLabel setAdjustsFontSizeToFitWidth:1];
  v16 = objc_alloc_init(UILabel);
  cardNameLabel = self->_cardNameLabel;
  self->_cardNameLabel = v16;

  v18 = self->_cardNameLabel;
  v19 = PKFontForDefaultDesign();
  [(UILabel *)v18 setFont:v19];

  [(UILabel *)self->_cardNameLabel setTextAlignment:1];
  v20 = objc_alloc_init(UILabel);
  awardsLabel = self->_awardsLabel;
  self->_awardsLabel = v20;

  v22 = self->_awardsLabel;
  v23 = PKFontForDefaultDesign(UIFontTextStyleSubheadline, 0);
  [(UILabel *)v22 setFont:v23];

  [(UILabel *)self->_awardsLabel setTextAlignment:1];
  [(UILabel *)self->_awardsLabel setNumberOfLines:2];
  v24 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v24;

  v26 = self->_subtitleLabel;
  v27 = PKFontForDefaultDesign();
  [(UILabel *)v26 setFont:v27];

  [(UILabel *)self->_subtitleLabel setTextAlignment:1];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:2];
  v28 = objc_alloc_init(UILabel);
  personLabel = self->_personLabel;
  self->_personLabel = v28;

  v30 = self->_personLabel;
  v31 = PKFontForDefaultDesign(UIFontTextStyleSubheadline, 0);
  [(UILabel *)v30 setFont:v31];

  [(UILabel *)self->_personLabel setTextAlignment:1];
  [(UILabel *)self->_personLabel setNumberOfLines:2];
  v32 = objc_alloc_init(UILabel);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v32;

  v34 = self->_descriptionLabel;
  v35 = PKFontForDefaultDesign();
  [(UILabel *)v34 setFont:v35];

  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:2];
  v36 = objc_alloc_init(UILabel);
  dateLabel = self->_dateLabel;
  self->_dateLabel = v36;

  v38 = self->_dateLabel;
  v39 = PKFontForDefaultDesign(UIFontTextStyleSubheadline, 0);
  [(UILabel *)v38 setFont:v39];

  [(UILabel *)self->_dateLabel setTextAlignment:1];
  v40 = objc_alloc_init(UIView);
  bottomRule = self->_bottomRule;
  self->_bottomRule = v40;

  v42 = self->_bottomRule;
  v43 = +[UIColor separatorColor];
  [(UIView *)v42 setBackgroundColor:v43];

  v44 = objc_alloc_init(UILabel);
  balanceLabel = self->_balanceLabel;
  self->_balanceLabel = v44;

  [(UILabel *)self->_balanceLabel setNumberOfLines:2];
  v46 = self->_balanceLabel;
  v47 = PKFontForDefaultDesign(UIFontTextStyleSubheadline, 0);
  [(UILabel *)v46 setFont:v47];

  [(UILabel *)self->_balanceLabel setTextAlignment:1];
  v48 = self->_balanceLabel;
  v49 = +[UIColor secondaryLabelColor];
  [(UILabel *)v48 setTextColor:v49];
}

- (void)viewDidLayoutSubviews
{
  v46.receiver = self;
  v46.super_class = PKTransactionNotificationContentViewController;
  [(PKTransactionNotificationContentViewController *)&v46 viewDidLayoutSubviews];
  view = [(PKTransactionNotificationContentViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v47.origin.x = v5;
  v47.origin.y = v7;
  v47.size.width = v9;
  v47.size.height = v11;
  Width = CGRectGetWidth(v47);
  superview = [(PKTransactionMapView *)self->_mapView superview];

  if (superview)
  {
    v48.origin.x = v5;
    v48.origin.y = v7;
    v48.size.width = v9;
    v48.size.height = v11;
    v14 = CGRectGetWidth(v48);
    [(PKTransactionMapView *)self->_mapView setFrame:0.0, 0.0, v14, 120.0];
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v49.size.width = v14;
    v49.size.height = 120.0;
    MaxY = CGRectGetMaxY(v49);
    v50.origin.x = v5;
    v50.origin.y = v7;
    v50.size.width = v9;
    v50.size.height = v11;
    [(UIView *)self->_mapHairline setFrame:0.0, MaxY, CGRectGetWidth(v50), 1.0];
    [(UIView *)self->_mapHairline frame];
    v16 = CGRectGetMaxY(v51);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = Width + -32.0;
  superview2 = [(UILabel *)self->_amountLabel superview];

  if (superview2)
  {
    [(UILabel *)self->_amountLabel sizeToFit];
    v19 = v16 + 10.0;
    [(UILabel *)self->_amountLabel frame];
    Height = CGRectGetHeight(v52);
    [(UILabel *)self->_amountLabel setFrame:16.0, v19, v17, Height];
    v53.origin.x = 16.0;
    v53.origin.y = v19;
    v53.size.width = v17;
    v53.size.height = Height;
    v16 = CGRectGetMaxY(v53);
    v21 = 3.0;
  }

  else
  {
    v21 = 10.0;
  }

  superview3 = [(UILabel *)self->_cardNameLabel superview];

  if (superview3)
  {
    [(UILabel *)self->_cardNameLabel sizeToFit];
    v23 = v21 + v16;
    [(UILabel *)self->_cardNameLabel frame];
    v24 = CGRectGetHeight(v54);
    [(UILabel *)self->_cardNameLabel setFrame:16.0, v23, v17, v24];
    v55.origin.x = 16.0;
    v55.origin.y = v23;
    v55.size.width = v17;
    v55.size.height = v24;
    v16 = CGRectGetMaxY(v55);
    v21 = 3.0;
  }

  superview4 = [(UILabel *)self->_subtitleLabel superview];

  if (superview4)
  {
    [(UILabel *)self->_subtitleLabel sizeToFit];
    v26 = v21 + v16;
    [(UILabel *)self->_subtitleLabel frame];
    v27 = CGRectGetHeight(v56);
    [(UILabel *)self->_subtitleLabel setFrame:16.0, v26, v17, v27];
    v57.origin.x = 16.0;
    v57.origin.y = v26;
    v57.size.width = v17;
    v57.size.height = v27;
    v16 = CGRectGetMaxY(v57);
    v21 = 3.0;
  }

  superview5 = [(UILabel *)self->_personLabel superview];

  if (superview5)
  {
    [(UILabel *)self->_personLabel sizeToFit];
    v29 = v21 + v16;
    [(UILabel *)self->_personLabel frame];
    v30 = CGRectGetHeight(v58);
    [(UILabel *)self->_personLabel setFrame:16.0, v29, v17, v30];
    v59.origin.x = 16.0;
    v59.origin.y = v29;
    v59.size.width = v17;
    v59.size.height = v30;
    v16 = CGRectGetMaxY(v59);
    v21 = 3.0;
  }

  superview6 = [(UILabel *)self->_awardsLabel superview];

  if (superview6)
  {
    [(UILabel *)self->_awardsLabel sizeToFit];
    v32 = v21 + v16;
    [(UILabel *)self->_awardsLabel frame];
    v33 = CGRectGetHeight(v60);
    [(UILabel *)self->_awardsLabel setFrame:16.0, v32, v17, v33];
    v61.origin.x = 16.0;
    v61.origin.y = v32;
    v61.size.width = v17;
    v61.size.height = v33;
    v16 = CGRectGetMaxY(v61);
    v21 = 3.0;
  }

  superview7 = [(UILabel *)self->_descriptionLabel superview];

  if (superview7)
  {
    [(UILabel *)self->_descriptionLabel sizeToFit];
    v35 = v21 + v16;
    [(UILabel *)self->_descriptionLabel frame];
    v36 = CGRectGetHeight(v62);
    [(UILabel *)self->_descriptionLabel setFrame:16.0, v35, v17, v36];
    v63.origin.x = 16.0;
    v63.origin.y = v35;
    v63.size.width = v17;
    v63.size.height = v36;
    v16 = CGRectGetMaxY(v63);
    v21 = 3.0;
  }

  superview8 = [(UILabel *)self->_dateLabel superview];

  if (superview8)
  {
    [(UILabel *)self->_dateLabel sizeToFit];
    v38 = v21 + v16;
    [(UILabel *)self->_dateLabel frame];
    v39 = CGRectGetHeight(v64);
    [(UILabel *)self->_dateLabel setFrame:16.0, v38, v17, v39];
    v65.origin.x = 16.0;
    v65.origin.y = v38;
    v65.size.width = v17;
    v65.size.height = v39;
    v16 = CGRectGetMaxY(v65);
  }

  superview9 = [(UILabel *)self->_balanceLabel superview];

  if (superview9)
  {
    v66.origin.x = v5;
    v66.origin.y = v7;
    v66.size.width = v9;
    v66.size.height = v11;
    [(UIView *)self->_bottomRule setFrame:0.0, v16 + 23.0, CGRectGetWidth(v66), 1.0];
    [(UIView *)self->_bottomRule frame];
    v41 = CGRectGetMaxY(v67);
    [(UILabel *)self->_balanceLabel sizeToFit];
    v42 = 16.0;
    v68.origin.x = v5;
    v68.origin.y = v7;
    v68.size.width = v9;
    v68.size.height = v11;
    v43 = CGRectGetWidth(v68);
    [(UILabel *)self->_balanceLabel frame];
    [(UILabel *)self->_balanceLabel setFrame:0.0, v41 + 16.0, v43, CGRectGetHeight(v69)];
    [(UILabel *)self->_balanceLabel frame];
    v16 = CGRectGetMaxY(v70);
  }

  else
  {
    v42 = 23.0;
  }

  v71.origin.x = v5;
  v71.origin.y = v7;
  v71.size.width = v9;
  v71.size.height = v11;
  [(UIView *)self->_containerView setFrame:0.0, 0.0, CGRectGetWidth(v71), v42 + v16];
  if (v16 > 0.0)
  {
    [(UIView *)self->_containerView frame];
    [(PKTransactionNotificationContentViewController *)self setPreferredContentSize:v44, v45];
  }
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  v8 = [userInfo objectForKeyedSubscript:PKUserNotificationTransactionIdentifierContextKey];
  v9 = [userInfo objectForKeyedSubscript:PKUserNotificationPassUniqueIdentifierContextKey];
  v10 = [userInfo objectForKeyedSubscript:PKUserNotificationAltDSIDKey];
  v11 = [userInfo objectForKeyedSubscript:PKUserNotificationAccountIdentifier];
  v12 = [userInfo objectForKeyedSubscript:PKUserNotificationAccountType];
  integerValue = [v12 integerValue];

  if ([v8 length])
  {
    if (integerValue == 3)
    {
      goto LABEL_7;
    }

    if ([v9 length])
    {
      if (!self->_pass)
      {
        v14 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:v9];
        pass = self->_pass;
        self->_pass = v14;
      }

      paymentService = self->_paymentService;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100002250;
      v60[3] = &unk_10000C400;
      v60[4] = self;
      [(PKPaymentService *)paymentService balancesForPaymentPassWithUniqueIdentifier:v9 completion:v60];
LABEL_7:
      v36 = v9;
      if (!self->_transactionIdentifier)
      {
        objc_storeStrong(&self->_transactionIdentifier, v8);
        account = [(PKPeerPaymentService *)self->_peerPaymentService account];
        associatedPassUniqueID = [account associatedPassUniqueID];
        self->_isPeerPaymentPass = [associatedPassUniqueID isEqualToString:v9];

        associatedAccountServiceAccountIdentifier = [(PKPaymentPass *)self->_pass associatedAccountServiceAccountIdentifier];
        v20 = v11;
        v21 = associatedAccountServiceAccountIdentifier;
        v22 = v21;
        if (v20 == v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = 0;
          if (v20 && v21)
          {
            v23 = [v20 isEqualToString:v21];
          }
        }

        if (integerValue == 2)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        self->_isBroadwayPass = v24;

        v9 = v36;
        if (self->_isPeerPaymentPass)
        {
          v25 = +[NSNotificationCenter defaultCenter];
          [v25 addObserver:self selector:"_handlePeerPaymentAccountChanged:" name:PKPeerPaymentServiceAccountChangedNotification object:self->_peerPaymentService];
        }
      }

      v26 = self->_transactionIdentifier;
      v27 = v8;
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        if (!v27 || !v26)
        {

LABEL_28:
          goto LABEL_29;
        }

        v29 = [(NSString *)v26 isEqualToString:v27];

        if (!v29)
        {
          goto LABEL_29;
        }
      }

      if (self->_isPeerPaymentPass)
      {
        account2 = [(PKPeerPaymentService *)self->_peerPaymentService account];
        peerPaymentAccount = self->_peerPaymentAccount;
        self->_peerPaymentAccount = account2;
      }

      v26 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x3032000000;
      v58[3] = sub_1000023B4;
      v58[4] = sub_1000023C4;
      v59 = 0;
      objc_initWeak(&location, self);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000023CC;
      v52[3] = &unk_10000C478;
      objc_copyWeak(&v56, &location);
      v32 = v10;
      v53 = v32;
      v33 = v11;
      v54 = v33;
      selfCopy = self;
      [(NSString *)v26 addOperation:v52];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100002714;
      v48[3] = &unk_10000C4F0;
      objc_copyWeak(&v51, &location);
      v49 = v32;
      selfCopy2 = self;
      [(NSString *)v26 addOperation:v48];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100002B14;
      v44[3] = &unk_10000C4F0;
      objc_copyWeak(&v47, &location);
      v45 = v28;
      selfCopy3 = self;
      [(NSString *)v26 addOperation:v44];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100002D94;
      v42[3] = &unk_10000C5B8;
      objc_copyWeak(&v43, &location);
      v42[4] = self;
      v42[5] = v58;
      [(NSString *)v26 addOperation:v42];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100003240;
      v39[3] = &unk_10000C608;
      objc_copyWeak(&v41, &location);
      v40 = v33;
      [(NSString *)v26 addOperation:v39];
      +[NSNull null];
      v34 = v9 = v36;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100003454;
      v37[3] = &unk_10000C658;
      objc_copyWeak(&v38, &location);
      v37[4] = v58;
      v35 = [(NSString *)v26 evaluateWithInput:v34 completion:v37];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v41);
      objc_destroyWeak(&v43);

      objc_destroyWeak(&v47);
      objc_destroyWeak(&v51);

      objc_destroyWeak(&v56);
      objc_destroyWeak(&location);
      _Block_object_dispose(v58, 8);

      goto LABEL_28;
    }
  }

LABEL_29:
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  actionIdentifier = [response actionIdentifier];
  v7 = actionIdentifier;
  if (actionIdentifier == @"PKTransitTransactionNotificationAddMoney")
  {
    goto LABEL_4;
  }

  if (!actionIdentifier)
  {
    goto LABEL_7;
  }

  v8 = [(__CFString *)actionIdentifier isEqualToString:@"PKTransitTransactionNotificationAddMoney"];

  if (v8)
  {
LABEL_4:
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    addValueURL = [(PKPaymentPass *)self->_pass addValueURL];
    [v9 openSensitiveURL:addValueURL withOptions:0];

    goto LABEL_8;
  }

  v11 = v7;
  if (v11 == @"openTransactionDetails")
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [(__CFString *)v11 isEqualToString:@"openTransactionDetails"];

  if (v13)
  {
    goto LABEL_7;
  }

  v14 = v12;
  if (v14 == @"viewInIssuerApp" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"viewInIssuerApp"], v15, v16))
  {
    _transactionURLForIssuerApp = [(PKTransactionNotificationContentViewController *)self _transactionURLForIssuerApp];
    if (_transactionURLForIssuerApp)
    {
      v18 = +[LSApplicationWorkspace defaultWorkspace];
      [v18 openSensitiveURL:_transactionURLForIssuerApp withOptions:0];
    }

    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v19 = v15;
    if (v19 != @"editAutoReload")
    {
      v20 = v19;
      v21 = [(__CFString *)v19 isEqualToString:@"editAutoReload"];

      if (!v21)
      {
LABEL_7:
        handlerCopy[2](handlerCopy, 2);
        goto LABEL_8;
      }
    }

    _transactionURLForIssuerApp = objc_alloc_init(NSURLComponents);
    if (+[PKWalletVisibility isWalletVisible])
    {
      [_transactionURLForIssuerApp setScheme:PKWalletURLScheme];
      [_transactionURLForIssuerApp setHost:PKURLActionRoutePeerPaymentPass];
      [NSString stringWithFormat:@"/%@", PKURLActionRouteAutoReload, v25];
    }

    else
    {
      [_transactionURLForIssuerApp setScheme:PKSettingsURLScheme];
      [_transactionURLForIssuerApp setHost:PKWalletSettingsHostName];
      [NSString stringWithFormat:@"/%@/%@", PKURLActionRoutePeerPaymentPass, PKURLActionRouteAutoReload];
    }
    v22 = ;
    [_transactionURLForIssuerApp setPath:v22];

    v23 = [_transactionURLForIssuerApp URL];
    if (v23)
    {
      v24 = +[LSApplicationWorkspace defaultWorkspace];
      [v24 openSensitiveURL:v23 withOptions:0];
    }

    handlerCopy[2](handlerCopy, 1);
  }

LABEL_8:
}

- (void)_setupWithTransaction:(id)transaction monthlySummary:(id)summary
{
  transactionCopy = transaction;
  summaryCopy = summary;
  transactionType = [transactionCopy transactionType];
  v9 = [(PKTransactionNotificationContentViewController *)self _transactionHasLocation:transactionCopy];
  mapView = self->_mapView;
  if (v9)
  {
    superview = [(PKTransactionMapView *)mapView superview];

    if (!superview)
    {
      [(UIView *)self->_containerView addSubview:self->_mapView];
    }

    superview2 = [(UIView *)self->_mapHairline superview];

    if (!superview2)
    {
      [(UIView *)self->_containerView addSubview:self->_mapHairline];
    }

    [(PKTransactionMapView *)self->_mapView setTransaction:transactionCopy];
  }

  else
  {
    [(PKTransactionMapView *)mapView removeFromSuperview];
    [(UIView *)self->_mapHairline removeFromSuperview];
  }

  amount = [transactionCopy amount];
  isZeroTransaction = [transactionCopy isZeroTransaction];
  v184 = transactionCopy;
  v179 = amount;
  if (isZeroTransaction)
  {
    if ([transactionCopy transitType] != 517 || (-[PKPaymentPass shouldSuppressNoChargeAmount](self->_pass, "shouldSuppressNoChargeAmount") & 1) != 0)
    {
      formattedBalanceAdjustmentAmount = 0;
      goto LABEL_20;
    }

    v17 = PKLocalizedPaymentString(@"TRANSIT_TRANSACTION_FARE_FREE");
    goto LABEL_17;
  }

  if (!amount)
  {
    v17 = [transactionCopy formattedStringForMultipleAmountsForPass:self->_pass];
LABEL_17:
    formattedBalanceAdjustmentAmount = v17;
    goto LABEL_20;
  }

  formattedBalanceAdjustmentSubtotalAmount = [transactionCopy formattedBalanceAdjustmentSubtotalAmount];
  v16 = formattedBalanceAdjustmentSubtotalAmount;
  if (formattedBalanceAdjustmentSubtotalAmount)
  {
    formattedBalanceAdjustmentAmount = formattedBalanceAdjustmentSubtotalAmount;
  }

  else
  {
    formattedBalanceAdjustmentAmount = [transactionCopy formattedBalanceAdjustmentAmount];
  }

LABEL_20:
  v178 = formattedBalanceAdjustmentAmount;
  [(UILabel *)self->_amountLabel setText:formattedBalanceAdjustmentAmount];
  localizedDescription = [(PKPaymentPass *)self->_pass localizedDescription];
  if (!localizedDescription)
  {
LABEL_24:
    [(UILabel *)self->_cardNameLabel removeFromSuperview];
    goto LABEL_25;
  }

  notificationCenterTitle = [(PKPaymentPass *)self->_pass notificationCenterTitle];
  if ([localizedDescription isEqualToString:notificationCenterTitle])
  {

    goto LABEL_24;
  }

  awards = [transactionCopy awards];
  v21 = [awards count];

  if (v21)
  {
    goto LABEL_24;
  }

  [(UILabel *)self->_cardNameLabel setText:localizedDescription];
  superview3 = [(UILabel *)self->_cardNameLabel superview];

  if (!superview3)
  {
    [(UIView *)self->_containerView addSubview:self->_cardNameLabel];
  }

LABEL_25:
  _personContact = [(PKTransactionNotificationContentViewController *)self _personContact];
  v176 = _personContact;
  v177 = localizedDescription;
  if ((self->_isPeerPaymentPass || self->_isBroadwayPass) && _personContact)
  {
    personLabel = self->_personLabel;
    v24 = [PKPaymentTransaction transactionNotificationStatusStringForTransaction:self->_transaction personContact:_personContact];
    [(UILabel *)personLabel setText:v24];

    superview4 = [(UILabel *)self->_personLabel superview];

    if (!superview4)
    {
      [(UIView *)self->_containerView addSubview:self->_personLabel];
    }
  }

  else
  {
    [(UILabel *)self->_personLabel removeFromSuperview];
  }

  v26 = [(PKTransactionNotificationContentViewController *)self _shouldShowAwardsForTransaction:v184];
  awardsLabel = self->_awardsLabel;
  v181 = summaryCopy;
  if (v26)
  {
    formattedAwards = [v184 formattedAwards];
    [(UILabel *)awardsLabel setText:formattedAwards];

    superview5 = [(UILabel *)self->_awardsLabel superview];

    if (!superview5)
    {
      [(UIView *)self->_containerView addSubview:self->_awardsLabel];
    }
  }

  else
  {
    [(UILabel *)awardsLabel removeFromSuperview];
  }

  transactionStatus = [(PKPaymentTransaction *)self->_transaction transactionStatus];
  subtitleLabel = self->_subtitleLabel;
  v180 = transactionType;
  if (transactionStatus == 2)
  {
    if (self->_isChinaRegion)
    {
      +[UIColor systemGreenColor];
    }

    else
    {
      +[UIColor systemRedColor];
    }
    v32 = ;
  }

  else
  {
    v32 = +[UIColor labelColor];
  }

  [(UILabel *)subtitleLabel setTextColor:v32];

  v183 = [(PKTransactionNotificationContentViewController *)self _subtitleForTransaction:v184 pass:self->_pass];
  [(UILabel *)self->_subtitleLabel setText:?];
  superview6 = [(UILabel *)self->_subtitleLabel superview];

  if (!superview6)
  {
    [(UIView *)self->_containerView addSubview:self->_subtitleLabel];
  }

  v34 = [(PKTransactionNotificationContentViewController *)self _descriptionForTransaction:v184 pass:self->_pass];
  descriptionLabel = self->_descriptionLabel;
  v175 = v34;
  if (v34)
  {
    [(UILabel *)descriptionLabel setText:v34];
    superview7 = [(UILabel *)self->_descriptionLabel superview];

    if (!superview7)
    {
      [(UIView *)self->_containerView addSubview:self->_descriptionLabel];
    }
  }

  else
  {
    [(UILabel *)descriptionLabel removeFromSuperview];
  }

  dateLabel = self->_dateLabel;
  transactionDateFormatter = self->_transactionDateFormatter;
  transactionDate = [v184 transactionDate];
  v40 = [(NSDateFormatter *)transactionDateFormatter stringFromDate:transactionDate];
  [(UILabel *)dateLabel setText:v40];

  superview8 = [(UILabel *)self->_dateLabel superview];

  if (!superview8)
  {
    [(UIView *)self->_containerView addSubview:self->_dateLabel];
  }

  v42 = &CGRectGetHeight_ptr;
  if (transactionType != 2)
  {
    if (self->_isPeerPaymentPass)
    {
      v43 = 0;
LABEL_68:
      familyMember = self->_familyMember;
      peerPaymentAccount = self->_peerPaymentAccount;
      if (familyMember)
      {
        altDSID = [(PKFamilyMember *)familyMember altDSID];
        currentBalance2 = [(PKPeerPaymentAccount *)peerPaymentAccount peerPaymentAccountWithAltDSID:altDSID];

        firstName = [(PKFamilyMember *)self->_familyMember firstName];
        currentBalance = [currentBalance2 currentBalance];
        formattedStringValue = [currentBalance formattedStringValue];
        v71 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_TRANSACTION_NOTIFICATION_FAMILY_TRANSACTION_USER_BALANCE", @"%@%@", firstName, formattedStringValue);

        v42 = &CGRectGetHeight_ptr;
      }

      else
      {
        currentBalance2 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
        firstName = [currentBalance2 formattedStringValue];
        v71 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_IN_APP_BALANCE_FORMAT", @"%@", firstName);
      }

      v61 = 0;
      v63 = v43;
      if (v71)
      {
        goto LABEL_109;
      }

LABEL_115:
      v110 = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption:formattedStringValue2];

      if (v110 && ([(PKTransactionNotificationContentViewController *)self _paymentRewardsRedemptionBadge], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v71 = v111;
        if (!v63)
        {
          goto LABEL_118;
        }

LABEL_110:
        [(UILabel *)self->_amountLabel setText:v61, formattedStringValue2, v164];
        v106 = self->_subtitleLabel;
        v107 = PKLocalizedPaymentString(@"TRANSIT_NOTIFICATION_CURRENT_BALANCE");
        [(UILabel *)v106 setText:v107];

        [(UIView *)self->_bottomRule removeFromSuperview];
        [(UILabel *)self->_balanceLabel removeFromSuperview];
        [(UILabel *)self->_dateLabel removeFromSuperview];
        [(UILabel *)self->_personLabel removeFromSuperview];
      }

      else
      {
        [(UIView *)self->_bottomRule removeFromSuperview];
        [(UILabel *)self->_balanceLabel removeFromSuperview];
        v71 = 0;
        if (isZeroTransaction)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_125;
    }

    if (!self->_isBroadwayPass)
    {
      if ([(PKAccount *)self->_account type]== 4)
      {
        savingsDetails = [(PKAccount *)self->_account savingsDetails];
        accountSummary = [savingsDetails accountSummary];
        currentBalance3 = [accountSummary currentBalance];

        currencyCode = [savingsDetails currencyCode];
        v86 = PKCurrencyAmountMake();

        formattedStringValue2 = [v86 formattedStringValue];
        v71 = PKLocalizedFeatureString();

        v42 = &CGRectGetHeight_ptr;
        v63 = 0;
        v61 = 0;
        if (v71)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v61 = 0;
        v63 = 0;
      }

      goto LABEL_115;
    }

    v72 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v73 = +[NSDate date];
    v74 = [v72 components:8 fromDate:v73];
    month = [v74 month];

    startDate = [summaryCopy startDate];
    v77 = [v72 components:8 fromDate:startDate];
    month2 = [v77 month];

    totalSpending = [summaryCopy totalSpending];
    formattedStringValue3 = [totalSpending formattedStringValue];

    accountUser = self->_accountUser;
    if (month == month2)
    {
      if (!accountUser || ([(PKAccountUser *)accountUser isCurrentUser]& 1) != 0)
      {
        formattedStringValue2 = formattedStringValue3;
        v71 = PKLocalizedFeatureString();
        goto LABEL_114;
      }

      _personContact2 = [(PKTransactionNotificationContentViewController *)self _personContact];
      [_personContact2 givenName];
      v164 = formattedStringValue2 = formattedStringValue3;
      v71 = PKLocalizedFeatureString();
    }

    else
    {
      if (accountUser && ([(PKAccountUser *)accountUser isCurrentUser]& 1) == 0)
      {
        _personContact3 = [(PKTransactionNotificationContentViewController *)self _personContact];
        v109 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        [_personContact3 givenName];
        v164 = formattedStringValue2 = formattedStringValue3;
        v71 = PKLocalizedFeatureString();

LABEL_114:
        v63 = 0;
        v61 = 0;
        v42 = &CGRectGetHeight_ptr;
        if (v71)
        {
          goto LABEL_109;
        }

        goto LABEL_115;
      }

      _personContact2 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
      formattedStringValue2 = formattedStringValue3;
      v71 = PKLocalizedFeatureString();
    }

    goto LABEL_114;
  }

  v43 = [v183 isEqualToString:&stru_10000C7A0] & (isZeroTransaction ^ 1);
  if (self->_isPeerPaymentPass)
  {
    goto LABEL_68;
  }

  v170 = v43;
  transitProperties = [(PKPaymentPass *)self->_pass transitProperties];
  transitBalanceModel = self->_transitBalanceModel;
  if (!transitBalanceModel)
  {
    if (!transitProperties)
    {
      goto LABEL_90;
    }

    balance = [transitProperties balance];
    if (!balance)
    {
      goto LABEL_90;
    }

    v89 = balance;
    balanceAmount = [transitProperties balanceAmount];
    currency = [balanceAmount currency];

    if (currency)
    {
      balance2 = [transitProperties balance];
      balanceAmount2 = [transitProperties balanceAmount];
      currency2 = [balanceAmount2 currency];
      v61 = PKFormattedCurrencyStringFromNumber();

      v71 = PKLocalizedPaymentString(@"NOTIFICATION_BALANCE_FORMAT", @"%@", v61);
    }

    else
    {
LABEL_90:
      v61 = &stru_10000C7A0;
      v71 = &stru_10000C7A0;
    }

    v63 = v170;
    goto LABEL_108;
  }

  v167 = transitProperties;
  displayableBalances = [(PKTransitBalanceModel *)transitBalanceModel displayableBalances];
  v187 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  displayablePointsBalances = [(PKTransitBalanceModel *)self->_transitBalanceModel displayablePointsBalances];
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v47 = displayableBalances;
  v48 = [v47 countByEnumeratingWithState:&v198 objects:v204 count:16];
  if (!v48)
  {
    goto LABEL_64;
  }

  v49 = v48;
  v50 = *v199;
  do
  {
    for (i = 0; i != v49; i = i + 1)
    {
      if (*v199 != v50)
      {
        objc_enumerationMutation(v47);
      }

      v52 = *(*(&v198 + 1) + 8 * i);
      currencyValue = [v52 currencyValue];
      v54 = currencyValue;
      if (currencyValue)
      {
        formattedStringValue4 = [currencyValue formattedStringValue];
      }

      else
      {
        v197[0] = _NSConcreteStackBlock;
        v197[1] = 3221225472;
        v197[2] = sub_100004EDC;
        v197[3] = &unk_10000C680;
        v197[4] = v52;
        if ([displayablePointsBalances pk_containsObjectPassingTest:v197])
        {
          goto LABEL_62;
        }

        formattedStringValue4 = [v52 formattedValue];
      }

      v56 = formattedStringValue4;
      [v187 addObject:formattedStringValue4];

LABEL_62:
    }

    v49 = [v47 countByEnumeratingWithState:&v198 objects:v204 count:16];
  }

  while (v49);
LABEL_64:

  v57 = +[NSLocale currentLocale];
  v58 = [v57 objectForKey:NSLocaleGroupingSeparator];
  v59 = [NSString stringWithFormat:@"%@ ", v58];

  v60 = v187;
  v61 = [v187 componentsJoinedByString:v59];
  v165 = v59;
  v166 = v47;
  if ([v187 count] > 1)
  {
    v62 = @"NOTIFICATION_BALANCES_FORMAT";
    v42 = &CGRectGetHeight_ptr;
    v63 = v170;
    goto LABEL_89;
  }

  v42 = &CGRectGetHeight_ptr;
  v63 = v170;
  if ([v187 count] == 1)
  {
    v62 = @"NOTIFICATION_BALANCE_FORMAT";
LABEL_89:
    v71 = PKLocalizedPaymentString(&v62->isa, @"%@", v61);
  }

  else
  {
    v71 = 0;
  }

  if ([displayablePointsBalances count])
  {
    v168 = v71;
    v171 = v61;
    v96 = objc_alloc_init(NSMutableString);
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    obj = displayablePointsBalances;
    v97 = [obj countByEnumeratingWithState:&v193 objects:v203 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v194;
      do
      {
        for (j = 0; j != v98; j = j + 1)
        {
          if (*v194 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v101 = *(*(&v193 + 1) + 8 * j);
          [v96 appendString:@"\n"];
          localizedTitle = [v101 localizedTitle];
          formattedValue = [v101 formattedValue];
          v104 = PKLocalizedPaymentString(@"NOTIFICATION_LABELLED_BALANCE_FORMAT", @"%@%@", localizedTitle, formattedValue, v165, v166);
          [v96 appendString:v104];
        }

        v98 = [obj countByEnumeratingWithState:&v193 objects:v203 count:16];
      }

      while (v98);
    }

    v105 = [(__CFString *)v168 stringByAppendingString:v96];

    v71 = v105;
    v61 = v171;
    self = selfCopy;
    v42 = &CGRectGetHeight_ptr;
    transitProperties = v167;
    v63 = v170;
    v60 = v187;
  }

  else
  {
    transitProperties = v167;
  }

LABEL_108:
  if (!v71)
  {
    goto LABEL_115;
  }

LABEL_109:
  if (v63)
  {
    goto LABEL_110;
  }

LABEL_118:
  [(UILabel *)self->_balanceLabel setText:v71, formattedStringValue2];
  superview9 = [(UIView *)self->_bottomRule superview];

  if (!superview9)
  {
    [(UIView *)self->_containerView addSubview:self->_bottomRule];
  }

  superview10 = [(UILabel *)self->_balanceLabel superview];

  if (!superview10)
  {
    [(UIView *)self->_containerView addSubview:self->_balanceLabel];
  }

  if (isZeroTransaction)
  {
LABEL_123:
    [(UILabel *)self->_amountLabel removeFromSuperview];
    goto LABEL_127;
  }

LABEL_125:
  superview11 = [(UILabel *)self->_amountLabel superview];

  if (!superview11)
  {
    [(UIView *)self->_containerView addSubview:self->_amountLabel];
  }

LABEL_127:
  v115 = objc_alloc_init(v42[120]);
  plans = [v184 plans];
  v117 = [plans count];

  if (!v117)
  {
    v172 = v61;
    selfCopy2 = self;
    currencyAmount = [v184 currencyAmount];
    currency3 = [currencyAmount currency];
    v120 = PKNoCurrencyCode;
    amounts = currency3;
    v122 = v120;
    v123 = v122;
    if (amounts == v122)
    {

      self = selfCopy2;
      goto LABEL_155;
    }

    if (amounts && v122)
    {
      v124 = [amounts isEqualToString:v122];

      if (v124)
      {
        self = selfCopy2;
        goto LABEL_156;
      }
    }

    else
    {
    }

    v188 = currencyAmount;
    v169 = v71;
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    amounts = [v184 amounts];
    v125 = [amounts countByEnumeratingWithState:&v189 objects:v202 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v190;
      while (2)
      {
        for (k = 0; k != v126; k = k + 1)
        {
          if (*v190 != v127)
          {
            objc_enumerationMutation(amounts);
          }

          amount2 = [*(*(&v189 + 1) + 8 * k) amount];
          currency4 = [amount2 currency];
          v131 = v123;
          v132 = v131;
          if (currency4 == v131)
          {

LABEL_154:
            self = selfCopy2;
            v71 = v169;
            currencyAmount = v188;
            goto LABEL_155;
          }

          if (v123 && currency4)
          {
            v133 = [currency4 isEqualToString:v131];

            if (v133)
            {
              goto LABEL_154;
            }
          }

          else
          {
          }
        }

        v126 = [amounts countByEnumeratingWithState:&v189 objects:v202 count:16];
        if (v126)
        {
          continue;
        }

        break;
      }
    }

    v61 = v172;
    self = selfCopy2;
    v71 = v169;
    if (v180 == 2)
    {
      if (!-[PKPaymentPass isAutoTopEnabled](selfCopy2->_pass, "isAutoTopEnabled") || (-[PKPaymentPass devicePrimaryPaymentApplication](selfCopy2->_pass, "devicePrimaryPaymentApplication"), v134 = objc_claimAutoreleasedReturnValue(), v135 = [v134 paymentNetworkIdentifier], v134, v135 != 136))
      {
        devicePrimaryPaymentApplication = [(PKPaymentPass *)selfCopy2->_pass devicePrimaryPaymentApplication];
        if ([devicePrimaryPaymentApplication supportsTransitHistory])
        {

          goto LABEL_166;
        }

        devicePrimaryPaymentApplication2 = [(PKPaymentPass *)selfCopy2->_pass devicePrimaryPaymentApplication];
        appletDataFormat = [devicePrimaryPaymentApplication2 appletDataFormat];
        v155 = PKEqualObjects();

        if (v155)
        {
LABEL_166:
          currencyCode2 = [v184 currencyCode];
          if ([currencyCode2 isEqualToString:@"JPY"])
          {

            goto LABEL_169;
          }

          currencyCode3 = [v184 currencyCode];
          v158 = [currencyCode3 isEqualToString:@"CNY"];

          if (v158)
          {
LABEL_169:
            v159 = @"yensign.circle";
          }

          else
          {
            currencyCode4 = [v184 currencyCode];
            v162 = [currencyCode4 isEqualToString:@"KRW"];

            if (v162)
            {
              v159 = @"wonsign.circle";
            }

            else
            {
              v159 = @"dollarsign.circle";
            }
          }

          currencyAmount = [UNNotificationActionIcon iconWithSystemImageName:v159];
          v160 = PKLocalizedPaymentString(@"NOTIFICATION_ACTION_ADD_MONEY_TO_CARD");
          amounts = [UNNotificationAction actionWithIdentifier:@"PKTransitTransactionNotificationAddMoney" title:v160 options:1 icon:currencyAmount];

          [v115 addObject:amounts];
LABEL_155:

LABEL_156:
          v61 = v172;
        }
      }
    }
  }

  if ([(PKTransactionNotificationContentViewController *)self _shouldShowViewInThirdPartyAppAction])
  {
    v137 = v71;
    v138 = v61;
    v139 = [UNNotificationActionIcon iconWithSystemImageName:@"questionmark.square"];
    v140 = PKLocalizedAquamanString(@"TRANSACTION_NOTIFICATION_ACTION_TITLE_OPEN_TRANSACTION_DETAILS");
    v141 = [UNNotificationAction actionWithIdentifier:@"openTransactionDetails" title:v140 options:1 icon:v139];

    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v143 = PKLocalizedPeerPaymentString(@"TRANSACTION_DETAIL_ACTION_VIEW_IN_ISSUER_APP_FORMAT", @"%@", organizationName);

    v144 = [UNNotificationActionIcon iconWithSystemImageName:@"arrow.up.right.square"];
    v145 = [UNNotificationAction actionWithIdentifier:@"viewInIssuerApp" title:v143 options:1 icon:v144];
    [v115 addObject:v141];
    [v115 addObject:v145];

    v61 = v138;
    v71 = v137;
  }

  if ([v184 accountType] == 1)
  {
    recurringPeerPayment = [v184 recurringPeerPayment];
    type = [recurringPeerPayment type];

    if (type == 3)
    {
      v148 = PKLocalizedPeerPaymentRecurringString(@"TRANSACTION_DETAIL_ACTION_VIEW_AUTO_RELOAD");
      v149 = [UNNotificationAction actionWithIdentifier:@"editAutoReload" title:v148 options:0 icon:0];
      [v115 addObject:v149];
    }
  }

  if ([v115 count])
  {
    extensionContext = [(PKTransactionNotificationContentViewController *)self extensionContext];
    v151 = [v115 copy];
    [extensionContext setNotificationActions:v151];
  }

  view = [(PKTransactionNotificationContentViewController *)self view];
  [view setNeedsLayout];
}

- (BOOL)_shouldShowAwardsForTransaction:(id)transaction
{
  barcodeIdentifier = [(PKPaymentTransaction *)self->_transaction barcodeIdentifier];
  if (barcodeIdentifier)
  {
    awards = [(PKPaymentTransaction *)self->_transaction awards];
    v6 = [awards count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldShowViewInThirdPartyAppAction
{
  barcodeIdentifier = [(PKPaymentTransaction *)self->_transaction barcodeIdentifier];
  if (barcodeIdentifier)
  {
    _transactionURLForIssuerApp = [(PKTransactionNotificationContentViewController *)self _transactionURLForIssuerApp];
    if (_transactionURLForIssuerApp)
    {
      v5 = [(PKPaymentPass *)self->_pass isIdentityPass]^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_transactionURLForIssuerApp
{
  paymentService = self->_paymentService;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v5 = [(PKPaymentService *)paymentService transactionsAppLaunchTokenForPassWithUniqueIdentifier:uniqueID];

  v6 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:self->_transaction pass:self->_pass appLaunchToken:v5];

  return v6;
}

- (id)_subtitleForTransaction:(id)transaction pass:(id)pass
{
  transactionCopy = transaction;
  passCopy = pass;
  transactionType = [transactionCopy transactionType];
  if (transactionType > 5)
  {
    switch(transactionType)
    {
      case 11:
        if ([transactionCopy featureIdentifier] != 5)
        {
          goto LABEL_13;
        }

        break;
      case 7:
        if ([transactionCopy featureIdentifier] != 5)
        {
          v8 = @"TRANSACTION_TYPE_ADJUSTMENT";
          goto LABEL_20;
        }

        break;
      case 6:
        v8 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_20:
        v12 = PKLocalizedPaymentString(&v8->isa);
        goto LABEL_21;
      default:
LABEL_13:
        merchant = [transactionCopy merchant];
        displayName = [merchant displayName];

        goto LABEL_22;
    }

    v12 = PKLocalizedFeatureString();
LABEL_21:
    displayName = v12;
    goto LABEL_22;
  }

  if (transactionType == 2)
  {
    v12 = [transactionCopy formattedTransitTransactionMessageForPass:passCopy suppressNoChargeAmount:{objc_msgSend(passCopy, "shouldSuppressNoChargeAmount")}];
    goto LABEL_21;
  }

  if (transactionType != 5)
  {
    goto LABEL_13;
  }

  secondaryFundingSourceType = [transactionCopy secondaryFundingSourceType];
  if (!secondaryFundingSourceType)
  {
    v8 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
    goto LABEL_20;
  }

  if (secondaryFundingSourceType == 2)
  {
    v8 = @"TRANSACTION_TYPE_WITHDRAWAL_DEBIT";
    goto LABEL_20;
  }

  if (secondaryFundingSourceType == 1)
  {
    v8 = @"TRANSACTION_TYPE_WITHDRAWAL_BANK_ACCOUNT";
    goto LABEL_20;
  }

  displayName = 0;
LABEL_22:
  transactionStatus = [transactionCopy transactionStatus];
  if (transactionStatus == 2)
  {
    v14 = @"TRANSACTION_DETAIL_DECLINED";
  }

  else
  {
    if (transactionStatus != 3)
    {
      v16 = 0;
      goto LABEL_31;
    }

    v14 = @"TRANSACTION_DETAIL_REFUNDED";
  }

  v15 = PKLocalizedPeerPaymentString(&v14->isa);
  v16 = v15;
  if (v15)
  {
    if (displayName)
    {
      v17 = PKLocalizedPaymentString(@"PAYMENT_PASS_DETAILS_TRANSACTION_CELL_TIME_AND_STATUS_FORMAT", @"%@%@", v15, displayName);

      displayName = v17;
    }

    else
    {
      v16 = v15;
      displayName = v16;
    }
  }

LABEL_31:

  return displayName;
}

- (id)_descriptionForTransaction:(id)transaction pass:(id)pass
{
  transactionCopy = transaction;
  if ([transactionCopy transactionStatus] == 2)
  {
    [transactionCopy transactionDeclinedReason];
    v5 = PKPaymentTransactionDeclinedReasonLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  merchantProvidedDescription = [transactionCopy merchantProvidedDescription];
  v7 = merchantProvidedDescription;
  if (!v5 && merchantProvidedDescription)
  {
    if ([merchantProvidedDescription length])
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_handlePeerPaymentAccountChanged:(id)changed
{
  if (self->_isPeerPaymentPass)
  {
    account = [(PKPeerPaymentService *)self->_peerPaymentService account];
    peerPaymentAccount = self->_peerPaymentAccount;
    self->_peerPaymentAccount = account;

    balanceLabel = self->_balanceLabel;
    currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    formattedStringValue = [currentBalance formattedStringValue];
    v9 = PKLocalizedPeerPaymentString(@"PEER_PAYMENT_IN_APP_BALANCE_FORMAT", @"%@", formattedStringValue);
    [(UILabel *)balanceLabel setText:v9];
  }
}

- (BOOL)_transactionHasLocation:(id)location
{
  locationCopy = location;
  merchant = [locationCopy merchant];
  mapsMerchant = [merchant mapsMerchant];

  postalAddress = [mapsMerchant postalAddress];
  if (postalAddress)
  {
    location = [mapsMerchant location];
    v8 = location != 0;
  }

  else
  {
    v8 = 0;
  }

  startStationLocation = [locationCopy startStationLocation];

  endStationLocation = [locationCopy endStationLocation];

  if (startStationLocation)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (endStationLocation)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (id)_personContact
{
  familyMember = self->_familyMember;
  nameComponents = [(PKAccountUser *)self->_accountUser nameComponents];
  v4 = [PKContactResolver contactForFamilyMember:familyMember nameComponents:nameComponents imageData:0];

  return v4;
}

- (id)_paymentRewardsRedemptionBadge
{
  paymentRewardsRedemption = [(PKPaymentTransaction *)self->_transaction paymentRewardsRedemption];
  v4 = paymentRewardsRedemption;
  if (paymentRewardsRedemption)
  {
    paymentService = self->_paymentService;
    balanceIdentifier = [paymentRewardsRedemption balanceIdentifier];
    v7 = [(PKPaymentService *)paymentService paymentRewardsBalanceWithIdentifier:balanceIdentifier];

    programName = [v7 programName];
    v9 = programName;
    if (programName)
    {
      PKLocalizedPayWithPointsString(@"TRANSACTION_NOTIFICATION_CONTENT_REWARDS_BADGE_FMT", @"%@", programName);
    }

    else
    {
      PKLocalizedPayWithPointsString(@"TRANSACTION_NOTIFICATION_CONTENT_REWARDS_BADGE_FALLBACK");
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005780;
  block[3] = &unk_10000C3D8;
  objc_copyWeak(&v8, &location);
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end