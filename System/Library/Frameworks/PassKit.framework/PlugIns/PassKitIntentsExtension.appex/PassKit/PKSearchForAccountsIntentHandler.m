@interface PKSearchForAccountsIntentHandler
- (id)_openPeerPaymentPassActivity;
- (id)_responseForInvalidAccountResolution:(unint64_t)a3;
- (id)_responseForInvalidRegistrationStatus:(unint64_t)a3;
- (void)handleSearchForAccounts:(id)a3 completion:(id)a4;
@end

@implementation PKSearchForAccountsIntentHandler

- (void)handleSearchForAccounts:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received call to handleSearchForAccounts: with intent %@", buf, 0xCu);
  }

  kdebug_trace();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100006830;
  v18[3] = &unk_100014810;
  v9 = v7;
  v20 = v9;
  v18[4] = self;
  v10 = v6;
  v19 = v10;
  v11 = objc_retainBlock(v18);
  v12 = [v10 organizationName];

  if (v12)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 organizationName];
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling handleSearchForAccounts: completion with failureAccountNotFound for non-empty organizationName %@", buf, 0xCu);
    }

    v14 = [[INSearchForAccountsIntentResponse alloc] initWithCode:7 userActivity:0];
    (v11[2])(v11, v14);
  }

  else
  {
    v15 = [(PKPeerPaymentIntentHandler *)self intentQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000068C0;
    block[3] = &unk_100014860;
    block[4] = self;
    v17 = v11;
    dispatch_async(v15, block);
  }
}

- (id)_responseForInvalidRegistrationStatus:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 4;
  }

  v4 = [[INSearchForAccountsIntentResponse alloc] initWithCode:v3 userActivity:0];

  return v4;
}

- (id)_responseForInvalidAccountResolution:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v4 = 4;
  }

  else
  {
    v4 = qword_10000E4B0[a3 - 1];
  }

  v5 = [INSearchForAccountsIntentResponse alloc];
  v6 = [(PKSearchForAccountsIntentHandler *)self _openPeerPaymentPassActivity];
  v7 = [v5 initWithCode:v4 userActivity:v6];

  return v7;
}

- (id)_openPeerPaymentPassActivity
{
  v2 = [(PKPeerPaymentIntentHandler *)self peerPaymentController];
  v3 = [v2 account];
  v4 = [v3 associatedPassUniqueID];

  if (v4)
  {
    v5 = [NSUserActivity alloc];
    v6 = [v5 initWithActivityType:PKViewPassUserActivityType];
    [v6 setEligibleForHandoff:0];
    v9 = PKViewPassUserActivityPassKey;
    v10 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v6 setUserInfo:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end