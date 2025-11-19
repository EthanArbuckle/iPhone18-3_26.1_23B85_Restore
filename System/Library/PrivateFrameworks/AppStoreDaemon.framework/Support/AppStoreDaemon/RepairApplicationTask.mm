@interface RepairApplicationTask
- (void)mainWithCompletionHandler:(id)a3;
- (void)repair:(id)a3 needsToReleaseBlockingCallerWithReason:(id)a4;
- (void)repair:(id)a3 wantsToRelaunchApplication:(id)a4;
@end

@implementation RepairApplicationTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.RepairRequest"];
  +[NSDate timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [*(&self->_applicationRepair + 2) bundleID];

  if (v8)
  {
    v9 = [*(&self->_applicationRepair + 2) bundleID];
    v10 = [ApplicationProxy proxyForBundleID:v9];
  }

  else
  {
    v11 = [*(&self->_applicationRepair + 2) bundlePath];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [ApplicationProxy alloc];
    v9 = [*(&self->_applicationRepair + 2) bundlePath];
    v10 = [(ApplicationProxy *)v12 initWithBundlePath:v9];
  }

  p_isa = &v10->super.isa;

  if (p_isa)
  {
    v14 = [_TtC9appstored6LogKey alloc];
    v15 = [p_isa[15] bundleIdentifier];
    v16 = [(LogKey *)v14 initWithCategory:v15];

    if ([FactoryApplicationRepair shouldAttemptToRepairApplication:p_isa options:*(&self->_applicationRepair + 2) logKey:v16])
    {
      v17 = [FactoryApplicationRepair alloc];
      v18 = [*(&self->_options + 2) processInfo];
      v19 = sub_100261F20(&v17->super.isa, p_isa, v18);
      v20 = *(&self->super._finished + 1);
      *(&self->super._finished + 1) = v19;
    }

    if (!*(&self->super._finished + 1))
    {
      if ([ArcadeRepair shouldAttemptToRepairApplication:p_isa options:*(&self->_applicationRepair + 2) logKey:v16])
      {
        v22 = sub_10021068C([ArcadeRepair alloc], p_isa, *(&self->_applicationRepair + 2));
        v23 = *(&self->super._finished + 1);
        *(&self->super._finished + 1) = v22;
      }

      if (!*(&self->super._finished + 1))
      {
        if ([VPPRepair shouldAttemptToRepairApplication:p_isa options:*(&self->_applicationRepair + 2) logKey:v16])
        {
          v24 = sub_100229EEC([VPPRepair alloc], p_isa, *(&self->_applicationRepair + 2));
          v25 = *(&self->super._finished + 1);
          *(&self->super._finished + 1) = v24;
        }

        if (!*(&self->super._finished + 1))
        {
          if ([FairPlayRepair shouldAttemptToRepairApplication:p_isa options:*(&self->_applicationRepair + 2) logKey:v16])
          {
            v26 = sub_1001D5E50([FairPlayRepair alloc], p_isa, *(&self->_applicationRepair + 2));
            v27 = *(&self->super._finished + 1);
            *(&self->super._finished + 1) = v26;
          }

          if (!*(&self->super._finished + 1) && [_TtC9appstored26CodeSignatureVersionRepair shouldAttemptToRepairApplication:p_isa options:*(&self->_applicationRepair + 2) logKey:v16])
          {
            v28 = [_TtC9appstored26CodeSignatureVersionRepair alloc];
            v29 = sub_1003D0F60(p_isa);
            v30 = [(CodeSignatureVersionRepair *)v28 initWithBundleID:v29 requestToken:*(&self->_options + 2)];
            v31 = *(&self->super._finished + 1);
            *(&self->super._finished + 1) = v30;
          }
        }
      }
    }

    if ([_TtC9appstored20ALDApplicationRepair shouldAttemptToRepairApplication:p_isa options:*(&self->_applicationRepair + 2) logKey:v16])
    {
      v32 = -[ALDApplicationRepair initWithFairPlayStatus:]([_TtC9appstored20ALDApplicationRepair alloc], "initWithFairPlayStatus:", [*(&self->_applicationRepair + 2) fairplayStatus]);
      v33 = *(&self->super._finished + 1);
      *(&self->super._finished + 1) = v32;
    }

    v34 = *(&self->super._finished + 1);
    if (v34)
    {
      v35 = [v34 repairType];
      v36 = +[NSNotificationCenter defaultCenter];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100279658;
      v53[3] = &unk_10051F7D0;
      v53[4] = self;
      v37 = [v36 addObserverForName:@"RequestPresenterWillPresentUINotification" object:0 queue:0 usingBlock:v53];
      [*(&self->super._finished + 1) setDelegate:self];
      [*(&self->super._finished + 1) setLogKey:v16];
      v38 = *(&self->super._finished + 1);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100279670;
      v46[3] = &unk_10051F7F8;
      v52 = 0;
      v46[4] = self;
      v47 = v36;
      v48 = v37;
      v39 = v35;
      v49 = v39;
      v51 = v7;
      v50 = v4;
      v40 = v37;
      v41 = v36;
      [v38 repairApplication:p_isa completionHandler:v46];
    }

    else
    {
      v42 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v16;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "[%@] Could not find handler to repair application", buf, 0xCu);
      }

      if (objc_getProperty(self, v43, 66, 1))
      {
        Property = objc_getProperty(self, v44, 66, 1);
        (*(Property + 2))(Property, 0, 0, 0);
      }

      v41 = ASDErrorWithTitleAndMessage();
      v39 = @"Unknown";
      sub_1002797A0(self, v41, 0, @"Unknown", 0, v4, v7);
    }

    goto LABEL_33;
  }

LABEL_8:
  v21 = *(&self->_requestToken + 2);
  if (v21)
  {
    (*(v21 + 16))(v21, 0, 0, 0);
  }

  (*(v4 + 2))(v4, 0);
LABEL_33:
}

- (void)repair:(id)a3 wantsToRelaunchApplication:(id)a4
{
  v5 = a4;
  v6 = sub_100214C6C([ApplicationContext alloc], v5);

  v7 = [*(&self->_applicationRepair + 2) relaunchOptions];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100279AC0;
  v8[3] = &unk_10051B5C0;
  v8[4] = self;
  [v6 launchApplicationWithOptions:v7 completionHandler:v8];
}

- (void)repair:(id)a3 needsToReleaseBlockingCallerWithReason:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (self && objc_getProperty(self, v6, 66, 1))
  {
    Property = objc_getProperty(self, v8, 66, 1);
    (*(Property + 2))(Property, 0, 0, v7);
    v10 = *(&self->_requestToken + 2);
    *(&self->_requestToken + 2) = 0;
  }
}

@end