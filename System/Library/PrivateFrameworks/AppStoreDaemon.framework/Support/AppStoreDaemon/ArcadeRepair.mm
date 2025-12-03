@interface ArcadeRepair
+ (BOOL)shouldAttemptToRepairApplication:(id)application options:(id)options logKey:(id)key;
- (ApplicationRepairDelegate)delegate;
- (NSArray)repairedBundleIDs;
- (_TtC9appstored6LogKey)logKey;
- (int)fairPlayStatus;
- (void)repairApplication:(id)application completionHandler:(id)handler;
- (void)setLogKey:(id)key;
@end

@implementation ArcadeRepair

- (ApplicationRepairDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (int)fairPlayStatus
{
  os_unfair_lock_lock_with_options();
  discoveredFairPlayStatus = self->_discoveredFairPlayStatus;
  os_unfair_lock_unlock(&self->_lock);
  return discoveredFairPlayStatus;
}

- (_TtC9appstored6LogKey)logKey
{
  os_unfair_lock_lock_with_options();
  v3 = self->lock_logKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLogKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  v5 = [keyCopy prependingCategory:@"Arcade"];

  lock_logKey = self->lock_logKey;
  self->lock_logKey = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)repairedBundleIDs
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_repairedBundleIDs copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (BOOL)shouldAttemptToRepairApplication:(id)application options:(id)options logKey:(id)key
{
  applicationCopy = application;
  optionsCopy = options;
  keyCopy = key;
  v10 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v10 ams_activeiTunesAccount];
  if (ams_activeiTunesAccount)
  {
  }

  else
  {
    v12 = sub_1003D2BDC(applicationCopy);

    if (v12)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = keyCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Arcade/%@] Will start arcade recovery to sign in", &v20, 0xCu);
      }

      v14 = 1;
      goto LABEL_20;
    }
  }

  if (!sub_1003D2BDC(applicationCopy))
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v15 = sub_100210B44(ArcadeRepair, applicationCopy, optionsCopy);
  v16 = v15;
  if (v15 + 42587 <= 3 && v15 != -42586 || v15 == -42110 || v15 == -42112)
  {
    v17 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v20 = 138412546;
    v21 = keyCopy;
    v22 = 1024;
    v23 = v16;
    v18 = "[Arcade/%@] Will start arcade fairplay recovery with fairplayStatus: %d";
    goto LABEL_14;
  }

  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = keyCopy;
    v22 = 1024;
    v23 = v16;
    v18 = "[Arcade/%@] Will not attempt arcade recovery with fairplayStatus: %d";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v20, 0x12u);
  }

LABEL_15:

  v14 = 1;
  if ((v16 + 42587 > 3 || v16 == -42586) && v16 != -42112 && v16 != -42110)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v14;
}

- (void)repairApplication:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  if (-[ASDRepairOptions isBackground](self->_options, "isBackground") & 1) != 0 || (+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace, "defaultWorkspace"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 applicationIsInstalled:@"com.apple.AppStore"], v6, (v7))
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceReferenceDate];
    self->_startTime = v9;

    v10 = +[BagService appstoredService];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1002110D0;
    v34[3] = &unk_10051C6E8;
    v34[4] = self;
    v35 = handlerCopy;
    [v10 recentBagWithCompletionHandler:v34];
  }

  else
  {
    logKey = [(ArcadeRepair *)self logKey];
    v12 = ASDLocalizedString();
    v13 = [NSString localizedStringWithFormat:v12];
    v14 = ASDLocalizedString();
    v15 = [AMSDialogRequest requestWithTitle:v13 message:v14];

    v16 = [logKey description];
    [v15 setLogKey:v16];

    v17 = ASDLocalizedString();
    v18 = [NSString localizedStringWithFormat:v17];
    v19 = [AMSDialogAction actionWithTitle:v18 style:0];

    v20 = ASDLocalizedString();
    v21 = [NSString localizedStringWithFormat:v20];
    v22 = [AMSDialogAction actionWithTitle:v21 style:2];

    v41[0] = v19;
    v41[1] = v22;
    v23 = [NSArray arrayWithObjects:v41 count:2];
    [v15 setButtonActions:v23];

    [v15 setDefaultAction:v19];
    v24 = sub_100312260(InteractiveRequestPresenter, v15, 0);
    selectedActionIdentifier = [v24 selectedActionIdentifier];
    identifier = [v22 identifier];
    v27 = [selectedActionIdentifier isEqualToString:identifier];

    v28 = ASDLogHandleForCategory();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = logKey;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] User selected to install distributor", &buf, 0xCu);
      }

      v28 = [[ASDSystemAppMetadata alloc] initWithBundleID:@"com.apple.AppStore"];
      [v28 setUserInitiated:1];
      v30 = sub_1001F6394();
      v40 = v28;
      v31 = [NSArray arrayWithObjects:&v40 count:1];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v37 = sub_1002138C8;
      v38 = &unk_10051D460;
      v39 = logKey;
      [v30 installSystemApps:v31 onPairedDevice:0 withReplyHandler:&buf];
    }

    else if (v29)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = logKey;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] User selected cancel distributor install", &buf, 0xCu);
    }

    v32 = [NSError alloc];
    v33 = [v32 initWithDomain:ASDErrorDomain code:545 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v33);
  }
}

@end