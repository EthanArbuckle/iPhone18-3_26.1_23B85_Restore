@interface VerifyReceiptsTask
- (VerifyReceiptsTask)init;
- (void)main;
@end

@implementation VerifyReceiptsTask

- (VerifyReceiptsTask)init
{
  v8.receiver = self;
  v8.super_class = VerifyReceiptsTask;
  v2 = [(MigrateToManagedTask *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    expiring = v2->_expiring;
    v2->_expiring = v3;

    v5 = +[NSMutableDictionary dictionary];
    revoked = v2->_revoked;
    v2->_revoked = v5;
  }

  return v2;
}

- (void)main
{
  if (!self || !self->_logKey)
  {
    v3 = objc_alloc_init(_TtC9appstored6LogKey);
    logKey = self->_logKey;
    self->_logKey = v3;
  }

  selfa = self;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_logKey;
    *buf = 138412290;
    v74 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Starting receipt refresh", buf, 0xCu);
  }

  if (os_variant_has_internal_content())
  {
    v7 = sub_1003D6554();
    if ([v7 count])
    {
    }

    else
    {
      v8 = sub_1003D6518();
      v9 = [v8 count] == 0;

      if (v9)
      {
        goto LABEL_13;
      }
    }

    v10 = sub_1003D6518();
    qaVerficationExpiredApps = self->_qaVerficationExpiredApps;
    self->_qaVerficationExpiredApps = v10;

    v12 = sub_1003D6554();
    qaVerficationRevokedApps = self->_qaVerficationRevokedApps;
    self->_qaVerficationRevokedApps = v12;

    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_logKey;
      v16 = self->_qaVerficationRevokedApps;
      v17 = self->_qaVerficationExpiredApps;
      *buf = 138412802;
      v74 = v15;
      v75 = 2114;
      v76 = v16;
      v77 = 2114;
      v78 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Including the following for QA verification. revoked: %{public}@ expired: %{public}@", buf, 0x20u);
    }
  }

LABEL_13:
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1002D73D0;
  v51[3] = &unk_100521A00;
  v51[4] = self;
  v51[5] = &v52;
  v51[6] = &v56;
  sub_1003D31A8(ApplicationProxy, 0, v51);
  if (v53[3] >= 1)
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_logKey;
      v20 = v53[3];
      *buf = 138412546;
      v74 = v19;
      v75 = 2048;
      v76 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Attempted migration for %ld app(s)", buf, 0x16u);
    }
  }

  v49 = [(NSMutableDictionary *)self->_revoked count];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = self->_revoked;
  v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v61 objects:buf count:16];
  if (!v22)
  {

    v23 = 0;
    v25 = 0;
    v24 = 0;
    if (v49 <= 0)
    {
      goto LABEL_49;
    }

    goto LABEL_36;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = *v62;
  while (2)
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v62 != v26)
      {
        objc_enumerationMutation(v21);
      }

      v28 = [(NSMutableDictionary *)selfa->_revoked objectForKeyedSubscript:*(*(&v61 + 1) + 8 * i)];
      v29 = v28;
      if (v24)
      {
        if (v23)
        {

          goto LABEL_30;
        }

        v23 = sub_1003D266C(v28);
      }

      else
      {
        v30 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v28)];

        v24 = sub_1003D266C(v29);
        v25 = v30;
      }
    }

    v22 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v61 objects:buf count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_30:

  if (v49 > 0)
  {
    if (v24)
    {
      if (v49 == 2 && v23)
      {
        v31 = ASDLocalizedString();
        v48 = [NSString localizedStringWithFormat:v31, v24, v23];
      }

      else
      {
        v31 = ASDLocalizedString();
        v48 = [NSString localizedStringWithFormat:v31, v49 - 1, v24];
      }

      goto LABEL_38;
    }

LABEL_36:
    v31 = ASDLocalizedString();
    v48 = [NSString localizedStringWithFormat:v31, v49];
    v24 = 0;
LABEL_38:

    if (v25)
    {
      v32 = [[NSString alloc] initWithFormat:@"itms-appss://?action=lookup&ids=%@", v25];
      v33 = [NSURL URLWithString:v32];
    }

    else
    {
      v33 = 0;
    }

    v34 = ASDLocalizedString();
    v35 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = selfa->_logKey;
      *v65 = 138413058;
      v66 = v36;
      v67 = 2114;
      v68 = v34;
      v69 = 2114;
      v70 = v48;
      v71 = 2114;
      v72 = v33;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Posting revoked title: %{public}@ body: %{public}@ launchURL: %{public}@", v65, 0x2Au);
    }

    v37 = objc_alloc_init(ASDPostBulletinRequestOptions);
    [v37 setMessage:v48];
    [v37 setTitle:v34];
    [v37 setLaunchURL:v33];
    [v37 setDestinations:12];
    v38 = [[PostBulletinRequestTask alloc] initForClient:0 withOptions:v37];
    v60 = 0;
    [(Task *)selfa runSubTask:v38 returningError:&v60];
    v39 = v60;
    v40 = ASDLogHandleForCategory();
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = selfa->_logKey;
        *v65 = 138412546;
        v66 = v42;
        v67 = 2114;
        v68 = v39;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%@] Error posting. Error: %{public}@", v65, 0x16u);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v43 = selfa->_logKey;
      *v65 = 138412290;
      v66 = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Posting complete", v65, 0xCu);
    }
  }

LABEL_49:

  v44 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = selfa->_logKey;
    v46 = v57[3];
    *buf = 138412546;
    v74 = v45;
    v75 = 2048;
    v76 = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%@] Receipt refresh complete for %ld app(s)", buf, 0x16u);
  }

  selfa->super.super._success = 1;
  objc_setProperty_atomic_copy(selfa, v47, 0, 32);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
}

@end