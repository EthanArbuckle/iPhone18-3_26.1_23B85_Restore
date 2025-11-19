id sub_100259550(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [[NSURLComponents alloc] initWithURL:a1 resolvingAgainstBaseURL:0];
    [v2 setQueryItems:0];
    v1 = [v2 URL];
  }

  return v1;
}

void sub_100259614(id a1)
{
  v1 = objc_alloc_init(ActiveAccountObserver);
  v2 = qword_1005AA940;
  qword_1005AA940 = v1;
}

uint64_t sub_100259BE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100259C0C(uint64_t a1, uint64_t a2)
{
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] oneAccountDSID returned: %lld", &v10, 0x16u);
  }

  v6 = [NSNumber numberWithUnsignedLongLong:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100259E4C(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  v2 = sub_1002380D8(v1, @"AccountDidChangePreviousActiveDSID");
  if (v2)
  {
    v3 = +[ACAccountStore ams_sharedAccountStore];
    v4 = [v3 accountWithIdentifier:v2];

    if (v4)
    {
      v5 = [v4 ams_DSID];
    }

    else
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 138543618;
        *&v10[4] = objc_opt_class();
        *&v10[12] = 2114;
        *&v10[14] = v2;
        v8 = *&v10[4];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to find sandbox ACAccount with ID: %{public}@", v10, 0x16u);
      }

      v5 = 0;
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 setObject:v5 forKeyedSubscript:@"AccountDidChangePreviousActiveDSID"];
      }
    }
  }

  else
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v5 = 0;
  }

  v9 = [NSNotificationCenter defaultCenter:*v10];
  [v9 postNotificationName:@"AccountStoreSandboxAccountDidChange" object:0 userInfo:v6];
}

void sub_10025A0C4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = sub_1002380D8(v2, @"ID");
  if (v3)
  {
    v4 = +[ACAccountStore ams_sharedAccountStore];
    v5 = [v4 accountWithIdentifier:v3];

    if (v5)
    {
      v60 = [v5 ams_DSID];
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2114;
        *&buf[14] = v3;
        v7 = *&buf[4];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to find ACAccount with ID: %{public}@", buf, 0x16u);
      }

      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
  }

  v8 = [v2 objectForKeyedSubscript:@"active"];

  if (v2)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1002378BC(v2, @"active", 0);
  }

  v11 = [v2 objectForKeyedSubscript:@"signout"];

  v12 = 0;
  if (v2 && v11)
  {
    v12 = sub_1002378BC(v2, @"signout", 0);
  }

  v13 = +[ACAccountStore ams_sharedAccountStore];
  v14 = [v13 ams_activeiTunesAccount];

  if (v14)
  {
    v15 = [v14 ams_DSID];

    if (!v15)
    {
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        v54 = v53;
        v55 = [v14 hashedDescription];
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v55;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Current iTunes account has no DSID: %{public}@", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  v17 = ASDLogHandleForCategory();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (!v18)
    {
      goto LABEL_29;
    }

    v19 = objc_opt_class();
    *buf = 138543874;
    *&buf[4] = v19;
    *&buf[12] = 2114;
    *&buf[14] = v60;
    *&buf[22] = 1024;
    LODWORD(v63) = v10;
    v20 = v19;
    v21 = "[%{public}@] Account signout notification accountID: %{public}@ active: %{BOOL}d";
  }

  else
  {
    if (!v18)
    {
      goto LABEL_29;
    }

    v22 = objc_opt_class();
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 2114;
    *&buf[14] = v60;
    *&buf[22] = 1024;
    LODWORD(v63) = v10;
    v20 = v22;
    v21 = "[%{public}@] Account account changed notification accountID: %{public}@ active: %{BOOL}d";
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v21, buf, 0x1Cu);

LABEL_29:
  v23 = *(*(a1 + 40) + 8);
  v24 = v14;
  objc_opt_self();
  if (!(v24 | v23))
  {
    goto LABEL_30;
  }

  if (!v24 || v23)
  {
    if (v24 || !v23)
    {
      v44 = [v24 ams_DSID];
      if (v44)
      {
        v45 = v44;
        v46 = [v23 ams_DSID];
        if (v46)
        {
          v47 = v46;
          [v24 ams_DSID];
          v48 = v59 = v3;
          v49 = [v23 ams_DSID];
          v57 = [v48 isEqualToNumber:v49];

          v3 = v59;
          if ((v57 & 1) == 0)
          {
            v28 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v50 = objc_opt_class();
              v51 = v50;
              v52 = [v24 hashedDescription];
              *buf = 138412546;
              *&buf[4] = v50;
              *&buf[12] = 2114;
              *&buf[14] = v52;
              _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "[%@]: Should notify after iTunes account changed: %{public}@", buf, 0x16u);
            }

            goto LABEL_39;
          }
        }

        else
        {
        }
      }

LABEL_30:

      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138543362;
        *&buf[4] = v26;
        v27 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received account change notification but nothing has changed", buf, 0xCu);
      }

      goto LABEL_42;
    }

    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v56 = objc_opt_class();
      v58 = v56;
      v30 = [v23 hashedDescription];
      *buf = 138412546;
      *&buf[4] = v56;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      v31 = "[%@]: Should notify after iTunes account became inactive: %{public}@";
      goto LABEL_50;
    }
  }

  else
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_opt_class();
      v58 = v29;
      v30 = [v24 hashedDescription];
      *buf = 138412546;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      v31 = "[%@]: Should notify after iTunes account became active: %{public}@";
LABEL_50:
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, v31, buf, 0x16u);
    }
  }

LABEL_39:

  v32 = *(*(a1 + 40) + 8);
  objc_storeStrong((*(a1 + 40) + 8), v14);
  v33 = *(a1 + 40);
  v34 = *(v33 + 40);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10025A918;
  v61[3] = &unk_10051AF98;
  v61[4] = v33;
  sub_100379C5C(v34, v61);
  v35 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_opt_class();
    v37 = v36;
    v38 = [v24 hashedDescription];
    *buf = 138543618;
    *&buf[4] = v36;
    *&buf[12] = 2114;
    *&buf[14] = v38;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting notification after active iTunes account changed: %{public}@", buf, 0x16u);
  }

  v39 = *(a1 + 40);
  v40 = v32;
  v41 = v39;
  objc_opt_self();
  v42 = dispatch_get_global_queue(21, 0);
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10025AC34;
  v63 = &unk_10051B570;
  v64 = v40;
  v65 = v41;
  v43 = v41;
  v25 = v40;
  dispatch_async(v42, buf);

  sub_10025A928(*(a1 + 40), @"account");
LABEL_42:
}

void sub_10025A918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_10025A928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10025AC20;
    block[3] = &unk_10051AF98;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void sub_10025AA4C(uint64_t a1)
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  v4 = *(*(a1 + 32) + 16);
  v5 = [v3 ams_storefront];
  if (v4 && ([v4 isEqualToString:v5] & 1) != 0)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v4;
      v7 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Storefront is the same as %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v5;
      v9 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Storefront changed to %{public}@", &v10, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 16), v5);
    sub_10025A928(*(a1 + 32), @"storefront");
  }
}

void sub_10025AC34(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) ams_DSID];

  if (v3)
  {
    v4 = [*(a1 + 32) ams_DSID];
    [v2 setObject:v4 forKeyedSubscript:@"AccountDidChangePreviousActiveDSID"];
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) hashedDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not posting account change due to no DSID on account: %{public}@", &v7, 0xCu);
    }
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"AccountStorePrimaryAccountDidChange" object:*(a1 + 40) userInfo:v2];
}

void sub_10025B394(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_10025BB14;
    v52 = sub_10025BB24;
    v53 = 0;
    if (sub_10030B4C0())
    {
      v4 = [v3 bundleID];
      v5 = [v4 length] == 0;

      if (!v5)
      {
        v6 = [v3 itemID];
        if (v6)
        {
          v7 = [v3 itemID];
          if (!v7)
          {
LABEL_8:

LABEL_9:
            if (v49[5])
            {
              v11 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = [a1 logKey];
                v13 = v49[5];
                *buf = 138412546;
                v55 = v12;
                v56 = 2114;
                v57 = v13;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Skipping clip card view event because error: %{public}@", buf, 0x16u);
              }

LABEL_37:

              _Block_object_dispose(&v48, 8);
              goto LABEL_38;
            }

            v14 = [v3 bundleID];
            v11 = [a1 getAppUsageSessionForBundleID:v14];

            v15 = objc_alloc_init(AppEvent);
            v16 = [v3 bundleID];
            sub_10023E000(v15, v16, @"bundle_id");

            sub_10023E000(v15, &__kCFBooleanTrue, @"is_clip");
            v17 = [v3 itemID];
            sub_10023E000(v15, v17, @"item_id");

            sub_10023E000(v15, @"clip", @"clip_app_type");
            sub_10023E000(v15, &off_100547560, @"event_type");
            sub_10023E000(v15, &off_100547578, @"count");
            v18 = sub_100228834(v11);

            if (v18)
            {
              v19 = sub_100228834(v11);
              sub_10023E000(v15, v19, @"device_vendor_id");

              v20 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [a1 logKey];
                v22 = [v3 bundleID];
                v23 = sub_100228834(v11);
                *buf = 138412802;
                v55 = v21;
                v56 = 2114;
                v57 = v22;
                v58 = 2114;
                v59 = v23;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Using deviceVendorID: %{public}@ for clip card view", buf, 0x20u);
              }
            }

            v24 = [v3 sourceURL];

            if (v24)
            {
              v25 = [CampaignTokens alloc];
              v26 = [v3 sourceURL];
              v27 = sub_100381860(v25, v26);

              if (v27)
              {
                sub_1001FD4E8(v15, v27);
              }
            }

            v28 = [v3 referrerType];
            if (!v28)
            {
              goto LABEL_23;
            }

            v29 = [v3 referrerType];
            if (v29)
            {
              v30 = [v3 referrerType];
              v31 = [v30 isEqualToString:@"Web Referral"];

              if ((v31 & 1) == 0)
              {
LABEL_23:
                v32 = [v3 referralSourceBundleID];
                if (v32)
                {
                  sub_10023E000(v15, v32, @"clip_ref_source");
                }

                goto LABEL_27;
              }
            }

            else
            {
            }

            v32 = 0;
LABEL_27:
            v33 = [v3 referrerType];

            if (v33)
            {
              v34 = [v3 referrerType];
              sub_10023E000(v15, v34, @"clip_ref_type");
            }

            if ([v3 thirdPartyWithNoAppReferrer])
            {
              sub_10023E000(v15, &__kCFBooleanTrue, @"clip_third_party_with_no_app_referrer");
            }

            v35 = sub_10036C90C();
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_10025BB2C;
            v44[3] = &unk_10051EF58;
            v36 = v15;
            v45 = v36;
            v46 = a1;
            v47 = &v48;
            [v35 modifyUsingTransaction:v44];

            if (v49[5])
            {
              v37 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = [a1 logKey];
                v39 = [v3 bundleID];
                v40 = v49[5];
                *buf = 138412802;
                v55 = v38;
                v56 = 2114;
                v57 = v39;
                v58 = 2114;
                v59 = v40;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Error creating clip card view. Error: %{public}@", buf, 0x20u);
              }
            }

            else
            {
              v37 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v41 = [a1 logKey];
                v42 = sub_1001FC658(AppEvent, 5u);
                v43 = [v3 bundleID];
                *buf = 138412802;
                v55 = v41;
                v56 = 2114;
                v57 = v42;
                v58 = 2114;
                v59 = v43;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Created app event", buf, 0x20u);
              }
            }

            goto LABEL_37;
          }

          v8 = [v3 itemID];
          v9 = [v8 longLongValue] == 0;

          if (!v9)
          {
            goto LABEL_9;
          }
        }
      }
    }

    v10 = ASDErrorWithTitleAndMessage();
    v6 = v49[5];
    v49[5] = v10;
    goto LABEL_8;
  }

LABEL_38:
}

void sub_10025BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10025BB14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10025BB2C(uint64_t a1, void *a2)
{
  v11 = *(a1 + 32);
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v5 = [*(a1 + 40) appEventEntityClass];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = sub_1003F05C0(v3, v4, v5, &obj);

  objc_storeStrong((v6 + 40), obj);
  v8 = [v7 count] != 0;

  return v8;
}

void sub_10025BC18(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (a1)
  {
    if (v16)
    {
      v18 = sub_100381860([CampaignTokens alloc], v16);
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_10036C90C();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10025BD8C;
    v21[3] = &unk_10051EF80;
    v21[4] = a1;
    v22 = v13;
    v23 = v14;
    v26 = a6;
    v24 = v15;
    v25 = v18;
    v20 = v18;
    [v19 modifyUsingTransaction:v21];
  }
}

uint64_t sub_10025BD8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v59 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v59 count:1];
  v6 = [v3 connection];
  v7 = [v4 createAppEventsForBundleIDs:v5 eventType:1 installType:1 connection:v6];

  v8 = [v7 firstObject];
  if (v8)
  {
    v9 = *(a1 + 48);
    if (v9 && ([v9 isEqualToString:@"Web Referral"] & 1) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 56);
    }

    v11 = [*(a1 + 32) getAppUsageSessionForBundleID:*(a1 + 40)];
    v12 = sub_100228834(v11);

    v46 = v11;
    if (v12)
    {
      v13 = sub_100228834(v11);
      sub_10023E000(v8, v13, @"device_vendor_id");

      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) logKey];
        v16 = *(a1 + 40);
        v17 = sub_100228834(v11);
        *buf = 138412802;
        v54 = v15;
        v55 = 2114;
        v56 = v16;
        v57 = 2114;
        v58 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Using deviceVendorID: %{public}@ for clip install", buf, 0x20u);
      }
    }

    v48 = v7;
    v18 = [NSNumber numberWithBool:*(a1 + 72), v46];
    sub_10023E000(v8, v18, @"clip_third_party_with_no_app_referrer");

    if (v10)
    {
      sub_10023E000(v8, v10, @"clip_ref_source");
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      sub_10023E000(v8, v19, @"clip_ref_type");
    }

    v20 = *(a1 + 64);
    if (v20)
    {
      sub_1001FD4E8(v8, v20);
    }

    sub_10023E000(v8, @"clip", @"clip_app_type");
    v52 = v8;
    v21 = [NSArray arrayWithObjects:&v52 count:1];
    v22 = [*(a1 + 32) appEventEntityClass];
    v50 = 0;
    v23 = sub_1003F05C0(v3, v21, v22, &v50);
    v24 = v50;
    [v23 count];

    v25 = ASDLogHandleForCategory();
    v26 = v25;
    if (v24)
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v27 = [*(a1 + 32) logKey];
      v28 = *(a1 + 40);
      *buf = 138412802;
      v54 = v27;
      v55 = 2114;
      v56 = v28;
      v57 = 2114;
      v58 = v24;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Error creating entity. Error: %{public}@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      v27 = [*(a1 + 32) logKey];
      v31 = *(a1 + 40);
      *buf = 138412546;
      v54 = v27;
      v55 = 2114;
      v56 = v31;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Created clip app event", buf, 0x16u);
    }

LABEL_24:
    v32 = sub_1001FCCDC(v8);
    v33 = [NSNumber numberWithBool:*(a1 + 72)];
    sub_10023E000(v32, v33, @"clip_third_party_with_no_app_referrer");

    if (v10)
    {
      sub_10023E000(v32, v10, @"clip_ref_source");
    }

    v34 = *(a1 + 48);
    if (v34)
    {
      sub_10023E000(v32, v34, @"clip_ref_type");
    }

    v51 = v32;
    v35 = [NSArray arrayWithObjects:&v51 count:1];
    v49 = 0;
    v36 = sub_1003F07EC(v3, v35, &v49);
    v37 = v49;
    v38 = [v36 count];

    v39 = ASDLogHandleForCategory();
    v40 = v39;
    if (v37)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = [*(a1 + 32) logKey];
        v42 = *(a1 + 40);
        *buf = 138412802;
        v54 = v41;
        v55 = 2114;
        v56 = v42;
        v57 = 2114;
        v58 = v37;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Error creating install metadata entity. Error: %{public}@", buf, 0x20u);
LABEL_33:
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v43 = v38 != 0;
      v41 = [*(a1 + 32) logKey];
      v44 = *(a1 + 40);
      *buf = 138412802;
      v54 = v41;
      v55 = 2114;
      v56 = v44;
      v57 = 1024;
      LODWORD(v58) = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Created install metadata with result: %d", buf, 0x1Cu);
      goto LABEL_33;
    }

    v7 = v48;
    goto LABEL_35;
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v29 = [*(a1 + 32) logKey];
    v30 = *(a1 + 40);
    *buf = 138412546;
    v54 = v29;
    v55 = 2114;
    v56 = v30;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%@] [%{public}@] No install events.", buf, 0x16u);
  }

LABEL_35:

  return 1;
}

void sub_10025C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10025C84C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"event_type" equalToValue:&off_100547560];
  v21[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:*(a1 + 32)];
  v21[1] = v5;
  v6 = [NSArray arrayWithObjects:v21 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [v3 connection];
  v9 = sub_1002D3F5C(AppEventEntityCrossfire, v8, v7);

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10025CA28;
  v16[3] = &unk_10051EFA8;
  v17 = v3;
  v15 = *(a1 + 32);
  v10 = v15.i64[0];
  v18 = vextq_s8(v15, v15, 8uLL);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v19 = v11;
  v20 = v12;
  v13 = v3;
  [v9 enumeratePersistentIDsUsingBlock:v16];

  return 1;
}

void sub_10025CA28(uint64_t a1, uint64_t a2)
{
  v4 = [AppEventEntityCrossfire alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 40) logKey];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *buf = 138413058;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Transferring metadata properties: %{public}@ to clip card view event %{public}@", buf, 0x2Au);
  }

  v11 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10025CBC8;
  v13[3] = &unk_10051D338;
  v14 = v6;
  v12 = v6;
  [v11 enumerateKeysAndObjectsUsingBlock:v13];
  ++*(*(*(a1 + 64) + 8) + 24);
}

id sub_10025CC8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
  v6 = [v4 connection];

  v7 = sub_1002D3DF0(AppUsageSessionEntity, v6, v5);

  v8 = [v7 existsInDatabase];
  if (v8)
  {
    v9 = [v7 valueForProperty:@"session_reporter_key"];
    [v7 deleteFromDatabase];
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) logKey];
      v12 = *(a1 + 32);
      v14 = 138412802;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Cleaned up app usage session: %{public}@", &v14, 0x20u);
    }
  }

  return v8;
}

uint64_t sub_10025CEA4(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v4 = [ASDManagedApplicationRequestOptions alloc];
  v5 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v3)];
  v6 = [NSNumber numberWithLongLong:sub_1003D2F7C(v3)];
  v7 = sub_1003D0F60(v3);
  v8 = sub_1003D251C(v3);
  v9 = [v4 initWithItemIdentifer:v5 externalVersionIdentifier:v6 bundleIdentifier:v7 bundleVersion:v8 skipDownloads:0];

  v10 = sub_1002C7044([ManagedApplicationTask alloc], v9, 0);
  v22 = 0;
  [a1 runSubTask:v10 returningError:&v22];
  v11 = v22;
  v12 = v11;
  if (v10 && (*(v10 + 24) & 1) != 0 && *(v10 + 170))
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[5];
      v15 = sub_1003D0F60(v3);
      v16 = *(v10 + 170);
      *buf = 138412802;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Managed application was refreshed with result: %ld", buf, 0x20u);
    }

    v17 = 1;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v17 = 0;
  if (v11)
  {
LABEL_10:
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[5];
      v21 = sub_1003D0F60(v3);
      *buf = 138412802;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Managed application failed with error: %{public}@", buf, 0x20u);
    }
  }

LABEL_13:

LABEL_14:
  return v17;
}

void sub_10025D230(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[10];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412546;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [ApplicationProxy proxyForBundleID:*(*(&v16 + 1) + 8 * v8), v15, v16];
        v10 = v9;
        if (v9 && ([*(v9 + 120) isPlaceholder] & 1) == 0 && sub_1003D3068(v10) && (objc_msgSend(v10[15], "applicationHasMIDBasedSINF") & 1) == 0 && objc_msgSend(v10[15], "applicationMissingRequiredSINF") && sub_1003D3128(v10, v11))
        {
          v12 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(*(a1 + 32) + 40);
            v14 = sub_1003D0F60(v10);
            *buf = v15;
            v21 = v13;
            v22 = 2114;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Attempting to migrate Configurator app SINF", buf, 0x16u);
          }

          sub_10025CEA4(*(a1 + 32), v10);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }
}

uint64_t sub_10025DD40(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) appEventEntityClass];
    v11 = 0;
    v6 = sub_1003F05C0(v3, v4, v5, &v11);
    v7 = v11;

    if (v7)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(a1 + 40) logKey];
        *buf = 138412546;
        v13 = v10;
        v14 = 2114;
        v15 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Importing crash events error: %{public}@", buf, 0x16u);
      }
    }
  }

  return 1;
}

void sub_10025DE84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 16);
      *(a1 + 16) = v5;

      v4 = *(a1 + 16);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

id sub_10025E74C()
{
  objc_opt_self();
  if (qword_1005AA950 != -1)
  {
    dispatch_once(&qword_1005AA950, &stru_10051EFF0);
  }

  v0 = qword_1005AA948;

  return v0;
}

void sub_10025E7A4(id a1)
{
  v1 = objc_alloc_init(AppInstallObserver);
  v2 = qword_1005AA948;
  qword_1005AA948 = v1;
}

void sub_10025E9A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 40);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10025EA94;
      v7[3] = &unk_10051B570;
      v8 = v3;
      v9 = a1;
      sub_100379C5C(v5, v7);
      v6 = v8;
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ignoring attempt to begin observing a nil coordinator", buf, 2u);
      }
    }
  }
}

void sub_10025EA94(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleID];
  if (v2)
  {
    [*(*(a1 + 40) + 48) setObject:*(a1 + 32) forKeyedSubscript:v2];
    [*(a1 + 32) setObserver:*(a1 + 40)];
  }

  else
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Coordinator had no bundle identifier set so was not able to begin observing: %{public}@", &v5, 0xCu);
    }
  }
}

void sub_10025EB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 40);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10025EC74;
      v7[3] = &unk_10051B570;
      v8 = v3;
      v9 = a1;
      sub_100379C5C(v5, v7);
      v6 = v8;
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Ignoring attempt to end observing a nil coordinator!", buf, 2u);
      }
    }
  }
}

void sub_10025EC74(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleID];
  if (v2)
  {
    [*(*(a1 + 40) + 48) setObject:0 forKeyedSubscript:v2];
    [*(a1 + 32) setObserver:0];
  }

  else
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Coordinator had no bundle identifier set so was not able to end observing: %{public}@", &v5, 0xCu);
    }
  }
}

uint64_t sub_10025EF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) bundleID];
  v6 = sub_1003E3ECC(v3, v4, v5);

  if ([v6 existsInDatabase])
  {
    v7 = sub_10029430C(v6);
    v8 = *(a1 + 40);
    v9 = ASDLogHandleForCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v13 = 138412546;
        v14 = v7;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] App is ready to proceed with post processing: %{public}@", &v13, 0x16u);
      }

      [v6 setValue:*(a1 + 40) forProperty:@"bundle_url"];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Received post processing callback but appURL is nil.", &v13, 0xCu);
      }
    }

    sub_1002081C4(v3, [v6 persistentID]);
  }

  return 1;
}

void sub_10025F2C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_alloc_init(BAAppStoreClient);
    v12 = 0;
    v8 = [v7 performEventWithDescriptor:v5 error:&v12];
    v9 = v12;
    v10 = ASDLogHandleForCategory();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Sent Resume event to Background Assets", buf, 0xCu);
      }

      v11 = [v5 appBundleIdentifier];
      sub_10025F458(a1, v11, v6);
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v6;
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Failed to send Resume event to Background Assets: %{public}@", buf, 0x16u);
    }
  }
}

void sub_10025F458(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10025FA3C;
    v9[3] = &unk_10051AEE8;
    v10 = v6;
    v11 = a1;
    v12 = v5;
    sub_100379C5C(v8, v9);
  }
}

void sub_10025F51C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_10025F9B0;
    v41 = sub_10025F9C0;
    v42 = 0;
    v5 = *(a1 + 40);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10025F9C8;
    v34[3] = &unk_10051AE98;
    v36 = &v37;
    v34[4] = a1;
    v6 = v3;
    v35 = v6;
    sub_100379C5C(v5, v34);
    if (v38[5])
    {
      v8 = dispatch_semaphore_create(0);
      v9 = v38[5];
      if (v9)
      {
        objc_setProperty_atomic(v9, v7, v8, 24);
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v31 = [v6 appBundleIdentifier];
        *buf = 138412290;
        v44 = v31;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Failed to find baInfo in sendBackgroundAssetEvent", buf, 0xCu);
      }
    }

    v10 = objc_alloc_init(BAAppStoreClient);
    if ([v6 eventType] == 20)
    {
      v11 = @"Paused";
    }

    else
    {
      v12 = [v6 eventType];
      v11 = @"Unknown";
      if (v12 == 22)
      {
        v11 = @"Canceled";
      }
    }

    v13 = v11;
    v33 = 0;
    v14 = [v10 performEventWithDescriptor:v6 error:&v33];
    v15 = v33;
    if (v14)
    {
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        Property = v38[5];
        if (Property)
        {
          Property = objc_getProperty(Property, v17, 16, 1);
        }

        *buf = 138412546;
        v44 = Property;
        v45 = 2114;
        v46 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Sent %{public}@ event to Background Assets", buf, 0x16u);
      }

      v20 = v38[5];
      if (!v20)
      {
        goto LABEL_25;
      }

      v21 = objc_getProperty(v20, v19, 24, 1);
      v22 = dispatch_time(0, 5000000000);
      v23 = dispatch_semaphore_wait(v21, v22);

      if (v23)
      {
        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v32 = v38[5];
          if (v32)
          {
            v32 = objc_getProperty(v32, v26, 16, 1);
          }

          *buf = 138412290;
          v44 = v32;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] Timeout waiting for Background Assets to respond to event", buf, 0xCu);
        }
      }

      v27 = v38[5];
      if (!v27)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = v38[5];
        if (v30)
        {
          v30 = objc_getProperty(v30, v29, 16, 1);
        }

        *buf = 138412802;
        v44 = v30;
        v45 = 2114;
        v46 = v13;
        v47 = 2114;
        v48 = v15;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%@] Failed to send %{public}@ event to Background Assets: %{public}@", buf, 0x20u);
      }

      v27 = v38[5];
      if (!v27)
      {
        goto LABEL_25;
      }
    }

    objc_setProperty_atomic(v27, v24, 0, 24);
LABEL_25:

    _Block_object_dispose(&v37, 8);
  }
}

void sub_10025F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10025F9B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10025F9C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v6 = [*(a1 + 40) appBundleIdentifier];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10025FA3C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting background asset observation", buf, 0xCu);
  }

  v4 = objc_alloc_init(BackgroundAssetInfo);
  v6 = v4;
  if (v4)
  {
    objc_setProperty_atomic(v4, v5, *(a1 + 32), 16);
  }

  [*(*(a1 + 40) + 72) setObject:v6 forKeyedSubscript:*(a1 + 48)];
  [*(*(a1 + 40) + 64) addObject:*(a1 + 48)];
  v7 = *(a1 + 40);
  v8 = *(v7 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10025FB84;
  v9[3] = &unk_10051F018;
  v9[4] = v7;
  [v8 updateConfiguration:v9];
}

id sub_10025FB94(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10025F9B0;
  v15 = sub_10025F9C0;
  v16 = 0;
  v4 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10025FCC0;
  v8[3] = &unk_10051AE98;
  v10 = &v11;
  v8[4] = a1;
  v5 = v3;
  v9 = v5;
  sub_100379C5C(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_10025FCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10025FCC0(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(*(a1[6] + 8) + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 16, 1);
    }

    *buf = 138543362;
    v13 = Property;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping background asset observation", buf, 0xCu);
  }

  [*(a1[4] + 72) setObject:0 forKeyedSubscript:a1[5]];
  [*(a1[4] + 64) removeObject:a1[5]];
  v8 = a1[4];
  v9 = *(v8 + 56);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10025FE1C;
  v11[3] = &unk_10051F018;
  v11[4] = v8;
  return [v9 updateConfiguration:v11];
}

uint64_t sub_10025FE2C(uint64_t a1, id a2)
{
  v3 = sub_1003E3D74(a2, *(a1 + 32));
  if ([v3 existsInDatabase])
  {
    v4 = sub_10029430C(v3);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_10025FF4C(*(a1 + 40), [*(a1 + 48) progressState]);
      v8 = 138412546;
      v9 = v4;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Background asset download has ended with state: %{public}@", &v8, 0x16u);
    }
  }

  return 1;
}

const __CFString *sub_10025FF4C(const __CFString *result, unint64_t a2)
{
  if (result)
  {
    if (a2 > 6)
    {
      return @"UnknownState";
    }

    else
    {
      return off_10051F0A0[a2];
    }
  }

  return result;
}

void sub_10025FF74(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 64);
  v4 = a2;
  [v4 setAppBundleIdentifiers:v3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100260018;
  v5[3] = &unk_10051F068;
  v5[4] = *(a1 + 32);
  [v4 setUpdateHandler:v5];
}

void sub_100260018(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = sub_10025F9B0;
  v106 = sub_10025F9C0;
  v107 = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  v99[0] = _NSConcreteStackBlock;
  v99[1] = 3221225472;
  v99[2] = sub_100260DD4;
  v99[3] = &unk_10051AE98;
  v101 = &v102;
  v99[4] = v7;
  v9 = v5;
  v100 = v9;
  sub_100379C5C(v8, v99);
  v10 = [v6 progressState];
  if (v10 <= 2)
  {
    if (v10 >= 2)
    {
      if (v10 == 2)
      {
        v42 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          Property = v103[5];
          if (Property)
          {
            Property = objc_getProperty(Property, v49, 16, 1);
          }

          v51 = Property;
          v52 = sub_10025FF4C(*(a1 + 32), [v6 progressState]);
          *buf = 138412546;
          *&buf[4] = v51;
          *&buf[12] = 2114;
          *&buf[14] = v52;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Background assets reported state: %{public}@", buf, 0x16u);
        }

        goto LABEL_84;
      }

      goto LABEL_35;
    }

    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v103[5];
      if (v28)
      {
        v28 = objc_getProperty(v28, v27, 16, 1);
      }

      v29 = v28;
      v30 = sub_10025FF4C(*(a1 + 32), [v6 progressState]);
      *buf = 138412546;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Background assets reported state: %{public}@", buf, 0x16u);
    }

    v31 = *(a1 + 32);
    v32 = v6;
    v33 = v9;
    if (!v31)
    {
LABEL_79:

      goto LABEL_85;
    }

    v34 = sub_10025FB94(v31, v33);
    v36 = v34;
    if (v34)
    {
      if (objc_getProperty(v34, v35, 24, 1))
      {
        v37 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v39 = objc_getProperty(v36, v38, 16, 1);
          *buf = 138412290;
          *&buf[4] = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@]: Status update in response to our Background Asset event has been received", buf, 0xCu);
        }

        v41 = objc_getProperty(v36, v40, 24, 1);
        dispatch_semaphore_signal(v41);
        goto LABEL_78;
      }
    }

    else
    {
      v71 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "[%@] Failed to find baInfo in _backgroundAssetDownloadHasCompleted", buf, 0xCu);
      }
    }

    v73 = [*(v31 + 48) objectForKeyedSubscript:v33];
    if (!v73)
    {
LABEL_77:
      v93 = *(v31 + 8);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10025FE2C;
      v111 = &unk_10051F040;
      *&v112 = v33;
      *(&v112 + 1) = v31;
      v113 = v32;
      [v93 modifyUsingTransaction:buf];

LABEL_78:
      goto LABEL_79;
    }

    if (v36)
    {
      v74 = objc_getProperty(v36, v72, 8, 1);
      if (v74)
      {
        v75 = v74;
        [v74 setComplete:1];
        objc_setProperty_atomic(v36, v76, 0, 8);
LABEL_76:

        goto LABEL_77;
      }
    }

    v75 = [[IXPromisedOutOfBandTransfer alloc] initWithName:@"essential-asset" client:1 diskSpaceNeeded:0];
    [v75 setComplete:1];
    if (v75)
    {
      v114 = v75;
      v78 = [NSArray arrayWithObjects:&v114 count:1];
      v108 = 0;
      v79 = sub_10024A2FC(v73, v78, &v108);
      v97 = v108;

      if (v79)
      {
        v80 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          if (v36)
          {
            v82 = objc_getProperty(v36, v81, 16, 1);
          }

          else
          {
            v82 = 0;
          }

          *buf = 138412546;
          *&buf[4] = v82;
          *&buf[12] = 2114;
          *&buf[14] = v75;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[%@]: Set already-complete essential asset promises on the coordinator: %{public}@", buf, 0x16u);
        }

LABEL_75:

        goto LABEL_76;
      }
    }

    else
    {
      v97 = 0;
    }

    v80 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      if (v36)
      {
        v95 = objc_getProperty(v36, v92, 16, 1);
      }

      else
      {
        v95 = 0;
      }

      *buf = 138412546;
      *&buf[4] = v95;
      *&buf[12] = 2114;
      *&buf[14] = v97;
      _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "[%@]: Failed to set already-complete essential asset promises on the coordinator: %{public}@", buf, 0x16u);
    }

    goto LABEL_75;
  }

  if ((v10 - 3) < 2)
  {
    v42 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v103[5];
      if (v44)
      {
        v44 = objc_getProperty(v44, v43, 16, 1);
      }

      v45 = v44;
      v46 = sub_10025FF4C(*(a1 + 32), [v6 progressState]);
      v47 = [v6 countOfBytesReceived];
      v48 = [v6 countOfBytesExpectedToReceive];
      *buf = 138413058;
      *&buf[4] = v45;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      *&buf[22] = 2048;
      v111 = v47;
      LOWORD(v112) = 2048;
      *(&v112 + 2) = v48;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Background assets reported state: %{public}@ : progress: %lld : %lld", buf, 0x2Au);
    }

    goto LABEL_84;
  }

  if (v10 == 5)
  {
    v59 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v61 = v103[5];
      if (v61)
      {
        v61 = objc_getProperty(v61, v60, 16, 1);
      }

      v62 = v61;
      v63 = sub_10025FF4C(*(a1 + 32), [v6 progressState]);
      v64 = [v6 countOfBytesReceived];
      v65 = [v6 countOfBytesExpectedToReceive];
      *buf = 138413058;
      *&buf[4] = v62;
      *&buf[12] = 2114;
      *&buf[14] = v63;
      *&buf[22] = 2048;
      v111 = v64;
      LOWORD(v112) = 2048;
      *(&v112 + 2) = v65;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[%@] Background assets reported state: %{public}@ : progress: %lld : %lld", buf, 0x2Au);
    }

    v66 = sub_1003649C8();
    sub_100367460(v66, v9, [v6 countOfBytesReceived], objc_msgSend(v6, "countOfBytesExpectedToReceive"));

    v42 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v9];
    if (!v42)
    {
      goto LABEL_84;
    }

    v68 = v103[5];
    if (v68)
    {
      v69 = objc_getProperty(v68, v67, 8, 1);
      if (v69)
      {
        v70 = v69;
        [v69 setPercentComplete:{objc_msgSend(v6, "countOfBytesReceived") / objc_msgSend(v6, "countOfBytesExpectedToReceive")}];
LABEL_83:

LABEL_84:
        goto LABEL_85;
      }
    }

    v83 = [[IXPromisedOutOfBandTransfer alloc] initWithName:@"essential-asset" client:1 diskSpaceNeeded:{objc_msgSend(v6, "countOfBytesExpectedToReceive")}];
    [v83 setPercentComplete:{objc_msgSend(v6, "countOfBytesReceived") / objc_msgSend(v6, "countOfBytesExpectedToReceive")}];
    v85 = v103[5];
    if (v85)
    {
      objc_setProperty_atomic(v85, v84, v83, 8);
    }

    if (v83)
    {
      v109 = v83;
      v86 = [NSArray arrayWithObjects:&v109 count:1];
      v98 = 0;
      v87 = sub_10024A2FC(v42, v86, &v98);
      v88 = v98;

      if (v87)
      {
        v89 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v91 = v103[5];
          if (v91)
          {
            v91 = objc_getProperty(v91, v90, 16, 1);
          }

          *buf = 138412546;
          *&buf[4] = v91;
          *&buf[12] = 2114;
          *&buf[14] = v83;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[%@]: Set essential asset promises on the coordinator: %{public}@", buf, 0x16u);
        }

LABEL_82:

        v70 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      v88 = 0;
    }

    v89 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      v96 = v103[5];
      if (v96)
      {
        v96 = objc_getProperty(v96, v94, 16, 1);
      }

      *buf = 138412546;
      *&buf[4] = v96;
      *&buf[12] = 2114;
      *&buf[14] = v88;
      _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "[%@]: Failed to set essential asset promises on the coordinator: %{public}@", buf, 0x16u);
    }

    goto LABEL_82;
  }

  if (v10 != 6)
  {
LABEL_35:
    v42 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v103[5];
      if (v54)
      {
        v54 = objc_getProperty(v54, v53, 16, 1);
      }

      v55 = v54;
      v56 = [v6 progressState];
      v57 = [v6 countOfBytesReceived];
      v58 = [v6 countOfBytesExpectedToReceive];
      *buf = 138413058;
      *&buf[4] = v55;
      *&buf[12] = 2048;
      *&buf[14] = v56;
      *&buf[22] = 2048;
      v111 = v57;
      LOWORD(v112) = 2048;
      *(&v112 + 2) = v58;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@] Background assets reported unknown state: %ld : progress: %lld : %lld", buf, 0x2Au);
    }

    goto LABEL_84;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v103[5];
    if (v13)
    {
      v13 = objc_getProperty(v13, v12, 16, 1);
    }

    v14 = v13;
    v15 = sub_10025FF4C(*(a1 + 32), [v6 progressState]);
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Background assets reported state: %{public}@", buf, 0x16u);
  }

  v16 = *(a1 + 32);
  v17 = v9;
  if (v16)
  {
    v18 = sub_10025FB94(v16, v17);
    v20 = v18;
    if (v18)
    {
      if (objc_getProperty(v18, v19, 24, 1))
      {
        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_getProperty(v20, v22, 16, 1);
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@]: Status update in response to our Background Asset event has been received", buf, 0xCu);
        }

        v25 = objc_getProperty(v20, v24, 24, 1);
        dispatch_semaphore_signal(v25);
      }
    }

    else
    {
      v77 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "[%@] Failed to find baInfo in _backgroundAssetDownloadHasPaused", buf, 0xCu);
      }
    }
  }

LABEL_85:
  _Block_object_dispose(&v102, 8);
}

void sub_100260D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100260DD4(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id *sub_100260EBC(id *a1, void *a2, void *a3, char a4)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = LZMAStreamReader;
    v10 = objc_msgSendSuper2(&v17, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 8, a2);
      [a1[8] setDelegate:a1];
      v11 = sub_100209634([LZMADecoder alloc], v9);
      v12 = a1[9];
      a1[9] = v11;

      v13 = a1[9];
      if (v13)
      {
        v13[168] = a4;
      }

      v14 = objc_alloc_init(UnfairLock);
      v15 = a1[7];
      a1[7] = v14;
    }
  }

  return a1;
}

void sub_10026113C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100261154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(v3 + 184);
    if (v4 == 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(v2 + 64) hasBytesAvailable];
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(*(*(a1 + 40) + 8) + 24);
        v10 = 67109120;
        v11 = v6;
        v7 = "(LZMAStreamReader) Upstream has bytes available = %{BOOL}d";
LABEL_9:
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v7, &v10, 8u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    v8 = v4 != 3;
  }

  else
  {
    v8 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = 67109120;
    v11 = v9;
    v7 = "(LZMAStreamReader) Decoder state finished = %{BOOL}d";
    goto LABEL_9;
  }

LABEL_7:
}

void sub_100261558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10026157C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if ((!v2 || *(v2 + 184) != 2) && (*(*(*(a1 + 40) + 8) + 24) & 0x10) != 0)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(LZMAStreamReader) Filtering stream end event", v4, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) &= ~0x10uLL;
  }
}

void sub_100261768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026178C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002617A4(uint64_t *a1)
{
  if ([a1[4] streamStatus] != 7)
  {
    v5 = [[NSMutableData alloc] initWithLength:a1[7]];
    if ([v5 length])
    {
      v6 = *(a1[4] + 64);
      v7 = [v5 mutableBytes];
      v8 = [v5 length];
      v9 = *(a1[5] + 8);
      obj = *(v9 + 40);
      v10 = [v6 readBytes:v7 length:v8 error:&obj];
      objc_storeStrong((v9 + 40), obj);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = a1[4];
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
    }

    v20 = a1[7];
    v12 = *(a1[4] + 72);
    v13 = [v5 bytes];
    v14 = a1[8];
    v15 = *(a1[5] + 8);
    v19 = *(v15 + 40);
    v16 = sub_10020984C(v12, v13, v10, v14, &v20, &v19);
    objc_storeStrong((v15 + 40), v19);
    v11 = a1[4];
    if (v16)
    {
      v17 = *(v11 + 72);
      if (v17)
      {
        if (*(v17 + 184) == 3)
        {
          sub_1002BB2AC(v11, 5);
          v18 = a1[4];
          if (v18)
          {
            dispatch_source_merge_data(*(v18 + 16), 0x10uLL);
          }
        }
      }

      *(*(a1[6] + 8) + 24) = v20;
      goto LABEL_16;
    }

LABEL_15:
    sub_1002BB2AC(v11, 7);
    sub_1002BB120(a1[4], *(*(a1[5] + 8) + 40));
LABEL_16:

    return;
  }

  v2 = [a1[4] streamError];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void *sub_100261A44(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BackgroundTaskRequest;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = xpc_copy(v3);
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

id sub_100261AB8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100261A44([BackgroundTaskRequest alloc], XPC_ACTIVITY_CHECK_IN);
  v5 = v3;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v4, v2, 16);
  }

  return v5;
}

id sub_100261B34()
{
  objc_opt_self();
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_7_DAYS);

  return empty;
}

id sub_100261BC4(uint64_t a1, void *a2, int64_t a3)
{
  v4 = a2;
  objc_opt_self();
  empty = xpc_dictionary_create_empty();
  [v4 timeIntervalSinceNow];
  v7 = v6;

  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_DELAY, v7);
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_GRACE_PERIOD, a3);

  return empty;
}

id sub_100261C9C(uint64_t a1, void *a2, char a3, int a4)
{
  v6 = a2;
  objc_opt_self();
  empty = xpc_dictionary_create_empty();
  [v6 timeIntervalSinceNow];
  v9 = v8;

  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_DELAY, v9);
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_int64(empty, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
  if ((a3 & 1) == 0)
  {
    xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  }

  if (a4)
  {
    xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  }

  return empty;
}

id sub_100261E14()
{
  objc_opt_self();
  if (qword_1005AA958 != -1)
  {
    dispatch_once(&qword_1005AA958, &stru_10051F100);
  }

  v0 = qword_1005AA960;

  return v0;
}

void sub_100261E6C(id a1)
{
  v1 = objc_alloc_init(WallClock);
  v2 = qword_1005AA960;
  qword_1005AA960 = v1;
}

id *sub_100261F20(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

void sub_1002620B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002620D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002620E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_1002622D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100262394(uint64_t a1)
{
  v2 = [*(a1 + 40) prependingCategory:@"Claim"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1002624D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002624EC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100262538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002625E0;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

void sub_1002625E0(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

uint64_t sub_1002626F8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = sub_10040CF04(v4);
  v7 = [v6 isFactoryInstall];

  if ((v7 & 1) == 0)
  {
    v9 = [v4 bundleIdentifier];
    v10 = [v9 rangeOfString:@"com.apple"];

    if (v10)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 bundleIdentifier];
        v27 = 138412546;
        v28 = v5;
        v29 = 2114;
        v30 = v12;
        v13 = "[%@] Skipping claim for %{public}@: Bundle ID not eligible";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, &v27, 0x16u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if ([v4 isPlaceholder])
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 bundleIdentifier];
        v27 = 138412546;
        v28 = v5;
        v29 = 2114;
        v30 = v12;
        v13 = "[%@] Skipping claim for %{public}@: Not installed";
        goto LABEL_22;
      }

LABEL_23:
      v8 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ([v4 isProfileValidated])
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 bundleIdentifier];
        v27 = 138412546;
        v28 = v5;
        v29 = 2114;
        v30 = v12;
        v13 = "[%@] Skipping claim for %{public}@: Not store vended";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (([v4 applicationMissingRequiredSINF] & 1) == 0)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 bundleIdentifier];
        v27 = 138412546;
        v28 = v5;
        v29 = 2114;
        v30 = v12;
        v13 = "[%@] Skipping claim for %{public}@: Not missing SINF";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v14 = [v4 iTunesMetadata];
    v15 = [v14 storeItemIdentifier];

    v16 = [v4 iTunesMetadata];
    v17 = [v16 versionIdentifier];

    if (!v15 || !v17)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 bundleIdentifier];
        v27 = 138412546;
        v28 = v5;
        v29 = 2114;
        v30 = v12;
        v13 = "[%@] Skipping claim for %{public}@: Missing store identifiers";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v18 = [v4 iTunesMetadata];
    v19 = [v18 storeFront];

    if (v19)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 bundleIdentifier];
        v27 = 138412546;
        v28 = v5;
        v29 = 2114;
        v30 = v12;
        v13 = "[%@] Skipping claim for %{public}@: Not missing storeFront";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v21 = sub_10040CB88(v4);
    v11 = v21;
    if (v21)
    {
      v22 = *(v21 + 8);
      v23 = ASDLogHandleForCategory();
      v24 = v23;
      if (v22 == 5)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v4 bundleIdentifier];
          v27 = 138412546;
          v28 = v5;
          v29 = 2114;
          v30 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] Attempting claim for %{public}@: Passes eligible for corrupted metadata", &v27, 0x16u);
        }

        v8 = 1;
LABEL_35:

        goto LABEL_24;
      }
    }

    else
    {
      v24 = ASDLogHandleForCategory();
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v26 = [v4 bundleIdentifier];
      v27 = 138412546;
      v28 = v5;
      v29 = 2114;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%@] Skipping claim for %{public}@: Not missing account", &v27, 0x16u);
    }

    v8 = 0;
    goto LABEL_35;
  }

  v8 = 1;
LABEL_25:

  return v8;
}

void sub_100262E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100262E54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) logKey];
      v13 = 138412546;
      v14 = v8;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Attempt to establish primary account resulted in error: %{public}@", &v13, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v10 = +[ACAccountStore ams_sharedAccountStore];
    v9 = [v10 ams_activeiTunesAccount];

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) logKey];
      v12 = [v5 account];
      v13 = 138412546;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Logged into account: %{public}@", &v13, 0x16u);
    }
  }

LABEL_6:
  sub_100263020(*(a1 + 32), v9, *(a1 + 40));
}

void sub_100263020(void *a1, void *a2, void *a3)
{
  v55 = a2;
  v51 = a1;
  v52 = a3;
  if (a1)
  {
    if (v55)
    {
      v53 = +[AMSDevice buildVersion];
      v50 = v55;
      objc_opt_self();
      v5 = sub_1003D66DC();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v50 identifier];
        if (v6)
        {
          v7 = [v5 objectForKey:v6];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 copy];
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v49 = v8;
      if (v8 && [v53 isEqualToString:v8] && (*&v63 = 0, *(&v63 + 1) = &v63, *&v64 = 0x2020000000, BYTE8(v64) = 0, v11 = v51[4], *buf = _NSConcreteStackBlock, *&buf[8] = 3221225472, *&buf[16] = sub_100261FB4, v72 = &unk_10051B638, *&v73 = v51, *(&v73 + 1) = &v63, sub_100379C5C(v11, buf), v12 = *(*(&v63 + 1) + 24), _Block_object_dispose(&v63, 8), (v12 & 1) == 0))
      {
        v47 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v51 logKey];
          *buf = 138412802;
          *&buf[4] = v48;
          *&buf[12] = 2112;
          *&buf[14] = v53;
          *&buf[22] = 2112;
          v72 = v50;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%@] Skipping claim, already did claim for this build: %@ and user: %@", buf, 0x20u);
        }

        v52[2](v52, 0);
      }

      else
      {
        v13 = [v51 logKey];
        v58 = objc_opt_self();
        v56 = objc_alloc_init(NSMutableArray);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = sub_10040C708(LSApplicationRecord, 0, 0);
        v14 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
        if (v14)
        {
          v15 = *v64;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v64 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v63 + 1) + 8 * i);
              v18 = objc_autoreleasePoolPush();
              v19 = [v17 iTunesMetadata];
              v20 = [v19 storeItemIdentifier];

              if ((!v20 || sub_1002626F8(v58, v17, v13)) && ([v17 isProfileValidated] & 1) == 0)
              {
                v21 = objc_alloc_init(NSMutableDictionary);
                v22 = [v17 bundleIdentifier];
                [v21 setObject:v22 forKeyedSubscript:@"bid"];

                v23 = [v17 exactBundleVersion];
                [v21 setObject:v23 forKeyedSubscript:@"bvrs"];

                v24 = [v17 iTunesMetadata];
                v25 = [v24 versionIdentifier];

                if (v25)
                {
                  v26 = [NSNumber numberWithUnsignedLongLong:v25];
                  v27 = [v26 stringValue];
                  [v21 setObject:v27 forKeyedSubscript:@"vid"];
                }

                if (v20)
                {
                  v28 = [NSNumber numberWithUnsignedLongLong:v20];
                  v29 = [v28 stringValue];
                  [v21 setObject:v29 forKeyedSubscript:@"id"];
                }

                v30 = [v17 iTunesMetadata];
                v31 = [v30 variantID];

                if (v31)
                {
                  [v21 setObject:v31 forKeyedSubscript:@"variantId"];
                }

                v32 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *v67 = 138412546;
                  v68 = v13;
                  v69 = 2114;
                  v70 = v21;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Discovered claimable application: %{public}@", v67, 0x16u);
                }

                [v56 addObject:v21];
              }

              objc_autoreleasePoolPop(v18);
            }

            v14 = [obj countByEnumeratingWithState:&v63 objects:buf count:16];
          }

          while (v14);
        }

        v33 = [v56 count] == 0;
        v34 = ASDLogHandleForCategory();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          if (v35)
          {
            v46 = [v51 logKey];
            *buf = 138412290;
            *&buf[4] = v46;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%@] Skipping claim, wasn't able to discover any unclaimed apps", buf, 0xCu);
          }

          sub_100263C04(FactoryApplicationRepair, v53, v50);
          v52[2](v52, 0);
        }

        else
        {
          if (v35)
          {
            v36 = [v51 logKey];
            v37 = [v56 count];
            v38 = [v50 ams_DSID];
            *buf = 138413058;
            *&buf[4] = v36;
            *&buf[12] = 2048;
            *&buf[14] = v37;
            *&buf[22] = 2114;
            v72 = v38;
            LOWORD(v73) = 2114;
            *(&v73 + 2) = v49;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%@] Running claim for %ld app(s) for accountID: %{public}@. Last claim was on build: %{public}@", buf, 0x2Au);
          }

          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100263CF0;
          v59[3] = &unk_10051F128;
          v59[4] = v51;
          v60 = v50;
          v61 = v53;
          v62 = v52;
          v39 = v60;
          v40 = v56;
          v41 = v59;
          v42 = +[BagService appstoredService];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100264B78;
          v72 = &unk_10051F178;
          *&v73 = v51;
          v43 = v39;
          *(&v73 + 1) = v43;
          v44 = v40;
          v74 = v44;
          v45 = v41;
          v75 = v45;
          [v42 upToDateBagWithCompletionHandler:buf];
        }
      }
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [a1 logKey];
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Skipping claim, no active account", buf, 0xCu);
      }

      v54 = ASDErrorWithTitleAndMessage();
      (v52)[2](v52, v54);
    }
  }
}

void sub_10026394C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [AMSDialogRequest alloc];
    v8 = ASDLocalizedString();
    v9 = [v7 initWithTitle:v8 message:0];

    v10 = [a1 logKey];
    v11 = [v10 description];
    [v9 setLogKey:v11];

    v12 = [v5 account];

    ASDLocalizedString();
    if (v12)
      v13 = {;
      v14 = [v5 account];
      v15 = [v14 username];
      v16 = [NSString stringWithFormat:v13, v15];
      [v9 setMessage:v16];
    }

    else
      v13 = {;
      [v9 setMessage:v13];
    }

    v17 = ASDLocalizedString();
    v18 = [AMSDialogAction actionWithTitle:v17];

    [v18 setStyle:2];
    [v9 addButtonAction:v18];
    v19 = ASDLocalizedString();
    v20 = [AMSDialogAction actionWithTitle:v19];

    [v9 addButtonAction:v20];
    v21 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v9];
    v22 = [v21 present];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100264A08;
    v24[3] = &unk_10051F150;
    v25 = v20;
    v26 = a1;
    v27 = v5;
    v28 = v6;
    v23 = v20;
    [v22 resultWithCompletion:v24];
  }
}

void sub_100263C04(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_self();
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = sub_1003D66DC();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 addEntriesFromDictionary:v7];
    }

    [v6 setObject:v8 forKey:v5];
    sub_1003D6920(AppDefaultsManager, v6);
  }
}

void sub_100263CF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = a2;
    v9 = v6;
    if (!v7)
    {
      v10 = 0;
LABEL_71:

      v81 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        v82 = [*(a1 + 32) logKey];
        v83 = [v10 componentsJoinedByString:@", "];
        *buf = 138412546;
        v120 = v82;
        v121 = 2114;
        v122 = v83;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%@] Claim completed for: %{public}@", buf, 0x16u);
      }

      v84 = sub_1003D0F60(*(*(a1 + 32) + 8));

      v85 = *(a1 + 32);
      if (v84 && (sub_1003D0F60(v85[1]), v86 = objc_claimAutoreleasedReturnValue(), v87 = [v10 containsObject:v86], v86, v85 = *(a1 + 32), v87))
      {
        v88 = [v85 delegate];
        [v88 repair:*(a1 + 32) wantsToRelaunchApplication:*(*(a1 + 32) + 8)];

        sub_100262538(*(a1 + 32), v10);
        sub_100263C04(FactoryApplicationRepair, *(a1 + 48), *(a1 + 40));
      }

      else
      {
        sub_100262538(v85, v10);
      }

      goto LABEL_77;
    }

    v10 = objc_opt_new();
    v93 = [v9 ams_DSID];
    v100 = v7;
    v11 = sub_1003BE8FC(StoreItemResponse, v8, 0, 1, v7[3]);
    v12 = ASDLogHandleForCategory();
    self = v11;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v100 logKey];
      if (v11)
      {
        Property = objc_getProperty(v11, v13, 64, 1);
      }

      else
      {
        Property = 0;
      }

      v16 = Property;
      v17 = [v16 count];
      *buf = 138412802;
      v120 = v14;
      v121 = 2048;
      v122 = v17;
      v123 = 2114;
      v124 = v93;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to process %ld item(s) for accountID: %{public}@", buf, 0x20u);

      v11 = self;
    }

    if (v11)
    {
      v19 = objc_getProperty(v11, v18, 72, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    objc_opt_class();
    v94 = v20;
    isKindOfClass = objc_opt_isKindOfClass();
    v22 = ASDLogHandleForCategory();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      if (v23)
      {
        v24 = [v100 logKey];
        v25 = [v94 length];
        *buf = 138412546;
        v120 = v24;
        v121 = 2048;
        v122 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] Importing keybag data (%{iec-bytes}lu) following claim(s)", buf, 0x16u);
      }

      v26 = +[AMSKeybag sharedInstance];
      v111 = 0;
      v27 = [v26 importKeybagWithData:v94 error:&v111];
      v92 = v111;

      if (v27)
      {
        goto LABEL_21;
      }

      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = [v100 logKey];
        *buf = 138412546;
        v120 = v29;
        v121 = 2114;
        v122 = v92;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%@] Importing keybag data failed with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v23)
      {
        v31 = [v100 logKey];
        *buf = 138412290;
        v120 = v31;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] No keybag available to import - keybag sync may follow", buf, 0xCu);
      }

      v92 = 0;
    }

LABEL_21:
    v97 = v9;
    v89 = v8;
    v90 = v5;
    v91 = a1;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v32 = self;
    if (self)
    {
      v32 = objc_getProperty(self, v28, 64, 1);
    }

    v33 = v32;
    v102 = [v33 countByEnumeratingWithState:&v107 objects:buf count:16];
    if (v102)
    {
      p_cache = &OBJC_METACLASS___MigratorUpdateHistoryTask.cache;
      v101 = *v108;
      v96 = v10;
      v99 = v33;
      do
      {
        v35 = 0;
        do
        {
          if (*v108 != v101)
          {
            objc_enumerationMutation(v33);
          }

          v36 = *(*(&v107 + 1) + 8 * v35);
          v38 = objc_autoreleasePoolPush();
          if (v36)
          {
            v39 = objc_getProperty(v36, v37, 96, 1);
          }

          else
          {
            v39 = 0;
          }

          v40 = v39;
          v41 = objc_alloc((p_cache + 53));
          v106 = 0;
          v42 = [v41 initWithBundleID:v40 allowPlaceholder:0 error:&v106];
          v44 = v106;
          if (v42)
          {
            v103 = v38;
            if (v36)
            {
              v45 = objc_getProperty(v36, v43, 72, 1);
              v47 = v45;
              if (v45)
              {
                v45 = objc_getProperty(v45, v46, 144, 1);
              }
            }

            else
            {
              v47 = 0;
              v45 = 0;
            }

            v48 = v45;

            if (v48 && [v48 length])
            {
              v49 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = [v100 logKey];
                *v113 = 138412546;
                v114 = v50;
                v115 = 2114;
                v116 = v40;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Updating app metadata", v113, 0x16u);
              }

              v51 = sub_1003D2A70(v42);
              v105 = v44;
              v52 = sub_100249490(IXAppInstallCoordinator, v51, 0, v48, &v105);
              v53 = v105;

              if (v52)
              {
                v54 = sub_1003E2F24(MIStoreMetadata, v36);
                sub_1003E38F0(v54, v97);
                if (v54)
                {
                  sub_1003E3A60(v54, v48, 0);
                }

                v56 = objc_getProperty(v42, v55, 120, 1);
                v57 = [v56 iTunesMetadata];
                v58 = [v57 variantID];

                if (v58)
                {
                  v59 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    v60 = [v100 logKey];
                    *v113 = 138412802;
                    v114 = v60;
                    v115 = 2114;
                    v116 = v40;
                    v117 = 2114;
                    v118 = v58;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Updating app metadata with variantID: %{public}@", v113, 0x20u);
                  }

                  [v54 setVariantID:v58];
                }

                v98 = v58;
                v104 = v53;
                v61 = sub_1003E3BE4(v54, v40, 0, &v104);
                v44 = v104;

                if ((v61 & 1) == 0)
                {
                  v62 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    v75 = [v100 logKey];
                    *v113 = 138412802;
                    v114 = v75;
                    v115 = 2114;
                    v116 = v40;
                    v117 = 2114;
                    v118 = v44;
                    _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Metadata could not be updated due to error: %{public}@", v113, 0x20u);
                  }
                }

                v63 = [AppLedgerEvent alloc];
                v65 = objc_getProperty(v42, v64, 120, 1);
                v66 = [v100 logKey];
                v67 = sub_1003BB60C(v63, v65, v66);

                v68 = sub_1002AB1B0();
                v112 = v67;
                v69 = [NSArray arrayWithObjects:&v112 count:1];
                sub_1002ABA10(v68, v69);

                v70 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = [v100 logKey];
                  *v113 = 138412546;
                  v114 = v71;
                  v115 = 2114;
                  v116 = v40;
                  _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Claim complete", v113, 0x16u);
                }

                v10 = v96;
                [v96 addObject:v40];

                v33 = v99;
              }

              else
              {
                v54 = ASDLogHandleForCategory();
                v33 = v99;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v74 = [v100 logKey];
                  *v113 = 138412802;
                  v114 = v74;
                  v115 = 2114;
                  v116 = v40;
                  v117 = 2114;
                  v118 = v53;
                  _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Skipping update. Unable to update metadata SINF due to error: %{public}@", v113, 0x20u);
                }

                v44 = v53;
              }

              p_cache = (&OBJC_METACLASS___MigratorUpdateHistoryTask + 16);
            }

            else
            {
              v54 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v72 = [v100 logKey];
                *v113 = 138412546;
                v114 = v72;
                v115 = 2114;
                v116 = v40;
                _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Skipping update due to missing SINF data", v113, 0x16u);
              }
            }

            v38 = v103;
          }

          else
          {
            v48 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v73 = [v100 logKey];
              *v113 = 138412802;
              v114 = v73;
              v115 = 2114;
              v116 = v40;
              v117 = 2114;
              v118 = v44;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Skipping update as it doesn't appear to be installed: %{public}@", v113, 0x20u);
            }
          }

          objc_autoreleasePoolPop(v38);
          v35 = v35 + 1;
        }

        while (v102 != v35);
        v76 = [v33 countByEnumeratingWithState:&v107 objects:buf count:16];
        v102 = v76;
      }

      while (v76);
    }

    v5 = v90;
    a1 = v91;
    v8 = v89;
    v9 = v97;
    if ([v10 count])
    {
      v77 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = [v100 logKey];
        v79 = [v10 componentsJoinedByString:@", "];
        v80 = [v97 ams_DSID];
        *v113 = 138412802;
        v114 = v78;
        v115 = 2114;
        v116 = v79;
        v117 = 2112;
        v118 = v80;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "[%@] Claim complete for bundleIDs: [%{public}@] for accountID: %@", v113, 0x20u);
      }
    }

    goto LABEL_71;
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v30 = [*(a1 + 32) logKey];
    *buf = 138412546;
    v120 = v30;
    v121 = 2114;
    v122 = v5;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@] Claim failed with error: %{public}@", buf, 0x16u);
  }

LABEL_77:

  (*(*(a1 + 56) + 16))();
}

void sub_100264A08(uint64_t a1, void *a2)
{
  v3 = [a2 selectedActionIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v13 = ASDErrorWithDescription();
    v6 = [*(a1 + 40) delegate];
    [v6 repair:*(a1 + 40) needsToReleaseBlockingCallerWithReason:v13];

    v7 = [AMSAuthenticateTask alloc];
    v8 = *(a1 + 48);
    v9 = [*(*(a1 + 40) + 24) amsBag];
    v10 = [v7 initWithRequest:v8 bag:v9];

    [v10 setDelegate:*(a1 + 40)];
    v11 = [v10 performAuthentication];
    [v11 resultWithCompletion:*(a1 + 56)];
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = ASDErrorWithDescription();
    (*(v12 + 16))(v12, 0);
  }
}

void sub_100264B78(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a2;
    v7 = v5;
    v8 = v7;
    if (v3)
    {
      v30 = v7;
      v31 = v6;
      v9 = v6;
      v10 = v3[3];
      v29 = v9;
      v3[3] = v9;
      v11 = v4;
      v12 = v2;

      v13 = [AMSURLRequestEncoder alloc];
      v14 = [v3[3] amsBag];
      v15 = [v13 initWithBag:v14];

      [v15 setAccount:v12];
      [v15 setRequestEncoding:3];
      v16 = [v3 logKey];
      v17 = v12;
      v18 = v16;
      v19 = v11;
      objc_opt_self();
      v20 = objc_opt_new();
      [v20 setObject:v19 forKeyedSubscript:@"apps"];

      v21 = +[AMSDevice deviceGUID];
      if (v21)
      {
        [v20 setObject:v21 forKeyedSubscript:@"guid"];
      }

      v32 = 0;
      v22 = sub_1002C6074(AMSKeybag, v17, 1, &v32);
      v23 = v32;
      v24 = v23;
      if (!v22 || v23)
      {
        v26 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = v18;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          *&buf[22] = 2114;
          v34 = v24;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@] Failed to generate keybag for account: %{public}@ error: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        [v20 setObject:v22 forKeyedSubscript:@"kbsync"];
      }

      v6 = v31;

      v27 = [v29 URLForKey:@"factory-app-claim"];
      v28 = [v15 requestWithMethod:4 URL:v27 parameters:v20];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100264F04;
      v34 = &unk_10051F1A0;
      v35 = v3;
      v36 = v29;
      v8 = v30;
      v37 = v30;
      [v28 resultWithCompletion:buf];
    }
  }

  else
  {
    v25 = *(a1[7] + 16);

    v25();
  }
}

void sub_100264F04(void **a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_10024A8EC(AMSURLSession, a1[4], a1[5]);
    v5 = [v4 dataTaskPromiseWithRequest:v3];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100264FF8;
    v6[3] = &unk_10051E0B8;
    v7 = a1[6];
    [v5 resultWithCompletion:v6];
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void sub_100264FF8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 object];
    (*(v3 + 16))(v3, v6, 0);
  }
}

void sub_100265260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logKey];
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Dialog request failed with error: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002654D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logKey];
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Authenticate request failed with error: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100265774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) logKey];
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Engagement request failed with error: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1002659E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error in dialog task: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100265CDC(id a1)
{
  v1 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.AppStore"];
  v2 = qword_1005AA968;
  qword_1005AA968 = v1;
}

BOOL sub_100265D24()
{
  objc_opt_self();
  v0 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.AppStore" allowPlaceholder:0 error:0];
  v1 = v0 == 0;

  return v1;
}

id sub_100265D74(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (sub_100265D24())
  {
    v3 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v2];
  }

  else
  {
    v3 = sub_10000479C();
  }

  v4 = v3;

  return v4;
}

id sub_100265DEC()
{
  objc_opt_self();
  if (qword_1005AA980 != -1)
  {
    dispatch_once(&qword_1005AA980, &stru_10051F208);
  }

  v0 = qword_1005AA978;

  return v0;
}

void sub_100265E44(id a1)
{
  v1 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.appstored"];
  v2 = qword_1005AA978;
  qword_1005AA978 = v1;
}

id sub_100265E8C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  objc_opt_self();
  v3 = objc_alloc_init(AMSProcessInfo);
  v4 = [v2 processIdentifier];
  objc_opt_self();
  v5 = proc_pidpath(v4, &v23, 0x1000u);
  if (v5 <= 0 || (v6 = [[NSString alloc] initWithBytes:&v23 length:v5 encoding:4]) == 0)
  {
    v7 = 0;
    goto LABEL_29;
  }

  v7 = v6;
  objc_opt_self();
  v8 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v7, kCFURLPOSIXPathStyle, 0);

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = _CFBundleCopyBundleURLForExecutableURL();
  if (!v9)
  {
    CFRelease(v8);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = CFBundleCreate(kCFAllocatorDefault, v9);
  CFRelease(v10);
  CFRelease(v8);
  if (!v11)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v12 = CFBundleCopyBundleURL(v11);
  if (v12)
  {
    v13 = v12;
    [v3 setBundleURL:v12];
  }

  v8 = [(__CFDictionary *)CFBundleGetInfoDictionary(v11) copy];
  CFRelease(v11);
  if (v8 && [(__CFURL *)v8 count])
  {
    goto LABEL_16;
  }

LABEL_14:
  v14 = v7;
  objc_opt_self();
  v15 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v14, kCFURLPOSIXPathStyle, 0);

  if (!v15)
  {
LABEL_23:

    goto LABEL_24;
  }

  v16 = CFBundleCopyInfoDictionaryForURL(v15);
  CFRelease(v15);

  v8 = v16;
  if (v16)
  {
LABEL_16:
    v17 = [(__CFURL *)v8 objectForKeyedSubscript:kCFBundleIdentifierKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setBundleIdentifier:v17];
    }

    v18 = [(__CFURL *)v8 objectForKeyedSubscript:_kCFBundleShortVersionStringKey];
    if (!v18)
    {
      v18 = [(__CFURL *)v8 objectForKeyedSubscript:kCFBundleVersionKey];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setClientVersion:v18];
    }

    goto LABEL_23;
  }

LABEL_24:
  v19 = [v3 bundleIdentifier];

  if (!v19)
  {
    v20 = [(__CFString *)v7 lastPathComponent];
    [v3 setBundleIdentifier:v20];

    [v3 setClientVersion:@"1.0"];
  }

  v23 = 0u;
  v24 = 0u;
  if (v2)
  {
    [v2 auditToken];
  }

  v21 = [[NSData alloc] initWithBytes:&v23 length:32];
  [v3 setAuditTokenData:v21];

LABEL_29:

  return v3;
}

id sub_10026620C(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_33;
  }

  v5 = [v3 objectForKeyedSubscript:@"ITunesPreferredDsid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_8:
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "FamilyMember: Received an invalid server response for FamilyMember. serverResponse = %@", buf, 0xCu);
    }

    v6 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v30.receiver = a1;
  v30.super_class = FamilyMember;
  v7 = objc_msgSendSuper2(&v30, "init");
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"askToBuy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v7 + 9) = [v9 BOOLValue];
    v12 = [v4 objectForKeyedSubscript:@"firstName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v7 + 2);
    *(v7 + 2) = v13;

    v15 = [v4 objectForKeyedSubscript:@"ICloudDsid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v7 + 3);
    *(v7 + 3) = v16;

    v18 = [v4 objectForKeyedSubscript:@"accountName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v7 + 4);
    *(v7 + 4) = v19;

    objc_storeStrong(v7 + 5, v5);
    v21 = [v4 objectForKeyedSubscript:@"ITunesPreferredAccountName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v7 + 6);
    *(v7 + 6) = v22;

    v24 = [v4 objectForKeyedSubscript:@"lastName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v7 + 7);
    *(v7 + 7) = v25;

    v27 = [v4 objectForKeyedSubscript:@"sharingPurchases"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    *(v7 + 10) = [v28 BOOLValue];
  }

  a1 = v7;
  v11 = a1;
LABEL_32:

LABEL_33:
  return v11;
}

void *sub_1002665C0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = [NSNumber numberWithBool:*(v1 + 9)];
    [v2 setObject:v3 forKeyedSubscript:@"askToBuy"];

    [v2 setObject:v1[5] forKeyedSubscript:@"ITunesPreferredDsid"];
    v4 = [NSNumber numberWithBool:*(v1 + 10)];
    [v2 setObject:v4 forKeyedSubscript:@"sharingPurchases"];

    [v2 ams_setNullableObject:v1[2] forKey:@"firstName"];
    [v2 ams_setNullableObject:v1[3] forKey:@"ICloudDsid"];
    [v2 ams_setNullableObject:v1[4] forKey:@"accountName"];
    [v2 ams_setNullableObject:v1[6] forKey:@"ITunesPreferredAccountName"];
    [v2 ams_setNullableObject:v1[7] forKey:@"lastName"];
    v1 = [v2 copy];
  }

  return v1;
}

id sub_10026699C(void *a1)
{
  if (a1)
  {
    a1 = [NSURL URLWithString:a1];
    v1 = vars8;
  }

  return a1;
}

void *sub_1002669D8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = LibraryLazyResultsEnumerator;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[1];
      a1[1] = v6;

      a1[3] = a2;
    }
  }

  return a1;
}

void sub_100266F34(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100266F60(id a1)
{
  v1 = objc_alloc_init(IAPHistoryService);
  v2 = qword_1005AA988;
  qword_1005AA988 = v1;
}

id *sub_100267C18(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100267C7C([PurchaseOwner alloc], 0, v2);

  return v3;
}

id *sub_100267C7C(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = PurchaseOwner;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

id *sub_100267CFC()
{
  objc_opt_self();
  v0 = sub_100267C7C([PurchaseOwner alloc], 1, 0);

  return v0;
}

id *sub_100267D3C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100267C7C([PurchaseOwner alloc], 2, v2);

  return v3;
}

id *sub_100267DA0()
{
  objc_opt_self();
  v0 = sub_100267C7C([PurchaseOwner alloc], 3, 0);

  return v0;
}

id *sub_100267DE0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100267C7C([PurchaseOwner alloc], 4, v2);

  return v3;
}

id *sub_100267E44()
{
  objc_opt_self();
  v0 = sub_100267C7C([PurchaseOwner alloc], 5, 0);

  return v0;
}

id sub_100268030()
{
  objc_opt_self();
  v2[0] = @"bundle_id";
  v2[1] = @"source_bundle_id";
  v2[2] = @"timestamp";
  v2[3] = @"payload";
  v2[4] = @"has_been_posted";
  v0 = [NSArray arrayWithObjects:v2 count:5];

  return v0;
}

id *sub_1002680E4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PurchaseHistoryUpdateDAAPResponseDecoder;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_10026815C(uint64_t a1)
{
  if (a1 && (*(a1 + 16) & 1) == 0)
  {
    v2 = [[DKDAAPParser alloc] initWithData:*(a1 + 8)];
    [v2 setDelegate:a1];
    [v2 parse];
  }
}

NSObject *sub_100268548(NSObject *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 URL];
    v3 = [v2 URLByAppendingPathComponent:@"Info.plist"];

    v14 = 0;
    v4 = [[NSDictionary alloc] initWithContentsOfURL:v3 error:&v14];
    v5 = v14;
    if (v4)
    {
      v6 = [v4 objectForKeyedSubscript:@"NSAdvertisingAttributionReportEndpoint"];
      if (!v6)
      {
        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[SKAdNetwork: Did not find developer pingback domain in Info.plist", buf, 2u);
        }

        v7 = 0;
        goto LABEL_13;
      }

      v7 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v7;
        v1 = v7;
LABEL_14:

        goto LABEL_15;
      }

      v8 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "[SKAdNetwork: Developer pingback domain is of unexpected type in Info.plist";
      v10 = v8;
      v11 = 2;
    }

    else
    {
      v7 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        v1 = 0;
        goto LABEL_14;
      }

      v8 = [v1 bundleIdentifier];
      *buf = 138543362;
      v16 = v8;
      v9 = "[SKAdNetwork: Did not find Info.plist for app: %{public}@";
      v10 = v7;
      v11 = 12;
    }

    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
LABEL_12:

    goto LABEL_13;
  }

LABEL_15:

  return v1;
}

void sub_100268B54(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void *sub_100268CD8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = ODRAssetPack;
    v7 = objc_msgSendSuper2(&v28, "init");
    a1 = v7;
    if (v7)
    {
      sub_10023E000(v7, v6, @"bundle_id");
      v8 = [v5 objectForKeyedSubscript:@"bundleKey"];
      sub_10023E000(a1, v8, @"bundle_key");

      v9 = [v5 objectForKeyedSubscript:@"chunkSize"];
      sub_10023E000(a1, v9, @"chunk_size");

      v10 = [v5 objectForKeyedSubscript:@"downloadPriority"];
      sub_10023E000(a1, v10, @"download_priority");

      v11 = [v5 objectForKeyedSubscript:@"fileSize"];
      sub_10023E000(a1, v11, @"file_size");

      v12 = [v5 objectForKeyedSubscript:@"hashes"];
      sub_10023E000(a1, v12, @"hash_array");

      v13 = [v5 objectForKeyedSubscript:@"knownContentHashes"];
      sub_10023E000(a1, v13, @"known_content_hashes");

      v14 = [v5 objectForKeyedSubscript:@"md5"];
      sub_10023E000(a1, v14, @"md5");

      v15 = [v5 objectForKeyedSubscript:@"primaryContentHash"];
      sub_10023E000(a1, v15, @"primary_content_hash");

      v16 = [v5 objectForKeyedSubscript:@"sha"];
      sub_10023E000(a1, v16, @"sha");

      v17 = [v5 objectForKeyedSubscript:@"isStreamable"];
      sub_10023E000(a1, v17, @"streamable");

      v18 = [v5 objectForKeyedSubscript:@"URL"];
      sub_10023E000(a1, v18, @"source_url");

      v19 = [v5 objectForKeyedSubscript:@"uncompressedSize"];
      sub_10023E000(a1, v19, @"uncompressed_size");

      v20 = [v5 objectForKeyedSubscript:@"local_url"];
      sub_10023E000(a1, v20, @"local_url");

      v21 = [v5 objectForKeyedSubscript:@"pin_count"];
      sub_10023E000(a1, v21, @"pin_count");

      v22 = [v5 objectForKeyedSubscript:@"purgeable"];
      sub_10023E000(a1, v22, @"purgeable");

      v23 = [v5 objectForKeyedSubscript:@"purge_reason"];
      sub_10023E000(a1, v23, @"purge_reason");

      v24 = [v5 objectForKeyedSubscript:@"effective_always_preserve"];
      sub_10023E000(a1, v24, @"effective_always_preserve");

      v25 = [v5 objectForKeyedSubscript:@"effective_preservation_priority"];
      sub_10023E000(a1, v25, @"effective_preservation_priority");

      v26 = [v5 objectForKeyedSubscript:@"last_used_date"];
      sub_10023E000(a1, v26, @"last_used_date");
    }
  }

  return a1;
}

id sub_1002690FC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100269134(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"bundle_key");
    v1 = vars8;
  }

  return a1;
}

id sub_10026916C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"chunk_size");
    v1 = vars8;
  }

  return a1;
}

id sub_1002691A4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"download_identifier");
    v1 = vars8;
  }

  return a1;
}

id sub_1002691DC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"download_priority");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100269214(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"effective_always_preserve");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

double sub_10026925C(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = sub_10023E0F8(a1, @"effective_preservation_priority");
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

id sub_1002692B0(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"file_size");
    v1 = vars8;
  }

  return a1;
}

id sub_1002692E8(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"hash_array");
    v1 = vars8;
  }

  return a1;
}

id sub_100269320(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"known_content_hashes");
    v1 = vars8;
  }

  return a1;
}

id sub_100269358(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"streamable");
    v1 = vars8;
  }

  return a1;
}

id sub_100269390(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"local_url");
    if (v1)
    {
      v2 = [NSURL URLWithString:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100269408(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"md5");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100269440(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"pin_count");
    v2 = [v1 longLongValue];

    return v2;
  }

  return result;
}

id sub_100269488(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"primary_content_hash");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1002694C0(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"purgeable");
    v2 = [v1 BOOLValue];

    return v2;
  }

  return result;
}

uint64_t sub_100269508(uint64_t result)
{
  if (result)
  {
    v1 = sub_10023E0F8(result, @"purge_reason");
    v2 = [v1 integerValue];

    return v2;
  }

  return result;
}

id sub_100269550(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"uncompressed_size");
    v1 = vars8;
  }

  return a1;
}

id sub_100269588(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"source_url");
    v2 = [NSURL URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002695F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    sub_10023E000(a1, v3, @"effective_always_preserve");
  }
}

void sub_100269664(uint64_t a1)
{
  if (a1)
  {
    v2 = [NSNumber numberWithDouble:?];
    sub_10023E000(a1, v2, @"effective_preservation_priority");
  }
}

void sub_1002696D0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 absoluteString];
    sub_10023E000(a1, v3, @"local_url");
  }
}

void sub_100269738(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithLongLong:a2 & ~(a2 >> 63)];
    sub_10023E000(a1, v4, @"pin_count");

    if (a2 <= 0)
    {
      v5 = +[NSDate date];
      sub_10023E000(a1, v5, @"last_used_date");
    }

    sub_1002697EC(a1, a2 < 1);
  }
}

void sub_1002697EC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = [NSNumber numberWithBool:a2];
    sub_10023E000(a1, v4, @"purgeable");

    v5 = sub_100269390(a1);
    v6 = [v5 path];

    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = sub_10029869C();
    v8 = v7;
    if (v2)
    {
      if (v7)
      {
        v9 = 98308;
        v10 = 1;
        goto LABEL_8;
      }
    }

    else if (v7)
    {
      v9 = 0;
      v10 = 0;
LABEL_8:
      v11 = sub_100299BB8(v7, v9, v10, v6);

      if (v11)
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v12 = sub_100269134(a1);
          if (v2)
          {
            v13 = @"purgeable";
          }

          else
          {
            v13 = @"not purgeable";
          }

          v14 = 138412802;
          v15 = v12;
          v16 = 2114;
          v17 = v13;
          v18 = 2082;
          v19 = strerror(v11);
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Failed to mark asset as %{public}@: %{public}s", &v14, 0x20u);
        }

        goto LABEL_10;
      }

LABEL_11:

      return;
    }

LABEL_10:

    goto LABEL_11;
  }
}

void sub_1002699A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    sub_10023E000(a1, v3, @"purge_reason");
  }
}

void sub_100269A18(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 absoluteString];
    sub_10023E000(a1, v3, @"source_url");
  }
}

id sub_100269B0C(void *a1)
{
  if (a1)
  {
    v2 = sub_10023E0F8(a1, @"sha");

    if (v2)
    {
      v3 = &off_100547590;
      v4 = 1;
    }

    else
    {
      v5 = sub_100269408(a1);

      v4 = v5 != 0;
      if (v5)
      {
        v3 = &off_1005475A8;
      }

      else
      {
        v3 = 0;
      }
    }

    v6 = sub_1002692E8(a1);
    v13 = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v13];
    v8 = v13;
    v9 = sub_10026916C(a1);
    v10 = v9;
    v11 = 0;
    if (v4 && v9 && v7)
    {
      v14[0] = @"hash_type";
      v14[1] = @"bytes_to_hash";
      v15[0] = v3;
      v15[1] = v9;
      v14[2] = @"hash_array";
      v15[2] = v7;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void *sub_100269CA8(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100269390(a1);
    if (v2)
    {
      v3 = sub_1001FD93C(v1);
      v4 = sub_1002403E8(v3);
      v1 = sub_1001FE144(ODRAssetPack, v2, v4);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_100269D68(id a1)
{
  v1 = objc_alloc_init(NSMutableArray);
  v2 = qword_1005ABBD8;
  qword_1005ABBD8 = v1;
}

char *sub_100269DA4(void *a1, void *a2)
{
  v3 = a2;
  if (a1 && (v54.receiver = a1, v54.super_class = ODRClient, (v4 = objc_msgSendSuper2(&v54, "init")) != 0))
  {
    v5 = objc_opt_new();
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(v4 + 10);
    *(v4 + 10) = v7;

    v9 = objc_alloc_init(NSLock);
    v10 = *(v4 + 11);
    *(v4 + 11) = v9;

    v11 = _NSBundleResourceRequestServerInterface();
    [v3 setExportedInterface:v11];

    v12 = _NSBundleResourceRequestClientInterface();
    [v3 setRemoteObjectInterface:v12];

    [v3 setExportedObject:v4];
    v13 = [v3 remoteObjectProxy];
    objc_storeStrong(v4 + 8, v13);

    memset(&error[1], 0, 32);
    if (v3)
    {
      [v3 auditToken];
    }

    Default = CFAllocatorGetDefault();
    token = *&error[1];
    v15 = SecTaskCreateWithAuditToken(Default, &token);
    v16 = v15;
    if (v15)
    {
      error[0] = 0;
      v17 = SecTaskCopyValueForEntitlement(v15, @"application-identifier", error);
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        token.val[0] = 138543362;
        *&token.val[1] = v17;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Application Identifier is: %{public}@", &token, 0xCu);
      }

      CFRelease(v16);
      *token.val = 0;
      CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
      if (*token.val)
      {
        v19 = *(v4 + 9);
        *(v4 + 9) = *token.val;
      }
    }

    v20 = *(v4 + 9);
    if (v20 || ([XPCClient clientIDForConnection:v3], v21 = objc_claimAutoreleasedReturnValue(), v22 = *(v4 + 9), *(v4 + 9) = v21, v22, (v20 = *(v4 + 9)) != 0))
    {
      v23 = sub_100399B78(ODRApplication, v20);
      v24 = *(v4 + 2);
      *(v4 + 2) = v23;
    }

    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(v4 + 9);
      token.val[0] = 138543362;
      *&token.val[1] = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Connected with [%{public}@]", &token, 0xCu);
    }

    v27 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v4 + 2);
      v29 = sub_10039B79C(v28);
      token.val[0] = 138543618;
      *&token.val[1] = v28;
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Application: %{public}@ Version: %{public}@", &token, 0x16u);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10026A444;
    v51[3] = &unk_10051AF98;
    v30 = v4;
    v52 = v30;
    [v3 setInvalidationHandler:v51];
    v31 = sub_1001C13C8();
    sub_1001C14D8(v31);

    if (v3)
    {
      [v3 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v32 = *&token.val[4];
    *(v30 + 28) = *token.val;
    *(v30 + 44) = v32;
    [v3 resume];
    v33 = qword_1005ABBD8;
    objc_sync_enter(v33);
    [qword_1005ABBD8 addObject:v30];
    objc_sync_exit(v33);

    v34 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v48 = objc_getProperty(v30, v35, 72, 1);
      token.val[0] = 138543362;
      *&token.val[1] = v48;
      _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Created ODRClient from %{public}@", &token, 0xCu);
    }

    if (*(v4 + 9))
    {
      v36 = objc_autoreleasePoolPush();
      v37 = [LSApplicationRecord alloc];
      v38 = *(v4 + 9);
      v50 = 0;
      v39 = [v37 initWithBundleIdentifier:v38 allowPlaceholder:0 error:&v50];
      v40 = v50;
      if (v40)
      {
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v49 = *(v4 + 9);
          token.val[0] = 138543618;
          *&token.val[1] = v49;
          LOWORD(token.val[3]) = 2114;
          *(&token.val[3] + 2) = v40;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to get an application record for %{public}@: %{public}@", &token, 0x16u);
        }
      }

      else
      {
        v43 = [v39 appClipMetadata];
        v44 = v43 == 0;

        if (!v44)
        {
          v45 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(token.val[0]) = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Received ODR connection from an App Clip", &token, 2u);
          }

          v30[24] = 1;
        }

        if (sub_10040C5B4(v39))
        {
          v46 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(token.val[0]) = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Received ODR connection from an unsupported distribution", &token, 2u);
          }

          v30[24] = 1;
        }
      }

      objc_autoreleasePoolPop(v36);
    }

    else
    {
      v42 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "No bundle ID, unable to determine if this is an App Clip.", &token, 2u);
      }
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

void sub_10026A444(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 72, 1);
    }

    v10 = @"Unknown Client";
    if (Property)
    {
      v10 = Property;
    }

    LODWORD(v11) = 138543362;
    *(&v11 + 4) = v10;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Lost connection to '%{public}@'.", &v11, 0xCu);
  }

  v4 = *(a1 + 32);
  objc_opt_self();
  if (v4[2])
  {
    v5 = sub_100208FBC();
    *&v11 = _NSConcreteStackBlock;
    *(&v11 + 1) = 3221225472;
    v12 = sub_100270B5C;
    v13 = &unk_10051AF70;
    v14 = v4;
    [v5 modifyUsingTransaction:&v11];
  }

  v6 = qword_1005ABBD8;
  objc_sync_enter(v6);
  [qword_1005ABBD8 removeObject:v4];
  objc_sync_exit(v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  *(v7 + 96) = 0;

  sub_100232BB0(*(a1 + 32), 0);
}

id sub_10026A620()
{
  objc_opt_self();
  v0 = qword_1005ABBD8;
  objc_sync_enter(v0);
  v1 = [qword_1005ABBD8 copy];
  objc_sync_exit(v0);

  return v1;
}

id sub_10026A694(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = qword_1005ABBD8;
  objc_sync_enter(v3);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = qword_1005ABBD8;
  v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if (v9)
        {
          Property = objc_getProperty(*(*(&v15 + 1) + 8 * v8), v5, 72, 1);
        }

        else
        {
          Property = 0;
        }

        v11 = Property;
        v12 = [v11 isEqualToString:{v2, v15}];

        if (v12)
        {
          v6 = v9;
          goto LABEL_15;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v13 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v13;
    }

    while (v13);
  }

LABEL_15:

  objc_sync_exit(v3);

  return v6;
}

id sub_10026A844(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  objc_sync_enter(v6);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10026ACD4;
  v27 = sub_10026ACE4;
  v28 = 0;
  v7 = sub_100208FBC();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10026ACEC;
  v20[3] = &unk_10051DC00;
  v22 = &v23;
  v8 = v4;
  v21 = v8;
  [v7 readUsingSession:v20];

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Asset Pack : %{public}@ has no localURLString.", &buf, 0xCu);
  }

  v10 = sub_100269588(v24[5]);
  if (sub_10020E6F8(v10))
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "This URL is invalid, we need to refresh the manifest. [%{public}@]", &buf, 0xCu);
    }

    v12 = v5;
    objc_opt_self();
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10026ACD4;
    v34 = sub_10026ACE4;
    v35 = 0;
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Refreshing manifest for application: %{public}@", &buf, 0xCu);
    }

    v14 = dispatch_semaphore_create(0);
    v15 = sub_10024D554([ODRManifestRequestTask alloc], v12);
    objc_initWeak(&location, v15);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v37 = sub_10026AD40;
    v38 = &unk_10051F2D0;
    objc_copyWeak(v42, &location);
    v16 = v12;
    v39 = v16;
    v41 = &v30;
    v17 = v14;
    v40 = v17;
    [v15 setCompletionBlock:&buf];
    sub_10023EDE4(ODRTaskQueue, v15, -1);
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v18 = v31[5];

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v23, 8);
  objc_sync_exit(v6);

  return v18;
}

void sub_10026AC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a16, 8);
  objc_sync_exit(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_10026ACD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10026ACEC(uint64_t a1, id a2)
{
  v3 = sub_1001C3A68(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10026AD40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[24])
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed manifest refresh for application: %{public}@", buf, 0xCu);
      }

      v7 = sub_100208FBC();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10026AF44;
      v13[3] = &unk_10051F2A8;
      v14 = v4;
      v15 = *(a1 + 32);
      [v7 modifyUsingTransaction:v13];

      v8 = v14;
      goto LABEL_10;
    }

    WeakRetained = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  v9 = WeakRetained;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v17 = v12;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Manifest refresh failed for application: %{public}@ error: %{public}@", buf, 0x16u);
  }

  v11 = *(*(a1 + 48) + 8);
  v8 = *(v11 + 40);
  *(v11 + 40) = v9;
LABEL_10:

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_10026AF44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = sub_10021A80C(v5, v7, *(a1 + 40), 1);

  return v8;
}

uint64_t sub_10026B380(uint64_t a1, uint64_t a2)
{
  result = sub_1001C4560(a2, *(*(a1 + 32) + 16));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10026B3C0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10039A6A0(*(a1 + 16));
    objc_opt_self();
    v3 = qword_1005ABBD8;
    objc_sync_enter(v3);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = qword_1005ABBD8;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          Property = *(*(&v15 + 1) + 8 * i);
          if (Property)
          {
            Property = objc_getProperty(Property, v5, 72, 1);
          }

          v11 = Property;
          v12 = [v11 isEqualToString:v2];

          v7 += v12;
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);

      objc_sync_exit(v3);
      if (v7 == 1)
      {
        v13 = sub_100208FBC();
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100270D24;
        v14[3] = &unk_10051AF70;
        v14[4] = a1;
        [v13 modifyUsingTransaction:v14];
      }
    }

    else
    {

      objc_sync_exit(v3);
    }

    sub_10026B608(a1);
  }
}

void sub_10026B608(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 88);
    *(a1 + 88) = 0;
    v2 = v1;

    [v2 unlock];
  }
}

void sub_10026BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10026BA78(uint64_t a1, void *a2)
{
  v3 = sub_1001C40CC(a2, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10026BAD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 UTF8String];
    v5 = sub_10026EBA4(a1);
    v6 = v5;
    if (v5)
    {
      v9[0] = _NSODRSandboxExtensionKey;
      v9[1] = _NSODRSandboxRootPathKey;
      v10[0] = v5;
      v10[1] = v4;
      v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10026C200(uint64_t a1, void *a2)
{
  v3 = sub_1001C40CC(a2, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10026C7D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    _Block_object_dispose((v2 - 192), 8);
    objc_begin_catch(exception_object);
    JUMPOUT(0x10026C6B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026C850(uint64_t a1, id a2)
{
  v3 = sub_1001C4808(a2, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10026CB14(uint64_t a1)
{
  if (sub_10026D590(*(a1 + 32), *(a1 + 40)))
  {
    v50 = [NSProgress progressWithTotalUnitCount:-1];
    v49 = sub_10021C6F4([ODRTagsRequest alloc], v50);
    v46 = sub_10026D960(*(a1 + 32), *(a1 + 40));
    v47 = objc_opt_new();
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = [v46 count];
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Going to pin asset %lu pack ids.", buf, 0xCu);
    }

    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Going to pin asset packs: %{public}@", buf, 0xCu);
    }

    if ([v50 isCancelled])
    {
      (*(*(a1 + 56) + 16))();
    }

    else if ([v46 count])
    {
      [v50 setTotalUnitCount:{objc_msgSend(v46, "count")}];
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x3032000000;
      v70[3] = sub_10026ACD4;
      v70[4] = sub_10026ACE4;
      v71 = objc_opt_new();
      v69[0] = 0;
      v69[1] = v69;
      v69[2] = 0x2020000000;
      v69[3] = 0;
      v67[0] = 0;
      v67[1] = v67;
      v67[2] = 0x2020000000;
      v68 = 0;
      [v50 becomeCurrentWithPendingUnitCount:{objc_msgSend(v46, "count")}];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = v46;
      v6 = [obj countByEnumeratingWithState:&v63 objects:v83 count:16];
      if (v6)
      {
        v45 = *v64;
        do
        {
          v44 = v6;
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v64 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v63 + 1) + 8 * i);
            v9 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              v39 = sub_100269134(v8);
              *buf = 138543362;
              *&buf[4] = v39;
              _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Trying to pin asset pack with ID: %{public}@", buf, 0xCu);
            }

            v10 = sub_100269390(v8);
            if (!v10 || (sub_100269390(v8), v11 = objc_claimAutoreleasedReturnValue(), [v11 absoluteString], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length") == 0, v12, v11, v10, v13))
            {
              v14 = sub_100269134(v8);
              v15 = sub_10026A844(ODRClient, v14, *(*(a1 + 32) + 16));
            }

            if ([v50 isCancelled])
            {
              (*(*(a1 + 56) + 16))();

              _Block_object_dispose(v67, 8);
              _Block_object_dispose(v69, 8);
              _Block_object_dispose(v70, 8);

              goto LABEL_45;
            }

            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = sub_100269134(v8);
              *buf = 138543362;
              *&buf[4] = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Pinning asset pack [%{public}@]", buf, 0xCu);
            }

            v18 = *(a1 + 32);
            v19 = sub_100269134(v8);
            v20 = *(a1 + 64);
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v52 = sub_10026DAA8;
            v53 = &unk_10051F2F8;
            v54 = v47;
            v60 = v67;
            v55 = v50;
            v59 = *(a1 + 56);
            v61 = v69;
            v56 = *(a1 + 32);
            v57 = v8;
            v62 = v70;
            v21 = obj;
            v58 = v21;
            v22 = v19;
            v23 = v49;
            v24 = v51;
            if (v18)
            {
              v77 = 0;
              v78 = &v77;
              v79 = 0x3032000000;
              v80 = sub_10026ACD4;
              v81 = sub_10026ACE4;
              v82 = 0;
              v25 = sub_100208FBC();
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_1002708D0;
              v87 = &unk_10051F438;
              v26 = v22;
              v88 = v26;
              v89 = v18;
              v91 = &v77;
              v27 = v23;
              v90 = v27;
              [v25 readUsingSession:buf];

              v29 = v78;
              v30 = v78[5];
              if (v30)
              {
                *(v30 + 176) = v20;
                v31 = v29[5];
                if (v31 && (*(v31 + 82) = 1, (v32 = v29[5]) != 0) && (objc_setProperty_atomic(v32, v28, v27, 224), v29 = v78, (v33 = v78[5]) != 0))
                {
                  *(v33 + 88) = 25;
                  v34 = v29[5];
                }

                else
                {
                  v34 = 0;
                }

                v74[0] = _NSConcreteStackBlock;
                v74[1] = 3221225472;
                v74[2] = sub_1002709BC;
                v74[3] = &unk_10051B8A8;
                v75 = v26;
                v35 = v24;
                v76 = v35;
                if (v34)
                {
                  [*(v34 + 256) addErrorBlock:v74];
                  v29 = v78;
                }

                v36 = v29[5];
                v72[0] = _NSConcreteStackBlock;
                v72[1] = 3221225472;
                v72[2] = sub_100270AC8;
                v72[3] = &unk_10051F460;
                v73 = v35;
                if (v36)
                {
                  [*(v36 + 256) addSuccessBlock:v72];
                }

                v37 = sub_1003F281C();
                sub_1003F29AC(v37, v78[5]);

                v38 = v75;
              }

              else
              {
                v38 = [_TtC9appstored21ODRPublicErrorMapping publicErrorForError:0];
                v52(v24, -1, 0, v38);
              }

              _Block_object_dispose(&v77, 8);
            }
          }

          v6 = [v21 countByEnumeratingWithState:&v63 objects:v83 count:16];
        }

        while (v6);
      }

      [v50 resignCurrent];
      _Block_object_dispose(v67, 8);
      _Block_object_dispose(v69, 8);
      _Block_object_dispose(v70, 8);
    }

    else
    {
      v40 = *(a1 + 56);
      v41 = +[NSDictionary dictionary];
      (*(v40 + 16))(v40, v41, 0);
    }

LABEL_45:
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v42 = *(a1 + 40);
      v43 = *(a1 + 48);
      *buf = 138543618;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Pin tags failed for invalid tag in set [%{public}@], bundleURL: %{public}@", buf, 0x16u);
    }

    v50 = [NSString stringWithFormat:@"Request could not be completed.  Invalid tag in set '%@.'", *(a1 + 40)];
    v84 = NSLocalizedFailureReasonErrorKey;
    v85 = v50;
    v49 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v5 = *(a1 + 56);
    v46 = [NSError errorWithDomain:NSCocoaErrorDomain code:4994 userInfo:v49];
    (*(v5 + 16))(v5, 0, v46);
  }
}

void sub_10026D520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026D590(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_10026ACD4;
    v35 = sub_10026ACE4;
    v36 = 0;
    v4 = sub_100208FBC();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100270D38;
    v30[3] = &unk_10051DC00;
    v30[4] = a1;
    v30[5] = &v31;
    [v4 readUsingSession:v30];

    v5 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v32[5];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v42 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = sub_1002C0070(*(*(&v26 + 1) + 8 * i));
          [v5 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v26 objects:v42 count:16];
      }

      while (v7);
    }

    v11 = [v5 count];
    if (v11 >= [v3 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v3;
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v41 count:16];
      if (v14)
      {
        v15 = *v23;
        while (2)
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * j);
            if (([v5 containsObject:{v17, v22}] & 1) == 0)
            {
              v19 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v21 = *(a1 + 72);
                *buf = 138543618;
                v38 = v17;
                v39 = 2114;
                v40 = v21;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Tag %{public}@ isn't valid for [%{public}@].", buf, 0x16u);
              }

              goto LABEL_24;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v41 count:16];
          v18 = 1;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 72);
        *buf = 138543362;
        v38 = v13;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Tags aren't valid for [%{public}@].", buf, 0xCu);
      }

LABEL_24:
      v18 = 0;
    }

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_10026D960(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10026ACD4;
    v14 = sub_10026ACE4;
    v15 = 0;
    v4 = sub_100208FBC();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100270754;
    v6[3] = &unk_10051F410;
    v9 = &v10;
    v7 = v3;
    v8 = a1;
    [v4 readUsingSession:v6];

    a1 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_10026DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10026DAA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) lock];
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    goto LABEL_21;
  }

  if ([*(a1 + 40) isCancelled])
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Progress was cancelled...", buf, 2u);
    }

    if (v8)
    {
      goto LABEL_8;
    }

    v30 = NSLocalizedRecoverySuggestionErrorKey;
    v31 = @"Request for resources was cancelled.";
    v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:v10];
  }

  if (v8)
  {
LABEL_8:
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error pinning asset pack: %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
    v12 = *(a1 + 72);
    v13 = [_TtC9appstored21ODRPublicErrorMapping publicErrorForError:v8];
    (*(v12 + 16))(v12, 0, v13);

    goto LABEL_21;
  }

  ++*(*(*(a1 + 88) + 8) + 24);
  if (a2 >= 1)
  {
    v14 = *(a1 + 48);
    v15 = sub_100269134(*(a1 + 56));
    sub_10026DE80(v14, v15);

    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v23 = sub_100269134(*(a1 + 56));
      *buf = 138543618;
      v27 = v7;
      v28 = 2114;
      v29 = v23;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Creating Result [%{public}@] [%{public}@]", buf, 0x16u);
    }

    if (v7)
    {
      v24 = _NSODRURLKey;
      v25 = v7;
      v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = *(*(*(a1 + 96) + 8) + 40);
      v19 = sub_100269134(*(a1 + 56));
      [v18 setObject:v17 forKey:v19];
    }
  }

  v20 = *(*(*(a1 + 88) + 8) + 24);
  if (v20 == [*(a1 + 64) count])
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138543618;
      v27 = v22;
      v28 = 2114;
      v29 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling the completion handler. Result [%{public}@] Error [%{public}@]", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  v8 = 0;
LABEL_21:
  [*(a1 + 32) unlock];
}

void sub_10026DE80(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = a2;
    v5 = [v3 objectForKeyedSubscript:v4];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = &off_1005475C0;
    }

    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1);

    [*(a1 + 8) setObject:v7 forKeyedSubscript:v4];
  }
}

void sub_10026E288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10026E2C4(uint64_t a1, unint64_t a2)
{
  v54 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v58 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v68 objects:v86 count:16];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = *v69;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v69 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v68 + 1) + 8 * i);
      v9 = sub_100269550(v8);
      v10 = [v9 integerValue];

      if (v10 > a2)
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_100269134(v8);
          *buf = 138543362;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset Pack [%{public}@] is on the device but due to space constraint it can not be pinned, not doing any conditional pinning.", buf, 0xCu);
        }

        goto LABEL_17;
      }

      v11 = sub_100269CA8(v8);
      v12 = ASDLogHandleForCategory();
      v13 = v12;
      if ((v11 & 1) == 0)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_100269134(v8);
          *buf = 138543362;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset Pack [%{public}@] is NOT on the device, not doing any conditional pinning.", buf, 0xCu);
        }

LABEL_17:

        *(*(v58[6] + 8) + 24) = 1;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = sub_100269134(v8);
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Asset Pack [%{public}@] is on the device.", buf, 0xCu);
      }

      [v54 addObject:v8];
      a2 -= v10 & ~(v10 >> 63);
    }

    v5 = [v4 countByEnumeratingWithState:&v68 objects:v86 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v17 = v58;
  v18 = *(*(v58[6] + 8) + 24);
  if (v18 == 1)
  {
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "A required asset pack is not available locally. Not continuing with the conditionally pin.", buf, 2u);
    }

    v17 = v58;
    LOBYTE(v18) = *(*(v58[6] + 8) + 24);
  }

  *(*(v17[7] + 8) + 24) = v18 ^ 1;
  v20 = objc_opt_new();
  v21 = *(v58[8] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  if (*(*(v17[7] + 8) + 24) != 1)
  {
    goto LABEL_56;
  }

  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v64 = 0u;
  obj = v54;
  v23 = [obj countByEnumeratingWithState:&v64 objects:v85 count:16];
  if (!v23)
  {
    goto LABEL_44;
  }

  v24 = *v65;
  v56 = _NSODRURLKey;
  v53 = _NSODRSandboxExtensionKey;
  while (2)
  {
    v25 = 0;
    while (2)
    {
      if (*v65 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v64 + 1) + 8 * v25);
      v27 = sub_100269440(v26);
      v28 = sub_100269390(v26);
      v29 = v28;
      if (v27)
      {
        if (v27 >= 1)
        {
          v81 = v56;
          v82 = v28;
          v30 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v31 = *(*(v58[8] + 8) + 40);
          v32 = sub_100269134(v26);
          [v31 setObject:v30 forKey:v32];
          goto LABEL_37;
        }
      }

      else
      {
        v33 = v28;
        v34 = [v29 fileSystemRepresentation];
        v35 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v40 = sub_100269134(v26);
          *buf = 138543618;
          *&buf[4] = v40;
          *&buf[12] = 2082;
          *&buf[14] = v34;
          _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "AssetPack will be newly pinned, attempting to get sandbox extension. [BundleID: %{public}@ Path: %{public}s]", buf, 0x16u);
        }

        v30 = sub_10026EBA4(v58[5]);
        v36 = ASDLogHandleForCategory();
        v37 = v36;
        if (!v30)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = v34;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Unable to get sandbox token for path [%{public}s]", buf, 0xCu);
          }

          *(*(v58[6] + 8) + 24) = 1;
          v41 = *(v58[8] + 8);
          v42 = *(v41 + 40);
          *(v41 + 40) = 0;

          goto LABEL_44;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = v34;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Got a sandbox token for url [%{public}s]", buf, 0xCu);
        }

        v83[0] = v56;
        v83[1] = v53;
        v84[0] = v29;
        v84[1] = v30;
        v32 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:2];
        v38 = *(*(v58[8] + 8) + 40);
        v39 = sub_100269134(v26);
        [v38 setObject:v32 forKey:v39];

LABEL_37:
      }

      if (v23 != ++v25)
      {
        continue;
      }

      break;
    }

    v23 = [obj countByEnumeratingWithState:&v64 objects:v85 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_44:

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v57 = obj;
  v43 = [v57 countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v43)
  {
    v44 = *v61;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v61 != v44)
        {
          objc_enumerationMutation(v57);
        }

        v46 = *(*(&v60 + 1) + 8 * j);
        v47 = sub_100269440(v46);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v79 = 0;
        v48 = sub_100208FBC();
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10026EC38;
        v59[3] = &unk_10051F348;
        v59[5] = buf;
        v59[6] = v47 + 1;
        v59[4] = v46;
        [v48 modifyUsingTransaction:v59];

        v49 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v52 = sub_100269134(v46);
          *v72 = 138543874;
          v73 = v52;
          v74 = 2048;
          v75 = v47;
          v76 = 2048;
          v77 = v47 + 1;
          _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "AssetPack [%{public}@] pin count is going from [%lld] to [%lld]", v72, 0x20u);
        }

        if (*(*&buf[8] + 24) == 1)
        {
          v50 = v58[5];
          v51 = sub_100269134(v46);
          sub_10026DE80(v50, v51);
        }

        _Block_object_dispose(buf, 8);
      }

      v43 = [v57 countByEnumeratingWithState:&v60 objects:v80 count:16];
    }

    while (v43);
  }

LABEL_56:
}

id sub_10026EBA4(uint64_t a1)
{
  if (a1)
  {
    v4 = *(a1 + 28);
    v5 = *(a1 + 44);
    v1 = sandbox_extension_issue_file_to_process();
    if (v1)
    {
      v2 = [NSString stringWithUTF8String:v1, v4, v5];
    }

    else
    {
      v2 = 0;
    }

    free(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10026EC38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  sub_100269738(v3, v4);
  LOBYTE(v3) = sub_10021BB90(v5, *(a1 + 32));

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_10026EE20(uint64_t a1)
{
  v2 = sub_10026D960(*(a1 + 32), *(a1 + 40));
  v3 = [v2 count];
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v2 count];
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 134218498;
      v24 = v6;
      v25 = 2114;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %lu asset packs for tags %{public}@, set the loading priority to %f", buf, 0x20u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v2;
    v9 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = sub_1003F281C();
          v15 = sub_1003F76B4(v14, v13);

          if (v15)
          {
            v15[22] = *(a1 + 48);
          }
        }

        v10 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else if (v5)
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    *buf = 138543618;
    v24 = v16;
    v25 = 2048;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No asset packs found for tags %{public}@ when asked to set the loading priority to %f", buf, 0x16u);
  }
}

void sub_10026F298(uint64_t a1)
{
  if (sub_10026D590(*(a1 + 32), *(a1 + 40)))
  {
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_10026ACD4;
    v44[4] = sub_10026ACE4;
    v45 = objc_opt_new();
    sub_10026D960(*(a1 + 32), *(a1 + 40));
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v1 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (!v1)
    {
      goto LABEL_32;
    }

    v33 = *v41;
    while (1)
    {
      v34 = v1;
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v40 + 1) + 8 * i);
        if (sub_100269440(v3) >= 1)
        {
          v4 = *(a1 + 32);
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v36 = sub_10026F9AC;
          v37 = &unk_10051F398;
          v38 = v3;
          v39 = v44;
          v5 = v3;
          v6 = v35;
          if (v4)
          {
            if (*(v4 + 72))
            {
              v7 = sub_100269440(v5);
              if (v7 >= 1)
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v61 = 0;
                v8 = sub_100208FBC();
                *v55 = _NSConcreteStackBlock;
                *&v55[8] = 3221225472;
                *&v55[16] = sub_100270D90;
                v56 = &unk_10051F348;
                v9 = v5;
                v57 = v9;
                v58 = buf;
                v59 = v7;
                [v8 modifyUsingTransaction:v55];

                if (*(*&buf[8] + 24) == 1)
                {
                  v10 = sub_100269134(v9);
                  v11 = [*(v4 + 8) objectForKeyedSubscript:v10];
                  v12 = v11;
                  if (v11)
                  {
                    v13 = [v11 intValue];
                    if (v13 <= 1)
                    {
                      v14 = 1;
                    }

                    else
                    {
                      v14 = v13;
                    }

                    v15 = [NSNumber numberWithInt:(v14 - 1)];

                    [*(v4 + 8) setObject:v15 forKeyedSubscript:v10];
                  }
                }

                v16 = sub_100269440(v9);
                v17 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  v22 = sub_100269134(v9);
                  *v49 = 134218498;
                  v50 = v7;
                  v51 = 2048;
                  v52 = v16;
                  v53 = 2114;
                  v54 = v22;
                  _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Changed Pin Count from %lld to %lld for asset pack %{public}@", v49, 0x20u);
                }

                v36(v6, v16);
                _Block_object_dispose(buf, 8);
                goto LABEL_29;
              }

              v19 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v23 = sub_100269134(v5);
                *buf = 138543618;
                *&buf[4] = v23;
                *&buf[12] = 2048;
                *&buf[14] = v7;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Pin count for asset pack with ID: %{public}@ was %lld when trying to unpin", buf, 0x16u);
              }
            }

            else
            {
              v19 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to unpin asset pack.  We cannot determine the calling app's bundleID.", buf, 2u);
              }
            }

            v36(v6, -1);
          }

LABEL_29:

          continue;
        }

        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v20 = sub_100269134(v3);
          v21 = *(a1 + 40);
          *v55 = 138543618;
          *&v55[4] = v20;
          *&v55[12] = 2114;
          *&v55[14] = v21;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Asset pack %{public}@ was not pinned when unpinning tags %{public}@", v55, 0x16u);
        }
      }

      v1 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (!v1)
      {
LABEL_32:

        (*(*(a1 + 56) + 16))();
        _Block_object_dispose(v44, 8);

        return;
      }
    }
  }

  v24 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    *v55 = 138543618;
    *&v55[4] = v29;
    *&v55[12] = 2114;
    *&v55[14] = v30;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unpin tags failed for invalid tag in set [%{public}@], bundleURL: %{public}@", v55, 0x16u);
  }

  v25 = [NSString stringWithFormat:@"Request could not be completed.  Invalid tag in set '%@.'", *(a1 + 40)];
  v47 = NSLocalizedFailureReasonErrorKey;
  v48 = v25;
  v26 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v27 = *(a1 + 56);
  v28 = [NSError errorWithDomain:NSCocoaErrorDomain code:4994 userInfo:v26];
  (*(v27 + 16))(v27, 0, v28);
}

void sub_10026F9AC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = sub_100269390(*(a1 + 32));
    v4 = v3;
    if (v3)
    {
      v9 = _NSODRURLKey;
      v10 = v3;
      v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v8 = sub_100269134(v6);
      [v7 setObject:v5 forKeyedSubscript:v8];
    }
  }
}

void sub_10026FBE8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(a1 + 40);
        v7 = *(*(&v10 + 1) + 8 * v5);
        if (v6)
        {
          v8 = sub_100208FBC();
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1002707AC;
          v14[3] = &unk_10051AF70;
          v15 = v7;
          [v8 modifyUsingTransaction:v14];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }
}

uint64_t sub_10026FEF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 32);
  v34 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v34)
  {
    v33 = *v48;
    *&v4 = 138543618;
    v31 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * v5);
        v7 = sub_1001C4CC8(v3, v6, *(*(a1 + 40) + 72));
        v35 = v7;
        v36 = v5;
        if (v7)
        {
          v8 = v7;
          sub_1002C016C(v7);
          sub_10021B3E4(v3, v8);
        }

        else
        {
          v9 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v29 = *(*(a1 + 40) + 72);
            *buf = v31;
            v54 = v6;
            v55 = 2114;
            v56 = v29;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No tag found in database for %{public}@ for bundle ID %{public}@.", buf, 0x16u);
          }
        }

        v10 = [NSSet setWithObject:v6, v31];
        v11 = sub_1001C3BE8(v3, v10, *(*(a1 + 40) + 16));

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v38 = v11;
        v12 = [v38 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v44;
          do
          {
            v15 = 0;
            v37 = v13;
            do
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(v38);
              }

              v16 = *(*(&v43 + 1) + 8 * v15);
              v17 = *(a1 + 48);
              if (v17 <= sub_10026925C(v16))
              {
                v18 = sub_100269134(v16);
                v19 = v3;
                v20 = sub_1001C4C58(v3, v18);

                v21 = a1;
                v22 = *(a1 + 48);
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v23 = v20;
                v24 = [v23 countByEnumeratingWithState:&v39 objects:v51 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v40;
                  do
                  {
                    for (i = 0; i != v25; i = i + 1)
                    {
                      if (*v40 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v39 + 1) + 8 * i);
                      if (sub_1002C00A8(v28) > v22)
                      {
                        v22 = sub_1002C00A8(v28);
                      }
                    }

                    v25 = [v23 countByEnumeratingWithState:&v39 objects:v51 count:16];
                  }

                  while (v25);
                }

                sub_100269664(v16);
                v3 = v19;
                a1 = v21;
                v13 = v37;
              }

              else
              {
                sub_100269664(v16);
              }

              sub_10021BB90(v3, v16);
              v15 = v15 + 1;
            }

            while (v15 != v13);
            v13 = [v38 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v13);
        }

        v5 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v34);
  }

  return 1;
}

uint64_t sub_100270434(uint64_t a1, void *a2)
{
  v3 = a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v23 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v23)
  {
    v22 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = sub_1001C4CC8(v3, *(*(&v35 + 1) + 8 * v4), *(*(a1 + 40) + 72));
        sub_1002C00FC(v5, *(a1 + 48));
        sub_10021B3E4(v3, v5);
        v24 = v5;
        v6 = sub_1002C0070(v5);
        v7 = [NSSet setWithObject:v6];
        v8 = sub_1001C3BE8(v3, v7, *(*(a1 + 40) + 16));

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v26 = v8;
        v9 = [v26 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(v26);
              }

              v13 = *(*(&v31 + 1) + 8 * i);
              if (*(a1 + 48))
              {
                v14 = 1;
              }

              else
              {
                v15 = sub_100269134(*(*(&v31 + 1) + 8 * i));
                v16 = sub_1001C4C58(v3, v15);

                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v17 = v16;
                v14 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
                if (v14)
                {
                  v18 = *v28;
                  while (2)
                  {
                    for (j = 0; j != v14; ++j)
                    {
                      if (*v28 != v18)
                      {
                        objc_enumerationMutation(v17);
                      }

                      if (sub_1002C0028(*(*(&v27 + 1) + 8 * j)))
                      {
                        v14 = 1;
                        goto LABEL_23;
                      }
                    }

                    v14 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
                    if (v14)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_23:
              }

              sub_1002695F4(v13, v14);
              sub_10021BB90(v3, v13);
            }

            v10 = [v26 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v10);
        }

        v4 = v25 + 1;
      }

      while ((v25 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v23);
  }

  return 1;
}

void sub_100270754(uint64_t a1, id a2)
{
  v3 = sub_1001C3BE8(a2, *(a1 + 32), *(*(a1 + 40) + 16));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL sub_1002707AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C3A68(v3, *(a1 + 32));
  v5 = sub_100269440(v4);
  if (v5)
  {
    v6 = v5;
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "The asset pack we were cleared to purge [%{public}@] has a pin count [%lld]. AssetPack will not be marked as purgeable.", &v11, 0x16u);
    }
  }

  else if ((sub_1002694C0(v4) & 1) == 0)
  {
    sub_1002697EC(v4, 1);
  }

  v9 = sub_10021BB90(v3, v4);

  return v9;
}

void sub_1002708D0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v13 = sub_1001C3A68(v4, v3);
  v5 = sub_1001C40CC(v4, *(a1[5] + 16));

  if (v13)
  {
    Property = a1[6];
    v8 = *(a1[5] + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 32, 1);
    }

    v9 = Property;
    v10 = sub_1002E0230(ODRAssetDownloadRequest, v13, v5, v8, v9);
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1002709BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error downloading asset %{public}@: %{public}@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [_TtC9appstored21ODRPublicErrorMapping publicErrorForError:v3];
  (*(v5 + 16))(v5, -1, 0, v6);
}

void sub_100270AC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  Property = a2;
  v5 = Property;
  if (Property)
  {
    v6 = Property[2];
    Property = objc_getProperty(Property, v4, 8, 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = Property;

  (*(v2 + 16))(v2, v6, v7, 0);
}

uint64_t sub_100270B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100270C48;
  v8[3] = &unk_10051F488;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_100270C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100270C48(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 intValue] >= 1)
  {
    v7 = sub_1001C3A68(*(a1 + 32), v14);
    v8 = v7;
    if (v7)
    {
      v9 = sub_100269440(v7);
      v10 = [v6 intValue];
      sub_100269738(v8, (v9 - v10) & ~((v9 - v10) >> 63));
      v11 = sub_10021BB90(*(a1 + 32), v8);
      v12 = *(*(a1 + 40) + 8);
      if (v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = *(v12 + 24);
      }

      *(v12 + 24) = v13 & 1;
    }
  }
}

void sub_100270D38(uint64_t a1, id a2)
{
  v3 = sub_1001C4808(a2, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_100270D90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48) - 1;
  v5 = a2;
  sub_100269738(v3, v4);
  LOBYTE(v3) = sub_10021BB90(v5, *(a1 + 32));

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return *(*(*(a1 + 40) + 8) + 24);
}

id sub_100270EE8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v5 = [v2 softwareVersionBundleID];
  if (v3)
  {
    objc_setProperty_atomic_copy(v3, v4, v5, 24);
  }

  v6 = [v2 bundleVersion];
  v8 = v6;
  if (v3)
  {
    objc_setProperty_atomic_copy(v3, v7, v6, 32);

    *(v3 + 18) = [v2 deviceBasedVPP];
    v9 = [v2 itemID];
    objc_setProperty_atomic_copy(v3, v10, v9, 56);
  }

  else
  {

    [v2 deviceBasedVPP];
    v9 = [v2 itemID];
  }

  v12 = [v2 bundleShortVersionString];
  if (v3)
  {
    objc_setProperty_atomic_copy(v3, v11, v12, 88);
  }

  v14 = [v2 variantID];
  if (v3)
  {
    objc_setProperty_atomic_copy(v3, v13, v14, 96);
  }

  v15 = [v2 betaExternalVersionIdentifier];
  v16 = v15;
  if (v15 && [v15 integerValue])
  {
    if (!v3)
    {
      goto LABEL_23;
    }

    *(v3 + 17) = 1;
  }

  else
  {
    v18 = [v2 softwareVersionExternalIdentifier];

    v16 = v18;
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  objc_setProperty_atomic_copy(v3, v17, v16, 48);
  v19 = [[LSApplicationRecord alloc] initWithBundleIdentifier:*(v3 + 24) allowPlaceholder:1 error:0];
  v20 = v19;
  if (v19)
  {
    if (*(v3 + 19) == 1)
    {
      v21 = [v19 installType];
      v22 = 3;
      if (v21 != 2)
      {
        v22 = 1;
      }
    }

    else
    {
      v23 = [v19 isPlaceholder];
      v22 = 2;
      if (v23)
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  *(v3 + 72) = v22;

LABEL_23:

  return v3;
}

void **sub_100271100(void **a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      v4 = sub_100399CD8([ODRMutableApplication alloc], a1[3]);
      v5 = v2[1];
      v2[1] = v4;

      v6 = [v2[7] stringValue];
      sub_10039C490(v2[1], v6);

      sub_10039C5B4(v2[1], *(v2 + 17));
      sub_10039C348(v2[1], v2[4]);
      sub_10039C2A4(v2[1], v2[11]);
      v7 = [v2[6] stringValue];
      sub_10039C634(v2[1], v7);

      sub_10039C534(v2[1], *(v2 + 18));
      sub_10039C3EC(v2[1], v2[12]);
      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void *sub_100271284(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteConnectionOptions;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[3];
      a1[3] = v4;

      a1[2] = -64;
    }
  }

  return a1;
}

id sub_1002713E4()
{
  objc_opt_self();
  v2[0] = @"account_id";
  v2[1] = @"alt_dsid";
  v2[2] = @"apple_id";
  v2[3] = @"active_end_time";
  v2[4] = @"active_start_time";
  v2[5] = @"event_type";
  v2[6] = @"timestamp";
  v0 = [NSArray arrayWithObjects:v2 count:7];

  return v0;
}

id sub_1002714AC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = [v2 valueForHTTPHeaderField:@"Content-Type"];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100271518(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [v1 statusCode];
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void *sub_10027157C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = RestoreBatchTask;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong((v5 + 50), a2);
    }
  }

  return a1;
}

void sub_1002718CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v129 = a2;
    v4 = v2;
    v5 = v4;
    if (!v3)
    {
LABEL_116:

      return;
    }

    v128 = v4;
    v136 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(v3 + 50), "count")}];
    self = v3;
    if ((v3[58] & 1) == 0 && sub_1003D5FC8())
    {
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v6 = *(v3 + 50);
      v7 = [v6 countByEnumeratingWithState:&v138 objects:v147 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v139;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v139 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v138 + 1) + 8 * i);
            if (v11)
            {
              v11[64] = 1;
            }

            v12 = sub_10040908C(v11);
            v13 = [v12 length];

            if (v13)
            {
              v14 = sub_10040908C(v11);
              [v136 addObject:v14];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v138 objects:v147 count:16];
        }

        while (v8);
      }

LABEL_41:

      sub_1003D59C4(AppDefaultsManager, v136, &off_100547608);
      v35 = [RestoreBatchContext alloc];
      v36 = self;
      v37 = *(self + 50);
      Property = objc_getProperty(self, v38, 42, 1);
      v40 = v37;
      v41 = Property;
      if (v35 && (*v146 = v35, *&v146[8] = RestoreBatchContext, (v42 = objc_msgSendSuper2(v146, "init")) != 0))
      {
        v43 = v42;
        obj = v41;
        objc_storeStrong(v42 + 1, Property);
        v44 = objc_opt_new();
        v45 = objc_opt_new();
        v46 = objc_opt_new();
        v47 = v43[4];
        v48 = v43;
        v43[4] = v46;

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v49 = v40;
        v50 = [v49 countByEnumeratingWithState:&v142 objects:buf count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v143;
          do
          {
            for (j = 0; j != v51; j = j + 1)
            {
              if (*v143 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v142 + 1) + 8 * j);
              v55 = sub_10040916C(v54);

              if (v55)
              {
                v56 = sub_10040916C(v54);
                [v45 setObject:v54 forKeyedSubscript:v56];

                v57 = v48[4];
                v58 = sub_10040916C(v54);
                [v57 addObject:v58];

                [v44 addObject:v54];
              }

              else
              {
                v59 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v54];
                v60 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *v148 = 138412290;
                  *&v148[4] = v59;
                  _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "[%@] Skipping item due to missing itemID on metadata", v148, 0xCu);
                }

                v61 = ASDErrorWithTitleAndMessage();
                sub_100398948(v54, v61);
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v142 objects:buf count:16];
          }

          while (v51);
        }

        v62 = objc_opt_new();
        v63 = v48;
        v64 = v48[2];
        v48[2] = v62;

        v65 = [v45 copy];
        v66 = v48[3];
        v48[3] = v65;

        v67 = objc_opt_new();
        v68 = v48[5];
        v48[5] = v67;

        v69 = objc_opt_new();
        v70 = v48[6];
        v48[6] = v69;

        v71 = [v44 copy];
        v72 = v48[7];
        v48[7] = v71;

        v74 = objc_getProperty(v48, v73, 56, 1);
        v75 = 0;
        v36 = self;
      }

      else
      {

        v63 = 0;
        v74 = 0;
        v75 = 1;
      }

      v77 = [v74 count];
      if (!v77)
      {
        v127 = 0;
        if ((v75 & 1) == 0)
        {
LABEL_86:
          v5 = v128;
          v100 = 0;
          v77 = v63[4];
LABEL_87:
          if ([v77 count])
          {
            if (v100)
            {
              v101 = 0;
            }

            else
            {
              v101 = v63[4];
            }

            v102 = [v101 copy];
            v142 = 0u;
            v143 = 0u;
            v144 = 0u;
            v145 = 0u;
            obja = v102;
            v103 = [obja countByEnumeratingWithState:&v142 objects:buf count:16];
            if (v103)
            {
              v105 = v103;
              v106 = *v143;
              do
              {
                v107 = 0;
                do
                {
                  if (*v143 != v106)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v108 = *(*(&v142 + 1) + 8 * v107);
                  if (v100)
                  {
                    v109 = 0;
                  }

                  else
                  {
                    v109 = objc_getProperty(v63, v104, 24, 1);
                  }

                  v110 = [v109 objectForKeyedSubscript:v108];
                  if (v110)
                  {
                    v111 = v63;
                    v112 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v110];
                    v113 = ASDErrorWithTitleAndMessage();
                    v114 = sub_10023E0F8(v110, @"restore_retry_count");
                    v115 = [v114 integerValue];

                    v116 = ASDLogHandleForCategory();
                    v117 = os_log_type_enabled(v116, OS_LOG_TYPE_ERROR);
                    if (v115 < 5)
                    {
                      if (v117)
                      {
                        *v146 = 138412546;
                        *&v146[4] = v112;
                        *&v146[12] = 2048;
                        *&v146[14] = v115;
                        _os_log_error_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "[%@] Soft failing item not in the server response, and not encountering an error. Soft failure retry count: %ld", v146, 0x16u);
                      }

                      v63 = v111;
                      sub_100273B2C(v111, v110, v113);
                    }

                    else
                    {
                      if (v117)
                      {
                        *v146 = 138412546;
                        *&v146[4] = v112;
                        *&v146[12] = 2048;
                        *&v146[14] = v115;
                        _os_log_error_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "[%@] Hard failing after %ld attempts", v146, 0x16u);
                      }

                      v63 = v111;
                      sub_100273A9C(v111, v110, v113);
                    }
                  }

                  else
                  {
                    v112 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(&v112->super, OS_LOG_TYPE_ERROR))
                    {
                      *v146 = 138543362;
                      *&v146[4] = v108;
                      _os_log_error_impl(&_mh_execute_header, &v112->super, OS_LOG_TYPE_ERROR, "itemID: %{public}@ not in restore map", v146, 0xCu);
                    }
                  }

                  v107 = v107 + 1;
                }

                while (v105 != v107);
                v118 = [obja countByEnumeratingWithState:&v142 objects:buf count:16];
                v105 = v118;
              }

              while (v118);
            }

            v5 = v128;
            v36 = self;
          }

          if (v100)
          {
            v126 = *(v36 + 66);
            *(v36 + 66) = 0;

            objc_storeStrong((v36 + 74), 0);
            v119 = 0;
          }

          else
          {
            objc_storeStrong((v36 + 66), v63[2]);
            objc_storeStrong((v36 + 74), v63[5]);
            v119 = v63[6];
          }

          objc_storeStrong((v36 + 82), v119);
          (v5)[2](v5, v127);

          goto LABEL_116;
        }

LABEL_123:
        v100 = 1;
        v5 = v128;
        goto LABEL_87;
      }

      p_info = &OBJC_METACLASS___SQLiteSchema.info;
      v80 = [ContentRestoreTask alloc];
      if (v75)
      {
        v81 = 0;
      }

      else
      {
        v81 = objc_getProperty(v63, v79, 56, 1);
      }

      v82 = v81;
      v84 = objc_getProperty(v36, v83, 42, 1);
      v85 = sub_10022B118(&v80->super.super.super.isa, v82, v84, v129);

      *v148 = 0;
      [v36 runSubTask:v85 returningError:v148];
      v86 = *v148;
      if (!v86)
      {
        v92 = sub_100272C4C(v85, v63);
        v93 = 0;
LABEL_76:
        if ([v92 count])
        {
          v96 = sub_10022B118(objc_alloc((p_info + 281)), v92, *(v36 + 42), v129);
          v137 = v93;
          [v36 runSubTask:v96 returningError:&v137];
          v97 = v137;

          v98 = sub_100272C4C(v96, v63);
          if (v97)
          {
            sub_100272834(v36, v92, v97, v63);
          }

          v127 = v97;
          if (v92)
          {
            v99 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v125 = [v92 componentsJoinedByString:{@", "}];
              *buf = 138543362;
              v150 = v125;
              _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Retry complete for items: [%{public}@]", buf, 0xCu);
            }
          }
        }

        else
        {
          v127 = v93;
        }

        if ((v75 & 1) == 0)
        {
          goto LABEL_86;
        }

        v77 = 0;
        goto LABEL_123;
      }

      v87 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v150 = v86;
        _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Error running content restore request. Error: %{public}@", buf, 0xCu);
      }

      v88 = v86;
      objc_opt_self();
      v89 = [v88 domain];
      if ([v89 isEqualToString:AMSErrorDomain])
      {
        v90 = [v88 userInfo];
        v91 = [v90 objectForKeyedSubscript:@"AMSServerErrorCode"];
        if ([v91 isEqualToNumber:&off_1005475D8])
        {

          goto LABEL_118;
        }

        [v88 userInfo];
        v120 = v135 = v63;
        v121 = [v120 objectForKeyedSubscript:@"AMSServerErrorCode"];
        v133 = [v121 isEqualToNumber:&off_1005475F0];

        p_info = (&OBJC_METACLASS___SQLiteSchema + 32);
        v63 = v135;

        if (v133)
        {
LABEL_118:
          v122 = [v88 userInfo];
          v123 = [v122 objectForKeyedSubscript:@"AMSServerErrorCode"];

          v124 = [NSString stringWithFormat:@"Token failure (%@)", v123];
          v93 = ASDErrorWithTitleAndMessage();

          if (v75)
          {
            goto LABEL_119;
          }

          goto LABEL_74;
        }
      }

      else
      {
      }

      v93 = v88;
      if (v75)
      {
LABEL_119:
        v95 = 0;
        goto LABEL_75;
      }

LABEL_74:
      v95 = objc_getProperty(v63, v94, 56, 1);
LABEL_75:
      sub_100272834(v36, v95, v93, v63);
      v92 = 0;
      goto LABEL_76;
    }

    v6 = objc_alloc_init(ASDCoastGuard);
    v134 = sub_1003D56FC();
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v15 = *(v3 + 50);
    v16 = [v15 countByEnumeratingWithState:&v138 objects:v147 count:16];
    if (!v16)
    {
      goto LABEL_40;
    }

    v17 = v16;
    v18 = *v139;
LABEL_19:
    v19 = 0;
    while (1)
    {
      if (*v139 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v138 + 1) + 8 * v19);
      v21 = sub_10040916C(v20);
      v22 = [v21 unsignedLongLongValue];
      v23 = sub_1003987D0(v20);
      LODWORD(v22) = [v6 isUnrepairableAppWithItemID:v22 externalVersionID:{objc_msgSend(v23, "unsignedLongLongValue")}];

      if (v22)
      {
        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fetching latest version since this evid is known to have been unrepairable", buf, 2u);
        }

        if (v20)
        {
          v20[64] = 1;
        }

        v25 = sub_10040908C(v20);
        v26 = [v25 length];

        if (!v26)
        {
          goto LABEL_38;
        }

        v27 = sub_10040908C(v20);
        [v136 addObject:v27];
      }

      else
      {
        v28 = sub_10040908C(v20);
        v27 = [v134 objectForKeyedSubscript:v28];

        v29 = [v27 longLongValue];
        v30 = sub_1003987D0(v20);
        v31 = [v30 longLongValue];

        v32 = ASDLogHandleForCategory();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v29 >= v31)
        {
          if (v33)
          {
            v34 = sub_10040908C(v20);
            *buf = 138543362;
            v150 = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Fetching latest version of %{public}@ due to code signature error", buf, 0xCu);
          }

          if (v20)
          {
            v20[64] = 1;
          }
        }

        else
        {
          if (v33)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Skipping initial latest version fetch for batch", buf, 2u);
          }
        }
      }

LABEL_38:
      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v138 objects:v147 count:16];
        if (!v17)
        {
LABEL_40:

          goto LABEL_41;
        }

        goto LABEL_19;
      }
    }
  }

  v76 = *(*(a1 + 40) + 16);

  v76();
}

void sub_100272834(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v9 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    v29 = AMSErrorDomain;
    v25 = AMSErrorUserInfoKeyServerErrorCode;
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        if (*(a1 + 59))
        {
          goto LABEL_7;
        }

        v14 = v7;
        v15 = [v14 userInfo];
        v16 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];

        v17 = [v16 domain];
        v18 = [v14 domain];
        if (([v17 isEqualToString:NSURLErrorDomain] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", kCFErrorDomainCFNetwork) & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", NSURLErrorDomain) & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", kCFErrorDomainCFNetwork) & 1) != 0 || objc_msgSend(v18, "isEqualToString:", v29) && objc_msgSend(v14, "code") == 203)
        {
        }

        else
        {
          if (!ASDErrorIsEqual())
          {

LABEL_7:
            sub_100273A9C(v8, v13, v7);
            goto LABEL_21;
          }

          v27 = [v14 userInfo];
          v26 = [v27 objectForKeyedSubscript:v25];
          v28 = [v26 integerValue];

          if (v28 != 3004)
          {
            goto LABEL_7;
          }
        }

        v19 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v13];
        v20 = sub_10023E0F8(v13, @"restore_retry_count");
        v21 = [v20 integerValue];

        if (v21 < 5)
        {
          sub_100273B2C(v8, v13, v14);
          v23 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v19;
            v38 = 2048;
            v39 = v21;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Soft failing with %ld attempts", buf, 0x16u);
          }
        }

        else
        {
          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v19;
            v38 = 2048;
            v39 = v21;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%@] Hard failing after %ld attempts", buf, 0x16u);
          }

          sub_100273A9C(v8, v13, v14);
        }

LABEL_21:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v24 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      v10 = v24;
    }

    while (v24);
  }
}

id sub_100272C4C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v126 = sub_1003D56FC();
  v125 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v126, "count")}];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  self = v3;
  if (v3)
  {
    Property = objc_getProperty(v3, v5, 64, 1);
  }

  else
  {
    Property = 0;
  }

  obj = Property;
  v7 = [obj countByEnumeratingWithState:&v139 objects:v145 count:16];
  if (!v7)
  {
    v128 = 0;
    goto LABEL_107;
  }

  v9 = v7;
  v128 = 0;
  v132 = *v140;
  v131 = v4;
  do
  {
    v10 = 0;
    v129 = v9;
    do
    {
      if (*v140 != v132)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v139 + 1) + 8 * v10);
      if (v11)
      {
        v12 = objc_getProperty(*(*(&v139 + 1) + 8 * v10), v8, 216, 1);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        if (v4)
        {
          v15 = objc_getProperty(v4, v14, 24, 1);
        }

        else
        {
          v15 = 0;
        }

        v17 = v15;
        if (v11)
        {
          v18 = objc_getProperty(v11, v16, 216, 1);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v17 objectForKeyedSubscript:v19];

        if (v11)
        {
          v22 = objc_getProperty(v11, v21, 128, 1);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v25 = [[_TtC9appstored6LogKey alloc] initWithBase:@"Restore Batch"];
        if (v23)
        {
          if (v11)
          {
            v26 = objc_getProperty(v11, v24, 136, 1);
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          v28 = sub_1003E2664(AMSDevice, v23, v27, v25);

          if (v11)
          {
LABEL_21:
            v29 = objc_getProperty(v11, v24, 32, 1);
            goto LABEL_22;
          }
        }

        else
        {
          v28 = 1;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        v29 = 0;
LABEL_22:
        v133 = v23;
        v30 = v29;

        if (v30)
        {
          v32 = v25;
          v34 = +[_TtC9appstored22AppCapabilitiesService defaultService];
          if (v11)
          {
            v35 = objc_getProperty(v11, v33, 96, 1);
            v37 = objc_getProperty(v11, v36, 32, 1);
          }

          else
          {
            v35 = 0;
            v37 = 0;
          }

          v38 = v37;
          v138 = 0;
          v39 = [v34 validateAction:2 bundleID:v35 capabilities:v38 logKey:v32 error:&v138];
          v40 = v138;

          if (v39)
          {
            v9 = v129;
            v25 = v32;
            goto LABEL_32;
          }

          sub_100273A9C(v131, v20, v40);
          v9 = v129;
          v25 = v32;
          v4 = v131;
          if (!v20)
          {
LABEL_94:
            v102 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              if (v11)
              {
                v104 = objc_getProperty(v11, v103, 216, 1);
              }

              else
              {
                v104 = 0;
              }

              v105 = v104;
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v105;
              _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "Skipping post processing of failed itemID: %{public}@ due to missing mapped item", &buf, 0xCu);
            }
          }

          goto LABEL_96;
        }

        v40 = 0;
LABEL_32:
        v4 = v131;
        if (v28)
        {
          if (v11)
          {
            if (v11[20])
            {
              if (v20 && (*(v20 + 64) & 1) != 0)
              {
                v41 = ASDErrorWithTitleAndMessage();
                sub_100273A9C(v131, v20, v41);
              }

              else
              {
                v88 = v128;
                if (!v128)
                {
                  v88 = objc_opt_new();
                }

                v128 = v88;
                if (v20)
                {
                  *(v20 + 64) = 1;
                }

                [v88 addObject:v20];
                if (!v20)
                {
                  goto LABEL_94;
                }
              }

              goto LABEL_96;
            }

            v43 = objc_getProperty(v11, v31, 72, 1);
          }

          else
          {
            v43 = 0;
          }

          v44 = v43;

          if (v44)
          {
            v46 = v25;
            if (v11 && (v47 = objc_getProperty(v11, v45, 72, 1)) != 0)
            {
              v49 = v47;
              v50 = objc_getProperty(v47, v48, 144, 1);
              if (v50)
              {
                v52 = v50;
                v53 = objc_getProperty(v11, v51, 72, 1);
                v55 = v53;
                if (v53)
                {
                  v53 = objc_getProperty(v53, v54, 144, 1);
                }

                v56 = v53;
                v57 = [v56 length];

                v25 = v46;
                if (v57)
                {
                  if (!v20)
                  {
                    v9 = v129;
                    v4 = v131;
                    goto LABEL_94;
                  }

                  if (*(v20 + 64))
                  {
                    v59 = objc_getProperty(v11, v58, 96, 1);
                    v60 = [v126 objectForKeyedSubscript:v59];
                    v61 = [v60 longLongValue];
                    v63 = objc_getProperty(v11, v62, 144, 1);
                    v64 = [v63 longLongValue];

                    v65 = v61 < v64;
                    v25 = v46;
                    if (!v65)
                    {
                      v93 = ASDErrorWithTitleAndMessage();
                      v4 = v131;
                      sub_100273A9C(v131, v20, v93);

                      v95 = objc_getProperty(v11, v94, 96, 1);
                      [v125 addObject:v95];

                      v9 = v129;
                      goto LABEL_96;
                    }
                  }

                  v66 = v20;
                  v67 = v11;
                  v9 = v129;
                  if (v131)
                  {
                    v68 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                    {
                      v69 = sub_100408EB0(v66);
                      LODWORD(buf) = 138412290;
                      *(&buf + 4) = v69;
                      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[%@] Content lookup succeeded", &buf, 0xCu);
                    }

                    sub_10023E000(v66, &off_100547620, @"bootstrapped");
                    sub_10023E000(v66, &off_100547638, @"restore_state");
                    sub_10023E000(v66, &off_100547650, @"phase");
                    v127 = v67;
                    if (v66[8])
                    {
                      v71 = sub_10023E604(v66, @"metrics_install_type");
                      v72 = sub_10023E51C(v66, @"evid");
                      v73 = v72;
                      if (v71 != 15)
                      {
                        v74 = [v72 longLongValue];
                        v76 = objc_getProperty(v67, v75, 144, 1);
                        v77 = [v76 longLongValue];

                        v67 = v127;
                        if (v74 < v77)
                        {
                          sub_10023E000(v66, &off_100547668, @"metrics_install_type");
                        }
                      }
                    }

                    v78 = objc_getProperty(v67, v70, 72, 1);
                    *&buf = v78;
                    v79 = [NSArray arrayWithObjects:&buf count:1];
                    sub_100408354(v66, v67, v79, 0);

                    v81 = objc_getProperty(v67, v80, 208, 1);
                    if (v81)
                    {
                      v83 = objc_getProperty(v67, v82, 208, 1);
                      sub_10023E000(v66, v83, @"install_verification_token");
                    }

                    v84 = sub_1003E2F24(MIStoreMetadata, v67);
                    sub_1003E38F0(v84, *(v131 + 8));
                    v143 = 0;
                    v85 = sub_1003E364C(v84, &v143);
                    v86 = v143;
                    if (v86)
                    {
                      sub_100398948(v66, v86);
                      v87 = 16;
                      goto LABEL_76;
                    }

                    v89 = v131;
                    if (v85)
                    {
                      sub_10023E000(v66, v85, @"store_metadata");
                      v90 = +[NSNull null];
                      sub_10023E000(v66, v90, @"failure_error");

                      v87 = 48;
LABEL_76:
                      v89 = v131;
                      [*(v131 + v87) addObject:v66];
                    }

                    v91 = *(v89 + 32);
                    v92 = sub_10040916C(v66);
                    [v91 removeObject:v92];

                    v9 = v129;
                    v25 = v46;
                    v67 = v127;
                  }

                  v4 = v131;
                  goto LABEL_96;
                }

LABEL_88:
                v96 = ASDErrorWithTitleAndMessage();
                v4 = v131;
                sub_100273B2C(v131, v20, v96);

                objc_opt_self();
                if (os_variant_has_internal_content())
                {
                  v97 = v25;
                  v98 = v11;
                  v99 = sub_1002CC188([PresentTapToRadarRequestFlow alloc], @"Missing Required SINF", @"An unexpected installation failure occurred.");
                  *&buf = _NSConcreteStackBlock;
                  *(&buf + 1) = 3221225472;
                  v147 = sub_100273BBC;
                  v148 = &unk_10051DC78;
                  v101 = v98;
                  v149 = v101;
                  v9 = v129;
                  if (v99)
                  {
                    objc_setProperty_atomic_copy(v99, v100, &buf, 24);
                  }

                  sub_1002CC240(v99);

                  v25 = v97;
                  v4 = v131;
                  if (!v20)
                  {
                    goto LABEL_94;
                  }
                }

                else
                {
                  v9 = v129;
                  if (!v20)
                  {
                    goto LABEL_94;
                  }
                }

LABEL_96:

                goto LABEL_97;
              }
            }

            else
            {
              v49 = 0;
            }

            goto LABEL_88;
          }

          v42 = ASDErrorWithUserInfoAndFormat();
          sub_100273B2C(v131, v20, v42);
        }

        else
        {
          v42 = ASDErrorWithTitleAndMessage();
          sub_100273A9C(v131, v20, v42);
        }

        if (!v20)
        {
          goto LABEL_94;
        }

        goto LABEL_96;
      }

      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Skipping post processing to server item missing missing itemID for item: %{public}@", &buf, 0xCu);
      }

LABEL_97:

      v10 = v10 + 1;
    }

    while (v9 != v10);
    v106 = [obj countByEnumeratingWithState:&v139 objects:v145 count:16];
    v9 = v106;
  }

  while (v106);
LABEL_107:

  sub_1003D59C4(AppDefaultsManager, v125, 0);
  if (self)
  {
    v108 = objc_getProperty(self, v107, 72, 1);
    v109 = v108;
    if (v108)
    {
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v110 = [v108 keyEnumerator];
      v111 = [v110 countByEnumeratingWithState:&v134 objects:v144 count:16];
      if (v111)
      {
        v113 = v111;
        v114 = *v135;
        do
        {
          v115 = 0;
          do
          {
            if (*v135 != v114)
            {
              objc_enumerationMutation(v110);
            }

            v116 = *(*(&v134 + 1) + 8 * v115);
            if (v4)
            {
              v117 = objc_getProperty(v4, v112, 24, 1);
            }

            else
            {
              v117 = 0;
            }

            v118 = [v117 objectForKeyedSubscript:v116];
            if (v118)
            {
              v119 = [v109 objectForKeyedSubscript:v116];
              if ([v119 code]== 3604 && (v118[64] & 1) == 0)
              {
                v118[64] = 1;
                v120 = v128;
                if (!v128)
                {
                  v120 = objc_opt_new();
                }

                v128 = v120;
                [v120 addObject:v118];
              }

              else
              {
                sub_100273A9C(v4, v118, v119);
              }
            }

            else
            {
              v119 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v116;
                _os_log_error_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "Skipping post processing of failed itemID: %{public}@ due to missing mapped install item", &buf, 0xCu);
              }
            }

            v115 = v115 + 1;
          }

          while (v113 != v115);
          v121 = [v110 countByEnumeratingWithState:&v134 objects:v144 count:16];
          v113 = v121;
        }

        while (v121);
      }
    }
  }

  else
  {
    v109 = 0;
  }

  v122 = [v128 copy];

  return v122;
}

void sub_100273A9C(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a2;
    sub_100398948(v5, a3);
    [*(a1 + 16) addObject:v5];
    v6 = *(a1 + 32);
    v7 = sub_10040916C(v5);

    [v6 removeObject:v7];
  }
}

void sub_100273B2C(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v7 = a2;
    sub_100398B5C(v7, a3);
    v5 = *(a1 + 32);
    v6 = sub_10040916C(v7);
    [v5 removeObject:v6];

    [*(a1 + 40) addObject:v7];
  }
}

id sub_100273BBC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 96, 1);
  }

  v5 = Property;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 216, 1);
  }

  v8 = v6;
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = objc_getProperty(v9, v7, 144, 1);
  }

  v10 = v9;
  v11 = [NSString stringWithFormat:@"\n\nBundle ID: %@\nItem ID: %@\nExternal Version: %@\n", v5, v8, v10];

  return v11;
}

void sub_1002746DC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 40);
    v8 = ASDErrorWithSafeUserInfo();
    (*(v3 + 16))(v3, v8);
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = a2;
    v6 = v4;
    if (v5)
    {
      if ([v8 responseStatusCode] == 200)
      {
        v6[2](v6, 0);
      }

      else
      {
        [v8 responseStatusCode];
        v7 = ASDErrorWithDescription();
        (v6)[2](v6, v7);
      }
    }
  }
}

id sub_100274854()
{
  objc_opt_self();
  if (qword_1005AA9A8 != -1)
  {
    dispatch_once(&qword_1005AA9A8, &stru_10051F528);
  }

  v0 = qword_1005AA9A0;

  return v0;
}

void sub_1002748AC(id a1)
{
  v1 = objc_alloc_init(AppMetricsService);
  v2 = qword_1005AA9A0;
  qword_1005AA9A0 = v1;
}

void sub_100274A8C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    v11 = 138412546;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] getMetricsEventsForType complete for client: %{public}@", &v11, 0x16u);
  }
}

uint64_t sub_100274D04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100274E9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100275034(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100275058(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_10036FDEC(a2, &stru_10051F578);
    v4 = *(a1 + 16);
    *(a1 + 16) = v3;
  }
}

id *sub_100275130(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_self());
  v9 = sub_1002751AC(v8, v7, a2, v6);

  return v9;
}

id *sub_1002751AC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    if (v8)
    {
      v13.receiver = a1;
      v13.super_class = PurchaseHistoryUpdateCommand;
      a1 = objc_msgSendSuper2(&v13, "init");
      if (a1)
      {
        v10 = [KeepAlive keepAliveWithName:@"com.apple.appstoredaemon.PurchaseHistoryManager.update"];
        v11 = a1[3];
        a1[3] = v10;

        objc_storeStrong(a1 + 1, a4);
        objc_storeStrong(a1 + 5, a2);
        a1[4] = a3;
      }
    }

    else
    {

      a1 = 0;
    }
  }

  return a1;
}