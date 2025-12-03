@interface SbsyncTask
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)main;
@end

@implementation SbsyncTask

- (void)main
{
  if (!self->_logKey)
  {
    v3 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"Sbsync/Default"];
    logKey = self->_logKey;
    self->_logKey = v3;
  }

  v5 = sub_1002A1768(SbsyncTask, 0);
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_logKey;
    *buf = 138412546;
    *&buf[4] = v7;
    v132 = 2114;
    v133 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Starting with subscriptionInfo: %{public}@", buf, 0x16u);
  }

  if (self->_syncType)
  {
    v8 = @"Signout";
  }

  else
  {
    v8 = @"Ocelot";
  }

  v9 = v8;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_logKey;
    *buf = 138412546;
    *&buf[4] = v11;
    v132 = 2114;
    v133 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Starting with sbsyncType: %{public}@", buf, 0x16u);
  }

  v119 = v9;

  v12 = [SbsyncTaskRequestEncoder alloc];
  amsBag = [(Bag *)self->_bag amsBag];
  v14 = [(SbsyncTaskRequestEncoder *)v12 initWithBag:amsBag];

  if (self->_account)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_logKey;
      account = self->_account;
      v18 = v16;
      ams_DSID = [(ACAccount *)account ams_DSID];
      *buf = 138412546;
      *&buf[4] = v16;
      v132 = 2114;
      v133 = ams_DSID;
      v20 = "[%@] Starting with provided account: %{public}@";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
    }
  }

  else
  {
    v21 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v21 ams_activeiTunesAccount];
    v23 = self->_account;
    self->_account = ams_activeiTunesAccount;

    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_logKey;
      v25 = self->_account;
      v18 = v24;
      ams_DSID = [(ACAccount *)v25 ams_DSID];
      *buf = 138412546;
      *&buf[4] = v24;
      v132 = 2114;
      v133 = ams_DSID;
      v20 = "[%@] Starting with active account: %{public}@";
      goto LABEL_15;
    }
  }

  v26 = self->_account;
  if (v26 && v5)
  {
    ams_DSID2 = [(ACAccount *)self->_account ams_DSID];
    self->_initialSubscriptionStatus = sub_1002A18B4(SbsyncTask, ams_DSID2, v5);

    v26 = self->_account;
  }

  if (v26)
  {
    [(SbsyncTaskRequestEncoder *)v14 setAccount:?];
  }

  v118 = [(Bag *)self->_bag URLForKey:@"subscription-keybag-refresh"];
  v120 = v5;
  if (v118)
  {
    v28 = 0;
  }

  else
  {
    v28 = ASDErrorWithTitleAndMessage();
  }

  v121 = v14;
  v29 = v28;
  v30 = objc_opt_new();
  v31 = +[AMSDevice deviceGUID];
  if (v31)
  {
    [v30 setObject:v31 forKeyedSubscript:@"guid"];
  }

  v122 = v30;
  ams_DSID3 = [(ACAccount *)self->_account ams_DSID];
  syncType = self->_syncType;
  v34 = self->_logKey;
  v35 = ams_DSID3;
  objc_opt_self();
  v130 = 0;
  v129 = 0;
  v36 = +[AMSKeybag sharedInstance];
  v128 = 0;
  v37 = [v36 fairplayContextWithError:&v128];
  v38 = v128;

  if (syncType == 1)
  {
    v39 = 314;
  }

  else
  {
    v39 = 313;
  }

  v40 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v34;
    v132 = 2048;
    v133 = v39;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] Getting sbsync data with transactionType: %ld", buf, 0x16u);
  }

  longLongValue = [v35 longLongValue];
  sub_1000106A4(v37, longLongValue, v39, 0, 0, 0, 0, 0, 0, &v130, &v129);
  if (v42)
  {
    v43 = [NSString stringWithFormat:@"Failed to generate sbsync data. Fairplay error status: %d", v42];
    v44 = ASDErrorWithTitleAndMessage();

    v45 = 0;
    v38 = v44;
    v46 = v122;
  }

  else
  {
    v46 = v122;
    if (v129)
    {
      v47 = [NSData alloc];
      v45 = [v47 initWithBytesNoCopy:v130 length:v129 deallocator:&stru_1005205E0];
    }

    else
    {
      v45 = 0;
    }
  }

  v48 = v38;

  v49 = v38;
  if (v45)
  {
    v50 = [v45 base64EncodedStringWithOptions:0];
    [v46 setObject:v50 forKeyedSubscript:@"sbsync"];
  }

  if (self->_syncType == 1)
  {
    [v46 setObject:@"opt-out" forKeyedSubscript:@"action"];
  }

  v51 = v29;
  if (v49)
  {
    v52 = v49;
    v51 = v49;
  }

  v53 = v51;
  if (v53)
  {
    v54 = 0;
    v55 = v120;
    goto LABEL_85;
  }

  if (self->_timeout <= 0.0)
  {
    v62 = [(SbsyncTaskRequestEncoder *)v121 requestWithMethod:4 URL:v118 parameters:v46];
    v126 = 0;
    v61 = [v62 resultWithError:&v126];
    v63 = v126;
  }

  else
  {
    v56 = +[NSDate date];
    [v56 timeIntervalSinceReferenceDate];
    v58 = v57 - self->_startTime;

    v59 = self->_timeout - v58;
    if (v59 <= 0.0)
    {
      v53 = ASDErrorWithTitleAndMessage();
      v61 = 0;
      goto LABEL_54;
    }

    v60 = [(SbsyncTaskRequestEncoder *)v121 requestWithMethod:4 URL:v118 parameters:v46];
    v127 = 0;
    v61 = [v60 resultWithTimeout:&v127 error:v59];
    v62 = v127;

    if (!v62)
    {
      v53 = 0;
      goto LABEL_52;
    }

    if (ASDErrorIsEqual())
    {
      ASDErrorWithUnderlyingErrorAndDescription();
    }

    else
    {
      ASDErrorWithSafeUserInfo();
    }
    v63 = ;
  }

  v53 = v63;
LABEL_52:

LABEL_54:
  v64 = self->_subscriptionDuration;
  if (v64)
  {
    v65 = v64;
    has_internal_content = os_variant_has_internal_content();

    if (has_internal_content)
    {
      stringValue = [(NSNumber *)self->_subscriptionDuration stringValue];
      [v61 setValue:stringValue forHTTPHeaderField:@"X-iTMS-ValidityDurationInSeconds"];
    }
  }

  v117 = v61;
  if (!v53)
  {
    v69 = [(AMSURLSession *)self->_urlSession dataTaskPromiseWithRequest:v61];
    v70 = v69;
    if (self->_timeout == 0.0)
    {
      v124 = 0;
      v68 = [v69 resultWithError:&v124];
      v76 = v124;
      v77 = v76;
      if (v76)
      {
        userInfo = [v76 userInfo];
        v79 = [userInfo objectForKeyedSubscript:@"AMSServerErrorCode"];

        if (v79 && [v79 isEqualToNumber:&off_100547938])
        {
          v80 = ASDErrorWithDescription();
        }

        else
        {
          v80 = ASDErrorWithSafeUserInfo();
        }

        v53 = v80;
      }

      else
      {
        v53 = 0;
      }

LABEL_82:
      if (v53)
      {
        goto LABEL_83;
      }

      object = [v68 object];
      v91 = [object objectForKeyedSubscript:@"subKeyBag"];

      if (!v91)
      {
        v105 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          v106 = self->_logKey;
          *buf = 138412290;
          *&buf[4] = v106;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "[%@] Subscribed status unchanged due to sbKeyBag not in response", buf, 0xCu);
        }

        v53 = 0;
        self->_subscriptionStatus = self->_initialSubscriptionStatus;
        v54 = 1;
        goto LABEL_84;
      }

      v116 = [object objectForKeyedSubscript:@"subKeyBag"];
      v92 = [[NSData alloc] initWithBase64EncodedString:v116 options:0];
      ams_DSID4 = [(ACAccount *)self->_account ams_DSID];
      v94 = self->_logKey;
      v115 = ams_DSID4;
      v95 = v94;
      v123 = v92;
      v111 = objc_opt_self();
      v96 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v95;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "[%@] Importing sbKeyBag", buf, 0xCu);
      }

      v114 = v95;

      v97 = +[AMSKeybag sharedInstance];
      *buf = 0;
      [v97 fairplayContextWithError:buf];
      v98 = *buf;

      v113 = v98;
      v99 = ASDErrorWithSafeUserInfo();
      v130 = 0;
      LODWORD(v128) = 0;
      [v123 bytes];
      [v123 length];

      sub_100018980();
      if (v100)
      {
        v100 = [NSString stringWithFormat:@"Failed to import sbsync data. Fairplay error status: %d", v100];
        v102 = ASDErrorWithTitleAndMessage();

        v112 = 0;
        v99 = v102;
        v103 = v115;
      }

      else
      {
        if (!v130)
        {
          v112 = 0;
          v103 = v115;
          goto LABEL_104;
        }

        v100 = sub_1002A1D0C(v111, v130, v128);
        v103 = v115;
        v112 = sub_1002A18B4(SbsyncTask, v115, v100);
        sub_1000660A8(v130);
      }

LABEL_104:
      v107 = v99;
      v54 = v99 == 0;

      v53 = v99;
      if (!v99)
      {
        self->_subscriptionStatus = v112;
      }

      v108 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = self->_logKey;
        subscriptionStatus = self->_subscriptionStatus;
        *buf = 138412546;
        *&buf[4] = v109;
        v132 = 2048;
        v133 = subscriptionStatus;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "[%@] Subscribed status updated to: %ld", buf, 0x16u);
      }

      goto LABEL_84;
    }

    v71 = +[NSDate date];
    [v71 timeIntervalSinceReferenceDate];
    v73 = v72 - self->_startTime;

    if (self->_timeout - v73 <= 0.0)
    {
      v53 = ASDErrorWithTitleAndMessage();
      v68 = 0;
      goto LABEL_82;
    }

    v125 = 0;
    v68 = [v70 resultWithTimeout:&v125 error:?];
    v74 = v125;
    if (!v74)
    {
      v53 = 0;
LABEL_81:

      goto LABEL_82;
    }

    if (ASDErrorIsEqual())
    {
      v75 = ASDErrorWithUnderlyingErrorAndDescription();
    }

    else
    {
      userInfo2 = [v74 userInfo];
      v75 = [userInfo2 objectForKeyedSubscript:@"AMSServerErrorCode"];

      if (!v75 || ![v75 isEqualToNumber:&off_100547938])
      {
        v82 = ASDErrorWithSafeUserInfo();
LABEL_80:
        v53 = v82;

        goto LABEL_81;
      }
    }

    v82 = ASDErrorWithDescription();
    goto LABEL_80;
  }

  v68 = 0;
LABEL_83:
  object = 0;
  v54 = 0;
LABEL_84:

  v55 = v120;
LABEL_85:
  v84 = +[NSDate date];
  [v84 timeIntervalSinceReferenceDate];
  v86 = v85 - self->_startTime;

  v87 = ASDLogHandleForCategory();
  v88 = v87;
  if (v54)
  {
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v89 = self->_logKey;
      v90 = self->_subscriptionStatus;
      *buf = 138412802;
      *&buf[4] = v89;
      v132 = 2048;
      v133 = v90;
      v134 = 2048;
      v135 = v86;
      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "[%@] Successfully completed with subscription status: %ld time: %f", buf, 0x20u);
    }

    notify_post("com.apple.appstored.ASDArcadeSubscriptionBagUpdatedNotification");
    [(Task *)self completeWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v104 = self->_logKey;
      *buf = 138412802;
      *&buf[4] = v104;
      v132 = 2114;
      v133 = v53;
      v134 = 2048;
      v135 = v86;
      _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "[%@] Encountered error: %{public}@ time: %f", buf, 0x20u);
    }

    [(Task *)self completeWithError:v53];
  }
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  sessionCopy = session;
  taskCopy = task;
  requestCopy = request;
  completionCopy = completion;
  v14 = off_100506460;
  if (self)
  {
    self->_displayingDialog = 1;
    if (self->_userInitiated)
    {
      v14 = off_1005063C8;
    }
  }

  v15 = objc_alloc_init(*v14);
  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      logKey = self->_logKey;
    }

    else
    {
      logKey = 0;
    }

    *buf = 138412546;
    v22 = logKey;
    v23 = 2114;
    v24 = requestCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Presenting dialog request: %{public}@", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002A1BD4;
  v19[3] = &unk_10051E068;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [v15 presentDialogRequest:requestCopy resultHandler:v19];
}

@end