@interface ClipService
- (void)accountStatusUsingRequest:(id)a3 withReplyHandler:(id)a4;
- (void)boostSessionUsingChannel:(id)a3 forRequest:(id)a4 withReplyHandler:(id)a5;
- (void)cancelSessionID:(id)a3 withReplyHandler:(id)a4;
- (void)clipCardMetricsEvent:(id)a3 withReplyHandler:(id)a4;
- (void)commitSessionID:(id)a3 withReplyHandler:(id)a4;
- (void)placeholderSessionID:(id)a3 withReplyHandler:(id)a4;
- (void)startSessionID:(id)a3 withReplyHandler:(id)a4;
@end

@implementation ClipService

- (void)accountStatusUsingRequest:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v40 = a4;
  v6 = sub_100003B90();
  v7 = +[ACAccountStore ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];

  v9 = [v8 ams_DSID];
  v42 = 0;
  v10 = objc_alloc_init(_TtC9appstored6LogKey);
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 processInfo];
    v13 = [v12 bundleIdentifier];
    *buf = 138412546;
    v44 = v10;
    v45 = 2114;
    v46 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] accountStatusUsingRequest for client: %{public}@", buf, 0x16u);
  }

  v14 = [[ASDAccountStatusResponse alloc] initWithAccountID:v9];
  if (v8)
  {
    v15 = sub_100405768();
    v41 = 0;
    v16 = sub_100405844(v15, v10, [v5 lookupFamilyInfoIfNecessary], 0, &v42, &v41);
    v17 = v41;

    if (v16)
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }

    v19 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagIsManagedAccount];
    if (v19 && (objc_opt_respondsToSelector() & 1) != 0 && [v19 BOOLValue])
    {
      v18 |= 8uLL;
    }

    v20 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagCanUseAppClips];
    v35 = v19;
    if (v20 && (objc_opt_respondsToSelector() & 1) != 0 && ![v20 BOOLValue])
    {
      v18 |= 2uLL;
    }

    v21 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen];
    v36 = v17;
    v34 = v21;
    if (v21)
    {
      v22 = v6;
      v23 = v21;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v23 BOOLValue])
      {
        v18 |= 0x10uLL;
      }

      v6 = v22;
    }

    v24 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagIsInRestrictedRegion];
    v39 = v5;
    if (v24 && (objc_opt_respondsToSelector() & 1) != 0 && [v24 BOOLValue])
    {
      v18 |= 0x40uLL;
    }

    v25 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagHasAgreedToAppClipTerms];
    v38 = v9;
    if (v25 && (objc_opt_respondsToSelector() & 1) != 0 && ![v25 BOOLValue])
    {
      v18 |= 0x80uLL;
    }

    v26 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagIsInBadCredit];
    v37 = v10;
    if (v26 && (objc_opt_respondsToSelector() & 1) != 0 && [v26 BOOLValue])
    {
      v18 |= 0x100uLL;
    }

    v27 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagIsRestrictedAccount];
    v28 = v20;
    if (v27 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v29 = v6;
      if ([v27 BOOLValue])
      {
        v18 |= 4uLL;
      }
    }

    else
    {
      v29 = v6;
    }

    v30 = [v8 ams_accountFlagValueForAccountFlag:AMSAccountFlagIsDisabledAccount];
    if (v30 && (objc_opt_respondsToSelector() & 1) != 0 && [v30 BOOLValue])
    {
      v18 |= 0x200uLL;
    }

    v9 = v38;
    v5 = v39;
    v6 = v29;
    v31 = v36;
    v10 = v37;
  }

  else
  {
    v31 = 0;
    v18 = 1;
  }

  [v14 setAccountStatus:v18];
  [v14 setHasCachedFamilyInfo:v42];
  v32 = ASDErrorWithSafeUserInfo();
  v40[2](v40, v14, v32);

  v33 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%@] accountStatusUsingRequest complete", buf, 0xCu);
  }
}

- (void)boostSessionUsingChannel:(id)a3 forRequest:(id)a4 withReplyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 uniqueID];
  if (v11)
  {
    v12 = sub_1001C79DC([ClipSession alloc], v9, v8, self->_urlSession, self->_device);
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_sessions setObject:v12 forKeyedSubscript:v11];
    os_unfair_lock_unlock(&self->_lock);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10030C51C;
    v14[3] = &unk_10051B570;
    v14[4] = self;
    v15 = v11;
    sub_1001C8E74(v12, v10, v14);
  }

  else
  {
    v13 = ASDErrorWithDescription();
    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)cancelSessionID:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10030C6BC;
    v11[3] = &unk_10051D1B0;
    v12 = v7;
    sub_1001C87A8(v8, v11);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Session '%@' not found", v6];
    v10 = ASDErrorWithDescription();
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)clipCardMetricsEvent:(id)a3 withReplyHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B90();
  v8 = objc_alloc_init(_TtC9appstored6LogKey);
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 processInfo];
    v11 = [v10 bundleIdentifier];
    v18 = 138412546;
    v19 = v8;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] clipCardMetricsEvent for client: %{public}@", &v18, 0x16u);
  }

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v5 bundleID];
    v14 = [v5 itemID];
    v15 = [v5 referralSourceBundleID];
    v16 = [v5 sourceURL];
    v18 = 138413314;
    v19 = v8;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%@] Clip card event with bundleID: %{public}@ itemID: %{public}@ referral source bundleID: %{public}@ sourceURL: %{public}@", &v18, 0x34u);
  }

  v17 = sub_1002B5560();
  sub_1002B7314(v17, v5);

  if (v6)
  {
    v6[2](v6, 1, 0);
  }
}

- (void)commitSessionID:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10030CA58;
    v11[3] = &unk_10051D1B0;
    v12 = v7;
    sub_1001C8C8C(v8, v11);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Session '%@' not found", v6];
    v10 = ASDErrorWithDescription();
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)placeholderSessionID:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10030CBB0;
    v11[3] = &unk_10051D1B0;
    v12 = v7;
    sub_1001C9374(v8, v11);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Session '%@' not found", v6];
    v10 = ASDErrorWithDescription();
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)startSessionID:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10030CD08;
    v11[3] = &unk_10051D1B0;
    v12 = v7;
    sub_1001C80CC(v8, v11);
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Session '%@' not found", v6];
    v10 = ASDErrorWithDescription();
    (*(v7 + 2))(v7, 0, v10);
  }
}

@end