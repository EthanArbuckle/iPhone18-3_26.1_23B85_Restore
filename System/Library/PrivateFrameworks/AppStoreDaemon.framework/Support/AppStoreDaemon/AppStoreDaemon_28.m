id sub_1002F4648(void *a1, unint64_t a2, void *a3)
{
  if (a1)
  {
    if (a2 > 7)
    {
      v5 = @"Unknown";
    }

    else
    {
      v5 = *(&off_1005226D8 + a2);
    }

    a1 = [a3 prependingCategory:{v5, v3}];
  }

  return a1;
}

id sub_1002F46A0(uint64_t a1, unint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = sub_1002F6514(a2, a3, 1);
    if (v3)
    {
      v4 = sub_100398F44([SubscriptionEntitlementsResponse alloc], v3);
      v5 = v4;
      if (v4)
      {
        v6 = sub_100398FDC(v4);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1002F4744(void *a1, unint64_t a2, void *a3, int a4)
{
  v7 = a3;
  if (a1)
  {
    v8 = +[ActiveAccountObserver activeAccount];
    v9 = [v8 ams_DSID];
    if (!v9 || (v10 = v9, v11 = a1[2], [v8 ams_DSID], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = objc_msgSend(v11, "isEqualToNumber:", v12), v12, v10, (v11 & 1) == 0))
    {
      if (v8)
      {
        v13 = [v8 ams_DSID];

        v14 = ASDLogHandleForCategory();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v8 ams_DSID];
            v17 = 138412546;
            v18 = v7;
            v19 = 2114;
            v20 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Clearing cached subscription entitlements after account change to: %{public}@", &v17, 0x16u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = 138412290;
          v18 = v7;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@] Active account has nil DSID. Clearing cached subscription entitlements", &v17, 0xCu);
        }
      }

      else
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Clearing cached after account sign out", &v17, 0xCu);
        }
      }

      sub_1002F8B14(a1, a2, v7);
      sub_1002F8464(a1, a2, v7, 0, a4, 1);
    }
  }
}

void sub_1002F4A10(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1002F4B04(a1, 1uLL);
    v5 = +[BagService appstoredService];
    v6 = a1[1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002F4B7C;
    v8[3] = &unk_10051C340;
    v8[4] = a1;
    v9 = v4;
    v10 = v3;
    v7 = v4;
    [v5 bagOnQueue:v6 completionHandler:v8];
  }
}

id sub_1002F4B04(void *a1, unint64_t a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    v5 = sub_1002F4648(a1, a2, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1002F4B7C(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = sub_1002F4C04(*(a1 + 32), 1uLL, a2, *(a1 + 40), &v6);
  v4 = *(a1 + 48);
  v5 = sub_10039944C(v3);
  (*(v4 + 16))(v4, v5, v6, 0);
}

void *sub_1002F4C04(uint64_t a1, unint64_t a2, void *a3, void *a4, char *a5)
{
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v11 = sub_1002F6514(a2, v10, 0);
    if (v11)
    {
      [v9 doubleForKey:@"fsEntitlementsRefreshIntervalInSeconds" defaultValue:14400.0];
      v13 = v12;
      v14 = [v11 objectForKeyedSubscript:@"cacheTimestamp"];
      v15 = [v14 dateByAddingTimeInterval:v13];

      if (v15 && (+[NSDate date](NSDate, "date"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 compare:v16], v16, v17 == 1))
      {
        v18 = 0;
      }

      else
      {
        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Cached subscription entitlements have expired", &v22, 0xCu);
        }

        v18 = 1;
      }

      v20 = sub_100398F44([SubscriptionEntitlementsResponse alloc], v11);

      if (!a5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20 = 0;
      v18 = 1;
      if (!a5)
      {
        goto LABEL_11;
      }
    }

    *a5 = v18;
LABEL_11:

    goto LABEL_12;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

void sub_1002F4DEC(void *a1, unint64_t a2, void *a3, BOOL a4, BOOL a5, uint64_t a6, void *a7)
{
  v12 = a3;
  v13 = a7;
  if (a1)
  {
    v14 = objc_alloc_init(SubscriptionRequestInfo);
    v15 = sub_1002F4B04(a1, a2);
    v17 = v15;
    if (v14)
    {
      objc_setProperty_atomic(v14, v16, v15, 16);

      v14->_segment = a2;
      objc_setProperty_atomic(v14, v18, v12, 32);
      v14->_ignoreCaches = a4;
      v14->_isBackground = a5;
      v14->_notifyExternal = 1;
    }

    else
    {
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1002F4F28;
    v19[3] = &unk_100522500;
    v20 = v13;
    sub_1002F4FD0(a1, v14, v19);
  }
}

void sub_1002F4F28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v9 = v3;
    if (v3)
    {
      v5 = v3[2];
      v6 = *(v9 + 8);
      v7 = *(v9 + 9);
      v8 = v9[3];
    }

    else
    {
      v7 = 0;
      v5 = 0;
      v6 = 0;
      v8 = 0;
    }

    (*(v4 + 16))(v4, v5, v6 & 1, v7 & 1, v8);

    v3 = v9;
  }
}

void sub_1002F4FD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002F68D4;
    block[3] = &unk_10051C078;
    v9 = v5;
    v10 = a1;
    v11 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1002F5094(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = +[BagService appstoredService];
    v10 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002F5188;
    v11[3] = &unk_100522370;
    v11[4] = a1;
    v14 = a2;
    v12 = v7;
    v13 = v8;
    [v9 bagOnQueue:v10 completionHandler:v11];
  }
}

void sub_1002F5188(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = a2;
  v6 = sub_1002F4B04(v3, v4);
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 48, 1);
    }

    v10 = Property;
    *buf = 138412546;
    v17 = v6;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Requesting cached subscription entitlements for clientID: %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v11 = sub_1002F4C04(a1[4], a1[7], v5, v6, &v15);

  v12 = sub_100399018(v11);
  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 count];
    *buf = 138412546;
    v17 = v6;
    v18 = 2048;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Returning %lu subscription entitlement(s)", buf, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_1002F5358(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Marking the cached subscription entitlements as expired", &v7, 0xCu);
    }

    v5 = sub_1002F6514(v1, v3, 0);
    v6 = [v5 mutableCopy];

    if (v6)
    {
      [v6 removeObjectForKey:@"cacheTimestamp"];
      sub_1002F8278(v2, v6, v1, v3, 1, 1);
    }
  }
}

void sub_1002F555C(id *a1, void *a2, void *a3, unint64_t a4, int a5, int a6)
{
  v11 = a2;
  v12 = a3;
  if (a1)
  {
    v13 = sub_1002F4B04(a1, a4);
    if (v11)
    {
      v24 = a5;
      v25 = a6;
      v14 = +[ActiveAccountObserver activeAccount];
      v15 = [v14 ams_DSID];
      if (v15 && (v16 = v15, [v14 ams_DSID], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v12, "isEqualToNumber:", v17), v17, v16, v18))
      {
        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v14 ams_DSID];
          *buf = 138412546;
          v27 = v13;
          v28 = 2114;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Setting cached subscriptions for account: %{public}@", buf, 0x16u);
        }

        v21 = [v11 mutableCopy];
        v22 = +[NSDate date];
        [v21 setObject:v22 forKeyedSubscript:@"cacheTimestamp"];

        sub_1002F8278(a1, v21, a4, v13, v24, v25);
        objc_storeStrong(a1 + 2, a3);
      }

      else
      {
        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v14 ams_DSID];
          *buf = 138412802;
          v27 = v13;
          v28 = 2114;
          v29 = v12;
          v30 = 2114;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Not setting cached subscriptions because accountID: %{public}@ does not match active accountID: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      sub_1002F8B14(a1, a4, v13);
    }
  }
}

id sub_1002F57D4()
{
  objc_opt_self();
  v0 = [[NSUUID alloc] initWithUUIDString:@"876F12EE-055C-49EB-8909-3BE6753CA832"];

  return v0;
}

void sub_1002F5814(void *a1)
{
  if (a1)
  {
    v2 = sub_1002F57D4();
    v3 = sub_1002F4B04(a1, 1uLL);
    v4 = sub_1002F5DCC();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002F6014;
    v7[3] = &unk_10051B230;
    v8 = v3;
    v9 = v2;
    v5 = v2;
    v6 = v3;
    [v4 clearStatusCondition:v5 completionHandler:v7];
  }
}

void sub_1002F58FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 stringForKey:@"arcade-iap-family-id"];
  if (v6)
  {
    v27 = v5;
    sub_100399018(*(a1 + 40));
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v31 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v12 familyID];
          v14 = [v13 integerValue];
          v15 = [v6 integerValue];

          if (v14 == v15)
          {
            v16 = [v12 expiryDate];
            v17 = +[NSDate date];
            v18 = [v16 compare:v17];

            v19 = *(a1 + 48);
            if (v18 == 1)
            {
              v5 = v27;
              if (v19)
              {
                v20 = sub_1002F57D4();
                v21 = sub_1002F4B04(v19, 1uLL);
                v22 = sub_1002F5DCC();
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_1002F5EAC;
                v34 = &unk_10051B230;
                v35 = v21;
                v36 = v20;
                v23 = v20;
                v24 = v21;
                [v22 setStatusCondition:v23 completionHandler:buf];
              }
            }

            else
            {
              sub_1002F5814(*(a1 + 48));
              v5 = v27;
            }

            goto LABEL_19;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    sub_1002F5814(*(a1 + 48));
    v5 = v27;
LABEL_19:
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 138412546;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%@] Did not find arcade sub group id bag key, error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1002F5C20(void *a1)
{
  if (a1)
  {
    v2 = sub_1002F4B04(a1, 1uLL);
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Updating arcade ad status condition", buf, 0xCu);
    }

    v4 = objc_alloc_init(SubscriptionRequestInfo);
    v6 = v4;
    if (v4)
    {
      objc_setProperty_atomic(v4, v5, v2, 16);
      v6->_segment = 1;
    }

    v7 = sub_1003FA4F0(XPCRequestToken, 1);
    v9 = v7;
    if (v6)
    {
      objc_setProperty_atomic(v6, v8, v7, 32);

      v6->_ignoreCaches = 0;
      *&v6->_notifyExternal = 1;
    }

    else
    {
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002F5DBC;
    v10[3] = &unk_100522550;
    v10[4] = a1;
    sub_1002F4FD0(a1, v6, v10);
  }
}

void sub_1002F5DBC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1002F5814(*(a1 + 32));
  }
}

id sub_1002F5DCC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1005AABA8;
  v7 = qword_1005AABA8;
  if (!qword_1005AABA8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1002F8CE4;
    v3[3] = &unk_10051E318;
    v3[4] = &v4;
    sub_1002F8CE4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1002F5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002F5EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10 = 138412802;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Did set status condition: %{public}@ error: %{public}@", &v10, 0x20u);
    }
  }

  else
  {
    v7 = +[NSDate date];
    sub_1003D41B4(AppDefaultsManager, v7);

    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Did set status condition: %{public}@", &v10, 0x16u);
    }
  }
}

void sub_1002F6014(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10 = 138412802;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Did clear status condition: %{public}@ error: %{public}@", &v10, 0x20u);
    }
  }

  else
  {
    v7 = +[NSDate date];
    sub_1003D41B4(AppDefaultsManager, v7);

    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Did clear status condition: %{public}@", &v10, 0x16u);
    }
  }
}

id sub_1002F6514(unint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_1002F6760(a1, v5);
  v7 = [NSData dataWithContentsOfFile:v6];
  if (v7)
  {
    if (a3)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Subscription entitlement cached on device", buf, 0xCu);
      }
    }

    v14 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v5;
        v17 = 2114;
        v18 = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Failed to read the subscription entitlements from disk error: %{public}@", buf, 0x16u);
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count])
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Subscription entitlement not cached on device", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

id sub_1002F6760(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 >= 8)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Unable to determine the path", &v10, 0xCu);
    }
  }

  else
  {
    v4 = *(&off_100522718 + a1);
    v5 = sub_10029BDD4();
    v6 = [v5 stringByAppendingPathComponent:v4];

    if (v6)
    {
      goto LABEL_10;
    }
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Path to cached entitlement is nil", &v10, 0xCu);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void sub_1002F68D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {

LABEL_9:
    v16 = *(*(a1 + 40) + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002F6AA4;
    block[3] = &unk_10051F4B0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = v17;
    v21 = v18;
    v22 = v3;
    dispatch_async(v16, block);

    return;
  }

  dispatch_assert_queue_V2(*(v4 + 8));
  v5 = *(v4 + 96);
  v6 = [NSNumber numberWithUnsignedInteger:v3];
  v7 = [v5 objectForKey:v6];

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8)
  {
    dispatch_assert_queue_V2(*(v8 + 8));
    v10 = *(v8 + 96);
    v11 = [NSNumber numberWithUnsignedInteger:v3];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableArray);
    }

    v13 = [v9 copy];
    [v12 addObject:v13];

    v14 = *(v8 + 96);
    v15 = [NSNumber numberWithUnsignedInteger:v3];
    [v14 setObject:v12 forKeyedSubscript:v15];
  }

  if (!v7)
  {
    goto LABEL_9;
  }
}

void sub_1002F6AA4(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 32, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 48, 1);
    }
  }

  v6 = Property;
  v7 = a1[4];
  if (v7)
  {
    v7 = objc_getProperty(v7, v5, 32, 1);
  }

  v8 = [v7 processInfo];
  v9 = [v8 bundleIdentifier];
  v10 = [v6 isEqualToString:v9];

  v11 = ASDLogHandleForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v14 = a1[4];
      if (v14)
      {
        v14 = objc_getProperty(v14, v13, 16, 1);
      }

      v16 = v14;
      v17 = a1[4];
      if (v17)
      {
        v17 = objc_getProperty(v17, v15, 32, 1);
        if (v17)
        {
          v17 = objc_getProperty(v17, v18, 48, 1);
        }
      }

      v19 = v17;
      v20 = v19;
      v21 = a1[4];
      if (v21)
      {
        LODWORD(v21) = *(v21 + 8);
      }

      *buf = 138412802;
      v46 = v16;
      v47 = 2114;
      v48 = v19;
      v49 = 1024;
      LODWORD(v50) = v21;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Requesting subscription entitlements for clientID: %{public}@ ignoresCaches: %{BOOL}d", buf, 0x1Cu);
LABEL_30:
    }
  }

  else if (v12)
  {
    v22 = a1[4];
    if (v22)
    {
      v22 = objc_getProperty(v22, v13, 16, 1);
    }

    v16 = v22;
    v24 = a1[4];
    if (v24)
    {
      v24 = objc_getProperty(v24, v23, 32, 1);
      if (v24)
      {
        v24 = objc_getProperty(v24, v25, 48, 1);
      }
    }

    v20 = v24;
    v27 = a1[4];
    if (v27)
    {
      v27 = objc_getProperty(v27, v26, 32, 1);
      if (v27)
      {
        v27 = objc_getProperty(v27, v28, 56, 1);
      }
    }

    v30 = v27;
    v31 = a1[4];
    if (v31)
    {
      v31 = objc_getProperty(v31, v29, 32, 1);
    }

    v32 = [v31 processInfo];
    v33 = [v32 bundleIdentifier];
    v34 = v33;
    v35 = a1[4];
    if (v35)
    {
      LODWORD(v35) = *(v35 + 8);
    }

    *buf = 138413314;
    v46 = v16;
    v47 = 2114;
    v48 = v20;
    v49 = 2114;
    v50 = v30;
    v51 = 2114;
    v52 = v33;
    v53 = 1024;
    v54 = v35;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Requesting subscription entitlements for clientID: %{public}@ requestingBundleID: %{public}@ processInfoID: %{public}@ ignoresCaches: %{BOOL}d", buf, 0x30u);

    goto LABEL_30;
  }

  v36 = a1[4];
  v37 = a1[5];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1002F6DDC;
  v41[3] = &unk_1005225E0;
  v38 = v36;
  v39 = a1[5];
  v40 = a1[6];
  v42 = v38;
  v43 = v39;
  v44 = v40;
  sub_1002F7174(v37, v38, v41);
}

void sub_1002F6DDC(void *a1, uint64_t a2, char a3, char a4, void *a5)
{
  v9 = a5;
  v10 = sub_100399018(a2);
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = a1[4];
    if (v13)
    {
      Property = objc_getProperty(v13, v12, 16, 1);
    }

    else
    {
      Property = 0;
    }

    *buf = 138412546;
    v28 = Property;
    v29 = 2048;
    v30 = [v10 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Returning %lu subscription entitlement(s)", buf, 0x16u);
  }

  v15 = a1[5];
  v16 = *(v15 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F6F9C;
  block[3] = &unk_1005225B8;
  v25 = a3;
  v26 = a4;
  v21 = v10;
  v22 = v9;
  v17 = a1[6];
  v23 = v15;
  v24 = v17;
  v18 = v9;
  v19 = v10;
  dispatch_async(v16, block);
}

void sub_1002F6F9C(uint64_t a1)
{
  v2 = objc_alloc_init(SubscriptionEntitlementsResult);
  v4 = v2;
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v3, *(a1 + 32), 16);
    v4->_resultFromCache = *(a1 + 64);
    v4->_cacheExpired = *(a1 + 65);
    objc_storeStrong(&v4->_error, *(a1 + 40));
  }

  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v17 = v4;
  if (v6)
  {
    dispatch_assert_queue_V2(*(v6 + 8));
    v7 = *(v6 + 96);
    v8 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = [v7 objectForKeyedSubscript:v8];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v18 + 1) + 8 * i) + 16))();
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v15 = *(v6 + 96);
    v16 = [NSNumber numberWithUnsignedInteger:v5];
    [v15 setObject:0 forKeyedSubscript:v16];
  }
}

void sub_1002F7174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[BagService appstoredService];
    v8 = *(a1 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002F725C;
    v9[3] = &unk_100521480;
    v10 = v5;
    v11 = a1;
    v12 = v6;
    [v7 bagOnQueue:v8 completionHandler:v9];
  }
}

void sub_1002F725C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[ActiveAccountObserver activeAccount];
  if (v5)
  {
    buf[0] = 0;
    v6 = *(a1 + 32);
    if (v6)
    {
      if (*(v6 + 8))
      {
        v7 = 0;
        goto LABEL_14;
      }

      v15 = *(a1 + 40);
      v16 = *(v6 + 24);
      Property = objc_getProperty(v6, v4, 16, 1);
    }

    else
    {
      v16 = 0;
      Property = 0;
      v15 = *(a1 + 40);
    }

    v7 = sub_1002F4C04(v15, v16, v3, Property, buf);
    if (v7 && buf[0] != 1)
    {
      v18 = sub_100006B78();
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1002F77F8;
      v21[3] = &unk_100522608;
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = v19;
      v23 = v20;
      v24 = v5;
      v7 = v7;
      v25 = v7;
      v26 = *(a1 + 48);
      sub_10023D4F0(v18, v21);

      goto LABEL_15;
    }

LABEL_14:
    sub_1002F750C(*(a1 + 40), *(a1 + 32), v5, v7, *(a1 + 48));
LABEL_15:

    goto LABEL_16;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v12 = objc_getProperty(v10, v9, 16, 1);
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = objc_getProperty(v10, v11, 32, 1);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = [v10 processInfo];
    v14 = [v13 bundleIdentifier];
    *buf = 138412546;
    v28 = v12;
    v29 = 2114;
    v30 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] No active account when fetching subscriptions for clientID: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
LABEL_16:
}

void sub_1002F750C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        Property = objc_getProperty(v9, v14, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v16 = [v10 ams_DSID];
      *buf = 138412546;
      v37 = Property;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Fetching subscriptions for accountID: %{public}@", buf, 0x16u);
    }

    v18 = [SubscriptionEntitlementsRequest alloc];
    if (v9)
    {
      v19 = objc_getProperty(v9, v17, 32, 1);
      v21 = objc_getProperty(v9, v20, 16, 1);
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = sub_10029F4D8(&v18->super.isa, v19, v21);

    if (v22)
    {
      objc_setProperty_atomic(v22, v23, v10, 8);
    }

    if (v9)
    {
      v25 = [objc_getProperty(v9 v23];
      if (v22)
      {
        objc_setProperty_atomic(v22, v24, v25, 16);
      }

      if (*(v9 + 9))
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v9 + 8);
      }

      if (!v22)
      {
        goto LABEL_19;
      }

      *(v22 + 48) = v26 & 1;
      v27 = *(v9 + 3);
    }

    else
    {
      v28 = [0 processInfo];
      v30 = v28;
      if (!v22)
      {

        goto LABEL_19;
      }

      objc_setProperty_atomic(v22, v29, v28, 16);

      v27 = 0;
      *(v22 + 48) = 0;
    }

    v22[7] = v27;
LABEL_19:
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1002F7970;
    v31[3] = &unk_100522678;
    v31[4] = a1;
    v32 = v10;
    v33 = v9;
    v35 = v12;
    v34 = v11;
    sub_10029F558(v22, v31);
  }
}

void sub_1002F77F8(uint64_t a1, char a2)
{
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        Property = objc_getProperty(v7, v6, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v9 = [*(a1 + 48) ams_DSID];
      v11 = 138412546;
      v12 = Property;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Returning cached subscriptions response for account: %{public}@", &v11, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      if (v10)
      {
        v10 = objc_getProperty(v10, v6, 16, 1);
      }

      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Getting fresh entitlements refresh for this boot", &v11, 0xCu);
    }

    sub_1002F750C(*(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_1002F7970(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  v14 = *(a1 + 32);
  v7 = *(v14 + 8);
  block[1] = 3221225472;
  block[2] = sub_1002F7AA8;
  block[3] = &unk_100522650;
  v16 = v5;
  v8 = *(&v14 + 1);
  v9 = *(a1 + 48);
  v20 = *(a1 + 64);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v17 = v14;
  v18 = v11;
  v19 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void sub_1002F7AA8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = objc_getProperty(v3, a2, 8, 1);
    v6 = [*(a1 + 48) ams_DSID];
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 24);
      v9 = *(v7 + 11);
      LOBYTE(v7) = *(v7 + 10);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    sub_1002F555C(v4, v5, v6, v8, v9 & 1, v7 & 1);

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Property = *(a1 + 56);
      if (Property)
      {
        Property = objc_getProperty(Property, v11, 16, 1);
      }

      *v31 = 138412290;
      *&v31[4] = Property;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Returning updated subscriptions response", v31, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
    v13 = sub_100006B78();
    sub_10023D6AC(v13);

    v14 = *(a1 + 56);
    if (v14 && *(v14 + 24) == 1)
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 32);
      v17 = &stru_100522628;
      if (v15)
      {
        v18 = sub_1002F4B04(v15, 1uLL);
        v19 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 138412290;
          *&v31[4] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Setting arcade ad status condition", v31, 0xCu);
        }

        if (v16)
        {
          v20 = +[BagService appstoredService];
          *v31 = _NSConcreteStackBlock;
          *&v31[8] = 3221225472;
          *&v31[16] = sub_1002F58FC;
          v32 = &unk_10051C780;
          v33 = v18;
          v21 = &stru_100522628;
          v36 = &stru_100522628;
          v34 = v16;
          v35 = v15;
          [v20 recentBagWithCompletionHandler:v31];
        }

        else
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v31 = 138412290;
            *&v31[4] = v18;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Entitlement nil", v31, 0xCu);
          }

          sub_1002F5814(v15);
        }
      }
    }
  }

  else
  {
    v22 = *(a1 + 64);
    v23 = ASDLogHandleForCategory();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        v26 = *(a1 + 56);
        if (v26)
        {
          v26 = objc_getProperty(v26, v25, 16, 1);
        }

        v27 = *(a1 + 72);
        *v31 = 138412546;
        *&v31[4] = v26;
        *&v31[12] = 2114;
        *&v31[14] = v27;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Returning cached subscription response due to request error: %{public}@", v31, 0x16u);
      }
    }

    else if (v24)
    {
      v28 = *(a1 + 56);
      if (v28)
      {
        v28 = objc_getProperty(v28, v25, 16, 1);
      }

      v29 = *(a1 + 72);
      *v31 = 138412546;
      *&v31[4] = v28;
      *&v31[12] = 2114;
      *&v31[14] = v29;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] No cached subscriptions available, returning error: %{public}@", v31, 0x16u);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void sub_1002F8014(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v24 = 138412290;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Updating after account changed - inside dispatch queue", &v24, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = sub_1002F4648(v4, 0, *(a1 + 32));
  sub_1002F4744(v4, 0, v5, 1);

  v6 = *(a1 + 40);
  v7 = sub_1002F4648(v6, 1uLL, *(a1 + 32));
  sub_1002F4744(v6, 1uLL, v7, 1);

  v8 = *(a1 + 40);
  v9 = sub_1002F4648(v8, 2uLL, *(a1 + 32));
  sub_1002F4744(v8, 2uLL, v9, 1);

  v10 = *(a1 + 40);
  v11 = sub_1002F4648(v10, 3uLL, *(a1 + 32));
  sub_1002F4744(v10, 3uLL, v11, 1);

  v12 = *(a1 + 40);
  v13 = sub_1002F4648(v12, 4uLL, *(a1 + 32));
  sub_1002F4744(v12, 4uLL, v13, 1);

  v14 = *(a1 + 40);
  v15 = sub_1002F4648(v14, 5uLL, *(a1 + 32));
  sub_1002F4744(v14, 5uLL, v15, 1);

  v16 = *(a1 + 40);
  v17 = sub_1002F4648(v16, 6uLL, *(a1 + 32));
  sub_1002F4744(v16, 6uLL, v17, 1);

  v18 = *(a1 + 40);
  v19 = sub_1002F4648(v18, 7uLL, *(a1 + 32));
  sub_1002F4744(v18, 7uLL, v19, 1);

  v20 = +[ActiveAccountObserver activeAccount];
  v21 = [v20 ams_DSID];
  v22 = *(a1 + 40);
  v23 = *(v22 + 16);
  *(v22 + 16) = v21;
}

void sub_1002F8278(uint64_t a1, void *a2, unint64_t a3, void *a4, int a5, int a6)
{
  v11 = a2;
  v12 = a4;
  v13 = sub_1002F6760(a3, v12);
  if ([v13 length])
  {
    v18 = 0;
    v14 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v18];
    v15 = v18;
    if (v15)
    {
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v12;
        v21 = 2114;
        v22 = v15;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Failed to write the subscription entitlements to disk error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (([v14 writeToFile:v13 atomically:1] & 1) == 0)
      {
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Failed to write the subscription entitlements to disk with unknown error:", buf, 0xCu);
        }
      }

      sub_1002F8464(a1, a3, v12, v11, a5, a6);
    }
  }
}

void sub_1002F8464(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6)
{
  v11 = a3;
  v12 = a4;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v19 = "com.apple.appstored.PodcastSubEntitlementsCacheUpdated";
      }

      else
      {
        if (a2 != 7)
        {
          goto LABEL_25;
        }

        v19 = "com.apple.appstored.HWBundleSubEntitlementsCacheUpdated";
      }
    }

    else if (a2 == 4)
    {
      v19 = "com.apple.appstored.TVSubEntitlementsCacheUpdated";
    }

    else
    {
      v19 = "com.apple.appstored.iCloudSubEntitlementsCacheUpdated";
    }

LABEL_23:
    notify_post(v19);
    goto LABEL_24;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v19 = "com.apple.appstored.ActivitySubEntitlementsCacheUpdated";
    }

    else
    {
      v19 = "com.apple.appstored.MusicSubEntitlementsCacheUpdated";
    }

    goto LABEL_23;
  }

  if (!a2)
  {
    v19 = "com.apple.appstored.NewsSubEntitlementsCacheUpdated";
    goto LABEL_23;
  }

  if (a2 == 1)
  {
    if (a6)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v21) = 138412290;
        *(&v21 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Notifying external subscription changed", &v21, 0xCu);
      }

      notify_post("com.apple.appstored.AppStoreSubEntitlementsCacheUpdated");
    }

    if (a5)
    {
      v14 = v12;
      v15 = v11;
      v16 = *(a1 + 88);
      *&v21 = _NSConcreteStackBlock;
      *(&v21 + 1) = 3221225472;
      v22 = sub_1002F86F0;
      v23 = &unk_10051AEE8;
      v17 = v14;
      v24 = v17;
      v18 = v15;
      v25 = v18;
      v26 = a1;
      dispatch_async(v16, &v21);
    }

    goto LABEL_24;
  }

LABEL_25:
  v20 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v21) = 138412290;
    *(&v21 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Unable to cache invalid segment", &v21, 0xCu);
  }

LABEL_24:
}

void sub_1002F86F0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100398F44([SubscriptionEntitlementsResponse alloc], *(a1 + 32));
    v3 = sub_100399018(v2);
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412546;
      v19 = v5;
      v20 = 2048;
      v21 = [v3 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Notifying internal cached subscription changed with %ld entitlements", buf, 0x16u);
    }

    v6 = sub_100355E58();
    sub_100356FF4(v6, v3, *(a1 + 40));
  }

  else
  {
    v7 = +[ActiveAccountObserver activeAccount];

    if (v7)
    {
      v8 = objc_alloc_init(SubscriptionRequestInfo);
      v2 = v8;
      if (v8)
      {
        objc_setProperty_atomic(v8, v9, *(a1 + 40), 16);
        *(v2 + 24) = 1;
      }

      v10 = sub_1003FA4F0(XPCRequestToken, 1);
      v12 = v10;
      if (v2)
      {
        objc_setProperty_atomic(v2, v11, v10, 32);

        *(v2 + 8) = 0;
        *(v2 + 10) = 0;
      }

      else
      {
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1002F8990;
      v16[3] = &unk_1005226A0;
      v13 = *(a1 + 48);
      v17 = *(a1 + 40);
      sub_1002F7174(v13, v2, v16);
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Notifying internal subscription changed following signout", buf, 0xCu);
      }

      v2 = sub_100355E58();
      sub_100356FF4(v2, &__NSArray0__struct, *(a1 + 40));
    }
  }
}

void sub_1002F8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (v7)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v13 = 138412546;
      v14 = v9;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Notifying internal subscription changed resulted in error: %{public}@", &v13, 0x16u);
    }
  }

  else
  {
    v8 = sub_100399018(a2);
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412546;
      v14 = v11;
      v15 = 2048;
      v16 = [v8 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Notifying internal subscription changed to a new user with %ld entitlements", &v13, 0x16u);
    }

    v12 = sub_100355E58();
    sub_100356FF4(v12, v8, *(a1 + 32));
  }
}

void sub_1002F8B14(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Clearing cached subscription entitlements", &v9, 0xCu);
  }

  v7 = sub_1002F6760(a2, v5);
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtPath:v7 error:0];

  if (a2 == 1)
  {
    sub_1002F5814(a1);
  }
}

Class sub_1002F8CE4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1005AABB0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1002F8E38;
    v4[4] = &unk_10051BD00;
    v4[5] = v4;
    v5 = off_1005226C0;
    v6 = 0;
    qword_1005AABB0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1005AABB0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ADStatusConditions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1005AABA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1002F8E38()
{
  result = _sl_dlopen();
  qword_1005AABB0 = result;
  return result;
}

id sub_1002F8EB8()
{
  objc_opt_self();
  v2[0] = @"bundle_id";
  v2[1] = @"session_reporter_key";
  v2[2] = @"last_refresh";
  v0 = [NSArray arrayWithObjects:v2 count:3];

  return v0;
}

id sub_1002F92B4()
{
  objc_opt_self();
  if (qword_1005AABC0 != -1)
  {
    dispatch_once(&qword_1005AABC0, &stru_100522770);
  }

  v0 = qword_1005AABB8;

  return v0;
}

void sub_1002F930C(id a1)
{
  v1 = objc_alloc_init(TestFlightFeedbackService);
  v2 = qword_1005AABB8;
  qword_1005AABB8 = v1;
}

uint64_t sub_1002FAD2C(uint64_t result)
{
  if (result)
  {
    if ((*(result + 208) & 0x10) != 0)
    {
      return *(result + 176);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1002FAD58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 144);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 144);
      *(a1 + 144) = v5;

      v4 = *(a1 + 144);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

uint64_t sub_1002FB46C(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v102 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v102 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v102 & 0x7F) << v6;
      if ((v102 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 208) |= 0x10u;
        while (1)
        {
          v103 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v103 & 0x7F) << v14;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_177:
            *(a1 + 176) = v20;
            goto LABEL_198;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_177;
      case 2u:
        v21 = PBReaderReadString();
        v22 = 40;
        goto LABEL_141;
      case 3u:
        v21 = PBReaderReadString();
        v22 = 48;
        goto LABEL_141;
      case 4u:
        v21 = PBReaderReadString();
        v22 = 72;
        goto LABEL_141;
      case 5u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 208) |= 1u;
        while (1)
        {
          v107 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v107 & 0x7F) << v30;
          if ((v107 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_165;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_165:
        v101 = 8;
        goto LABEL_190;
      case 6u:
        v21 = PBReaderReadString();
        v22 = 88;
        goto LABEL_141;
      case 7u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 208) |= 2u;
        while (1)
        {
          v106 = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v106 & 0x7F) << v68;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_185;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v70;
        }

LABEL_185:
        v101 = 16;
        goto LABEL_190;
      case 8u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 208) |= 4u;
        while (1)
        {
          v105 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v105 & 0x7F) << v49;
          if ((v105 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_173;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v51;
        }

LABEL_173:
        v101 = 24;
        goto LABEL_190;
      case 9u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 208) |= 8u;
        while (1)
        {
          v104 = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v104 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v104 & 0x7F) << v74;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_189;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v76;
        }

LABEL_189:
        v101 = 32;
LABEL_190:
        *(a1 + v101) = v36;
        continue;
      case 0xAu:
        v21 = PBReaderReadString();
        v22 = 152;
        goto LABEL_141;
      case 0xBu:
        v21 = PBReaderReadString();
        v22 = 56;
        goto LABEL_141;
      case 0xCu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 208) |= 0x20u;
        while (1)
        {
          v115 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v115 & 0x7F) << v23;
          if ((v115 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_161;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_161:
        v100 = 200;
        goto LABEL_197;
      case 0xDu:
        v21 = PBReaderReadString();
        v22 = 96;
        goto LABEL_141;
      case 0xEu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 208) |= 0x400u;
        while (1)
        {
          v114 = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v114 & 0x7F) << v62;
          if ((v114 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_181;
          }
        }

        v29 = (v64 != 0) & ~[a2 hasError];
LABEL_181:
        v100 = 205;
        goto LABEL_197;
      case 0xFu:
        v21 = PBReaderReadString();
        v22 = 112;
        goto LABEL_141;
      case 0x10u:
        v21 = PBReaderReadData();
        v22 = 120;
        goto LABEL_141;
      case 0x11u:
        v21 = PBReaderReadData();
        v22 = 128;
        goto LABEL_141;
      case 0x12u:
        v21 = PBReaderReadString();
        v22 = 136;
        goto LABEL_141;
      case 0x13u:
        v21 = PBReaderReadString();
        v22 = 160;
        goto LABEL_141;
      case 0x14u:
        v21 = PBReaderReadString();
        v22 = 168;
        goto LABEL_141;
      case 0x15u:
        v21 = PBReaderReadString();
        v22 = 192;
        goto LABEL_141;
      case 0x16u:
        v61 = PBReaderReadData();
        if (v61)
        {
          sub_1002FAD58(a1, v61);
        }

        continue;
      case 0x17u:
        v21 = PBReaderReadString();
        v22 = 184;
        goto LABEL_141;
      case 0x18u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 208) |= 0x800u;
        while (1)
        {
          v113 = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v113 & 0x7F) << v81;
          if ((v113 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v12 = v82++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_192;
          }
        }

        v29 = (v83 != 0) & ~[a2 hasError];
LABEL_192:
        v100 = 206;
        goto LABEL_197;
      case 0x19u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 208) |= 0x40u;
        while (1)
        {
          v112 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v112 & 0x7F) << v43;
          if ((v112 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_169;
          }
        }

        v29 = (v45 != 0) & ~[a2 hasError];
LABEL_169:
        v100 = 201;
        goto LABEL_197;
      case 0x1Au:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 208) |= 0x100u;
        while (1)
        {
          v111 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v111 & 0x7F) << v37;
          if ((v111 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_167;
          }
        }

        v29 = (v39 != 0) & ~[a2 hasError];
LABEL_167:
        v100 = 203;
        goto LABEL_197;
      case 0x1Bu:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 208) |= 0x80u;
        while (1)
        {
          v110 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v110 & 0x7F) << v94;
          if ((v110 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_196;
          }
        }

        v29 = (v96 != 0) & ~[a2 hasError];
LABEL_196:
        v100 = 202;
        goto LABEL_197;
      case 0x1Cu:
        v21 = PBReaderReadString();
        v22 = 80;
        goto LABEL_141;
      case 0x1Du:
        v21 = PBReaderReadString();
        v22 = 104;
        goto LABEL_141;
      case 0x1Eu:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 208) |= 0x1000u;
        while (1)
        {
          v109 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v109 & 0x7F) << v88;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            LOBYTE(v29) = 0;
            goto LABEL_194;
          }
        }

        v29 = (v90 != 0) & ~[a2 hasError];
LABEL_194:
        v100 = 207;
        goto LABEL_197;
      case 0x1Fu:
        v21 = PBReaderReadString();
        v22 = 64;
LABEL_141:
        v87 = *(a1 + v22);
        *(a1 + v22) = v21;

        continue;
      case 0x20u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 208) |= 0x200u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v108 = 0;
      v58 = [a2 position] + 1;
      if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
      {
        v60 = [a2 data];
        [v60 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v57 |= (v108 & 0x7F) << v55;
      if ((v108 & 0x80) == 0)
      {
        break;
      }

      v55 += 7;
      v12 = v56++ >= 9;
      if (v12)
      {
        LOBYTE(v29) = 0;
        goto LABEL_179;
      }
    }

    v29 = (v57 != 0) & ~[a2 hasError];
LABEL_179:
    v100 = 204;
LABEL_197:
    *(a1 + v100) = v29;
LABEL_198:
    ;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002FD8D0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_1002FD8E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_1002FD900(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_1002FD918(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void sub_1002FD930(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_1002FD948(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_1002FD960(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_1002FD978(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

void sub_1002FD990(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

void sub_1002FD9A8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

void sub_1002FD9C0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

void sub_1002FD9D8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

void sub_1002FD9F0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 192), a2);
  }
}

void sub_1002FDA08(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 184), a2);
  }
}

void sub_1002FDA20(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_1002FDA38(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

void sub_1002FDA50(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

uint64_t sub_1002FDA68(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_1002FDA7C(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_1002FDDA8(void *a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    *buf = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[%{public}@] itms-services requests are not valid on this hardware and will be ignored", buf, 0xCu);
  }

  v3 = a1[6];
  v4 = [NSString stringWithFormat:@"itms-services requests are not valid on this hardware and will be ignored: %@", a1[5]];
  v5 = ASDErrorWithDescription();
  (*(v3 + 16))(v3, v5);
}

void sub_1002FDF90(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Status requested by %{public}@", buf, 0x16u);
  }

  v6 = objc_alloc_init(ManagedAppStatusTask);
  objc_initWeak(buf, v6);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1002FE16C;
  v12 = &unk_100522188;
  objc_copyWeak(&v14, buf);
  v13 = *(a1 + 40);
  [(ManagedAppStatusTask *)v6 setCompletionBlock:&v9];
  v7 = sub_100284B90();
  v8 = v7;
  if (v7)
  {
    [*(v7 + 8) addOperation:{v6, v9, v10, v11, v12}];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void sub_1002FE144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002FE16C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v3, 48, 1);
  }

  v5 = WeakRetained;
  (*(v4 + 16))(v4, v5);
}

void sub_1002FE284(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ASDErrorDomain code:911 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1002FE3EC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ New Manifest Request: %{public}@ by %{public}@", &v10, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = [NSError errorWithDomain:ASDErrorDomain code:500 userInfo:0];
  v9 = [*(a1 + 40) requestIdentifier];
  (*(v7 + 16))(v7, v8, v9);
}

void sub_1002FE62C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 processInfo];
    v6 = [v5 bundleIdentifier];
    v12 = 138543874;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ New VPP Request: %{public}@ by %{public}@", &v12, 0x20u);
  }

  v7 = *(a1 + 48);
  v8 = [NSError errorWithDomain:ASDErrorDomain code:911 userInfo:0];
  v9 = [*(a1 + 40) bundleIdentifier];
  v10 = [*(a1 + 40) itemIdentifier];
  v11 = [*(a1 + 40) requestIdentifier];
  (*(v7 + 16))(v7, v8, v9, v10, v11);
}

void *sub_1002FE824(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [IXPlaceholder placeholderForRemovableSystemAppWithBundleID:a1[5] client:1 installType:1 error:a2];
    v2 = vars8;
  }

  return a1;
}

id sub_1002FE870(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_60;
  }

  if (*(a1 + 120) != 1)
  {
    v6 = ASDLogHandleForCategory();
    v7 = v6;
    v8 = *(a1 + 8);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "App::Placeholder/Configure", "", buf, 2u);
    }

    if (![*(a1 + 48) length] || !objc_msgSend(*(a1 + 40), "length"))
      v54 = {;
      v55 = ASDErrorWithDescription();
LABEL_42:

      v5 = v55;
LABEL_43:
      v56 = v5;
      v4 = 0;
      goto LABEL_44;
    }

    v9 = [IXPlaceholder alloc];
    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 80);
    v139 = 0;
    v13 = [v9 initAppPlaceholderWithBundleName:v10 bundleID:v11 installType:v12 client:1 error:&v139];
    v14 = v139;
    v5 = v14;
    if (!v13)
    {
      v55 = v14;
      goto LABEL_43;
    }

    v138 = v14;
    v4 = v13;
    v15 = *(a1 + 128);
    v141 = 0;
    v16 = [v4 setMetadata:v15 error:&v141];
    v17 = v141;
    if (!v16)
    {
      LOBYTE(v21) = 0;
LABEL_119:

      v55 = v138;
      if (v21)
      {
        v5 = 0;
LABEL_44:
        v57 = ASDLogHandleForCategory();
        v58 = v57;
        v59 = *(a1 + 8);
        if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
        {
          *v150 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, v59, "App::Placeholder/Configure", "", v150, 2u);
        }

        goto LABEL_48;
      }

      v118 = ASDErrorDomain;
      if (v55)
      {
        v152[0] = NSUnderlyingErrorKey;
        *buf = v55;
        v119 = [NSDictionary dictionaryWithObjects:buf forKeys:v152 count:1];
        v54 = [NSError errorWithDomain:v118 code:802 userInfo:v119];
      }

      else
      {
        v54 = [NSError errorWithDomain:ASDErrorDomain code:802 userInfo:0];
      }

      [v4 cancelForReason:v54 client:1 error:0];

      goto LABEL_42;
    }

    v18 = *(a1 + 72);
    if (v18 && [v18 count])
    {
      v19 = [[IXPromisedInMemoryDictionary alloc] initWithName:@"Entitlements" client:1 dictionary:*(a1 + 72)];
      if (([v4 setEntitlementsPromise:v19 error:&v138] & 1) == 0)
      {
        v21 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          Property = objc_getProperty(a1, v72, 96, 1);
          *buf = 138412546;
          *&buf[4] = Property;
          v148 = 2114;
          v149 = v17;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Failed to set placeholder entitlements: %{public}@", buf, 0x16u);
        }

        LOBYTE(v21) = 0;
        v22 = v17;
        goto LABEL_118;
      }
    }

    v20 = objc_alloc_init(IXPlaceholderAttributes);
    v19 = v20;
    if (*(a1 + 64))
    {
      [v20 setCompanionBundleIdentifierForWatchApp:?];
    }

    if (*(a1 + 19) == 1)
    {
      [v19 setLaunchProhibited:1];
    }

    if (*(a1 + 16) == 1)
    {
      [v19 setArcadeApp:1];
    }

    if (*(a1 + 20) == 1)
    {
      [v19 setLsRequiresPostProcessing:1];
    }

    [v19 setUiDeviceFamily:*(a1 + 112)];
    v140 = v17;
    LODWORD(v21) = [v4 setPlaceholderAttributes:v19 error:&v140];
    v22 = v140;

    if (!v21)
    {
LABEL_118:

      v17 = v22;
      goto LABEL_119;
    }

    if (*(a1 + 18) == 1)
    {
      v23 = v4;
      v24 = sub_1002FFB3C();

      v132 = v23;
      if (v24)
      {
        v133 = v22;
        v25 = objc_alloc_init(IXPlaceholderAttributes);
        [v25 setBundleVersion:*(a1 + 56)];
        *v150 = @"NSExtensionPointIdentifier";
        v26 = sub_1002FFB3C();
        v151 = @"NSExtensionPrincipalClass";
        v152[0] = v26;
        v152[1] = @"iMessageExtension";
        v27 = [NSDictionary dictionaryWithObjects:v152 forKeys:v150 count:2];
        [v25 setExtensionDictionary:v27];

        v28 = [*(a1 + 40) stringByAppendingPathExtension:@"iMessageExtension"];
        v29 = [IXPlaceholder alloc];
        v146 = 0;
        v130 = v28;
        v30 = [v29 initPlugInPlaceholderWithBundleName:@"iMessageExtension" bundleID:v28 parentPlaceholder:v23 client:1 error:&v146];
        v31 = v146;
        v32 = v31;
        if (!v30 || (v145 = v31, v33 = [v30 setPlaceholderAttributes:v25 error:&v145], v34 = v145, v32, v32 = v34, (v33 & 1) == 0))
        {
          v35 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v122 = objc_getProperty(a1, v36, 96, 1);
            *buf = 138412546;
            *&buf[4] = v122;
            v148 = 2114;
            v149 = v32;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%@] Failed to set placeholder attributes: %{public}@", buf, 0x16u);
          }
        }

        v37 = ASDLogHandleForCategory();
        v38 = v37;
        v39 = *(a1 + 8);
        if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, v39, "App::Placeholder/Extension/Artwork", "", buf, 2u);
        }

        v129 = v32;
        v131 = v25;

        v40 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v42 = objc_getProperty(a1, v41, 96, 1);
          *buf = 138412290;
          *&buf[4] = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[%@] Requesting extension artwork", buf, 0xCu);
        }

        v43 = *(a1 + 104);
        v45 = objc_getProperty(a1, v44, 96, 1);
        v46 = *(a1 + 17);
        v47 = v45;
        objc_getProperty(a1, v48, 88, 1);
        v49 = sub_1002FF868(PlaceholderBuilder, v43, v47, v46);

        if (v49)
        {
          v144 = 0;
          v50 = [v30 setIconPromise:v49 error:&v144];
          v51 = v144;
          if ((v50 & 1) == 0)
          {
            v52 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              v126 = objc_getProperty(a1, v53, 96, 1);
              *buf = 138412546;
              *&buf[4] = v126;
              v148 = 2114;
              v149 = v51;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "[%@] Non-fatal error occurred when setting extension artwork: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v51 = 0;
        }

        v128 = v51;
        v75 = ASDLogHandleForCategory();
        v76 = v75;
        v77 = *(a1 + 8);
        if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v76, OS_SIGNPOST_INTERVAL_END, v77, "App::Placeholder/Extension/Artwork", "", buf, 2u);
        }

        v143 = v129;
        v78 = [v30 setConfigurationCompleteWithError:&v143];
        v73 = v143;

        if ((v78 & 1) == 0)
        {
          v79 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v123 = objc_getProperty(a1, v80, 96, 1);
            *buf = 138412546;
            *&buf[4] = v123;
            v148 = 2114;
            v149 = v73;
            _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "[%@] Failed complete placeholder configuration: %{public}@", buf, 0x16u);
          }
        }

        if (v73)
        {
          v81 = [NSError errorWithDomain:ASDErrorDomain code:802 userInfo:0];
          v142 = v128;
          v82 = [v30 cancelForReason:v81 client:1 error:&v142];
          v74 = v142;

          if ((v82 & 1) == 0)
          {
            v83 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v127 = objc_getProperty(a1, v84, 96, 1);
              *buf = 138412546;
              *&buf[4] = v127;
              v148 = 2114;
              v149 = v74;
              _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "[%@] Non-fatal error occurred when canceling failed placeholder: %{public}@", buf, 0x16u);
            }
          }

          v30 = 0;
        }

        else
        {
          v74 = v128;
        }

        v22 = v133;
      }

      else
      {
        v73 = 0;
        v74 = 0;
        v30 = 0;
      }

      v85 = v30;

      if (v85)
      {
        v152[0] = v85;
        v86 = [NSArray arrayWithObjects:v152 count:1];
        *v150 = 0;
        v87 = [v132 setAppExtensionPlaceholderPromises:v86 error:v150];
        v71 = *v150;

        if ((v87 & 1) == 0)
        {
          v88 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v124 = objc_getProperty(a1, v89, 96, 1);
            *buf = 138412546;
            *&buf[4] = v124;
            v148 = 2114;
            v149 = v71;
            _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "[%@] Non-fatal error occurred when setting extension placeholder: %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v71 = 0;
      }
    }

    else
    {
      v71 = 0;
    }

    v90 = ASDLogHandleForCategory();
    v91 = v90;
    v92 = *(a1 + 8);
    if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_INTERVAL_BEGIN, v92, "App::Placeholder/Artwork", "", buf, 2u);
    }

    if (*(a1 + 24))
    {
      v93 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v95 = objc_getProperty(a1, v94, 96, 1);
        *buf = 138412290;
        *&buf[4] = v95;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "[%@] Using supplied artwork data", buf, 0xCu);
      }

      v96 = [[IXPromisedInMemoryData alloc] initWithName:@"Artwork" client:1 data:*(a1 + 24)];
    }

    else
    {
      v97 = *(a1 + 32);
      v98 = ASDLogHandleForCategory();
      v99 = v98;
      if (!v97)
      {
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v125 = objc_getProperty(a1, v115, 96, 1);
          *buf = 138412290;
          *&buf[4] = v125;
          _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%@] Artwork was neither provided, nor a location to load it from", buf, 0xCu);
        }

        v96 = 0;
        goto LABEL_113;
      }

      v134 = v22;
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        v101 = objc_getProperty(a1, v100, 96, 1);
        *buf = 138412290;
        *&buf[4] = v101;
        _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "[%@] Requesting placeholder artwork", buf, 0xCu);
      }

      v102 = *(a1 + 32);
      v104 = objc_getProperty(a1, v103, 96, 1);
      v105 = *(a1 + 17);
      v106 = v104;
      objc_getProperty(a1, v107, 88, 1);
      v96 = sub_1002FF868(PlaceholderBuilder, v102, v106, v105);

      v22 = v134;
    }

    if (!v96)
    {
      goto LABEL_114;
    }

    v108 = v71;
    v109 = v22;
    v146 = v108;
    v110 = [v4 setIconPromise:v96 error:&v146];
    v111 = v146;

    if (v110)
    {
      v112 = v111;
      v22 = v109;
      v71 = v112;
      goto LABEL_114;
    }

    v99 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v121 = objc_getProperty(a1, v113, 96, 1);
      *buf = 138412546;
      *&buf[4] = v121;
      v148 = 2114;
      v149 = v111;
      _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%@] Non-fatal error occurred when setting placeholder artwork: %{public}@", buf, 0x16u);
    }

    v114 = v111;
    v22 = v109;
    v71 = v114;
LABEL_113:

LABEL_114:
    v116 = ASDLogHandleForCategory();
    v21 = v116;
    v117 = *(a1 + 8);
    if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v117, "App::Placeholder/Artwork", "", buf, 2u);
    }

    buf[0] = 1;
    LOBYTE(v21) = buf[0];
    goto LABEL_118;
  }

  v137 = 0;
  v4 = sub_1002FE824(a1, &v137);
  v5 = v137;
LABEL_48:
  v60 = v5;
  v136 = v60;
  v61 = [v4 setConfigurationCompleteWithError:&v136];
  v62 = v136;

  if ((v61 & 1) == 0)
  {
    v63 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v69 = *(a1 + 96);
      *buf = 138412546;
      *&buf[4] = v69;
      v148 = 2114;
      v149 = v62;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "[%@] Placeholder configuration could not be completed: %{public}@", buf, 0x16u);
    }

    v135 = 0;
    v64 = [v4 cancelForReason:v62 client:1 error:&v135];
    v65 = v135;
    if ((v64 & 1) == 0)
    {
      v66 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v70 = *(a1 + 96);
        *buf = 138412546;
        *&buf[4] = v70;
        v148 = 2114;
        v149 = v65;
        _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "[%@] Error occurred when cancelling placeholder: %{public}@", buf, 0x16u);
      }
    }

    v4 = 0;
  }

  if (a2 && !v4)
  {
    v67 = v62;
    *a2 = v62;
  }

LABEL_60:

  return v4;
}

id sub_1002FF868(uint64_t a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  if (v6)
  {
    v8 = [[IXPromisedTransferToPath alloc] initWithName:@"artwork" client:1 diskSpaceNeeded:0];
    if ([v6 isFileURL])
    {
      [v8 setShouldCopy:1];
      [v8 setTransferPath:v6];
      [v8 setComplete:1];
    }

    else
    {
      v9 = sub_10027A41C();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1002FF9D4;
      v11[3] = &unk_1005227A0;
      v12 = v7;
      v8 = v8;
      v13 = v8;
      sub_10027A4B0(v9, v6, a4, v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1002FF9D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%@] Artwork request completed successfully", &v12, 0xCu);
    }

    [*(a1 + 40) setShouldCopy:0];
    [*(a1 + 40) setTransferPath:v6];
    [*(a1 + 40) setComplete:1];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v11;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@] Artwork request failed with error: %{public}@", &v12, 0x16u);
    }

    [*(a1 + 40) cancelForReason:v7 client:1 error:0];
  }
}

id sub_1002FFB3C()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1005AABC8;
  v8 = qword_1005AABC8;
  if (!qword_1005AABC8)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003003AC;
    v4[3] = &unk_10051E318;
    v4[4] = &v5;
    sub_1003003AC(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v3 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_1002FFC2C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

void sub_1002FFC38(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 96);
  }
}

uint64_t sub_1002FFC4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

void sub_1002FFC58(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 128);
  }
}

PlaceholderBuilder *sub_1002FFD28(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = objc_alloc_init(PlaceholderBuilder);
    v7 = sub_100408EB0(a1);
    v8 = sub_10023E604(a1, @"source_type");
    v9 = ASDLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v55 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Skipping store metadata for non-store installation", buf, 0xCu);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 138412290;
        v55 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Decoding persisted store metadata", buf, 0xCu);
      }

      v11 = sub_10040969C(a1, a3);
      if (!v11)
      {
        v45 = 0;
LABEL_55:

        goto LABEL_56;
      }

      v9 = v11;
      v12 = sub_10023E644(v5, @"variant_id");
      [v9 setVariantID:v12];

      if (v6)
      {
        objc_setProperty_atomic(v6, v13, v9, 128);
      }
    }

    v14 = sub_10023E4DC(a1, @"arcade");
    if (v6)
    {
      v6->_arcade = v14;
    }

    v16 = sub_10023E0F8(a1, @"artwork_url");
    if (v6)
    {
      objc_setProperty_atomic(v6, v15, v16, 32);
    }

    v18 = sub_10023E0F8(a1, @"bundle_id");
    if (v6)
    {
      objc_setProperty_atomic(v6, v17, v18, 40);
    }

    v20 = sub_10023E0F8(a1, @"bundle_name");
    if (v6)
    {
      objc_setProperty_atomic(v6, v19, v20, 48);
    }

    v22 = sub_10023E0F8(a1, @"bundle_version");
    if (v6)
    {
      objc_setProperty_atomic(v6, v21, v22, 56);
    }

    v24 = sub_10023E0F8(a1, @"companion_bundle_id");
    if (v6)
    {
      objc_setProperty_atomic(v6, v23, v24, 64);
    }

    v25 = sub_10023E0F8(a1, @"has_messages_extension");
    v26 = [v25 BOOLValue];
    if (v6)
    {
      v6->_hasMessagesExtension = v26;
    }

    v27 = sub_10023E0F8(a1, @"launch_prohibited");
    v28 = [v27 BOOLValue];
    if (v6)
    {
      v6->_launchProhibited = v28;
    }

    v30 = sub_10023E0F8(a1, @"messages_artwork_url");
    if (v6)
    {
      objc_setProperty_atomic(v6, v29, v30, 104);
    }

    v31 = sub_10023E0F8(a1, @"source_type");
    v32 = [v31 integerValue];
    if (v6)
    {
      v6->_sourceType = v32;
    }

    if (sub_10023E604(a1, @"post_processing_state"))
    {
      if (!v6)
      {
LABEL_61:
        if (sub_10023E604(a1, @"restore_type") || sub_10023E604(a1, @"update_type") == 1)
        {
          goto LABEL_42;
        }

        goto LABEL_63;
      }

      v6->_requiresPostProcessing = 1;
    }

    else if (!v6)
    {
      goto LABEL_61;
    }

    if (v6->_sourceType == 3)
    {
      v6->_enforceATS = 1;
    }

    v6->_installType = 1;
    if (sub_10023E604(a1, @"restore_type"))
    {
      v33 = 2;
      goto LABEL_41;
    }

    if (sub_10023E604(a1, @"update_type") == 1)
    {
      v33 = 5;
      goto LABEL_41;
    }

LABEL_63:
    if (sub_10023E604(a1, @"automatic_type") == 2)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = [LSApplicationRecord alloc];
      if (v6)
      {
        v50 = [v48 initWithBundleIdentifier:objc_getProperty(v6 allowPlaceholder:v49 error:{40, 1), 0, 0}];
        v51 = 5;
        if (!v50)
        {
          v51 = 3;
        }

        v6->_installType = v51;
      }

      else
      {
        v50 = [v48 initWithBundleIdentifier:0 allowPlaceholder:0 error:0];
      }

      objc_autoreleasePoolPop(v47);
      goto LABEL_42;
    }

    v52 = sub_10023E604(a1, @"automatic_type");
    if (!v6 || !v52)
    {
LABEL_42:
      v35 = sub_10023E0F8(a1, @"placeholder_entitlements");
      if (v35)
      {
        v36 = objc_opt_class();
        v37 = objc_opt_class();
        v38 = objc_opt_class();
        v39 = [NSSet setWithObjects:v36, v37, v38, objc_opt_class(), 0];
        v53 = 0;
        v40 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v39 fromData:v35 error:&v53];
        v41 = v53;
        v42 = ASDLogHandleForCategory();
        v43 = v42;
        if (v40)
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v55 = v7;
            v56 = 2114;
            v57 = v40;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[%@] Supplied placeholder entitlements: %{public}@", buf, 0x16u);
          }

          if (v6)
          {
            objc_setProperty_atomic(v6, v44, v40, 72);
          }
        }

        else
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v55 = v7;
            v56 = 2114;
            v57 = v41;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[%@] Failed to decode placeholder entitlements error: %{public}@", buf, 0x16u);
          }
        }
      }

      if (v6)
      {
        objc_setProperty_atomic(v6, v34, v7, 96);
      }

      v45 = v6;

      goto LABEL_55;
    }

    v33 = 3;
LABEL_41:
    v6->_installType = v33;
    goto LABEL_42;
  }

  v45 = 0;
LABEL_56:

  return v45;
}

void *sub_1003003AC(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1005AABD0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1003004EC;
    v5[4] = &unk_10051BD00;
    v5[5] = v5;
    v6 = off_1005227C0;
    v7 = 0;
    qword_1005AABD0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1005AABD0;
    if (qword_1005AABD0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1005AABD0;
LABEL_5:
  result = dlsym(v2, "IMMessagePayloadProviderExtensionPointName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005AABC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1003004EC()
{
  result = _sl_dlopen();
  qword_1005AABD0 = result;
  return result;
}

id sub_100300950(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_opt_new();
  v8 = v6;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, v4, 8);
    v9 = objc_alloc_init(_TtC9appstored6LogKey);
    objc_setProperty_nonatomic_copy(v8, v10, v9, 16);

    objc_setProperty_nonatomic_copy(v8, v11, v5, 24);
  }

  else
  {
  }

  return v8;
}

id sub_100300D70(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] getIAPsForAccountID start with accountID: %{public}@", &v9, 0x16u);
    }

    a1 = sub_100300EEC(a1, v3, 0, v4);
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1 count];
      v9 = 138412546;
      v10 = v4;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] getIAPsForAccountID complete with %ld subscription(s)", &v9, 0x16u);
    }
  }

  return a1;
}

id sub_100300EEC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v85 = v9;
    v86 = 2114;
    v87 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Lookup for accountID: %{public}@", buf, 0x16u);
  }

  v11 = sub_100301D68(IAPInfoDatabaseSession, v7, v8);
  v12 = sub_100301E8C(a1, v11);
  v13 = +[ActiveAccountObserver sharedInstance];
  v14 = [v13 oneAccountDSIDWithLogKey:v9];

  v15 = [v14 longLongValue];
  v16 = ASDLogHandleForCategory();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15 < 1)
  {
    if (v17)
    {
      v55 = [v12 count];
      *buf = 138412546;
      v85 = v9;
      v86 = 2048;
      v87 = v55;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Lookup complete with %ld subscriptions(s)", buf, 0x16u);
    }

    v63 = v12;
  }

  else
  {
    if (v17)
    {
      *buf = 138412546;
      v85 = v9;
      v86 = 2114;
      v87 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Additional lookup for subscriptions for oneAccountID: %{public}@", buf, 0x16u);
    }

    v58 = v14;
    v61 = v8;
    v57 = sub_100301D68(IAPInfoDatabaseSession, v14, v8);
    v18 = sub_100301E8C(a1, v57);
    v19 = v12;
    v20 = v18;
    v60 = v9;
    v64 = v9;
    v63 = [v19 mutableCopy];
    v21 = +[NSMutableDictionary dictionary];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v19;
    v22 = [obj countByEnumeratingWithState:&v71 objects:buf count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v72;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v72 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v71 + 1) + 8 * i);
          v27 = [v26 adamId];
          [v21 setObject:v26 forKeyedSubscript:v27];
        }

        v23 = [obj countByEnumeratingWithState:&v71 objects:buf count:16];
      }

      while (v23);
    }

    v59 = v12;
    v62 = v7;

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = v20;
    v28 = [v65 countByEnumeratingWithState:&v67 objects:v83 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v68;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v65);
          }

          v32 = *(*(&v67 + 1) + 8 * j);
          v33 = [v32 lastModifiedDate];
          [v33 timeIntervalSince1970];
          v35 = v34;
          v36 = +[NSDate now];
          [v36 timeIntervalSince1970];
          if (v35 >= v37 + -2678400.0)
          {
          }

          else
          {
            v38 = [v32 expirationDate];
            [v38 timeIntervalSince1970];
            v40 = v39;
            v41 = +[NSDate now];
            [v41 timeIntervalSince1970];
            v43 = v42 + 604800.0;

            if (v40 > v43)
            {
              v44 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v45 = [v32 adamId];
                v46 = [v32 lastModifiedDate];
                v47 = [v32 expirationDate];
                *v75 = 138413058;
                v76 = v64;
                v77 = 2114;
                v78 = v45;
                v79 = 2114;
                v80 = v46;
                v81 = 2114;
                v82 = v47;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Not merging itemID: %{public}@ due to lastModifiedDate: %{public}@ expirationDate: %{public}@", v75, 0x2Au);
              }

LABEL_26:

              continue;
            }
          }

          v48 = [v32 adamId];
          v49 = [v21 objectForKeyedSubscript:v48];

          v44 = ASDLogHandleForCategory();
          v50 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
          if (v49)
          {
            if (v50)
            {
              v51 = [v32 adamId];
              *v75 = 138412546;
              v76 = v64;
              v77 = 2114;
              v78 = v51;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Not merging itemID: %{public}@ due to duplicate active account subscription", v75, 0x16u);
            }

            goto LABEL_26;
          }

          if (v50)
          {
            v52 = [v32 adamId];
            *v75 = 138412546;
            v76 = v64;
            v77 = 2114;
            v78 = v52;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Merging itemID: %{public}@", v75, 0x16u);
          }

          [v63 addObject:v32];
        }

        v29 = [v65 countByEnumeratingWithState:&v67 objects:v83 count:16];
      }

      while (v29);
    }

    v53 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v63 count];
      *buf = 138412546;
      v85 = v64;
      v86 = 2048;
      v87 = v54;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] Additional lookup complete with %ld merged subscriptions(s)", buf, 0x16u);
    }

    v8 = v61;
    v7 = v62;
    v9 = v60;
    v14 = v58;
    v12 = v59;
  }

  return v63;
}

id sub_100301618(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v7 = objc_alloc_init(_TtC9appstored6LogKey);
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 componentsJoinedByString:{@", "}];
        v14 = 138412802;
        v15 = v7;
        v16 = 2114;
        v17 = v9;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] getIAPsForActiveAccountWithAdamIDs start with adamIDs: [%{public}@] accountID: %{public}@", &v14, 0x20u);
      }

      v10 = [SQLiteContainsPredicate containsPredicateWithProperty:@"adam_id" values:v5];
      a1 = sub_100300EEC(a1, v6, v10, v7);
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1 count];
        v14 = 138412546;
        v15 = v7;
        v16 = 2048;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] getIAPsForActiveAccountWithAdamIDs complete with %ld subscription(s)", &v14, 0x16u);
      }
    }

    else
    {
      a1 = &__NSArray0__struct;
    }
  }

  return a1;
}

id sub_100301808(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if ([v5 count])
    {
      v7 = objc_alloc_init(_TtC9appstored6LogKey);
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 componentsJoinedByString:{@", "}];
        v14 = 138412802;
        v15 = v7;
        v16 = 2114;
        v17 = v9;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] getIAPsForActiveAccountWithAppAdamIDs start with adamIDs: [%{public}@] accountID: %{public}@", &v14, 0x20u);
      }

      v10 = [SQLiteContainsPredicate containsPredicateWithProperty:@"app_adam_id" values:v5];
      a1 = sub_100300EEC(a1, v6, v10, v7);
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [a1 count];
        v14 = 138412546;
        v15 = v7;
        v16 = 2048;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[IAPInfo][%@] getIAPsForActiveAccountWithAppAdamIDs complete with %ld subscription(s)", &v14, 0x16u);
      }
    }

    else
    {
      a1 = &__NSArray0__struct;
    }
  }

  return a1;
}

id sub_1003019F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100301AA4(IAPInfoDatabaseSession, a2);
    v4 = sub_100301B1C(a1, v3);

    if (objc_opt_respondsToSelector())
    {
      [v4 doubleValue];
      v5 = [NSDate dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100301AA4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NSString stringWithFormat:@"%@%@", @"LastUpdatedTimestampPropertyKey", v2];

  return v3;
}

id sub_100301B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10030225C;
  v15 = sub_10030226C;
  v16 = 0;
  v4 = *(a1 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100302274;
  v8[3] = &unk_10051DEB8;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  sub_10022C3C4(v4, @"SELECT value FROM iap_info_db_properties WHERE key = ?", v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_100301C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100301C50(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = sub_100301CF0(IAPInfoDatabaseSession, a2);
    v4 = sub_100301B1C(a1, v3);

    if (v4)
    {
      v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue]);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100301CF0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NSString stringWithFormat:@"%@%@", @"ServerRevisionPropertyKey", v2];

  return v3;
}

id sub_100301D68(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 longLongValue];

  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"dsid" equalToLongLong:v6];
  v8 = v7;
  if (v4)
  {
    v12[0] = v7;
    v12[1] = v4;
    v9 = [NSArray arrayWithObjects:v12 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

id sub_100301E8C(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v13[0] = @"adam_id";
  v13[1] = @"app_adam_id";
  v13[2] = @"purchase_date";
  v13[3] = @"last_modified_date";
  v13[4] = @"expiration_date";
  v13[5] = @"type";
  v13[6] = @"intro_offer_status";
  v13[7] = @"sub_family_id";
  v13[8] = @"auto_renew_status";
  v5 = [NSArray arrayWithObjects:v13 count:9];
  v6 = [a1 connection];
  v7 = sub_1002D3F5C(IAPInfoIAPEntity, v6, v3);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100302050;
  v11[3] = &unk_100521638;
  v12 = v4;
  v8 = v4;
  [v7 enumeratePersistentIDsAndProperties:v5 usingBlock:v11];
  v9 = [v8 copy];

  return v9;
}

void sub_100302050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v17 = objc_alloc_init(ASDMutableIAPInfo);
  v5 = [v4 objectForKeyedSubscript:@"adam_id"];
  [v17 setAdamId:v5];

  v6 = [v4 objectForKeyedSubscript:@"app_adam_id"];
  [v17 setAppAdamId:v6];

  v7 = [v4 objectForKeyedSubscript:@"purchase_date"];
  [v17 setPurchaseDate:v7];

  v8 = [v4 objectForKeyedSubscript:@"last_modified_date"];
  [v17 setLastModifiedDate:v8];

  v9 = [v4 objectForKeyedSubscript:@"expiration_date"];
  [v17 setExpirationDate:v9];

  v10 = [v4 objectForKeyedSubscript:@"type"];
  [v17 setType:{objc_msgSend(v10, "unsignedCharValue")}];

  v11 = [v4 objectForKeyedSubscript:@"intro_offer_status"];
  v12 = [v11 intValue];

  [v17 setHasUsedFreeOffer:v12 & 1];
  [v17 setHasUsedIntroPricingOffer:(v12 >> 1) & 1];
  v13 = [v4 objectForKeyedSubscript:@"sub_family_id"];
  [v17 setSubscriptionFamilyId:v13];

  v14 = [v4 objectForKeyedSubscript:@"auto_renew_status"];

  [v17 setAutoRenewStatus:{objc_msgSend(v14, "BOOLValue")}];
  v15 = *(a1 + 32);
  v16 = [v17 copy];
  [v15 addObject:v16];
}

uint64_t sub_10030225C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100302274(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100302318;
  v5[3] = &unk_10051D4F0;
  v5[4] = *(a1 + 40);
  sub_100214814(v4, v5);
}

void sub_100302318(uint64_t a1, void *a2)
{
  v3 = sub_1003B7CF4(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10030240C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003024B0;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AABE0 != -1)
  {
    dispatch_once(&qword_1005AABE0, block);
  }

  v0 = qword_1005AABD8;

  return v0;
}

void sub_1003024B0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AABD8;
  qword_1005AABD8 = v1;
}

void sub_1003024E8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100302564;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100302564(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = +[_TtC9appstored13LaunchHistory shared];
  v4 = [v3 syncLaunchesWithLogKey:v2];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v2;
    *&buf[12] = 1024;
    *&buf[14] = v4 != 0;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%@] synced with result: %{BOOL}d", buf, 0x12u);
  }

  v6 = *(a1 + 32);
  v7 = v2;
  if (v6)
  {
    +[NSMutableSet set];
    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_100302E4C;
    v42 = &unk_100522830;
    v8 = v43 = v6;
    v44 = v8;
    sub_1003D31A8(ApplicationProxy, 0, &v39);
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_100302C94;
    v49 = sub_100302CA4;
    v50 = 0;
    v9 = [NSMutableArray array:v39];
    v10 = [SQLiteQueryDescriptor alloc];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = sub_1002D3838(v10, v11, v12);
    v56 = @"ASC";
    v15 = [NSArray arrayWithObjects:&v56 count:1];
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v14, v15, 40);
    }

    v55 = @"timestamp";
    v17 = [NSArray arrayWithObjects:&v55 count:1];
    if (v13)
    {
      objc_setProperty_nonatomic_copy(v13, v16, v17, 48);
    }

    v18 = sub_10036C90C();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100302CAC;
    v52 = &unk_100522808;
    v19 = v13;
    *&v53 = v19;
    v20 = v9;
    *(&v53 + 1) = v20;
    v54 = &v45;
    [v18 readUsingSession:buf];

    v21 = objc_alloc_init(AppTelemetryLaunchDetails);
    v23 = v21;
    if (v21)
    {
      objc_setProperty_atomic_copy(v21, v22, v20, 16);
      objc_setProperty_atomic_copy(v23, v24, v46[5], 8);
    }

    _Block_object_dispose(&v45, 8);
    if (v23)
    {
      Property = objc_getProperty(v23, v25, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v27 = sub_100302AE4(AppTelemetry, Property);
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (v23)
      {
        v30 = objc_getProperty(v23, v29, 8, 1);
      }

      else
      {
        v30 = 0;
      }

      v31 = sub_1002525A8(v30);
      v32 = [v8 count];
      *buf = 138413058;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      *&buf[22] = 2114;
      v52 = v27;
      LOWORD(v53) = 2048;
      *(&v53 + 2) = v32;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@] AppTelemetry report with oldest entry date: %{public}@ dbAge: %{public}@ qualified app count: %ld", buf, 0x2Au);
    }

    v33 = sub_1002AB1B0();
    v34 = sub_1002AC124(v33);

    if (v23)
    {
      v36 = objc_getProperty(v23, v35, 16, 1);
      sub_100302F2C(v36, v34, v8, v27, 1, @"com.apple.appBundleUtilization", v7);
      v38 = objc_getProperty(v23, v37, 16, 1);
    }

    else
    {
      sub_100302F2C(0, v34, v8, v27, 1, @"com.apple.appBundleUtilization", v7);
      v38 = 0;
    }

    sub_100302F2C(v38, v34, v8, v27, 0, @"com.apple.appBundleUtilizationAppOnly", v7);
  }
}

void sub_100302ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_UNKNOWN **sub_100302AE4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NSDate now];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  [v2 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = v5 - v7;
  if (v8 <= 0.0)
  {
    v11 = &off_100547E90;
  }

  else
  {
    v9 = v8 / 86400.0;
    v10 = ceil(v8 / 86400.0);
    if (v8 / 86400.0 < 1.0)
    {
      v9 = v10;
    }

    v11 = [NSNumber numberWithInteger:v9];
  }

  return v11;
}

id sub_100302BA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = @"dbAge";
  v7[1] = @"updateType";
  v9 = *(a1 + 48);
  v8 = v2;
  v7[2] = @"daysSinceUpdate";
  v7[3] = @"usedSinceUpdate";
  v3 = [NSNumber numberWithBool:*(a1 + 64)];
  v7[4] = @"daysSinceUse";
  v4 = *(a1 + 56);
  v10 = v3;
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:v7 count:5];

  return v5;
}

uint64_t sub_100302C94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100302CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteQuery alloc];
  v5 = [v3 connection];

  v6 = [(SQLiteQuery *)v4 initOnConnection:v5 descriptor:*(a1 + 32)];
  v7 = +[LaunchEventEntity defaultProperties];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100302DAC;
  v10[3] = &unk_1005215E8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = v8;
  v12 = v9;
  [v6 enumerateMemoryEntitiesWithProperties:v7 usingBlock:v10];
}

void sub_100302DAC(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) addObject:v8];
  v3 = sub_10038B264(v8);
  if (v3)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    if (!v4)
    {
      v5 = sub_10038B264(v8);
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

void sub_100302E4C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = sub_1003D0F60(v10);
  v4 = v10;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = v10;
    v7 = v6;
    if (v6 && v5 && sub_1003D3068(v6) && (![v7[15] applicationHasMIDBasedSINF] || (sub_1003D2404(v7) & 1) != 0))
    {
      v8 = [v7[15] isPlaceholder];

      v4 = v10;
      if (v8)
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 40);
      v3 = sub_1003D0F60(v7);
      [v9 addObject:v3];
    }

    else
    {
    }

    v4 = v10;
  }

LABEL_11:
}

void sub_100302F2C(void *a1, void *a2, void *a3, void *a4, char a5, void *a6, void *a7)
{
  v13 = a1;
  v60 = a2;
  v14 = a3;
  v62 = a4;
  v61 = a6;
  v64 = a7;
  v66 = +[NSMutableDictionary dictionary];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v74 objects:v97 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v75;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v75 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v74 + 1) + 8 * i);
        if ((a5 & 1) != 0 || (sub_10038AEFC(*(*(&v74 + 1) + 8 * i)) & 1) == 0)
        {
          if (sub_10038AEFC(v19))
          {
            sub_10038AF64(v19);
          }

          else
          {
            sub_10038AD6C(v19);
          }
          v20 = ;
          if (v20)
          {
            v21 = sub_10038AE18(v19);
            if (v21 && [v14 containsObject:v20])
            {
              v22 = [v66 objectForKeyedSubscript:v20];

              if (!v22)
              {
                v21 = sub_10038AE18(v19);
                [v66 setObject:v21 forKeyedSubscript:v20];
                goto LABEL_16;
              }
            }

            else
            {
LABEL_16:
            }
          }

          continue;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v74 objects:v97 count:16];
    }

    while (v16);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v65 = v14;
  v23 = [v65 countByEnumeratingWithState:&v70 objects:v96 count:16];
  v25 = v60;
  if (v23)
  {
    v26 = v23;
    v27 = *v71;
    v58 = v80;
    *&v24 = 138413826;
    v57 = v24;
    v59 = *v71;
    do
    {
      v28 = 0;
      v63 = v26;
      do
      {
        if (*v71 != v27)
        {
          objc_enumerationMutation(v65);
        }

        v29 = *(*(&v70 + 1) + 8 * v28);
        v30 = [v25 objectForKeyedSubscript:{v29, v57, v58}];

        if (v30)
        {
          v31 = [v25 objectForKeyedSubscript:v29];
          v32 = [v31 installs];
          v33 = [v32 lastObject];

          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = *(v33 + 8);
          v35 = sub_1003A01E4(v33);
        }

        else
        {
          v36 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v29 allowPlaceholder:0 error:0];
          if (!v36)
          {
LABEL_36:
            v44 = 0;
            v35 = 0;
            v34 = 0;
LABEL_43:

            goto LABEL_44;
          }

          v33 = v36;
          v34 = sub_10040C9BC(v36);
          v35 = @"unknown";
        }

        if (v34)
        {
          v37 = v35 == 0;
        }

        else
        {
          v37 = 1;
        }

        if (!v37)
        {
          v38 = sub_100302AE4(AppTelemetry, v34);
          v39 = [v66 objectForKeyedSubscript:v29];
          v69 = v39;
          if (v39)
          {
            v40 = v39;
            v41 = sub_100302AE4(AppTelemetry, v39);
            [v34 timeIntervalSinceDate:v40];
            v43 = v42 < 0.0;
          }

          else
          {
            v43 = 0;
            v41 = &off_100547EA8;
          }

          v45 = v61;
          v46 = v38;
          v47 = v35;
          v48 = v41;
          v49 = v62;
          v68 = v64;
          v78 = _NSConcreteStackBlock;
          v79 = 3221225472;
          v80[0] = sub_100302BA4;
          v80[1] = &unk_1005227E0;
          v50 = v49;
          v81 = v50;
          v35 = v47;
          v82 = v35;
          v44 = v46;
          v83 = v44;
          v85 = v43;
          v51 = v48;
          v84 = v51;
          AnalyticsSendEventLazy();
          v52 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = v57;
            v87 = v64;
            v88 = 2114;
            v89 = v61;
            v90 = 2112;
            v91 = v44;
            v92 = 2112;
            v93 = v35;
            v94 = 1024;
            *v95 = v43;
            *&v95[4] = 2112;
            *&v95[6] = v51;
            *&v95[14] = 2112;
            *&v95[16] = v62;
            _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] { daysSinceUpdate: %@, updateType: %@ usedSinceUpdate: %{BOOL}d, daysSinceUse: %@, dbAge: %@ }", buf, 0x44u);
          }

          v53 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v54 = sub_1002525A8(v34);
            v55 = [v66 objectForKeyedSubscript:v29];
            v56 = sub_1002525A8(v55);
            *buf = v57;
            v87 = v64;
            v88 = 2112;
            v89 = v29;
            v90 = 2112;
            v91 = v54;
            v92 = 2112;
            v93 = v44;
            v94 = 2112;
            *v95 = v51;
            *&v95[8] = 2112;
            *&v95[10] = v56;
            *&v95[18] = 2112;
            *&v95[20] = v35;
            _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "[%@] [%@] lastUpdateDate: %@ daysSinceUpdate: %@ daysSinceLaunch: %@ lastLaunch: %@ updateType: %@", buf, 0x48u);
          }

          v27 = v59;
          v25 = v60;
          v26 = v63;
          goto LABEL_43;
        }

LABEL_44:

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v65 countByEnumeratingWithState:&v70 objects:v96 count:16];
    }

    while (v26);
  }
}

BOOL sub_100303630(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 originalRequest];
  if (!v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "(AMSDialogResult) No original request available, assuming the request was canceled", v11, 2u);
    }

    v6 = 1;
    goto LABEL_16;
  }

  v3 = [a1 selectedActionIdentifier];
  if (!v3)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "(AMSDialogResult) No selected action identifier available, assuming the request was canceled", buf, 2u);
    }

    goto LABEL_14;
  }

  v4 = [v2 locateActionWithIdentifier:v3];
  if (!v4)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "(AMSDialogResult) No selected action not found, assuming the request was canceled", v9, 2u);
    }

    v5 = 0;
LABEL_14:
    v6 = 1;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 style]== 2;
LABEL_15:

LABEL_16:
  return v6;
}

id *sub_1003037B4(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = SQLiteStatement;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a3);
      a1[2] = a2;
      objc_storeStrong(a1 + 3, a1);
    }
  }

  return a1;
}

uint64_t sub_100303840(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sqlite3_finalize(v2);
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return v3;
}

uint64_t sub_10030388C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return sqlite3_stmt_readonly(v1) != 0;
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
      return 1;
    }
  }

  return result;
}

uint64_t sub_1003038E4(uint64_t result)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {

      return sqlite3_step(v3);
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized", v1, v2];
      return 21;
    }
  }

  return result;
}

Bulletin *sub_100304114(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 content];

  v4 = [v3 userInfo];

  v5 = [Bulletin alloc];
  v6 = v4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(Bulletin *)v5 init];
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = [v6 objectForKey:@"actiontitle"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        actionButtonTitle = v7->_actionButtonTitle;
        v7->_actionButtonTitle = v9;
      }

      v11 = [v6 objectForKey:@"actionurl"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[NSURL alloc] initWithString:v11];
        actionButtonURL = v7->_actionButtonURL;
        v7->_actionButtonURL = v12;
      }

      v14 = [v6 objectForKey:@"date"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 copy];
        creationDate = v7->_creationDate;
        v7->_creationDate = v15;
      }

      v17 = [v6 objectForKey:@"msg"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        message = v7->_message;
        v7->_message = v18;
      }

      v20 = [v6 objectForKey:@"rid"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 copy];
        recordID = v7->_recordID;
        v7->_recordID = v21;
      }

      v23 = [v6 objectForKey:@"title"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 copy];
        title = v7->_title;
        v7->_title = v24;
      }

      v5 = [v6 objectForKey:@"url"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [[NSURL alloc] initWithString:v5];
        launchURL = v7->_launchURL;
        v7->_launchURL = v26;
      }
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

LABEL_20:

  return v7;
}

id sub_10030440C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(objc_opt_self());
  v8 = v6;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, v5, 48);
    objc_setProperty_nonatomic_copy(v8, v9, v4, 64);
  }

  return v8;
}

void sub_100304498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 actionIdentifier];
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = v5;
      v7 = v28;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Handling notification response with actionId: %{public}@", buf, 0x16u);
    }

    if ([v5 isEqualToString:UNNotificationDefaultActionIdentifier])
    {
      v8 = 24;
    }

    else
    {
      if ([v5 isEqualToString:UNNotificationDismissActionIdentifier])
      {
LABEL_17:

        goto LABEL_18;
      }

      v8 = 16;
    }

    v9 = *(a1 + v8);
    if (v9)
    {
      v10 = v9;
      v25[0] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v25[1] = FBSOpenApplicationOptionKeyUnlockDevice;
      v26[0] = &__kCFBooleanTrue;
      v26[1] = &__kCFBooleanTrue;
      v25[2] = FBSOpenApplicationOptionKeyLaunchOrigin;
      v26[2] = @"appstored";
      v11 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
      v12 = [v4 notification];
      v13 = [v12 request];
      v14 = [v13 identifier];
      v15 = [v14 isEqualToString:@"com.apple.appstored.authenticate.watch"];

      v16 = +[LSApplicationWorkspace defaultWorkspace];
      v17 = v16;
      if (v15)
      {
        v24 = 0;
        v18 = &v24;
        [v16 openSensitiveURL:v10 withOptions:v11 error:&v24];
      }

      else
      {
        v23 = 0;
        v18 = &v23;
        [v16 openURL:v10 withOptions:v11 error:&v23];
      }

      v19 = *v18;

      if (v19)
      {
        v20 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          *buf = 138543618;
          v28 = v21;
          v29 = 2114;
          v30 = v19;
          v22 = v21;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@]: Error opening URL. Error: %{public}@", buf, 0x16u);
        }
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t sub_100304784(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(UNMutableNotificationContent);
    [v2 setTitle:*(v1 + 64)];
    [v2 setBody:*(v1 + 48)];
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = v3;
    v5 = *(v1 + 8);
    if (v5)
    {
      [v3 setObject:v5 forKey:@"actiontitle"];
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = [v6 absoluteString];
      [v4 setObject:v7 forKey:@"actionurl"];
    }

    v8 = *(v1 + 32);
    if (v8)
    {
      [v4 setObject:v8 forKey:@"date"];
    }

    v9 = *(v1 + 24);
    if (v9)
    {
      v10 = [v9 absoluteString];
      [v4 setObject:v10 forKey:@"url"];
    }

    v11 = *(v1 + 48);
    if (v11)
    {
      [v4 setObject:v11 forKey:@"msg"];
    }

    v12 = *(v1 + 56);
    if (v12)
    {
      [v4 setObject:v12 forKey:@"rid"];
    }

    v13 = *(v1 + 64);
    if (v13)
    {
      [v4 setObject:v13 forKey:@"title"];
    }

    [v2 setUserInfo:v4];

    [v2 setCategoryIdentifier:@"asd-notification-default"];
    [v2 setShouldBackgroundDefaultAction:1];
    v14 = *(v1 + 40);
    v15 = v14;
    if (v14)
    {
      [v2 setInterruptionLevel:{objc_msgSend(v14, "unsignedIntegerValue")}];
    }

    if (*(v1 + 72))
    {
      v16 = [UNNotificationIcon iconForApplicationIdentifier:?];
      [v2 setIcon:v16];

      if ([*(v1 + 72) isEqualToString:@"com.apple.Bridge"])
      {
        v17 = ASDLocalizedString();
        [v2 setHeader:v17];
      }

      else
      {
        v18 = [LSApplicationRecord alloc];
        v19 = *(v1 + 72);
        v27 = 0;
        v20 = [v18 initWithBundleIdentifier:v19 allowPlaceholder:0 error:&v27];
        v21 = v27;
        if (v21)
        {
          v22 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = *(v1 + 72);
            *buf = 138543874;
            v29 = v23;
            v30 = 2114;
            v31 = v24;
            v32 = 2114;
            v33 = v21;
            v25 = v23;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@]: Error looking up record for %{public}@: %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v22 = [v20 localizedName];
          [v2 setHeader:v22];
        }
      }
    }

    v1 = [UNNotificationRequest requestWithIdentifier:*(v1 + 56) content:v2 trigger:0];
  }

  return v1;
}

__CFString *sub_100304BEC(uint64_t a1)
{
  if (a1 > 20)
  {
    switch(a1)
    {
      case 0x15:
        v2 = @"QOS_CLASS_DEFAULT";

        break;
      case 0x21:
        v2 = @"QOS_CLASS_USER_INTERACTIVE";

        break;
      case 0x19:
        v2 = @"QOS_CLASS_USER_INITIATED";

        break;
      default:
LABEL_20:
        v2 = [NSString stringWithFormat:@"Unknown Class: %u", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        v2 = @"QOS_CLASS_UTILITY";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"QOS_CLASS_BACKGROUND";
  }

  else
  {
    v2 = @"QOS_CLASS_UNSPECIFIED";
  }

  return v2;
}

id sub_100305068(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v6 = [RBSProcessPredicate predicateMatchingBundleIdentifier:a2];
  v7 = v5;
  v16.receiver = a1;
  v16.super_class = ProcessTerminator;
  v8 = objc_msgSendSuper2(&v16, "init");
  if (v8)
  {
    v9 = [[NSConditionLock alloc] initWithCondition:0];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = [[RBSTerminateContext alloc] initWithExplanation:v7];
    [v11 setMaximumTerminationResistance:30];
    v12 = [[RBSTerminationAssertion alloc] initWithPredicate:v6 context:v11];
    v13 = *(v8 + 2);
    *(v8 + 2) = v12;

    [*(v8 + 2) addObserver:v8];
  }

  v14 = v8;
  return v14;
}

uint64_t sub_1003051EC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [NSDate dateWithTimeIntervalSinceNow:?];
  v5 = *(a1 + 16);
  v13 = 0;
  v6 = [v5 acquireWithError:&v13];
  v7 = v13;
  if (v6)
  {
    if ([*(a1 + 8) lockWhenCondition:1 beforeDate:v4])
    {
      [*(a1 + 8) unlock];
      v6 = 1;
      goto LABEL_8;
    }

    v12 = v4;
    v8 = ASDErrorWithUserInfoAndFormat();

    v6 = 0;
  }

  else
  {
    v8 = ASDErrorWithUnderlyingErrorAndDescription();
  }

  v7 = v8;
LABEL_8:
  [*(a1 + 16) removeObserver:{a1, v12}];
  [*(a1 + 16) invalidate];
  v9 = *(a1 + 16);
  *(a1 + 16) = 0;

  if (a2 && (v6 & 1) == 0)
  {
    v10 = v7;
    *a2 = v7;
  }

  return v6;
}

id *sub_1003053CC(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = IAPInfoUpdateRequest;
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

void sub_100305468(uint64_t a1, void *a2)
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
      if (v8 && (v9 = v8, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"databases/%ld/update", [*(a1 + 8) integerForKey:@"iap-daap/database-id" defaultValue:201]), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "URLByAppendingPathComponent:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v11))
      {
        v12 = 0;
      }

      else
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = objc_opt_class();
          v34 = v38;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@]: Failed to construct request URL", buf, 0xCu);
        }

        v12 = sub_1001C1764(2, 0);
        v11 = 0;
      }

      v14 = v12;
      if (v11)
      {
        v16 = [PurchaseHistoryUpdateDAAPRequestEncoder alloc];
        v17 = *(a1 + 16);
        if (v17)
        {
          v17 = objc_getProperty(v17, v15, 32, 1);
        }

        v18 = v17;
        v19 = sub_1001FB440(&v16->super.isa, v18);

        v21 = sub_100363298([DAAPURLRequest alloc], v19, v11);
        v22 = *(a1 + 16);
        if (v22)
        {
          v22 = objc_getProperty(v22, v20, 8, 1);
        }

        v24 = v22;
        if (v21)
        {
          objc_setProperty_atomic(v21, v23, v24, 32);
        }

        v26 = *(a1 + 16);
        if (v26)
        {
          v26 = objc_getProperty(v26, v25, 16, 1);
        }

        v28 = v26;
        if (v21)
        {
          objc_setProperty_atomic(v21, v27, v28, 48);
        }

        v30 = *(a1 + 16);
        if (v30)
        {
          v30 = objc_getProperty(v30, v29, 24, 1);
        }

        v32 = v30;
        if (v21)
        {
          objc_setProperty_atomic(v21, v31, v32, 56);
        }

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1003057F0;
        v35[3] = &unk_10051DCA0;
        v35[4] = a1;
        v36 = v4;
        sub_100363334(v21, v35);
      }

      else
      {
        v19 = sub_1001C1764(2, v14);
        (*(v4 + 2))(v4, 0, v19);
      }
    }

    else
    {
      v33 = sub_1001C1764(4, 0);
      (*(v4 + 2))(v4, 0, v33);
    }
  }
}

void sub_1003057F0(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = v19;
  if (!v19)
  {
    v7 = *(a1 + 40);
    v8 = v5;
    goto LABEL_5;
  }

  if ([v19 responseStatusCode] - 300 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v7 = *(a1 + 40);
    v6 = 1;
    v8 = 0;
LABEL_5:
    v9 = sub_1001C1764(v6, v8);
    (*(v7 + 16))(v7, 0, v9);
    goto LABEL_16;
  }

  v10 = [v19 data];
  v9 = v10;
  if (!v10)
  {
    v17 = *(a1 + 40);
    v15 = sub_1001C1764(0, 0);
    (*(v17 + 16))(v17, 0, v15);
    goto LABEL_15;
  }

  if (!*(a1 + 32))
  {
    v16 = *(a1 + 40);
LABEL_14:
    v18 = sub_1001C1764(0, 0);
    (*(v16 + 16))(v16, 0, v18);

    v15 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  v12 = sub_1002680E4([PurchaseHistoryUpdateDAAPResponseDecoder alloc], v11);

  sub_10026815C(v12);
  if (v12)
  {
    Property = objc_getProperty(v12, v13, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v15 = Property;

  v16 = *(a1 + 40);
  if (!v15)
  {
    goto LABEL_14;
  }

  (*(v16 + 16))(v16, v15, 0);
LABEL_15:

LABEL_16:
}

id sub_100305A04()
{
  objc_opt_self();
  v0 = +[ACAccountStore ams_sharedAccountStore];
  v1 = [v0 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];

  v2 = [[ACAccount alloc] initWithAccountType:v1];

  return v2;
}

id sub_100305A84(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 appleID];

  if (v3)
  {
    v4 = +[ACAccountStore ams_sharedAccountStore];
    v5 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];

    v3 = [[ACAccount alloc] initWithAccountType:v5];
    v6 = [v2 appleID];
    [v3 setUsername:v6];

    v7 = [v2 altDSID];
    [v3 ams_setAltDSID:v7];
  }

  return v3;
}

id sub_100305C4C()
{
  objc_opt_self();
  if (qword_1005AABE8 != -1)
  {
    dispatch_once(&qword_1005AABE8, &stru_1005228B0);
  }

  v0 = qword_1005AABF0;

  return v0;
}

void sub_100305CA4(id a1)
{
  v1 = objc_alloc_init(EventServiceHost);
  v2 = qword_1005AABF0;
  qword_1005AABF0 = v1;
}

void sub_1003061B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id location)
{
  objc_destroyWeak(&a49);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100306208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003062EC;
    block[3] = &unk_10051C078;
    v11 = WeakRetained;
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t sub_1003062EC(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v2 = (*(a1[6] + 16))();
  }

  return _objc_release_x2(v2);
}

void sub_100306370(id a1, EventServiceHost *a2, ExtensionRequestMetadata *a3)
{
  if (a3)
  {
    request = a3->_request;
  }

  else
  {
    request = 0;
  }

  v5 = a3;
  v6 = a2;
  [(ASDExtensionRequest *)request requestEnded];
  sub_1003063EC(v6, v5);
}

void sub_1003063EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14 = v3;
    if (v3)
    {
      v4 = v3[4];
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(a1 + 24) objectForKeyedSubscript:v4];
    [v5 removeObject:v14];
    if ([v5 count])
    {
      v6 = *(a1 + 32);
      v7 = v14;
      if (!v14)
      {
        v8 = 0;
LABEL_13:
        [v6 setObject:0 forKeyedSubscript:v8];

        v3 = v14;
        goto LABEL_14;
      }
    }

    else
    {
      if (!v14)
      {
        v8 = 0;
        v6 = *(a1 + 32);
        goto LABEL_13;
      }

      v9 = v14[6];
      if (v9)
      {
        v10 = v9;
        v11 = v14[6];
        v12 = [v11 phase];
        v13 = [v14[6] terminalPhase];

        if (v12 == v13)
        {
          [*(a1 + 24) setObject:0 forKeyedSubscript:v14[4]];
        }
      }

      v6 = *(a1 + 32);
      v7 = v14;
    }

    v8 = v7[3];
    goto LABEL_13;
  }

LABEL_14:
}

void sub_100306518(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "requestCompletionBlock(%{public}@, %{public}@)", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100306608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "requestCancellationBlock(%{public}@, %{public}@)", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1003066F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "requestInterruptionBlock(%{public}@)", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10030683C;
    v8[3] = &unk_1005229B8;
    v9 = WeakRetained;
    (*(v7 + 16))(v7, v3, v8);
  }
}

void sub_10030683C(uint64_t a1, id *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = v4;
  if (a2)
  {
    if (v5)
    {
      if (v5[5] > 0)
      {
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v16 = 0;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Reached max retry count; giving up.", v16, 2u);
        }

        sub_1003063EC(a2, v5);
        v8 = 0;
        goto LABEL_18;
      }

      v9 = v5[4];
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_100307674(a2, v6, v9, a2);
    v8 = v10;
    if (v10)
    {
      if (v5)
      {
        *(v10 + 40) = v5[5] + 1;
        v11 = v5[4];
      }

      else
      {
        v11 = 0;
        *(v10 + 40) = 1;
      }

      v12 = [a2[3] objectForKeyedSubscript:v11];
      v13 = v12;
      if (v12)
      {
        [v12 addObject:v8];
        [a2[4] setObject:v8 forKeyedSubscript:v8[3]];
        if (v5)
        {
          v14 = v5[6];
        }

        else
        {
          v14 = 0;
        }

        sub_100307278(v14, v8);
      }
    }

    else
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to retry; giving up.", buf, 2u);
      }
    }

    sub_1003063EC(a2, v5);
    if (!v5)
    {
      v15 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v15 = v5[1];
LABEL_19:
    [v15 requestEnded];
  }
}

void sub_100306A0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (v1)
  {
    if ([v2 phase] == 1)
    {
      v4 = *(v1 + 24);
      v5 = [v3 bundleID];
      v6 = [v4 objectForKeyedSubscript:v5];

      if (v6)
      {
        v7 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Dangling request(s)", buf, 2u);
        }
      }

      v8 = [v3 bundleID];
      sub_1003070C8(v1, v8);
    }

    v9 = [v3 bundleID];
    v10 = [*(v1 + 24) objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v29 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(*(v1 + 8), "count")}];
      [*(v1 + 24) setObject:v29 forKeyedSubscript:v9];
      objc_initWeak(&location, v1);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = *(v1 + 8);
      v13 = [v12 countByEnumeratingWithState:&v30 objects:buf count:16];
      if (v13)
      {
        v14 = *v31;
        do
        {
          v15 = 0;
          do
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v30 + 1) + 8 * v15);
            v17 = objc_loadWeakRetained(&location);
            v18 = sub_100307674(v1, v16, v9, v17);

            if (v18)
            {
              [v29 addObject:v18];
              v19 = *(v1 + 32);
              v20 = v18[3];
              [v19 setObject:v18 forKeyedSubscript:v20];
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v30 objects:buf count:16];
        }

        while (v13);
      }

      v11 = v29;
      objc_destroyWeak(&location);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:buf count:16];
    if (v22)
    {
      v23 = *v31;
      do
      {
        v24 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v21);
          }

          sub_100307278(v3, *(*(&v30 + 1) + 8 * v24));
          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v30 objects:buf count:16];
      }

      while (v22);
    }

    v25 = [v3 phase];
    v26 = [v3 terminalPhase];
    if (v21 && v25 == v26 && ![v21 count])
    {
      v27 = *(v1 + 24);
      v28 = [v3 bundleID];
      [v27 setObject:0 forKeyedSubscript:v28];
    }
  }
}

void sub_100306DD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v17 = a5;
  v18 = a6;
  v19 = v18;
  if (a1)
  {
    v20 = v18;
    v21 = a10;
    v22 = a3;
    v19 = v20;
    v23 = sub_1002ACE24([ASDInstallationEvent alloc], a2, v22, a4, v17, v20, a7, a8, a9, v21);

    if (v23)
    {
      v24 = v23;
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v24 phase];
        v31 = [v24 bundleID];
        *block = 134218242;
        *&block[4] = v30;
        *&block[12] = 2114;
        *&block[14] = v31;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "postInstallationEvent: %ld, %{public}@", block, 0x16u);
      }

      v26 = [v24 bundleID];

      if (v26)
      {
        v27 = *(a1 + 16);
        *block = _NSConcreteStackBlock;
        *&block[8] = 3221225472;
        *&block[16] = sub_100306A0C;
        v33 = &unk_10051B570;
        v34 = a1;
        v35 = v24;
        dispatch_async_and_wait(v27, block);
      }

      else
      {
        v29 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *block = 0;
          _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "bundleID == nil", block, 2u);
        }
      }
    }

    else
    {
      v28 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *block = 138543874;
        *&block[4] = v17;
        *&block[12] = 2114;
        *&block[14] = v19;
        *&block[22] = 2048;
        v33 = a9;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Not posting event for %{public}@ (%{public}@): metricsInstallType = %ld", block, 0x20u);
      }
    }
  }
}

void sub_1003070C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ending installationEvent request(s) for %{public}@", buf, 0xCu);
    }

    v5 = [*(a1 + 24) objectForKeyedSubscript:v3];
    [*(a1 + 24) setObject:0 forKeyedSubscript:v3];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = *(a1 + 32);
          if (v11)
          {
            [v12 setObject:0 forKeyedSubscript:*(v11 + 24)];
            v13 = *(v11 + 8);
          }

          else
          {
            [v12 setObject:0 forKeyedSubscript:{0, v15}];
            v13 = 0;
          }

          [v13 endRequest];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v14 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v8 = v14;
      }

      while (v14);
    }
  }
}

void sub_100307278(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 bundleID];
    v30 = 138543874;
    v31 = v7;
    v32 = 2048;
    v33 = [v4 phase];
    v34 = 2048;
    v35 = [v4 terminalPhase];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending didReceiveInstallationEvent: %{public}@ %ld/%ld", &v30, 0x20u);
  }

  if (v5)
  {
    v8 = v5[6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 phase];
      if (v10 == [v9 terminalPhase])
      {
        v11 = [v4 phase];
        if (v11 != [v9 phase])
        {
          v12 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v29 = v5[4];
            v30 = 138543362;
            v31 = v29;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: Last event was supposed to be the last!", &v30, 0xCu);
          }
        }
      }

      v13 = [v4 appType];
      if (v13 != [v9 appType])
      {
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v20 = [v4 bundleID];
          v21 = [v9 appType];
          v22 = [v4 appType];
          v30 = 138543874;
          v31 = v20;
          v32 = 2048;
          v33 = v21;
          v34 = 2048;
          v35 = v22;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: appType changed: %ld -> %ld", &v30, 0x20u);
        }
      }

      v15 = [v4 installType];
      if (v15 != [v9 installType])
      {
        v16 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = [v4 bundleID];
          v24 = [v9 installType];
          v25 = [v4 installType];
          v30 = 138543874;
          v31 = v23;
          v32 = 2048;
          v33 = v24;
          v34 = 2048;
          v35 = v25;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: installType changed: %ld -> %ld", &v30, 0x20u);
        }
      }

      v17 = [v4 source];
      if (v17 != [v9 source])
      {
        v18 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v26 = [v4 bundleID];
          v27 = [v9 source];
          v28 = [v4 source];
          v30 = 138543874;
          v31 = v26;
          v32 = 2048;
          v33 = v27;
          v34 = 2048;
          v35 = v28;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@: source changed: %ld -> %ld", &v30, 0x20u);
        }
      }
    }

    objc_storeStrong(v5 + 6, a1);
    v19 = v5[2];
  }

  else
  {
    v9 = 0;
    v19 = 0;
  }

  [v19 didReceiveInstallationEvent:v4];
}

ExtensionRequestMetadata *sub_100307674(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_initWeak(&location, a4);
  v9 = [[ASDExtensionRequest alloc] initWithExtension:v7 queue:*(a1 + 16)];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1003078B4;
  v27 = &unk_100522A08;
  objc_copyWeak(&v29, &location);
  v10 = v8;
  v28 = v10;
  [v9 setErrorBlock:&v24];
  v11 = [v9 beginRequestForHostContext:objc_opt_class() XPCInterface:&OBJC_PROTOCOL___ASDEventServiceExtensionRemoteXPCInterface];
  v12 = v11;
  v14 = v13;
  v15 = 0;
  if (v13 && v11)
  {
    v15 = [ExtensionRequestMetadata alloc];
    v23 = v9;
    v16 = v12;
    v17 = v14;
    v18 = v10;
    if (v15)
    {
      v31.receiver = v15;
      v31.super_class = ExtensionRequestMetadata;
      v19 = objc_msgSendSuper2(&v31, "init", v23, v24, v25, v26, v27);
      v15 = v19;
      if (v19)
      {
        objc_storeStrong(&v19->_request, v9);
        objc_storeStrong(&v15->_context, v12);
        objc_storeStrong(&v15->_requestIdentifier, v14);
        v20 = [v18 copy];
        bundleID = v15->_bundleID;
        v15->_bundleID = v20;
      }
    }
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v15;
}

void sub_10030787C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003078B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003079B4;
    v10[3] = &unk_10051C1E0;
    v11 = WeakRetained;
    v12 = *(a1 + 32);
    v13 = v5;
    v14 = v6;
    dispatch_async(v9, v10);
  }
}

void sub_1003079B4(uint64_t *a1)
{
  [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        if (v7)
        {
          v8 = v7[1];
        }

        else
        {
          v8 = 0;
        }

        if (v8 == a1[6])
        {
          v10 = v7;

          if (!v7)
          {
            goto LABEL_16;
          }

          sub_1003063EC(a1[4], v10);
          goto LABEL_19;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v9 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
      v4 = v9;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Missing metadata for request; already cleaned up?", buf, 2u);
  }

  v10 = 0;
LABEL_19:
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = a1[5];
    v14 = a1[7];
    *buf = 138543618;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Extension request for app %{public}@ failed with error: %{public}@", buf, 0x16u);
  }
}

void sub_100307BB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100307CB4;
      v7[3] = &unk_10051B570;
      v7[4] = a1;
      v8 = v3;
      dispatch_async_and_wait(v5, v7);
    }

    else
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "bundleID == nil", buf, 2u);
      }
    }
  }
}

id sub_100307D1C(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = UpdatableApp;
    a1 = objc_msgSendSuper2(&v20, "init");
    if (a1)
    {
      v7 = sub_1003D0F60(v5);
      v8 = *(a1 + 1);
      *(a1 + 1) = v7;

      v9 = [NSNumber numberWithUnsignedLongLong:sub_1003D0F1C(v5)];
      v10 = *(a1 + 6);
      *(a1 + 6) = v9;

      v11 = sub_1003D2FC0(v5);
      v12 = *(a1 + 7);
      *(a1 + 7) = v11;

      if (v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = [NSNumber numberWithLongLong:sub_1003D2F7C(v5)];
      }

      v14 = *(a1 + 5);
      *(a1 + 5) = v13;

      *(a1 + 16) = v6 != 0;
      *(a1 + 17) = sub_1003D2E08(v5);
      v15 = sub_1003D2234(v5);
      v16 = *(a1 + 3);
      *(a1 + 3) = v15;

      v17 = sub_1003D2360(v5);
      v18 = *(a1 + 4);
      *(a1 + 4) = v17;
    }
  }

  return a1;
}

id *sub_100307E74(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = UpdatableApp;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 6, a2);
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
}

id sub_100308018(id a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_13;
  }

  v27.receiver = a1;
  v27.super_class = FairPlayStreamReader;
  a1 = objc_msgSendSuper2(&v27, "init");
  if (!a1)
  {
    goto LABEL_13;
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.appstored.FairPlayStreamReader", v9);
  v11 = *(a1 + 8);
  *(a1 + 8) = v10;

  objc_storeStrong(a1 + 10, a3);
  [*(a1 + 10) setDelegate:a1];
  v12 = v7;
  v13 = +[AMSKeybag sharedInstance];
  v28 = 0;
  v14 = [v13 fairplayContextWithError:&v28];
  v15 = v28;

  if (v14)
  {
    [v12 bytes];
    [v12 length];
    sub_10001C860();
    if (!v16 || (v17 = v16, (v18 = *(a1 + 7)) == 0))
    {
      v24 = 1;
      goto LABEL_11;
    }

    sub_10000BA98(v18);
    *(a1 + 7) = 0;
    v19 = ASDErrorDomain;
    v30 = NSDebugDescriptionErrorKey;
    v20 = [NSString stringWithFormat:@"Session creation failed (error: %d)", v17];
    v31 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [NSError errorWithDomain:v19 code:1133 userInfo:v21];

    v15 = v22;
  }

  if (a4)
  {
    v23 = v15;
    v24 = 0;
    *a4 = v15;
  }

  else
  {
    v24 = 0;
  }

LABEL_11:
  v29 = v24;

  v25 = v29;
  if ((v25 & 1) == 0)
  {

    a1 = 0;
  }

LABEL_13:

  return a1;
}

id sub_10030841C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) hasBytesAvailable];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    result = [*(*(a1 + 32) + 80) streamStatus];
    v3 = result == 5 && *(*(a1 + 32) + 72) != 0;
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  return result;
}

void sub_10030869C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003086B8(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = 134217984;
    v7 = v5;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Upstream event code %lu", &v6, 0xCu);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 0x10) != 0)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Upstream end encountered, requesting one more read", &v6, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) &= ~0x10uLL;
    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
  }

  if ([*(a1 + 32) streamStatus] - 2 >= 4)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Dropping events for closed stream", &v6, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t sub_10030898C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003089A4(uint64_t a1)
{
  v2 = [*(a1 + 32) streamStatus];
  v3 = *(a1 + 32);
  if (v2 == 7)
  {
    v4 = [v3 streamError];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return;
  }

  if (*(v3 + 72))
  {
    v7 = [*(v3 + 72) length];
    memcpy(*(a1 + 56), [*(*(a1 + 32) + 72) bytes], v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = 0;

    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v10 = *(v3 + 80);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64) - v7;
  v13 = *(*(a1 + 40) + 8);
  obj = *(v13 + 40);
  v14 = [v10 readBytes:&v7[v11] length:v12 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if ([*(*(a1 + 32) + 80) streamStatus] == 5)
  {
    v15 = [*(*(a1 + 32) + 80) hasBytesAvailable] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = &v7[v14];
  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v37 = [*(*(a1 + 32) + 80) streamStatus];
    v38 = [*(*(a1 + 32) + 80) hasBytesAvailable];
    buf = 134218240;
    *buf_4 = v37;
    *&buf_4[8] = 1024;
    *&buf_4[10] = v38;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Upstream status = %lu; bytes available = %{BOOL}d", &buf, 0x12u);
  }

  if (v15)
  {
    sub_1002BB2AC(*(a1 + 32), 5);
    v18 = *(a1 + 32);
    if (v18)
    {
      dispatch_source_merge_data(*(v18 + 16), 0x10uLL);
    }
  }

  if (!v16)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v31 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Zero bytes available, zero bytes decrypted", &buf, 2u);
    }

    v32 = *(*(*(a1 + 48) + 8) + 24);
    goto LABEL_38;
  }

  v19 = *(*(a1 + 40) + 8);
  v22 = *(v19 + 40);
  v20 = (v19 + 40);
  v21 = v22;
  if (!*(a1 + 32))
  {
    goto LABEL_32;
  }

  v23 = v16 >> 15;
  v24 = v15 ^ 1;
  if ((v16 >> 15))
  {
    v24 = 0;
  }

  if (v24)
  {
LABEL_32:
    v30 = 0;
  }

  else
  {
    v40 = *(a1 + 56);
    v25 = malloc_type_malloc(4 * (v23 + 1), 0x100004052888210uLL);
    v26 = v25;
    if (v23)
    {
      memset_pattern16(v25, &unk_10044B9C0, 4 * (v16 >> 15));
    }

    if (v15 && (v16 & 0x7FFF) != 0)
    {
      v26[v23] = v16 & 0x7FFF;
      LODWORD(v23) = v23 + 1;
    }

    *buf_4 = 0;
    *&buf_4[4] = v26;
    buf = v23;
    *&buf_4[12] = v40;
    v44 = v16;
    sub_100016C70();
    if (v27)
    {
      v28 = [NSString stringWithFormat:@"Decryption failed (error: %d)", v27];
      v21 = ASDErrorWithDescription();
      v29 = v21;

      v30 = -1;
    }

    else
    {
      v30 = v15 ? v16 : (v23 << 15);
    }

    free(v26);
  }

  objc_storeStrong(v20, v21);
  *(*(*(a1 + 48) + 8) + 24) = v30;
  v32 = *(*(*(a1 + 48) + 8) + 24);
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_42:
    sub_1002BB120(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40));
    sub_1002BB2AC(*(a1 + 32), 7);
    return;
  }

LABEL_38:
  if (v16 > v32)
  {
    v33 = [NSData dataWithBytes:*(a1 + 56) + v32 length:v16 - v32];
    v34 = *(a1 + 32);
    v35 = *(v34 + 72);
    *(v34 + 72) = v33;

    v36 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v39 = [*(*(a1 + 32) + 72) length];
      buf = 134217984;
      *buf_4 = v39;
      _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "(FairPlayStreamReader) Scratch buffer size = %lu", &buf, 0xCu);
    }
  }
}

__CFString *sub_100308EC0(uint64_t a1, int a2)
{
  objc_opt_self();
  if (a2 - 1) <= 0x12 && ((0x78FBFu >> (a2 - 1)))
  {
    v3 = *off_100522AA0[(a2 - 1)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

NSNumber *sub_100308F30(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  [v2 timeIntervalSince1970];
  v4 = v3;

  return [NSNumber numberWithLongLong:(v4 * 1000.0)];
}

void sub_10030A32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10030A368(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10030A380(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
  v6 = [v4 connection];

  v7 = sub_1002D3F5C(AppUsageSessionEntity, v6, v5);

  v8 = sub_1002F8EB8();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10030A49C;
  v9[3] = &unk_10051B010;
  v9[4] = *(a1 + 40);
  [v7 enumerateMemoryEntitiesWithProperties:v8 usingBlock:v9];
}

uint64_t sub_10030A4D4(uint64_t a1, void *a2)
{
  v19 = *(a1 + 32);
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v19 count:1];
  v12 = 0;
  v5 = sub_1003F1090(v3, v4, &v12);

  v6 = v12;
  *(*(*(a1 + 56) + 8) + 24) = [v5 count] != 0;

  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) logKey];
      v9 = *(a1 + 48);
      *buf = 138412802;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Error creating fresh app usage session entity. Error: %{public}@", buf, 0x20u);
    }
  }

  v10 = *(*(*(a1 + 56) + 8) + 24);

  return v10;
}

const __CFString *sub_10030ABD4()
{
  objc_opt_self();
  v0 = MGGetSInt32Answer() - 1;
  if (v0 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_100522B60[v0];
  }
}

void *sub_10030AC20(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = sub_10030ABD4();
      v5 = v2[2];
      v2[2] = v4;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

id *sub_10030ACA0(id *a1)
{
  if (a1)
  {
    v3 = a1 + 1;
    v2 = a1[1];
    if (!v2)
    {
      objc_opt_self();
      v4 = MGGetSInt32Answer() - 1;
      if (v4 > 5)
      {
        v5 = @"Unknown";
      }

      else
      {
        v5 = off_100522B90[v4];
      }

      objc_storeStrong(v3, v5);
      v2 = *v3;
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

BOOL sub_10030AE10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = a2;
  v8 = [v7 connection];
  v9 = [v3 createAppEventsForBundleIDs:v4 eventType:v5 installType:v6 connection:v8];

  v10 = *(a1 + 48);
  v18 = 0;
  v11 = sub_1003F05C0(v7, v9, v10, &v18);

  v12 = v18;
  v13 = [v11 count];

  if (v12)
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) logKey];
      v17 = [*(a1 + 40) componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@] Error creating entity for bundleIDs: [%{public}@] error: %{public}@", buf, 0x20u);
    }
  }

  return v13 != 0;
}

uint64_t sub_10030B07C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v11 = 0;
  v6 = sub_1003F05C0(v5, v3, [v4 appEventEntityClass], &v11);

  v7 = v11;
  [v6 count];

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
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Importing launch event(s) failed with error: %{public}@", buf, 0x16u);
    }
  }

  return 1;
}

id sub_10030B4C0()
{
  objc_opt_self();
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 isAppAnalyticsAllowed];

  return v1;
}

id sub_10030B504()
{
  objc_opt_self();
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 isAutomaticAppDownloadsAllowed];

  return v1;
}

id sub_10030B548()
{
  objc_opt_self();
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 isDiagnosticSubmissionAllowed];

  return v1;
}

BOOL sub_10030B58C()
{
  objc_opt_self();
  v0 = +[MCProfileConnection sharedConnection];
  if ([v0 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed] == 2)
  {
    v1 = 0;
  }

  else
  {
    v2 = +[MCProfileConnection sharedConnection];
    v1 = [v2 effectiveBoolValueForSetting:MCFeatureUIAppInstallationAllowed] != 2;
  }

  return v1;
}

id sub_10030B61C(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  objc_opt_self();
  if (a2 > 2)
  {
    v3 = 0;
LABEL_6:
    v5 = [[NSNumber alloc] initWithInteger:1000];
    goto LABEL_7;
  }

  v3 = **(&off_100522BC0 + a2);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 effectiveValueForSetting:v3];

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

double sub_10030B6D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = ProgressPortions;
    v5 = objc_msgSendSuper2(&v8, "init");
    if (v5)
    {
      if (a3 < 1)
      {
        result = 0.6;
        *(v5 + 8) = xmmword_10044BC30;
      }

      else
      {
        *(v5 + 2) = 0x3FC3333333333333;
        v7 = a2 / (a3 + a2) * 0.85;
        *(v5 + 1) = v7;
        result = 0.85 - v7;
        *(v5 + 3) = result;
        *(v5 + 4) = a3;
      }
    }
  }

  return result;
}

void *sub_10030B7F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = AssetRequest;
    a1 = objc_msgSendSuper2(&v15, "_initWithCFURLRequest:", [v5 _CFURLRequest]);
    if (a1)
    {
      v7 = [v6 copy];
      v8 = a1[2];
      a1[2] = v7;

      if (!a1[2])
      {
        v9 = objc_alloc_init(AssetRequestProperties);
        v10 = a1[2];
        a1[2] = v9;
      }

      v11 = [v5 allowsCellularAccess];
      if (!v6 || !v11 || (v6[9] & 1) == 0)
      {
        [a1 setAllowsCellularAccess:0];
      }

      v12 = [v5 allowsConstrainedNetworkAccess];
      if (!v6 || !v12 || (v6[10] & 1) == 0)
      {
        [a1 setAllowsConstrainedNetworkAccess:0];
      }

      v13 = [v5 allowsExpensiveNetworkAccess];
      if (!v6 || !v13 || (v6[11] & 1) == 0)
      {
        [a1 setAllowsExpensiveNetworkAccess:0];
      }
    }
  }

  return a1;
}

void *sub_10030B928(void *a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = [NSURLRequest requestWithURL:a2];
    v7 = sub_10030B7F0(v3, v6, v5);

    v3 = v7;
  }

  return v3;
}

id sub_10030BB94(id result)
{
  if (result)
  {
    v1 = [NSURLProtocol propertyForKey:@"AssetRequetPropertyRangeOffset" inRequest:result];
    v2 = [v1 unsignedLongLongValue];

    return v2;
  }

  return result;
}

void sub_10030BBE8(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = [NSNumber numberWithUnsignedLongLong:a2];
      [NSURLProtocol setProperty:v4 forKey:@"AssetRequetPropertyRangeOffset" inRequest:a1];

      v5 = [NSString stringWithFormat:@"bytes=%llu-", a2];
      [a1 setValue:v5 forHTTPHeaderField:@"Range"];
    }

    else
    {
      [NSURLProtocol removePropertyForKey:@"AssetRequetPropertyRangeOffset" inRequest:a1];

      [a1 setValue:0 forHTTPHeaderField:@"Range"];
    }
  }
}

id sub_10030BD04()
{
  objc_opt_self();
  if (qword_1005AABF8 != -1)
  {
    dispatch_once(&qword_1005AABF8, &stru_100522BD8);
  }

  v0 = qword_1005AAC00;

  return v0;
}

void sub_10030BD5C(id a1)
{
  v1 = [ClipService alloc];
  v2 = sub_1003BBF50();
  v3 = sub_1003340D8();
  v9 = v2;
  v4 = v3;
  if (v1)
  {
    v10.receiver = v1;
    v10.super_class = ClipService;
    v5 = objc_msgSendSuper2(&v10, "init");
    v1 = v5;
    if (v5)
    {
      v5->_lock._os_unfair_lock_opaque = 0;
      v6 = objc_alloc_init(NSMutableDictionary);
      sessions = v1->_sessions;
      v1->_sessions = v6;

      objc_storeStrong(&v1->_device, v2);
      objc_storeStrong(&v1->_urlSession, v3);
    }
  }

  v8 = qword_1005AAC00;
  qword_1005AAC00 = v1;
}

void sub_10030C51C(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  [*(*(a1 + 32) + 24) setObject:0 forKeyedSubscript:*(a1 + 40)];
  v2 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v2);
}

id sub_10030CD68()
{
  objc_opt_self();
  if (qword_1005AAC10 != -1)
  {
    dispatch_once(&qword_1005AAC10, &stru_100522C00);
  }

  v0 = qword_1005AAC08;

  return v0;
}

void sub_10030CDC0(id a1)
{
  v1 = objc_alloc_init(DiagnosticService);
  v2 = qword_1005AAC08;
  qword_1005AAC08 = v1;
}

void sub_10030CEA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10030CF4C;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

void sub_10030CF4C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) _unboostingRemoteObjectProxy];
        [v7 receiveMessage:*(a1 + 40)];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10030D108(uint64_t a1)
{
  v2 = [[NSXPCConnection alloc] initWithListenerEndpoint:*(a1 + 32)];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DiagnosticListener];
  [v2 setRemoteObjectInterface:v3];

  [*(*(a1 + 40) + 8) addObject:v2];
  objc_initWeak(&location, v2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10030D2B4;
  v6[3] = &unk_100522C28;
  v6[4] = *(a1 + 40);
  objc_copyWeak(&v7, &location);
  [v2 setInterruptionHandler:v6];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10030D3B8;
  v4[3] = &unk_100522C28;
  v4[4] = *(a1 + 40);
  objc_copyWeak(&v5, &location);
  [v2 setInvalidationHandler:v4];
  [v2 resume];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_10030D284(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10030D2B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10030D360;
  v3[3] = &unk_100522C28;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  sub_100379C5C(v2, v3);
  objc_destroyWeak(&v4);
}

void sub_10030D360(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

void sub_10030D3B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10030D464;
  v3[3] = &unk_100522C28;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  sub_100379C5C(v2, v3);
  objc_destroyWeak(&v4);
}

void sub_10030D464(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

void sub_10030D71C(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1003DAC60();
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  v6 = +[AppInstall defaultProperties];
  v7 = [v6 mutableCopy];

  v11 = @"IFNULL(app_install.phase, 10)";
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 addObjectsFromArray:v8];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10030D88C;
  v9[3] = &unk_100520790;
  v10 = *(a1 + 32);
  [v5 enumerateMemoryEntitiesWithProperties:v7 usingBlock:v9];
}

void sub_10030D88C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = sub_10023E604(v3, @"IFNULL(app_install.phase, 10)");
  v5 = sub_100408EB0(v3);

  [v2 appendFormat:@"\n  (%3ld) %@", v4, v5];
}

void sub_10030EED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = [XDCPingMessage alloc];
    if (v5)
    {
      Property = objc_getProperty(v5, v10, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v13 = Property;
    v7 = [(XDCPingMessage *)v11 initWithData:v13];

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        isa = v7[1].isa;
      }

      else
      {
        isa = 0;
      }

      v15 = isa;
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ >> RECEIVED PONG", &v16, 0xCu);
    }

    goto LABEL_12;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[1];
    }

    v9 = v8;
    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ >> SENDING FAILED: %{public}@", &v16, 0x16u);
LABEL_12:
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10030F0A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_1003DCF8C([AuthorizeMachine alloc], *(a1 + 32), 2, 0, v5);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10030F230;
    v9[3] = &unk_10051B8A8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    sub_1003DD71C(v7, v9);
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bag load failed with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10030F230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Authorize complete with error: %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) ams_DSID];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Authorize complete for account: %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_10030F358(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_10030F77C;
    v31 = sub_10030F78C;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10030F77C;
    v25 = sub_10030F78C;
    v26 = 0;
    if (v5)
    {
      v7 = dispatch_semaphore_create(0);
      v8 = +[SubscriptionEntitlementsCoordinator sharedInstance];
      v9 = sub_1003FA4F0(XPCRequestToken, 1);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10030F794;
      v17[3] = &unk_100522D20;
      v19 = &v21;
      v20 = &v27;
      v10 = v7;
      v18 = v10;
      sub_1002F4DEC(v8, 1uLL, v9, 0, 0, 0, v17);

      v11 = dispatch_time(0, 20000000000);
      if (dispatch_semaphore_wait(v10, v11))
      {
        v12 = ASDErrorWithTitleAndMessage();
        v13 = v28[5];
        v28[5] = v12;
      }

      if (a3)
      {
        v14 = v28[5];
        if (v14)
        {
          *a3 = v14;
        }
      }

      v15 = v22[5];
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_10030F5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10030F5D0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) updateSubscriptionInfoWithEntitlement:*(a1 + 40) account:*(a1 + 48) bag:a2 logKey:*(a1 + 56)];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Testing arcade cached update with result: %{BOOL}d", v6, 8u);
  }

  return (*(*(a1 + 64) + 16))();
}

uint64_t sub_10030F6A8(uint64_t a1, uint64_t a2)
{
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] oneAccountDSID returned: %lld", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10030F77C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10030F794(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 segment] == 1)
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100310968(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = @"ledger";
  v6 = a2;
  v3 = a2;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  (*(v2 + 16))(v2, v4);
}

uint64_t sub_100310A18(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Testing sbsync if subscribed complete", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100310AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100547F38];
  v5 = [v3 connection];
  v6 = sub_1002D3F5C(AppInstallEntity, v5, v4);

  v7 = [v6 countOfEntities];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100310C58;
  v16 = &unk_10051CCA0;
  v8 = v3;
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  [v6 enumeratePersistentIDsUsingBlock:&v13];
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(*(a1 + 32) + 8) + 40) count];
    *buf = 134218240;
    v20 = v11;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cleared optimal download window from %ld updates (%ld total updates)", buf, 0x16u);
  }

  return 1;
}

void sub_100310C58(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v10 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = sub_100294554(v10);
  v7 = sub_1003B68DC(v6);

  if (v7)
  {
    v8 = sub_100340328(v10, @"bundle_id");
    if (!v8)
    {
      v9 = sub_10029430C(v10);
      v8 = [v9 description];
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
    sub_1003B69B0(v6, 0);
    sub_1002945E4(v10, v6);
  }
}

BOOL sub_100310D6C(uint64_t a1, id a2)
{
  v3 = sub_1003E4524(a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return [*(*(*(a1 + 32) + 8) + 40) count] != 0;
}

void sub_100310FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

void sub_10031176C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

id *sub_10031187C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1003118DC([CallerRequestPresenter alloc], v2);

  return v3;
}

id *sub_1003118DC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = CallerRequestPresenter;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_100311954(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100311AB0;
  v18 = sub_100311AC0;
  v19 = sub_1003118DC([CallerRequestPresenter alloc], v7);
  v9 = v15[5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100311AC8;
  v11[3] = &unk_100522D48;
  v10 = v8;
  v12 = v10;
  v13 = &v14;
  [v9 presentAuthenticateRequest:v6 resultHandler:v11];

  _Block_object_dispose(&v14, 8);
}

void sub_100311A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100311AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100311AC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100311C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authentication request completed successfully", &v11, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Authentication request failed: %{public}@", &v11, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_100311EB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dialog request completed successfully", &v11, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Dialog request failed: %{public}@", &v11, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

void sub_1003120E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Engagement request completed successfully", &v11, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Engagement request failed: %{public}@", &v11, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

id sub_100312260(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100311AB0;
  v24 = sub_100311AC0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100311AB0;
  v18 = sub_100311AC0;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100312438;
  v10[3] = &unk_100522D98;
  v12 = &v20;
  v13 = &v14;
  v6 = dispatch_semaphore_create(0);
  v11 = v6;
  sub_1003124D4(v5, v4, v10);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v21[5];
  if (a3 && !v7)
  {
    *a3 = v15[5];
    v7 = v21[5];
  }

  v8 = v7;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void sub_100312414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100312438(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1003124D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100311AB0;
  v15 = sub_100311AC0;
  v16 = objc_alloc_init(InteractiveRequestPresenter);
  v6 = v12[5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003127A0;
  v8[3] = &unk_100522D70;
  v7 = v5;
  v9 = v7;
  v10 = &v11;
  [v6 presentDialogRequest:v4 resultHandler:v8];

  _Block_object_dispose(&v11, 8);
}

void sub_1003125F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100312610(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100311AB0;
  v15 = sub_100311AC0;
  v16 = objc_alloc_init(InteractiveRequestPresenter);
  v6 = v12[5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10031274C;
  v8[3] = &unk_100522D48;
  v7 = v5;
  v9 = v7;
  v10 = &v11;
  [v6 presentAuthenticateRequest:v4 resultHandler:v8];

  _Block_object_dispose(&v11, 8);
}

void sub_100312734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10031274C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_1003127A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_1003129C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003129DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authentication request completed successfully", &v13, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Authentication request failed: %{public}@", &v13, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_100312B68(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"RequestPresenterWillPresentUINotification" object:0];

    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100311AB0;
    v19 = sub_100311AC0;
    v20 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v7];
    if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v16[5] setShouldPendInSetupIfNotAllowed:1];
    }

    v10 = [v16[5] present];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100312D1C;
    v11[3] = &unk_100522DE8;
    v12 = v7;
    v13 = v8;
    v14 = &v15;
    [v10 addFinishBlock:v11];

    _Block_object_dispose(&v15, 8);
  }
}

void sub_100312D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100312D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Dialog request completed successfully", &v14, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v14 = 138412546;
    v15 = v9;
    v16 = 2114;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Dialog request failed: %{public}@", &v14, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    sub_100406ED0(v11, v5, v6, &stru_1005287C8);
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100313044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10031305C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Engagement request completed successfully", &v13, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v13 = 138412546;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Engagement request failed: %{public}@", &v13, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_100313494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003134BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v9 = [*(a1 + 32) logKey];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authentication request completed successfully", &v13, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) logKey];
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Authentication request failed: %{public}@", &v13, 0x16u);
LABEL_4:
  }

LABEL_6:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void **sub_1003138F8(void **a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 currentRequest];
    v4 = sub_100247D70(v3);

    if (v4)
    {
      v2 = sub_1001C0AD4(v2[1], v4);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_100313BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Authentication request completed successfully", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Authentication request failed: %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100313F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dialog request completed successfully", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Dialog request failed: %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1003142C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Engagement request completed successfully", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Engagement request failed: %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100314640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 count];
    v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v16 = v5;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Canceling %lu job(s) for client %@: %@", buf, 0x2Au);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100314810;
  v13[3] = &unk_100522E40;
  v14 = v3;
  v12 = v3;
  sub_100314824(v10, v11, v13);
  (*(*(a1 + 56) + 16))();
}

void sub_100314824(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_10036FDEC(a2, &stru_100522F08);
    v7 = sub_1003C27BC();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100316B48;
    v9[3] = &unk_100522F80;
    v10 = v6;
    v11 = v5;
    v8 = v6;
    [v7 modifyUsingTransaction:v9];
  }
}

void sub_100314A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 count];
    v9 = [*(a1 + 48) componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v16 = v5;
    v17 = 2048;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Finishing %lu job(s) for client %@: %@", buf, 0x2Au);
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100314BF4;
  v13[3] = &unk_100522E40;
  v14 = v3;
  v12 = v3;
  sub_100314824(v10, v11, v13);
  (*(*(a1 + 56) + 16))();
}

void sub_100314CE0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2112;
    v9 = v2;
    v3 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: Fetching all jobs for client %@", &v6, 0x16u);
  }

  v4 = sub_100314DF4(*(a1 + 32), v2);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v5);
}

id sub_100314DF4(void *a1, void *a2)
{
  if (a1)
  {
    a1 = sub_1003150B0(a1, 0, a2);
    v2 = vars8;
  }

  return a1;
}