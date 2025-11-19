void sub_100212460(uint64_t a1)
{
  v2 = sub_100355E58();
  if (!v2 || (v3 = v2[21], v2, !v3))
  {
    v6 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(*(a1 + 8))];
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1 logKey];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Showing subscription offer", buf, 0xCu);
    }

    v9 = [*(a1 + 32) relaunchOptions];
    v10 = [v9 copy];

    v11 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100213844;
    block[3] = &unk_10051AEE8;
    v13 = v6;
    v14 = v10;
    v15 = a1;
    v5 = v10;
    v4 = v6;
    dispatch_async(v11, block);

    goto LABEL_8;
  }

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1 logKey];
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Already showing subscription offer", buf, 0xCu);
LABEL_8:
  }
}

void sub_100212688(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 logKey];
    *buf = 138412290;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Showing dialog for app removed from arcade", buf, 0xCu);
  }

  v4 = ASDLocalizedString();
  v5 = sub_1003D266C(*(a1 + 8));
  v6 = [NSString stringWithFormat:v4, v5];

  v7 = [AMSDialogRequest alloc];
  v8 = ASDLocalizedString();
  v9 = [v7 initWithTitle:v6 message:v8];

  v10 = [a1 logKey];
  v11 = [v10 description];
  [v9 setLogKey:v11];

  v12 = ASDLocalizedString();
  v13 = [AMSDialogAction actionWithTitle:v12 style:2];

  v14 = ASDLocalizedString();
  v15 = [AMSDialogAction actionWithTitle:v14 style:0];

  v29[0] = v13;
  v29[1] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:2];
  [v9 setButtonActions:v16];

  [v9 setDefaultAction:v15];
  v17 = sub_100312260(InteractiveRequestPresenter, v9, 0);
  v18 = [v17 selectedActionIdentifier];
  v19 = [v15 identifier];
  v20 = [v18 isEqualToString:v19];

  if (v20)
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [a1 logKey];
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Launching App Store after app removed", buf, 0xCu);
    }

    v23 = [*(a1 + 32) relaunchOptions];
    v24 = [v23 copy];

    v25 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002131C0;
    block[3] = &unk_10051B570;
    block[4] = a1;
    v28 = v24;
    v26 = v24;
    dispatch_async(v25, block);
  }
}

void sub_100212A30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v1 logKey];
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Sign in required to play arcade games", &v19, 0xCu);
    }

    v5 = [AMSDialogRequest alloc];
    v6 = ASDLocalizedString();
    v7 = ASDLocalizedString();
    v8 = [v5 initWithTitle:v6 message:v7];

    v9 = [v1 logKey];
    v10 = [v9 description];
    [v8 setLogKey:v10];

    if (sub_10030B58C() || +[AMSDevice deviceIsMac])
    {
      v11 = ASDLocalizedString();
      v12 = [AMSDialogAction actionWithTitle:v11 style:2];

      v13 = ASDLocalizedString();
      v14 = [AMSDialogAction actionWithTitle:v13 style:0];

      v25[0] = v12;
      v25[1] = v14;
      v15 = [NSArray arrayWithObjects:v25 count:2];
      v16 = v14;
    }

    else
    {
      v17 = ASDLocalizedString();
      v14 = [AMSDialogAction actionWithTitle:v17 style:2];

      v25[0] = v14;
      v15 = [NSArray arrayWithObjects:v25 count:1];
      v16 = 0;
      v12 = v14;
    }

    [v8 setButtonActions:v15];

    [v8 setDefaultAction:v14];
    *&v19 = _NSConcreteStackBlock;
    *(&v19 + 1) = 3221225472;
    v20 = sub_100213320;
    v21 = &unk_10051BAA0;
    v22 = v16;
    v23 = v1;
    v24 = v2;
    v18 = v16;
    sub_1003124D4(InteractiveRequestPresenter, v8, &v19);
  }
}

void sub_100212D54(void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = ASDLocalizedString();
  v7 = [NSString localizedStringWithFormat:v6];
  v8 = [AMSDialogRequest requestWithTitle:v7 message:0];

  v9 = [a1 logKey];
  v10 = [v9 description];
  [v8 setLogKey:v10];

  v11 = ASDLocalizedString();
  v12 = [NSString localizedStringWithFormat:v11];
  v13 = [AMSDialogAction actionWithTitle:v12 style:0];

  v14 = ASDLocalizedString();
  v15 = [NSString localizedStringWithFormat:v14];
  v16 = [AMSDialogAction actionWithTitle:v15 style:2];

  v32[0] = v13;
  v32[1] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:2];
  [v8 setButtonActions:v17];

  [v8 setDefaultAction:v13];
  v18 = sub_100312260(InteractiveRequestPresenter, v8, 0);
  v19 = [v18 selectedActionIdentifier];
  v20 = [v16 identifier];
  v21 = [v19 isEqualToString:v20];

  if (v21)
  {
    v22 = +[NSDate date];
    [v22 timeIntervalSinceReferenceDate];
    a1[5] = v23;

    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [a1 logKey];
      v28 = 138412546;
      v29 = v25;
      v30 = 2048;
      v31 = a3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] Retry following timeout attempting to repair with timeout: %f", &v28, 0x16u);
    }

    sub_100211418(a1, v5, a3, a3);
  }

  else
  {
    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [a1 logKey];
      v28 = 138412290;
      v29 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[%@] Canceling following timeout attempting to repair", &v28, 0xCu);
    }
  }
}

uint64_t sub_1002130C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = sub_1003CC85C([SwitchAppOwnerTask alloc], v5, v6, *(a1 + 8));

  v8 = *(a1 + 48);
  v12 = v7;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  if (v8)
  {
    [*(v8 + 8) addOperations:v9 waitUntilFinished:1];
  }

  if (v7)
  {
    v10 = v7[24];
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1002131C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = [NSURL URLWithString:@"itms-apps://?action=arcade"];
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v8 = 0;
    [v4 openURL:v3 withOptions:v2 error:&v8];

    v5 = v8;
    if (v5)
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v1 logKey];
        *buf = 138412802;
        v10 = v7;
        v11 = 2114;
        v12 = @"itms-apps://?action=arcade";
        v13 = 2114;
        v14 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Error launching App Store with url: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }
}

void sub_100213320(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = [v23 selectedActionIdentifier];
    v7 = [*(a1 + 32) identifier];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        v10 = *(a1 + 48);
        v11 = objc_opt_new();
        [v11 setAuthenticationType:2];
        [v11 setCanMakeAccountActive:1];
        [v11 setDebugReason:@"Arcade"];
        v12 = [AMSAuthenticateTask alloc];
        v13 = [v10 amsBag];

        v14 = [v12 initWithAccount:0 options:v11 bag:v13];
        v15 = [v14 performAuthentication];
        v24 = 0;
        v16 = [v15 resultWithError:&v24];
        v17 = v24;

        if (v16)
        {
          v18 = [v16 account];
          v19 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v9 logKey];
            v21 = [v18 ams_DSID];
            *buf = 138412546;
            v26 = v20;
            v27 = 2114;
            v28 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Logged into accountID: %{public}@", buf, 0x16u);
          }

          v22 = [v9 delegate];
          [v22 repair:v9 wantsToRelaunchApplication:v9[1]];
        }
      }
    }
  }
}

void sub_100213594(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[AMSDialogRequest alloc] initWithTitle:v5 message:v6];
  v8 = [a1 logKey];
  v9 = [v8 description];
  [v7 setLogKey:v9];

  v10 = ASDLocalizedString();
  v11 = [AMSDialogAction actionWithTitle:v10 style:0];
  v18 = v11;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  [v7 setButtonActions:v12];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100213760;
  v15[3] = &unk_10051BAA0;
  v15[4] = a1;
  v13 = v5;
  v16 = v13;
  v14 = v6;
  v17 = v14;
  sub_1003124D4(InteractiveRequestPresenter, v7, v15);
}

void sub_100213760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) logKey];
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = 138412802;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Error showing dialog: %{public}@ message: %{public}@", &v8, 0x20u);
    }
  }
}

void sub_100213844(uint64_t a1)
{
  v5 = sub_100355E58();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) logKey];
  sub_10035CBE0(v5, v2, v3, v4);
}

void sub_1002138C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v12 = 138412546;
      v13 = v7;
      v14 = 2114;
      v15 = v4;
      v8 = "[%@] Promoting distributor failed: %{public}@";
      v9 = v5;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v8 = "[%@] Promoting distributor";
    v9 = v5;
    v10 = 12;
    goto LABEL_6;
  }
}

id sub_100213A50(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    [v2 setPurgeableReason:*(a1 + 48)];
    [v2 setBundleID:*(a1 + 8)];
    [v2 setPurgeableReason:*(a1 + 48)];
    [v2 setPurgeableType:*(a1 + 40)];
    [v2 setStaticDiskUsage:{objc_msgSend(*(a1 + 16), "unsignedLongLongValue")}];
    [v2 setStoreItemID:*(a1 + 56)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_100213C7C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = LibraryExpressionClassifier;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id sub_100213CF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [*(a1 + 8) resultsMatchingPredicate:v5 error:a3];
      goto LABEL_24;
    }

    v6 = v5;
    v7 = [v6 leftExpression];
    v8 = [v7 expressionType];

    if (v8 == 3)
    {
      v9 = [v6 leftExpression];
      v10 = [v6 rightExpression];
    }

    else
    {
      v12 = [v6 rightExpression];
      v13 = [v12 expressionType];

      if (v13 != 3)
      {
        v11 = [*(a1 + 8) resultsMatchingPredicate:v6 error:a3];
        v14 = 0;
        v9 = 0;
        if (v11)
        {
          goto LABEL_23;
        }

LABEL_9:
        v15 = sub_1003427D8(v14);
        if (![v15 count] || (v16 = objc_msgSend(v6, "predicateOperatorType"), v16 != 4) && v16 != 10)
        {

LABEL_22:
          v11 = [*(a1 + 8) resultsMatchingPredicate:v6 error:a3];
          goto LABEL_23;
        }

        v17 = sub_100342968(v9);
        v18 = v15;
        if ([v17 isEqualToString:@"bundleID"])
        {
          v11 = [*(a1 + 8) resultsWithBundleIDs:v18 error:a3];
        }

        else
        {
          if ([v17 isEqualToString:@"storeItemID"])
          {
            v19 = sub_10036FDEC(v18, &stru_10051D4A0);

            v11 = [*(a1 + 8) resultsWithItemIDs:v19 error:a3];
            goto LABEL_21;
          }

          v11 = 0;
        }

        v19 = v18;
LABEL_21:

        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_23:

        goto LABEL_24;
      }

      v9 = [v6 rightExpression];
      v10 = [v6 leftExpression];
    }

    v14 = v10;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

id sub_100213F5C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_7:
    v7 = v3;
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
  if (isKindOfClass)
  {
    if (v6)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138543618;
      v14 = v2;
      v15 = 2112;
      v16 = v10;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Query contained invalid item identifier '%{public}@' of type %@ - converting to NSNumber", &v13, 0x16u);
    }

    v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v2 longLongValue]);
    goto LABEL_7;
  }

  if (v6)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138543618;
    v14 = v2;
    v15 = 2112;
    v16 = v12;
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Query contained invalid item identifier '%{public}@' of type %@ - dropping from query", &v13, 0x16u);
  }

  v7 = 0;
LABEL_11:

  return v7;
}

void sub_100214250(void *a1, CFBundleRef bundle)
{
  v4 = CFBundleCopyBundleURL(bundle);
  v5 = [(__CFURL *)v4 path];
  v6 = a1[3];
  a1[3] = v5;

  v7 = CFBundleGetIdentifier(bundle);
  v8 = a1[1];
  a1[1] = v7;

  v9 = CFBundleGetValueForInfoDictionaryKey(bundle, _kCFBundleShortVersionStringKey);
  if (!v9)
  {
    v9 = CFBundleGetValueForInfoDictionaryKey(bundle, kCFBundleVersionKey);
  }

  v10 = a1[4];
  a1[4] = v9;
}

id *sub_100214708(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = LibraryErrorResultEnumerator;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id *sub_10021479C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteQueryResults;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_100214814(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003B7608([SQLiteCursor alloc], *(a1 + 8));
    v5 = *(a1 + 8);
    if (v5)
    {
      v7 = v5 + 1;
      v5 = v5[1];
      v6 = v7[1];
    }

    else
    {
      v6 = 0;
    }

    v8 = v5;
    v19 = v6;
    v20 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10021497C;
    v16[3] = &unk_10051D4C8;
    v9 = v3;
    v18 = v9;
    v10 = v4;
    v17 = v10;
    if (v8)
    {
      v11 = sub_10022D01C(v8, &v20, v16);
      v12 = v20;

      if (v11)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v14 = *(v13 + 16);
          if (v14)
          {
            sqlite3_reset(v14);
          }
        }

        goto LABEL_12;
      }
    }

    else
    {

      v12 = 0;
    }

    v15 = 0;
    (*(v9 + 2))(v9, 0, v12, &v15);
LABEL_12:
  }
}

uint64_t sub_10021497C(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

uint64_t sub_1002149DC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100214AA4;
  v3[3] = &unk_10051D4F0;
  v3[4] = &v4;
  sub_100214814(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100214A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sqlite3_int64 sub_100214AA4(sqlite3_int64 result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = sqlite3_column_int64(*(a2 + 48), 0);
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

uint64_t sub_100214AEC(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100214BB4;
    v3[3] = &unk_10051D4F0;
    v3[4] = &v4;
    sub_100214814(a1, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_100214B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100214BB4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

uint64_t sub_100214C6C(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = sub_100214C6C([_ApplicationContext alloc], v4);
    }

    else
    {
      v9.receiver = a1;
      v9.super_class = ApplicationContext;
      v6 = objc_msgSendSuper2(&v9, "init");
      v7 = v6;
      if (v6)
      {
        *(v6 + 2) = 0;
        objc_storeStrong(v6 + 2, a2);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100214D30(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 16);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002151A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = ASDErrorWithSafeUserInfo();
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100215218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ASDErrorWithDescription();
  (*(v1 + 16))(v1, v2);
}

id sub_100215298()
{
  objc_opt_self();
  v2[0] = @"timestamp";
  v2[1] = @"bundle_id";
  v2[2] = @"current_version_release_date";
  v2[3] = @"device_families";
  v2[4] = @"install_date";
  v2[5] = @"installer_packaging_type";
  v2[6] = @"is_background";
  v2[7] = @"is_b2b_custom_app";
  v2[8] = @"is_code_signature_update";
  v2[9] = @"is_offloaded";
  v2[10] = @"is_per_device";
  v2[11] = @"metrics_data";
  v2[12] = @"package_type";
  v2[13] = @"purchase_id";
  v2[14] = @"release_date";
  v2[15] = @"software_platform";
  v2[16] = @"store_item_data";
  v2[17] = @"store_item_id";
  v2[18] = @"store_software_version_id";
  v2[19] = @"timestamp";
  v2[20] = @"update_state";
  v0 = [NSArray arrayWithObjects:v2 count:21];

  return v0;
}

UpdateItemMetrics *sub_1002153E4(UpdateItemMetrics *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [UpdateItemMetrics alloc];
    v3 = [(UpdateItemMetrics *)v1 valueForProperty:@"metrics_data"];
    v1 = [(UpdateItemMetrics *)v2 initWithData:v3];
  }

  return v1;
}

char *sub_100215460(char *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = UPPManifestDownloadTask;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = *(a1 + 50);
      *(a1 + 50) = v4;

      v6 = sub_1003FA4F0(XPCRequestToken, 1);
      v7 = *(a1 + 106);
      *(a1 + 106) = v6;
    }
  }

  return a1;
}

char *sub_100215504(char *a1, void *a2, void *a3, char a4)
{
  v8 = a3;
  if (a1)
  {
    v9 = sub_100215460(a1, a2);
    v10 = v9;
    if (v9)
    {
      v9[74] = a4;
      if (v8)
      {
        objc_storeStrong((v9 + 106), a3);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1002159BC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 selectedActionIdentifier];
    v8 = [v7 isEqualToString:@"AuthenticationChallengeDialogActionOkay"];

    if (v8)
    {
      v9 = [v5 textfieldValues];
      if ([v9 count] == 1)
      {
        v10 = [v9 objectAtIndexedSubscript:0];
        v11 = sub_10033A69C(a1[5]);
      }

      else
      {
        if ([v9 count] != 2)
        {
          v15 = 0;
          v10 = 0;
          goto LABEL_14;
        }

        v10 = [v9 objectAtIndexedSubscript:1];
        v11 = [v9 objectAtIndexedSubscript:0];
      }

      v15 = v11;
LABEL_14:
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        Property = a1[4];
        if (Property)
        {
          Property = objc_getProperty(Property, v17, 90, 1);
        }

        v20 = 138412290;
        v21 = Property;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Completed user authentication challenge", &v20, 0xCu);
      }

      v19 = [NSURLCredential credentialWithUser:v15 password:v10 persistence:1];
      (*(a1[6] + 16))();

      goto LABEL_19;
    }
  }

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[4];
    if (v14)
    {
      v14 = objc_getProperty(v14, v13, 90, 1);
    }

    v20 = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Canceling user authentication challenge", &v20, 0xCu);
  }

  (*(a1[6] + 16))();
LABEL_19:
}

void sub_100216260(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 50);
    v4 = a2;
    Property = objc_getProperty(a1, v5, 90, 1);
    v7 = sub_1002C647C(UPPManifestDialogRequest, v4, v3, Property);

    v8 = dispatch_semaphore_create(0);
    v9 = [*(a1 + 106) notificationClient];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100219E00;
    v11[3] = &unk_10051D790;
    v12 = v8;
    v10 = v8;
    [v9 deliverDialogRequest:v7 withResultHandler:v11];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_100216398(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"software-package"] & 1) == 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10021647C;
    v8[3] = &unk_10051D640;
    v9 = *(a1 + 32);
    v7 = sub_10036FBC8(v6, v8);
    if (v7)
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
    }
  }
}

uint64_t sub_10021647C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C7040(v3);
  if ([v4 containsObject:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_1001C70D0(v3);
    v5 = [v6 containsObject:*(a1 + 32)];
  }

  return v5;
}

void sub_1002164F8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v6)
  {
    v7 = [v5 firstObject];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

AppInstall *sub_100216594(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, id **a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v175 = a6;
  objc_opt_self();
  v15 = sub_10020F7D4(v11);
  if (v15)
  {
    v16 = sub_10020F7D4(v11);
    v17 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v18 = [v16 stringByTrimmingCharactersInSet:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_10020FC5C(v11);
  if (v19)
  {
    v20 = sub_10020FC5C(v11);
    v21 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v176 = [v20 stringByTrimmingCharactersInSet:v21];
  }

  else
  {
    v176 = 0;
  }

  v22 = sub_10020F870(v11);
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v22;
  v24 = sub_10020F870(v11);
  if (!v24)
  {

    goto LABEL_15;
  }

  v25 = v24;
  v26 = sub_10020F870(v11);
  v27 = [v26 isEqualToString:@"software"];

  if (v27)
  {
LABEL_15:
    v30 = v176;
    if (v176 && [v176 length])
    {
      v31 = a7;
      if (v18 && [v18 length])
      {
        v172 = v18;
        v32 = NSComparisonPredicate_ptr;
        v33 = +[NSMutableDictionary dictionary];
        [v33 setObject:&off_1005471B8 forKeyedSubscript:@"priority"];
        [v33 setObject:&off_1005471D0 forKeyedSubscript:@"source_type"];
        [v33 setObject:@"UPP" forKeyedSubscript:@"log_code"];
        [v33 setObject:&off_1005471E8 forKeyedSubscript:@"metrics_install_type"];
        v34 = +[NSUUID UUID];
        [v33 setObject:v34 forKeyedSubscript:@"external_id"];

        v35 = sub_10020F7D4(v11);
        [v33 setObject:v35 forKeyedSubscript:@"bundle_id"];

        v36 = sub_10020F810(v11);
        [v33 setObject:v36 forKeyedSubscript:@"bundle_version"];

        v37 = sub_10020FC5C(v11);
        [v33 setObject:v37 forKeyedSubscript:@"bundle_name"];

        v38 = objc_alloc_init(MIStoreMetadata);
        v39 = sub_10020F810(v11);
        [v38 setBundleVersion:v39];

        v40 = sub_10020F90C(v11);
        [v38 setArtistName:v40];

        v41 = sub_10020FC5C(v11);
        [v38 setItemName:v41];

        v174 = v38;
        [v38 setHasMessagesExtension:sub_10020F84C(v11)];
        v42 = v12;
        v43 = v13;
        objc_opt_self();
        v169 = v33;
        v170 = v14;
        if (v42)
        {
          v44 = objc_alloc_init(NSURLComponents);
          [v44 setScheme:@"itms-services"];
          v45 = +[NSMutableArray array];
          v46 = [NSURLQueryItem queryItemWithName:@"action" value:@"download-manifest"];
          [v45 addObject:v46];

          v47 = [v42 absoluteString];
          v48 = [NSURLQueryItem queryItemWithName:@"url" value:v47];
          [v45 addObject:v48];

          if (v43)
          {
            v49 = [NSURLQueryItem queryItemWithName:@"digest" value:v43];
            [v45 addObject:v49];
          }

          [v44 setQueryItems:v45];
          v50 = [v44 URL];
          v51 = [v50 absoluteString];

          v33 = v169;
          v14 = v170;
          v32 = NSComparisonPredicate_ptr;
        }

        else
        {
          v51 = 0;
        }

        [v174 setEnterpriseInstallURL:v51];
        v54 = [NSNumber numberWithBool:sub_10020F84C(v11)];
        [v33 setObject:v54 forKeyedSubscript:@"has_messages_extension"];

        [v174 setLaunchProhibited:sub_10020F8AC(v11)];
        v55 = [NSNumber numberWithBool:sub_10020F8AC(v11)];
        [v33 setObject:v55 forKeyedSubscript:@"launch_prohibited"];

        v56 = v11;
        objc_opt_self();
        v57 = [v32[248] dictionary];
        v171 = v56;
        v58 = sub_10020FA24(v56);
        v165 = v12;
        v166 = v11;
        v164 = v13;
        v182 = v58;
        if ([v58 count])
        {
          v59 = [v32[248] dictionary];
          v192 = 0u;
          v193 = 0u;
          v194 = 0u;
          v195 = 0u;
          v60 = [v58 objectForKeyedSubscript:?];
          v61 = [v60 reverseObjectEnumerator];

          v62 = [v61 countByEnumeratingWithState:&v192 objects:buf count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v193;
            do
            {
              for (i = 0; i != v63; i = i + 1)
              {
                if (*v193 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v192 + 1) + 8 * i);
                v67 = sub_1001C7040(v66);
                v68 = sub_100229440(VariantDescriptor, v67);

                if (!v68)
                {
                  v69 = sub_1001C70D0(v66);
                  v68 = sub_100229440(VariantDescriptor, v69);

                  if (!v68)
                  {
                    continue;
                  }
                }

                [v59 setObject:v66 forKeyedSubscript:v68];
              }

              v63 = [v61 countByEnumeratingWithState:&v192 objects:buf count:16];
            }

            while (v63);
          }

          v70 = [v59 allKeys];
          v71 = sub_100229440(VariantDescriptor, v70);

          if (v71)
          {
            v72 = [v59 objectForKeyedSubscript:v71];
            [v57 setObject:v72 forKeyedSubscript:@"software-package"];

            v186[0] = _NSConcreteStackBlock;
            v186[1] = 3221225472;
            v186[2] = sub_100216398;
            v186[3] = &unk_10051D668;
            v73 = v71;
            v187 = v73;
            v188 = v57;
            [v182 enumerateKeysAndObjectsUsingBlock:v186];
            v74 = v73;
          }

          v12 = v165;
          v11 = v166;
          v33 = v169;
          v14 = v170;
          v32 = NSComparisonPredicate_ptr;
        }

        else
        {
          v71 = 0;
        }

        v75 = sub_10020F76C(v171);
        v184[0] = _NSConcreteStackBlock;
        v184[1] = 3221225472;
        v184[2] = sub_1002164F8;
        v184[3] = &unk_10051CAF0;
        v185 = v57;
        v76 = v57;
        [v75 enumerateKeysAndObjectsUsingBlock:v184];
        v173 = [v76 copy];

        v77 = v71;
        v78 = v77;
        if (v77)
        {
          v79 = sub_1002291AC(v77);
          [v174 setVariantID:v79];
        }

        v178 = v78;
        [v173 objectForKeyedSubscript:@"display-image"];
        v168 = v18 = v172;
        if (v168)
        {
          v80 = sub_1001C6FC4(v168);
          v81 = [v80 host];

          if (v81)
          {
            [v33 setObject:v80 forKeyedSubscript:@"artwork_url"];
          }
        }

        v167 = [v173 objectForKeyedSubscript:@"messages-display-image"];
        if (v167)
        {
          v82 = sub_1001C6FC4(v167);
          v83 = [v82 host];

          if (v83)
          {
            [v33 setObject:v82 forKeyedSubscript:@"messages_artwork_url"];
          }
        }

        v84 = sub_1003E364C(v174, a7);
        v163 = v84;
        if (!v84)
        {
          v91 = ASDLogHandleForCategory();
          v30 = v176;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v156 = sub_10020F7D4(v171);
            *buf = 138412546;
            *&buf[4] = v175;
            *&buf[12] = 2114;
            *&buf[14] = v156;
            _os_log_error_impl(&_mh_execute_header, v91, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Failed to encode metadata from manifest", buf, 0x16u);

            v30 = v176;
          }

          if (a7)
          {
            ASDErrorWithTitleAndMessage();
            *a7 = v29 = 0;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_171;
        }

        [v33 setObject:v84 forKeyedSubscript:@"store_metadata"];
        v85 = sub_1003B6560();
        v86 = v85;
        if (v85)
        {
          v87 = [*(v85 + 8) copy];
        }

        else
        {
          v87 = 0;
        }

        [v33 setObject:v87 forKeyedSubscript:@"policy"];

        v88 = [(SQLiteMemoryEntity *)[AppInstall alloc] initWithPropertyValues:v33];
        v89 = sub_1003BBF50();
        v90 = [v89 isHRNMode];

        v159 = v86;
        self = v88;
        if (v90)
        {
          if ([@"dmd" isEqualToString:{v14, v86}])
          {
            v161 = 1;
          }

          else if (os_variant_has_internal_content())
          {
            v161 = [@"asclient" isEqualToString:v14];
          }

          else
          {
            v161 = 0;
          }
        }

        else
        {
          v161 = 0;
        }

        v92 = [v173 allValues];
        v93 = v178;
        v179 = v178;
        objc_opt_self();
        v94 = [v32[248] dictionary];
        v192 = 0u;
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        obj = v92;
        v95 = [obj countByEnumeratingWithState:&v192 objects:buf count:16];
        if (v95)
        {
          v96 = v95;
          v97 = *v193;
          v180 = *v193;
          do
          {
            for (j = 0; j != v96; j = j + 1)
            {
              if (*v193 != v97)
              {
                objc_enumerationMutation(obj);
              }

              v99 = *(*(&v192 + 1) + 8 * j);
              v100 = sub_1001C6C9C(v99);
              if ([v100 isEqualToString:@"software-package"])
              {
                v101 = sub_1001C6FC4(v99);
                v102 = [v101 host];
                v103 = [v102 length];

                if (v103)
                {
                  [v94 setObject:v101 forKeyedSubscript:@"package_url"];
                  [v94 setObject:&off_100547200 forKeyedSubscript:@"package_type"];
                  [v94 setObject:&off_1005471B8 forKeyedSubscript:@"archive_type"];
                }

                if (v93)
                {
                  v104 = sub_1002291AC(v179);
                  [v94 setObject:v104 forKeyedSubscript:@"variant_id"];
                }

                v105 = sub_1001C6E8C(v99);
                v106 = v105;
                if (v105)
                {
                  if ([v105 count] == 1)
                  {
                    v107 = v106;
                    v108 = 3;
                    v109 = &off_100547218;
                    if (!&off_100547218)
                    {
                      goto LABEL_111;
                    }

LABEL_109:
                    if (v107)
                    {
                      [v94 setObject:v107 forKeyedSubscript:@"hash_array"];
                      [v94 setObject:v109 forKeyedSubscript:@"hash_size"];
                      v120 = [NSNumber numberWithInteger:v108];
                      [v94 setObject:v120 forKeyedSubscript:@"hash_type"];
                    }

                    goto LABEL_111;
                  }

                  if ([v106 count] < 2)
                  {
                    v107 = 0;
                    v109 = 0;
                  }

                  else
                  {
                    v118 = sub_1001C6F88(v99);
                    if ([v118 longLongValue] < 1)
                    {
                      v109 = 0;
                      v107 = 0;
                    }

                    else
                    {
                      v107 = v106;
                      v109 = v118;
                    }

                    v108 = 3;
LABEL_108:
                    v93 = v178;
                    if (v109)
                    {
                      goto LABEL_109;
                    }
                  }

LABEL_111:

                  v97 = v180;
                  goto LABEL_112;
                }

                v117 = sub_1001C6D54(v99);
                if ([v117 count] == 1)
                {
                  v107 = v117;
                  v109 = &off_100547218;
                }

                else if ([v117 count] < 2)
                {
                  v109 = 0;
                  v107 = 0;
                }

                else
                {
                  v119 = sub_1001C6E50(v99);
                  if ([v119 longLongValue] < 1)
                  {
                    v109 = 0;
                    v107 = 0;
                  }

                  else
                  {
                    v107 = v117;
                    v109 = v119;
                  }
                }

                v108 = 1;
                goto LABEL_108;
              }

              v110 = sub_1003BBF50();
              if ([v110 isHRNMode])
              {
                v111 = [v100 isEqualToString:@"software-SINF"];

                if (v111)
                {
                  v101 = sub_1001C6CD8(v99);
                  v112 = v94;
                  v113 = v101;
                  v114 = @"sinf";
LABEL_92:
                  [v112 setObject:v113 forKeyedSubscript:v114];
                  goto LABEL_112;
                }
              }

              else
              {
              }

              if (![v100 isEqualToString:@"asset-pack-manifest"])
              {
                goto LABEL_113;
              }

              v101 = sub_1001C6FC4(v99);
              v115 = [v101 host];
              v116 = [v115 length];

              if (v116)
              {
                v112 = v94;
                v113 = v101;
                v114 = @"odr_manifest_url";
                goto LABEL_92;
              }

LABEL_112:

LABEL_113:
            }

            v96 = [obj countByEnumeratingWithState:&v192 objects:buf count:16];
          }

          while (v96);
        }

        v121 = [v94 objectForKeyedSubscript:@"package_url"];

        if (v121)
        {
          v122 = [(SQLiteMemoryEntity *)[AppPackage alloc] initWithPropertyValues:v94];
        }

        else
        {
          v122 = 0;
        }

        v12 = v165;
        v11 = v166;
        v13 = v164;
        v18 = v172;

        v14 = v170;
        if (!v161 || (sub_10020FA8C(v171), v123 = objc_claimAutoreleasedReturnValue(), v123, !v123))
        {
LABEL_122:
          v125 = sub_10020F7D4(v171);
          v126 = sub_10020FC5C(v171);
          v127 = v125;
          v128 = v126;
          objc_opt_self();
          v129 = objc_autoreleasePoolPush();
          v130 = [ApplicationProxy proxyForBundleID:v127];
          v131 = v130;
          if (v130 && ([*(v130 + 120) isPlaceholder] & 1) == 0 && (sub_1003D2AE4(v131) || (!objc_msgSend(v131[15], "isProfileValidated") || objc_msgSend(v131[15], "isBeta")) && (!v161 || (objc_msgSend(v131[15], "isBeta") & 1) != 0)))
          {
            *&v192 = NSLocalizedDescriptionKey;
            *(&v192 + 1) = NSLocalizedFailureReasonErrorKey;
            *buf = @"Invalid state";
            *&buf[8] = @"Must uninstall existing app";
            if (v128)
            {
              v134 = v128;
            }

            else
            {
              v134 = &stru_100529300;
            }

            *&buf[16] = v134;
            *&v193 = @"UPPManifestErrorUserInfoKeyManifestName";
            *(&v193 + 1) = @"UPPManifestErrorUserInfoKeyExistingName";
            v135 = sub_1003D266C(v131);
            v136 = v135;
            if (v135)
            {
              v137 = v135;
            }

            else
            {
              v137 = &stru_100529300;
            }

            v191 = v137;
            v138 = [NSDictionary dictionaryWithObjects:buf forKeys:&v192 count:4];

            v139 = [NSError alloc];
            v132 = [v139 initWithDomain:ASDErrorDomain code:855 userInfo:v138];

            v14 = v170;
            objc_autoreleasePoolPop(v129);
            v140 = v132;
            v133 = 0;
          }

          else
          {

            objc_autoreleasePoolPop(v129);
            v132 = 0;
            v133 = 1;
          }

          v141 = v132;
          if (v133)
          {
            v18 = v172;
            if (v122)
            {
              v189 = v122;
              v143 = [NSArray arrayWithObjects:&v189 count:1];
              v33 = v169;
              if (self)
              {
                objc_setProperty_atomic_copy(self, v142, v143, 48);
              }

              v29 = self;
              goto LABEL_170;
            }

            v146 = ASDLogHandleForCategory();
            v33 = v169;
            if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v175;
              _os_log_error_impl(&_mh_execute_header, v146, OS_LOG_TYPE_ERROR, "[%@] Manifest resulted in no assets imported", buf, 0xCu);
            }

            if (a7)
            {
              ASDErrorWithTitleAndMessage();
              *a7 = v29 = 0;
              goto LABEL_170;
            }
          }

          else
          {
            v144 = ASDLogHandleForCategory();
            v18 = v172;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
            {
              v157 = sub_10020F7D4(v171);
              *buf = 138412802;
              *&buf[4] = v175;
              *&buf[12] = 2114;
              *&buf[14] = v157;
              *&buf[22] = 2114;
              v191 = v141;
              _os_log_error_impl(&_mh_execute_header, v144, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Failed install alllowed check with error: %{public}@", buf, 0x20u);
            }

            v33 = v169;
            if (a7)
            {
              v145 = v141;
              v29 = 0;
              *a7 = v141;
LABEL_170:

              v30 = v176;
LABEL_171:

              goto LABEL_172;
            }
          }

LABEL_169:
          v29 = 0;
          goto LABEL_170;
        }

        if (v122)
        {
          v124 = sub_10020FA8C(v171);
          sub_10023E000(self, v124, @"receipt");

          goto LABEL_122;
        }

        v147 = sub_10020F7D4(v171);
        v141 = [ApplicationProxy proxyForBundleID:v147];

        if (v141)
        {
          v148 = [v141[15] isPlaceholder];
          v149 = ASDLogHandleForCategory();
          v150 = v149;
          v33 = v169;
          if ((v148 & 1) == 0)
          {
            if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
            {
              v152 = sub_10020F7D4(v171);
              *buf = 138412546;
              *&buf[4] = v175;
              *&buf[12] = 2114;
              *&buf[14] = v152;
              _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Manifest only receipt update", buf, 0x16u);
            }

            v153 = sub_10020FA8C(v171);
            v183 = 0;
            sub_1003B6F84(WriteReceipt, v153, v141, v175, &v183);
            v150 = v183;

            v154 = ASDLogHandleForCategory();
            v151 = v154;
            if (v150)
            {
              if (!os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_167;
              }

              v155 = sub_10020F7D4(v171);
              *buf = 138412802;
              *&buf[4] = v175;
              *&buf[12] = 2114;
              *&buf[14] = v155;
              *&buf[22] = 2114;
              v191 = v150;
              _os_log_error_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Error writing receipt: %{public}@", buf, 0x20u);
            }

            else
            {
              if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_167;
              }

              v155 = sub_10020F7D4(v171);
              *buf = 138412546;
              *&buf[4] = v175;
              *&buf[12] = 2114;
              *&buf[14] = v155;
              _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Wrote receipt", buf, 0x16u);
            }

            v33 = v169;
            goto LABEL_167;
          }
        }

        else
        {
          v150 = ASDLogHandleForCategory();
          v33 = v169;
        }

        if (!os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
LABEL_168:

          goto LABEL_169;
        }

        v151 = sub_10020F7D4(v171);
        *buf = 138412546;
        *&buf[4] = v175;
        *&buf[12] = 2114;
        *&buf[14] = v151;
        _os_log_error_impl(&_mh_execute_header, v150, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Failed up update receipt on app that is not installed", buf, 0x16u);
LABEL_167:

        goto LABEL_168;
      }

      v53 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v175;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "[%@] bundle-identifier required for iOS platform manifest", buf, 0xCu);
      }

      if (a7)
      {
LABEL_32:
        ASDErrorWithTitleAndMessage();
        *v31 = v29 = 0;
        goto LABEL_172;
      }
    }

    else
    {
      v52 = ASDLogHandleForCategory();
      v31 = a7;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v175;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[%@] title required for iOS platform manifest", buf, 0xCu);
      }

      if (a7)
      {
        goto LABEL_32;
      }
    }

    v29 = 0;
    goto LABEL_172;
  }

LABEL_10:
  v28 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v175;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "[%@] Invalid kind for iOS platform manifest", buf, 0xCu);
  }

  if (a7)
  {
    ASDErrorWithTitleAndMessage();
    *a7 = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

  v30 = v176;
LABEL_172:

  return v29;
}

void sub_100217E24(char *a1, void *a2, void *a3, void *a4)
{
  v164 = a2;
  v7 = a3;
  v168 = a4;
  v165 = v7;
  if (!a1)
  {
    goto LABEL_140;
  }

  self = a1;
  if (!v7 || ![v7 length])
  {
    v30 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = objc_getProperty(a1, v31, 90, 1);
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%@] No manifest data was received", buf, 0xCu);
    }

    v167 = ASDErrorWithDescription();
    v168[2](v168, v167);

    goto LABEL_140;
  }

  v8 = sub_100382A0C([HashDigest alloc], 0);
  sub_100382C64(v8, v7);
  v166 = v8;
  v9 = sub_100382AA0(v8);
  v10 = *(a1 + 58);
  *(a1 + 58) = v9;

  if (*(a1 + 98) && ([*(a1 + 58) isEqualToString:?] & 1) == 0)
  {
    v34 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      Property = objc_getProperty(a1, v35, 90, 1);
      v155 = *(a1 + 98);
      v156 = *(a1 + 58);
      *buf = 138412802;
      *&buf[4] = Property;
      *&buf[12] = 2114;
      *&buf[14] = v155;
      *&buf[22] = 2114;
      v187 = v156;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%@] Manifest has changed, original was: %{public}@ this request: %{public}@", buf, 0x20u);
    }

    v163 = ASDErrorWithDescription();
    v168[2](v168, v163);

    goto LABEL_139;
  }

  v178 = 0;
  v161 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v178];
  v162 = v178;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v153 = objc_getProperty(a1, v33, 90, 1);
      *buf = 138412546;
      *&buf[4] = v153;
      *&buf[12] = 2114;
      *&buf[14] = v162;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%@] Could not parse manifest data: %{public}@", buf, 0x16u);
    }

    v160 = ASDErrorWithUnderlyingErrorAndDescription();
    v168[2](v168, v160);
    goto LABEL_138;
  }

  v11 = sub_10027C41C([UPPManifest alloc], v161);
  if (sub_10027C570(v11, @"com.apple.platform.watchos"))
  {
    v12 = sub_1002B0154();
    v13 = sub_1002B0280(v12);

    if (v13 && (*(v13 + 18) & 1) != 0)
    {
      v14 = objc_alloc_init(NSURLComponents);
      [v14 setScheme:@"itms-services"];
      v15 = [NSMutableArray arrayWithCapacity:3];
      v16 = [*(self + 50) absoluteString];
      v17 = [NSURLQueryItem queryItemWithName:@"url" value:v16];
      [v15 addObject:v17];

      v18 = [NSURLQueryItem queryItemWithName:@"action" value:@"download-manifest"];
      [v15 addObject:v18];

      if (*(self + 98))
      {
        v19 = [NSURLQueryItem queryItemWithName:@"digest" value:?];
        [v15 addObject:v19];
      }

      [v14 setQueryItems:v15];
      v20 = [ASDEnterpriseAppMetadata alloc];
      v21 = [v14 URL];
      v22 = [v20 initWithManifestURL:v21];

      [v22 setHideUserPrompts:self[74]];
      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_getProperty(self, v24, 90, 1);
        v26 = *(self + 50);
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Sending manifest %{public}@ to paired device", buf, 0x16u);
      }

      v27 = sub_1001F6394();
      *&v192 = v22;
      v28 = [NSArray arrayWithObjects:&v192 count:1];
      v29 = [*(v13 + 8) pairingID];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100219828;
      v187 = &unk_10051D460;
      v188 = self;
      [v27 installEnterpriseApps:v28 onPairedDevice:v29 withReplyHandler:buf];
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_getProperty(self, v36, 90, 1);
        v38 = *(self + 50);
        *buf = 138412546;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v38;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Not sending manifest %{public}@ to unsupported paired device", buf, 0x16u);
      }
    }
  }

  v160 = v11;
  v172 = +[NSMutableArray array];
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  obj = sub_10027C494(v160);
  v39 = 0;
  v40 = [obj countByEnumeratingWithState:&v192 objects:buf count:16];
  if (v40)
  {
    v41 = *v193;
    v170 = ASDErrorDomain;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v193 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v192 + 1) + 8 * i);
        v44 = sub_10020F8D0(v43);
        v46 = v44;
        if (v44 && (v47 = v44, objc_opt_self(), v48 = [v47 isEqualToString:@"com.apple.platform.iphoneos"], v47, (v48 & 1) == 0))
        {
          v58 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v64 = objc_getProperty(self, v59, 90, 1);
            v65 = sub_10020F7D4(v43);
            *v183 = 138412802;
            *&v183[4] = v64;
            *&v183[12] = 2114;
            *&v183[14] = v65;
            *&v183[22] = 2114;
            v184 = v47;
            _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Skipping due to incompatible platform: %{public}@", v183, 0x20u);
          }

          v53 = [NSString stringWithFormat:@"Not compatible with this platform: %@", v47];
          v196 = NSDebugDescriptionErrorKey;
          v182[0] = v53;
          v56 = [NSDictionary dictionaryWithObjects:v182 forKeys:&v196 count:1];
          v54 = [NSError errorWithDomain:v170 code:752 userInfo:v56];
        }

        else
        {
          v49 = *(self + 50);
          v50 = *(self + 58);
          v51 = *(self + 82);
          v52 = objc_getProperty(self, v45, 90, 1);
          v181 = v39;
          v53 = sub_100216594(UPPManifestDownloadTask, v43, v49, v50, v51, v52, &v181);
          v54 = v181;

          if (!v53)
          {
            goto LABEL_48;
          }

          v55 = sub_10020F7D4(v43);
          v56 = [ApplicationProxy proxyForBundleID:v55];

          if (v56 && ([v56[15] isPlaceholder] & 1) == 0)
          {
            v60 = [v56[15] URL];
            v61 = v60 == 0;

            if (!v61)
            {
              v62 = [v56[15] URL];
              sub_10023E000(v53, v62, @"bundle_url");
            }

            v57 = &off_100547230;
          }

          else
          {
            v57 = &off_100547248;
          }

          sub_10023E000(v53, v57, @"coordinator_intent");
          v63 = *(self + 82);
          if (v63)
          {
            sub_10023E000(v53, v63, @"client_id");
          }

          [v172 addObject:v53];
        }

LABEL_48:
        v39 = v54;
      }

      v40 = [obj countByEnumeratingWithState:&v192 objects:buf count:16];
    }

    while (v40);
  }

  if ([v172 count])
  {
    v66 = v172;
    if (v172)
    {
      v67 = 0;
      goto LABEL_55;
    }
  }

  else
  {
  }

  v68 = v39;
  v66 = 0;
  v67 = v39;
LABEL_55:
  v69 = v66;
  v159 = [v66 copy];

  v158 = v67;
  if (![v159 count])
  {
    if (v158)
    {
      sub_100216260(self, v158);
      v168[2](v168, v158);
    }

    else
    {
      (v168[2])();
    }

    goto LABEL_137;
  }

  if (self[74])
  {
    goto LABEL_63;
  }

  if (SBSGetScreenLockStatus())
  {
    v70 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    if (!v70 || (v182[0] = FBSOpenApplicationOptionKeyUnlockDevice, v182[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice, *v183 = &__kCFBooleanTrue, *&v183[8] = &__kCFBooleanTrue, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v183, v182, 2), v71 = objc_claimAutoreleasedReturnValue(), +[FBSOpenApplicationOptions optionsWithDictionary:](FBSOpenApplicationOptions, "optionsWithDictionary:", v71), v72 = objc_claimAutoreleasedReturnValue(), *&v192 = 0, *(&v192 + 1) = &v192, *&v193 = 0x2020000000, BYTE8(v193) = 0, v73 = dispatch_semaphore_create(0), *buf = _NSConcreteStackBlock, *&buf[8] = 3221225472, *&buf[16] = sub_100219BC4, v187 = &unk_10051D718, v189 = &v192, v74 = v73, v188 = v74, [v70 openApplication:@"com.apple.springboard" withOptions:v72 completion:buf], dispatch_semaphore_wait(v74, 0xFFFFFFFFFFFFFFFFLL), v75 = *(*(&v192 + 1) + 24), v188, v74, _Block_object_dispose(&v192, 8), v72, v71, v70, (v75 & 1) == 0))
    {
      v147 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        v151 = objc_getProperty(self, v150, 90, 1);
        *buf = 138412290;
        *&buf[4] = v151;
        _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "[%@] User canceled request to unlock device.", buf, 0xCu);
      }

      goto LABEL_136;
    }
  }

  v76 = v159;
  v77 = v164;
  *&v192 = 0;
  *(&v192 + 1) = &v192;
  *&v193 = 0x2020000000;
  BYTE8(v193) = 0;
  v78 = [v76 firstObject];
  if (v78)
  {
    v79 = [v76 firstObject];
    v80 = sub_10023E0F8(v79, @"bundle_name");

    v81 = [v77 URL];
    v82 = sub_1002C61F4(UPPManifestDialogRequest, v81, v80, [v76 count]);

    v83 = dispatch_semaphore_create(0);
    v84 = [*(self + 106) notificationClient];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100219BE0;
    v187 = &unk_10051D768;
    v188 = self;
    v85 = v82;
    v189 = v85;
    v191 = &v192;
    v86 = v83;
    v190 = v86;
    [v84 deliverDialogRequest:v85 withResultHandler:buf];

    dispatch_semaphore_wait(v86, 0xFFFFFFFFFFFFFFFFLL);
  }

  v87 = *(*(&v192 + 1) + 24);

  _Block_object_dispose(&v192, 8);
  if ((v87 & 1) == 0)
  {
    v147 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      v149 = objc_getProperty(self, v148, 90, 1);
      *buf = 138412290;
      *&buf[4] = v149;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "[%@] User cancelled manifest confirmation", buf, 0xCu);
    }

LABEL_136:

    v152 = ASDErrorWithDescription();

    v168[2](v168, v152);
    goto LABEL_137;
  }

LABEL_63:
  v157 = v159;
  if (![v157 count])
  {
    goto LABEL_127;
  }

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v171 = v157;
  obja = [v171 countByEnumeratingWithState:&v192 objects:buf count:16];
  if (!obja)
  {
    goto LABEL_126;
  }

  v173 = *v193;
  do
  {
    v88 = 0;
    do
    {
      if (*v193 != v173)
      {
        objc_enumerationMutation(v171);
      }

      v89 = *(*(&v192 + 1) + 8 * v88);
      v176 = sub_1003B6560();
      if (v89)
      {
        v91 = objc_getProperty(v89, v90, 48, 1);
      }

      else
      {
        v91 = 0;
      }

      v92 = v91;
      v93 = [v92 firstObject];

      if (v93)
      {
        v94 = sub_10023E0F8(v93, @"package_url");
        if (v94)
        {
          v95 = [DetermineSizeForURLTask alloc];
          v96 = sub_100408EB0(v89);
          v97 = sub_1002E6CB8(v95, v94, v96);

          if ([self runSubTask:v97 returningError:0])
          {
            if (v97)
            {
              v99 = objc_getProperty(v97, v98, 66, 1);
            }

            else
            {
              v99 = 0;
            }

            v100 = v99;
            sub_10023E000(v93, v100, @"bytes_total");
          }

          else
          {
            v100 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              v139 = objc_getProperty(self, v104, 90, 1);
              v141 = sub_100408EB0(v89);
              if (v97)
              {
                v142 = objc_getProperty(v97, v140, 32, 1);
              }

              else
              {
                v142 = 0;
              }

              v143 = v142;
              *v183 = 138412802;
              *&v183[4] = v139;
              *&v183[12] = 2114;
              *&v183[14] = v141;
              *&v183[22] = 2114;
              v184 = v143;
              _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Unable to determine download size error: %{public}@", v183, 0x20u);
            }
          }
        }

        v105 = sub_100396E20(v89, v93);
        v106 = [[_TtC9appstored23ReviewNetworkPolicyTask alloc] initWithDownload:v105];
        if ([self runSubTask:v106 returningError:0])
        {
          sub_1003B6764(v176, [(ReviewNetworkPolicyTask *)v106 constrainedResult]);
          sub_1003B6820(v176, [(ReviewNetworkPolicyTask *)v106 expensiveResult]);
          sub_1003B66A8(v176, [(ReviewNetworkPolicyTask *)v106 interfaceMask]);
          sub_100408FB4(v89, v176);
        }

        else
        {
          v107 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            v130 = objc_getProperty(self, v108, 90, 1);
            v132 = sub_100408EB0(v89);
            if (v106)
            {
              v133 = objc_getProperty(v106, v131, 32, 1);
            }

            else
            {
              v133 = 0;
            }

            v134 = v133;
            *v183 = 138412802;
            *&v183[4] = v130;
            *&v183[12] = 2114;
            *&v183[14] = v132;
            *&v183[22] = 2114;
            v184 = v134;
            _os_log_error_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Unable to determine policy error: %{public}@", v183, 0x20u);
          }
        }
      }

      else
      {
        v94 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
        {
          v102 = objc_getProperty(self, v101, 90, 1);
          v103 = sub_100408EB0(v89);
          *v183 = 138412546;
          *&v183[4] = v102;
          *&v183[12] = 2114;
          *&v183[14] = v103;
          _os_log_fault_impl(&_mh_execute_header, v94, OS_LOG_TYPE_FAULT, "[%@] [%{public}@] Package for this installation is now missing", v183, 0x16u);
        }
      }

      v110 = objc_getProperty(self, v109, 90, 1);
      v111 = v89;
      v112 = v110;
      objc_opt_self();
      v182[0] = 0;
      v113 = sub_1003A07F4(v111);
      v114 = v182[0];
      v115 = v114;
      if (!v113)
      {
        v116 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v126 = sub_100408EB0(v111);
          *v183 = 138412802;
          *&v183[4] = v112;
          *&v183[12] = 2114;
          *&v183[14] = v126;
          *&v183[22] = 2114;
          v184 = v115;
          _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%@]  [%{public}@] Failed to create coordinator builder: %{public}@", v183, 0x20u);
        }

LABEL_99:
        v125 = 0;
        goto LABEL_103;
      }

      v196 = v114;
      v116 = sub_1003A040C(v113, &v196);
      v117 = v196;

      if (v116)
      {
        if (![v116 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithPlaceholderPromise]|| [v116 creatorIdentifier]!= 1 || (sub_100248F9C(v116) & 1) != 0)
        {
          goto LABEL_96;
        }

        if (v89)
        {
          v119 = objc_getProperty(v111, v118, 48, 1);
        }

        else
        {
          v119 = 0;
        }

        v120 = v119;
        v121 = [v120 firstObject];
        v181 = v117;
        v169 = sub_1002FFD28(v111, v121, &v181);
        v122 = v181;

        v180 = v122;
        v123 = sub_1002FE870(v169, &v180);
        v115 = v180;

        if (v123)
        {
          v179 = v115;
          v124 = sub_10024A138(v116, v123, &v179);
          v117 = v179;

          if (v124)
          {

LABEL_96:
            v116 = v116;
            v115 = v117;
            v125 = v116;
            goto LABEL_103;
          }

          v137 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v138 = sub_100408EB0(v111);
            *v183 = 138412802;
            *&v183[4] = v112;
            *&v183[12] = 2114;
            *&v183[14] = v138;
            *&v183[22] = 2114;
            v184 = v117;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Failed to set placeholder: %{public}@", v183, 0x20u);
          }

          [v123 cancelForReason:v117 client:1 error:0];
          v115 = v117;
        }

        else
        {
          v135 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
          {
            v136 = sub_100408EB0(v111);
            *v183 = 138412802;
            *&v183[4] = v112;
            *&v183[12] = 2114;
            *&v183[14] = v136;
            *&v183[22] = 2114;
            v184 = v115;
            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Failed to create placeholder: %{public}@", v183, 0x20u);
          }
        }

        goto LABEL_99;
      }

      v127 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        v128 = sub_100408EB0(v111);
        *v183 = 138412802;
        *&v183[4] = v112;
        *&v183[12] = 2114;
        *&v183[14] = v128;
        *&v183[22] = 2114;
        v184 = v117;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Failed to create coordinator: %{public}@", v183, 0x20u);
      }

      v116 = 0;
      v125 = 0;
      v115 = v117;
LABEL_103:

      if (v125)
      {
        v129 = [v125 uniqueIdentifier];
        sub_10023E000(v111, v129, @"coordinator_id");
      }

      v88 = v88 + 1;
    }

    while (obja != v88);
    v144 = [v171 countByEnumeratingWithState:&v192 objects:buf count:16];
    obja = v144;
  }

  while (v144);
LABEL_126:

  v145 = sub_1003C27BC();
  *v183 = _NSConcreteStackBlock;
  *&v183[8] = 3221225472;
  *&v183[16] = sub_1002197F8;
  v184 = &unk_10051D6C8;
  v185 = v171;
  [v145 modifyUsingTransaction:v183];

  v146 = sub_1002C0D84();
  sub_1002C13BC(v146, 64);

LABEL_127:
  v168[2](v168, 0);

LABEL_137:
LABEL_138:

LABEL_139:
LABEL_140:
}

void sub_100219828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Property = objc_getProperty(*(a1 + 32), v9, 90, 1);
      v11 = *(*(a1 + 32) + 50);
      v16 = 138412802;
      v17 = Property;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Sending manifest %{public}@ failed with error: %{public}@", &v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = objc_getProperty(v13, v12, 90, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v5 firstObject];
    v16 = 138412546;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Manifest sent to paired device: %{public}@", &v16, 0x16u);
  }
}

void sub_1002199C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v11, 90, 1);
      }

      *buf = 138412546;
      v25 = Property;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Request failed with error: %@", buf, 0x16u);
    }

    v13 = *(a1 + 40);
    v14 = ASDErrorWithSafeUserInfo();
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v15 = dispatch_get_global_queue(*(a1 + 48), 0);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100219BB4;
    v19 = &unk_10051C7A8;
    v20 = *(a1 + 32);
    v21 = v8;
    v22 = v7;
    v23 = *(a1 + 40);
    dispatch_async(v15, &v16);
  }

  [*(*(a1 + 32) + 66) finishTasksAndInvalidate];
}

void sub_100219BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 90, 1);
      }

      *buf = 138412546;
      v17 = Property;
      v18 = 2114;
      v19 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to present dialog, trying system dialog error: %{public}@", buf, 0x16u);
    }

    v8 = [[AMSSystemAlertDialogTask alloc] initWithRequest:*(a1 + 40)];
    v9 = [v8 present];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100219DA0;
    v14[3] = &unk_10051D740;
    v13 = *(a1 + 48);
    v10 = v13;
    v15 = v13;
    [v9 addFinishBlock:v14];
  }

  else
  {
    v11 = [a2 selectedActionIdentifier];
    *(*(*(a1 + 56) + 8) + 24) = [v11 isEqualToString:@"UPPManifestDialogActionInstall"];

    dispatch_semaphore_signal(*(a1 + 48));
  }
}

intptr_t sub_100219DA0(uint64_t a1, void *a2)
{
  v3 = [a2 selectedActionIdentifier];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isEqualToString:@"UPPManifestDialogActionInstall"];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

BOOL sub_10021A104(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 databaseID])
    {
      v5 = [ODRAssetDownloadEntity alloc];
      v6 = [v4 databaseID];
      v7 = [a1 connection];
      v8 = [(SQLiteEntity *)v5 initWithPersistentID:v6 onConnection:v7];

      a1 = [(SQLiteEntity *)v8 deleteFromDatabase];
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v4;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to delete ODRDownload %{public}@ ", &v11, 0xCu);
      }

      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_10021A234(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    v7 = objc_opt_new();
    v8 = sub_10039A6A0(v4);
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8];

    v10 = [a1 connection];
    v11 = sub_1002D3F5C(ODRManifestEntity, v10, v9);

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10021A3B0;
    v14[3] = &unk_10051CA10;
    v14[4] = a1;
    v15 = v7;
    v12 = v7;
    [v11 enumeratePersistentIDsUsingBlock:v14];
    sub_10021A464(a1, v9);
    sub_10021A574(a1, v9);
    sub_100339794(a1[2], v12);
  }

  return v6;
}

void sub_10021A3B0(uint64_t a1, uint64_t a2)
{
  v4 = [ODRManifestEntity alloc];
  v5 = [*(a1 + 32) connection];
  v8 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = *(a1 + 40);
  v7 = [(SQLiteEntity *)v8 objectForKeyedSubscript:@"storage_id"];
  sub_100339710(v6, v7);

  [(SQLiteEntity *)v8 deleteFromDatabase];
}

void sub_10021A464(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ODRDatabaseChangeset);
  v5 = [a1 connection];
  v6 = sub_1002D3F5C(ODRAssetPackEntity, v5, v3);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021C584;
  v8[3] = &unk_10051CA10;
  v8[4] = a1;
  v9 = v4;
  v7 = v4;
  [v6 enumeratePersistentIDsUsingBlock:v8];
  if (a1)
  {
    sub_100339794(a1[2], v7);
  }
}

void sub_10021A574(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 connection];
  v5 = sub_1002D3F5C(ODRTagEntity, v4, v3);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021C658;
  v6[3] = &unk_10051D840;
  v6[4] = a1;
  [v5 enumeratePersistentIDsUsingBlock:v6];
}

BOOL sub_10021A63C(_BOOL8 a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = a3;
    v10 = sub_100280A90([ODRManifest alloc], v7, v9, 0);
    v11 = sub_10039A094(ODRApplication, v9);

    v12 = [v11 mutableCopy];
    v13 = sub_100280C3C(v10);
    sub_10039C490(v12, v13);

    v14 = sub_100280B6C(v10);
    v15 = [v14 stringValue];
    sub_10039C634(v12, v15);

    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = v8;
      v20 = 2048;
      v21 = [v7 length];
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Importing %{iec-bytes}lu App Review manifest for %{public}@", &v18, 0x20u);
    }

    a1 = sub_10021A80C(a1, v10, v12, 0);
  }

  return a1;
}

BOOL sub_10021A80C(uint64_t *a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_58;
  }

  v68 = a1;
  v8 = v6;
  if ([v8 databaseID])
  {
    v9 = [ODRManifestEntity alloc];
    v10 = [v8 databaseID];
    v11 = [a1 connection];
    v12 = [(SQLiteEntity *)v9 initWithPersistentID:v10 onConnection:v11];
  }

  else
  {
    v13 = sub_100280B34(v8);

    if (!v13)
    {

LABEL_11:
      v21 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v76 = v7;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Asked to update a manifest, but none found matching %{public}@", buf, 0xCu);
      }

      v22 = sub_100280B34(v8);
      if (v22)
      {
        v24 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v22];
        v25 = [a1 connection];
        v26 = sub_1002D3DF0(ODRManifestEntity, v25, v24);

        v23 = sub_100340328(v26, @"storage_id");
      }

      else
      {
        v23 = 0;
      }

      v27 = [ODRManifestEntity alloc];
      if (v8)
      {
        v28 = v8[2];
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v30 = [a1 connection];
      v31 = [(SQLiteEntity *)v27 initWithPropertyValues:v29 onConnection:v30];

      if (v23)
      {
        [(SQLiteEntity *)v31 setObject:v23 forKeyedSubscript:@"storage_id"];
        sub_10023E000(v8, v23, @"storage_id");
      }

      v12 = v31;
      goto LABEL_21;
    }

    v11 = objc_opt_new();
    v14 = sub_100280B34(v8);
    v15 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v14];
    [v11 addObject:v15];

    v16 = sub_100280B6C(v8);

    if (v16)
    {
      v17 = sub_100280B6C(v8);
      v18 = [SQLiteComparisonPredicate predicateWithProperty:@"evid" equalToValue:v17];
      [v11 addObject:v18];
    }

    v19 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
    v20 = [a1 connection];
    v12 = sub_1002D3DF0(ODRManifestEntity, v20, v19);
  }

  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_21:
  v65 = v6;
  v32 = [NSNumber numberWithBool:sub_100280BDC(v8)];
  [(SQLiteEntity *)v12 setObject:v32 forKeyedSubscript:@"local_cache_allowed"];

  if (v8)
  {
    v33 = sub_10023E4DC(v8, @"is_store_based");
  }

  else
  {
    v33 = 0;
  }

  a1 = v68;
  v34 = a4;
  v35 = [NSNumber numberWithInt:v33];
  [(SQLiteEntity *)v12 setObject:v35 forKeyedSubscript:@"is_store_based"];

  v36 = +[NSDate date];
  [(SQLiteEntity *)v12 setObject:v36 forKeyedSubscript:@"last_modification_date"];

  v37 = sub_10039B79C(v7);
  v63 = v12;
  [(SQLiteEntity *)v12 setObject:v37 forKeyedSubscript:@"version"];

  v66 = objc_alloc_init(ODRDatabaseChangeset);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v64 = v8;
  v38 = sub_100280E78(v8);
  v70 = [v38 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v70)
  {
    v39 = *v72;
    v69 = *v72;
    do
    {
      v40 = 0;
      do
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v38);
        }

        v41 = *(*(&v71 + 1) + 8 * v40);
        if ([v41 databaseID])
        {
          v42 = [ODRAssetPackEntity alloc];
          v43 = [v41 databaseID];
          v44 = [a1 connection];
          v45 = [(SQLiteEntity *)v42 initWithPersistentID:v43 onConnection:v44];
        }

        else
        {
          v44 = sub_1002690FC(v41);
          v46 = sub_100269134(v41);
          v45 = sub_10021BD34(a1, v44, v46);
        }

        if (!v45)
        {
          v48 = sub_1002690FC(v41);
          v49 = sub_100269134(v41);
          v50 = v49;
          if (v48 && v49)
          {
            v51 = v38;
            v52 = sub_100269588(v41);
            if (v52)
            {

LABEL_42:
              v55 = [ODRAssetPackEntity alloc];
              if (v41)
              {
                v56 = v41[2];
              }

              else
              {
                v56 = 0;
              }

              v57 = v56;
              v58 = [a1 connection];
              v53 = [(SQLiteEntity *)v55 initWithPropertyValues:v57 onConnection:v58];

              a1 = v68;
              v34 = a4;
              v38 = v51;
              v39 = v69;
              if (!v53)
              {
                v59 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v76 = v48;
                  v77 = 2114;
                  v78 = v50;
                  _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Failed to create a new asset pack entity for bundleID: %{public}@ bundleKey: %{public}@", buf, 0x16u);
                }

                v53 = 0;
              }
            }

            else
            {
              v54 = sub_10023E644(v41, @"source_url");

              if (v54)
              {
                goto LABEL_42;
              }

              v53 = ASDLogHandleForCategory();
              v38 = v51;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v76 = v48;
                v77 = 2114;
                v78 = v50;
                _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Skipping import due to lack of a source URL. bundleID: %{public}@ bundleKey: %{public}@", buf, 0x16u);
              }

              v39 = v69;
            }
          }

          else
          {
            v53 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v76 = v48;
              v77 = 2114;
              v78 = v50;
              _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Skipping import due to lack of identifiers. bundleID: %{public}@ bundleKey: %{public}@", buf, 0x16u);
            }
          }

          goto LABEL_52;
        }

        v47 = [(SQLiteEntity *)v45 objectForKeyedSubscript:@"local_url"];
        sub_10023E000(v41, v47, @"local_url");

        sub_1002549DC(v45, v41, v34);
        if ((v34 & 1) == 0 && sub_100382950(v45))
        {
          v48 = [(SQLiteEntity *)v45 objectForKeyedSubscript:@"local_url"];
          sub_10033968C(v66, v48);
LABEL_52:
        }

        v40 = v40 + 1;
      }

      while (v70 != v40);
      v60 = [v38 countByEnumeratingWithState:&v71 objects:v79 count:16];
      v70 = v60;
    }

    while (v60);
  }

  v61 = sub_1001C34B8(a1, v7);
  sub_100281080(v64, v61);

  sub_100339794(a1[2], v66);
  v6 = v65;
LABEL_58:

  return a1 != 0;
}

BOOL sub_10021B0C0(_BOOL8 a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = objc_opt_new();
    v6 = v4;
    if (v3)
    {
      v7 = objc_getProperty(v3, v5, 104, 1);
      [v6 setObject:v7 forKeyedSubscript:@"bundle_id"];

      Property = objc_getProperty(v3, v8, 112, 1);
    }

    else
    {
      [v4 setObject:0 forKeyedSubscript:@"bundle_id"];
      Property = 0;
    }

    v10 = Property;
    [v6 setObject:v10 forKeyedSubscript:@"bundle_key"];

    if (v3)
    {
      v12 = objc_getProperty(v3, v11, 128, 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    [v6 setObject:v13 forKeyedSubscript:@"coordinator_id"];

    if (v3)
    {
      v14 = [NSNumber numberWithInteger:v3[18]];
      [v6 setObject:v14 forKeyedSubscript:@"download_size"];

      v16 = objc_getProperty(v3, v15, 216, 1);
    }

    else
    {
      v27 = [NSNumber numberWithInteger:0];
      [v6 setObject:v27 forKeyedSubscript:@"download_size"];

      v16 = 0;
    }

    v17 = v16;
    v18 = [v17 absoluteString];
    [v6 setObject:v18 forKeyedSubscript:@"source_url"];

    if (v3)
    {
      v19 = [NSNumber numberWithInteger:v3[29]];
      [v6 setObject:v19 forKeyedSubscript:@"type"];

      v21 = objc_getProperty(v3, v20, 240, 1);
    }

    else
    {
      v28 = [NSNumber numberWithInteger:0];
      [v6 setObject:v28 forKeyedSubscript:@"type"];

      v21 = 0;
    }

    v22 = v21;

    [v6 setObject:v22 forKeyedSubscript:@"unique_key"];
    v23 = [ODRAssetDownloadEntity alloc];
    v24 = [v2 connection];
    v25 = [(SQLiteEntity *)v23 initWithPropertyValues:v6 onConnection:v24];

    v2 = [(SQLiteEntity *)v25 persistentID]!= 0;
  }

  return v2;
}

uint64_t sub_10021B35C(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a3;
    v6 = [NSNumber numberWithBool:a2];
    sub_10023E000(v5, v6, @"is_paused");

    v7 = sub_10021B3E4(v4, v5);
    return v7;
  }

  return result;
}

uint64_t sub_10021B3E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 databaseID])
    {
      v5 = objc_alloc([objc_opt_class() databaseEntityClass]);
      v6 = [v4 databaseID];
      v7 = [a1 connection];
      v8 = [v5 initWithPersistentID:v6 onConnection:v7];

      if (v4)
      {
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      [v8 setValuesWithDictionary:v10];

      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

BOOL sub_10021B4B4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = sub_10039A6A0(v5);

    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v7];

    v9 = [a1 connection];
    v10 = sub_1002D3F5C(ODRAssetPackEntity, v9, v8);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10021B61C;
    v13[3] = &unk_10051D818;
    v13[4] = a1;
    v14 = v6;
    v15 = a3;
    v11 = v6;
    [v10 enumeratePersistentIDsUsingBlock:v13];
    sub_100339794(a1[2], v11);
  }

  return a1 != 0;
}

void sub_10021B61C(uint64_t a1, uint64_t a2)
{
  v4 = [ODRAssetPackEntity alloc];
  v5 = [*(a1 + 32) connection];
  v12 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = [(SQLiteEntity *)v12 objectForKeyedSubscript:@"local_url"];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [NSURL URLWithString:v6];
    sub_10033968C(v7, v8);

    [(SQLiteEntity *)v12 setObject:0 forKeyedSubscript:@"local_url"];
    [(SQLiteEntity *)v12 setObject:&off_100547290 forKeyedSubscript:@"pin_count"];
    v9 = [(SQLiteEntity *)v12 objectForKeyedSubscript:@"purgeable"];
    LODWORD(v7) = [v9 BOOLValue];

    v10 = *(a1 + 48);
    if (v7 && v10 == 4)
    {
      [(SQLiteEntity *)v12 setObject:&off_1005472A8 forKeyedSubscript:@"purge_reason"];
    }

    else
    {
      v11 = [NSNumber numberWithInteger:v10];
      [(SQLiteEntity *)v12 setObject:v11 forKeyedSubscript:@"purge_reason"];
    }
  }
}

BOOL sub_10021B798(_BOOL8 a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 connection];
    v12 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021B92C;
    v10[3] = &unk_10051B0F0;
    v5 = v3;
    v11 = v5;
    sub_10022C810(v4, @"DELETE FROM odr_tag WHERE bundle_id = ?", &v12, v10);
    v6 = v12;

    a1 = v6 == 0;
    if (v6)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_10039A6A0(v5);
        *buf = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error removing tags for %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  return a1;
}

void sub_10021B92C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = sub_10039A6A0(v2);
  [v3 bindString:v4 atPosition:1];
}

BOOL sub_10021B994(_BOOL8 a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 connection];
    v12 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021BB28;
    v10[3] = &unk_10051B0F0;
    v5 = v3;
    v11 = v5;
    sub_10022C810(v4, @"UPDATE odr_asset_pack SET pin_count = 0, purgeable = 1 WHERE bundle_id = ?", &v12, v10);
    v6 = v12;

    a1 = v6 == 0;
    if (v6)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_10039A6A0(v5);
        *buf = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error resetting state for %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  return a1;
}

void sub_10021BB28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = sub_10039A6A0(v2);
  [v3 bindString:v4 atPosition:1];
}

BOOL sub_10021BB90(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 databaseID])
  {
    v5 = [ODRAssetPackEntity alloc];
    v6 = [v4 databaseID];
    v7 = [a1 connection];
    v8 = [(SQLiteEntity *)v5 initWithPersistentID:v6 onConnection:v7];

    sub_1002549DC(v8, v4, 0);
  }

  return a1 != 0;
}

BOOL sub_10021BC40(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    if (v3)
    {
      v6 = objc_getProperty(v3, v4, 104, 1);
      Property = objc_getProperty(v5, v7, 112, 1);
    }

    else
    {
      v6 = 0;
      Property = 0;
    }

    v9 = Property;
    v10 = sub_10021BD34(a1, v6, v9);

    v11 = v10 != 0;
    if (v10)
    {
      if (v5)
      {
        v12 = v5[18];
      }

      else
      {
        v12 = 0;
      }

      v13 = [NSNumber numberWithInteger:v12];
      [v10 setObject:v13 forKeyedSubscript:@"file_size"];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_10021BD34(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v5];
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_key" equalToValue:v7];
    v19[0] = v8;
    v19[1] = v9;
    v10 = [NSArray arrayWithObjects:v19 count:2];
    v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

    v12 = [a1 connection];
    v13 = sub_1002D3DF0(ODRAssetPackEntity, v12, v11);
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v5;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to lookup asset pack with bundleID: %{public}@ and bundleKey: %{public}@", &v15, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

BOOL sub_10021BEFC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v38 = a1;
  if (a1)
  {
    v26 = v6;
    v34 = sub_10039A6A0(v6);
    v36 = [SQLiteComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToValue:" equalToValue:?];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = sub_1003C26B8(v5);
    v30 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v30)
    {
      v28 = *v44;
      v29 = v5;
      do
      {
        v7 = 0;
        do
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v7;
          v8 = *(*(&v43 + 1) + 8 * v7);
          context = objc_autoreleasePoolPush();
          v37 = [SQLiteComparisonPredicate predicateWithProperty:@"name" equalToValue:v8];
          v33 = v8;
          v9 = sub_1002EA14C(v5, v8);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v35 = v9;
          v10 = [v9 countByEnumeratingWithState:&v39 objects:v54 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v40;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v40 != v12)
                {
                  objc_enumerationMutation(v35);
                }

                v14 = *(*(&v39 + 1) + 8 * i);
                v15 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_key" equalToValue:v14];
                v53[0] = v36;
                v53[1] = v15;
                v53[2] = v37;
                v16 = [NSArray arrayWithObjects:v53 count:3];
                v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

                v18 = [v38 connection];
                v19 = sub_1002D3DF0(ODRTagEntity, v18, v17);

                if (!v19)
                {
                  v51[0] = @"bundle_id";
                  v51[1] = @"bundle_key";
                  v52[0] = v34;
                  v52[1] = v14;
                  v51[2] = @"name";
                  v52[2] = v33;
                  v20 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
                  v21 = [ODRTagEntity alloc];
                  v22 = [v38 connection];
                  v23 = [(SQLiteEntity *)v21 initWithPropertyValues:v20 onConnection:v22];

                  if (!v23)
                  {
                    v24 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v48 = v20;
                      v49 = 2114;
                      v50 = v34;
                      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error importing tag with properites %{public}@ for %{public}@", buf, 0x16u);
                    }
                  }
                }
              }

              v11 = [v35 countByEnumeratingWithState:&v39 objects:v54 count:16];
            }

            while (v11);
          }

          objc_autoreleasePoolPop(context);
          v7 = v32 + 1;
          v5 = v29;
        }

        while ((v32 + 1) != v30);
        v30 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v30);
    }

    v6 = v26;
  }

  return v38 != 0;
}

BOOL sub_10021C310(uint64_t *a1, void *a2, void *a3, void *a4, int a5)
{
  if (a1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10021A80C(a1, v11, v9, a5);
    sub_10021BEFC(a1, v10, v9);
    v12 = sub_10039A6A0(v9);

    v13 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v12];

    v14 = sub_1003C26B8(v10);

    v15 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"name" values:v14];

    v26[0] = v13;
    v26[1] = v15;
    v16 = [NSArray arrayWithObjects:v26 count:2];
    v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

    sub_10021A574(a1, v17);
    v18 = sub_100280D1C(v11);

    v19 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"bundle_key" values:v18];

    v25[0] = v13;
    v25[1] = v19;
    v20 = [NSArray arrayWithObjects:v25 count:2];
    v21 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v20];

    sub_10021A464(a1, v21);
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 0;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Finished updating manifest.", v24, 2u);
    }
  }

  return a1 != 0;
}

void sub_10021C584(uint64_t a1, uint64_t a2)
{
  v4 = [ODRAssetPackEntity alloc];
  v5 = [*(a1 + 32) connection];
  v9 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = [(SQLiteEntity *)v9 objectForKeyedSubscript:@"local_url"];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [NSURL URLWithString:v6];
    sub_10033968C(v7, v8);
  }

  [(SQLiteEntity *)v9 deleteFromDatabase];
}

void sub_10021C658(uint64_t a1, uint64_t a2)
{
  v4 = [ODRTagEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  [(SQLiteEntity *)v6 deleteFromDatabase];
}

id *sub_10021C6F4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = ODRTagsRequest;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v5 = objc_alloc_init(_TtC9appstored6LogKey);
      v6 = a1[4];
      a1[4] = v5;

      objc_storeStrong(a1 + 5, a2);
      v7 = +[NSDate date];
      [v7 timeIntervalSinceReferenceDate];
      a1[2] = v8;

      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = a1[3];
      a1[3] = v9;
    }
  }

  return a1;
}

id sub_10021CA38()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021CADC;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA820 != -1)
  {
    dispatch_once(&qword_1005AA820, block);
  }

  v0 = qword_1005AA818;

  return v0;
}

void sub_10021CADC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AA818;
  qword_1005AA818 = v1;
}

id sub_10021CDA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10021CF3C;
    v25 = sub_10021CF4C;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10021CF3C;
    v19 = sub_10021CF4C;
    v20 = 0;
    v7 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10021CF54;
    v11[3] = &unk_10051D868;
    v11[4] = a1;
    v12 = v5;
    v13 = &v15;
    v14 = &v21;
    dispatch_sync(v7, v11);
    v8 = v16[5];
    if (a3 && !v8)
    {
      *a3 = v22[5];
      v8 = v16[5];
    }

    v9 = v8;

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_10021CF3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10021CF54(void *a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = a1[5];
    v5 = v3;
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 accountID]);
    v7 = AMSHashIfNeeded();
    *buf = 138412546;
    v15 = v3;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@]: Querying purchase history for account: %{public}@", buf, 0x16u);
  }

  v8 = *(a1[4] + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021D0EC;
  v11[3] = &unk_10051DA10;
  v10 = *(a1 + 5);
  v9 = v10;
  v12 = v10;
  v13 = a1[7];
  [v8 readUsingSession:v11];
}

void sub_10021D0EC(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_1003C0B84(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10021D168(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [KeepAlive keepAliveWithName:@"com.apple.appstoredaemon.PurchaseHistoryManager.query"];
    v8 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021D268;
    v10[3] = &unk_10051CBD0;
    v10[4] = a1;
    v11 = v5;
    v12 = v7;
    v13 = v6;
    v9 = v7;
    sub_100005D90(v8, v10);
  }
}

void sub_10021D268(uint64_t a1)
{
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10021CF3C;
  v23[4] = sub_10021CF4C;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10021CF3C;
  v21 = sub_10021CF4C;
  v22 = 0;
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) accountID]);
    v5 = AMSHashIfNeeded();
    *buf = 138412546;
    v26 = v3;
    v27 = 2114;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@]: Querying purchase history for account: %{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021D5D0;
  v13[3] = &unk_10051DA10;
  v15 = &v17;
  v14 = *(a1 + 40);
  v16 = v23;
  [v6 readUsingSession:v13];
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) accountID]);
    v10 = AMSHashIfNeeded();
    v11 = [v18[5] count];
    v12 = *(a1 + 40);
    *buf = 138413058;
    v26 = v8;
    v27 = 2114;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Purchase History query for account: %{public}@ completed with %lu results from query: %@", buf, 0x2Au);
  }

  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(v23, 8);
}

void sub_10021D594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10021D5D0(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_1003C0B84(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10021D64C(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    v11 = +[ActiveAccountObserver activeAccount];
    v12 = v11;
    if (v11)
    {
      v29 = 0;
      v13 = v11;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_10021CF3C;
      v39 = sub_10021CF4C;
      v40 = 0;
      v14 = *(a1 + 32);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10021EFB8;
      v30[3] = &unk_10051D9E8;
      v15 = v13;
      v31 = v15;
      v32 = &v35;
      v33 = a3;
      v34 = &v29;
      [v14 readUsingSession:v30];
      if ([v36[5] count])
      {
        v16 = objc_opt_new();
        v17 = [v36[5] firstObject];
        sub_100232B70(v16, v17);

        if (v16)
        {
          v16[8] = a2 ^ 1;
        }

        v41 = v16;
        v18 = [NSArray arrayWithObjects:&v41 count:1];
        v19 = sub_10000479C();
        v20 = sub_10023E8E4(PurchaseHistoryHideShowRequestContext, v18, v15, v19);
      }

      else if (v29)
      {
        v20 = 0;
      }

      else
      {
        sub_1002357E8(1, 0);
        v29 = v20 = 0;
      }

      _Block_object_dispose(&v35, 8);
      v22 = v29;
      if (v22)
      {
        v10[2](v10, v22);
      }

      else
      {
        v23 = *(a1 + 8);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10021D9B8;
        v24[3] = &unk_10051B920;
        v28 = v10;
        v25 = v20;
        v26 = a1;
        v27 = v9;
        [v23 recentBagWithCompletionHandler:v24];
      }
    }

    else
    {
      v21 = sub_1002357E8(4, 0);
      v10[2](v10, v21);
    }
  }
}

void sub_10021D9B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = sub_1003ECE00([PurchaseHistoryHideShowRequest alloc], v5, *(a1 + 32));
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021DAB0;
    v10[3] = &unk_10051D8B0;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v7;
    v10[4] = v8;
    v11 = v9;
    sub_1003ECEAC(v6, v10);
  }
}

void sub_10021DAB0(void *a1, uint64_t a2)
{
  v3 = *(a1[6] + 16);
  if (a2)
  {

    v3();
  }

  else
  {
    v3();
    v4 = a1[4];
    v5 = a1[5];

    sub_10021DB24(v4, 2, v5, &stru_10051D888);
  }
}

void sub_10021DB24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10021E724;
    v11[3] = &unk_10051D948;
    v11[4] = a1;
    v13 = v8;
    v14 = a2;
    v12 = v7;
    sub_100005D90(v10, v11);
  }
}

void sub_10021DBF8(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v25 = a3;
  v22 = a1;
  if (a1)
  {
    v5 = +[ActiveAccountObserver activeAccount];
    v6 = v5;
    if (v5)
    {
      v31 = 0;
      v7 = v5;
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = sub_10021CF3C;
      v44 = sub_10021CF4C;
      v45 = 0;
      v8 = *(a1 + 32);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10021F100;
      v36[3] = &unk_10051D9C0;
      v23 = v7;
      v37 = v23;
      v38 = &v40;
      v39 = &v31;
      [v8 readUsingSession:v36];
      v9 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = v41[5];
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (v11)
      {
        v12 = *v33;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = v6;
            v15 = *(*(&v32 + 1) + 8 * i);
            v16 = objc_opt_new();
            sub_100232B70(v16, v15);
            if (v16)
            {
              v16[8] = 1;
            }

            [v9 addObject:v16];

            v6 = v14;
          }

          v11 = [v10 countByEnumeratingWithState:&v32 objects:v46 count:16];
        }

        while (v11);
      }

      v17 = sub_10000479C();
      v18 = sub_10023E8E4(PurchaseHistoryHideShowRequestContext, v9, v23, v17);

      _Block_object_dispose(&v40, 8);
      v19 = v31;
      if (v19)
      {
        v25[2](v25, v19);
      }

      else
      {
        v21 = *(v22 + 8);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10021DFC0;
        v26[3] = &unk_10051B920;
        v30 = v25;
        v27 = v18;
        v28 = v22;
        v29 = v24;
        [v21 recentBagWithCompletionHandler:v26];
      }
    }

    else
    {
      v20 = sub_1002357E8(4, 0);
      v25[2](v25, v20);
    }
  }
}

void sub_10021DFC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = sub_1003ECE00([PurchaseHistoryHideShowRequest alloc], v5, *(a1 + 32));
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021E0B8;
    v10[3] = &unk_10051D8B0;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v7;
    v10[4] = v8;
    v11 = v9;
    sub_1003ECEAC(v6, v10);
  }
}

void sub_10021E0B8(void *a1, uint64_t a2)
{
  v3 = *(a1[6] + 16);
  if (a2)
  {

    v3();
  }

  else
  {
    v3();
    v4 = a1[4];
    v5 = a1[5];

    sub_10021DB24(v4, 2, v5, &stru_10051D8D0);
  }
}

void sub_10021E12C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (a1)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10021E234;
    v15[3] = &unk_10051D8F8;
    v18 = v11;
    v15[4] = a1;
    v16 = v9;
    v19 = a4;
    v17 = v10;
    [v13 recentBagOnQueue:v14 completionHandler:v15];
  }
}

void sub_10021E234(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = +[ActiveAccountObserver activeAccount];
    if (v6)
    {
      v7 = sub_1002751AC([PurchaseHistoryUpdateCommand alloc], *(a1 + 40), *(a1 + 64), v5);
      v9 = v7;
      if (v7)
      {
        objc_setProperty_atomic(v7, v8, *(a1 + 48), 48);
        objc_setProperty_atomic_copy(v9, v10, *(a1 + 56), 72);
      }

      sub_10021E3D0(*(a1 + 32), v9);
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = objc_opt_class();
        v13 = v15;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@]: Ignoring update request - there is no active account", &v14, 0xCu);
      }

      v12 = *(a1 + 56);
      v9 = sub_1002358D4(4, 0);
      (*(v12 + 16))(v12, v9);
    }
  }
}

void sub_10021E3D0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v3 = *(a1 + 24);
    if (v3)
    {
      [v3 addObject:v4];
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      sub_10021F5F8(a1);
    }
  }
}

void sub_10021E440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    v11 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10021E51C;
    v12[3] = &unk_10051D920;
    v12[4] = a1;
    v15 = a2;
    v16 = a3;
    v13 = v9;
    v14 = v10;
    sub_100005D90(v11, v12);
  }
}

void sub_10021E51C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:*(a1 + 56)];
  sub_10021E588(v2, v3, *(a1 + 64), *(a1 + 40), *(a1 + 48));
}

void sub_10021E588(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (v9)
    {
      v12 = +[BagService appstoredService];
      v13 = *(a1 + 40);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10021F538;
      v16[3] = &unk_10051D8F8;
      v20 = v11;
      v21 = a3;
      v17 = v9;
      v18 = v10;
      v19 = a1;
      [v12 recentBagOnQueue:v13 completionHandler:v16];

      v14 = v20;
LABEL_8:

      goto LABEL_9;
    }

    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[PurchaseHistoryManager] Refusing to perform update without an accountID!", buf, 2u);
    }

    if (v11)
    {
      v14 = sub_1002358D4(4, 0);
      (*(v11 + 2))(v11, v14);
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_10021E724(uint64_t a1)
{
  v2 = +[ActiveAccountObserver activeAccount];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v2 ams_DSID];
    sub_10021E588(v4, v5, *(a1 + 56), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@]: Ignoring update request - there is no active account", &v10, 0xCu);
    }

    v7 = *(a1 + 48);
    v8 = sub_1002358D4(4, 0);
    (*(v7 + 16))(v7, v8);
  }
}

void sub_10021E940(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = sub_1002EA054(*(a1 + 32));
    v7 = +[ActiveAccountObserver activeAccount];
    v8 = v7;
    if (!v7)
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = AMSHashIfNeeded();
        *buf = 138543362;
        v25 = v20;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[PurchaseHistoryManager] Ignoring push notification for accountID: %{public}@ as there isn't any account active", buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_22;
    }

    if (v6 && ([v7 ams_DSID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToNumber:", v6), v9, v10))
    {
      v11 = sub_1002EA118(*(a1 + 32), @"2");
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = AMSHashIfNeeded();
        *buf = 138543618;
        v25 = v13;
        v26 = 2114;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PurchaseHistoryManager] Checking for update after receiving notification for accountID: %{public}@ server revision: %{public}@", buf, 0x16u);
      }

      if (v11)
      {
        v14 = sub_100275284(PurchaseHistoryUpdateCommand, v6, v11, v5);
LABEL_16:
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10021ECF0;
        v21[3] = &unk_10051B8A8;
        v6 = v6;
        v22 = v6;
        v23 = *(a1 + 48);
        if (v14)
        {
          objc_setProperty_atomic_copy(v14, v18, v21, 72);
        }

        sub_10021E3D0(*(a1 + 40), v14);

LABEL_22:
        goto LABEL_23;
      }
    }

    else
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v25 = v6;
        v26 = 2114;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[PurchaseHistoryManager] Received check for accountID: %{public}@ but falling back to active account: %{public}@", buf, 0x16u);
      }

      v16 = [v8 ams_DSID];

      v6 = v16;
    }

    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v6;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[PurchaseHistoryManager] Unable to reference server revision from message, performing default check for: %{public}@", buf, 0xCu);
    }

    v14 = sub_100275130(PurchaseHistoryUpdateCommand, 0, v6, v5);
    v11 = 0;
    goto LABEL_16;
  }

  (*(*(a1 + 48) + 16))();
LABEL_23:
}

void sub_10021ECF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[PurchaseHistoryManager] Failed to complete update for accountID: %{public}@ error: %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PurchaseHistoryManager] Sucessfully completed update after notification for accountID: %{public}@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10021EEC4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = +[ActiveAccountObserver activeAccount];
    v6 = [v5 ams_DSID];

    if (v6)
    {
      v7 = sub_100275130(PurchaseHistoryUpdateCommand, 0, v6, v10);
      v9 = v7;
      if (v7)
      {
        objc_setProperty_atomic_copy(v7, v8, *(a1 + 40), 72);
      }

      sub_10021E3D0(*(a1 + 32), v9);
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_10021EFB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ASDPurchaseHistoryQuery);
  v5 = [*(a1 + 32) ams_DSID];
  [v4 setAccountID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [NSNumber numberWithLongLong:*(a1 + 48)];
  v11 = v6;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  [v4 setStoreIDs:v7];

  [v4 setIsFirstParty:0];
  [v4 setIsHidden:0];
  [v4 setIsPreorder:0];
  v8 = sub_1003C0B84(v3, v4, *(a1 + 56));

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_10021F100(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_alloc_init(ASDPurchaseHistoryQuery);
  v4 = [*(a1 + 32) ams_DSID];
  [v8 setAccountID:{objc_msgSend(v4, "longLongValue")}];

  [v8 setIsFirstParty:0];
  [v8 setIsHidden:0];
  [v8 setIsPreorder:0];
  v5 = sub_1003C0B84(v3, v8, *(a1 + 48));

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10021F2F0(uint64_t a1)
{
  v2 = +[ActiveAccountObserver activeAccount];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v2 ams_DSID];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10021F454;
    v8[3] = &unk_10051B5C0;
    v8[4] = *(a1 + 32);
    sub_10021E588(v4, v5, 3, 0, v8);
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@]: Ignoring update request - there is no active account", buf, 0xCu);
    }
  }
}

void sub_10021F454(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412546;
      v6 = objc_opt_class();
      v7 = 2114;
      v8 = v2;
      v4 = v6;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%@]: Failed to refresh after active account changed error: %{public}@", &v5, 0x16u);
    }
  }
}

void sub_10021F538(uint64_t a1, void *a2)
{
  if (a2)
  {
    self = sub_100275130(PurchaseHistoryUpdateCommand, *(a1 + 64), *(a1 + 32), a2);
    if (self)
    {
      objc_setProperty_atomic(self, v3, *(a1 + 40), 64);
      objc_setProperty_atomic_copy(self, v4, *(a1 + 56), 72);
    }

    sub_10021E3D0(*(a1 + 48), self);
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }
}

void sub_10021F5F8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (*(a1 + 16) == 1)
    {
      v2 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v3 = "[PurchaseHistoryManager] Update is already running, waiting for it to finish";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      }
    }

    else
    {
      if ([*(a1 + 24) count])
      {
        v2 = +[ActiveAccountObserver activeAccount];
        if (v2)
        {
          v4 = sub_100279D34(*(a1 + 24));
          if (v4)
          {
            while ((sub_10027641C(v4, *(a1 + 32)) & 1) == 0)
            {
              sub_100275328(v4, 0);
              v5 = sub_100279D34(*(a1 + 24));

              v4 = v5;
              if (!v5)
              {
                goto LABEL_10;
              }
            }

            *(a1 + 16) = 1;
            v12 = sub_1002756D4(v4, v2, *(a1 + 32));
            v14[4] = a1;
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_10021F948;
            v15[3] = &unk_10051B718;
            v15[4] = a1;
            v14[0] = _NSConcreteStackBlock;
            v14[1] = 3221225472;
            v14[2] = sub_10021F9C8;
            v14[3] = &unk_10051B5C0;
            v13 = sub_1002DC210([DispatchQueue alloc], *(a1 + 40));
            [v12 thenPerform:v15 orCatchError:v14 onScheduler:v13];
          }

          else
          {
LABEL_10:
            v6 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PurchaseHistoryManager] No qualifying update requests remaining", buf, 2u);
            }

            v4 = 0;
          }
        }

        else
        {
          v4 = sub_1002357E8(4, 0);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v7 = *(a1 + 24);
          v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v17;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v17 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                sub_100275328(*(*(&v16 + 1) + 8 * i), v4);
              }

              v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
            }

            while (v9);
          }

          [*(a1 + 24) removeAllObjects];
        }

        goto LABEL_26;
      }

      v2 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v3 = "[PurchaseHistoryManager] No queued updates pending";
        goto LABEL_15;
      }
    }

LABEL_26:
  }
}

uint64_t sub_10021F948(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0;
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PurchaseHistoryManager] Update command completed, checking for next command", v4, 2u);
  }

  return sub_10021F5F8(*(a1 + 32));
}

void sub_10021F9C8(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 16) = 0;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PurchaseHistoryManager] Update command failed: %{public}@, checking for next command", &v5, 0xCu);
  }

  sub_10021F5F8(*(a1 + 32));
}

id *sub_10021FB4C(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = PurchaseHistoryItemsDAAPRequestEncoder;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

uint64_t sub_100220028(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v7 = [v5 isAutomatic];
  v8 = ASDLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      v13 = [v5 logKey];
      v21 = 138412802;
      v22 = v13;
      v23 = 2048;
      v24 = [v5 bytes];
      v25 = 1024;
      v26 = [v5 isAutomatic];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Evaluating download, size = %{bytes}llu automatic = %d", &v21, 0x1Cu);
    }

    v14 = [v6 integerForKey:@"lowDataPromptThreshold" defaultValue:0];
    if ((v14 & 0x8000000000000000) != 0)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v5 logKey];
        v21 = 138412290;
        v22 = v18;
        v19 = "[%@]: Implicitly allowed low data - threshold disabled";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v19, &v21, 0xCu);
      }
    }

    else
    {
      v15 = v14;
      if (![v5 bytes])
      {
        v8 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v10 = [v5 logKey];
        v21 = 138412290;
        v22 = v10;
        v11 = "[%@]: Implicitly denied low data - download size is unavailable";
        goto LABEL_5;
      }

      v16 = [v5 bytes];
      v8 = ASDLogHandleForCategory();
      v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v16 > v15)
      {
        if (!v17)
        {
          goto LABEL_6;
        }

        v10 = [v5 logKey];
        v21 = 138412290;
        v22 = v10;
        v11 = "[%@]: Implicitly denied low data - over threshold, or threshold unavailable";
        goto LABEL_5;
      }

      if (v17)
      {
        v18 = [v5 logKey];
        v21 = 138412290;
        v22 = v18;
        v19 = "[%@]: Implicitly allowed low data - threshold applies";
        goto LABEL_20;
      }
    }

    v12 = 3;
    goto LABEL_22;
  }

  if (v9)
  {
    v10 = [v5 logKey];
    v21 = 138412290;
    v22 = v10;
    v11 = "[%@]: Implicitly denied low data - automatic downloads are disabled";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, &v21, 0xCu);
  }

LABEL_6:
  v12 = 4;
LABEL_22:

LABEL_23:
  return v12;
}

id sub_100220330()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002203D4;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AA830 != -1)
  {
    dispatch_once(&qword_1005AA830, block);
  }

  v0 = qword_1005AA828;

  return v0;
}

void sub_1002203D4()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1005AA828;
  qword_1005AA828 = v0;
}

id sub_1002205AC()
{
  objc_opt_self();
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 attributesOfFileSystemForPath:@"/private/var" error:0];
  v2 = [v1 objectForKey:NSFileSystemFreeSize];
  v3 = [v2 longLongValue];

  return v3;
}

id sub_100220630()
{
  objc_opt_self();
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 integerForKey:@"ODRDeviceSpaceCushion"];

  return v1;
}

uint64_t sub_10022067C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = sub_1002205AC();
    v5 = v4 - (sub_100220630() + a2);
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      v20 = "[ODRManager checkAndRequestRequiredSpaceForRequest:]";
      v21 = 2048;
      v22 = sub_1002205AC();
      v23 = 2048;
      v24 = sub_100220630();
      v25 = 2048;
      v26 = a2;
      v27 = 2048;
      v28 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}s avail: %lld cushion: %lld required: %lld delta: %lld", buf, 0x34u);
    }

    if (v5 < 0 && sub_100220884(v3, -v5, 0, 3) < -v5)
    {
      v7 = sub_10026A620();
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * v11);
            if (v12)
            {
              v12 = v12[8];
            }

            v13 = v12;
            [v13 sendLowDiskSpaceNotification];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id *sub_100220884(id *a1, uint64_t a2, int a3, int a4)
{
  v4 = a1;
  if (a1)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PURGING SYSTEM : Requested %{iec-bytes}lld be purged at urgency %d", buf, 0x12u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v22 = 0;
    if (a3)
    {
      v4 = sub_100221C68(v4, a2, a4);
      *(*&buf[8] + 24) = v4;
    }

    else
    {
      v9 = dispatch_semaphore_create(0);
      v10 = [NSNumber numberWithLongLong:a2];
      v11 = [NSDictionary dictionaryWithObjectsAndKeys:@"/private/var", @"CACHE_DELETE_VOLUME", v10, @"CACHE_DELETE_AMOUNT", 0];

      v12 = v9;
      CacheDeletePurgeSpaceWithInfo();
      v13 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v12, v13) >= 1)
      {
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v19 = 136446210;
          v20 = "[ODRManager purgeBytes:odrOnly:urgency:]";
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}s cache-delete semaphore timed out.", v19, 0xCu);
        }
      }

      if (a4 == 3)
      {
        v15 = *(*&buf[8] + 24);
        if (a2 > v15)
        {
          v16 = sub_100221C68(v4, a2 - v15, 3);
          *(*&buf[8] + 24) += v16;
          if (v16 >= 1)
          {
            v17 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *v19 = 134217984;
              v20 = v16;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Secondary purging pass due to CacheDelete shortfall.  Additional bytes purged (%{iec-bytes}lld).", v19, 0xCu);
            }
          }
        }
      }

      v4 = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  return v4;
}

uint64_t sub_100220BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    [*(a1 + 24) lock];
    v4 = sub_100208FBC();
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100220CE4;
    v9 = &unk_10051DA60;
    v10 = v3;
    v11 = &v12;
    [v4 modifyUsingTransaction:&v6];

    [*(a1 + 24) unlock];
    LOBYTE(a1) = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return a1 & 1;
}

void sub_100220CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100220CE4(uint64_t a1, void *a2)
{
  v16 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = sub_100399B78(ODRApplication, *(*(&v23 + 1) + 8 * i));
        v4 = sub_1001C34B8(v16, v18);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v20;
          do
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v20 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v19 + 1) + 8 * j);
              v10 = sub_100269588(v9);
              if (v10)
              {
                if (sub_100269CA8(v9))
                {
                  sub_1001FE464(v9, 2);
                }

                v11 = sub_100258F88(v10);
                sub_100269A18(v9, v11);

                *(*(*(a1 + 40) + 8) + 24) = 1;
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v6);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  v12 = *(*(*(a1 + 40) + 8) + 24);
  return v12;
}

void sub_100220F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_100399B78(ODRApplication, v3);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling application installation: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 1;
    v6 = sub_100208FBC();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100221364;
    v12[3] = &unk_10051DC00;
    p_buf = &buf;
    v7 = v4;
    v13 = v7;
    [v6 readUsingSession:v12];

    v8 = *(*(&buf + 1) + 24);
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          v9 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *v15 = 138543362;
          v16 = v7;
          v10 = "Handling installation for %{public}@ as an updated ODR application";
          break;
        case 4:
          v9 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 138543362;
            v16 = v7;
            v10 = "Handling installation for %{public}@ as an ODR application needing repair";
            break;
          }

          goto LABEL_24;
        case 5:
          v9 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *v15 = 138543362;
          v16 = v7;
          v10 = "Ignoring installation for %{public}@ as it already up to date";
          break;
        default:
          goto LABEL_25;
      }
    }

    else
    {
      if (v8)
      {
        if (v8 != 1)
        {
          if (v8 != 2)
          {
            goto LABEL_25;
          }

          v9 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          *v15 = 138543362;
          v16 = v7;
          v10 = "Handling installation for %{public}@ as a new ODR application";
          goto LABEL_23;
        }

        v9 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 138543362;
          v16 = v7;
          v10 = "Ignoring installation for %{public}@ but it does not appear to support ODR";
          goto LABEL_23;
        }

LABEL_24:

        v8 = *(*(&buf + 1) + 24);
LABEL_25:
        if ((v8 - 2) < 2)
        {
          v11 = sub_100338694([ODRApplicationImportTask alloc], v7);
          sub_10023EDE4(ODRTaskQueue, v11, 17);
        }

        else if (v8 == 4)
        {
          v11 = sub_100253964([ODRApplicationRepairTask alloc], v7);
          sub_10023EDE4(ODRTaskQueue, v11, 17);
        }

        else
        {
          if (v8)
          {
LABEL_32:

            _Block_object_dispose(&buf, 8);
            goto LABEL_33;
          }

          v11 = sub_10036ABA4([ODRApplicationCleanTask alloc], v7);
          sub_10023EDE4(ODRTaskQueue, v11, 17);
        }

        goto LABEL_32;
      }

      v9 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *v15 = 138543362;
      v16 = v7;
      v10 = "Cleaning up after installation for %{public}@ as ODR is no longer supported";
    }

LABEL_23:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v15, 0xCu);
    goto LABEL_24;
  }

LABEL_33:
}

void sub_100221320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100221364(uint64_t a1, uint64_t a2)
{
  result = sub_1001C4560(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002213A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    [*(a1 + 24) lock];
    objc_opt_self();
    if (_os_feature_enabled_impl())
    {
      v7 = -1;
    }

    else
    {
      v7 = 0x80000000;
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[ODRManager performResourceAccessBlock:forApplicationBundleID:]";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s ODRManager.performResourceAccessBlock maxPinnedSizeAllowed %lul", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v21 = 0;
    v9 = sub_100208FBC();
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1002215FC;
    v17 = &unk_10051DC00;
    v19 = buf;
    v18 = v6;
    [v9 readUsingSession:&v14];

    v10 = *(*&buf[8] + 24);
    v11 = v7 >= v10;
    v12 = v7 - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v5[2](v5, v13);

    _Block_object_dispose(buf, 8);
    [*(a1 + 24) unlock];
  }
}

void sub_1002215FC(uint64_t a1, void **a2)
{
  v3 = sub_1001C4F60(a2, *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = [v3 unsignedIntegerValue];
}

void sub_100221660(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 24) lock];
    v3[2]();
    [*(a1 + 24) unlock];
  }
}

void sub_100221704(uint64_t a1)
{
  data = dispatch_source_get_data(*(*(a1 + 32) + 32));
  if ((data & 0x200) != 0)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[ODRManager _setupPurgingSupport]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s received very low disk notification. Purging 2GB at urgency 3.", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = 2000000000;
    v8 = 3;
    goto LABEL_12;
  }

  v3 = ASDLogHandleForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if ((data & 4) != 0)
  {
    if (v4)
    {
      v9 = 136446210;
      v10 = "[ODRManager _setupPurgingSupport]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s received low disk notification. Purging 1GB at urgency 2.", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = 1000000000;
    v8 = 2;
LABEL_12:
    sub_100220884(v6, v7, 1, v8);
    return;
  }

  if (v4)
  {
    v9 = 136446466;
    v10 = "[ODRManager _setupPurgingSupport]_block_invoke";
    v11 = 2048;
    v12 = data;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s received unknown notification-- flags %lu -- doing nothing.", &v9, 0x16u);
  }
}

uint64_t sub_100221A8C(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  *v7 = 0;
  v3 = sub_1002224B4(a1, a2, 0x7FFFFFFFFFFFFFFFLL, v7, 0);
  v4 = *v7;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 134218240;
    *&v7[4] = v4;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PURGING : %{iec-bytes}lld available for purging urgency %d", v7, 0x12u);
  }

  return v4;
}

const char *sub_100221C68(id *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v70 = 0;
  [a1[3] lock];
  context = objc_autoreleasePoolPush();
  v53 = +[NSMutableArray array];
  v54 = +[NSMutableSet set];
  v6 = sub_100222470(a1, a3, a2, &v70);
  if (a3 >= 2 && v70 < a2)
  {
    v7 = sub_10026A620();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v66 objects:v81 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v67;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v67 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v66 + 1) + 8 * i);
          if (v12)
          {
            v12 = v12[8];
          }

          v13 = v12;
          [v13 sendLowDiskSpaceNotification];
        }

        v9 = [v7 countByEnumeratingWithState:&v66 objects:v81 count:16];
      }

      while (v9);
    }

    v14 = sub_100222470(a1, a3, a2, &v70);

    v6 = v14;
  }

  v48 = a2;
  v49 = a3;
  v51 = a1;
  v52 = [[RBSTerminateContext alloc] initWithExplanation:@"On-Demand Resource purge request from CacheDelete"];
  [v52 setMaximumTerminationResistance:30];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v6;
  v15 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (!v15)
  {
    v17 = 0;
    v19 = v54;
    goto LABEL_42;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v63;
  v19 = v54;
  do
  {
    v20 = 0;
    do
    {
      if (*v63 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v62 + 1) + 8 * v20);
      v22 = sub_1002690FC(v21);
      if (sub_100269440(v21) < 1 || ([v19 containsObject:v22] & 1) != 0)
      {
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = sub_100269134(v21);
          v25 = sub_100269440(v21);
          *buf = 136446978;
          v73 = "[ODRManager _purgeBytes:forUrgency:]";
          v74 = 2114;
          v75 = v22;
          v76 = 2114;
          v77 = v24;
          v78 = 2048;
          v79 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s No need to assert %{public}@ for asset %{public}@ with pin count %lld", buf, 0x2Au);
        }

        goto LABEL_29;
      }

      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = sub_100269134(v21);
        v28 = sub_100269440(v21);
        *buf = 136446978;
        v73 = "[ODRManager _purgeBytes:forUrgency:]";
        v74 = 2114;
        v75 = v22;
        v76 = 2114;
        v77 = v27;
        v78 = 2048;
        v79 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s Attempting to assert %{public}@ for asset %{public}@ with pin count %lld.", buf, 0x2Au);
      }

      [v19 addObject:v22];
      v29 = [RBSTerminationAssertion alloc];
      v30 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v22];
      v23 = [v29 initWithPredicate:v30 context:v52];

      [v53 addObject:v23];
      if (![v23 processExists])
      {
        goto LABEL_28;
      }

      v61 = 0;
      v31 = [v23 acquireWithError:&v61];
      v32 = v61;
      v33 = v32;
      if (v31)
      {

LABEL_28:
        v19 = v54;
LABEL_29:

        if (sub_1001FE464(v21, 2))
        {
          v34 = sub_100269550(v21);
          v17 = &v17[[v34 integerValue]];

          v35 = sub_100208FBC();
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 3221225472;
          v60[2] = sub_1002224A4;
          v60[3] = &unk_10051AF70;
          v60[4] = v21;
          [v35 modifyUsingTransaction:v60];
        }

        else
        {
          v36 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v38 = sub_100269134(v21);
            v39 = sub_100269390(v21);
            *buf = 138543618;
            v73 = v38;
            v74 = 2114;
            v75 = v39;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "PURGING ERROR : Attempting to delete asset %{public}@ at url %{public}@ failed.", buf, 0x16u);
          }
        }

        goto LABEL_34;
      }

      v37 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v73 = v22;
        v74 = 2114;
        v75 = v33;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Error acquiring assertion for %{public}@: %{public}@", buf, 0x16u);
      }

      v19 = v54;
LABEL_34:

      v20 = v20 + 1;
    }

    while (v16 != v20);
    v40 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
    v16 = v40;
  }

  while (v40);
LABEL_42:

  v41 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v73 = v17;
    v74 = 2048;
    v75 = v48;
    v76 = 1024;
    LODWORD(v77) = v49;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "PURGING : %{iec-bytes}lld purged (%lld requested) for purging urgency %d", buf, 0x1Cu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v42 = v53;
  v43 = [v42 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v57;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v56 + 1) + 8 * j) invalidate];
      }

      v44 = [v42 countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v44);
  }

  objc_autoreleasePoolPop(context);
  [v51[3] unlock];
  return v17;
}

id sub_100222470(void *a1, int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    a1 = sub_1002224B4(a1, a2, a3, a4, 1);
    v4 = vars8;
  }

  return a1;
}

id sub_1002224B4(uint64_t a1, int a2, uint64_t a3, void *a4, char a5)
{
  if (a1)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1002227F4;
    v34 = sub_100222804;
    v35 = objc_alloc_init(NSMutableArray);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10022280C;
    v24[3] = &unk_10051DA88;
    v25 = a5;
    v24[4] = &v26;
    v24[5] = &v30;
    v24[6] = a3;
    v9 = objc_retainBlock(v24);
    v10 = v9;
    switch(a2)
    {
      case 3:
        sub_1002228D4(0, v9);
        if (![v31[5] count])
        {
          v16 = sub_10026A620();
          v17 = [v16 count];

          if (!v17)
          {
            v18 = sub_1003DC0F4();
            v19 = sub_1003DCD20(v18);

            if ((v19 & 1) == 0)
            {
              v20 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ODR Purging requesting with high priority, kicking off maintenance operations.", buf, 2u);
              }

              v21 = dispatch_get_global_queue(21, 0);
              dispatch_async(v21, &stru_10051DAA8);
            }
          }
        }

        break;
      case 2:
        v14 = +[NSUserDefaults standardUserDefaults];
        v15 = [v14 integerForKey:@"ODRPurgeAssetMediumUrgencyCutoff"];

        sub_1002228D4(v15, v10);
        break;
      case 1:
        v11 = v9;
        v12 = sub_100208FBC();
        *buf = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = sub_1002239DC;
        v39 = &unk_10051DBD8;
        v13 = v11;
        v40 = v13;
        [v12 readUsingSession:buf];

        break;
    }

    if (a4)
    {
      *a4 = v27[3];
    }

    v22 = v31[5];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_1002227C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002227F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10022280C(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = sub_100269CA8(v8);
  v6 = v8;
  if (v5)
  {
    v7 = sub_100269550(v8);
    *(*(*(a1 + 32) + 8) + 24) += [v7 unsignedLongLongValue];

    if (*(a1 + 56) == 1)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
    }

    v6 = v8;
    if (*(*(*(a1 + 32) + 8) + 24) >= *(a1 + 48))
    {
      *a3 = 1;
    }
  }
}

void sub_1002228D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSDate dateWithTimeIntervalSinceNow:-a1];
  v5 = sub_10026A620();
  v6 = sub_10036FDEC(v5, &stru_10051DB38);
  v7 = sub_100208FBC();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100223758;
  v11[3] = &unk_10051DBB0;
  v8 = v3;
  v13 = v6;
  v14 = v8;
  v12 = v4;
  v9 = v6;
  v10 = v4;
  [v7 readUsingSession:v11];
}

void sub_100222A08(id a1)
{
  v1 = sub_1001C13C8();
  sub_1001C14D8(v1);

  v2 = sub_1001C13C8();
  sub_1001C15E8(v2);
}

void sub_100222A70(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  *(*(*(a1 + 40) + 8) + 24) = [v4 longLongValue];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 134218240;
    v9 = v7;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PURGING SYSTEM : %{iec-bytes}lld purged (requested %lld)", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100222B74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    [*(a1 + 24) lock];
    v6 = sub_100208FBC();
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100222C44;
    v10 = &unk_10051DAF8;
    v12 = a3;
    v11 = v5;
    [v6 modifyUsingTransaction:&v7];

    [*(a1 + 24) unlock];
  }
}

uint64_t sub_100222C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v6 = +[NSDate date];
    v7 = sub_1001C3958(v4, v5, 1, v6);
  }

  else
  {
    v7 = sub_1001C3F04(v3, *(a1 + 32));
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        sub_1001FE464(v13, *(a1 + 40));
        sub_10021BB90(v4, v13);
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return 1;
}

void sub_100222DB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    [*(a1 + 24) lock];
    v6 = sub_100208FBC();
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100222E84;
    v10 = &unk_10051DAF8;
    v11 = v5;
    v12 = a3;
    [v6 modifyUsingTransaction:&v7];

    [*(a1 + 24) unlock];
  }
}

uint64_t sub_100222E84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C3A68(v3, *(a1 + 32));
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  if (*(a1 + 40) != 1)
  {
    goto LABEL_13;
  }

  v6 = sub_1002690FC(v4);
  objc_opt_self();
  v7 = sub_10026A694(ODRClient, v6);
  v8 = ASDLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (!v7)
  {
    if (v9)
    {
      v15 = 136446466;
      v16 = "+[ODRManager isAppRunning:]";
      v17 = 2114;
      v18 = v6;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ is not being monitored; not running or connected.", &v15, 0x16u);
    }

    goto LABEL_13;
  }

  if (v9)
  {
    v15 = 136446466;
    v16 = "+[ODRManager isAppRunning:]";
    v17 = 2114;
    v18 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%{public}s App %{public}@ is running: YES", &v15, 0x16u);
  }

  v10 = sub_1002694C0(v5);
  if (v10)
  {
LABEL_13:
    sub_1001FE464(v5, *(a1 + 40));
    sub_10021BB90(v3, v5);
    goto LABEL_14;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = sub_1002690FC(v5);
    v15 = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not removing asset pack with id %{public}@ because the app %{public}@ is running and the asset is not purgeable", &v15, 0x16u);
  }

LABEL_14:
  return 1;
}

id sub_1002230D4(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(NSMutableString);
    v2 = [NSByteCountFormatter stringFromByteCount:sub_1002205AC() countStyle:0];
    v3 = [NSString stringWithFormat:@"Available Space : %@\n\n", v2];
    [v1 appendString:v3];

    v4 = objc_alloc_init(NSMutableString);
    v5 = sub_1003DC0F4();
    v6 = sub_1003DC4F8(v5);
    v7 = [NSString stringWithFormat:@"ODR Library : %@\n", v6];
    [v4 appendString:v7];

    v8 = sub_1003DC0F4();
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [NSString stringWithFormat:@"Asset Packs : %@\n", v11];
    [v4 appendString:v12];

    v13 = sub_1003DC0F4();
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 16);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [NSString stringWithFormat:@"Database    : %@\n", v16];
    [v4 appendString:v17];

    v18 = sub_1003F281C();
    v19 = sub_1003F7570(v18);

    if ([v19 count])
    {
      v50 = v1;
      v20 = objc_alloc_init(NSNumberFormatter);
      [v20 setNumberStyle:3];
      [v20 setMaximumFractionDigits:0];
      v52 = v20;
      [v20 setMultiplier:&off_100547350];
      [v4 appendString:@"Active Download Requests\n"];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v19;
      v21 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v21)
      {
        v23 = v21;
        v24 = *v54;
        do
        {
          v25 = 0;
          do
          {
            if (*v54 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v53 + 1) + 8 * v25);
            if (v26)
            {
              v27 = objc_getProperty(*(*(&v53 + 1) + 8 * v25), v22, 112, 1);
              [v4 appendFormat:@"\nDownload: %@\n", v27];

              Property = objc_getProperty(v26, v28, 184, 1);
            }

            else
            {
              [v4 appendFormat:@"\nDownload: %@\n", 0];
              Property = 0;
            }

            v30 = Property;
            [v4 appendFormat:@"\tLog Key : %@\n", v30];

            if (v26)
            {
              v32 = objc_getProperty(v26, v31, 104, 1);
              [v4 appendFormat:@"\tBundle ID : %@\n", v32];

              v34 = objc_getProperty(v26, v33, 216, 1);
            }

            else
            {
              [v4 appendFormat:@"\tBundle ID : %@\n", 0];
              v34 = 0;
            }

            v35 = v34;
            [v4 appendFormat:@"\tSource URL : %@\n", v35];

            v36 = sub_1002E12A8(v26);
            [v4 appendFormat:@"\tDownload Path : %@\n", v36];

            if (v26)
            {
              v38 = objc_getProperty(v26, v37, 136, 1);
              [v4 appendFormat:@"\tDestination Path : %@\n", v38];

              if (*(v26 + 84))
              {
                v39 = @"YES";
              }

              else
              {
                v39 = @"NO";
              }

              [v4 appendFormat:@"\tIs Streamable: %@\n", v39];
              [v4 appendFormat:@"\tPriority : %f\n", *(v26 + 176)];
              if (*(v26 + 80))
              {
                v40 = @"YES";
              }

              else
              {
                v40 = @"NO";
              }

              [v4 appendFormat:@"\tIs Discretionary : %@\n", v40];
              [*(v26 + 40) lock];
              v41 = [*(v26 + 16) count];
              [*(v26 + 40) unlock];
              [v4 appendFormat:@"\tDuplicate count : %ld\n", v41];
              v43 = objc_getProperty(v26, v42, 200, 1);
            }

            else
            {
              [v4 appendFormat:@"\tDestination Path : %@\n", 0];
              [v4 appendFormat:@"\tIs Streamable: %@\n", @"NO"];
              [v4 appendFormat:@"\tPriority : %f\n", 0];
              [v4 appendFormat:@"\tIs Discretionary : %@\n", @"NO"];
              [v4 appendFormat:@"\tDuplicate count : %ld\n", 0];
              v43 = 0;
            }

            v44 = v43;
            [v44 fractionCompleted];
            v45 = [NSNumber numberWithDouble:?];
            v46 = [v52 stringFromNumber:v45];
            v47 = [NSString stringWithFormat:@"%@ completed", v46];

            [v4 appendFormat:@"\tProgress: %@\n\n", v47];
            v25 = v25 + 1;
          }

          while (v23 != v25);
          v48 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
          v23 = v48;
        }

        while (v48);
      }

      v1 = v50;
    }

    else
    {
      [v4 appendString:@"No Download Requests Active\n"];
    }

    [v1 appendString:v4];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_10022373C(id a1, ODRClient *a2)
{
  if (a2)
  {
    return objc_getProperty(a2, a2, 72, 1);
  }

  else
  {
    return 0;
  }
}

void sub_100223758(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002238D8;
  v10[3] = &unk_10051DB60;
  v11 = *(a1 + 48);
  v12 = &v13;
  if (!v3 || (sub_1001C3F38(v3, 0, 1, 0, v10), (v14[3] & 1) == 0))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100223930;
    v6[3] = &unk_10051DB88;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = v5;
    v9 = &v13;
    if (v3)
    {
      sub_1001C3F38(v3, 0, 0, v4, v6);
      v5 = v8;
    }
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t sub_1002238D8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_100223930(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[4];
  v8 = v5;
  v7 = sub_1002690FC(v5);
  LOBYTE(v6) = [v6 containsObject:v7];

  if ((v6 & 1) == 0)
  {
    (*(a1[5] + 16))();
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_1002239DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1001C3F38(a2, 0, 1, 0, *(a1 + 32));
  }
}

id *sub_100223AA0(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    a1 = [a1 init];
    if (a1)
    {
      v10 = [v7 copy];
      v11 = a1[8];
      a1[8] = v10;

      objc_storeStrong(a1 + 7, a3);
      objc_storeStrong(a1 + 6, a4);
      v12 = ASDLogHandleForCategory();
      v13 = [v8 signpostID];
      if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
        if (os_signpost_enabled(v12))
        {
          v15 = [v8 logKey];
          v17 = 138543362;
          v18 = v15;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Purchase/Import", " uuid=%{public, signpost.description:attribute}@ ", &v17, 0xCu);
        }
      }
    }
  }

  return a1;
}

void sub_100223C1C(uint64_t a1, char a2)
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    *(a1 + 72) = a2;

    os_unfair_lock_unlock((a1 + 40));
  }
}

void sub_100223E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100223E8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:2];
  v5 = [*(*(a1 + 32) + 56) installedExternalVersionID];

  if (v5)
  {
    if (v3)
    {
      Property = objc_getProperty(v3, v6, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    v9 = [*(*(a1 + 32) + 56) installedExternalVersionID];
    v10 = [*(*(a1 + 32) + 56) installedVariantID];
    v11 = sub_1002E281C(StoreAsset, v8, v9, v10);

    if (v11)
    {
      [v4 addObject:v11];
    }
  }

  if (v3)
  {
    v12 = objc_getProperty(v3, v6, 72, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    if (v3)
    {
      v15 = objc_getProperty(v3, v14, 72, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v4 addObject:v16];
  }

  if (*(a1 + 56))
  {
    +[NSUUID UUID];
  }

  else
  {
    [*(*(a1 + 32) + 56) externalID];
  }
  v284 = ;
  v17 = [*(*(a1 + 32) + 56) suppressDialogs];
  v18 = *(a1 + 32);
  v19 = v3;
  v20 = v19;
  self = v19;
  v283 = v3;
  v280 = v4;
  if (v3 && v18 && (v19[14] & 1) != 0)
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v18[7] logKey];
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@]: Requesting installation of watch only app on active paired watch", buf, 0xCu);
    }

    v23 = v20;
    v24 = sub_1002B0154();
    v25 = sub_1002B0280(v24);

    if (!v25)
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v18[7] logKey];
        *buf = 138412290;
        *&buf[4] = v27;
        v28 = "[%@] There's no paired device to install this app on!";
        v29 = v26;
        v30 = 12;
        goto LABEL_56;
      }

LABEL_62:

      v83 = IXCreateUserPresentableError();
      v84 = v83;

      v74 = v83;
      v75 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v85 = [*(*(a1 + 32) + 56) logKey];
        *buf = 138412290;
        *&buf[4] = v85;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "[%@]: Suppressing further dialogs and handling purchase on Watch", buf, 0xCu);
      }

      v86 = 0;
      LOBYTE(v278) = 1;
      v20 = self;
      v3 = v283;
      goto LABEL_84;
    }

    if (*(v25 + 18) & 1) == 0 && (v23[12])
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = [v18[7] logKey];
        *buf = 138412546;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v25;
        v28 = "[%@] Paired device: %{public}@ does not support WKWatchOnly!";
        v29 = v26;
        v30 = 22;
LABEL_56:
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);

        goto LABEL_62;
      }

      goto LABEL_62;
    }

    v26 = sub_1003E2F24(MIStoreMetadata, v23);
    v56 = [v18[7] account];
    sub_1003E38F0(v26, v56);

    v58 = objc_getProperty(v23, v57, 72, 1);
    v60 = v58;
    if (v58)
    {
      v58 = objc_getProperty(v58, v59, 144, 1);
    }

    v61 = v58;
    if (v26)
    {
      sub_1003E3A60(v26, v61, 0);
    }

    v62 = [ASDWatchAppMetadata metadataFromStoreMetadata:v26];
    [v62 setBundleID:0];
    [v62 setSkipIfInstalled:1];
    v63 = [v62 redownloadParams];

    if (v63 && ([v62 redownloadParams], v64 = objc_claimAutoreleasedReturnValue(), +[AMSBuyParams buyParamsWithString:](AMSBuyParams, "buyParamsWithString:", v64), v65 = objc_claimAutoreleasedReturnValue(), v64, v65))
    {
      v66 = AMSBuyParamPropertyPricingParameters;
      v67 = [v65 parameterForKey:AMSBuyParamPropertyPricingParameters];
      v68 = [v67 isEqualToString:@"SWUPD"];

      if (!v68)
      {
LABEL_61:
        v79 = [v65 stringValue];
        [v62 setRedownloadParams:v79];

        v80 = sub_1001F6394();
        v300 = v62;
        v81 = [NSArray arrayWithObjects:&v300 count:1];
        v82 = [*(v25 + 8) pairingID];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100226370;
        v302 = &unk_10051D460;
        v303 = v18;
        [v80 installWatchApps:v81 onPairedDevice:v82 withReplyHandler:buf];

        v4 = v280;
        goto LABEL_62;
      }

      v69 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v274 = [v18[7] logKey];
        *buf = 138412290;
        *&buf[4] = v274;
        _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "[%@] Using workaround for incorrect pricing parameters", buf, 0xCu);
      }

      v70 = v65;
      v71 = v66;
    }

    else
    {
      v76 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v263 = [v18[7] logKey];
        *buf = 138412290;
        *&buf[4] = v263;
        _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "[%@] Using workaround for missing buy parameters", buf, 0xCu);
      }

      v65 = objc_alloc_init(AMSBuyParams);
      [v65 setParameter:@"C" forKey:@"productType"];
      [v65 setParameter:@"0" forKey:@"price"];
      v78 = objc_getProperty(v23, v77, 216, 1);
      [v65 setParameter:v78 forKey:AMSBuyParamPropertyItemId];

      v71 = AMSBuyParamPropertyPricingParameters;
      v70 = v65;
    }

    [v70 setParameter:@"STDRDL" forKey:v71];
    goto LABEL_61;
  }

  v278 = v17;

  v31 = *(a1 + 32);
  if (!v31)
  {
    v72 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = [*(*(a1 + 32) + 56) logKey];
      *buf = 138543362;
      *&buf[4] = v73;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "[%{public}@] App is ineligible for watch app install", buf, 0xCu);
    }

    v74 = ASDErrorWithDescription();
    v75 = 0;
LABEL_83:
    v86 = 0;
LABEL_84:
    v282 = v74;

    goto LABEL_85;
  }

  v32 = [v4 firstObject];
  v33 = v20;
  v34 = v32;
  v281 = v284;
  if (v3)
  {
    v36 = objc_getProperty(v33, v35, 32, 1);
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (!v37)
  {
LABEL_34:
    if (v3)
    {
      v51 = objc_getProperty(v33, v38, 128, 1);
      if (v51)
      {
        v52 = objc_getProperty(v33, v50, 136, 1);
        v53 = [*(v31 + 56) logKey];
        v54 = sub_1003E2664(AMSDevice, v51, v52, v53);

        if (!v54)
        {
          v55 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v271 = [*(v31 + 56) logKey];
            v273 = objc_getProperty(v33, v272, 136, 1);
            *buf = 138412802;
            *&buf[4] = v271;
            *&buf[12] = 2114;
            *&buf[14] = v51;
            *&buf[22] = 2114;
            v302 = v273;
            _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "[%@] Skipping incompatible purchase for required capabilities: %{public}@ options: %{public}@", buf, 0x20u);
          }

          goto LABEL_71;
        }
      }

      if (v33[20])
      {
        v55 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v270 = [*(v31 + 56) logKey];
          *buf = 138412290;
          *&buf[4] = v270;
          _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "[%@] Unsupported 32-Bit application", buf, 0xCu);
        }

LABEL_71:

        [*(v31 + 56) isDiscretionary];
        v49 = IXCreateUserPresentableError();
        v90 = v49;
        v89 = 0;
        goto LABEL_72;
      }

      v49 = 0;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    v89 = 1;
    goto LABEL_72;
  }

  v276 = v34;
  v39 = v4;
  v40 = [*(v31 + 56) updateType] != 0;
  v42 = +[_TtC9appstored22AppCapabilitiesService defaultService];
  if (v3)
  {
    v43 = objc_getProperty(v33, v41, 96, 1);
    v45 = objc_getProperty(v33, v44, 32, 1);
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = v45;
  v47 = [*(v31 + 56) logKey];
  v300 = 0;
  v48 = [v42 validateAction:v40 bundleID:v43 capabilities:v46 logKey:v47 error:&v300];
  v49 = v300;

  if (v48)
  {

    v4 = v39;
    v3 = v283;
    v34 = v276;
    goto LABEL_34;
  }

  v87 = ASDLogHandleForCategory();
  v4 = v39;
  v3 = v283;
  v34 = v276;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    v266 = [*(v31 + 56) logKey];
    if (v283)
    {
      v267 = objc_getProperty(v33, v265, 32, 1);
    }

    else
    {
      v267 = 0;
    }

    v268 = v267;
    v269 = [v268 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    *&buf[4] = v266;
    *&buf[12] = 2114;
    *&buf[14] = v269;
    _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "[%@] Skipping incompatible purchase for app binary traits: %{public}@", buf, 0x16u);

    v3 = v283;
  }

  v88 = v49;
  v89 = 0;
  v51 = v49;
LABEL_72:

  v74 = v49;
  if (v89)
  {
    v20 = self;
    if (v3)
    {
      v92 = objc_getProperty(v33, v91, 216, 1);
    }

    else
    {
      v92 = 0;
    }

    v75 = v92;
    if (![*(*(a1 + 32) + 56) clientType] && v75)
    {
      v93 = [[_TtC9appstored28PostPurchaseInstallSheetTask alloc] initWithStoreItem:v33 purchaseInfo:*(*(a1 + 32) + 56)];
      if (([*(a1 + 32) runSubTask:v93 returningError:0] & 1) == 0)
      {
        if (v93)
        {
          v95 = objc_getProperty(v93, v94, 32, 1);
        }

        else
        {
          v95 = 0;
        }

        v96 = v95;

        v278 |= ASDErrorIsEqual();
        v74 = v96;
      }
    }

    if (!v74)
    {
      v171 = *(*(a1 + 32) + 56);
      v298 = 0;
      v86 = sub_1003B35AC(AppInstall, v33, v4, v171, &v298);
      v74 = v298;
      if (*(a1 + 56) == 1)
      {
        sub_10023E000(v86, v281, @"external_id");
      }

      v172 = [*(*(a1 + 32) + 56) metricsType];

      if (!v172)
      {
        v173 = sub_10023E51C(v86, @"metrics_install_type");
        [*(*(a1 + 32) + 56) setMetricsType:v173];
      }

      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v86 = 0;
  v282 = v74;
  v20 = self;
LABEL_85:
  objc_opt_self();
  if (!os_variant_has_internal_content())
  {
LABEL_103:
    if (!v86)
    {
      goto LABEL_132;
    }

LABEL_104:
    v111 = *(a1 + 32);
    v112 = v284;
    if (v111)
    {
      os_unfair_lock_lock_with_options();
      v113 = *(v111 + 72);
      os_unfair_lock_unlock((v111 + 40));
      if (v113 == 1)
      {
        v114 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = [*(*(a1 + 32) + 56) logKey];
          *buf = 138412290;
          *&buf[4] = v115;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "[%@] Overriding automatic installation flag", buf, 0xCu);
        }

        sub_10040901C(v86, 0);
      }
    }

    if (v3)
    {
      v116 = objc_getProperty(v20, v97, 208, 1);
    }

    else
    {
      v116 = 0;
    }

    v117 = v116;

    if (v117)
    {
      if (v3)
      {
        v119 = objc_getProperty(v20, v118, 208, 1);
      }

      else
      {
        v119 = 0;
      }

      v120 = v119;
      sub_10023E000(v86, v120, @"install_verification_token");
    }

    if (!v284)
    {
      v112 = +[NSUUID UUID];
    }

    sub_10023E000(v86, v112, @"external_id");
    if (v3)
    {
      v122 = objc_getProperty(v20, v121, 72, 1);
      v124 = v122;
      if (v122)
      {
        v122 = objc_getProperty(v122, v123, 32, 1);
      }
    }

    else
    {
      v124 = 0;
      v122 = 0;
    }

    v125 = v122;
    objc_setProperty_nonatomic_copy(v86, v126, v125, 56);

    v127 = v86[7];
    if (!v127)
    {
      v139 = 0;
      goto LABEL_189;
    }

    if (v3)
    {
      v129 = objc_getProperty(v20, v128, 72, 1);
      v131 = v129;
      if (v129)
      {
        v129 = objc_getProperty(v129, v130, 32, 1);
      }
    }

    else
    {
      v131 = 0;
      v129 = 0;
    }

    v132 = v129;
    v133 = sub_10023790C(v132, BAInitialRestrictionsEssentialDownloadAllowance);

    if (!v133)
    {
      goto LABEL_182;
    }

    v134 = sub_10023E604(v86, @"client_type");
    v135 = sub_10023E604(v86, @"restore_type");
    if (sub_1003D3E2C(AppDefaultsManager, @"BackgroundAssetDownloadsEnabled", 1))
    {
      if (v134 == 1)
      {
        v136 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          v137 = [*(*(a1 + 32) + 56) logKey];
          *buf = 138412290;
          *&buf[4] = v137;
          v138 = "[%@] Not configuring progress for post-processing because the client is MDM";
LABEL_180:
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, v138, buf, 0xCu);
        }
      }

      else
      {
        if (!sub_10023E604(v86, @"automatic_type"))
        {
          if (!v135)
          {
            v186 = [v133 longLongValue];
            goto LABEL_183;
          }

          v136 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_181;
          }

          v137 = [*(*(a1 + 32) + 56) logKey];
          *buf = 138412290;
          *&buf[4] = v137;
          v138 = "[%@] Not configuring progress for post-processing because it is a restore";
          goto LABEL_180;
        }

        v136 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          v137 = [*(*(a1 + 32) + 56) logKey];
          *buf = 138412290;
          *&buf[4] = v137;
          v138 = "[%@] Not configuring progress for post-processing because it is an automatic install";
          goto LABEL_180;
        }
      }
    }

    else
    {
      v136 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
      {
        v137 = [*(*(a1 + 32) + 56) logKey];
        *buf = 138412290;
        *&buf[4] = v137;
        v138 = "[%@] Not configuring progress for post-processing because the BA feature is disabled";
        goto LABEL_180;
      }
    }

LABEL_181:

LABEL_182:
    v186 = 0;
LABEL_183:
    v188 = [ProgressPortions alloc];
    if (v283)
    {
      v189 = objc_getProperty(v20, v187, 72, 1);
      v191 = v189;
      if (v189)
      {
        v189 = objc_getProperty(v189, v190, 40, 1);
      }
    }

    else
    {
      v191 = 0;
      v189 = 0;
    }

    v192 = v189;
    sub_10030B6D4(v188, [v192 longLongValue], v186);
    v139 = v193;

    v194 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      [*(*(a1 + 32) + 56) logKey];
      v196 = v195 = v139;
      *buf = 138412546;
      *&buf[4] = v196;
      *&buf[12] = 2114;
      *&buf[14] = v195;
      _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "[%@] ProgressPortions have been created: %{public}@", buf, 0x16u);

      v139 = v195;
    }

    v20 = self;
LABEL_189:
    v170 = sub_1002E7504([AppInstallImportAndPolicyTask alloc], v86);
    v198 = [*(*(a1 + 32) + 56) coordinator];
    if (v170)
    {
      objc_setProperty_atomic(v170, v197, v198, 66);
    }

    v200 = [*(*(a1 + 32) + 56) requestToken];
    if (v170)
    {
      objc_setProperty_atomic(v170, v199, v200, 90);
    }

    if ([*(*(a1 + 32) + 56) suppressEvaluatorDialogs])
    {
      v201 = 1;
    }

    else
    {
      v201 = [*(*(a1 + 32) + 56) suppressDialogs];
    }

    if (v170)
    {
      v170[51] = v201;
      v170[52] = [*(*(a1 + 32) + 56) isDiscretionary] ^ 1;
      v170[50] = [*(*(a1 + 32) + 56) isRecoveryForExpiredUrl];
    }

    else
    {
      [*(*(a1 + 32) + 56) isDiscretionary];
      [*(*(a1 + 32) + 56) isRecoveryForExpiredUrl];
    }

    v285 = v112;
    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_1002261D4;
    newValue[3] = &unk_10051DC28;
    v203 = v86;
    v204 = *(a1 + 48);
    v205 = *(a1 + 32);
    v288 = v203;
    v289 = v205;
    v290 = v204;
    v279 = v139;
    if (v170)
    {
      objc_setProperty_atomic_copy(v170, v202, newValue, 82);
      objc_setProperty_atomic(v170, v206, v139, 98);
      [*(a1 + 32) runSubTask:v170 returningError:0];
      v207 = 1;
      v209 = objc_getProperty(v170, v208, 106, 1);
      v210 = v209;
      if (v209)
      {
        v211 = *(v209 + 4);
        if (v211)
        {
          if (v211 != 1)
          {
            if (v211 == 2)
            {
              v212 = ASDLogHandleForCategory();
              v141 = v285;
              v169 = v282;
              if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
              {
                v260 = sub_100408EB0(v203);
                v262 = objc_getProperty(v210, v261, 16, 1);
                *buf = 138412546;
                *&buf[4] = v260;
                *&buf[12] = 2114;
                *&buf[14] = v262;
                _os_log_error_impl(&_mh_execute_header, v212, OS_LOG_TYPE_ERROR, "[%@] Purchase import failed: %{public}@", buf, 0x16u);
              }

              v213 = *(a1 + 40);
              v215 = objc_getProperty(v210, v214, 24, 1);
              v217 = v215;
              if (v215)
              {
                *buf = 0;
                *&buf[8] = 0;
                [v215 getUUIDBytes:buf];
                v218 = *buf;
              }

              else
              {
                v218 = 0;
              }

              if (v283)
              {
                v219 = objc_getProperty(self, v216, 96, 1);
              }

              else
              {
                v219 = 0;
              }

              v220 = v219;
              v221 = [ASDJobResult resultWithInvalidActivity:v218 bundleID:v220];
              [v213 addObject:v221];

              v20 = self;
              goto LABEL_251;
            }

            v141 = v285;
            v169 = v282;
LABEL_241:
            if ([*(*(a1 + 32) + 56) isDiscretionary])
            {
LABEL_252:

              v184 = v288;
LABEL_253:

              v142 = v169;
              v4 = v280;
              goto LABEL_254;
            }

            v250 = [ProgressInfo alloc];
            if (v283)
            {
              v251 = objc_getProperty(v20, v249, 96, 1);
            }

            else
            {
              v251 = 0;
            }

            v252 = v251;
            v253 = [*(*(a1 + 32) + 56) logKey];
            v217 = sub_100403C3C(&v250->super.isa, v252, v279, v253);

            v254 = [*(*(a1 + 32) + 56) isRemoteInstall];
            if (v217)
            {
              *(v217 + 64) = v254;
            }

            if (v283)
            {
              v256 = objc_getProperty(v20, v255, 216, 1);
            }

            else
            {
              v256 = 0;
            }

            v257 = v256;
            v259 = v257;
            v169 = v282;
            if (v217)
            {
              objc_setProperty_atomic(v217, v258, v257, 152);

              v217[18] = 384;
            }

            else
            {
            }

            v220 = sub_1003649C8();
            sub_100364E78(v220, v217, @"Purchase");
LABEL_251:
            v139 = v279;

            goto LABEL_252;
          }

          v222 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
          {
            v223 = sub_100408EB0(v203);
            *buf = 138412290;
            *&buf[4] = v223;
            _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "[%@] Purchase import succeeded (duplicate)", buf, 0xCu);
          }

          v224 = *(a1 + 40);
          v226 = objc_getProperty(v210, v225, 24, 1);
          v228 = v226;
          if (v226)
          {
            *buf = 0;
            *&buf[8] = 0;
            [v226 getUUIDBytes:buf];
            v229 = *buf;
          }

          else
          {
            v229 = 0;
          }

          if (v283)
          {
            v230 = objc_getProperty(self, v227, 96, 1);
          }

          else
          {
            v230 = 0;
          }

          v231 = v230;
          v232 = [ASDJobResult resultWithExistingActivity:v229 bundleID:v231];
          [v224 addObject:v232];
          v141 = v285;
          v169 = v282;
LABEL_240:

          v20 = self;
          v139 = v279;
          goto LABEL_241;
        }

        v207 = 0;
      }
    }

    else
    {
      [v205 runSubTask:0 returningError:0];
      v210 = 0;
      v207 = 1;
    }

    v233 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
    {
      v234 = sub_100408EB0(v203);
      *buf = 138412290;
      *&buf[4] = v234;
      _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "[%@] Purchase import succeeded", buf, 0xCu);
    }

    v235 = *(a1 + 32);
    v236 = v203;
    v210 = v210;
    if (!v235)
    {
LABEL_234:

      v277 = *(a1 + 40);
      if (v207)
      {
        v228 = 0;
      }

      else
      {
        v246 = objc_getProperty(v210, v245, 24, 1);
        v228 = v246;
        if (v246)
        {
          *buf = 0;
          *&buf[8] = 0;
          [v246 getUUIDBytes:buf];
          v247 = *buf;
LABEL_237:
          v141 = v285;
          v169 = v282;
          if (v283)
          {
            v248 = objc_getProperty(self, v245, 96, 1);
          }

          else
          {
            v248 = 0;
          }

          v231 = v248;
          v232 = [ASDJobResult resultWithValidActivity:v247 bundleID:v231];
          [v277 addObject:v232];
          goto LABEL_240;
        }
      }

      v247 = 0;
      goto LABEL_237;
    }

    if ([*(v235 + 56) disableBoosting])
    {
      v238 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v238, OS_LOG_TYPE_DEBUG))
      {
LABEL_233:

        goto LABEL_234;
      }

      v239 = sub_100408EB0(v236);
      *buf = 138412290;
      *&buf[4] = v239;
      _os_log_debug_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEBUG, "[%@] Blocking voucher for purchase - boosting disabled", buf, 0xCu);
    }

    else
    {
      if (v207)
      {
        v240 = 0;
      }

      else
      {
        v240 = objc_getProperty(v210, v237, 24, 1);
      }

      v238 = v240;
      v241 = [*(v235 + 56) requestToken];
      v243 = v241;
      if (v241)
      {
        v241 = objc_getProperty(v241, v242, 64, 1);
      }

      v239 = v241;

      if (v238 && v239)
      {
        v244 = sub_100226F64();
        sub_10022705C(v244, v239, v238);
      }
    }

    goto LABEL_233;
  }

  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  v98 = v4;
  if (v86)
  {
    v99 = objc_getProperty(v86, v97, 48, 1);
  }

  else
  {
    v99 = 0;
  }

  v100 = v99;
  v101 = [v100 countByEnumeratingWithState:&v294 objects:v299 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v295;
    while (2)
    {
      for (i = 0; i != v102; i = i + 1)
      {
        if (*v295 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v105 = sub_10023E0F8(*(*(&v294 + 1) + 8 * i), @"sinf");
        v106 = v105;
        if (!v105 || ![v105 length])
        {

          v107 = *(a1 + 32);
          v20 = self;
          v108 = self;
          v4 = v98;
          v3 = v283;
          if (v107)
          {
            v109 = sub_1002CC188([PresentTapToRadarRequestFlow alloc], @"Missing Required SINF", @"An unexpected installation failure occurred.");
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1002262A4;
            v302 = &unk_10051DC78;
            v303 = v108;
            if (v109)
            {
              objc_setProperty_atomic_copy(v109, v110, buf, 24);
            }

            sub_1002CC240(v109);
          }

          goto LABEL_103;
        }
      }

      v102 = [v100 countByEnumeratingWithState:&v294 objects:v299 count:16];
      if (v102)
      {
        continue;
      }

      break;
    }

    v4 = v98;
    v20 = self;
  }

  else
  {

    v20 = self;
  }

  v3 = v283;
  if (v86)
  {
    goto LABEL_104;
  }

LABEL_132:
  v140 = ASDLogHandleForCategory();
  v141 = v284;
  v142 = v282;
  if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
  {
    v143 = [*(*(a1 + 32) + 56) logKey];
    *buf = 138412546;
    *&buf[4] = v143;
    *&buf[12] = 2114;
    *&buf[14] = v282;
    _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "[%@]: Dropping invalid purchase: %{public}@", buf, 0x16u);
  }

  v145 = *(a1 + 40);
  if (v284)
  {
    *buf = 0;
    *&buf[8] = 0;
    [v284 getUUIDBytes:buf];
    v146 = *buf;
    if (v3)
    {
LABEL_136:
      v147 = objc_getProperty(v20, v144, 96, 1);
      v148 = [ASDJobResult resultWithInvalidActivity:v146 bundleID:v147];
      [v145 addObject:v148];

      v20 = self;
      v150 = objc_getProperty(self, v149, 120, 1);
      goto LABEL_137;
    }
  }

  else
  {
    v146 = 0;
    if (v3)
    {
      goto LABEL_136;
    }
  }

  v275 = [ASDJobResult resultWithInvalidActivity:v146 bundleID:0];
  [v145 addObject:v275];

  v150 = 0;
LABEL_137:
  v151 = v150;

  if (v151)
  {
    v152 = objc_opt_new();
    v153 = [*(*(a1 + 32) + 56) account];
    v154 = [v153 ams_DSID];
    [v152 setObject:v154 forKeyedSubscript:@"account_id"];

    if (v3)
    {
      v156 = objc_getProperty(v20, v155, 216, 1);
      [v152 setObject:v156 forKeyedSubscript:@"item_id"];

      v158 = objc_getProperty(v20, v157, 120, 1);
    }

    else
    {
      [v152 setObject:0 forKeyedSubscript:@"item_id"];
      v158 = 0;
    }

    v159 = v158;
    [v152 setObject:v159 forKeyedSubscript:@"request_url"];

    if (v3)
    {
      v161 = objc_getProperty(v20, v160, 312, 1);
    }

    else
    {
      v161 = 0;
    }

    v162 = v161;
    [v152 setObject:v162 forKeyedSubscript:@"transaction_id"];

    v163 = sub_1003C27BC();
    v292[0] = _NSConcreteStackBlock;
    v292[1] = 3221225472;
    v292[2] = sub_100226118;
    v292[3] = &unk_10051D6C8;
    v293 = v152;
    v164 = v152;
    [v163 modifyUsingTransaction:v292];
  }

  v165 = [*(*(a1 + 32) + 56) coordinator];
  v139 = v165;
  if (v165)
  {
    if (sub_100248E14(v165) != 1)
    {
      v169 = v282;
      v170 = v282;
LABEL_172:
      v291 = 0;
      v182 = v139;
      v183 = [v139 cancelForReason:v170 client:1 error:&v291];
      v184 = v291;
      if ((v183 & 1) == 0)
      {
        v185 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
        {
          v264 = [*(*(a1 + 32) + 56) logKey];
          *buf = 138412802;
          *&buf[4] = v264;
          *&buf[12] = 2114;
          *&buf[14] = v182;
          *&buf[22] = 2114;
          v302 = v184;
          _os_log_error_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "[%@]: Canceling redundant coordinator: %{public}@ failed with error: %{public}@", buf, 0x20u);
        }
      }

      v139 = v182;
      goto LABEL_253;
    }

    v166 = v139;
    v167 = [v282 domain];
    v168 = [v167 isEqualToString:IXUserPresentableErrorDomain];

    if (v168)
    {
      [v282 code];
    }

    v170 = IXCreateUserPresentableError();
    v139 = v166;
    if (v278)
    {
      v169 = v282;
    }

    else
    {
      v169 = v282;
      if (!ASDErrorIsEqual())
      {
        v176 = 0;
        goto LABEL_164;
      }

      v175 = +[_TtC9appstored22AppCapabilitiesService defaultService];
      [v175 showIneligibleAlert];
    }

    v176 = 1;
LABEL_164:
    if (v3)
    {
      v177 = objc_getProperty(v20, v174, 224, 1);
    }

    else
    {
      v177 = 0;
    }

    v178 = v177;
    if (!v178)
    {
      v176 = 1;
    }

    if ((v176 & 1) == 0)
    {
      if (v3)
      {
        v180 = objc_getProperty(v20, v179, 224, 1);
      }

      else
      {
        v180 = 0;
      }

      v181 = v180;
      [v170 code];
      IXDisplayUserPresentableErrorForAppWithLocalizedName();
    }

    goto LABEL_172;
  }

LABEL_254:
}

BOOL sub_100226118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppDoneEntity alloc];
  v5 = *(a1 + 32);
  v6 = [v3 connection];
  v7 = [(SQLiteEntity *)v4 initWithPropertyValues:v5 onConnection:v6];

  if (v7)
  {
    if (v3)
    {
      v9 = objc_getProperty(v3, v8, 24, 1);
      if (v9)
      {
        v9[145] = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v7 != 0;
}

id sub_1002261D4(uint64_t *a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_100408F24(a1[4]);
    v7 = sub_1003B68DC(v6);

    if (v7)
    {
      sub_1003B69B0(v5, v7);
      if (!sub_1003BBB20(v7))
      {
        *(*(a1[6] + 8) + 24) = 1;
      }
    }
  }

  if ([*(a1[5] + 56) discoveredUpdate] && objc_msgSend(*(a1[5] + 56), "isDiscretionary"))
  {
    sub_1003B6B78(v5, 1);
  }

  return v5;
}

id sub_1002262A4(uint64_t a1, const char *a2)
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

void sub_100226370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [*(*(a1 + 32) + 56) logKey];
      v11 = 138412546;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Failed to queue remote installation to paired device: %{public}@", &v11, 0x16u);
LABEL_6:
    }
  }

  else if (v8)
  {
    v9 = [*(*(a1 + 32) + 56) logKey];
    v10 = [v5 firstObject];
    v11 = 138412546;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Queued remote installation on paired device: %{public}@", &v11, 0x16u);

    goto LABEL_6;
  }
}

id *sub_100226550(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = IAPInfoItemsRequest;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

void sub_1002265FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    Property = *(a1 + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 8, 1);
    }

    v6 = Property;
    v7 = [v6 ams_DSID];

    if (v7)
    {
      v8 = [*(a1 + 8) URLForKey:@"iap-daap/base-url"];
      if (v8 && (v9 = v8, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"databases/%ld/items", [*(a1 + 8) integerForKey:@"iap-daap/database-id" defaultValue:201]), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "URLByAppendingPathComponent:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v11))
      {
        v12 = 0;
      }

      else
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = objc_opt_class();
          v37 = v41;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@]: Failed to construct request URL", buf, 0xCu);
        }

        v12 = sub_1001C1764(2, 0);
        v11 = 0;
      }

      v14 = v12;
      if (v11)
      {
        v16 = [IAPInfoDAAPRequestEncoder alloc];
        v17 = *(a1 + 16);
        if (v17)
        {
          v17 = objc_getProperty(v17, v15, 32, 1);
        }

        v19 = v17;
        v20 = *(a1 + 16);
        if (v20)
        {
          v20 = objc_getProperty(v20, v18, 40, 1);
        }

        v21 = v20;
        v22 = sub_1002DDD64(&v16->super.isa, v19, v21);

        v24 = sub_100363298([DAAPURLRequest alloc], v22, v11);
        v25 = *(a1 + 16);
        if (v25)
        {
          v25 = objc_getProperty(v25, v23, 8, 1);
        }

        v27 = v25;
        if (v24)
        {
          objc_setProperty_atomic(v24, v26, v27, 32);
        }

        v29 = *(a1 + 16);
        if (v29)
        {
          v29 = objc_getProperty(v29, v28, 16, 1);
        }

        v31 = v29;
        if (v24)
        {
          objc_setProperty_atomic(v24, v30, v31, 48);
        }

        v33 = *(a1 + 16);
        if (v33)
        {
          v33 = objc_getProperty(v33, v32, 24, 1);
        }

        v35 = v33;
        if (v24)
        {
          objc_setProperty_atomic(v24, v34, v35, 56);
        }

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1002269D0;
        v38[3] = &unk_10051DCA0;
        v38[4] = a1;
        v39 = v4;
        sub_100363334(v24, v38);
      }

      else
      {
        v22 = sub_1001C1764(2, v14);
        (*(v4 + 2))(v4, 0, v22);
      }
    }

    else
    {
      v36 = sub_1001C1764(4, 0);
      (*(v4 + 2))(v4, 0, v36);
    }
  }
}

void sub_1002269D0(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  v6 = v30;
  if (!v30)
  {
    v7 = *(a1 + 40);
    v8 = v5;
    goto LABEL_5;
  }

  if ([v30 responseStatusCode] - 300 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v7 = *(a1 + 40);
    v6 = 1;
    v8 = 0;
LABEL_5:
    v9 = sub_1001C1764(v6, v8);
    (*(v7 + 16))(v7, 0, v9);
    goto LABEL_24;
  }

  v10 = [v30 data];
  v9 = v10;
  if (v10)
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = v10;
      v13 = sub_100342DBC([IAPInfoDAAPResponseDecoder alloc], v12);

      if (v13 && (v13[49] & 1) != 0)
      {
        v15 = v13[50];
        v17 = objc_getProperty(v13, v14, 64, 1);
        if (v15)
        {
          v18 = objc_getProperty(v13, v16, 72, 1);
          v21 = objc_getProperty(v13, v19, 56, 1);
          Property = *(v11 + 16);
          if (Property)
          {
            Property = objc_getProperty(Property, v20, 8, 1);
          }

          v23 = Property;
          v24 = sub_1001F0904(IAPInfoItemsRequestResponse, v17, v18, v21, v23);
        }

        else
        {
          v18 = objc_getProperty(v13, v16, 56, 1);
          v28 = *(v11 + 16);
          if (v28)
          {
            v28 = objc_getProperty(v28, v27, 8, 1);
          }

          v21 = v28;
          v24 = sub_1001F0784(IAPInfoItemsRequestResponse, v17, v18, v21);
        }

        v26 = *(a1 + 40);
        if (v24)
        {
          (*(v26 + 16))(v26, v24, 0);
          goto LABEL_23;
        }

LABEL_22:
        v29 = sub_1001C1764(0, 0);
        (*(v26 + 16))(v26, 0, v29);

        v24 = 0;
        goto LABEL_23;
      }
    }

    v26 = *(a1 + 40);
    goto LABEL_22;
  }

  v25 = *(a1 + 40);
  v24 = sub_1001C1764(0, 0);
  (*(v25 + 16))(v25, 0, v24);
LABEL_23:

LABEL_24:
}

void sub_100226D9C(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2)
  {
    if (a2 == 13001)
    {
      v4 = &stru_10051DD20;
      v5 = 13002;
    }

    else
    {
      if (a2 != 13000)
      {
        return;
      }

      v4 = &stru_10051DD00;
      v5 = 13001;
    }
  }

  else
  {
    v4 = &stru_10051DCE0;
    v5 = 13003;
  }

  *a3 = v5;
  v6 = *a4;
  *a4 = v4;
}

void sub_100226DF8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS iap_info_iaps (adam_id INTEGER, app_adam_id INTEGER, purchase_date DATETIME, last_modified_date DATETIME, expiration_date DATETIME, type INTEGER, dsid INTEGER, pid INTEGER PRIMARY KEY, intro_offer_status INTEGER, sub_family_id TEXT, auto_renew_status INTEGER, UNIQUE(dsid, adam_id) ON CONFLICT REPLACE);", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS iap_info_db_properties (key TEXT PRIMARY KEY, value TEXT)", 1, 0);
    v2 = v3;
  }
}

void sub_100226E64(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE iap_info_iaps ADD COLUMN auto_renew_status INTEGER;", 1, 0);
  }
}

id sub_100226F64()
{
  objc_opt_self();
  if (qword_1005AA838 != -1)
  {
    dispatch_once(&qword_1005AA838, &stru_10051DD88);
  }

  v0 = qword_1005AA840;

  return v0;
}

void sub_100226FBC(id a1)
{
  v1 = objc_alloc_init(VoucherStore);
  v2 = qword_1005AA840;
  qword_1005AA840 = v1;
}

void sub_10022705C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "(VoucherStore) Inserting voucher externalID: %@, Voucher %@", &v9, 0x16u);
    }

    v8 = a1;
    objc_sync_enter(v8);
    [v8[1] setObject:v5 forKeyedSubscript:v6];
    objc_sync_exit(v8);
  }
}

void sub_100227180(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(VoucherStore) Removing voucher for externalID: %@", &v6, 0xCu);
    }

    v5 = a1;
    objc_sync_enter(v5);
    [v5[1] setObject:0 forKeyedSubscript:v3];
    objc_sync_exit(v5);
  }
}

void sub_100227288(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = a1;
    objc_sync_enter(v9);
    v10 = [v9[1] objectForKeyedSubscript:v7];
    objc_sync_exit(v9);

    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v15 = v7;
      v16 = 1024;
      v17 = a3;
      v18 = 2112;
      v19 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "(VoucherStore) Executing block for externalID: %@, QOS(0x%x) Voucher %@", buf, 0x1Cu);
    }

    v13 = v8;
    v12 = dispatch_block_create_with_voucher_and_qos_class();
    v12[2]();
  }
}

id sub_100227468()
{
  objc_opt_self();
  if (qword_1005AA850 != -1)
  {
    dispatch_once(&qword_1005AA850, &stru_10051DDA8);
  }

  v0 = qword_1005AA848;

  return v0;
}

void sub_1002274C0(id a1)
{
  v1 = [NetworkMonitor alloc];
  v2 = +[NWPathEvaluator sharedDefaultEvaluator];
  v7 = v2;
  if (v1)
  {
    v11.receiver = v1;
    v11.super_class = NetworkMonitor;
    v3 = objc_msgSendSuper2(&v11, "init");
    v1 = v3;
    if (v3)
    {
      v3->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v3->_pathEvaluator, v2);
      [(NWPathEvaluator *)v1->_pathEvaluator addObserver:v1 forKeyPath:@"path" options:5 context:0];
      if (os_variant_has_internal_content())
      {
        objc_initWeak(&location, v1);
        v4 = dispatch_get_global_queue(21, 0);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10022770C;
        handler[3] = &unk_10051DDD0;
        objc_copyWeak(&v9, &location);
        notify_register_dispatch("com.apple.appstored.emulatenetwork", &v1->_emulationToken, v4, handler);

        v5 = sub_100296A50();
        sub_100227774(v1, v5);

        objc_destroyWeak(&v9);
        objc_destroyWeak(&location);
      }
    }
  }

  v6 = qword_1005AA848;
  qword_1005AA848 = v1;
}

void sub_100227668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100227688(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2 && [v2 length])
  {
    v3 = sub_1002EA378([AppNetworkMonitor alloc], v2);
  }

  else
  {
    v3 = sub_100227468();
  }

  v4 = v3;

  return v4;
}

void sub_10022770C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = sub_100296A50();
  sub_100227774(WeakRetained, v1);
}

void sub_100227774(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    if (os_variant_has_internal_content())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    if (*(a1 + 24))
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 24);
        v11 = 138543362;
        v12 = v7;
        v8 = "[Network] Applying emulated network configuration: %{public}@";
        v9 = v6;
        v10 = 12;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
      }
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        v8 = "[Network] Clearing emulated network configuration";
        v9 = v6;
        v10 = 2;
        goto LABEL_10;
      }
    }

    sub_100227E58(a1);
    os_unfair_lock_unlock((a1 + 8));
  }
}

void sub_100227E58(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100227EE8;
  block[3] = &unk_10051AF98;
  block[4] = a1;
  dispatch_async(v2, block);
}

void sub_100227EE8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NetworkStateDidChangeNotification" object:*(a1 + 32)];
}

id sub_100227F48(unsigned __int8 *a1)
{
  v1 = a1[36];
  v2 = a1;
  v3 = [NSNumber numberWithBool:v1];
  v10[0] = v3;
  v4 = [NSNumber numberWithBool:v2[38]];
  v10[1] = v4;
  v5 = [NSNumber numberWithBool:v2[37]];
  v10[2] = v5;
  v6 = *(v2 + 5);

  v7 = [NSNumber numberWithInteger:v6];
  v10[3] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:4];

  return v8;
}

BOOL sub_1002280AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 processIdentifier];
    v21 = 0u;
    v22 = 0u;
    if (v5)
    {
      [v5 auditToken];
    }

    *token = v21;
    *&token[16] = v22;
    v8 = SecTaskCreateWithAuditToken(0, token);
    if (v8)
    {
      v9 = v8;
      error = 0;
      v10 = SecTaskCopyValueForEntitlement(v8, v6, &error);
      if (error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *token = 138413058;
        *&token[4] = v15;
        *&token[12] = 2112;
        *&token[14] = v6;
        *&token[22] = 1024;
        *&token[24] = v7;
        *&token[28] = 2112;
        *&token[30] = error;
        v16 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements: %@ for pid: %i error: %@", token, 0x26u);

        if (v10)
        {
          goto LABEL_8;
        }
      }

      else if (v10)
      {
LABEL_8:
        TypeID = CFBooleanGetTypeID();
        v12 = TypeID == CFGetTypeID(v10) && CFBooleanGetValue(v10) != 0;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          *token = 138413058;
          *&token[4] = v13;
          *&token[12] = 2112;
          *&token[14] = v6;
          *&token[22] = 1024;
          *&token[24] = v7;
          *&token[28] = 1024;
          *&token[30] = v12;
          v14 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: We have the entitlement: %@ for pid: %i result: %d", token, 0x22u);
        }

        CFRelease(v10);
        goto LABEL_19;
      }

      v12 = 0;
LABEL_19:
      CFRelease(v9);
      goto LABEL_20;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      *token = 138412802;
      *&token[4] = v18;
      *&token[12] = 2112;
      *&token[14] = v6;
      *&token[22] = 1024;
      *&token[24] = v7;
      v19 = v18;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: No task for entitlement: %@ pid: %i", token, 0x1Cu);
    }
  }

  v12 = 0;
LABEL_20:

  return v12;
}

id sub_100228370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 processIdentifier];
    v21 = 0u;
    v22 = 0u;
    if (v5)
    {
      [v5 auditToken];
    }

    *token = v21;
    *&token[16] = v22;
    v8 = SecTaskCreateWithAuditToken(0, token);
    if (v8)
    {
      v9 = v8;
      error = 0;
      v10 = SecTaskCopyValueForEntitlement(v8, @"com.apple.private.appstored", &error);
      if (error && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        *token = 138413058;
        *&token[4] = v15;
        *&token[12] = 2112;
        *&token[14] = v6;
        *&token[22] = 1024;
        *&token[24] = v7;
        *&token[28] = 2112;
        *&token[30] = error;
        v16 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: Unable to get entitlements: %@ for pid: %i error: %@", token, 0x26u);

        if (v10)
        {
          goto LABEL_8;
        }
      }

      else if (v10)
      {
LABEL_8:
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v10))
        {
          v12 = [v10 containsObject:v6];
        }

        else
        {
          v12 = 0;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          *token = 138413058;
          *&token[4] = v13;
          *&token[12] = 2112;
          *&token[14] = v6;
          *&token[22] = 1024;
          *&token[24] = v7;
          *&token[28] = 1024;
          *&token[30] = v12;
          v14 = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Results for entitlement: %@ for pid: %i result: %d", token, 0x22u);
        }

        CFRelease(v10);
        goto LABEL_19;
      }

      v12 = 0;
LABEL_19:
      CFRelease(v9);
      goto LABEL_20;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      *token = 138412802;
      *&token[4] = v18;
      *&token[12] = 2112;
      *&token[14] = v6;
      *&token[22] = 1024;
      *&token[24] = v7;
      v19 = v18;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%@]: No task for entitlement: %@ pid: %i", token, 0x1Cu);
    }
  }

  v12 = 0;
LABEL_20:

  return v12;
}

void *sub_100228670(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 init];
    a1 = v4;
    if (v4)
    {
      sub_10023E000(v4, v3, @"bundle_id");
      v5 = +[NSUUID UUID];
      v6 = [v5 UUIDString];
      sub_10023E000(a1, v6, @"session_reporter_key");

      v7 = +[NSDate date];
      sub_10023E000(a1, v7, @"last_refresh");
    }
  }

  return a1;
}

id sub_1002287FC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100228834(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"session_reporter_key");
    v1 = vars8;
  }

  return a1;
}

id sub_10022886C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"last_refresh");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
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