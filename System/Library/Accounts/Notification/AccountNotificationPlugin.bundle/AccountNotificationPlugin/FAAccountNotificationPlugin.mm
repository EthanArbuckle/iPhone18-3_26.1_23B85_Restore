@interface FAAccountNotificationPlugin
- (void)_enableScreentimeForAccount:(id)account;
- (void)_notifyAccountChange:(id)change changeType:(int)type;
- (void)_setRestrictionsOnProtoAccountAdded;
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation FAAccountNotificationPlugin

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  accountCopy = account;
  storeCopy = store;
  oldAccountCopy = oldAccount;
  if (type == 3)
  {
    selfCopy2 = self;
    v13 = oldAccountCopy;
    v14 = 3;
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    selfCopy2 = self;
    v13 = accountCopy;
    v14 = 1;
  }

  [(FAAccountNotificationPlugin *)selfCopy2 _notifyAccountChange:v13 changeType:v14];
LABEL_6:
}

- (void)_notifyAccountChange:(id)change changeType:(int)type
{
  changeCopy = change;
  v7 = _FALogSystem();
  v8 = v7;
  if (changeCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Account changed. Let familycircled know about it.", buf, 2u);
    }

    v8 = objc_alloc_init(FAFamilyCircleRequest);
    v9 = os_transaction_create();
    v10 = [v8 serviceRemoteObjectWithErrorHandler:&stru_4130];
    if (type == 3)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = nullsub_2;
      v19[3] = &unk_4158;
      v17 = &v20;
      v20 = v9;
      [v10 didDeleteAccount:changeCopy replyBlock:v19];
    }

    else
    {
      if (type != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = nullsub_1;
      v21[3] = &unk_4158;
      v22 = v9;
      [v10 didAddAccount:changeCopy replyBlock:v21];
      [(FAAccountNotificationPlugin *)self _enableScreentimeForAccount:changeCopy];
      accountType = [changeCopy accountType];
      identifier = [accountType identifier];
      v13 = +[AKAccountManager sharedInstance];
      protoAccountType = [v13 protoAccountType];
      identifier2 = [protoAccountType identifier];
      if ([identifier isEqualToString:identifier2])
      {
        proto_ageRange = [changeCopy proto_ageRange];

        if (proto_ageRange == &dword_0 + 1)
        {
          v16 = _FALogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "FAAccountNotificationPlugin: ProtoAccount was added ... setting restrictions", buf, 2u);
          }

          [(FAAccountNotificationPlugin *)self _setRestrictionsOnProtoAccountAdded];
        }
      }

      else
      {
      }

      v17 = &v22;
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_127C(v8);
  }

LABEL_18:
}

- (void)_setRestrictionsOnProtoAccountAdded
{
  v2 = +[AKFeatureManager sharedManager];
  isAgeAttestationPhase1Enabled = [v2 isAgeAttestationPhase1Enabled];

  if (isAgeAttestationPhase1Enabled)
  {
    v5 = objc_alloc_init(FASettingProtoAccountRestrictionsRequest);
    [v5 setRestrictionsWithCompletion:&stru_4198];
  }

  else
  {
    v4 = _FAAgeAttestationLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "feature is not enabled...", buf, 2u);
    }
  }
}

- (void)_enableScreentimeForAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(NSNumberFormatter);
  aa_personID = [accountCopy aa_personID];

  v6 = [v4 numberFromString:aa_personID];

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[FAAccountNotificationPlugin _enableScreentimeForAccount:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: Setting up Screentime for dsid: %@", &v9, 0x16u);
  }

  v8 = [[FAFetchScreenTimeSettingsCacheRequest alloc] initWithFamilyMemberDSID:v6];
  [v8 startRequestWithCompletionHandler:&stru_41D8];
}

@end