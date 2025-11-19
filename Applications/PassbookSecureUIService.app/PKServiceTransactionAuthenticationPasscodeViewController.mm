@interface PKServiceTransactionAuthenticationPasscodeViewController
- (BOOL)_isHostProcessEntitled;
- (void)_hostApplicationDidEnterBackground;
- (void)passcodeViewController:(id)a3 didGenerateEncryptedPasscode:(id)a4;
- (void)passcodeViewController:(id)a3 requestSessionExchangeToken:(id)a4;
- (void)passcodeViewControllerDidCancel:(id)a3;
- (void)passcodeViewControllerDidEndSessionExchange:(id)a3;
- (void)resetWithTransactionAuthenticationFailure:(int64_t)a3 completion:(id)a4;
- (void)setPassUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 archivedAnalyticsSessionToken:(id)a5 completionHandler:(id)a6;
@end

@implementation PKServiceTransactionAuthenticationPasscodeViewController

- (void)_hostApplicationDidEnterBackground
{
  v4.receiver = self;
  v4.super_class = PKServiceTransactionAuthenticationPasscodeViewController;
  [(PKServiceTransactionAuthenticationPasscodeViewController *)&v4 _hostApplicationDidEnterBackground];
  v3 = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [v3 passcodeViewControllerDidCancel];
}

- (void)setPassUniqueIdentifier:(id)a3 transactionIdentifier:(id)a4 archivedAnalyticsSessionToken:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(PKServiceTransactionAuthenticationPasscodeViewController *)self _isHostProcessEntitled])
  {
    objc_storeStrong(&self->_archivedAnalyticsSessionToken, a5);
    v14 = [[PKTransactionAuthenticationCollectPasscodeViewController alloc] initWithPassUniqueIdentifier:v10 transactionIdentifier:v11 delegate:self];
    collectPasscodeViewController = self->_collectPasscodeViewController;
    self->_collectPasscodeViewController = v14;

    objc_initWeak(location, self);
    v16 = self->_collectPasscodeViewController;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004460;
    v18[3] = &unk_10000C618;
    objc_copyWeak(&v20, location);
    v19 = v13;
    [(PKTransactionAuthenticationCollectPasscodeViewController *)v16 preflightWithCompletion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Host process is not entitled to request PIN view service.", location, 2u);
    }

    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

- (void)resetWithTransactionAuthenticationFailure:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  collectPasscodeViewController = self->_collectPasscodeViewController;
  if (collectPasscodeViewController)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004704;
    v9[3] = &unk_10000C640;
    v10 = v6;
    [(PKTransactionAuthenticationCollectPasscodeViewController *)collectPasscodeViewController resetWithTransactionAuthenticationFailure:a3 completion:v9];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (BOOL)_isHostProcessEntitled
{
  [(PKServiceTransactionAuthenticationPasscodeViewController *)self _hostAuditToken];
  v2 = SecTaskCreateWithAuditToken(0, &v7);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecTaskCopyValueForEntitlement(v2, PKTransactionAuthenticationSecureUIServiceAccess, 0);
  v5 = [v4 BOOLValue];
  CFRelease(v3);

  return v5;
}

- (void)passcodeViewController:(id)a3 requestSessionExchangeToken:(id)a4
{
  v5 = a4;
  v6 = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [v6 passcodeViewControllerRequestSessionExchangeTokenWithHandler:v5];
}

- (void)passcodeViewControllerDidEndSessionExchange:(id)a3
{
  v3 = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [v3 passcodeViewControllerDidEndSessionExchange];
}

- (void)passcodeViewControllerDidCancel:(id)a3
{
  v3 = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [v3 passcodeViewControllerDidCancel];
}

- (void)passcodeViewController:(id)a3 didGenerateEncryptedPasscode:(id)a4
{
  v5 = a4;
  v6 = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [v6 passcodeViewControllerDidGenerateEncryptedPasscode:v5];
}

@end