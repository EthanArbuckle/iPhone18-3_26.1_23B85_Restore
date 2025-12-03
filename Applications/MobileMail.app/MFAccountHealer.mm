@interface MFAccountHealer
+ (OS_os_log)log;
- (BOOL)_shouldHealAccount:(id)account withNewAccount:(id)newAccount;
- (BOOL)shouldHealFromAlternateAccount;
- (MFAccountHealer)initWithAccount:(id)account networkController:(id)controller error:(id)error;
- (id)_alternateAccount;
- (id)_fetchServerFromACEDB:(id)b forIncomingServer:(BOOL)server;
- (id)_getMailAccountFromDeliveryAccount:(id)account;
- (id)_lastTimeConnectToACEDBForAccount:(id)account;
- (void)_overwriteAccount:(id)account withAlternateAccount:(id)alternateAccount;
- (void)_renewCredentialsWithError:(id)error completionHandler:(id)handler;
- (void)healFromAlternateAccountWithCompletion:(id)completion;
- (void)healSilentlyWithCompletion:(id)completion;
@end

@implementation MFAccountHealer

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A041C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD3A8 != -1)
  {
    dispatch_once(&qword_1006DD3A8, block);
  }

  v2 = qword_1006DD3A0;

  return v2;
}

- (MFAccountHealer)initWithAccount:(id)account networkController:(id)controller error:(id)error
{
  accountCopy = account;
  controllerCopy = controller;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = MFAccountHealer;
  v12 = [(MFAccountHealer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    objc_storeStrong(&v13->_error, error);
    objc_storeStrong(&v13->_networkController, controller);
  }

  return v13;
}

- (void)healSilentlyWithCompletion:(id)completion
{
  completionCopy = completion;
  if (pthread_main_np())
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MFAccountHealer.m" lineNumber:40 description:@"Current thread is main"];
  }

  error = [(MFAccountHealer *)self error];
  code = [error code];

  account = [(MFAccountHealer *)self account];
  baseAccount = [account baseAccount];
  hasPasswordCredential = [baseAccount hasPasswordCredential];

  if (hasPasswordCredential)
  {
    goto LABEL_12;
  }

  networkController = [(MFAccountHealer *)self networkController];
  if (![networkController isDataAvailable])
  {

    goto LABEL_12;
  }

  if (code != 1032 && code != 1055)
  {

    if (code == 1056)
    {
      goto LABEL_8;
    }

LABEL_12:
    completionCopy[2](completionCopy, 0);
    goto LABEL_13;
  }

LABEL_8:
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    account2 = [(MFAccountHealer *)self account];
    ef_publicDescription = [account2 ef_publicDescription];
    *buf = 138543362;
    v25 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting renewal of credentials for account: %{public}@", buf, 0xCu);
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1001A084C;
  v21 = &unk_10064FAE0;
  selfCopy = self;
  v23 = completionCopy;
  v15 = objc_retainBlock(&v18);
  v16 = [(MFAccountHealer *)self error:v18];
  [(MFAccountHealer *)self _renewCredentialsWithError:v16 completionHandler:v15];

LABEL_13:
}

- (void)healFromAlternateAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFAccountHealer.m" lineNumber:64 description:@"Current thread must be main"];
  }

  _alternateAccount = [(MFAccountHealer *)self _alternateAccount];
  if (_alternateAccount)
  {
    v7 = [[MFAccountValidator alloc] initWithPerformsValidationInBackground:0];
    [v7 validateAccount:_alternateAccount useSSL:{objc_msgSend(_alternateAccount, "usesSSL")}];
    v8 = +[EFScheduler globalAsyncScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A0B74;
    v11[3] = &unk_1006509D8;
    v9 = v7;
    v12 = v9;
    selfCopy = self;
    v14 = _alternateAccount;
    v15 = completionCopy;
    [v8 performBlock:v11];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (BOOL)shouldHealFromAlternateAccount
{
  account = [(MFAccountHealer *)self account];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  account2 = [(MFAccountHealer *)self account];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  account3 = [(MFAccountHealer *)self account];
  isManaged = [account3 isManaged];

  v9 = 0;
  if (isManaged & 1) == 0 && ((isKindOfClass | v6))
  {
    account4 = [(MFAccountHealer *)self account];
    error = [(MFAccountHealer *)self error];
    v9 = [account4 shouldFetchACEDBInfoForError:error];
  }

  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    error2 = [(MFAccountHealer *)self error];
    ef_publicDescription = [error2 ef_publicDescription];
    v21 = [NSNumber numberWithBool:v9];
    v22 = 138543618;
    v23 = ef_publicDescription;
    v24 = 2112;
    v25 = v21;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error for error we use to determind to heal with another account or not: %{public}@, should heal? %@", &v22, 0x16u);
  }

  account5 = [(MFAccountHealer *)self account];
  v14 = [(MFAccountHealer *)self _lastTimeConnectToACEDBForAccount:account5];

  if (v14)
  {
    v15 = +[NSDate date];
    v16 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v17 = [v16 components:48 fromDate:v14 toDate:v15 options:0];
    if ([v17 day] <= 0)
    {
      LOBYTE(v9) = ([v17 hour] > 24) & v9;
    }
  }

  return v9;
}

- (id)_alternateAccount
{
  if ([(MFAccountHealer *)self shouldHealFromAlternateAccount])
  {
    account = [(MFAccountHealer *)self account];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    account2 = [(MFAccountHealer *)self account];
    v6 = [(MFAccountHealer *)self _fetchServerFromACEDB:account2 forIncomingServer:isKindOfClass & 1];

    if (v6 && ([(MFAccountHealer *)self account], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(MFAccountHealer *)self _shouldHealAccount:v7 withNewAccount:v6], v7, v8))
    {
      v9 = +[MFAccountHealer log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        hostname = [v6 hostname];
        v17 = 138412802;
        v18 = hostname;
        v19 = 1024;
        portNumber = [v6 portNumber];
        v21 = 1024;
        usesSSL = [v6 usesSSL];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Informations we got back from Ace DB: %@, %i, %i", &v17, 0x18u);
      }

      v11 = v6;
      account3 = [(MFAccountHealer *)self account];
      username = [account3 username];
      [v11 setUsername:username];

      account4 = [(MFAccountHealer *)self account];
      password = [account4 password];
      [v11 setPassword:password];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_shouldHealAccount:(id)account withNewAccount:(id)newAccount
{
  accountCopy = account;
  newAccountCopy = newAccount;
  usesSSL = [accountCopy usesSSL];
  if (usesSSL == [newAccountCopy usesSSL] && (v8 = objc_msgSend(accountCopy, "portNumber"), v8 == objc_msgSend(newAccountCopy, "portNumber")))
  {
    hostname = [accountCopy hostname];
    hostname2 = [newAccountCopy hostname];
    v11 = [hostname caseInsensitiveCompare:hostname2] != 0;
  }

  else
  {
    v11 = 1;
  }

  type = [accountCopy type];
  type2 = [newAccountCopy type];
  v14 = [type caseInsensitiveCompare:type2];

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_fetchServerFromACEDB:(id)b forIncomingServer:(BOOL)server
{
  serverCopy = server;
  bCopy = b;
  v7 = bCopy;
  v18 = 0;
  v19 = 0;
  if (serverCopy)
  {
    firstEmailAddress = [bCopy firstEmailAddress];
  }

  else
  {
    v9 = [(MFAccountHealer *)self _getMailAccountFromDeliveryAccount:bCopy];
    v10 = v9;
    if (v9)
    {
      firstEmailAddress = [v9 firstEmailAddress];
    }

    else
    {
      firstEmailAddress = &stru_100662A88;
    }
  }

  if ([(__CFString *)firstEmailAddress length])
  {
    v11 = AccountConfigurationServiceCopyAccountsForEmailAddress() == 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v18;
  if (serverCopy)
  {
    v12 = &v19;
  }

  v13 = *v12;
  v14 = v13;
  if (v11)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v16;
}

- (id)_getMailAccountFromDeliveryAccount:(id)account
{
  accountCopy = account;
  v4 = +[MailAccount activeAccounts];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A1A84;
  v8[3] = &unk_100653130;
  v5 = accountCopy;
  v9 = v5;
  v6 = [v4 ef_firstObjectPassingTest:v8];

  return v6;
}

- (id)_lastTimeConnectToACEDBForAccount:(id)account
{
  v3 = [account accountPropertyForKey:MFHealAccountDateLastFetched];
  [v3 doubleValue];
  v4 = [NSDate dateWithTimeIntervalSince1970:?];

  return v4;
}

- (void)_overwriteAccount:(id)account withAlternateAccount:(id)alternateAccount
{
  accountCopy = account;
  alternateAccountCopy = alternateAccount;
  [accountCopy setUsesSSL:{objc_msgSend(alternateAccountCopy, "usesSSL")}];
  [accountCopy setPortNumber:{objc_msgSend(alternateAccountCopy, "portNumber")}];
  hostname = [alternateAccountCopy hostname];
  [accountCopy setHostname:hostname];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v8 = [NSNumber numberWithDouble:?];
  [accountCopy setValueInAccountProperties:v8 forKey:MFHealAccountDateLastFetched];

  [accountCopy savePersistentAccount];
}

- (void)_renewCredentialsWithError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[NSMutableDictionary dictionary];
  account = [(MFAccountHealer *)self account];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A1DCC;
  v9[3] = &unk_100653158;
  v8 = handlerCopy;
  v10 = v8;
  [account renewCredentialsWithOptions:v6 completion:v9];
}

@end