@interface PKServiceTransactionAuthenticationPasscodeViewController
- (BOOL)_isHostProcessEntitled;
- (void)_hostApplicationDidEnterBackground;
- (void)passcodeViewController:(id)controller didGenerateEncryptedPasscode:(id)passcode;
- (void)passcodeViewController:(id)controller requestSessionExchangeToken:(id)token;
- (void)passcodeViewControllerDidCancel:(id)cancel;
- (void)passcodeViewControllerDidEndSessionExchange:(id)exchange;
- (void)resetWithTransactionAuthenticationFailure:(int64_t)failure completion:(id)completion;
- (void)setPassUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier archivedAnalyticsSessionToken:(id)token completionHandler:(id)handler;
@end

@implementation PKServiceTransactionAuthenticationPasscodeViewController

- (void)_hostApplicationDidEnterBackground
{
  v4.receiver = self;
  v4.super_class = PKServiceTransactionAuthenticationPasscodeViewController;
  [(PKServiceTransactionAuthenticationPasscodeViewController *)&v4 _hostApplicationDidEnterBackground];
  _remoteViewControllerProxy = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy passcodeViewControllerDidCancel];
}

- (void)setPassUniqueIdentifier:(id)identifier transactionIdentifier:(id)transactionIdentifier archivedAnalyticsSessionToken:(id)token completionHandler:(id)handler
{
  identifierCopy = identifier;
  transactionIdentifierCopy = transactionIdentifier;
  tokenCopy = token;
  handlerCopy = handler;
  if ([(PKServiceTransactionAuthenticationPasscodeViewController *)self _isHostProcessEntitled])
  {
    objc_storeStrong(&self->_archivedAnalyticsSessionToken, token);
    v14 = [[PKTransactionAuthenticationCollectPasscodeViewController alloc] initWithPassUniqueIdentifier:identifierCopy transactionIdentifier:transactionIdentifierCopy delegate:self];
    collectPasscodeViewController = self->_collectPasscodeViewController;
    self->_collectPasscodeViewController = v14;

    objc_initWeak(location, self);
    v16 = self->_collectPasscodeViewController;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004460;
    v18[3] = &unk_10000C618;
    objc_copyWeak(&v20, location);
    v19 = handlerCopy;
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

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

- (void)resetWithTransactionAuthenticationFailure:(int64_t)failure completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  collectPasscodeViewController = self->_collectPasscodeViewController;
  if (collectPasscodeViewController)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004704;
    v9[3] = &unk_10000C640;
    v10 = completionCopy;
    [(PKTransactionAuthenticationCollectPasscodeViewController *)collectPasscodeViewController resetWithTransactionAuthenticationFailure:failure completion:v9];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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
  bOOLValue = [v4 BOOLValue];
  CFRelease(v3);

  return bOOLValue;
}

- (void)passcodeViewController:(id)controller requestSessionExchangeToken:(id)token
{
  tokenCopy = token;
  _remoteViewControllerProxy = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy passcodeViewControllerRequestSessionExchangeTokenWithHandler:tokenCopy];
}

- (void)passcodeViewControllerDidEndSessionExchange:(id)exchange
{
  _remoteViewControllerProxy = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy passcodeViewControllerDidEndSessionExchange];
}

- (void)passcodeViewControllerDidCancel:(id)cancel
{
  _remoteViewControllerProxy = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy passcodeViewControllerDidCancel];
}

- (void)passcodeViewController:(id)controller didGenerateEncryptedPasscode:(id)passcode
{
  passcodeCopy = passcode;
  _remoteViewControllerProxy = [(PKServiceTransactionAuthenticationPasscodeViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy passcodeViewControllerDidGenerateEncryptedPasscode:passcodeCopy];
}

@end