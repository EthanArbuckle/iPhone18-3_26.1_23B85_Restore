@interface MFAccountHealer
+ (OS_os_log)log;
- (BOOL)_shouldHealAccount:(id)a3 withNewAccount:(id)a4;
- (BOOL)shouldHealFromAlternateAccount;
- (MFAccountHealer)initWithAccount:(id)a3 networkController:(id)a4 error:(id)a5;
- (id)_alternateAccount;
- (id)_fetchServerFromACEDB:(id)a3 forIncomingServer:(BOOL)a4;
- (id)_getMailAccountFromDeliveryAccount:(id)a3;
- (id)_lastTimeConnectToACEDBForAccount:(id)a3;
- (void)_overwriteAccount:(id)a3 withAlternateAccount:(id)a4;
- (void)_renewCredentialsWithError:(id)a3 completionHandler:(id)a4;
- (void)healFromAlternateAccountWithCompletion:(id)a3;
- (void)healSilentlyWithCompletion:(id)a3;
@end

@implementation MFAccountHealer

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A041C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD3A8 != -1)
  {
    dispatch_once(&qword_1006DD3A8, block);
  }

  v2 = qword_1006DD3A0;

  return v2;
}

- (MFAccountHealer)initWithAccount:(id)a3 networkController:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFAccountHealer;
  v12 = [(MFAccountHealer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    objc_storeStrong(&v13->_error, a5);
    objc_storeStrong(&v13->_networkController, a4);
  }

  return v13;
}

- (void)healSilentlyWithCompletion:(id)a3
{
  v5 = a3;
  if (pthread_main_np())
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MFAccountHealer.m" lineNumber:40 description:@"Current thread is main"];
  }

  v6 = [(MFAccountHealer *)self error];
  v7 = [v6 code];

  v8 = [(MFAccountHealer *)self account];
  v9 = [v8 baseAccount];
  v10 = [v9 hasPasswordCredential];

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = [(MFAccountHealer *)self networkController];
  if (![v11 isDataAvailable])
  {

    goto LABEL_12;
  }

  if (v7 != 1032 && v7 != 1055)
  {

    if (v7 == 1056)
    {
      goto LABEL_8;
    }

LABEL_12:
    v5[2](v5, 0);
    goto LABEL_13;
  }

LABEL_8:
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(MFAccountHealer *)self account];
    v14 = [v13 ef_publicDescription];
    *buf = 138543362;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting renewal of credentials for account: %{public}@", buf, 0xCu);
  }

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1001A084C;
  v21 = &unk_10064FAE0;
  v22 = self;
  v23 = v5;
  v15 = objc_retainBlock(&v18);
  v16 = [(MFAccountHealer *)self error:v18];
  [(MFAccountHealer *)self _renewCredentialsWithError:v16 completionHandler:v15];

LABEL_13:
}

- (void)healFromAlternateAccountWithCompletion:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFAccountHealer.m" lineNumber:64 description:@"Current thread must be main"];
  }

  v6 = [(MFAccountHealer *)self _alternateAccount];
  if (v6)
  {
    v7 = [[MFAccountValidator alloc] initWithPerformsValidationInBackground:0];
    [v7 validateAccount:v6 useSSL:{objc_msgSend(v6, "usesSSL")}];
    v8 = +[EFScheduler globalAsyncScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A0B74;
    v11[3] = &unk_1006509D8;
    v9 = v7;
    v12 = v9;
    v13 = self;
    v14 = v6;
    v15 = v5;
    [v8 performBlock:v11];
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

- (BOOL)shouldHealFromAlternateAccount
{
  v3 = [(MFAccountHealer *)self account];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(MFAccountHealer *)self account];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  v7 = [(MFAccountHealer *)self account];
  v8 = [v7 isManaged];

  v9 = 0;
  if (v8 & 1) == 0 && ((isKindOfClass | v6))
  {
    v10 = [(MFAccountHealer *)self account];
    v11 = [(MFAccountHealer *)self error];
    v9 = [v10 shouldFetchACEDBInfoForError:v11];
  }

  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v19 = [(MFAccountHealer *)self error];
    v20 = [v19 ef_publicDescription];
    v21 = [NSNumber numberWithBool:v9];
    v22 = 138543618;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error for error we use to determind to heal with another account or not: %{public}@, should heal? %@", &v22, 0x16u);
  }

  v13 = [(MFAccountHealer *)self account];
  v14 = [(MFAccountHealer *)self _lastTimeConnectToACEDBForAccount:v13];

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
    v3 = [(MFAccountHealer *)self account];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = [(MFAccountHealer *)self account];
    v6 = [(MFAccountHealer *)self _fetchServerFromACEDB:v5 forIncomingServer:isKindOfClass & 1];

    if (v6 && ([(MFAccountHealer *)self account], v7 = objc_claimAutoreleasedReturnValue(), v8 = [(MFAccountHealer *)self _shouldHealAccount:v7 withNewAccount:v6], v7, v8))
    {
      v9 = +[MFAccountHealer log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 hostname];
        v17 = 138412802;
        v18 = v10;
        v19 = 1024;
        v20 = [v6 portNumber];
        v21 = 1024;
        v22 = [v6 usesSSL];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Informations we got back from Ace DB: %@, %i, %i", &v17, 0x18u);
      }

      v11 = v6;
      v12 = [(MFAccountHealer *)self account];
      v13 = [v12 username];
      [v11 setUsername:v13];

      v14 = [(MFAccountHealer *)self account];
      v15 = [v14 password];
      [v11 setPassword:v15];
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

- (BOOL)_shouldHealAccount:(id)a3 withNewAccount:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 usesSSL];
  if (v7 == [v6 usesSSL] && (v8 = objc_msgSend(v5, "portNumber"), v8 == objc_msgSend(v6, "portNumber")))
  {
    v9 = [v5 hostname];
    v10 = [v6 hostname];
    v11 = [v9 caseInsensitiveCompare:v10] != 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v5 type];
  v13 = [v6 type];
  v14 = [v12 caseInsensitiveCompare:v13];

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

- (id)_fetchServerFromACEDB:(id)a3 forIncomingServer:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v18 = 0;
  v19 = 0;
  if (v4)
  {
    v8 = [v6 firstEmailAddress];
  }

  else
  {
    v9 = [(MFAccountHealer *)self _getMailAccountFromDeliveryAccount:v6];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 firstEmailAddress];
    }

    else
    {
      v8 = &stru_100662A88;
    }
  }

  if ([(__CFString *)v8 length])
  {
    v11 = AccountConfigurationServiceCopyAccountsForEmailAddress() == 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v18;
  if (v4)
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

- (id)_getMailAccountFromDeliveryAccount:(id)a3
{
  v3 = a3;
  v4 = +[MailAccount activeAccounts];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A1A84;
  v8[3] = &unk_100653130;
  v5 = v3;
  v9 = v5;
  v6 = [v4 ef_firstObjectPassingTest:v8];

  return v6;
}

- (id)_lastTimeConnectToACEDBForAccount:(id)a3
{
  v3 = [a3 accountPropertyForKey:MFHealAccountDateLastFetched];
  [v3 doubleValue];
  v4 = [NSDate dateWithTimeIntervalSince1970:?];

  return v4;
}

- (void)_overwriteAccount:(id)a3 withAlternateAccount:(id)a4
{
  v9 = a3;
  v5 = a4;
  [v9 setUsesSSL:{objc_msgSend(v5, "usesSSL")}];
  [v9 setPortNumber:{objc_msgSend(v5, "portNumber")}];
  v6 = [v5 hostname];
  [v9 setHostname:v6];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v8 = [NSNumber numberWithDouble:?];
  [v9 setValueInAccountProperties:v8 forKey:MFHealAccountDateLastFetched];

  [v9 savePersistentAccount];
}

- (void)_renewCredentialsWithError:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableDictionary dictionary];
  v7 = [(MFAccountHealer *)self account];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A1DCC;
  v9[3] = &unk_100653158;
  v8 = v5;
  v10 = v8;
  [v7 renewCredentialsWithOptions:v6 completion:v9];
}

@end