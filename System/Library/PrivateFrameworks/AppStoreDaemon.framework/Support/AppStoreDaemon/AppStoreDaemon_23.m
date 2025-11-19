id sub_100275284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_100275130(v9, 4, v8, v7);

  if (v10)
  {
    objc_setProperty_atomic(v10, v11, v6, 56);
  }

  return v10;
}

void sub_100275328(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (!a1[2])
    {
      v4 = sub_1002754D8(a1);
      v5 = a1[2];
      a1[2] = v4;
    }

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[2];
      v8 = a1[5];
      v9 = a1[4] - 1;
      if (v9 > 6)
      {
        v10 = @"default";
      }

      else
      {
        v10 = off_10051F750[v9];
      }

      *buf = 138413058;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Cancelling purchase history reload for accountID: %{public}@ context: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    if (a1[9])
    {
      v11 = sub_1002DC288();
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1002756C0;
      v12[3] = &unk_10051B570;
      v12[4] = a1;
      v13 = v3;
      if (v11)
      {
        dispatch_async(v11[1], v12);
      }
    }
  }
}

_TtC9appstored6LogKey *sub_1002754D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = &stru_100529300;
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 != 6)
      {
        v8 = @"RD";
        v9 = v1 == 7;
        goto LABEL_19;
      }

      v6 = @"PC";
      v10 = 48;
    }

    else
    {
      if (v1 != 4)
      {
        v8 = @"PR";
        v9 = v1 == 5;
LABEL_19:
        v5 = &__NSArray0__struct;
        if (v9)
        {
          v6 = v8;
        }

        else
        {
          v6 = &stru_100529300;
        }

        v7 = 0;
        goto LABEL_28;
      }

      v6 = @"PN";
      v10 = 56;
    }

    v11 = [*(a1 + v10) stringValue];
    v7 = v11;
    if (v11)
    {
      v14 = v11;
      v5 = [NSArray arrayWithObjects:&v14 count:1];
    }

    else
    {
      v5 = &__NSArray0__struct;
    }

    goto LABEL_28;
  }

  v3 = @"HS";
  v4 = @"AC";
  if (v1 != 3)
  {
    v4 = &stru_100529300;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = @"PP";
  }

  if (!v1)
  {
    v2 = @"DE";
  }

  v5 = &__NSArray0__struct;
  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 0;
LABEL_28:
  v12 = [[_TtC9appstored6LogKey alloc] initWithCode:v6 IDs:v5];

  return v12;
}

id sub_1002756D4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!a1[2])
    {
      v7 = sub_1002754D8(a1);
      v8 = a1[2];
      a1[2] = v7;
    }

    v9 = a1[4];
    v10 = &unk_10044B000;
    if (v9 == 5)
    {
      v12 = sub_1001CE3A0(Promise, &off_100547680);
    }

    else
    {
      if (v9 == 4 && (v11 = a1[7]) != 0)
      {
        v12 = sub_1001CE3A0(Promise, v11);
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
        {
          v14 = a1[2];
          v15 = a1[7];
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "[%@] Push notification provided server revision: %@", buf, 0x16u);
        }
      }

      else
      {
        v16 = v5;
        v17 = v6;
        v18 = sub_10020B714();
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1002789D8;
        v36 = &unk_10051F730;
        v37 = a1;
        v19 = v16;
        v38 = v19;
        v20 = v17;
        v39 = v20;
        v13 = sub_1001CE32C(Promise, v18, buf);

        v10 = &unk_10044B000;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10027820C;
        v36 = &unk_10051F6B8;
        v37 = a1;
        v21 = sub_10020B714();
        v12 = sub_1001CEB34(v13, buf, v21);
      }
    }

    v28 = _NSConcreteStackBlock;
    v29 = v10[259];
    v22 = v29;
    v30 = sub_100275A90;
    v31 = &unk_10051F5A0;
    v32 = a1;
    v33 = v5;
    v34 = v6;
    v23 = sub_10020B714();
    v24 = sub_1001CEB34(v12, &v28, v23);

    v27[0] = _NSConcreteStackBlock;
    v27[1] = v22;
    v27[2] = sub_100276230;
    v27[3] = &unk_10051F5C8;
    v27[4] = a1;
    v25 = sub_1002DC288();
    sub_1001CE6D8(v24, v27, v25);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id sub_100275A90(void **a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v4[4] != 5)
  {
    v10 = v4[5];
    v11 = a1[6];
    v35 = 0;
    v12 = sub_100275FB8(PurchaseHistoryUpdateCommand, v10, v11, &v35);
    v13 = v35;
    if (v12)
    {
      v14 = v12;
      v15 = v3;
      objc_opt_self();
      if (v15)
      {
        v16 = [v14 compare:v15];
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          LODWORD(v49) = v16 == -1;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "(PurchaseHistory) Local: %@ < Server: %@ => Needs update: %{BOOL}d", buf, 0x1Cu);
        }

        if (v16 == -1)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v23 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[4];
        v25 = v24[2];
        v26 = v24[5];
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Setting last reload timestamp for accountID: %{public}@", buf, 0x16u);
      }

      v27 = *(a1[4] + 5);
      v28 = a1[6];
      v29 = v27;
      v30 = v28;
      objc_opt_self();
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v43 = 1;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = sub_100276C94;
      v40 = sub_100276CA4;
      v41 = 0;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100276EE8;
      v49 = &unk_10051F640;
      v51 = v42;
      v31 = v29;
      v50 = v31;
      v52 = &v36;
      [v30 modifyUsingTransaction:buf];
      if (v37[5])
      {
        v32 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = v37[5];
          *v44 = 138543618;
          v45 = v31;
          v46 = 2114;
          v47 = v34;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "(PurchaseHistory) Failed to set last update timestamp for accountID: %{public}@ error: %{public}@", v44, 0x16u);
        }
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(v42, 8);

      v22 = sub_1001CE3A0(Promise, &__kCFBooleanTrue);
      goto LABEL_21;
    }

LABEL_10:
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[4];
      v20 = v19[2];
      v21 = v19[5];
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Starting fetch items for accountID: %{public}@", buf, 0x16u);
    }

    v22 = sub_100275F7C(a1[4], a1[5], a1[6]);
LABEL_21:
    v9 = v22;

    goto LABEL_22;
  }

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v7 = v6[2];
    v8 = v6[5];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Starting force refresh to fetch items for accountID: %{public}@", buf, 0x16u);
  }

  v9 = sub_100275F7C(a1[4], a1[5], a1[6]);
LABEL_22:

  return v9;
}

void sub_100275F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_100275F7C(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_100277424(a1, a2, a3, 0, 0, 0);
    v3 = vars8;
  }

  return a1;
}

id sub_100275FB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100276C94;
  v28 = sub_100276CA4;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100276C94;
  v22 = sub_100276CA4;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100276F9C;
  v14[3] = &unk_10051DA10;
  v16 = &v18;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  [v7 readUsingSession:v14];
  if (a4 && !v19[5])
  {
    *a4 = v25[5];
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v19[5];
    v11 = v25[5];
    *buf = 138543874;
    v31 = v10;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(PurchaseHistory) Local revision is %{public}@ for accountID: %{public}@ error: %{public}@", buf, 0x20u);
  }

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v12;
}

void sub_100276200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100276230(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 BOOLValue];
  v7 = ASDLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 || !v6)
  {
    if (v8)
    {
      v14 = *(a1 + 32);
      v15 = v14[2];
      v16 = v14[5];
      v17 = v14[4] - 1;
      if (v17 > 6)
      {
        v18 = @"default";
      }

      else
      {
        v18 = off_10051F750[v17];
      }

      v21 = 138413058;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Failed purchase history reload for accountID: %{public}@ context: %{public}@ error: %{public}@", &v21, 0x2Au);
    }

    v19 = *(*(a1 + 32) + 72);
    v20 = ASDErrorWithSafeUserInfo();
    (*(v19 + 16))(v19, v20);
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v9[2];
      v11 = v9[5];
      v12 = v9[4] - 1;
      if (v12 > 6)
      {
        v13 = @"default";
      }

      else
      {
        v13 = off_10051F750[v12];
      }

      v21 = 138412802;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Completed purchase history reload for accountID: %{public}@ context: %{public}@", &v21, 0x20u);
    }

    (*(*(*(a1 + 32) + 72) + 16))();
  }
}

uint64_t sub_10027641C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v33 = 0;
    goto LABEL_53;
  }

  if (!*(a1 + 16))
  {
    v4 = sub_1002754D8(a1);
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;
  }

  v54 = 0;
  v55 = 0;
  v6 = *(a1 + 40);
  v7 = v3;
  objc_opt_self();
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100276C94;
  v60 = sub_100276CA4;
  v61 = 0;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100276E2C;
  v64 = &unk_10051D9E8;
  *&v65[16] = &v55;
  v8 = v6;
  *v65 = v8;
  *&v65[8] = &v56;
  v66 = &v54;
  [v7 readUsingSession:buf];
  if (*(v57 + 40))
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v51 = *(v57 + 40);
      *v62 = 138543362;
      *&v62[4] = v51;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "(PurchaseHistory) Error getting last updated date: %{public}@", v62, 0xCu);
    }
  }

  _Block_object_dispose(&v56, 8);
  if (v55)
  {
    [v55 timeIntervalSinceNow];
    v11 = -v10;
    v12 = *(a1 + 32);
    if (v12 > 3)
    {
      if (v12 <= 5)
      {
        if (v12 != 4)
        {
          if (v54)
          {
            [v54 timeIntervalSinceNow];
            if (v54)
            {
              v20 = v19;
              [*(a1 + 8) doubleForKey:@"purchase-daap/forced-refresh-frequency-minutes" defaultValue:10080.0];
              v22 = v21;
              v23 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                *&buf[4] = v22;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "(PurchaseHistory) Force refresh interval: %.0f", buf, 0xCu);
              }

              if (v22 * 60.0 >= -v20)
              {
                v13 = @"time since last update is less than forced refresh interval";
                goto LABEL_44;
              }
            }
          }
        }

LABEL_26:
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 16);
          v25 = *(a1 + 40);
          if (v55)
          {
            [v55 timeIntervalSince1970];
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = *(a1 + 32) - 1;
          if (v28 > 6)
          {
            v29 = @"default";
          }

          else
          {
            v29 = off_10051F750[v28];
          }

          *buf = 138413058;
          *&buf[4] = v24;
          *&buf[12] = 2114;
          *&buf[14] = v25;
          *&buf[22] = 2048;
          v64 = v27;
          *v65 = 2114;
          *&v65[2] = v29;
          v30 = "[%@] Allowing purchase history reload for accountID: %{public}@ last update: %{time_t}ld context: %{public}@";
          v31 = v14;
          v32 = 42;
LABEL_35:
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      if (v12 == 6)
      {
        if ([*(a1 + 8) BOOLForKey:@"purchase-daap/purchase-refresh-enabled" defaultValue:1])
        {
          v34 = *(a1 + 48);
          if (v34)
          {
            v35 = *(a1 + 40);
            v36 = v34;
            v37 = v7;
            objc_opt_self();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v64 = sub_100276C94;
            *v65 = sub_100276CA4;
            *&v65[8] = 0;
            v38 = objc_alloc_init(ASDPurchaseHistoryQuery);
            [v38 setAccountID:{objc_msgSend(v35, "longLongValue")}];
            *v62 = v36;
            v39 = [NSArray arrayWithObjects:v62 count:1];
            [v38 setStoreIDs:v39];

            [v38 setIsFirstParty:0];
            [v38 setIsHidden:0];
            [v38 setIsPreorder:0];
            v56 = _NSConcreteStackBlock;
            v57 = 3221225472;
            v58 = sub_100276DD8;
            v59 = &unk_10051F618;
            v61 = buf;
            v40 = v38;
            v60 = v40;
            [v37 readUsingSession:&v56];
            v41 = *(*&buf[8] + 40);
            v42 = v41 ? [v41 isEqualToNumber:&off_100547680] : 1;

            _Block_object_dispose(buf, 8);
            if ((v42 & 1) == 0)
            {
              v13 = @"history for account already contains expected item";
              goto LABEL_44;
            }
          }

          goto LABEL_26;
        }

        goto LABEL_11;
      }

      if (v12 == 7)
      {
        goto LABEL_26;
      }
    }

    else if (v12 < 4)
    {
LABEL_11:
      if (sub_100276BCC(*(a1 + 8)) >= v11)
      {
        v13 = @"time since last update is less than polling interval";
LABEL_44:
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 16);
          v45 = *(a1 + 40);
          if (v55)
          {
            [v55 timeIntervalSince1970];
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          v48 = *(a1 + 32) - 1;
          if (v48 > 6)
          {
            v49 = @"default";
          }

          else
          {
            v49 = off_10051F750[v48];
          }

          *buf = 138413314;
          *&buf[4] = v44;
          *&buf[12] = 2114;
          *&buf[14] = v45;
          *&buf[22] = 2048;
          v64 = v47;
          *v65 = 2114;
          *&v65[2] = v49;
          *&v65[10] = 2114;
          *&v65[12] = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Blocking purchase history reload for accountID: %{public}@ last update: %{time_t}ld context: %{public}@ reason: %{public}@", buf, 0x34u);
        }

        v33 = 0;
        goto LABEL_52;
      }

      goto LABEL_26;
    }

    v43 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      v52 = *(a1 + 16);
      v53 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v52;
      *&buf[12] = 2048;
      *&buf[14] = v53;
      _os_log_fault_impl(&_mh_execute_header, v43, OS_LOG_TYPE_FAULT, "[%@] Unhandled update context value: %lu", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_44;
  }

  v14 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 40);
    v17 = *(a1 + 32) - 1;
    if (v17 > 6)
    {
      v18 = @"default";
    }

    else
    {
      v18 = off_10051F750[v17];
    }

    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v16;
    *&buf[22] = 2114;
    v64 = v18;
    v30 = "[%@] Proceeding with purchase history reload, no previous reload time recorded for accountID: %{public}@ context: %{public}@";
    v31 = v14;
    v32 = 32;
    goto LABEL_35;
  }

LABEL_36:
  v33 = 1;
LABEL_52:

LABEL_53:
  return v33;
}

void sub_100276B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100276BCC(void *a1)
{
  [a1 doubleForKey:@"purchase-daap/update-polling-frequency-secs" defaultValue:3600.0];
  v2 = v1;
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "(PurchaseHistory) Update polling frequency interval: %.0f", &v5, 0xCu);
  }

  return v2;
}

uint64_t sub_100276C94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100276CAC(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ASDPurchaseHistoryQuery);
  [v4 setAccountID:{objc_msgSend(*(a1[4] + 40), "longLongValue")}];
  [v4 setIsFirstParty:0];
  [v4 setIsHidden:0];
  [v4 setIsPreorder:0];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_1003C0B84(v3, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1[6] + 8);
  v13 = *(v9 + 40);
  v10 = sub_1003C1400(v3, *(a1[4] + 40));

  objc_storeStrong((v9 + 40), v13);
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_100276DD8(uint64_t a1, id a2)
{
  v3 = sub_1003C021C(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100276E2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = a2;
  v6 = sub_1003C1F60(v5, v3);
  objc_storeStrong((v4 + 40), obj);
  v7 = *(a1 + 48);
  v8 = *v7;
  *v7 = v6;

  v9 = *(*(a1 + 40) + 8);
  v13 = *(v9 + 40);
  v10 = sub_1003C1D08(v5, *(a1 + 32));

  objc_storeStrong((v9 + 40), v13);
  v11 = *(a1 + 56);
  v12 = *v11;
  *v11 = v10;
}

uint64_t sub_100276EE8(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = a1[4];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = sub_10022ECA4(v3, v4, v5, &obj);

  objc_storeStrong((v6 + 40), obj);
  *(*(a1[5] + 8) + 24) &= v7;

  return *(*(a1[5] + 8) + 24);
}

void sub_100276F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = sub_1003C1400(a2, *(a1 + 32));
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_100277018(void *a1, void *a2)
{
  v4 = a2;
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 104, 1);
  }

  v6 = Property;
  v7 = [v6 BOOLValue];

  v8 = ASDLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1[5] + 16);
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] This is an update. Editing upon previous revision", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      v12 = *(a1[5] + 16);
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] This is not an update. Clearing up purchase_history_apps first...", buf, 0xCu);
    }

    v13 = *(a1[5] + 40);
    v14 = *(a1[7] + 8);
    obj = *(v14 + 40);
    v15 = sub_10022E964(v4, v13, &obj);
    objc_storeStrong((v14 + 40), obj);
    *(*(a1[6] + 8) + 24) &= v15;
  }

  v16 = a1[4];
  if (v16)
  {
    v16 = objc_getProperty(v16, v11, 120, 1);
  }

  v17 = v16;
  v18 = *(a1[5] + 40);
  v19 = *(a1[7] + 8);
  v23 = *(v19 + 40);
  v20 = sub_10022EA48(v4, v17, v18, &v23);
  objc_storeStrong((v19 + 40), v23);
  *(*(a1[6] + 8) + 24) &= v20;

  v21 = *(*(a1[6] + 8) + 24);
  return v21;
}

uint64_t sub_10027721C(void *a1, void *a2)
{
  v4 = a2;
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 16, 1);
  }

  v6 = Property;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = *(a1[5] + 40);
  v10 = *(a1[7] + 8);
  obj = *(v10 + 40);
  v11 = sub_10022DD98(v4, v8, v9);
  objc_storeStrong((v10 + 40), obj);
  *(*(a1[6] + 8) + 24) &= v11;

  v13 = a1[4];
  if (v13)
  {
    v13 = objc_getProperty(v13, v12, 24, 1);
  }

  v14 = v13;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v17 = *(a1[5] + 40);
  v18 = *(a1[7] + 8);
  v31 = *(v18 + 40);
  v19 = sub_10022DBA4(v4, v16, v17, &v31);
  objc_storeStrong((v18 + 40), v31);
  *(*(a1[6] + 8) + 24) &= v19;

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v20 = +[NSDate now];
    v21 = *(a1[5] + 40);
    v22 = *(a1[7] + 8);
    v30 = *(v22 + 40);
    v23 = sub_10022ECA4(v4, v20, v21, &v30);
    objc_storeStrong((v22 + 40), v30);
    *(*(a1[6] + 8) + 24) &= v23;
    v24 = *(a1[5] + 40);
    v25 = *(a1[7] + 8);
    v29 = *(v25 + 40);
    v26 = sub_10022EBFC(v4, v20, v24, &v29);
    objc_storeStrong((v25 + 40), v29);
    *(*(a1[6] + 8) + 24) &= v26;

    v27 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

id sub_100277424(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = sub_10020B714();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1002783E4;
  v35[3] = &unk_10051F708;
  v35[4] = a1;
  v18 = v14;
  v36 = v18;
  v19 = v15;
  v37 = v19;
  v20 = v16;
  v38 = v20;
  v21 = sub_1001CE32C(Promise, v17, v35);

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100277648;
  v28[3] = &unk_10051F690;
  v22 = v20;
  v29 = v22;
  v30 = a1;
  v23 = v18;
  v31 = v23;
  v24 = v19;
  v32 = v24;
  v33 = a5;
  v34 = a6;
  v25 = sub_10020B714();
  v26 = sub_1001CEB34(v21, v28, v25);

  return v26;
}

id sub_100277648(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v88 = a1[9];
  v89 = a1[8];
  v91 = a2;
  v90 = v4;
  v92 = v3;
  v93 = v5;
  if (!v3)
  {
    v62 = 0;
    goto LABEL_69;
  }

  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 1;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_100276C94;
  v117 = sub_100276CA4;
  v118 = 0;
  v6 = sub_1003690B4([PurchaseHistoryItemsDAAPResponseDecoder alloc], v91);
  sub_10036918C(v6);
  self = v6;
  if (v6)
  {
    Property = objc_getProperty(v6, v7, 104, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  v10 = v9 == 0;

  if (v10)
  {
    v44 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v78 = *(v3 + 16);
      *buf = 138412290;
      v135 = v78;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%@] Error decoding response metadata, isUpdate not parsed", buf, 0xCu);
    }

    goto LABEL_63;
  }

  v12 = self;
  if (self)
  {
    v12 = objc_getProperty(self, v11, 120, 1);
  }

  v13 = v12;
  v14 = v13 == 0;

  if (v14)
  {
    v44 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v83 = *(v3 + 16);
      *buf = 138412290;
      v135 = v83;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "[%@] Error decoding response metadata, revision not parsed", buf, 0xCu);
    }

LABEL_63:

    v17 = sub_1002358D4(0, 0);
    v62 = sub_1001CE458(Promise, v17);
    goto LABEL_68;
  }

  if (!v2)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v3 + 16);
      *buf = 138412290;
      v135 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] First query for purchase history items", buf, 0xCu);
    }

    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_100277018;
    v108[3] = &unk_10051F668;
    v109 = self;
    v110 = v3;
    v111 = &v119;
    v112 = &v113;
    [v93 modifyUsingTransaction:v108];
  }

  v17 = objc_opt_new();
  v18 = objc_opt_new();
  do
  {
    v19 = objc_autoreleasePoolPush();
    v20 = sub_10036929C(self);
    v22 = v20;
    if (v20)
    {
      v23 = objc_getProperty(v20, v21, 16, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    if ([v24 count])
    {
    }

    else
    {
      if (v22)
      {
        v27 = objc_getProperty(v22, v25, 24, 1);
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;
      v29 = [v28 count] == 0;

      if (v29)
      {
        v43 = 1;
        goto LABEL_41;
      }
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    if (v22)
    {
      v30 = objc_getProperty(v22, v26, 16, 1);
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v104 objects:buf count:16];
    if (v32)
    {
      v33 = *v105;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v105 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(*(&v104 + 1) + 8 * i) storeItemID]);
          [v17 addObject:v35];
        }

        v32 = [v31 countByEnumeratingWithState:&v104 objects:buf count:16];
      }

      while (v32);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    if (v22)
    {
      v37 = objc_getProperty(v22, v36, 24, 1);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v100 objects:v133 count:16];
    if (v39)
    {
      v40 = *v101;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v101 != v40)
          {
            objc_enumerationMutation(v38);
          }

          [v18 addObject:*(*(&v100 + 1) + 8 * j)];
        }

        v39 = [v38 countByEnumeratingWithState:&v100 objects:v133 count:16];
      }

      while (v39);
    }

    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_10027721C;
    v95[3] = &unk_10051F668;
    v98 = &v119;
    v42 = v22;
    v96 = v42;
    v97 = v92;
    v99 = &v113;
    [v93 modifyUsingTransaction:v95];
    if (v22)
    {
      v43 = v42[8];
    }

    else
    {
      v43 = 0;
    }

LABEL_41:
    objc_autoreleasePoolPop(v19);
  }

  while ((v43 & 1) == 0);
  if (v120[3])
  {
    v45 = [v17 count];
    v46 = [v18 count];
    v47 = [v17 count];
    v49 = [v18 count];
    v50 = self;
    if (self)
    {
      v50 = objc_getProperty(self, v48, 112, 1);
    }

    v51 = v50;
    v52 = v51 == 0;

    v53 = &v47[v89];
    v54 = &v49[v88];
    if (!v52)
    {
      v55 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(v92 + 16);
        v57 = *(v92 + 40);
        *v123 = 138413058;
        v124 = v56;
        v125 = 2048;
        v126 = &v45[v46];
        v127 = 2114;
        v128 = v57;
        v129 = 2114;
        v130 = v90;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@] Updated %ld items in DB for account: %{public}@ authenticated account: %{public}@", v123, 0x2Au);
      }

      if (self)
      {
        v59 = objc_getProperty(self, v58, 112, 1);
      }

      else
      {
        v59 = 0;
      }

      v60 = v59;
      v61 = sub_100277424(v92, v90, v93, v60, v53, v54);
      goto LABEL_66;
    }

    v66 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = *(v92 + 16);
      *v123 = 138412290;
      v124 = v67;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "[%@] Sending notification for purchase history change", v123, 0xCu);
    }

    notify_post("com.apple.appstored.PurchaseHistoryDatabaseUpdated");
    v68 = &v53[v54];
    if (&v53[v54] < 1)
    {
      v69 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v75 = *(v92 + 16);
        v76 = self;
        if (self)
        {
          v76 = objc_getProperty(self, v74, 120, 1);
        }

        v77 = v76;
        *v123 = 138543618;
        v124 = v75;
        v125 = 2112;
        v126 = v77;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchase History updated from server (revision %@) with 0 changes", v123, 0x16u);
      }
    }

    else if (v68 > 0xA)
    {
      v69 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v80 = *(v92 + 16);
        v81 = self;
        if (self)
        {
          v81 = objc_getProperty(self, v79, 120, 1);
        }

        v82 = v81;
        *v123 = 138543874;
        v124 = v80;
        v125 = 2112;
        v126 = v82;
        v127 = 2048;
        v128 = v68;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchase History updated from server (revision %@) with %ld changes", v123, 0x20u);
      }
    }

    else
    {
      v69 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v71 = *(v92 + 16);
        v72 = self;
        if (self)
        {
          v72 = objc_getProperty(self, v70, 120, 1);
        }

        v73 = v72;
        *v123 = 138544386;
        v124 = v71;
        v125 = 2112;
        v126 = v73;
        v127 = 2048;
        v128 = v68;
        v129 = 2112;
        v130 = v17;
        v131 = 2112;
        v132 = v18;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purchase History updated from server (revision %@) with %ld changes: added {%@}; removed {%@}", v123, 0x34u);
      }
    }

    v62 = sub_1001CE3A0(Promise, &__kCFBooleanTrue);
  }

  else
  {
    v63 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v84 = *(v92 + 16);
      v85 = self;
      if (self)
      {
        v85 = objc_getProperty(self, v64, 120, 1);
      }

      v86 = v85;
      v87 = v114[5];
      *v123 = 138543874;
      v124 = v84;
      v125 = 2112;
      v126 = v86;
      v127 = 2112;
      v128 = v87;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "[%{public}@] Purchase History updated from server (revision %@) with error %@", v123, 0x20u);
    }

    v60 = sub_1002358D4(0, v114[5]);
    v61 = sub_1001CE458(Promise, v60);
LABEL_66:
    v62 = v61;
  }

LABEL_68:
  _Block_object_dispose(&v113, 8);

  _Block_object_dispose(&v119, 8);
LABEL_69:

  return v62;
}

void sub_10027817C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

id sub_10027820C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1002680E4([PurchaseHistoryUpdateDAAPResponseDecoder alloc], v3);

  sub_10026815C(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 16);
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Decoded server revision: %@", &v15, 0x16u);
    }

    v11 = sub_1001CE3A0(Promise, v7);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 16);
      v15 = 138412290;
      v16 = v14;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Decoding server revision failed", &v15, 0xCu);
    }

    v12 = sub_1002357E8(0, 0);
    v11 = sub_1001CE458(Promise, v12);
  }

  return v11;
}

void sub_1002783E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v29 = *(a1 + 40);
  v9 = v8;
  v10 = v9;
  if (v7)
  {
    v11 = v6;
    v12 = v5;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_100276C94;
    v49 = sub_100276CA4;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_100276C94;
    v43 = sub_100276CA4;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100276C94;
    v37 = sub_100276CA4;
    v38 = 0;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100276CAC;
    v52 = &unk_10051F5F0;
    v53 = v7;
    v54 = &v39;
    v55 = &v45;
    v56 = &v33;
    [v9 readUsingSession:buf];
    v13 = v40[5];
    v14 = v34[5];
    v15 = [*(v7 + 40) longLongValue];
    v16 = sub_10000479C();
    v17 = sub_1002289D8(PurchaseHistoryItemsRequestContext, v13, v14, v15, v29, v16, *(v7 + 32));

    v5 = v12;
    v6 = v11;
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v46[5];
      v19 = v18;
    }

    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v20 = v18;
  v21 = ASDLogHandleForCategory();
  v22 = v21;
  if (v17)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(*(a1 + 32) + 16);
      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%@] Server items request started", buf, 0xCu);
    }

    v23 = [PurchaseHistoryItemsRequest alloc];
    v25 = *(a1 + 32);
    v24 = a1 + 32;
    v26 = sub_10032A860(&v23->super.isa, *(v25 + 8), *(v25 + 64), v17, *(v24 + 24));
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10027883C;
    v30[3] = &unk_10051F6E0;
    v30[4] = *v24;
    v31 = v5;
    v32 = v6;
    sub_10032A93C(v26, v30);
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v27 = *(*(a1 + 32) + 16);
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%@] Server items request failed, no request context: %@", buf, 0x16u);
    }

    (*(v6 + 2))(v6, v20);
  }
}

void sub_100278800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10027883C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v7 = sub_1002357E8(0, 0);
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1[4] + 16);
      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%@] Server items request failed (%@)", &v12, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1[4] + 16);
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = [v5 length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%@] Server items request completed (%{iec-bytes}lu)", &v12, 0x16u);
    }

    (*(a1[5] + 16))();
  }
}

void sub_1002789D8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  if (v7)
  {
    v8 = a1[5];
    v9 = a1[6];
    v10 = *(v7 + 40);
    *buf = 0;
    v11 = v8;
    v12 = sub_100275FB8(PurchaseHistoryUpdateCommand, v10, v9, buf);
    v13 = *buf;
    v14 = [*(v7 + 40) longLongValue];
    v15 = sub_10000479C();
    v16 = sub_100382D88(PurchaseHistoryUpdateRequestContext, v12, v14, v11, v15, *(v7 + 32));

    v17 = 0;
    if (!v16)
    {
      v18 = v13;
      v17 = v13;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v19 = v17;
  v20 = ASDLogHandleForCategory();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v21)
    {
      v23 = *(a1[4] + 16);
      *buf = 138412290;
      *&buf[4] = v23;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%@] Server revision request started", buf, 0xCu);
    }

    v22 = sub_100234758([PurchaseHistoryUpdateRequest alloc], *(a1[4] + 8), *(a1[4] + 64), v16);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100278CAC;
    v25[3] = &unk_10051F6E0;
    v25[4] = a1[4];
    v26 = v5;
    v27 = v6;
    sub_100234810(v22, v25);
  }

  else
  {
    if (v21)
    {
      v24 = *(a1[4] + 16);
      *buf = 138412546;
      *&buf[4] = v24;
      v29 = 2112;
      v30 = v19;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[%@] Server revision request failed, no request context: %@", buf, 0x16u);
    }

    (*(v6 + 2))(v6, v19);
  }
}

void sub_100278CAC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (!v6)
    {
      v7 = sub_1002357E8(0, 0);
    }

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1[4] + 16);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[%@] Server revision request failed (%@)", &v12, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1[4] + 16);
      v12 = 138412546;
      v13 = v11;
      v14 = 2048;
      v15 = [v5 length];
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%@] Server revision request completed (%{iec-bytes}lu)", &v12, 0x16u);
    }

    (*(a1[5] + 16))();
  }
}

id sub_100278EE8()
{
  objc_opt_self();
  v2[0] = @"app_adam_id";
  v2[1] = @"ad_network_registrable_domain";
  v2[2] = @"impression_id";
  v2[3] = @"source_web_registrable_domain";
  v2[4] = @"version";
  v2[5] = @"timestamp";
  v2[6] = @"attribution_context";
  v2[7] = @"private_browsing_session_id";
  v0 = [NSArray arrayWithObjects:v2 count:8];

  return v0;
}

char *sub_100278FAC(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = RepairApplicationTask;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 50), a2);
      objc_storeStrong((a1 + 58), a3);
    }
  }

  return a1;
}

void sub_100279670(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(*(a1 + 32) + 42) fairPlayStatus];
  [*(*(a1 + 32) + 42) setDelegate:0];
  v5 = *(a1 + 32);
  if (v5 && objc_getProperty(v5, v4, 66, 1))
  {
    Property = objc_getProperty(*(a1 + 32), v6, 66, 1);
    v8 = *(a1 + 80);
    v9 = *(*(a1 + 32) + 42);
    v10 = Property;
    v11 = [v9 repairedBundleIDs];
    v12 = ASDErrorWithSafeUserInfo();
    (*(Property + 2))(v10, v8, v11, v12);
  }

  [*(a1 + 40) removeObserver:*(a1 + 48)];
  sub_1002797A0(*(a1 + 32), v13, v3, *(a1 + 56), *(a1 + 80), *(a1 + 64), *(a1 + 72));
}

void sub_1002797A0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, double a7)
{
  if (a1)
  {
    v27 = a6;
    v13 = a4;
    v14 = a2;
    +[NSDate timeIntervalSinceReferenceDate];
    v16 = v15 - a7;
    v17 = v14;
    v18 = v13;
    v19 = objc_opt_new();
    [v19 setObject:v18 forKeyedSubscript:@"repairType"];

    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 50) exitReason]);
    [v19 setObject:v20 forKeyedSubscript:@"exitReason"];

    v21 = [NSNumber numberWithDouble:v16];
    [v19 setObject:v21 forKeyedSubscript:@"duration"];

    v22 = [NSNumber numberWithBool:a5];
    [v19 setObject:v22 forKeyedSubscript:@"result"];

    if (a3)
    {
      v23 = [NSNumber numberWithInt:a3];
      [v19 setObject:v23 forKeyedSubscript:@"fairPlayStatus"];
    }

    if (v17)
    {
      v24 = [v17 domain];
      v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%ld", v24, [v17 code]);

      [v19 setObject:v25 forKeyedSubscript:@"repairError"];
    }

    sub_1003F25C4(Analytics, v19, 1);

    v26 = *(a1 + 66);
    *(a1 + 66) = 0;

    v27[2](v27, 0);
  }
}

void sub_100279AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(*(a1 + 32) + 42) logKey];
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@] Unable to relaunch due to error: %{public}@", &v7, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 42) logKey];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Relaunched application after repair completed", &v7, 0xCu);
    goto LABEL_6;
  }
}

id sub_100279D34(void *a1)
{
  if (a1)
  {
    v2 = [a1 firstObject];
    if (v2)
    {
      [a1 removeObjectAtIndex:0];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100279D90(void *a1)
{
  if (a1)
  {
    v2 = [a1 lastObject];
    [a1 removeLastObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100279DE4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 count];
    v5 = &v4[-a2];
    v6 = [a1 subarrayWithRange:{&v4[-a2], a2}];
    [a1 removeObjectsInRange:{v5, a2}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100279E60(id a1)
{
  if (a1)
  {
    v2 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_100279F68(double *a1, double a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithDouble:?];
    [a1 setProperty:v4 forBodyKey:@"averageTimeBetweenPolls"];

    a1[1] = a2;
  }
}

void sub_100279FD4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7 = v4;
    [v4 timeIntervalSince1970];
    v6 = [NSNumber numberWithInteger:(v5 * 1000.0)];
    [a1 setProperty:v6 forBodyKey:@"lastPollDate"];

    objc_storeStrong(a1 + 2, a2);
    v4 = v7;
  }
}

void sub_10027A080(double *a1, double a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithDouble:?];
    [a1 setProperty:v4 forBodyKey:@"meanTimeToDiscovery"];

    a1[3] = a2;
  }
}

void sub_10027A0EC(double *a1, double a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithDouble:?];
    [a1 setProperty:v4 forBodyKey:@"meanTimeToDownload"];

    a1[4] = a2;
  }
}

void sub_10027A158(double *a1, double a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithDouble:?];
    [a1 setProperty:v4 forBodyKey:@"meanTimeToInstall"];

    a1[5] = a2;
  }
}

void sub_10027A1C4(double *a1, double a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithDouble:?];
    [a1 setProperty:v4 forBodyKey:@"meanTimeToTransaction"];

    a1[6] = a2;
  }
}

void sub_10027A2B4(id a1)
{
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&off_100547698 forKeyedSubscript:@"clientId"];
  if (sub_1003D66A4())
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"automationRunning"];
  }

  v1 = +[AMSDevice productType];
  if ([v1 length])
  {
    [v7 setObject:v1 forKeyedSubscript:@"deviceModel"];
  }

  v2 = MGCopyAnswer();
  if ([v2 length])
  {
    [v7 setObject:v2 forKeyedSubscript:@"buildNumber"];
  }

  if (os_variant_has_internal_content())
  {
    [v7 setObject:&off_1005476B0 forKeyedSubscript:@"updatesVersion"];
    v3 = v7;
    v4 = @"internal";
  }

  else
  {
    v4 = @"gold";
    v3 = v7;
  }

  [v3 setObject:v4 forKeyedSubscript:@"buildType"];
  v5 = [v7 copy];
  v6 = qword_1005AA9B8;
  qword_1005AA9B8 = v5;
}

id sub_10027A41C()
{
  objc_opt_self();
  if (qword_1005AA9C0 != -1)
  {
    dispatch_once(&qword_1005AA9C0, &stru_10051F838);
  }

  v0 = qword_1005AA9C8;

  return v0;
}

void sub_10027A474(id a1)
{
  v1 = objc_alloc_init(ArtworkLoader);
  v2 = qword_1005AA9C8;
  qword_1005AA9C8 = v1;
}

void sub_10027A4B0(void *a1, void *a2, int a3, void *a4)
{
  v30 = a2;
  v7 = a4;
  if (a1)
  {
    if (v30)
    {
      if ([v30 isFileURL])
      {
        (*(v7 + 2))(v7, v30, 0, 0);
      }

      else
      {
        v9 = v30;
        v31 = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_10027AA48;
        v34 = &unk_10051F860;
        v10 = v7;
        v35 = v10;
        v11 = objc_retainBlock(&v31);
        if (os_variant_has_internal_content())
        {
          a3 &= ~sub_1003D6768();
        }

        v12 = [NSMutableURLRequest requestWithURL:v9, v30, v31, v32, v33, v34];
        [v12 setCachePolicy:0];
        [v12 setTimeoutInterval:30.0];
        [v12 setHTTPShouldHandleCookies:0];
        v13 = sub_1002D6988();
        [v12 setHTTPUserAgent:v13];

        v14 = a1;
        objc_sync_enter(v14);
        if (a3)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        v16 = v14[v15];
        if (v16)
        {
          v17 = v16;
          v18 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = a3;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[ArtworkLoader] Cache hit, existing session (ATS = %{BOOL}d)", buf, 8u);
          }
        }

        else
        {
          v19 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = a3;
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[ArtworkLoader] Cache miss, creating session (ATS = %{BOOL}d)", buf, 8u);
          }

          v18 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
          if (a3)
          {
            v41 = @"NSAllowsArbitraryLoads";
            v42 = &__kCFBooleanFalse;
            v20 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
            v21 = [NSPropertyListSerialization dataWithPropertyList:v20 format:200 options:0 error:0];

            if (v21)
            {
              [v18 set_atsContext:v21];
            }
          }

          v17 = [NSURLSession sessionWithConfiguration:v18 delegate:v14 delegateQueue:0];
          objc_storeStrong(&v14[v15], v17);
        }

        v22 = [v17 downloadTaskWithRequest:v12 completionHandler:v11];
        [v22 resume];

        v23 = v14[3];
        if (v23)
        {
          dispatch_source_cancel(v23);
        }

        v24 = dispatch_get_global_queue(21, 0);
        v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v24);
        v26 = v14[3];
        v14[3] = v25;

        v27 = v14[3];
        v28 = dispatch_time(0, 60000000000);
        dispatch_source_set_timer(v27, v28, 0xFFFFFFFFFFFFFFFFLL, 0);
        v29 = v14[3];
        *buf = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = sub_10027AB6C;
        v39 = &unk_10051AF98;
        v40 = v14;
        dispatch_source_set_event_handler(v29, buf);
        dispatch_resume(v14[3]);

        objc_sync_exit(v14);
      }
    }

    else
    {
      v8 = ASDErrorWithUserInfoAndFormat();
      (*(v7 + 2))(v7, 0, 0, v8);
    }
  }
}

void sub_10027AA48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if ((sub_100271518(v7) - 200) > 0x63)
  {
    if (!v8)
    {
      v8 = ASDErrorWithUserInfoAndFormat();
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  else
  {
    v9 = sub_1002714AC(v7);
    if (v9)
    {
      v10 = [UTType typeWithMIMEType:v9];
    }

    else
    {
      v10 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10027AB6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[ArtworkLoader] Invalidating session cache", v8, 2u);
  }

  [*(*(a1 + 32) + 8) finishTasksAndInvalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  [*(*(a1 + 32) + 16) finishTasksAndInvalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  objc_sync_exit(v2);
}

id sub_10027AE18(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = [v1 clientID];
    v4 = [v3 isEqualToString:@"asclient"];

    if ((v4 & 1) == 0)
    {
      v5 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.priority value:0)" comparisonType:&off_1005476C8, 6];
      [v2 addObject:v5];
    }

    v6 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(app_install.phase values:10)", &off_100549398];
    [v2 addObject:v6];

    v1 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v2];
  }

  return v1;
}

void sub_10027AF18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 72);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10027AFC8;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10027AFD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      [v5 addObjectsFromArray:v4];
    }

    else
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 88);
      *(a1 + 88) = v6;

      v8 = [*(a1 + 64) remoteObjectProxy];
      [v8 didChangeJobs:v4];

      objc_initWeak(&location, a1);
      v9 = *(a1 + 64);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10027BB68;
      v10[3] = &unk_10051F888;
      objc_copyWeak(&v11, &location);
      [v9 addBarrierBlock:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10027B100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027B11C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 72);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10027B1EC;
    block[3] = &unk_10051AEE8;
    block[4] = a1;
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

void sub_10027B1EC(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = objc_opt_class();
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 clientID];
    v6 = [*(a1 + 40) componentsJoinedByString:{@", "}];
    v7 = *(a1 + 48);
    v8 = 138413058;
    v9 = v2;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: sendJobsCompleted to client: %@ for jobs: [%@] with finalPhases: %@ ", &v8, 0x2Au);
  }

  sub_10027B314(*(a1 + 32), *(a1 + 40), *(a1 + 48));
}

void sub_10027B314(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 count])
  {
    v7 = *(a1 + 96);
    if (v7)
    {
      [v7 addObjectsFromArray:v5];
      [*(a1 + 104) addEntriesFromDictionary:v6];
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(a1 + 96);
      *(a1 + 96) = v8;

      v10 = objc_opt_new();
      v11 = *(a1 + 104);
      *(a1 + 104) = v10;

      v12 = [*(a1 + 64) remoteObjectProxy];
      [v12 didCompleteJobs:v5 finalPhases:v6];

      objc_initWeak(&location, a1);
      v13 = *(a1 + 64);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10027BC08;
      v14[3] = &unk_10051F888;
      objc_copyWeak(&v15, &location);
      [v13 addBarrierBlock:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10027B48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027B4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 72);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10027B558;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10027B564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5 = *(a1 + 120);
    if (v5)
    {
      [v5 addEntriesFromDictionary:v4];
    }

    else
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 120);
      *(a1 + 120) = v6;

      v8 = [*(a1 + 64) remoteObjectProxy];
      [v8 didUpdateStates:v4];

      objc_initWeak(&location, a1);
      v9 = *(a1 + 64);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10027BCA8;
      v10[3] = &unk_10051F888;
      objc_copyWeak(&v11, &location);
      [v9 addBarrierBlock:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10027B690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027B6AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 72);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10027B75C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10027B768(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    v5 = *(a1 + 112);
    if (v5)
    {
      [v5 addEntriesFromDictionary:v4];
    }

    else
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 112);
      *(a1 + 112) = v6;

      v8 = [*(a1 + 64) remoteObjectProxy];
      [v8 didUpdateProgress:v4];

      objc_initWeak(&location, a1);
      v9 = *(a1 + 64);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10027BD48;
      v10[3] = &unk_10051F888;
      objc_copyWeak(&v11, &location);
      [v9 addBarrierBlock:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10027B894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10027B8B0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [v3 persistenceIdentifier];
    v5 = *(a1 + 80);
    *(a1 + 80) = v4;

    *(a1 + 128) = [v3 shouldFilterExternalOriginatedDownloads];
    v6 = [v3 shouldReportDownloadProgress];

    *(a1 + 129) = v6;
  }
}

void sub_10027B934(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) array];
  v5 = [v2 copy];

  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = 0;

  sub_10027AFD4(*(a1 + 32), v5);
}

void sub_10027B9C0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) array];
  v8 = [v2 copy];

  v3 = [*(*(a1 + 32) + 104) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = 0;

  sub_10027B314(*(a1 + 32), v8, v3);
}

void sub_10027BA80(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 112) copy];
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  sub_10027B768(*(a1 + 32), v4);
}

void sub_10027BAF4(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 120) copy];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  sub_10027B564(*(a1 + 32), v4);
}

void sub_10027BB68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10027B934;
    block[3] = &unk_10051AF98;
    block[4] = v2;
    v4 = v2;
    dispatch_async(v3, block);
    v2 = v4;
  }
}

void sub_10027BC08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10027B9C0;
    block[3] = &unk_10051AF98;
    block[4] = v2;
    v4 = v2;
    dispatch_async(v3, block);
    v2 = v4;
  }
}

void sub_10027BCA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10027BAF4;
    block[3] = &unk_10051AF98;
    block[4] = v2;
    v4 = v2;
    dispatch_async(v3, block);
    v2 = v4;
  }
}

void sub_10027BD48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10027BA80;
    block[3] = &unk_10051AF98;
    block[4] = v2;
    v4 = v2;
    dispatch_async(v3, block);
    v2 = v4;
  }
}

id sub_10027BEA4(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = sub_10023E644(a1, @"bundle_id");
    sub_1002FD900(v2, v3);

    v4 = sub_10023E644(a1, @"bundle_version");
    sub_1002FDA20(v2, v4);

    v5 = sub_10023E51C(a1, @"downloader_id");
    v6 = [v5 unsignedLongLongValue];
    if (v2)
    {
      *(v2 + 208) |= 1u;
      *(v2 + 8) = v6;
    }

    v7 = sub_10023E51C(a1, @"item_id");
    v8 = [v7 unsignedLongLongValue];
    if (v2)
    {
      *(v2 + 208) |= 4u;
      *(v2 + 24) = v8;
    }

    v9 = sub_10023E644(a1, @"store_cohort");
    sub_1002FD9C0(v2, v9);

    v10 = sub_10023E644(a1, @"storefront");
    sub_1002FD9D8(v2, v10);

    v11 = sub_10023E51C(a1, @"source_type");
    v12 = [v11 integerValue];

    if (v2)
    {
      *(v2 + 208) |= 0x40u;
      *(v2 + 201) = v12 == 2;
      *(v2 + 208) |= 0x100u;
      *(v2 + 203) = v12 == 1;
      *(v2 + 208) |= 0x80u;
      *(v2 + 202) = v12 == 0;
      if ((*(v2 + 201) & 1) != 0 || *(v2 + 202) == 1)
      {
        v13 = sub_10040969C(a1, 0);
        v14 = v13;
        if (v13)
        {
          if (*(v2 + 201) == 1)
          {
            [v13 betaExternalVersionIdentifier];
          }

          else
          {
            [v13 softwareVersionExternalIdentifier];
          }
          v15 = ;
          v16 = [v15 unsignedLongLongValue];
          *(v2 + 208) |= 2u;
          *(v2 + 16) = v16;
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_10027C144(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = StoreItemSubGenre;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      v4 = v3;
      v5 = sub_1002380D8(v4, @"genre");
      v6 = a1[1];
      a1[1] = v5;

      v7 = sub_10023790C(v4, @"genreId");

      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

id *sub_10027C41C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = UPPManifest;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

id sub_10027C494(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_100237778(*(a1 + 8), @"items");
    v2 = sub_100396BF0(v1);
    v3 = sub_1004024C4(v2, &stru_10051F8A8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10027C518(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = sub_10020F618([UPPManifestItem alloc], v2);

  return v3;
}

uint64_t sub_10027C570(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = sub_10027C494(a1);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = sub_10020F8D0(*(*(&v11 + 1) + 8 * i));
          v9 = [v8 isEqualToString:{v3, v11}];

          if (v9)
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

AppInstallDownloadTask *sub_10027C6B8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  objc_opt_self();
  v26[0] = @"automatic_type";
  v26[1] = @"bundle_id";
  v26[2] = @"client_id";
  v26[3] = @"download_path";
  v26[4] = @"download_volume";
  v26[5] = @"evid";
  v26[6] = @"external_id";
  v26[7] = @"item_id";
  v26[8] = @"log_code";
  v26[9] = @"metrics_fields";
  v26[10] = @"optimal_download_duration";
  v26[11] = @"optimal_download_start";
  v26[12] = @"order_index";
  v26[13] = @"policy";
  v26[14] = @"priority";
  v26[15] = @"quarantine";
  v26[16] = @"redownload";
  v26[17] = @"restore_type";
  v26[18] = @"software_platform";
  v26[19] = @"source_type";
  v26[20] = @"update_type";
  v26[21] = @"install_volume";
  v9 = [NSArray arrayWithObjects:v26 count:22];
  v10 = [v8 connection];
  v11 = [(SQLiteEntity *)AppInstallEntity memoryEntityForPersistentID:a2 withProperties:v9 usingConnection:v10];

  v25[0] = @"archive_type";
  v25[1] = @"bytes_offset";
  v25[2] = @"bytes_total";
  v25[3] = @"clear_hash_array";
  v25[4] = @"compression";
  v25[5] = @"data_promise_id";
  v25[6] = @"disk_usage";
  v25[7] = @"dp_info";
  v25[8] = @"hash_array";
  v25[9] = @"hash_size";
  v25[10] = @"hash_type";
  v25[11] = @"locate_asset_cache";
  v25[12] = @"package_type";
  v25[13] = @"package_url";
  v25[14] = @"ranges_not_supported";
  v25[15] = @"request_count";
  v25[16] = @"variant_id";
  v12 = [NSArray arrayWithObjects:v25 count:17];
  v13 = [v8 connection];

  v14 = sub_1004093BC(v11, v13, v12);

  v15 = [AppInstallDownloadTask alloc];
  v16 = v11;
  v17 = v14;
  v18 = v7;
  if (v15)
  {
    v24.receiver = v15;
    v24.super_class = AppInstallDownloadTask;
    v15 = objc_msgSendSuper2(&v24, "init");
    if (v15)
    {
      v19 = [v16 databaseID];
      *(&v15->_didLoadAssetSize + 2) = v19;
      v20 = [NSNumber numberWithLongLong:v19];
      v21 = sub_100402BD0(AppInstallInfo, v20);
      v22 = *(&v15->_install + 2);
      *(&v15->_install + 2) = v21;

      objc_storeStrong((&v15->_installID + 2), v11);
      objc_storeStrong((&v15->_installInfo + 2), v14);
      objc_storeStrong((&v15->super._finished + 1), a4);
    }
  }

  return v15;
}

void *sub_10027CA88(uint64_t a1, void *a2, id **a3)
{
  v5 = sub_10023E0F8(*(a1 + 82), @"package_url");
  if (!v5)
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      Property = *(a1 + 74);
      if (Property)
      {
        Property = objc_getProperty(Property, v18, 80, 1);
      }

      v205 = Property;
      v206 = [*(a1 + 82) databaseID];
      *buf = 138412546;
      v233 = v205;
      v234 = 2048;
      v235 = v206;
    }
    v7 = ;
    if (a3)
    {
      ASDErrorWithDescription();
      *a3 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_249;
  }

  v222 = a3;
  v6 = objc_alloc_init(AssetRequestProperties);
  v7 = v6;
  if (v6)
  {
    v6->_connectionPool = 1;
  }

  v9 = sub_100408EB0(*(a1 + 66));
  if (v7)
  {
    objc_setProperty_atomic(v7, v8, v9, 152);
  }

  v11 = *(a1 + 74);
  if (v11)
  {
    v11 = objc_getProperty(v11, v10, 24, 1);
  }

  v13 = v11;
  if (v7)
  {
    objc_setProperty_atomic(v7, v12, v13, 40);
  }

  v15 = sub_10023E6B8(*(a1 + 66), @"external_id");
  if (v7)
  {
    objc_setProperty_atomic(v7, v14, v15, 120);
  }

  v16 = sub_10023E0F8(*(a1 + 82), @"dp_info");
  v227 = v16;
  if (v16)
  {
    v225 = [v16 length] != 0;
  }

  else
  {
    v225 = 0;
  }

  v20 = sub_10023E51C(*(a1 + 82), @"bytes_total");
  v21 = v20;
  if (!v20 || [v20 isEqualToNumber:&off_1005477A0])
  {
    v22 = sub_10023E72C(*(a1 + 82), @"package_url");
    if (v22)
    {
      v23 = [DetermineSizeForURLTask alloc];
      v24 = sub_100408EB0(*(a1 + 66));
      v25 = sub_1002E6CB8(v23, v22, v24);

      if ([a1 runSubTask:v25 returningError:0])
      {
        v27 = *(a1 + 82);
        if (v25)
        {
          v28 = objc_getProperty(v25, v26, 66, 1);
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        sub_10023E000(v27, v29, @"bytes_total");

        *(a1 + 50) = 1;
      }
    }
  }

  v30 = sub_10023E604(*(a1 + 82), @"compression");
  v31 = sub_10023E51C(*(a1 + 82), @"hash_type");
  v223 = v31;
  if (!v31)
  {
    v36 = 0;
    goto LABEL_46;
  }

  v32 = [v31 integerValue];
  v33 = sub_10023E0F8(*(a1 + 82), @"hash_size");
  v34 = [v33 unsignedIntValue];

  v35 = objc_alloc_init(ChunkedDigest);
  v36 = v35;
  if (v35)
  {
    v37 = 2 * (v32 == 3);
    if (v32 == 2)
    {
      v37 = 1;
    }

    v35->_chunkSize = v34;
    v35->_chunkType = v37;
  }

  v38 = *(a1 + 82);
  if (!v225)
  {
    v44 = sub_10023E0F8(v38, @"hash_array");
    sub_100275058(v36, v44);
LABEL_45:

    goto LABEL_46;
  }

  v39 = sub_10023E0F8(v38, @"clear_hash_array");
  sub_100275058(v36, v39);

  if (v36)
  {
    chunkDigests = v36->_chunkDigests;
  }

  else
  {
    chunkDigests = 0;
  }

  v41 = chunkDigests;
  v42 = [(NSArray *)v41 count];

  if (!v42)
  {
    v43 = sub_10023E644(*(a1 + 66), @"log_code");
    v44 = v43;
    if (v43 && [v43 isEqualToString:@"LGY"])
    {
      v45 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v217 = *(a1 + 74);
        if (v217)
        {
          v217 = objc_getProperty(v217, v46, 80, 1);
        }

        v218 = v217;
        *buf = 138412290;
        v233 = v218;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[%@] Skipping cleartext validation for legacy purchase path", buf, 0xCu);
      }

      p_super = &v36->super;
      v36 = 0;
    }

    else
    {
      p_super = ASDLogHandleForCategory();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        v215 = *(a1 + 74);
        if (v215)
        {
          v215 = objc_getProperty(v215, v48, 80, 1);
        }

        v216 = v215;
        *buf = 138412290;
        v233 = v216;
        _os_log_fault_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_FAULT, "[%@] Cleartext hashes are missing, download will likely fail", buf, 0xCu);
      }
    }

    goto LABEL_45;
  }

LABEL_46:
  if (*(a1 + 42))
  {
    v49 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 74);
      if (v51)
      {
        v51 = objc_getProperty(v51, v50, 80, 1);
      }

      v52 = v51;
      *buf = 138412290;
      v233 = v52;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%@] Establishing coordinator based data consumer", buf, 0xCu);
    }

    if (v30 == 1)
    {
      v53 = 0;
    }

    else
    {
      v53 = v36;
    }

    v54 = v53;
    v55 = objc_alloc_init(CoordinatorPromiseSpecification);
    v56 = v55;
    if (v55)
    {
      v55->_promiseType = 0;
    }

    v57 = sub_10023E51C(*(a1 + 82), @"bytes_total");
    v58 = [v57 unsignedLongLongValue];
    if (v56)
    {
      v56->_archiveSize = v58;
    }

    v59 = sub_10023E0F8(*(a1 + 82), @"disk_usage");
    v60 = [v59 unsignedLongLongValue];
    if (v56)
    {
      v56->_diskSpaceNeeded = v60;
    }

    v221 = v30;

    v62 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 82) databaseID]);
    if (v56)
    {
      objc_setProperty_atomic(v56, v61, v62, 56);
    }

    v63 = v54;
    objc_opt_self();
    v64 = objc_alloc_init(NSMutableDictionary);
    [v64 setObject:&__kCFBooleanTrue forKeyedSubscript:SZExtractorOptionsDenyInvalidSymlinks];
    if (v63)
    {
      v65 = v63->_chunkDigests;
      [v64 setObject:v65 forKeyedSubscript:SZExtractorOptionsHashesArray];

      v66 = [NSNumber numberWithUnsignedInt:v63->_chunkSize];
      [v64 setObject:v66 forKeyedSubscript:SZExtractorOptionsHashedChunkSize];

      chunkType = v63->_chunkType;
      if (chunkType <= 2)
      {
        [v64 setObject:**(&off_10051F8F0 + chunkType) forKeyedSubscript:SZExtractorOptionsHashType];
      }
    }

    v68 = [v64 copy];

    if (v56)
    {
      objc_setProperty_atomic_copy(v56, v69, v68, 64);
    }

    if (sub_10023E604(*(a1 + 66), @"priority") >= 1)
    {
      v70 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v72 = *(a1 + 74);
        if (v72)
        {
          v72 = objc_getProperty(v72, v71, 80, 1);
        }

        v73 = v72;
        *buf = 138543362;
        v233 = v73;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fast extraction enabled", buf, 0xCu);
      }

      if (v56)
      {
        v56->_fastExtraction = 1;
      }
    }

    v74 = sub_100408EB0(*(a1 + 66));
    v76 = [v74 description];
    if (v56)
    {
      objc_setProperty_atomic_copy(v56, v75, v76, 40);
    }

    v77 = sub_10029B3B8([CoordinatorPromiseProvider alloc], *(a1 + 42), v222);
    if (v77)
    {
      v78 = sub_10023E0F8(*(a1 + 82), @"data_promise_id");
      v79 = sub_1001D8F64([CoordinatorPromiseDataConsumer alloc], v77, v78, v56, v222);
      v80 = v79;
      if (v79)
      {
        v81 = v79;
      }

      else
      {
        v84 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v210 = *(a1 + 74);
          if (v210)
          {
            v210 = objc_getProperty(v210, v85, 80, 1);
          }

          v219 = v210;
          v211 = *v222;
          *buf = 138412546;
          v233 = v219;
          v234 = 2114;
          v235 = v211;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "[%@] Failed to establish promise error: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v78 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v207 = *(a1 + 74);
        if (v207)
        {
          v207 = objc_getProperty(v207, v83, 80, 1);
        }

        v208 = v207;
        v209 = *v222;
        *buf = 138412546;
        v233 = v208;
        v234 = 2114;
        v235 = v209;
        _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "[%@] Failed to establish promise provider error: %{public}@", buf, 0x16u);
      }

      v80 = 0;
    }

    if (a2)
    {
      v86 = v80;
      *a2 = v80;
    }

    v82 = &OBJC_IVAR___FamilyMember__iCloudUsername;
    if (v80 && v221 == 1)
    {
      v87 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v89 = *(a1 + 74);
        if (v89)
        {
          v89 = objc_getProperty(v89, v88, 80, 1);
        }

        v90 = v89;
        *buf = 138412290;
        v233 = v90;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%@] Chaining LZMA decoding", buf, 0xCu);
      }

      v91 = v36;
      v92 = v80;
      v80 = sub_1003404F4([LZMADataConsumer alloc], v91);

      if (v80)
      {
        v80[32] = 1;
        objc_setProperty_atomic(v80, v93, v92, 40);
      }
    }

    v94 = !v225;
    if (!v80)
    {
      v94 = 1;
    }

    if ((v94 & 1) == 0)
    {
      v95 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v97 = *(a1 + 74);
        if (v97)
        {
          v97 = objc_getProperty(v97, v96, 80, 1);
        }

        v98 = v97;
        *buf = 138412290;
        v233 = v98;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "[%@] Chaining FairPlay decryption", buf, 0xCu);
      }

      v99 = v80;
      v100 = v227;
      v80 = sub_100203184([DecryptDataConsumer alloc], v100, v222);

      if (v80)
      {
        objc_setProperty_atomic(v80, v101, v99, 56);
        v102 = v80;
      }

      else
      {
        v103 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v212 = *(a1 + 74);
          if (v212)
          {
            v212 = objc_getProperty(v212, v104, 80, 1);
          }

          v213 = v212;
          v214 = *v222;
          *buf = 138412546;
          v233 = v213;
          v234 = 2114;
          v235 = v214;
          _os_log_error_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "[%@] Failed to establish decryption consumer error: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v80 = 0;
    v82 = &OBJC_IVAR___FamilyMember__iCloudUsername;
  }

  if (v7)
  {
    objc_setProperty_atomic(v7, v105, v80, 72);

    v107 = objc_getProperty(v7, v106, 72, 1);
  }

  else
  {

    v107 = 0;
  }

  v19 = v107;

  if (v19)
  {
    if (!*a2)
    {
      if (v7)
      {
        v109 = objc_getProperty(v7, v108, 72, 1);
      }

      else
      {
        v109 = 0;
      }

      *a2 = v109;
    }

    v110 = sub_10023E0F8(*(a1 + v82[111]), @"bytes_offset");
    v111 = v110;
    if (v110)
    {
      v112 = [v110 unsignedLongLongValue];
      if (v7)
      {
        *(v7 + 184) = v112;
      }
    }

    v231 = v111;
    v113 = sub_10023E0F8(*(a1 + v82[111]), @"bytes_total");
    v114 = [v113 unsignedLongLongValue];
    if (v7)
    {
      *(v7 + 104) = v114;
    }

    v115 = sub_10023E0F8(*(a1 + 66), @"client_id");
    if (!v115)
    {
      v116 = sub_10000474C();
      v115 = [v116 bundleIdentifier];
    }

    v117 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v119 = *(a1 + 74);
      if (v119)
      {
        v119 = objc_getProperty(v119, v118, 80, 1);
      }

      v120 = v119;
      *buf = 138412546;
      v233 = v120;
      v234 = 2114;
      v235 = v115;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "[%@] Attributing network to clientID: %{public}@", buf, 0x16u);
    }

    if (v7)
    {
      objc_setProperty_atomic(v7, v121, v115, 168);
    }

    v122 = sub_10023E4DC(*(a1 + v82[111]), @"locate_asset_cache");
    if (v7)
    {
      *(v7 + 14) = v122;
    }

    v123 = sub_10023E604(*(a1 + 66), @"priority");
    if (v123 < 0)
    {
      if (v123 == -2)
      {
        if (v7)
        {
          objc_setProperty_atomic(v7, v124, &off_100547788, 208);
          *(v7 + 24) = 17;
          *(v7 + 80) = 2;
          *(v7 + 15) = 1;
        }

        goto LABEL_147;
      }

      if (v123 != -1 || !v7)
      {
        goto LABEL_147;
      }

      v126 = &off_100547770;
    }

    else
    {
      if (v123)
      {
        if (v123 == 1)
        {
          if (!v7)
          {
            goto LABEL_147;
          }

          v125 = &off_100547740;
          goto LABEL_145;
        }

        if (v123 == 2 && v7)
        {
          v125 = &off_100547728;
LABEL_145:
          objc_setProperty_atomic(v7, v124, v125, 208);
          v127 = 25;
          goto LABEL_146;
        }

LABEL_147:
        if (sub_10023E604(*(a1 + 66), @"update_type") == 1)
        {
          v128 = sub_10023E0F8(*(a1 + 66), @"bundle_id");
          v130 = v128;
          if (v7 && v128)
          {
            objc_setProperty_atomic(v7, v129, v128, 96);
          }
        }

        v131 = sub_10023E604(*(a1 + 66), @"source_type");
        if (v131 > 1)
        {
          if (v131 != 2)
          {
            if (v131 == 3)
            {
              if (v7)
              {
                *(v7 + 8) = 1;
              }

              v133 = !os_variant_has_internal_content() || !sub_1003D6768();
              if (!v7)
              {
                goto LABEL_271;
              }

              *(v7 + 13) = v133;
              v132 = 4;
LABEL_174:
              *(v7 + 32) = v132;
              v134 = sub_1004095D8(*(a1 + 66));
              goto LABEL_175;
            }

            goto LABEL_163;
          }

          v132 = 3;
        }

        else
        {
          if (v131)
          {
            if (v131 == 1)
            {
              v132 = 2;
              goto LABEL_167;
            }

LABEL_163:
            v134 = sub_1004095D8(*(a1 + 66));
            if (!v7)
            {
LABEL_176:
              v229 = v115;
              v135 = sub_100408F24(*(a1 + 66));
              v136 = sub_1003B67D4(v135);

              v137 = ASDLogHandleForCategory();
              v138 = os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT);
              if ((v136 & 0xFFFFFFFFFFFFFFFDLL) == 1)
              {
                if (!v138)
                {
                  goto LABEL_186;
                }

                v140 = *(a1 + 74);
                if (v140)
                {
                  v140 = objc_getProperty(v140, v139, 80, 1);
                }

                v141 = v140;
                *buf = 138412546;
                v233 = v141;
                v234 = 2048;
                v235 = v136;
                v142 = "[%@]: Allowing access to expensive network (result = %ld)";
              }

              else
              {
                if (!v138)
                {
                  goto LABEL_186;
                }

                v143 = *(a1 + 74);
                if (v143)
                {
                  v143 = objc_getProperty(v143, v139, 80, 1);
                }

                v141 = v143;
                *buf = 138412546;
                v233 = v141;
                v234 = 2048;
                v235 = v136;
                v142 = "[%@]: Denying access to expensive network (result = %ld)";
              }

              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, v142, buf, 0x16u);

LABEL_186:
              if (v7)
              {
                *(v7 + 11) = (v136 & 0xFFFFFFFFFFFFFFFDLL) == 1;
              }

              v144 = sub_100408F24(*(a1 + 66));
              v145 = sub_1003B6718(v144);

              v146 = ASDLogHandleForCategory();
              v147 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
              if ((v145 & 0xFFFFFFFFFFFFFFFDLL) == 1)
              {
                if (!v147)
                {
                  goto LABEL_198;
                }

                v149 = *(a1 + 74);
                if (v149)
                {
                  v149 = objc_getProperty(v149, v148, 80, 1);
                }

                v150 = v149;
                *buf = 138412546;
                v233 = v150;
                v234 = 2048;
                v235 = v145;
                v151 = "[%@]: Allowing access to low data network (result = %ld)";
              }

              else
              {
                if (!v147)
                {
                  goto LABEL_198;
                }

                v152 = *(a1 + 74);
                if (v152)
                {
                  v152 = objc_getProperty(v152, v148, 80, 1);
                }

                v150 = v152;
                *buf = 138412546;
                v233 = v150;
                v234 = 2048;
                v235 = v145;
                v151 = "[%@]: Denying access to low data network (result = %ld)";
              }

              _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, v151, buf, 0x16u);

LABEL_198:
              if (v7)
              {
                *(v7 + 10) = (v145 & 0xFFFFFFFFFFFFFFFDLL) == 1;
              }

              v153 = sub_100408F24(*(a1 + 66));
              v154 = sub_1003B6890(v153);

              v155 = ASDLogHandleForCategory();
              v156 = os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT);
              if ((v154 & 2) != 0)
              {
                if (v156)
                {
                  v161 = *(a1 + 74);
                  if (v161)
                  {
                    v161 = objc_getProperty(v161, v157, 80, 1);
                  }

                  v159 = v161;
                  *buf = 138412546;
                  v233 = v159;
                  v234 = 2048;
                  v235 = v154;
                  v160 = "[%@]: Allowing access to cellular (mask = %lx)";
                  goto LABEL_209;
                }
              }

              else if (v156)
              {
                v158 = *(a1 + 74);
                if (v158)
                {
                  v158 = objc_getProperty(v158, v157, 80, 1);
                }

                v159 = v158;
                *buf = 138412546;
                v233 = v159;
                v234 = 2048;
                v235 = v154;
                v160 = "[%@]: Denying access to cellular (mask = %lx)";
LABEL_209:
                _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, v160, buf, 0x16u);
              }

              if (v7)
              {
                *(v7 + 9) = (v154 & 2) >> 1;
              }

              v163 = [_TtC9appstored20AppInstallationEvent downloadLoadURLEventMetricsOverlayWithInstall:*(a1 + 66)];
              if (v7)
              {
                objc_setProperty_atomic(v7, v162, v163, 144);
              }

              v164 = sub_10023E604(*(a1 + v82[111]), @"archive_type");
              if (v7)
              {
                v165 = 1;
                if (v164 >= 2)
                {
                  v165 = 2;
                }

                *(v7 + 216) = v165;
              }

              v167 = sub_10023E644(*(a1 + 66), @"install_volume");
              if (v7)
              {
                objc_setProperty_atomic(v7, v166, v167, 88);
              }

              v168 = sub_10023E51C(*(a1 + v82[111]), @"hash_type");
              v169 = [v168 integerValue];
              if (v7)
              {
                *(v7 + 128) = v169;
              }

              v170 = sub_10023E0F8(*(a1 + v82[111]), @"hash_size");
              v171 = [v170 unsignedIntValue];
              if (v7)
              {
                *(v7 + 16) = v171;
              }

              v228 = sub_10023E0F8(*(a1 + v82[111]), @"clear_hash_array");
              v172 = [v228 count];
              if (v7)
              {
                *(v7 + 20) = v172;
              }

              v19 = sub_10030B928([AssetRequest alloc], v5, v7);
              [v19 setCachePolicy:1];
              v173 = sub_10023E644(*(a1 + v82[111]), @"variant_id");
              v174 = v173;
              v175 = @"Universal";
              if (v173)
              {
                v175 = v173;
              }

              v226 = v175;

              v224 = sub_10023E604(*(a1 + v82[111]), @"package_type");
              v176 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
              {
                v178 = *(a1 + 74);
                v220 = v5;
                if (v178)
                {
                  v178 = objc_getProperty(v178, v177, 80, 1);
                }

                v179 = v178;
                v180 = [v19 URL];
                v181 = sub_100259550(v180);
                *buf = 138412546;
                v233 = v179;
                v234 = 2114;
                v235 = v181;
                _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "[%@] Will download package using request: %{public}@", buf, 0x16u);

                v5 = v220;
                v82 = &OBJC_IVAR___FamilyMember__iCloudUsername;
              }

              v182 = sub_10023E604(*(a1 + v82[111]), @"hash_type");
              if ((v182 - 1) >= 3)
              {
                v183 = @"Unknown";
                if (!v182)
                {
                  v183 = @"None";
                }
              }

              else
              {
                v183 = off_10051F908[v182 - 1];
              }

              v184 = v183;
              v185 = sub_10023E604(*(a1 + v82[111]), @"hash_size");
              if (v185 >= 1)
              {
                v186 = [(__CFString *)v184 stringByAppendingFormat:@"(%ld)", v185];

                v184 = v186;
              }

              v187 = sub_10023E644(*(a1 + v82[111]), @"variant_id");
              v188 = v187;
              v189 = @"Universal";
              if (v187)
              {
                v189 = v187;
              }

              v190 = v82;
              v191 = v189;

              v192 = [NSString stringWithFormat:@"IPA(%@)", v191];

              v193 = sub_10023E604(*(a1 + v190[111]), @"package_type");
              v194 = @"FullPackage";
              if (v193 == 1)
              {
                v194 = @"DeltaPackage";
              }

              v195 = v194;
              v196 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                v198 = *(a1 + 74);
                if (v198)
                {
                  v198 = objc_getProperty(v198, v197, 80, 1);
                }

                v199 = v198;
                *buf = 138413058;
                v233 = v199;
                v234 = 2114;
                v235 = v192;
                v236 = 2114;
                v237 = v184;
                v238 = 2114;
                v239 = v195;
                _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "[%@] Download parameters: %{public}@ : %{public}@ : %{public}@", buf, 0x2Au);
              }

              v201 = *(a1 + 74);
              if (v201)
              {
                v201 = objc_getProperty(v201, v200, 80, 1);
              }

              v202 = v201;
              [_TtC9appstored8QALogger assetWithUrl:v5 variant:v226 isDelta:v224 == 1 isParallel:0 logKey:v202];

              goto LABEL_249;
            }

LABEL_175:
            *(v7 + 192) = v134;
            goto LABEL_176;
          }

          v132 = 1;
        }

LABEL_167:
        if (!v7)
        {
LABEL_271:
          sub_1004095D8(*(a1 + 66));
          goto LABEL_176;
        }

        goto LABEL_174;
      }

      if (!v7)
      {
        goto LABEL_147;
      }

      v126 = &off_100547758;
    }

    objc_setProperty_atomic(v7, v124, v126, 208);
    v127 = 17;
LABEL_146:
    *(v7 + 24) = v127;
    goto LABEL_147;
  }

LABEL_249:

  return v19;
}

id *sub_10027E39C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_10027E7D4([AppInstallDownloadResponse alloc], a2, 1, 0, 0, v4);

  return v5;
}

void sub_10027E6B8(uint64_t a1, void *a2)
{
  self = a2;
  objc_storeStrong((*(a1 + 32) + 90), a2);
  v5 = *(a1 + 40);
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  (*(v5 + 16))(v5, Property);
}

id *sub_10027E7D4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = AppInstallDownloadResponse;
    v15 = objc_msgSendSuper2(&v17, "init");
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a5);
      a1[3] = a2;
      a1[7] = a3;
      objc_storeStrong(a1 + 8, a4);
      objc_storeStrong(a1 + 4, a6);
    }
  }

  return a1;
}

id sub_10027E908(id a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = RestoreInfo;
    a1 = objc_msgSendSuper2(&v27, "init");
    if (a1)
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 3);
      *(a1 + 3) = v6;

      v8 = objc_opt_new();
      v9 = *(a1 + 4);
      *(a1 + 4) = v8;

      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      *(a1 + 8) = a3;
      v10 = +[BagService appstoredService];
      v11 = [v10 lastBag];
      *(a1 + 2) = [v11 integerForKey:@"p2-content-restore/max-item-count" defaultValue:5];

      v12 = v5;
      v13 = sub_100289018();
      v14 = objc_alloc_init(_TtC9appstored6LogKey);
      v15 = +[ActiveAccountObserver sharedInstance];
      v16 = [v15 oneAccountDSIDWithLogKey:v14];
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      v19 = sub_1003C27BC();
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10027EC00;
      v28[3] = &unk_10051F950;
      v28[4] = a1;
      v20 = v16;
      v29 = v20;
      v21 = v12;
      v30 = v21;
      v33 = v13;
      v22 = v18;
      v31 = v22;
      v23 = v17;
      v32 = v23;
      [v19 modifyUsingTransaction:v28];

      if ([v23 count])
      {
        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = [v23 componentsJoinedByString:{@", "}];
          *buf = 138543362;
          v35 = v26;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Hard failing coordinators for apps: [%{public}@]", buf, 0xCu);
        }

        sub_10028C78C(RestoreManager, v23, @"Restore preflight accounts");
      }
    }
  }

  return a1;
}

uint64_t sub_10027EC00(uint64_t a1, void *a2)
{
  v28 = a2;
  v31 = objc_opt_new();
  v30 = +[RestoreAppInstall defaultProperties];
  v27 = sub_1003DAF34();
  v42[0] = v27;
  v3 = sub_1003DB080();
  v42[1] = v3;
  v4 = [NSArray arrayWithObjects:v42 count:2];
  v5 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];
  v43[0] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_1005477B8];
  v41[0] = v6;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_1005477D0];
  v41[1] = v7;
  v8 = [NSArray arrayWithObjects:v41 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v8];
  v43[1] = v9;
  v10 = [NSArray arrayWithObjects:v43 count:2];
  v11 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [v28 connection];
  v13 = sub_1002D3F5C(AppInstallEntity, v12, v11);

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10027F02C;
  v32[3] = &unk_10051F928;
  v14 = v28;
  v33 = v14;
  v29 = *(a1 + 32);
  v15 = *(&v29 + 1);
  v16 = *(a1 + 48);
  v38 = *(a1 + 72);
  v17 = *(a1 + 56);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v34 = v29;
  v35 = v18;
  v36 = *(a1 + 64);
  v19 = v31;
  v37 = v19;
  [v13 enumeratePersistentIDsAndProperties:v30 usingBlock:v32];
  if ([v19 count])
  {
    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = [v19 count];
      *buf = 134217984;
      v40 = v26;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failing %ld restores due to account failures", buf, 0xCu);
    }

    v21 = sub_100207ABC(v14, v19);
    if (*(a1 + 48))
    {
      [*(a1 + 64) addObjectsFromArray:v19];
    }
  }

  if ([*(a1 + 56) count])
  {
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 56) count];
      *buf = 134217984;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Importing %ld restores that are waiting to bootstrap later", buf, 0xCu);
    }

    v24 = sub_100207ABC(v14, *(a1 + 56));
  }

  return 1;
}

void sub_10027F02C(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v6];
  v34 = [(SQLiteEntity *)v6 valueForProperty:@"bootstrapped"];
  v33 = [v34 integerValue];
  v8 = sub_1003402E8(v6, @"priority");
  v9 = *(a1 + 40);
  v35 = v7;
  if (v8 || v9 && (*(v9 + 8) & 1) != 0)
  {
    v10 = 40;
    v11 = 24;
  }

  else
  {
    v10 = 48;
    v11 = 32;
  }

  v36 = *(v9 + v11);
  v12 = [RestoreAppInstall alloc];
  v13 = +[RestoreAppInstall defaultProperties];
  v14 = [(SQLiteMemoryEntity *)v12 initWithDatabaseEntity:v6 properties:v13];

  v15 = *(a1 + 48);
  v37 = 0;
  v16 = sub_1002865FC(RestoreManager, v14, v15, &v37);
  v17 = v37;
  if (*(a1 + 56))
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  if (v18)
  {
    if (!v16)
    {
      goto LABEL_29;
    }

LABEL_17:
    v25 = [v16 ams_DSID];
    v26 = [v36 objectForKeyedSubscript:v25];
    if (!v26)
    {
      v26 = objc_opt_new();
      [v36 setObject:v26 forKeyedSubscript:v25];
    }

    v27 = *(a1 + 40);
    if (v27)
    {
      ++*(v27 + v10);
    }

    v28 = v26;
    if (*(a1 + 88) == 1)
    {
      v28 = *(a1 + 64);
    }

    [v28 addObject:v14];

    v19 = 0;
    v29 = v35;
    goto LABEL_24;
  }

  v20 = [v16 ams_DSID];
  v21 = [v20 isEqualToNumber:*(a1 + 56)];

  if (v21)
  {
    goto LABEL_17;
  }

  v22 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v16 ams_DSID];
    v24 = *(a1 + 56);
    *buf = 138412802;
    v39 = v35;
    v40 = 2114;
    v41 = v23;
    v42 = 2114;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] Skipping restore accountID: %{public}@ not matching accountID: %{public}@", buf, 0x20u);
  }

LABEL_29:
  if (ASDErrorIsEqual())
  {
    sub_100398948(v14, v17);
    [*(a1 + 72) addObject:v14];
    [*(a1 + 80) addObject:v14];
    v29 = v35;
    goto LABEL_42;
  }

  if (v17)
  {
    v32 = v19;
  }

  else
  {
    v32 = 1;
  }

  v29 = v35;
  if (v32)
  {
LABEL_24:
    if ((v19 & 1) != 0 || v33 == 2)
    {
      goto LABEL_42;
    }

    if (*(a1 + 88) == 1)
    {
      sub_10023E000(v14, &off_1005477E8, @"bootstrapped");
      [(SQLiteEntity *)v6 setValue:&off_1005477E8 forProperty:@"bootstrapped"];
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v29;
        v31 = "[%@] Bootstrap has been set as needing distributor";
LABEL_40:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
      }
    }

    else
    {
      sub_10023E000(v14, &off_1005477B8, @"bootstrapped");
      [(SQLiteEntity *)v6 setValue:&off_1005477B8 forProperty:@"bootstrapped"];
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v29;
        v31 = "[%@] Bootstrap has been started";
        goto LABEL_40;
      }
    }

    goto LABEL_42;
  }

  sub_100398948(v14, v17);
  [*(a1 + 80) addObject:v14];
  if (ASDErrorIsEqual())
  {
    [*(a1 + 72) addObject:v14];
  }

LABEL_42:
}

id sub_10027F51C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ImportJobsForDemotedAppsTask;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = *(a1 + 5);
      *(a1 + 5) = v4;

      *(a1 + 48) = 1;
    }
  }

  return a1;
}

void sub_10027F8F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [LSApplicationRecord alloc];
  v5 = [v3 bundleIdentifier];
  v6 = [v4 initWithBundleIdentifierOfSystemPlaceholder:v5 error:0];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 bundleIdentifier];
    if (v7)
    {
      v9 = [[ASDSystemAppMetadata alloc] initWithBundleID:v8];
      [v9 setUserInitiated:v7[48]];
      v10 = sub_1001F6394();
      v31 = v9;
      v11 = [NSArray arrayWithObjects:&v31 count:1];
      *&v25 = _NSConcreteStackBlock;
      *(&v25 + 1) = 3221225472;
      v26 = sub_1002803AC;
      v27 = &unk_10051FA18;
      v28 = v7;
      v29 = v8;
      [v10 installSystemApps:v11 onPairedDevice:0 withReplyHandler:&v25];
    }
  }

  else
  {
    v12 = sub_1003339E4([DemotedApplication alloc], v3);
    v13 = v12;
    if (v12 && v12[10] == 4 && (!*(a1 + 32) || (v14 = v12, v31 = 0, v32 = &v31, v33 = 0x2020000000, v34 = 0, sub_1002BB3F0(), v15 = objc_claimAutoreleasedReturnValue(), *&v25 = _NSConcreteStackBlock, *(&v25 + 1) = 3221225472, v26 = sub_100280164, v27 = &unk_10051F9F0, v16 = v14, v29 = &v31, v30 = 0, v28 = v16, [v15 readUsingSession:&v25], v15, v17 = v32[3], v28, _Block_object_dispose(&v31, 8), v16, !v17)))
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v3 bundleIdentifier];
        LODWORD(v25) = 138543362;
        *(&v25 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No update available for 32-bit app: %{public}@", &v25, 0xCu);
      }

      if (*(*(a1 + 32) + 48) == 1)
      {
        v24 = v13[1];
        IXDisplayUserPresentableErrorForApp();
      }
    }

    else
    {
      v18 = sub_100333B80(v13);
      v19 = v18;
      if (*(*(a1 + 32) + 48))
      {
        v20 = &off_100547800;
      }

      else
      {
        v20 = &__kCFBooleanTrue;
      }

      v21 = &off_1005200E0;
      if (!*(*(a1 + 32) + 48))
      {
        v21 = &off_100520128;
      }

      sub_10023E000(v18, v20, *v21);
      if (v19)
      {
        [*(a1 + 40) addObject:v19];
      }
    }
  }
}

void sub_10027FCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10027FCC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(*(a1 + 32) + 40) count])
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = *(*(a1 + 32) + 40);
      v8 = v6;
      v9 = [v7 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v38 = v6;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Checking if we can re-hydrate bundleIDs: [%{public}@]", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = *(*(a1 + 32) + 40);
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v15 allowPlaceholder:1 error:0];
          v18 = v17;
          if (v17 && (([v17 isPlaceholder] & 1) != 0 || objc_msgSend(v18, "installType") == 7 || objc_msgSend(v18, "installType") == 9))
          {
            v19 = objc_autoreleasePoolPush();
            (*(*(a1 + 40) + 16))();
            objc_autoreleasePoolPop(v19);
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v20 = [LSApplicationRecord enumeratorWithOptions:64];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100280030;
    v30[3] = &unk_10051F9A0;
    v30[4] = *(a1 + 32);
    [v20 setFilter:v30];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v20;
    v21 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v10);
          }

          v25 = objc_autoreleasePoolPush();
          (*(*(a1 + 40) + 16))(*(a1 + 40));
          objc_autoreleasePoolPop(v25);
        }

        v22 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v22);
    }
  }
}

BOOL sub_100280030(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 installType] == 10 && objc_msgSend(v2, "placeholderFailureReason") == 11)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = v4;
      v6 = [v2 bundleIdentifier];
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Promoting previously failed upgrade with bundleID: %{public}@", &v9, 0x16u);
    }

    v7 = 1;
  }

  else
  {
    v7 = [v2 installType] == 9;
  }

  return v7;
}

void sub_100280164(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  if (v3)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v6];
  v20[0] = v7;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"update_state" equalToValue:&off_100547800];
  v20[1] = v8;
  v9 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"store_software_version_id" value:v9 comparisonType:5];
  v20[2] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:3];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

  v13 = [v4 connection];

  v14 = sub_1002D3DF0(AppUpdateEntity, v13, v12);

  if (a1[6])
  {
    v15 = [AppUpdateMemoryEntity alloc];
    v19 = @"store_software_version_id";
    v16 = [NSArray arrayWithObjects:&v19 count:1];
    v17 = [(SQLiteMemoryEntity *)v15 initWithDatabaseEntity:v14 properties:v16];
    v18 = [(AppUpdateMemoryEntity *)v17 evid];
    *(*(a1[5] + 8) + 24) = [v18 unsignedLongLongValue];
  }

  else
  {
    *(*(a1[5] + 8) + 24) = v14 != 0;
  }
}

void sub_1002803AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v6;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Promoting system app %{public}@ failed: %{public}@", &v15, 0x20u);
LABEL_6:
    }
  }

  else if (v8)
  {
    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v11 = v12;
    v14 = [v5 firstObject];
    v15 = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Promoting system app %{public}@ (%{public}@)", &v15, 0x20u);

    goto LABEL_6;
  }
}

void *sub_100280620(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a1)
  {
    v8 = a2;
    v9 = [[NSDictionary alloc] initWithContentsOfURL:v8 error:a4];

    if (v9)
    {
      v10 = sub_1002806CC(a1, v9, v7, 0);
    }

    else
    {

      v10 = 0;
    }

    a1 = v10;
  }

  return a1;
}

void *sub_1002806CC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v38.receiver = a1;
    v38.super_class = ODRManifest;
    a1 = objc_msgSendSuper2(&v38, "initWithDatabaseID:propertyValues:externalPropertyValues:", 0, &__NSDictionary0__struct, &__NSDictionary0__struct);
    if (a1)
    {
      v9 = [v7 objectForKeyedSubscript:@"softwareVersionExternalIdentifier"];
      if (!v9)
      {
        v9 = [v7 objectForKeyedSubscript:@"betaExternalVersionId"];
      }

      v33 = v9;
      sub_10023E000(a1, v9, @"evid");
      sub_10023E000(a1, v8, @"bundle_id");
      v10 = [NSNumber numberWithInt:a4 == 1];
      sub_10023E000(a1, v10, @"is_store_based");

      v11 = [v7 objectForKeyedSubscript:@"itemId"];
      sub_10023E000(a1, v11, @"item_id");

      v12 = [v7 objectForKeyedSubscript:@"last_modification_date"];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = +[NSDate date];
      }

      v15 = v14;

      sub_10023E000(a1, v15, @"local_cache_allowed");
      v16 = [v7 objectForKeyedSubscript:@"local-cache-allowed"];
      sub_10023E000(a1, v16, @"local_cache_allowed");

      v17 = [v7 objectForKeyedSubscript:@"storage_id"];
      v18 = v17;
      v32 = v15;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v20 = +[NSUUID UUID];
        v19 = [v20 UUIDString];
      }

      sub_10023E000(a1, v19, @"storage_id");
      v21 = [v7 objectForKeyedSubscript:@"thinningVariant"];
      sub_10023E000(a1, v21, @"thinning_variant");

      v22 = objc_opt_new();
      v23 = [v7 objectForKeyedSubscript:@"resources"];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v35;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = sub_100268CD8([ODRAssetPack alloc], *(*(&v34 + 1) + 8 * i), v8);
            [v22 addObject:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v25);
      }

      v29 = [NSArray arrayWithArray:v22];
      v30 = a1[5];
      a1[5] = v29;
    }
  }

  return a1;
}

void *sub_100280A90(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a1)
  {
    v8 = [NSPropertyListSerialization propertyListWithData:a2 options:0 format:0 error:0];
    if (v8)
    {
      v9 = sub_1002806CC(a1, v8, v7, a4);
    }

    else
    {

      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100280B34(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100280B6C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E51C(a1, @"evid");
    v1 = vars8;
  }

  return a1;
}

id sub_100280BA4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E0F8(a1, @"last_modification_date");
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_100280BDC(uint64_t a1)
{
  if (!a1 || !sub_10023E4DC(a1, @"is_store_based"))
  {
    return 0;
  }

  return sub_10023E4DC(a1, @"local_cache_allowed");
}

id sub_100280C3C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"item_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100280C74(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"storage_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100280CAC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"thinning_variant");
    v1 = vars8;
  }

  return a1;
}

id sub_100280CE4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"version");
    v1 = vars8;
  }

  return a1;
}

id *sub_100280D1C(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1[5];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = sub_100269134(*(*(&v10 + 1) + 8 * i));
          [v2 addObject:{v8, v10}];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    v1 = [NSArray arrayWithArray:v2];
  }

  return v1;
}

id *sub_100280E78(id *a1)
{
  if (a1)
  {
    a1 = a1[5];
    v1 = vars8;
  }

  return a1;
}

id sub_100280EB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = sub_100269134(v8);
          v10 = [v9 isEqualToString:{v3, v12}];

          if (v10)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100281010(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:a2];

  return v4;
}

void sub_100281080(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

LogPushConnection *sub_1002810F4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(LogPushConnection);
  sub_10028563C(v6, v5);

  v7 = sub_100229BF8(v4);

  sub_100285654(v6, v7);

  return v6;
}

id *sub_100281388(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_24;
  }

  v36.receiver = a1;
  v36.super_class = SystemAppLookupItem;
  a1 = objc_msgSendSuper2(&v36, "init");
  if (!a1)
  {
    goto LABEL_24;
  }

  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 copy];
    v9 = a1[9];
    a1[9] = v8;
  }

  v10 = [v6 objectForKeyedSubscript:@"_IsZipStreamable"];

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 8) = [v10 BOOLValue];
  }

  v11 = [v6 objectForKeyedSubscript:@"_DownloadSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 copy];
    v13 = a1[4];
    a1[4] = v12;
  }

  v14 = [v6 objectForKeyedSubscript:@"_Measurement"];
  v15 = sub_10028170C(SystemAppLookupItem, v14);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 copy];
    v17 = a1[7];
    a1[7] = v16;

    v18 = a1[6];
    a1[6] = &off_100547818;
  }

  v19 = [v6 objectForKeyedSubscript:@"_Measurement-SHA256"];
  v20 = sub_10028170C(SystemAppLookupItem, v19);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [v20 copy];
    v22 = a1[7];
    a1[7] = v21;

    v23 = a1[6];
    a1[6] = &off_100547830;
  }

  v24 = [v6 objectForKeyedSubscript:@"_StartOfDataRange"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [v24 copy];
    v26 = a1[3];
    a1[3] = v25;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v26 = [NSScanner scannerWithString:v24];
    v35 = 0;
    if ([v26 scanUnsignedLongLong:&v35])
    {
      v27 = [NSNumber numberWithUnsignedLongLong:v35];
      v28 = a1[3];
      a1[3] = v27;
    }
  }

LABEL_19:
  v29 = [v6 objectForKeyedSubscript:@"AppBundleID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(a1 + 2, v29);
    v30 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v29 error:0];
    v31 = [v30 localizedName];

    if (v31)
    {
      v32 = [v31 copy];
      v33 = a1[8];
      a1[8] = v32;
    }
  }

LABEL_24:
  return a1;
}

id sub_10028170C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = sub_100382B90(HashDigest, [v2 bytes], objc_msgSend(v2, "length"));
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1002818B4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = ODRAppReviewClient;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRAppReviewProtocol];
      [v3 setExportedInterface:v4];

      v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ODRAppReviewProtocol];
      [v3 setRemoteObjectInterface:v5];

      [v3 setExportedObject:a1];
      [v3 resume];
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Created the app review client.", v8, 2u);
      }
    }
  }

  return a1;
}

BOOL sub_100281CFC(void *a1, uint64_t *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  if (v4)
  {
    return sub_10021C310(a2, v3, v4, v5, 0);
  }

  else
  {
    return sub_10021A80C(a2, v3, v5, 0);
  }
}

id sub_100281D24(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v6 = a2;
    v3 = a2;
    v4 = [NSArray arrayWithObjects:&v6 count:1];

    v2 = [v2 initWithPurchaseInfos:{v4, v6}];
  }

  return v2;
}

id *sub_100282080(id *a1)
{
  if (a1)
  {
    a1 = [a1[1] objectEnumerator];
    v1 = vars8;
  }

  return a1;
}

id sub_1002820B4(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 8) firstObject];
    v2 = [v1 requestToken];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100282110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v4 = ASDErrorWithDescription();
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 8);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v16;
      *&v7 = 138412546;
      v14 = v7;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 purchaseState] != 2)
          {
            v12 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [v11 logKey];
              *buf = v14;
              v20 = v13;
              v21 = 2114;
              v22 = v4;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@] Canceling purchase due to error: %{public}@", buf, 0x16u);
            }

            sub_1002822EC(a1, v4, v11);
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v8);
    }
  }
}

void sub_1002822EC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v5 setPurchaseState:2];
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 logKey];
    *buf = 138412290;
    v58 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Canceling the install coordinator for the failed purchase…", buf, 0xCu);
  }

  v8 = [v5 coordinator];
  v9 = v8;
  if (v8 && ([v8 isComplete] & 1) == 0)
  {
    v10 = [v4 domain];
    v11 = [v4 code];
    v12 = ASDErrorWithSafeUserInfo();
    v13 = [v12 userInfo];
    v14 = [NSError errorWithDomain:v10 code:v11 userInfo:v13];
    v54 = 0;
    v15 = [v9 cancelForReason:v14 client:1 error:&v54];
    v16 = v54;
    if ((v15 & 1) == 0)
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v48 = [v5 logKey];
        *buf = 138412546;
        v58 = v48;
        v59 = 2114;
        v60 = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Failed to cancel the install coordinator for the failed purchase: %{public}@", buf, 0x16u);
      }
    }

    v46 = v16;
  }

  else
  {
    v46 = 0;
  }

  v18 = objc_opt_new();
  v19 = [v5 checkStoreQueueReason];
  [v18 setObject:v19 forKeyedSubscript:@"checkStoreQueueReason"];

  v20 = sub_1003429BC(v4);
  [v18 setObject:v20 forKeyedSubscript:@"error"];

  [v18 setObject:&off_100547848 forKeyedSubscript:@"finalPhase"];
  v21 = [v5 logCode];
  [v18 setObject:v21 forKeyedSubscript:@"installCode"];

  v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isUserInitiated]);
  [v18 setObject:v22 forKeyedSubscript:@"isUserInitiated"];

  v23 = [v5 itemID];
  [v18 setObject:v23 forKeyedSubscript:@"itemID"];

  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isPreorderFulfillment]);
  [v18 setObject:v24 forKeyedSubscript:@"preorder"];

  v25 = [v5 clientInfo];
  v26 = [v25 bundleIdentifier];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &stru_100529300;
  }

  [v18 setObject:v28 forKeyedSubscript:{@"responsibleClientID", v46}];

  v29 = sub_100342D24(v4);
  [v18 setObject:v29 forKeyedSubscript:@"serverDialogID"];

  [v5 expectedSoftwarePlatform];
  v30 = [NSNumber numberWithInteger:1];
  [v18 setObject:v30 forKeyedSubscript:@"softwarePlatform"];

  if ([v5 expectedPackaging] < 2)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = [NSNumber numberWithInteger:v31];
  [v18 setObject:v32 forKeyedSubscript:@"packageFormat"];

  v33 = [v5 account];
  v34 = [v33 ams_storefront];
  [v18 setObject:v34 forKeyedSubscript:@"storefront"];

  v35 = [v5 buyParams];
  v56[0] = AMSBuyParamPropertyExternalVersionId;
  v56[1] = AMSBuyParamPropertyAppExtVrsId;
  v56[2] = AMSBuyParamPropertySoftwareExternalVersionId;
  [NSArray arrayWithObjects:v56 count:3];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v53 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v51;
    while (2)
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [v35 parameterForKey:*(*(&v50 + 1) + 8 * i)];
        if (v41)
        {
          v42 = v41;
          [v18 setObject:v41 forKeyedSubscript:@"externalVersionID"];

          goto LABEL_27;
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  sub_1003F25C4(Analytics, v18, 16);
  v43 = objc_alloc_init(ASDPurchaseResponseItem);
  v44 = [v5 bundleID];
  [v43 _setBundleID:v44];

  v45 = [v5 purchase];
  [v43 _setPurchase:v45];

  [v43 _setError:v4];
  [v43 _setSuccess:0];
  sub_100282C8C(a1, v43);
}

void sub_100282930(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if ([v6 purchaseState] == 2)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = [v7 logKey];
        *buf = 138412290;
        v34 = v9;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[%@] Refusing to re-complete purchase", buf, 0xCu);
      }

      goto LABEL_22;
    }

    [v7 setPurchaseState:2];
    v8 = [v7 metricsType];
    v10 = [v5 firstObject];
    v11 = [v10 status];

    if (v11 == 1 || v8)
    {
      if (!v8)
      {
LABEL_21:
        v23 = [[ASDPurchaseResponseItem alloc] initWithResults:v5];
        v24 = [v7 bundleID];
        [v23 _setBundleID:v24];

        v25 = [v7 itemID];
        [v23 _setItemID:v25];

        v26 = [v7 purchase];
        [v23 _setPurchase:v26];

        [v23 _setSuccess:1];
        sub_100282C8C(a1, v23);

LABEL_22:
        goto LABEL_23;
      }

      if ([v7 purchaseOnly])
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      v14 = sub_100305C4C();
      Property = [v7 itemResponse];
      v29 = v13;
      v30 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v16, 40, 1);
      }

      v31 = v14;
      v32 = Property;
      v17 = [v7 bundleID];
      v18 = v17;
      if (!v17)
      {
        v28 = [v5 firstObject];
        v18 = [v28 bundleID];
      }

      v19 = [v7 itemID];
      v20 = [v8 unsignedCharValue];
      v21 = [v7 finalizedBlindedData];
      v22 = [v21 objectForKeyedSubscript:@"type02"];
      v27 = v20;
      v12 = v31;
      sub_100306DD4(v31, 1, v32, v29, v18, v19, 1, 0, v27, v22);

      if (!v17)
      {
      }
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "PurchaseInfo.metricsType wasn't set", buf, 2u);
      }
    }

    goto LABEL_21;
  }

LABEL_23:
}

void sub_100282C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 16);
  objc_sync_enter(v4);
  [*(a1 + 16) addObject:v3];
  v5 = [*(a1 + 8) count];
  if (v5 == [*(a1 + 16) count])
  {
    v6 = [[ASDPurchaseResponse alloc] initWithPurchaseResponseItems:*(a1 + 16)];
    v7 = dispatch_get_global_queue(21, 0);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100282F84;
    v9[3] = &unk_10051B570;
    v9[4] = a1;
    v10 = v6;
    v8 = v6;
    dispatch_async(v7, v9);
  }

  objc_sync_exit(v4);
}

void sub_100282DC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if ([v6 purchaseState] == 2)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = [v7 logKey];
        v12 = 138412546;
        v13 = v10;
        v14 = 2114;
        v15 = v5;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[%@] Refusing to fail completed purchase (error was: %{public}@)", &v12, 0x16u);
      }
    }

    else
    {
      if (!v5)
      {
        v5 = ASDErrorWithDescription();
      }

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v7 logKey];
        v12 = 138412546;
        v13 = v11;
        v14 = 2114;
        v15 = v5;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Failing purchase with error: %{public}@", &v12, 0x16u);
      }

      sub_1002822EC(a1, v5, v7);
    }
  }
}

void sub_100282F98(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic_copy(a1, newValue, newValue, 32);
  }
}

id sub_100282FFC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(XDCAppMetadata);
  v4 = v3;
  if (v3)
  {
    *&v3->_has |= 0x10u;
    v3->_type = 0;
    v5 = [v2 hideUserPrompts];
    *(v4 + 208) |= 0x1000u;
    *(v4 + 207) = v5;
  }

  else
  {
    [v2 hideUserPrompts];
  }

  v6 = [v2 manifestURL];

  if (v6)
  {
    v7 = [v6 absoluteString];
    sub_1002FDA38(v4, v7);
  }

  return v4;
}

XDCAppMetadata *sub_1002830E8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(XDCAppMetadata);
  v4 = v3;
  if (v3)
  {
    *&v3->_has |= 0x10u;
    v3->_type = 2;
  }

  v5 = [v2 bundleID];

  if (v5)
  {
    sub_1002FD900(v4, v5);
  }

  return v4;
}

id sub_100283194(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(XDCAppMetadata);
  v4 = v3;
  if (v3)
  {
    *&v3->_has |= 0x10u;
    v3->_type = 3;
  }

  v5 = [v2 account];
  v6 = [v5 ams_DSID];

  if (v6)
  {
    v7 = [v6 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 8u;
      *(v4 + 32) = v7;
    }
  }

  v8 = [v2 account];
  v9 = [v8 ams_altDSID];

  if (v9)
  {
    sub_1002FD8D0(v4, v9);
  }

  v10 = [v2 account];
  v11 = [v10 username];

  if (v11)
  {
    sub_1002FD8E8(v4, v11);
  }

  v12 = [v2 artworkURL];

  if (v12)
  {
    v13 = [v12 absoluteString];
    sub_1002FD930(v4, v13);
  }

  v14 = [v2 betaBuildGroupID];

  if (v14)
  {
    sub_1002FDA50(v4, v14);
  }

  v15 = [v2 bundleID];

  if (v15)
  {
    sub_1002FD900(v4, v15);
  }

  v16 = [v2 externalVersionIdentifier];

  if (v16)
  {
    v17 = [v16 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 2u;
      *(v4 + 16) = v17;
    }
  }

  v18 = [v2 itemID];

  if (v18)
  {
    v19 = [v18 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 4u;
      *(v4 + 24) = v19;
    }
  }

  v20 = [v2 itemName];

  if (v20)
  {
    sub_1002FD948(v4, v20);
  }

  v21 = [v2 messagesArtworkURL];

  if (v21)
  {
    v22 = [v21 absoluteString];
    sub_1002FD960(v4, v22);
  }

  v23 = [v2 packageDPInfo];

  if (v23)
  {
    sub_1002FD978(v4, v23);
  }

  v24 = [v2 packageSINF];

  if (v24)
  {
    sub_1002FD990(v4, v24);
  }

  v25 = [v2 packageURL];

  if (v25)
  {
    v26 = [v25 absoluteString];
    sub_1002FD9A8(v4, v26);
  }

  v27 = [v2 storeCohort];

  if (v27)
  {
    sub_1002FD9C0(v4, v27);
  }

  v28 = [v2 storeFront];

  if (v28)
  {
    sub_1002FD9D8(v4, v28);
  }

  v29 = [v2 variantID];

  if (v29)
  {
    sub_1002FDA08(v4, v29);
  }

  v30 = [v2 vendorName];

  if (v30)
  {
    sub_1002FD9F0(v4, v30);
  }

  if (![v2 hasMessagesExtension])
  {
    v31 = [v2 isLaunchProhibited];
    if (!v4 || (v31 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_46:
    *(v4 + 208) |= 0x400u;
    *(v4 + 205) = 1;
    goto LABEL_47;
  }

  if (!v4)
  {
    [v2 isLaunchProhibited];
    goto LABEL_47;
  }

  *(v4 + 208) |= 0x20u;
  *(v4 + 200) = 1;
  if ([v2 isLaunchProhibited])
  {
    goto LABEL_46;
  }

LABEL_47:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = [v2 provisioningProfiles];
  v33 = [v32 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v39;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v32);
        }

        sub_1002FAD58(v4, *(*(&v38 + 1) + 8 * i));
      }

      v34 = [v32 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v34);
  }

  return v4;
}

id sub_100283694(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(XDCAppMetadata);
  v4 = v3;
  if (v3)
  {
    *&v3->_has |= 0x10u;
    v3->_type = 4;
  }

  v5 = [v2 altDSID];
  if (v5)
  {
    sub_1002FD8D0(v4, v5);
  }

  v6 = [v2 appleID];

  if (v6)
  {
    sub_1002FD8E8(v4, v6);
  }

  v7 = [v2 bundleID];

  if (v7)
  {
    sub_1002FD900(v4, v7);
  }

  v8 = [v2 redownloadParams];

  if (v8)
  {
    sub_1002FD918(v4, v8);
  }

  v9 = [v2 downloaderID];

  if (v9)
  {
    v10 = [v9 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 1u;
      *(v4 + 8) = v10;
    }
  }

  v11 = [v2 externalVersionID];

  if (v11)
  {
    v12 = [v11 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 2u;
      *(v4 + 16) = v12;
    }
  }

  v13 = [v2 itemID];

  if (v13)
  {
    v14 = [v13 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 4u;
      *(v4 + 24) = v14;
    }
  }

  v15 = [v2 purchaserID];

  if (v15)
  {
    v16 = [v15 unsignedLongLongValue];
    if (v4)
    {
      *(v4 + 208) |= 8u;
      *(v4 + 32) = v16;
      v17 = [v2 skipIfInstalled];
LABEL_24:
      *(v4 + 208) |= 0x800u;
      *(v4 + 206) = v17;
      v18 = [v2 isUserInitiated];
      *(v4 + 208) |= 0x200u;
      *(v4 + 204) = v18;
      goto LABEL_25;
    }

    [v2 skipIfInstalled];
  }

  else
  {
    v17 = [v2 skipIfInstalled];
    if (v4)
    {
      goto LABEL_24;
    }
  }

  [v2 isUserInitiated];
LABEL_25:

  return v4;
}

id *sub_100283920(id *a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1[11])
    {
      v2 = [NSUUID alloc];
      v3 = v1[11];
      v1 = [v2 initWithUUIDString:v3];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_1002839AC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 UUIDString];
    objc_storeStrong((a1 + 88), v3);
  }
}

_TtC9appstored6LogKey *sub_100283A14(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 88);
    if (v1)
    {
      v2 = [[_TtC9appstored6LogKey alloc] initWithBaseUUIDString:v1];
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

id sub_100283A8C(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_25;
  }

  v2 = [ASDApp alloc];
  v3 = *(a1 + 72);
  v4 = [v2 initWithBundleID:v3];

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = v5;
    [v4 setBundleVersion:v6];
  }

  v7 = *(a1 + 208);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    [v4 setStoreExternalVersionID:*(a1 + 16)];
    if ((*(a1 + 208) & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v4 setDownloaderDSID:*(a1 + 8)];
  v7 = *(a1 + 208);
  if ((v7 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  if ((v7 & 4) != 0)
  {
LABEL_7:
    [v4 setStoreItemID:*(a1 + 24)];
  }

LABEL_8:
  v8 = *(a1 + 160);
  if (v8)
  {
    v9 = v8;
    [v4 setStoreCohort:v9];
  }

  v10 = *(a1 + 208);
  if (v10 & 0x40) != 0 && (*(a1 + 201))
  {
    v11 = 1;
  }

  else if (*(a1 + 208) & 0x100) != 0 && (*(a1 + 203))
  {
    v11 = 512;
  }

  else if ((v10 & 0x80) != 0)
  {
    if (*(a1 + 202))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  [v4 setStatus:v11];
LABEL_25:

  return v4;
}

id sub_100283C38()
{
  objc_opt_self();
  if (qword_1005AA9D0 != -1)
  {
    dispatch_once(&qword_1005AA9D0, &stru_10051FA78);
  }

  v0 = qword_1005AA9D8;

  return v0;
}

void sub_100283C90(id a1)
{
  v1 = objc_alloc_init(RestoreService);
  v2 = qword_1005AA9D8;
  qword_1005AA9D8 = v1;
}

dispatch_queue_t *sub_100283DF4(dispatch_queue_t *result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(result[2]);
    v2 = sub_1002845C8(RestoreService, v1[1]);
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(RestoreService) Releasing parked download estimate requests: %lu", buf, 0xCu);
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v1[4];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    return [v1[4] removeAllObjects];
  }

  return result;
}

void sub_100283F78(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100283FF4;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

dispatch_queue_t *sub_100283FF4(dispatch_queue_t *result)
{
  v3 = result[4];
  if (!LOBYTE(v3[3].isa))
  {
    v7 = v1;
    v8 = v2;
    v4 = result;
    LOBYTE(v3[3].isa) = 1;
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "(RestoreService) Restore state -> NONE", v6, 2u);
    }

    return sub_100283DF4(v4[4]);
  }

  return result;
}

void sub_10028408C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100284108;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100284108(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 2;
  v1 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "(RestoreService) Restore state -> PREPARING", v2, 2u);
  }
}

void sub_100284184(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100284200;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

dispatch_queue_t *sub_100284200(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 3;
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "(RestoreService) Restore state -> RUNNING", v4, 2u);
  }

  return sub_100283DF4(*(a1 + 32));
}

uint64_t sub_100284348(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(RestoreService) clearFollowupsForAccountID: %@", &v6, 0xCu);
  }

  v4 = sub_1002856D4();
  sub_100287648(v4, *(a1 + 32));

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_1002844C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_10:
    v5 = *(v2 + 32);
    v6 = objc_retainBlock(*(a1 + 40));
    [v5 addObject:v6];
    goto LABEL_11;
  }

  if (!*(v2 + 24))
  {
    goto LABEL_10;
  }

  if (v3 != 1)
  {
LABEL_4:
    v6 = ASDErrorWithUserInfoAndFormat();
    (*(*(a1 + 40) + 16))();
LABEL_11:

    return;
  }

LABEL_7:
  sub_1002845C8(RestoreService, *(v2 + 8));
  v4 = *(*(a1 + 40) + 16);

  v4();
}

uint64_t sub_1002845C8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100284928;
  v5[3] = &unk_10051CCC8;
  v5[4] = &v6;
  [v2 readUsingSession:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_100284688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100284768(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) componentsJoinedByString:{@", "}];
    v4 = *(a1 + 48);
    *buf = 138412546;
    v16 = v3;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(RestoreService) prioritizeBundleIDs: [%@] userInitiated: %d", buf, 0x12u);
  }

  v5 = sub_10027F51C([ImportJobsForDemotedAppsTask alloc], *(a1 + 32));
  v6 = v5;
  if (v5)
  {
    v5[48] = *(a1 + 48);
  }

  v7 = sub_100284B90();
  v14 = v6;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  if (v7)
  {
    [v7[1] addOperations:v8 waitUntilFinished:1];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    if (v6)
    {
      v11 = v6[24];
      Property = objc_getProperty(v6, v9, 32, 1);
    }

    else
    {
      v11 = 0;
      Property = 0;
    }

    v13 = Property;
    (*(v10 + 16))(v10, v11 & 1, v13);
  }
}

uint64_t sub_100284928(uint64_t a1, void *a2)
{
  result = sub_1003E4918(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_100284B18(void *a1)
{
  if (a1)
  {
    v2 = a1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a1 = [v2 valueForHTTPHeaderField:@"CDNUUID"];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

id sub_100284B90()
{
  objc_opt_self();
  if (qword_1005AA9E8 != -1)
  {
    dispatch_once(&qword_1005AA9E8, &stru_10051FB40);
  }

  v0 = qword_1005AA9E0;

  return v0;
}

void sub_100284BE8(id a1)
{
  v1 = sub_100284C30([TaskQueue alloc], @"com.apple.appstored.TaskQueue.networkQueue");
  v2 = qword_1005AA9E0;
  qword_1005AA9E0 = v1;
}

id *sub_100284C30(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = TaskQueue;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = objc_alloc_init(NSOperationQueue);
      v5 = a1[1];
      a1[1] = v4;

      [a1[1] setMaxConcurrentOperationCount:1];
      [a1[1] setName:v3];
    }
  }

  return a1;
}

id *sub_100284CC0(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[1] setName:a2];
  }

  return result;
}

id *sub_100284CD4(id *a1)
{
  if (a1)
  {
    a1 = [a1[1] operations];
    v1 = vars8;
  }

  return a1;
}

id *sub_100284D08(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[1] setQualityOfService:a2];
  }

  return result;
}

void sub_100284D1C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = sub_100204570([BlockTask alloc], v3);

    [*(a1 + 8) addOperation:v4];
  }
}

void sub_100284D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.TaskQueue.barrierBlock"];
    v5 = *(a1 + 8);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100284E70;
    v7[3] = &unk_10051B790;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    [v5 addBarrierBlock:v7];
  }
}

void sub_100284E8C(uint64_t a1, void *a2)
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

void sub_10028563C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100285654(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

id sub_1002856D4()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100285778;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAA10 != -1)
  {
    dispatch_once(&qword_1005AAA10, block);
  }

  v0 = qword_1005AAA08;

  return v0;
}

void sub_100285778(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAA08;
  qword_1005AAA08 = v1;
}

void sub_100285998(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(_TtC9appstored6LogKey);
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"source_type" equalToValue:&off_100547860];
    v27[0] = v3;
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_100547878];
    v27[1] = v4;
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_state" value:&off_100547890 comparisonType:2];
    v27[2] = v5;
    v6 = [NSArray arrayWithObjects:v27 count:3];
    v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

    v8 = sub_1003C27BC();
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10028DFC0;
    v24 = &unk_10051CA38;
    v25 = v7;
    v26 = v2;
    v9 = v2;
    v10 = v7;
    [v8 modifyUsingTransaction:&v21];

    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  if (sub_100285CFC(v11) >= 1)
  {
    v12 = *(a1 + 32);

    sub_100285DDC(v12, 1);
    return;
  }

  sub_1003D568C(AppDefaultsManager, 0);
  v13 = sub_10028605C(*(a1 + 32));
  if (sub_10028613C(*(a1 + 32)) < 1)
  {
    if (v13 < 1)
    {
      return;
    }

    goto LABEL_16;
  }

  v14 = sub_100006B78();
  if (!sub_10023D364(v14))
  {
    sub_10023D75C(v14);

    if (v13 <= 0)
    {
      v19 = objc_alloc_init(RestoreBootstrapInfo);
      v18 = v19;
      if (v19)
      {
        objc_setProperty_atomic_copy(v19, v20, @"Startup with hard failures that may need preflight", 16);
        v18->_preflightOnly = 1;
      }

      goto LABEL_18;
    }

LABEL_16:
    v16 = objc_alloc_init(RestoreBootstrapInfo);
    v18 = v16;
    if (v16)
    {
      objc_setProperty_atomic_copy(v16, v17, @"Startup with Active Restores", 16);
    }

LABEL_18:
    [*(a1 + 32) _bootstrapWhenReadyWithInfo:{v18, v21, v22, v23, v24}];

    return;
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Startup with hard failures. Preflight already attempted for this boot.", &v21, 2u);
  }

  if (v13 > 0)
  {
    goto LABEL_16;
  }
}

uint64_t sub_100285CFC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = sub_1003C27BC();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10028A640;
  v4[3] = &unk_10051CCC8;
  v4[4] = &v5;
  [v1 readUsingSession:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100285DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100285DDC(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = sub_1003D5504();
    v4 = +[NSDate date];
    v5 = sub_1001DA998(ActivityManager, 6uLL);
    if ([v3 compare:v4] == 1)
    {
      v6 = v3;
      v7 = ASDLogHandleForCategory();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (a2)
      {
        if (v8)
        {
          if (v6)
          {
            [v6 timeIntervalSince1970];
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          v17 = 134218498;
          v18 = v10;
          v19 = 2114;
          v20 = v5;
          v21 = 2048;
          v22 = 300;
          v11 = "Using previously soft fail scheduled date: %{time_t}ld for activity: %{public}@ interval: %lld";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v11, &v17, 0x20u);
        }
      }

      else if (v8)
      {
        if (v6)
        {
          [v6 timeIntervalSince1970];
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v17 = 134218498;
        v18 = v15;
        v19 = 2114;
        v20 = v5;
        v21 = 2048;
        v22 = 300;
        v11 = "Keeping previously soft fail scheduled date: %{time_t}ld for activity: %{public}@ interval: %lld";
        goto LABEL_16;
      }
    }

    else
    {
      v6 = [v4 dateByAddingTimeInterval:300.0];
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (v6)
        {
          [v6 timeIntervalSince1970];
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v17 = 134218498;
        v18 = v13;
        v19 = 2114;
        v20 = v5;
        v21 = 2048;
        v22 = 300;
        v11 = "Using new date: %{time_t}ld for activity: %{public}@ interval: %lld";
        goto LABEL_16;
      }
    }

    v16 = sub_1001DA8BC();
    sub_1001DBB6C(v16, 6, @"Restore", v6, @"Soft Failure");
  }
}

uint64_t sub_10028605C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = sub_1003C27BC();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10028A6E4;
  v4[3] = &unk_10051CCC8;
  v4[4] = &v5;
  [v1 readUsingSession:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100286124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10028613C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = sub_1003C27BC();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10028A59C;
  v4[3] = &unk_10051CCC8;
  v4[4] = &v5;
  [v1 readUsingSession:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100286204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100286224(uint64_t a1)
{
  if (a1)
  {
    state64 = 0;
    state = notify_get_state(*(a1 + 40), &state64);
    v3 = ASDLogHandleForCategory();
    v4 = v3;
    if (state)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v10) = state;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "(RestoreManager) Received restore state change, but reading the state failed: %u", buf, 8u);
      }

LABEL_5:

      return;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v10 = state64;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(RestoreManager) Observed restore state change: %llu", buf, 0xCu);
    }

    if (!*(a1 + 32) && state64 - 1 <= 1)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(RestoreManager) Restore is starting, or already running - updating cellular policy", buf, 2u);
      }

      v6 = objc_alloc_init(MBManager);
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      v4 = +[NSNotificationCenter defaultCenter];
      [v4 addObserver:a1 selector:"_restoreCellularAccessChangedNotification:" name:@"com.apple.private.restrict-post.MobileBackup.backgroundCellularAccessChanged" object:0];
      sub_100292CAC(a1);
      goto LABEL_5;
    }
  }
}

id sub_100286400(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1002864FC;
    v9 = sub_10028650C;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100286514;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1002864FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100286514(uint64_t a1)
{
  v2 = sub_1003B6560();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  sub_1003B6764(*(*(*(a1 + 40) + 8) + 40), 3);
  sub_1003B6820(*(*(*(a1 + 40) + 8) + 40), 4);
  sub_1003B66A8(*(*(*(a1 + 40) + 8) + 40), 60);
  if (*(*(a1 + 32) + 24))
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = sub_1003B6890(v5);
    sub_1003B66A8(v5, v6 | 2);
    if ([*(*(a1 + 32) + 24) allowsExpensiveNetworkAccess])
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);

      sub_1003B6820(v7, 3);
    }
  }
}

id sub_1002865FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v6];
  if (!v6 || !sub_10023E4DC(v6, @"device_based_vpp"))
  {
    v10 = sub_10023E0F8(v6, @"account_id");
    v11 = sub_10023E0F8(v6, @"downloader_id");
    v12 = sub_10023E0F8(v6, @"alt_dsid");
    if ([v11 longLongValue] < 1)
    {
      if ([v10 longLongValue] < 1)
      {
        if ([v12 length])
        {
          v29 = +[ACAccountStore ams_sharedAccountStore];
          v14 = [v29 ams_iTunesAccountWithAltDSID:v12];

          if (v14)
          {
            v30 = [v14 ams_DSID];

            if (!v30)
            {
LABEL_13:
              if ([v7 longLongValue] <= 0)
              {
                if (v14)
                {
                  goto LABEL_30;
                }

                goto LABEL_24;
              }

              if (!v10)
              {
LABEL_16:
                if (v14)
                {
                  v18 = [v14 ams_DSID];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = [v14 ams_DSID];
                    v21 = [v20 isEqualToNumber:v7];

                    if (v21)
                    {
                      goto LABEL_19;
                    }
                  }

LABEL_30:
                  v26 = v14;
                  v14 = v26;
LABEL_31:
                  v9 = v26;

                  goto LABEL_32;
                }

LABEL_24:
                if (v11 | v10)
                {
                  [NSString stringWithFormat:@"Unable to find account with downloader: %@ purchaser: %@", v11, v10, v33];
                }

                else
                {
                  [NSString stringWithFormat:@"Unable to find account with downloader: %@ purchaser: %@ alt-dsid: %@", 0, 0, v12];
                }
                v27 = ;
                if (a4)
                {
                  *a4 = ASDErrorWithTitleAndMessage();
                }

                v14 = 0;
                goto LABEL_30;
              }

LABEL_15:
              if ([v10 isEqualToNumber:v7])
              {
LABEL_19:
                v22 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v7 unsignedLongLongValue];
                  v24 = +[ActiveAccountObserver activeAccount];
                  [v24 ams_DSID];
                  v25 = v34 = v12;
                  *buf = 138412802;
                  v36 = v8;
                  v37 = 2048;
                  v38 = v23;
                  v39 = 2114;
                  v40 = v25;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@] Migrating from accountID: %lld to active accountID: %{public}@", buf, 0x20u);

                  v12 = v34;
                }

                v26 = +[ActiveAccountObserver activeAccount];
                goto LABEL_31;
              }

              goto LABEL_16;
            }

            v31 = [v14 ams_DSID];
            sub_10023E000(v6, v31, @"account_id");

            v15 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v14 ams_DSID];
              *buf = 138412802;
              v36 = v8;
              v37 = 2114;
              v38 = v32;
              v39 = 2114;
              v40 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Setting accountID: %{public}@ discovered using alt-dsid: %{public}@", buf, 0x20u);
            }

            goto LABEL_12;
          }

          if ([v7 longLongValue] <= 0)
          {
            goto LABEL_24;
          }
        }

        else if ([v7 longLongValue] < 1)
        {
          goto LABEL_24;
        }

        v14 = 0;
        if (!v10)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v17 = +[ACAccountStore ams_sharedAccountStore];
      v14 = [v17 ams_iTunesAccountWithDSID:v10];

      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v8;
        v16 = "[%@] Using purchaser-dsid";
        goto LABEL_11;
      }
    }

    else
    {
      v13 = +[ACAccountStore ams_sharedAccountStore];
      v14 = [v13 ams_iTunesAccountWithDSID:v11];

      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v8;
        v16 = "[%@] Using downloader-dsid";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a4)
  {
    ASDErrorWithTitleAndMessage();
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_32:

  return v9;
}

id sub_100286B40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_1002864FC;
    v38 = sub_10028650C;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1002864FC;
    v32 = sub_10028650C;
    v33 = 0;
    if (v5)
    {
      v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v8 = [v6 stringByTrimmingCharactersInSet:v7];

      v6 = v8;
    }

    if ([v6 length])
    {
      v9 = objc_opt_new();
      [v9 setAuthenticationType:0];
      [v9 setDebugReason:@"Restore"];
      [v9 setCanMakeAccountActive:0];
      v10 = ASDLocalizedString();
      v11 = [NSString stringWithFormat:v10, v6];
      [v9 setReason:v11];

      v12 = [AMSAuthenticateTask alloc];
      v13 = +[BagService appstoredService];
      v14 = [v13 amsBag];
      v15 = [v12 initWithAccount:0 options:v9 bag:v14];

      [v15 setDelegate:a1];
      [v15 setUsername:v6];
      v16 = dispatch_semaphore_create(0);
      v17 = [v15 performAuthentication];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100286EBC;
      v23[3] = &unk_10051FB90;
      v26 = &v28;
      v23[4] = a1;
      v27 = &v34;
      v24 = v6;
      v18 = v16;
      v25 = v18;
      [v17 resultWithCompletion:v23];

      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v19 = ASDErrorWithTitleAndMessage();
      v9 = v29[5];
      v29[5] = v19;
    }

    if (a3)
    {
      v20 = v29[5];
      if (v20)
      {
        *a3 = v20;
      }
    }

    v21 = v35[5];
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_100286E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100286EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v6;
      v16 = v18;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to perform authentication due to error: %{public}@", &v17, 0x16u);
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    v8 = [v5 account];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = *(*(*(a1 + 64) + 8) + 40);
      v13 = v11;
      v14 = [v12 ams_DSID];
      v15 = *(a1 + 40);
      v17 = 138543875;
      v18 = v11;
      v19 = 2114;
      v20 = v14;
      v21 = 2113;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Logged into accountID: %{public}@ appleID: %{private}@", &v17, 0x20u);
    }
  }

LABEL_5:
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1002870A8(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100287180;
    v10[3] = &unk_10051FBB8;
    v13 = a4;
    v10[4] = a1;
    v11 = v7;
    v12 = v8;
    dispatch_async(v9, v10);
  }
}

void sub_100287180(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    sub_100287244(v2, v3, v4, 1);
  }

  else
  {
    v5 = objc_alloc_init(RestoreBootstrapInfo);
    v6 = v5;
    self = v5;
    if (v5)
    {
      objc_setProperty_atomic_copy(v5, v5, *(a1 + 40), 16);
      objc_setProperty_atomic_copy(self, v7, *(a1 + 48), 24);
      v6 = self;
      self->_userInitiated = *(a1 + 56);
    }

    [*(a1 + 32) _bootstrapWhenReadyWithInfo:v6];
  }
}

void sub_100287244(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [[KeepAlive alloc] initWithName:@"com.apple.RestoreManager.bootstrap"];
    v10 = ASDLogHandleForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v11)
      {
        goto LABEL_8;
      }

      v32 = 138543874;
      v33 = v8;
      v34 = 2114;
      v35 = v7;
      v36 = 1024;
      LODWORD(v37) = a4;
      v12 = "Bootstrapping restores for accountID: %{public}@ with reason: %{public}@ userInitiated: %d";
      v13 = v10;
      v14 = 28;
    }

    else
    {
      if (!v11)
      {
        goto LABEL_8;
      }

      v32 = 138543362;
      v33 = v7;
      v12 = "Bootstrapping all restores with reason: %{public}@";
      v13 = v10;
      v14 = 12;
    }

    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v32, v14);
LABEL_8:

    v15 = sub_10027E908([RestoreInfo alloc], v8, a4);
    v16 = ASDLogHandleForCategory();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v17)
      {
        goto LABEL_18;
      }

      if (v15)
      {
        v19 = v15[5];
        v18 = v15[6];
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v32 = 134218498;
      v33 = v18;
      v34 = 2048;
      v35 = v19;
      v36 = 2114;
      v37 = v8;
      v20 = "Bootstrapped %ld ordered / %ld non-ordered restores for accountID: %{public}@";
      v21 = v16;
      v22 = 32;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_18;
      }

      if (v15)
      {
        v24 = v15[5];
        v23 = v15[6];
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      v32 = 134218240;
      v33 = v23;
      v34 = 2048;
      v35 = v24;
      v20 = "Bootstrapped %ld ordered / %ld non-ordered restores";
      v21 = v16;
      v22 = 22;
    }

    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v32, v22);
LABEL_18:

    sub_10028A90C(a1, 1, v15, v8);
    sub_10028A90C(a1, 0, v15, v8);
    v25 = sub_10028BCA0();
    v26 = sub_100285CFC(a1);
    v27 = sub_10028613C(a1);
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 134218496;
      v33 = v25;
      v34 = 2048;
      v35 = v27;
      v36 = 2048;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Bootstrap completed. Pending lookup: %ld hard failures: %ld soft failures: %ld", &v32, 0x20u);
    }

    if (v26 < 1)
    {
      sub_1003D568C(AppDefaultsManager, 0);
      if (a4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_100285DDC(a1, 0);
      if (a4)
      {
        goto LABEL_26;
      }
    }

    if (!v25 || v27 >= 1)
    {
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Bootstrap completed. Will attempt to process failures if needed", &v32, 2u);
      }

      sub_10028BD74(a1, 0);
      goto LABEL_32;
    }

LABEL_26:
    v29 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Bootstrap completed. Will not attempt to process failures if needed", &v32, 2u);
    }

LABEL_32:
    v31 = sub_100283C38();
    sub_100284184(v31);
  }
}

void sub_100287648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002876F0;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002876F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    if (!*(v1 + 56))
    {
      v3 = [objc_alloc(sub_10028E298()) initWithClientIdentifier:@"com.apple.AppleMediaServices"];
      v4 = *(v1 + 56);
      *(v1 + 56) = v3;
    }

    v5 = sub_1003D5490();
    if ([v5 count])
    {
      v6 = sub_1003D5490();
      v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

      v8 = [v2 stringValue];
      [v7 removeObjectForKey:v8];

      if ([v7 count])
      {
        sub_1003D55B0(AppDefaultsManager, v7);
        v9 = [v7 copy];
        sub_10028E378(v1, v9);
      }

      else
      {
        sub_1003D55B0(AppDefaultsManager, 0);
        v10 = *(v1 + 56);
        v14 = 0;
        v11 = v10;
        [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:&off_1005493B0 error:&v14];
        v12 = v14;

        if (v12)
        {
          v13 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v16 = v2;
            v17 = 2114;
            v18 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error posting follow up for accountID: %{public}@ error: %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }
}

void sub_1002878E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002879D0;
    v11[3] = &unk_10051C7A8;
    v11[4] = a1;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v11);
  }
}

uint64_t sub_1002879D0(uint64_t a1)
{
  sub_100287A30(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100287A30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v10 = 0;
    v6 = sub_10028F810(a1, v5, a3, 1, &v10);
    v7 = v10;
    v8 = ASDLogHandleForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Dialog presentation completed successfully", buf, 0xCu);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Hard failing all apps that require distributor following dialog cancellation", buf, 0xCu);
      }

      v8 = sub_1003DB1CC();
      sub_10028F588(v8);
    }
  }
}

void sub_100287B80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100287C24;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_100287C24(uint64_t a1)
{
  v97 = sub_100289018();
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v101 = a1;
  obj = *(a1 + 32);
  v102 = [obj countByEnumeratingWithState:&v108 objects:v127 count:16];
  if (v102)
  {
    v100 = *v109;
    do
    {
      v2 = 0;
      do
      {
        if (*v109 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(v101 + 40);
        v4 = *(*(&v108 + 1) + 8 * v2);
        v5 = v4;
        if (v3)
        {
          if (!v4)
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Restore attempted without metadata", buf, 2u);
            }

            goto LABEL_101;
          }

          v103 = v3;
          v6 = sub_10023E0F8(v4, @"restore_type");
          v7 = [v6 integerValue];

          v8 = sub_10023E0F8(v5, @"priority");
          v9 = [v8 integerValue];

          v105 = @"Promotion";
          if (v7 <= 3)
          {
            v105 = *(&off_10051FF20 + v7);
          }

          v10 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = sub_100408EB0(v5);
            *buf = 138412546;
            *&buf[4] = v11;
            *&buf[12] = 2114;
            *&buf[14] = v105;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] %{public}@ start", buf, 0x16u);
          }

          v12 = sub_10023E0F8(v5, @"coordinator_id");
          v107 = v7 == 2 || v9 == 2;
          if (!v12)
          {
            v13 = sub_10040908C(v5);
            v14 = +[_TtC9appstored9MadBridge shared];
            v15 = [v14 isThirdPartyRestore:v13];

            if (v15)
            {
              v16 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v13;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handing off restoration to managedappdistributiond…", buf, 0xCu);
              }

              v12 = +[_TtC9appstored9MadBridge shared];
              [v12 promoteApplicationWithBundleIdentifier:v13];
LABEL_100:

LABEL_101:
              goto LABEL_102;
            }

            sub_10028EDA8(v5, v107);
            v12 = sub_10023E0F8(v5, @"coordinator_id");
          }

          if (v97)
          {
            if (v7 == 2 || v9 == 2)
            {
              v17 = -1;
            }

            else
            {
              v17 = -2;
            }

            v18 = [NSNumber numberWithInteger:v17];
            sub_10023E000(v5, v18, @"bootstrapped");
          }

          else
          {
            sub_10023E000(v5, &off_100547878, @"bootstrapped");
          }

          sub_10023E000(v5, &off_100547860, @"restore_state");
          v106 = +[ActiveAccountObserver sharedInstance];
          v19 = sub_100408EB0(v5);
          v104 = [v106 oneAccountDSIDWithLogKey:v19 refetchIfNeeded:(v7 == 2) | (v9 == 2)];

          v20 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_100408EB0(v5);
            *buf = 138412802;
            *&buf[4] = v21;
            *&buf[12] = 2114;
            *&buf[14] = v12;
            *&buf[22] = 2114;
            v136 = v104;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Importing restore with coordinatorID: %{public}@ oneAppleID: %{public}@", buf, 0x20u);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x4010000000;
          v136 = &unk_10049798A;
          v137 = 0u;
          v138 = 0u;
          v22 = sub_1003C27BC();
          v124[0] = _NSConcreteStackBlock;
          v124[1] = 3221225472;
          v124[2] = sub_100290D70;
          v124[3] = &unk_10051C888;
          v126 = buf;
          v23 = v5;
          v125 = v23;
          [v22 modifyUsingTransaction:v124];

          if (v9 != 2 && v7 == 2 && *(*&buf[8] + 56) == 2)
          {
            v24 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = sub_100408EB0(v23);
              *v133 = 138412290;
              *&v133[4] = v25;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@] Restore import failed - already exists", v133, 0xCu);
            }

            goto LABEL_54;
          }

          if (v97)
          {
            v26 = sub_100408EB0(v23);
            v27 = sub_10040908C(v23);
            v28 = sub_10028F810(v103, v26, v27, 0, 0);

            if (v28)
            {
              v24 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v29 = sub_100408EB0(v23);
                *v133 = 138412290;
                *&v133[4] = v29;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@] Restore stopped due to needed missing distributor", v133, 0xCu);
              }
            }

            else
            {
              v38 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v77 = sub_100408EB0(v23);
                *v133 = 138412290;
                *&v133[4] = v77;
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[%@] Restore stopped due to needed missing distributor", v133, 0xCu);
              }

              v39 = sub_10040908C(v23);
              v24 = sub_1003DBAB8(AppInstallPredicates, v39);

              v40 = sub_100408EB0(v23);
              sub_10028F588(v24);
            }

LABEL_54:
            v13 = 0;
LABEL_99:

            _Block_object_dispose(buf, 8);
            goto LABEL_100;
          }

          v123 = 0;
          v24 = sub_1002865FC(RestoreManager, v23, v104, &v123);
          v30 = v123;
          v31 = sub_10023E0F8(v23, @"apple_id");
          v95 = v31;
          if (v107 && !v24 && v31)
          {
            v122 = v30;
            v98 = sub_100286B40(v103, v31, &v122);
            v13 = v122;

            if (v98)
            {

              v32 = [v98 ams_DSID];
              sub_10023E000(v23, v32, @"account_id");

              v33 = [v98 username];
              sub_10023E000(v23, v33, @"apple_id");
              v30 = 0;
              goto LABEL_43;
            }

            v98 = 0;
LABEL_94:
            if (v13)
            {
              v73 = [NSString stringWithFormat:@"%@ Failure", v105];
              v74 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v76 = sub_100408EB0(v23);
                *v133 = 138412802;
                *&v133[4] = v76;
                *&v133[12] = 2114;
                *&v133[14] = v105;
                *&v133[22] = 2114;
                *v134 = v13;
                _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "[%@][%{public}@] complete with error: %{public}@", v133, 0x20u);
              }

              sub_100398948(v23, v13);
              *v133 = v23;
              v75 = [NSArray arrayWithObjects:v133 count:1];
              sub_10028C78C(RestoreManager, v75, v73);
            }

            goto LABEL_99;
          }

          if (!v24)
          {
            v98 = 0;
            v13 = v30;
            goto LABEL_94;
          }

          v34 = [v24 ams_DSID];
          sub_10023E000(v23, v34, @"account_id");

          v33 = [v24 username];
          sub_10023E000(v23, v33, @"apple_id");
          v98 = 0;
LABEL_43:

          if (v24)
          {
            v35 = v24;
          }

          else
          {
            v35 = v98;
          }

          v121 = 0;
          v36 = sub_100290EB8(v103, v23, v35, v107, &v121);
          v37 = v121;
          v94 = v37;
          if (v98 && v37)
          {
            v13 = v37;

            goto LABEL_49;
          }

          if (!v37 || !sub_1002910E4(v37))
          {
            if ((v36 & 1) == 0)
            {
              v13 = v94;

              goto LABEL_90;
            }

            v13 = v30;
            goto LABEL_74;
          }

          v41 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v80 = sub_100408EB0(v23);
            v81 = [v24 ams_DSID];
            *v133 = 138413058;
            *&v133[4] = v80;
            *&v133[12] = 2114;
            *&v133[14] = v105;
            *&v133[22] = 2114;
            *v134 = v94;
            *&v134[8] = 2114;
            *&v134[10] = v81;
            v91 = v81;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Encountered a token error: %{public}@ for account: %{public}@", v133, 0x2Au);
          }

          if (!v107 || ([v24 username], v42 = objc_claimAutoreleasedReturnValue(), v43 = v42 == 0, v42, v43))
          {
            v52 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v82 = sub_100408EB0(v23);
              v83 = [v24 username];
              *v133 = 138413059;
              *&v133[4] = v82;
              *&v133[12] = 2114;
              *&v133[14] = v105;
              *&v133[22] = 1024;
              *v134 = v107;
              *&v134[4] = 2113;
              *&v134[6] = v83;
              v92 = v83;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Not prompting do to userInitiated: %d appleID: %{private}@", v133, 0x26u);
            }

            v13 = v30;
            if (v36)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v44 = [v24 username];
            v120 = v30;
            v45 = sub_100286B40(v103, v44, &v120);
            v88 = v44;
            v13 = v120;

            v46 = v45;
            if (v45)
            {

              v47 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = v46;
                v49 = sub_100408EB0(v23);
                v50 = [v24 ams_DSID];
                *v133 = 138412802;
                *&v133[4] = v49;
                *&v133[12] = 2114;
                *&v133[14] = v105;
                *&v133[22] = 2114;
                *v134 = v50;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Retrying restore with account: %{public}@", v133, 0x20u);

                v46 = v48;
              }

              v119 = 0;
              v51 = sub_100290EB8(v103, v23, v46, 1, &v119);
              v13 = v119;
              v98 = v46;
              if ((v51 & 1) == 0)
              {
                goto LABEL_90;
              }

LABEL_74:
              v53 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = sub_100408EB0(v23);
                *v133 = 138412546;
                *&v133[4] = v54;
                *&v133[12] = 2114;
                *&v133[14] = v105;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] metadata lookup succeeded", v133, 0x16u);
              }

              sub_10023E000(v23, &off_100547890, @"bootstrapped");
              *v133 = 0;
              *&v133[8] = v133;
              *&v133[16] = 0x3032000000;
              *v134 = sub_1002864FC;
              *&v134[8] = sub_10028650C;
              *&v134[16] = 0;
              v55 = sub_1003C27BC();
              v115[0] = _NSConcreteStackBlock;
              v115[1] = 3221225472;
              v115[2] = sub_100291170;
              v115[3] = &unk_10051FCE8;
              v56 = v23;
              v118 = v107;
              v87 = v56;
              v116 = v56;
              v117 = v133;
              [v55 modifyUsingTransaction:v115];

              if (*(*&v133[8] + 40))
              {
                v57 = [v87 databaseID];
                v89 = sub_10023E6B8(v87, @"coordinator_id");
                v86 = sub_10023E644(v87, @"bundle_id");
                v58 = sub_100249094(lib_IXAppInstallCoordinatorTag, v89, v86);
                v59 = [_TtC9appstored23ReviewNetworkPolicyTask alloc];
                v60 = [(ReviewNetworkPolicyTask *)v59 initWithDownload:*(*&v133[8] + 40)];
                objc_initWeak(location, v60);
                v112[0] = _NSConcreteStackBlock;
                v112[1] = 3221225472;
                v112[2] = sub_10029127C;
                v112[3] = &unk_10051FD38;
                objc_copyWeak(v114, location);
                v114[1] = v57;
                v61 = v58;
                v113 = v61;
                [(ReviewNetworkPolicyTask *)v60 setCompletionBlock:v112];
                v62 = *(v103 + 16);
                if (v62)
                {
                  [*(v62 + 8) addOperation:v60];
                }

                objc_destroyWeak(v114);
                objc_destroyWeak(location);
              }

              v63 = v98;
              if (!v98)
              {
                v63 = v24;
              }

              v90 = v63;
              v64 = sub_1002856D4();
              v65 = [v90 ams_DSID];
              sub_1002870A8(v64, v105, v65, v107);

              v66 = sub_1002C0D84();
              v67 = v66;
              if (v7 == 2)
              {
                v68 = 32;
              }

              else
              {
                v68 = 0x2000;
              }

              sub_1002C13BC(v66, v68);

              if (v7 == 2 && (v98 != 0 || v24 != 0))
              {
                v69 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v70 = sub_100408EB0(v87);
                  v71 = [v90 ams_DSID];
                  *location = 138412802;
                  *&location[4] = v70;
                  v129 = 2114;
                  v130 = v105;
                  v131 = 2114;
                  v132 = v71;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Promoting all other apps for account: %{public}@ following successful hydration", location, 0x20u);
                }

                sub_10028997C(v103, v90, 0);
              }

              _Block_object_dispose(v133, 8);
LABEL_93:

              goto LABEL_94;
            }

            v79 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v99 = sub_100408EB0(v23);
              v84 = [v24 username];
              *v133 = 138543875;
              *&v133[4] = v105;
              *&v133[12] = 2114;
              *&v133[14] = v99;
              *&v133[22] = 2113;
              *v134 = v84;
              v93 = v84;
              _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "[%{public}@][%{public}@] Failed to obtain fresh account for appleID: %{private}@", v133, 0x20u);
            }

            v98 = 0;
LABEL_49:
            if (v36)
            {
              goto LABEL_74;
            }
          }

LABEL_90:
          v72 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v78 = sub_100408EB0(v23);
            *v133 = 138412546;
            *&v133[4] = v78;
            *&v133[12] = 2114;
            *&v133[14] = v105;
            _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "[%@][%{public}@] failed metadata lookup", v133, 0x16u);
          }

          goto LABEL_93;
        }

LABEL_102:

        v2 = v2 + 1;
      }

      while (v102 != v2);
      v85 = [obj countByEnumeratingWithState:&v108 objects:v127 count:16];
      v102 = v85;
    }

    while (v85);
  }
}

uint64_t sub_100289018()
{
  objc_opt_self();
  v0 = +[LSApplicationWorkspace defaultWorkspace];
  v1 = [v0 applicationIsInstalled:@"com.apple.AppStore"];

  return v1 ^ 1;
}

void sub_100289064(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002890E0;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1002890E0(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(RestoreManager) Forcing a refresh for the current cellular access policy", v3, 2u);
  }

  sub_100289164(RestoreManager, *(*(a1 + 32) + 24));
}

void sub_100289164(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v2 != 0;
    LOWORD(v9) = 1024;
    *(&v9 + 2) = [v2 allowsExpensiveNetworkAccess];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(RestoreManager) Applying new restore cellular policy (cellular = %d, expensive = %d)", buf, 0xEu);
  }

  if (v2)
  {
    if ([v2 allowsExpensiveNetworkAccess])
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }

    v5 = 62;
  }

  else
  {
    v5 = 60;
    v4 = 4;
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = sub_1003C27BC();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002928D8;
  v7[3] = &unk_10051FE98;
  v7[5] = v4;
  v7[6] = v5;
  v7[4] = buf;
  [v6 modifyUsingTransaction:v7];

  _Block_object_dispose(buf, 8);
}

void sub_100289304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100289324(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1002864FC;
    v9 = sub_10028650C;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100289420;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100289420(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v32 = *(a1 + 32);
    v1 = objc_opt_new();
    v2 = sub_1003C27BC();
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100290574;
    v44[3] = &unk_10051FC80;
    v3 = v1;
    v45 = v3;
    [v2 readUsingSession:v44];

    v4 = [[NSSortDescriptor alloc] initWithKey:0 ascending:0 comparator:&stru_10051FCC0];
    v35 = v3;
    v5 = [v3 keyEnumerator];
    v6 = [v5 allObjects];
    v31 = v4;
    v48 = v4;
    v7 = [NSArray arrayWithObjects:&v48 count:1];
    v8 = [v6 sortedArrayUsingDescriptors:v7];

    v9 = objc_alloc_init(NSMutableArray);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v35 objectForKeyedSubscript:v14];
          v16 = sub_100382EEC([v14 integerValue]);
          v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (%ld) ----------------------", v16, [v15 count]);
          [v9 addObject:v17];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v18 = v15;
          v19 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v37;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                [v9 addObject:*(*(&v36 + 1) + 8 * j)];
              }

              v20 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
            }

            while (v20);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v11);
    }

    v23 = objc_alloc_init(NSMutableDictionary);
    [v23 setObject:v9 forKeyedSubscript:@"items"];
    v24 = [NSNumber numberWithInteger:sub_10028BCA0()];
    [v23 setObject:v24 forKeyedSubscript:@"totalRemaining"];

    v25 = [NSNumber numberWithInteger:sub_10028605C(v32)];
    [v23 setObject:v25 forKeyedSubscript:@"activeRestoreCount"];

    v26 = [NSNumber numberWithInteger:sub_100285CFC(v32)];
    [v23 setObject:v26 forKeyedSubscript:@"totalSoftFailureCount"];

    v27 = [NSNumber numberWithInteger:sub_10028613C(v32)];
    [v23 setObject:v27 forKeyedSubscript:@"totalHardFailureCount"];

    v28 = sub_1003D5504();
    [v23 setObject:v28 forKeyedSubscript:@"softFailureRetryDate"];
  }

  else
  {
    v23 = 0;
  }

  v29 = *(*(a1 + 40) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v23;
}

void sub_1002898BC(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028996C;
    block[3] = &unk_10051BE68;
    block[4] = a1;
    v9 = v5;
    v10 = a3;
    dispatch_async(v7, block);
  }
}

void sub_10028997C(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = a2;
  if (a1)
  {
    v26 = v4;
    v5 = [v4 ams_DSID];
    v6 = [v26 username];
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying restore of apps for account: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = sub_1002864FC;
    v54 = sub_10028650C;
    v55 = objc_opt_new();
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_1002864FC;
    v42 = sub_10028650C;
    v43 = objc_opt_new();
    v8 = sub_1003C27BC();
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1002923BC;
    v33[3] = &unk_10051FE28;
    v33[4] = a1;
    v27 = v6;
    v34 = v27;
    v28 = v5;
    v35 = v28;
    p_buf = &buf;
    v37 = &v38;
    [v8 modifyUsingTransaction:v33];

    if ([*(*(&buf + 1) + 40) count])
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(*(&buf + 1) + 40) allObjects];
        v11 = [v10 componentsJoinedByString:{@", "}];
        *v45 = 138543874;
        v46 = v28;
        v47 = 2114;
        v48 = v27;
        v49 = 2114;
        v50 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Re-bootstrapping account: %{public}@/%{public}@ apps: [%{public}@]", v45, 0x20u);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = *(*(&buf + 1) + 40);
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v44 count:16];
      if (v13)
      {
        v14 = *v30;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v29 + 1) + 8 * i);
            v17 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v16];
            v18 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v45 = 138412802;
              v46 = v17;
              v47 = 2114;
              v48 = v28;
              v49 = 2114;
              v50 = v27;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Retrying following authentication of account: %{public}@/%{public}@", v45, 0x20u);
            }

            sub_10028EDA8(v16, 0);
          }

          v13 = [v12 countByEnumeratingWithState:&v29 objects:v44 count:16];
        }

        while (v13);
      }

      v19 = sub_1002856D4();
      v20 = [NSString stringWithFormat:@"Retry for account: %@/%@", v27, v28];
      v21 = [v26 ams_DSID];
      sub_1002870A8(v19, v20, v21, a3);
    }

    if ([v39[5] count])
    {
      v22 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v39[5] allObjects];
        v24 = [v23 componentsJoinedByString:{@", "}];
        *v45 = 138543362;
        v46 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Non-matched failed restore apps are: [%{public}@]", v45, 0xCu);
      }
    }

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&buf, 8);

    v4 = v26;
  }
}

void sub_100289ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100289F24(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100289FA0;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100289FA0(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = *(a1 + 32);
  v39 = v2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v39;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Retrying restore of apps that need a distributor", buf, 0xCu);
    }

    v5 = sub_1003DB77C();
    v6 = sub_100290128(0, v5);
    if ([v6 count])
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 array];
        v9 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v51 = v39;
        v52 = 2114;
        v53 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Updated the bootstrap state of system apps: [%{public}@]", buf, 0x16u);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v40 objects:buf count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v41;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v41 != v13)
            {
              objc_enumerationMutation(v10);
            }

            sub_10023836C(TelephonyUtility, *(*(&v40 + 1) + 8 * i));
          }

          v12 = [v10 countByEnumeratingWithState:&v40 objects:buf count:16];
        }

        while (v12);
      }
    }

    v15 = sub_1003DB420();
    v16 = sub_100290128(0, v15);
    if ([v16 count] == 1)
    {
      v17 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v18 = [v16 firstObject];
      *v44 = 138412546;
      v45 = v39;
      v46 = 2114;
      v47 = v18;
      v19 = "[%@] Updated the bootstrap state of %{public}@ to user initiated";
      v20 = v17;
      v21 = 22;
    }

    else
    {
      v22 = [v16 count];
      v17 = ASDLogHandleForCategory();
      v23 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v22 < 2)
      {
        if (v23)
        {
          *v44 = 138412290;
          v45 = v39;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] No user initiated distributor dependent apps in found", v44, 0xCu);
        }

LABEL_24:

        v25 = sub_1002856D4();
        v26 = [NSString stringWithFormat:@"Retry user-initiated following distributor installation"];
        sub_1002870A8(v25, v26, 0, 1);

        v27 = sub_1003DB1CC();
        v28 = sub_100290128(0, v27);
        if ([v28 count] == 1)
        {
          v29 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v16 firstObject];
            *v44 = 138412546;
            v45 = v39;
            v46 = 2114;
            v47 = v30;
            v31 = "[%@] Updated the bootstrap state of %{public}@ to user initiated";
            v32 = v29;
            v33 = 22;
LABEL_30:
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, v44, v33);
          }
        }

        else
        {
          v34 = [v28 count];
          v29 = ASDLogHandleForCategory();
          v35 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (v34 < 2)
          {
            if (v35)
            {
              *v44 = 138412290;
              v45 = v39;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[%@] No distributor dependent background apps in found", v44, 0xCu);
            }

            goto LABEL_33;
          }

          if (v35)
          {
            v30 = [v16 firstObject];
            v36 = [v16 count];
            *v44 = 138412802;
            v45 = v39;
            v46 = 2114;
            v47 = v30;
            v48 = 2048;
            v49 = v36;
            v31 = "[%@] Updated the bootstrap state of %{public}@ and %ld background app(s)";
            v32 = v29;
            v33 = 32;
            goto LABEL_30;
          }
        }

LABEL_33:

        v37 = sub_1002856D4();
        v38 = [NSString stringWithFormat:@"Retry background following distributor installation"];
        sub_1002870A8(v37, v38, 0, 0);

        goto LABEL_34;
      }

      if (!v23)
      {
        goto LABEL_24;
      }

      v18 = [v16 firstObject];
      v24 = [v16 count];
      *v44 = 138412802;
      v45 = v39;
      v46 = 2114;
      v47 = v18;
      v48 = 2048;
      v49 = v24;
      v19 = "[%@] Updated the bootstrap state of %{public}@ and %ld other user initiated app(s)";
      v20 = v17;
      v21 = 32;
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, v44, v21);

    goto LABEL_24;
  }

LABEL_34:
}