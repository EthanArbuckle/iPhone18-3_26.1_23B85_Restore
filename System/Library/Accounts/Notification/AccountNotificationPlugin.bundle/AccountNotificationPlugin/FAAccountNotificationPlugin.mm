@interface FAAccountNotificationPlugin
- (void)_enableScreentimeForAccount:(id)a3;
- (void)_notifyAccountChange:(id)a3 changeType:(int)a4;
- (void)_setRestrictionsOnProtoAccountAdded;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation FAAccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 == 3)
  {
    v12 = self;
    v13 = v11;
    v14 = 3;
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v12 = self;
    v13 = v15;
    v14 = 1;
  }

  [(FAAccountNotificationPlugin *)v12 _notifyAccountChange:v13 changeType:v14];
LABEL_6:
}

- (void)_notifyAccountChange:(id)a3 changeType:(int)a4
{
  v6 = a3;
  v7 = _FALogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Account changed. Let familycircled know about it.", buf, 2u);
    }

    v8 = objc_alloc_init(FAFamilyCircleRequest);
    v9 = os_transaction_create();
    v10 = [v8 serviceRemoteObjectWithErrorHandler:&stru_4130];
    if (a4 == 3)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = nullsub_2;
      v19[3] = &unk_4158;
      v17 = &v20;
      v20 = v9;
      [v10 didDeleteAccount:v6 replyBlock:v19];
    }

    else
    {
      if (a4 != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = nullsub_1;
      v21[3] = &unk_4158;
      v22 = v9;
      [v10 didAddAccount:v6 replyBlock:v21];
      [(FAAccountNotificationPlugin *)self _enableScreentimeForAccount:v6];
      v11 = [v6 accountType];
      v12 = [v11 identifier];
      v13 = +[AKAccountManager sharedInstance];
      v14 = [v13 protoAccountType];
      v15 = [v14 identifier];
      if ([v12 isEqualToString:v15])
      {
        v18 = [v6 proto_ageRange];

        if (v18 == &dword_0 + 1)
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
  v3 = [v2 isAgeAttestationPhase1Enabled];

  if (v3)
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

- (void)_enableScreentimeForAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSNumberFormatter);
  v5 = [v3 aa_personID];

  v6 = [v4 numberFromString:v5];

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