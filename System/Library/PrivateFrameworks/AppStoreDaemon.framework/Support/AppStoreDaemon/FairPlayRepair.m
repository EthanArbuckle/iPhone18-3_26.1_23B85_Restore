@interface FairPlayRepair
+ (BOOL)shouldAttemptToRepairApplication:(id)a3 options:(id)a4 logKey:(id)a5;
- (ApplicationRepairDelegate)delegate;
- (FairPlayRepair)init;
- (NSArray)repairedBundleIDs;
- (_TtC9appstored6LogKey)logKey;
- (int)fairPlayStatus;
- (void)repairApplication:(id)a3 completionHandler:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setLogKey:(id)a3;
@end

@implementation FairPlayRepair

- (FairPlayRepair)init
{
  v6.receiver = self;
  v6.super_class = FairPlayRepair;
  v2 = [(FairPlayRepair *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(UnfairLock);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (ApplicationRepairDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001D5FD8;
  v10 = sub_1001D5FE8;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D5FF0;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D60D4;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100379C5C(lock, v7);
}

- (int)fairPlayStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D61A4;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_TtC9appstored6LogKey)logKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001D5FD8;
  v10 = sub_1001D5FE8;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D62C0;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setLogKey:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D63A4;
  v7[3] = &unk_10051B570;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  sub_100379C5C(lock, v7);
}

- (NSArray)repairedBundleIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001D5FD8;
  v10 = sub_1001D5FE8;
  v11 = 0;
  lock = self->_lock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D64FC;
  v5[3] = &unk_10051B638;
  v5[4] = self;
  v5[5] = &v6;
  sub_100379C5C(lock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (BOOL)shouldAttemptToRepairApplication:(id)a3 options:(id)a4 logKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((sub_1003D2BDC(v7) & 1) == 0 && ((sub_1003D3068(v7) & 1) != 0 || v7 && [v7[15] isBeta]))
  {
    if (os_variant_has_internal_content() && [v8 fairplayStatus])
    {
      v11 = [v8 fairplayStatus];
    }

    else
    {
      v12 = sub_1003D2550(v7);
      v13 = [v12 fileSystemRepresentation];

      if (!v13)
      {
        goto LABEL_15;
      }

      v11 = sub_1001D6788(FairPlayRepair, v7, v8);
    }

    v14 = v11;
    if (v11)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = v9;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[FP/%{public}@] Will start fairplay recovery with fairplayStatus: %d", &v17, 0x12u);
      }

      v10 = 1;
LABEL_18:

      goto LABEL_19;
    }

LABEL_15:
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = v9;
      v19 = 1024;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[FP/%{public}@] Will not attempt fairplay recovery do to launchable fairplayStatus: %d", &v17, 0x12u);
    }

    v10 = 0;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (void)repairApplication:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (self)
  {
    v8 = sub_100227468();
    v9 = [v8 isConnected];

    if (v9)
    {
      v10 = v7;
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      v64 = 0;
      v65 = &v64;
      v66 = 0x3032000000;
      v67 = sub_1001D5FD8;
      v68 = sub_1001D5FE8;
      v69 = 0;
      v11 = sub_10020A368([RefetchKeybag alloc], v10);
      v12 = [(ASDRepairOptions *)self->_options isBackground];
      if (v11)
      {
        *(v11 + 24) = v12 ^ 1;
      }

      v13 = dispatch_semaphore_create(0);
      v14 = sub_10020A3C4(v11);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1001D7198;
      *&buf[24] = &unk_10051BA78;
      v76 = &v70;
      v77 = &v64;
      v15 = v13;
      v75 = v15;
      [v14 resultWithCompletion:buf];

      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v16 = *(v65 + 40);
      if (v16)
      {
        v17 = v16;
      }

      v63 = *(v71 + 24);

      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(&v70, 8);

      v18 = v16;
      v19 = sub_1001D6788(FairPlayRepair, self->_application, self->_options);
      lock = self->_lock;
      v64 = _NSConcreteStackBlock;
      v65 = 3221225472;
      v66 = sub_1001D7188;
      v67 = &unk_10051BA50;
      v68 = self;
      LODWORD(v69) = v19;
      sub_100379C5C(lock, &v64);
      if (v19 + 42597 <= 1)
      {
        if (([(ASDRepairOptions *)self->_options isBackground]& 1) != 0)
        {
          v21 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            logKey = self->_logKey;
            *buf = 138543362;
            *&buf[4] = logKey;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[FP/%{public}@] Not showing family leave dialog for background repair", buf, 0xCu);
          }
        }

        else
        {
          v35 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(&self->_application->super.isa)];
          v62 = ASDErrorWithDescription();
          v36 = [(FairPlayRepair *)self delegate];
          [v36 repair:self needsToReleaseBlockingCallerWithReason:v62];

          v37 = [AMSDialogRequest alloc];
          v38 = ASDLocalizedString();
          v39 = ASDLocalizedString();
          v40 = [v37 initWithTitle:v38 message:v39];

          v41 = [(FairPlayRepair *)self logKey];
          v42 = [v41 description];
          [v40 setLogKey:v42];

          v43 = ASDLocalizedString();
          v44 = [AMSDialogAction actionWithTitle:v43 style:2];

          v70 = v44;
          v45 = [NSArray arrayWithObjects:&v70 count:1];
          [v40 setButtonActions:v45];

          sub_100406DAC(v40, @"fairPlayRepairFamilyLeave");
          sub_10022DA8C(v44, @"cancel");
          if (sub_10030B58C())
          {
            v46 = ASDLocalizedString();
            v47 = [AMSDialogAction actionWithTitle:v46];

            [v40 addButtonAction:v47];
          }

          else
          {
            v47 = 0;
          }

          v48 = objc_alloc_init(InteractiveRequestPresenter);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1001D7208;
          *&buf[24] = &unk_10051BAA0;
          v75 = self;
          v76 = v47;
          v21 = v35;
          v77 = v21;
          v49 = v47;
          [(InteractiveRequestPresenter *)v48 presentDialogRequest:v40 resultHandler:buf];
        }
      }

      if (v63)
      {
        v50 = sub_1003D0F60(&self->_application->super.isa);
        v51 = v50 == 0;

        if (!v51)
        {
          v52 = sub_1003D0F60(&self->_application->super.isa);
          v70 = v52;
          v53 = [NSArray arrayWithObjects:&v70 count:1];
          v54 = self->_lock;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1001D6548;
          *&buf[24] = &unk_10051B570;
          v75 = self;
          v55 = v53;
          v76 = v55;
          sub_100379C5C(v54, buf);
        }

        v34 = 1;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      if (([(ASDRepairOptions *)self->_options isBackground]& 1) != 0)
      {
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = self->_logKey;
          *buf = 138543362;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[FP/%{public}@] Not showing internet connection alert for background repair", buf, 0xCu);
        }
      }

      else
      {
        v25 = [AMSDialogRequest alloc];
        v26 = ASDLocalizedString();
        v27 = ASDLocalizedString();
        v28 = [v25 initWithTitle:v26 message:v27];

        v29 = [(FairPlayRepair *)self logKey];
        v30 = [v29 description];
        [v28 setLogKey:v30];

        v31 = ASDLocalizedString();
        v32 = [AMSDialogAction actionWithTitle:v31 style:0];

        *buf = v32;
        v33 = [NSArray arrayWithObjects:buf count:1];
        [v28 setButtonActions:v33];

        sub_100406DAC(v28, @"fairPlayRepairNetworkRequired");
        sub_10022DA8C(v32, @"ok");
        sub_1003124D4(InteractiveRequestPresenter, v28, 0);
      }

      v34 = 0;
      v18 = 0;
    }

    v56 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [(FairPlayRepair *)self logKey];
      *buf = 138543874;
      *&buf[4] = v57;
      *&buf[12] = 1024;
      *&buf[14] = v34;
      *&buf[18] = 2114;
      *&buf[20] = v18;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[FP/%{public}@] Repair complete with result: %d error: %{public}@", buf, 0x1Cu);
    }

    if (v34)
    {
      if (([(ASDRepairOptions *)self->_options isBackground]& 1) != 0)
      {
        v58 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = self->_logKey;
          *buf = 138543362;
          *&buf[4] = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[FP/%{public}@] Not launching app following background repair", buf, 0xCu);
        }
      }

      else
      {
        v61 = [(FairPlayRepair *)self delegate];
        [v61 repair:self wantsToRelaunchApplication:self->_application];
      }

      self = 0;
    }

    else
    {
      v60 = v18;
      self = v18;
    }
  }

  v6[2](v6, self);
}

@end