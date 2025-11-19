id *sub_1002A05F8(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = SbsyncTask;
    a1 = objc_msgSendSuper2(&v15, "init");
    if (a1)
    {
      v7 = +[NSDate date];
      [v7 timeIntervalSinceReferenceDate];
      a1[14] = v8;

      a1[5] = a2;
      objc_storeStrong(a1 + 6, a3);
      v9 = +[NSURLSessionConfiguration defaultSessionConfiguration];
      [v9 set_sourceApplicationBundleIdentifier:@"com.apple.AppStore"];
      v10 = sub_100265DEC();
      v11 = [v6 amsBag];
      [v9 ams_configureWithProcessInfo:v10 bag:v11];

      v12 = [[AMSURLSession alloc] initWithConfiguration:v9 delegate:a1 delegateQueue:0];
      v13 = a1[15];
      a1[15] = v12;
    }
  }

  return a1;
}

id sub_1002A1768(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v14 = 0;
  v13 = 0;
  v4 = +[AMSKeybag sharedInstance];
  v12 = 0;
  [v4 fairplayContextWithError:&v12];
  v5 = v12;

  sub_100017D9C();
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"Failed to get sbsync info. Fairplay error status: %d", v6];
    v8 = ASDErrorWithTitleAndMessage();

    v9 = 0;
    v5 = v8;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    v9 = sub_1002A1D0C(v3, v14, v13);
    sub_1000660A8(v14);
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = 0;
  if (a2)
  {
LABEL_6:
    v10 = v5;
    *a2 = v5;
  }

LABEL_7:

  return v9;
}

BOOL sub_1002A18B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = 0;
  if (v4 && v5)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 integerValue] == 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

BOOL sub_1002A1944(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v12 = 0;
  v6 = sub_1002A1768(v5, &v12);
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      v10 = 0;
      *a3 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = sub_1002A18B4(SbsyncTask, v4, v6);
  }

  return v10;
}

void sub_1002A1BD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    *(v7 + 65) = 0;
  }

  if (!v5)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v11 = *(v11 + 80);
      }

      v12 = 138412546;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Error presenting dialog request: %{public}@", &v12, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  v10 = ASDErrorWithSafeUserInfo();
  (*(v9 + 16))(v9, v5, v10);
}

id sub_1002A1D0C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  objc_opt_self();
  v5 = 0;
  if (a3)
  {
    v6 = (a2 + 8);
    v7 = a3;
    do
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      if (!v5)
      {
        v5 = objc_opt_new();
      }

      v6 += 4;
      v10 = [NSNumber numberWithUnsignedInt:v9];
      v11 = [NSNumber numberWithUnsignedLongLong:v8];
      [v5 setObject:v10 forKey:v11];

      --v7;
    }

    while (v7);
  }

  return v5;
}

void sub_1002A1DDC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

id sub_1002A20A8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6[0] = ASDAppLibraryServiceNotificationKeyAction;
  v6[1] = ASDAppLibraryServiceNotificationKeyBundleIDs;
  v7[0] = ASDAppLibraryServiceNotificationActionRefresh;
  v7[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v3];

  return v4;
}

id sub_1002A21A0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6[0] = ASDAppLibraryServiceNotificationKeyAction;
  v6[1] = ASDAppLibraryServiceNotificationKeyDeviceID;
  v7[0] = ASDAppLibraryServiceNotificationActionRefresh;
  v7[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v3];

  return v4;
}

id sub_1002A2298(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6[0] = ASDAppLibraryServiceNotificationKeyAction;
  v6[1] = ASDAppLibraryServiceNotificationKeyApps;
  v7[0] = ASDAppLibraryServiceNotificationActionError;
  v7[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v3];

  return v4;
}

id sub_1002A2390(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v9[0] = ASDAppLibraryServiceNotificationKeyAction;
  v9[1] = ASDAppLibraryServiceNotificationKeyApps;
  v10[0] = ASDAppLibraryServiceNotificationActionAppsRegistered;
  v10[1] = v5;
  v9[2] = ASDAppLibraryServiceNotificationKeyDeviceID;
  v10[2] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v6];

  return v7;
}

id sub_1002A24AC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6[0] = ASDAppLibraryServiceNotificationKeyAction;
  v6[1] = ASDAppLibraryServiceNotificationKeyApps;
  v7[0] = ASDAppLibraryServiceNotificationActionAppsRegistered;
  v7[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v3];

  return v4;
}

id sub_1002A25A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v9[0] = ASDAppLibraryServiceNotificationKeyAction;
  v9[1] = ASDAppLibraryServiceNotificationKeyBundleIDs;
  v10[0] = ASDAppLibraryServiceNotificationActionAppsUnregistered;
  v10[1] = v5;
  v9[2] = ASDAppLibraryServiceNotificationKeyDeviceID;
  v10[2] = v4;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v6];

  return v7;
}

id sub_1002A26C0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v6[0] = ASDAppLibraryServiceNotificationKeyAction;
  v6[1] = ASDAppLibraryServiceNotificationKeyBundleIDs;
  v7[0] = ASDAppLibraryServiceNotificationActionAppsUnregistered;
  v7[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [ASDNotification notificationWithName:ASDAppLibraryServiceNotificationName userInfo:v3];

  return v4;
}

void sub_1002A2B48(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002A2C00;
  v7[3] = &unk_100520608;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_1002A2C00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 URLByResolvingSymlinksInPath];
  (*(v5 + 16))(v5, v6, a4);
}

id sub_1002A2C68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ [%{public}@]", buf, 0x16u);
  }

  v7 = +[NSFileManager defaultManager];
  v12 = 0;
  v8 = [v7 removeItemAtURL:v4 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v14 = v5;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to remove %{public}@ [%{public}@] error: %{public}@", buf, 0x20u);
    }
  }

  return v8;
}

void sub_1002A2E00(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Examining %{public}@", &buf, 0xCu);
  }

  if ([*(a1 + 32) isCancelled])
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validate On Device Asset Packs operation has been cancelled.", &buf, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v8 = [v5 lastPathComponent];
    v9 = [v8 isEqualToString:@"StoreKit"];

    if (v9)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping validation of StoreKit downloads directory", &buf, 2u);
      }
    }

    else
    {
      v11 = *(a1 + 40);
      v16 = 0;
      v12 = [v11 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v16];
      v13 = v16;
      if (v12)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v18 = 0x2020000000;
        v19 = [v12 count];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1002A3100;
        v15[3] = &unk_100520630;
        v15[4] = *(a1 + 32);
        v15[5] = &buf;
        sub_1002A2B48(ODRAssetPackValidationMaintenanceTask, v12, v15);
        if (!*(*(&buf + 1) + 24))
        {
          sub_1002A2C68(ODRAssetPackValidationMaintenanceTask, v5, @"empty directory");
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Correctness checking the on-disk asset packs failed.  Error: %{public}@", &buf, 0xCu);
        }
      }
    }
  }
}

void sub_1002A30E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002A3100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Examining %{public}@", &buf, 0xCu);
  }

  if ([*(a1 + 32) isCancelled])
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Validate On Device Asset Packs operation has been cancelled.", &buf, 2u);
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = v3;
    v8 = v7;
    if (v6)
    {
      v9 = +[NSFileManager defaultManager];
      v15 = 0;
      v10 = [v9 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v15];
      v11 = v15;

      if (v10)
      {
        *&v22 = 0;
        *(&v22 + 1) = &v22;
        v23 = 0x2020000000;
        v24 = [v10 count];
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v17 = sub_1002A368C;
        v18 = &unk_100520680;
        v19 = v6;
        v12 = v10;
        v20 = v12;
        v21 = &v22;
        sub_1002A2B48(ODRAssetPackValidationMaintenanceTask, v12, &buf);
        if (*(*(&v22 + 1) + 24))
        {

          _Block_object_dispose(&v22, 8);
        }

        else
        {
          v14 = sub_1002A2C68(ODRAssetPackValidationMaintenanceTask, v8, @"empty directory");

          _Block_object_dispose(&v22, 8);
          if (v14)
          {
            --*(*(*(a1 + 40) + 8) + 24);
          }
        }
      }

      else
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v22) = 138543362;
          *(&v22 + 4) = v11;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Correctness checking the on-disk asset packs failed.  Error: %{public}@", &v22, 0xCu);
        }
      }
    }

    else
    {
    }
  }
}

void sub_1002A3400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1002A3420(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C3B34(v3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v7 = [*(a1 + 32) lastPathComponent];
    v8 = [v7 stringByDeletingPathExtension];

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asset Pack Name: %{public}@", &v16, 0xCu);
    }

    v5 = sub_1001C3A68(v3, v8);
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asset pack at %{public}@ has no entry in the database, checking to see if it matches any entry", &v16, 0xCu);
    }

    if (v5)
    {
      v12 = sub_100269CA8(v5);
      v13 = ASDLogHandleForCategory();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Entry for asset pack at %{public}@ found and has been updated in the database", &v16, 0xCu);
        }

        sub_1002696D0(v5, *(a1 + 32));
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      else
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = 138543362;
          v17 = v8;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No entry found for asset pack %{public}@, it has been deleted", &v16, 0xCu);
        }
      }

      v6 = sub_10021BB90(v3, v5);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_1002A368C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"plist"];
  v6 = ASDLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v7)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Examining asset pack at URL: %{public}@", &buf, 0xCu);
    }

    v17 = a1[4];
    v18 = v3;
    v19 = v18;
    if (v17)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 1;
      v20 = sub_100208FBC();
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v27 = sub_1002A3420;
      v28 = &unk_10051DA60;
      v21 = v19;
      v29 = v21;
      v30 = &v22;
      [v20 modifyUsingTransaction:&buf];

      LOBYTE(v20) = *(v23 + 24);
      _Block_object_dispose(&v22, 8);

      if (v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v16 = @"asset pack";
    goto LABEL_14;
  }

  if (v7)
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Examining metadata at URL: %{public}@", &buf, 0xCu);
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = v3;
  v11 = v8;
  v12 = v11;
  if (!v9)
  {

LABEL_8:
    v16 = @"metadata";
LABEL_14:
    if (sub_1002A2C68(ODRAssetPackValidationMaintenanceTask, v3, v16))
    {
      --*(*(a1[6] + 8) + 24);
    }

    goto LABEL_16;
  }

  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v13 = [v10 lastPathComponent];
  v14 = [v13 stringByDeletingPathExtension];

  if (v14)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v27 = sub_1002A39D0;
    v28 = &unk_1005206A8;
    v30 = &v22;
    v29 = v14;
    [v12 enumerateObjectsUsingBlock:&buf];
  }

  v15 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
}

void sub_1002A39D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 pathExtension];
  v7 = [v6 isEqualToString:@"plist"];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = [v11 lastPathComponent];
    v10 = [v9 stringByDeletingPathExtension];

    if (v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v10 isEqualToString:*(a1 + 32)];
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24);

    v8 = v11;
  }
}

id sub_1002A3BBC(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 16));
    v4 = [*(a1 + 8) objectForKeyedSubscript:v3];

    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1002A3C34(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    os_unfair_lock_lock((a1 + 16));
    [*(a1 + 8) setObject:v6 forKeyedSubscript:v5];

    os_unfair_lock_unlock((a1 + 16));
  }
}

void sub_1002A3CC4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_1003DBBCC(AppInstallPredicates, a2);
    v7 = [a1 connection];
    v8 = sub_1002D3F5C(AppInstallEntity, v7, v6);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002A3DC8;
    v9[3] = &unk_10051CA10;
    v9[4] = a1;
    v10 = v5;
    [v8 enumeratePersistentIDsUsingBlock:v9];
  }
}

void sub_1002A3DC8(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  [(SQLiteEntity *)v6 setValue:&off_100547950 forProperty:@"bootstrapped"];
  v7 = sub_1003402E8(v6, @"IFNULL(app_install.priority, 0)");
  v8 = ASDLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (v9)
    {
      v14 = sub_10029430C(v6);
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Reset bootstrap phase, ready for next attempt", &v15, 0xCu);
LABEL_10:
    }
  }

  else
  {
    if (v9)
    {
      v10 = sub_10029430C(v6);
      v11 = *(a1 + 40);
      v15 = 138412546;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Failing installation with bootstrap error: %{public}@", &v15, 0x16u);
    }

    v8 = sub_100294BA8(v6, *(a1 + 40));
    if (v8)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v12, 24, 1);
      }

      v14 = Property;
      sub_1002561F0(v14, v8);
      goto LABEL_10;
    }
  }
}

void sub_1002A3FA0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = [SQLiteQueryDescriptor alloc];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = sub_1002D3838(v6, v7, v8);
    v10 = sub_1003DB080();
    v27[0] = v10;
    v11 = [NSNumber numberWithInteger:a2];
    v12 = [SQLiteComparisonPredicate predicateWithProperty:@"source_type" equalToValue:v11];
    v27[1] = v12;
    v13 = [NSArray arrayWithObjects:v27 count:2];
    v15 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v14, v15, 56);
    }

    v26[0] = @"priority";
    v26[1] = @"order_index";
    v17 = [NSArray arrayWithObjects:v26 count:2];
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v16, v17, 48);
    }

    v25[0] = @"DESC";
    v25[1] = @"ASC";
    v19 = [NSArray arrayWithObjects:v25 count:2];
    if (v9)
    {
      objc_setProperty_nonatomic_copy(v9, v18, v19, 40);
    }

    v20 = [SQLiteQuery alloc];
    v21 = [a1 connection];
    v22 = [(SQLiteQuery *)v20 initOnConnection:v21 descriptor:v9];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1002A424C;
    v23[3] = &unk_100520718;
    v23[4] = a1;
    v24 = v5;
    [v22 enumerateMemoryEntitiesUsingBlock:v23];
  }
}

void sub_1002A424C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v6 = [AppInstallEntity alloc];
    v7 = [v10 databaseID];
    v8 = [*(a1 + 32) connection];
    v9 = [(SQLiteEntity *)v6 initWithPersistentID:v7 onConnection:v8];

    [(SQLiteEntity *)v9 setValue:&off_100547968 forProperty:@"bootstrapped"];
  }

  else
  {
    *a4 = 1;
  }
}

id sub_1002A4320(void *a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v5 = +[NSMutableArray array];
    v6 = [a1 connection];
    v7 = sub_1002A4538(AppSchedulerDatabaseTransaction, v6);

    v8 = [v7 objectForKeyedSubscript:@"COUNT(1)"];
    v9 = [v8 unsignedIntegerValue];

    if (v9 > a2)
    {
      v19 = v7;
      v10 = [a1 connection];
      v11 = sub_1002A4718(AppSchedulerDatabaseTransaction, v10);

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          if (sub_10023E604(v17, @"priority") < 0)
          {
            sub_100207D08(a1, [v17 databaseID], 10, a3);
            --v9;
            [v5 addObject:v17];
            if (v9 <= a2)
            {
              break;
            }
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v7 = v19;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1002A4538(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1002A5534;
  v13 = sub_1002A5544;
  v14 = 0;
  v15[0] = @"COUNT(1)";
  v15[1] = @"MAX(app_install.priority)";
  v15[2] = @"MIN(app_install.priority)";
  v3 = [NSArray arrayWithObjects:v15 count:3];
  v4 = sub_1003DAC60();
  v5 = sub_1002D3F5C(AppInstallEntity, v2, v4);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002A554C;
  v8[3] = &unk_100520768;
  v8[4] = &v9;
  [v5 enumeratePersistentIDsAndProperties:v3 usingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1002A46F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002A4718(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v21 = objc_alloc_init(NSMutableArray);
  v27[0] = @"bundle_id";
  v27[1] = @"external_id";
  v27[2] = @"item_id";
  v27[3] = @"log_code";
  v27[4] = @"phase";
  v27[5] = @"priority";
  v20 = [NSArray arrayWithObjects:v27 count:6];
  v3 = [SQLiteQueryDescriptor alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = sub_1002D3838(v3, v4, v5);
  v7 = sub_1003DAC60();
  v26[0] = v7;
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"phase" value:&off_100547980 comparisonType:3];
  v26[1] = v8;
  v9 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" value:&off_100547968 comparisonType:2];
  v26[2] = v9;
  v10 = [NSArray arrayWithObjects:v26 count:3];
  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v10];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v11, v12, 56);
  }

  v25[0] = @"priority";
  v25[1] = @"phase";
  v25[2] = @"order_index";
  v14 = [NSArray arrayWithObjects:v25 count:3];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v13, v14, 48);
  }

  v24[0] = @"ASC";
  v24[1] = @"ASC";
  v24[2] = @"DESC";
  v16 = [NSArray arrayWithObjects:v24 count:3];
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v15, v16, 40);
  }

  v17 = [[SQLiteQuery alloc] initOnConnection:v2 descriptor:v6];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1002A5560;
  v22[3] = &unk_100520790;
  v18 = v21;
  v23 = v18;
  [v17 enumerateMemoryEntitiesWithProperties:v20 usingBlock:v22];

  return v18;
}

id sub_1002A4A40(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [a1 connection];
    v8 = sub_1002A4538(AppSchedulerDatabaseTransaction, v7);

    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v9 = [v8 objectForKeyedSubscript:@"COUNT(1)"];
    v10 = [v9 unsignedIntegerValue];

    v59 = v10;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0x8000000000000000;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0x8000000000000000;
    if (v8 && v57[3])
    {
      v11 = [v8 objectForKeyedSubscript:@"MAX(app_install.priority)"];
      v12 = [v11 integerValue];
      v53[3] = v12;

      v13 = [v8 objectForKeyedSubscript:@"MIN(app_install.priority)"];
      v14 = [v13 integerValue];
      v49[3] = v14;
    }

    v15 = ASDLogHandleForCategory();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

    if (v16)
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v38 = v57[3];
        v39 = v49[3];
        v40 = v53[3];
        *buf = 134218752;
        v63 = v38;
        v64 = 2048;
        v65 = a2;
        v66 = 2048;
        v67 = v39;
        v68 = 2048;
        v69 = v40;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Active installations: %lu/%lu Lowest Priority: %ld Highest Priority: %ld", buf, 0x2Au);
      }
    }

    v18 = [SQLiteQueryDescriptor alloc];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = sub_1002D3838(v18, v19, v20);
    v23 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToLongLong:10)", 10];
    if (v21)
    {
      objc_setProperty_nonatomic_copy(v21, v22, v23, 56);
    }

    v61[0] = @"priority";
    v61[1] = @"order_index";
    v25 = [NSArray arrayWithObjects:v61 count:2];
    if (v21)
    {
      objc_setProperty_nonatomic_copy(v21, v24, v25, 48);
    }

    v60[0] = @"DESC";
    v60[1] = @"ASC";
    v27 = [NSArray arrayWithObjects:v60 count:2];
    if (v21)
    {
      objc_setProperty_nonatomic_copy(v21, v26, v27, 40);
    }

    v28 = [SQLiteQuery alloc];
    v29 = [a1 connection];
    v30 = [(SQLiteQuery *)v28 initOnConnection:v29 descriptor:v21];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1002A4F88;
    v41[3] = &unk_100520740;
    v41[4] = a1;
    v44 = &v56;
    v47 = a2;
    v43 = v5;
    v45 = &v52;
    v31 = v6;
    v42 = v31;
    v46 = &v48;
    [v30 enumerateMemoryEntitiesUsingBlock:v41];
    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v57[3];
      *buf = 134217984;
      v63 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Polling complete with %lu active installation(s)", buf, 0xCu);
    }

    v34 = objc_opt_new();
    a1 = v34;
    if (v34)
    {
      *(v34 + 8) = v57[3];
    }

    v36 = [v31 copy];
    if (a1)
    {
      objc_setProperty_atomic(a1, v35, v36, 16);
    }

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
  }

  return a1;
}

void sub_1002A4F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1002A4F88(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v8;
  if (!v7)
  {
    goto LABEL_31;
  }

  v10 = sub_10023E51C(v8, @"bootstrapped");
  v11 = v10;
  if (!v10 || [v10 integerValue] == 2)
  {
    goto LABEL_4;
  }

  if (sub_10023E604(v9, @"restore_type") || sub_10023E604(v9, @"source_type") == 1)
  {

LABEL_31:
    goto LABEL_35;
  }

  v29 = [AppInstallEntity alloc];
  v30 = [v9 databaseID];
  v31 = [v7 connection];
  v32 = [(SQLiteEntity *)v29 initWithPersistentID:v30 onConnection:v31];

  [(SQLiteEntity *)v32 setValue:&off_100547998 forProperty:@"bootstrapped"];
  v33 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    v38 = sub_100408EB0(v9);
    *v41 = 138412290;
    *&v41[4] = v38;
    _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "[%@] Correctness check failed - this installation doesn't appear need bootstrap, starting anyway", v41, 0xCu);
  }

LABEL_4:
  if (*(*(*(a1 + 56) + 8) + 24) < *(a1 + 80))
  {
    if (!(*(*(a1 + 48) + 16))())
    {
      goto LABEL_35;
    }

    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v37 = sub_100408EB0(v9);
      *v41 = 138543362;
      *&v41[4] = v37;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "No contention, starting: %{public}@", v41, 0xCu);
    }

    goto LABEL_8;
  }

  if (sub_1004091A4(v9) <= *(*(*(a1 + 72) + 8) + 24))
  {
LABEL_34:
    *a4 = 1;
    goto LABEL_35;
  }

  if (*(*(*(a1 + 56) + 8) + 24) != *(a1 + 80))
  {
    goto LABEL_33;
  }

  v16 = *(a1 + 32);
  v17 = sub_1004091A4(v9);
  if (!v16)
  {
    goto LABEL_33;
  }

  v18 = v17;
  v19 = v16[4];
  if (!v19)
  {
    v20 = [v16 connection];
    v21 = sub_1002A4718(AppSchedulerDatabaseTransaction, v20);
    v22 = v16[4];
    v16[4] = v21;

    v23 = v16[4];
    *v41 = _NSConcreteStackBlock;
    *&v41[8] = 3221225472;
    *&v41[16] = sub_1002A556C;
    v42 = &unk_1005207B8;
    v43 = v16;
    v24 = [v23 indexesOfObjectsPassingTest:v41];
    if ([v24 count])
    {
      [v16[4] removeObjectsAtIndexes:v24];
    }

    v19 = v16[4];
  }

  v25 = [v19 firstObject];
  v26 = sub_1004091A4(v25) >= v18 ? 0 : v25;
  v27 = v26;

  if (!v27)
  {
LABEL_33:
    if ((sub_1004091A4(v9) & 0x8000000000000000) == 0 && (*(*(*(a1 + 64) + 8) + 24) & 0x8000000000000000) != 0)
    {
      if (!(*(*(a1 + 48) + 16))())
      {
        goto LABEL_35;
      }

      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v34 = sub_1004091A4(v9);
        v35 = *(*(*(a1 + 64) + 8) + 24);
        v36 = sub_100408EB0(v9);
        *v41 = 134218498;
        *&v41[4] = v34;
        *&v41[12] = 2048;
        *&v41[14] = v35;
        *&v41[22] = 2114;
        v42 = v36;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Prioritized (%ld >= %ld), starting: %{public}@", v41, 0x20u);
      }

LABEL_8:

      v13 = *(*(*(a1 + 64) + 8) + 24);
      v14 = sub_1004091A4(v9);
      if (v13 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      *(*(*(a1 + 64) + 8) + 24) = v15;
      [*(a1 + 40) addObject:v9];
      ++*(*(*(a1 + 56) + 8) + 24);
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if ((*(*(a1 + 48) + 16))())
  {
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v39 = sub_1004091A4(v9);
      v40 = sub_100408EB0(v9);
      *v41 = 134218242;
      *&v41[4] = v39;
      *&v41[12] = 2114;
      *&v41[14] = v40;
      _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Jettison candidate (%ld), starting: %{public}@", v41, 0x16u);
    }

    [*(*(a1 + 32) + 32) removeObject:v27];
    sub_100207D08(*(a1 + 32), [v27 databaseID], 10, 1uLL);
    [*(a1 + 40) addObject:v9];
  }

LABEL_35:
}

uint64_t sub_1002A5534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1002A556C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v3;
  if (v2)
  {
    v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 databaseID]);
    v6 = sub_100402BD0(AppInstallInfo, v5);

    v7 = v6 == 0;
    if (!v6)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v11 = sub_100408EB0(v4);
        v12 = 138412290;
        v13 = v11;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "[%@] Encountered invalid installation which was not really running", &v12, 0xCu);
      }

      v9 = ASDErrorWithDescription();
      sub_100204718(v2, [v4 databaseID], v9);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id *sub_1002A570C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteTransporter;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
    }
  }

  return a1;
}

uint64_t sub_1002A5784(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = *(a1 + 16);
  objc_opt_self();
  os_unfair_lock_lock(&unk_1005AAAA8);
  v3 = sub_1003D6BDC();
  v4 = [v3 mutableCopy];

  if (v4 && ([v4 objectForKeyedSubscript:@"knownPaths"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "mutableCopy"), v5, v6))
  {
    v7 = [v6 indexesOfObjectsPassingTest:&stru_1005207F8];
    if ([v7 count])
    {
      [v6 removeObjectsAtIndexes:v7];
      [v4 setObject:v6 forKeyedSubscript:@"knownPaths"];
      sub_1003D6AD8(AppDefaultsManager, v4);
    }

    v8 = [v6 containsObject:v2];

    os_unfair_lock_unlock(&unk_1005AAAA8);
    if (v8)
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(v1 + 16);
        v26 = 138543362;
        v27 = v10;
        v11 = "Refusing to begin transportation for known path: %{public}@";
LABEL_25:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v11, &v26, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    os_unfair_lock_unlock(&unk_1005AAAA8);
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:*(v1 + 16)];

  if ((v13 & 1) == 0)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v1 + 16);
      v26 = 138543362;
      v27 = v25;
      v11 = "Refusing to begin transportation as path does not exist: %{public}@";
      goto LABEL_25;
    }

LABEL_15:

    return 0;
  }

  v14 = *(v1 + 16);
  objc_opt_self();
  os_unfair_lock_lock(&unk_1005AAAA8);
  v15 = sub_1003D6BDC();
  v16 = [v15 mutableCopy];

  if (!v16)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    goto LABEL_17;
  }

  v17 = [v16 objectForKeyedSubscript:@"knownPaths"];
  v18 = [v17 mutableCopy];

  if (!v18)
  {
LABEL_17:
    v18 = [NSMutableArray arrayWithObject:v14];
    goto LABEL_18;
  }

  [v18 addObject:v14];
LABEL_18:
  [v16 setObject:v18 forKeyedSubscript:@"knownPaths"];
  sub_1003D6AD8(AppDefaultsManager, v16);
  os_unfair_lock_unlock(&unk_1005AAAA8);

  v19 = sub_100271284([SQLiteConnectionOptions alloc], *(v1 + 16));
  v20 = v19;
  if (v19)
  {
    v19[8] = 1;
  }

  v21 = sub_10022C0D0([SQLiteConnection alloc], v19);
  v22 = *(v1 + 8);
  *(v1 + 8) = v21;

  v23 = *(v1 + 8);
  if (v23)
  {
    v1 = sub_10022C9DC(v23);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1002A5B08(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2 && sub_10022C29C(v2) && sub_1002DC91C(*(v1 + 16), 0))
    {
      v3 = *(v1 + 16);
      objc_opt_self();
      os_unfair_lock_lock(&unk_1005AAAA8);
      v4 = sub_1003D6BDC();
      v5 = [v4 mutableCopy];

      if (v5)
      {
        v6 = [v5 objectForKeyedSubscript:@"knownPaths"];
        v7 = [v6 mutableCopy];

        if (v7)
        {
          [v7 removeObject:v3];
          [v5 setObject:v7 forKeyedSubscript:@"knownPaths"];
          sub_1003D6AD8(AppDefaultsManager, v5);
        }
      }

      os_unfair_lock_unlock(&unk_1005AAAA8);

      return 1;
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(v1 + 16);
        v10 = 138543362;
        v11 = v9;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Remembering path after ending transportation: %{public}@", &v10, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

void sub_1002A5CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002A5D54;
    v6[3] = &unk_10051CDC8;
    v6[4] = a1;
    v7 = v3;
    sub_10022CC88(v5, v6);
  }
}

BOOL sub_1002A5D84(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  return v6 ^ 1;
}

uint64_t sub_1002A6C74(uint64_t a1, void *a2)
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
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Importing payout event(s) error: %{public}@", buf, 0x16u);
    }
  }

  return 1;
}

void sub_1002A735C(void **a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D48F0(SQLiteEntity, v3, a1[4], [a1[5] appEventEntityClass]);

  v5 = [objc_msgSend(a1[5] "appEventEntityClass")];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002A7454;
  v8[3] = &unk_10051FBE0;
  v6 = a1[6];
  v7 = a1[5];
  v9 = v6;
  v10 = v7;
  [v4 enumerateMemoryEntitiesWithProperties:v5 usingBlock:v8];
}

void sub_1002A7454(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) logKey];
    v6 = sub_1001FCF14(v3);
    v7 = sub_1001FC69C(v3);
    v8 = 138412802;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Added existing qualified event for accountID: %{public}@", &v8, 0x20u);
  }
}

XPCServiceClient *sub_1002A7588(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  v7 = [XPCServiceClient alloc];
  v8 = v6;
  v9 = v5;
  if (v7)
  {
    v24.receiver = v7;
    v24.super_class = XPCServiceClient;
    v10 = objc_msgSendSuper2(&v24, "init");
    v7 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_connection, v8);
      objc_storeStrong(&v7->_catalog, a3);
      WeakRetained = objc_loadWeakRetained(&v7->_connection);
      v12 = sub_100265E8C(AMSProcessInfo);
      processInfo = v7->_processInfo;
      v7->_processInfo = v12;

      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(AMSProcessInfo *)v7->_processInfo bundleIdentifier];
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(XPCServiceClient) Received connection from client: %{public}@", buf, 0xCu);
      }

      v16 = [XPCServiceEntitlements alloc];
      v17 = objc_loadWeakRetained(&v7->_connection);
      v18 = v17;
      if (v17)
      {
        [v17 auditToken];
      }

      else
      {
        *buf = 0u;
        v27 = 0u;
      }

      v19 = objc_loadWeakRetained(&v7->_connection);
      v20 = sub_1001FB5A0(v16, buf, [v19 processIdentifier]);
      entitlements = v7->_entitlements;
      v7->_entitlements = v20;

      v25 = @"XPCServiceClientUserInfoKey";
      *buf = v7;
      v22 = [NSDictionary dictionaryWithObjects:buf forKeys:&v25 count:1];
      [v8 setUserInfo:v22];
    }
  }

  return v7;
}

void sub_1002A785C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    if (!v9)
    {
      v22 = NSDebugDescriptionErrorKey;
      v23 = @"Service is not available.";
      v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [NSError errorWithDomain:ASDErrorDomain code:512 userInfo:v15];
      v10[2](v10, 0, v16);

      goto LABEL_9;
    }

    v11 = *(a1 + 40);
    v12 = a3;
    v13 = a4;
    if (v11)
    {
      if (sub_1001FB82C(v11, a3, a4))
      {
        v14 = v9[2](v9);
        (v10)[2](v10, v14, 0);

        goto LABEL_9;
      }
    }

    else
    {
      v17 = v13;
    }

    v20 = NSDebugDescriptionErrorKey;
    v21 = @"Not entitled for this service.";
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v19 = [NSError errorWithDomain:ASDErrorDomain code:505 userInfo:v18];
    v10[2](v10, 0, v19);
  }

LABEL_9:
}

void sub_1002A8F84(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    v1 = obj[7];
    obj[7] = 0;

    objc_sync_exit(obj);
  }
}

__CFString *sub_1002A90DC(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  if (a2 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_100520890[a2];
  }
}

id sub_1002A911C(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v31 = objc_opt_new();
    v9 = sub_1002A93D4(a1, v7, a2, v8);
    if ([v9 count])
    {
      v26 = v7;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = [v9 keyEnumerator];
      v10 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        v28 = a2;
        v29 = *v33;
        v27 = a2;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = [v9 objectForKey:*(*(&v32 + 1) + 8 * i)];
            v15 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              v17 = v8;
              v18 = v16;
              sub_1001FCF14(v14);
              v19 = v11;
              v20 = a1;
              v22 = v21 = v9;
              *buf = 138412802;
              v37 = v16;
              v38 = 2114;
              v39 = v22;
              v40 = 2048;
              v41 = v28;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%@]: Adding event for app with bundleID: %{public}@ type: %ld", buf, 0x20u);

              v9 = v21;
              a1 = v20;
              v11 = v19;

              v8 = v17;
              a2 = v27;
              v12 = v29;
            }

            v23 = sub_1002A989C(a1, v14, a2, v8);
            if (v23)
            {
              [v31 addObject:v23];
            }
          }

          v11 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
        }

        while (v11);
      }

      v7 = v26;
    }

    v24 = [v31 copy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id sub_1002A93D4(uint64_t a1, void *a2, int a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v40 = v6;
  if (a1)
  {
    v8 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v6;
    v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v47)
    {
      v46 = *v49;
      v10 = a3 != 2 || v7 == 0;
      v43 = v10;
      v41 = v7;
      do
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v49 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          v13 = sub_1001FD0B4(v12);
          v14 = [v8 objectForKey:v13];

          if (v14)
          {
            v15 = [v8 objectForKey:v13];
            v16 = sub_10023E0F8(v12, @"count");
            v17 = [v16 integerValue];

            v18 = sub_10023E0F8(v15, @"count");
            v19 = [v18 integerValue];

            v20 = [NSNumber numberWithInteger:&v17[v19]];
            sub_10023E000(v15, v20, @"count");

            if (a3 == 2)
            {
              if (v7 && v7[4] == 1)
              {
                v21 = sub_10023E0F8(v12, @"launch_time");
                if (v21)
                {
                  v42 = [AMSMetrics serverTimeFromDate:v21];
                  v22 = sub_10023E0F8(v12, @"usage_time");
                  v23 = sub_10023E0F8(v12, @"is_clip");
                  v24 = [v23 BOOLValue];

                  if (v24)
                  {
                    v25 = sub_10023E0F8(v12, @"clip_ref_type");
                    v26 = sub_10023E0F8(v12, @"clip_ref_source");
                  }

                  else
                  {
                    v25 = 0;
                    v26 = 0;
                  }

                  sub_1001FC6FC(v15, v42, v22, v25, v26);

                  v7 = v41;
                }
              }

              else
              {
                v34 = sub_10023E0F8(v12, @"usage_time");
                v35 = [v34 integerValue];

                v36 = sub_10023E0F8(v15, @"usage_time");
                v37 = [v36 integerValue];

                v21 = [NSNumber numberWithInteger:&v35[v37]];
                sub_10023E000(v15, v21, @"usage_time");
              }
            }
          }

          else
          {
            if (!v43 && v7[4] == 1)
            {
              v27 = sub_10023E0F8(v12, @"launch_time");
              if (v27)
              {
                v28 = [AMSMetrics serverTimeFromDate:v27];
                v29 = sub_10023E0F8(v12, @"usage_time");
                v30 = sub_10023E0F8(v12, @"is_clip");
                v31 = [v30 BOOLValue];

                if (v31)
                {
                  v32 = sub_10023E0F8(v12, @"clip_ref_type");
                  v33 = sub_10023E0F8(v12, @"clip_ref_source");
                }

                else
                {
                  v33 = 0;
                  v32 = 0;
                }

                sub_1001FC6FC(v12, v28, v29, v32, v33);

                v7 = v41;
              }
            }

            [v8 setObject:v12 forKey:v13];
          }
        }

        v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v47);
    }

    v38 = [v8 copy];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

AppUsageMetricsEvent *sub_1002A989C(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_78;
  }

  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_1002AA258;
  v79 = sub_1002AA268;
  v80 = 0;
  v9 = sub_10036C90C();
  v67 = _NSConcreteStackBlock;
  v68 = 3221225472;
  v69 = sub_1002AA270;
  v70 = &unk_100520848;
  v74 = &v75;
  v71 = a1;
  v10 = v7;
  v72 = v10;
  v11 = v8;
  v73 = v11;
  [v9 readUsingSession:&v67];

  v12 = v76[5];
  if (v12)
  {
    v13 = sub_1002AA480(a1, v12, a3, v11);
    goto LABEL_23;
  }

  v14 = [AppUsageMetricsEvent alloc];
  if (v11)
  {
    v15 = v11[19];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v13 = [(AppUsageMetricsEvent *)v14 initWithTopic:v16, v67, v68, v69, v70, v71, v72];

  if (!v13)
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_opt_class();
      if (v11)
      {
        v65 = v11[19];
      }

      else
      {
        v65 = 0;
      }

      v66 = v65;
      *buf = 138412546;
      v82 = v64;
      v83 = 2114;
      v84 = v66;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@]: Failed to create event with topic: %{public}@", buf, 0x16u);
    }
  }

  sub_1003D7220(v13, a3);
  if (!v11)
  {
    v18 = 0;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = v11[4];
  if (v13)
  {
LABEL_11:
    v13->_appUsageType = v18;
  }

LABEL_12:
  if (sub_1001FD2A4(v10))
  {
    v19 = sub_1001FD2A4(v10);
    sub_1003D745C(v13, v19);
  }

  v20 = sub_1001FCF14(v10);
  sub_1003D74EC(v13, v20);

  v21 = sub_1001FCF4C(v10);
  sub_1003D7564(v13, v21);

  if (sub_1001FD2EC(v10))
  {
    v22 = sub_1001FD2EC(v10);
    if (v13)
    {
      v13->_clip = v22;
    }

    sub_1003D76CC(v13, @"clip");
  }

  v23 = sub_1001FCFF4(v10);
  sub_1003D7E14(v13, v23);

  v24 = sub_1001FD37C(v10);
  sub_1003D8250(v13, v24);

  v26 = sub_1001FD3B4(v10);
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v25, v26, 288);
  }

  v27 = sub_1001FD3EC(v10);
  sub_1003D8624(v13, v27);

  v28 = sub_1001FD424(v10);
  sub_1003D8714(v13, v28);

  if (sub_1001FD334(v10))
  {
    sub_1003D81E0(v13, 1);
  }

  [a1 decorateMetricsEvent:v13 context:v11];
LABEL_23:
  if (!v11 || v11[4] != 1)
  {
    goto LABEL_34;
  }

  if (v10)
  {
    v29 = sub_10023E604(v10, @"app_platform");
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_1002A90DC(AppUsageBaseManager, v29);
  [(AppUsageMetricsEvent *)v13 setProperty:v30 forBodyKey:@"appPlatform"];

  v31 = sub_1001FCFBC(v10);

  if (v31)
  {
    v32 = sub_1001FCFBC(v10);
    sub_1003D7354(v13, v32);
  }

  else
  {
    v59 = v76[5];
    if (!v59)
    {
      goto LABEL_30;
    }

    v60 = sub_100382668(v59);
    v61 = v60 == 0;

    if (v61)
    {
      goto LABEL_30;
    }

    v32 = sub_100382668(v76[5]);
    sub_1003D7354(v13, v32);
  }

LABEL_30:
  v33 = sub_1001FCF84(v10);

  if (v33)
  {
    v34 = sub_1001FCF84(v10);
    sub_1003D7CA0(v13, v34);
  }

  if (sub_1001FD25C(v10))
  {
    sub_1003D73CC(v13, 1);
  }

LABEL_34:
  v35 = sub_1001FCF4C(v10);

  if (v35)
  {
    v36 = sub_1001FCF4C(v10);
    sub_1003D7564(v13, v36);
  }

  v37 = sub_1001FCFF4(v10);
  v38 = v37 == 0;

  if (!v38)
  {
    v39 = sub_1001FCFF4(v10);
    sub_1003D7E14(v13, v39);
  }

  v40 = sub_1001FD3EC(v10);

  if (v40)
  {
    v41 = sub_1001FD3EC(v10);
    sub_1003D8624(v13, v41);
  }

  if (v11 && v11[4] == 1)
  {
    v42 = sub_10023E0F8(v10, @"clip_affiliate_token");

    if (v42)
    {
      v43 = sub_10023E0F8(v10, @"clip_affiliate_token");
      sub_1003D7654(v13, v43);
    }

    v44 = sub_10023E0F8(v10, @"clip_app_type");

    if (v44)
    {
      v45 = sub_10023E0F8(v10, @"clip_app_type");
      sub_1003D76CC(v13, v45);
    }

    v46 = sub_10023E0F8(v10, @"clip_campaign");

    if (v46)
    {
      v47 = sub_10023E0F8(v10, @"clip_campaign");
      sub_1003D7744(v13, v47);
    }

    v48 = sub_10023E0F8(v10, @"clip_campaign_token");

    if (v48)
    {
      v49 = sub_10023E0F8(v10, @"clip_campaign_token");
      sub_1003D77BC(v13, v49);
    }

    v50 = sub_10023E0F8(v10, @"clip_provider_token");

    if (v50)
    {
      v51 = sub_10023E0F8(v10, @"clip_provider_token");
      sub_1003D7AA4(v13, v51);
    }

    if (sub_1001FD214(v10) != 2)
    {
      v52 = sub_10023E0F8(v10, @"clip_ref_source");

      if (v52)
      {
        v53 = sub_10023E0F8(v10, @"clip_ref_source");
        sub_1003D7B1C(v13, v53);
      }

      v54 = sub_10023E0F8(v10, @"clip_ref_type");

      if (v54)
      {
        v55 = sub_10023E0F8(v10, @"clip_ref_type");
        sub_1003D7B94(v13, v55);
      }

      v56 = sub_10023E0F8(v10, @"clip_third_party_with_no_app_referrer");

      if (v56)
      {
        v57 = sub_10023E0F8(v10, @"clip_third_party_with_no_app_referrer");
        sub_1003D7C0C(v13, v57);
      }
    }
  }

  if (a3 == 2)
  {
    if (v11 && v11[4] == 1)
    {
      if (v10)
      {
        v58 = [v10[5] copy];
      }

      else
      {
        v58 = 0;
      }

      if ([v58 count])
      {
        sub_1003D7F9C(v13, v58);
      }
    }

    else
    {
      v58 = sub_10023E0F8(v10, @"usage_time");
      if (objc_opt_respondsToSelector())
      {
        sub_1003D88DC(v13, [v58 integerValue]);
      }
    }

    goto LABEL_74;
  }

  if (a3 == 1)
  {
    v58 = sub_10023E0F8(v10, @"event_subtype");
    if (objc_opt_respondsToSelector())
    {
      sub_1003D8174(v13, [v58 unsignedCharValue]);
    }

LABEL_74:
  }

  v62 = sub_10023E0F8(v10, @"count");
  if (objc_opt_respondsToSelector())
  {
    sub_1003D886C(v13, [v62 integerValue]);
  }

  _Block_object_dispose(&v75, 8);
LABEL_78:

  return v13;
}

void sub_1002AA21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AA258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002AA270(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a2;
  v6 = sub_1001FCF14(v3);
  v7 = [v5 connection];

  v8 = a1[6];
  v18 = v6;
  v9 = v7;
  v10 = v8;
  if (v4)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1002AA258;
    v24 = sub_1002AA268;
    v25 = 0;
    v11 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v18];
    v12 = objc_opt_class();
    v13 = sub_1002D48F0(SQLiteEntity, v9, v11, v12);
    v14 = +[AppMetadataEntity defaultProperties];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1002AB03C;
    v19[3] = &unk_10051B010;
    v19[4] = &v20;
    [v13 enumerateMemoryEntitiesWithProperties:v14 usingBlock:v19];

    v15 = v21[5];
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1[7] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_1002AA464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

AppUsageMetricsEvent *sub_1002AA480(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_27;
  }

  v9 = [AppUsageMetricsEvent alloc];
  if (v8)
  {
    v10 = v8[19];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [(AppUsageMetricsEvent *)v9 initWithTopic:v11];

  if (!v12)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = v29;
      if (v8)
      {
        v31 = v8[19];
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      v33 = 138412546;
      v34 = v29;
      v35 = 2114;
      v36 = v32;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@]: Failed to create event with topic: %{public}@", &v33, 0x16u);
    }
  }

  sub_1003D7220(v12, a3);
  if (!v8)
  {
    v14 = 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = v8[4];
  if (v12)
  {
LABEL_9:
    v12->_appUsageType = v14;
  }

LABEL_10:
  if (sub_1003827A0(v7))
  {
    v15 = sub_1003827A0(v7);
    sub_1003D745C(v12, v15);
  }

  if (v8 && v8[4] == 1)
  {
    if (v7 && sub_10023E604(v7, @"app_platform"))
    {
      v16 = sub_10023E604(v7, @"app_platform");
      v17 = sub_1002A90DC(AppUsageBaseManager, v16);
      [(AppUsageMetricsEvent *)v12 setProperty:v17 forBodyKey:@"appPlatform"];
    }

    v18 = sub_1003821D8(v7);
    sub_1003D7CA0(v12, v18);
  }

  v19 = sub_100382084(v7);
  sub_1003D74EC(v12, v19);

  v20 = sub_1003826A0(v7);
  sub_1003D7564(v12, v20);

  if (sub_100382710(v7))
  {
    v21 = sub_100382710(v7);
    if (v12)
    {
      v12->_clip = v21;
    }

    sub_1003D76CC(v12, @"clip");
  }

  v22 = sub_1003820F4(v7);
  sub_1003D7E14(v12, v22);

  v23 = sub_1003820BC(v7);
  sub_1003D8250(v12, v23);

  v25 = sub_1003826D8(v7);
  if (v12)
  {
    objc_setProperty_nonatomic_copy(v12, v24, v25, 288);
  }

  v26 = sub_100382830(v7);
  sub_1003D8624(v12, v26);

  v27 = sub_100382868(v7);
  sub_1003D8714(v12, v27);

  if (sub_1003827E8(v7))
  {
    sub_1003D81E0(v12, 1);
  }

  [a1 decorateMetricsEvent:v12 context:v8];
LABEL_27:

  return v12;
}

id sub_1002AA838(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v24 = v7;
  if (a1)
  {
    v27 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      v25 = a2;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = objc_opt_class();
            v28 = v15;
            sub_1001FCF14(v13);
            v16 = a1;
            v17 = v11;
            v18 = a2;
            v20 = v19 = v8;
            *buf = 138412802;
            v34 = v15;
            v35 = 2114;
            v36 = v20;
            v37 = 2048;
            v38 = v25;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%@]: Adding event for app with bundleID: %{public}@ type: %ld", buf, 0x20u);

            v8 = v19;
            a2 = v18;
            v11 = v17;
            a1 = v16;
          }

          v21 = sub_1002A989C(a1, v13, a2, v8);
          if (v21)
          {
            [v27 addObject:v21];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v10);
    }

    v22 = [v27 copy];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id sub_1002AAAA4(void *a1, char a2, void *a3)
{
  if (a1)
  {
    a1 = sub_1002AAAD8(a1, a2, a3, 0);
    v3 = vars8;
  }

  return a1;
}

id sub_1002AAAD8(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = objc_opt_new();
    v10 = sub_10036C90C();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1002AAC0C;
    v15[3] = &unk_100520870;
    v16 = v7;
    v19 = a2;
    v17 = v8;
    v11 = v9;
    v18 = v11;
    [v10 readUsingSession:v15];

    v12 = v18;
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1002AAC0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (v3 && *(v3 + 32) == 4)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (!v5 || *(v5 + 32) != 3)
    {
      goto LABEL_8;
    }
  }

  if ((*(v5 + 8) & 1) == 0)
  {
LABEL_9:
    v8 = [NSNumber numberWithUnsignedChar:*(a1 + 56)];
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"event_type" equalToValue:v8];
    v19[0] = v9;
    v10 = [SQLiteComparisonPredicate predicateWithProperty:@"has_been_posted" equalToValue:&off_1005479C8];
    v19[1] = v10;
    v11 = [NSArray arrayWithObjects:v19 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

    goto LABEL_10;
  }

LABEL_8:
  v6 = [NSNumber numberWithUnsignedChar:*(a1 + 56)];
  v7 = [SQLiteComparisonPredicate predicateWithProperty:@"event_type" equalToValue:v6];

LABEL_10:
  v12 = [v4 connection];

  v13 = *(a1 + 40);
  v14 = sub_10038689C(*(a1 + 32));
  v15 = sub_1002D4974(SQLiteEntity, v12, v7, v13, v14);

  v16 = [sub_10038689C(*(a1 + 32)) defaultProperties];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002AAE84;
  v17[3] = &unk_10051B038;
  v18 = *(a1 + 48);
  [v15 enumerateMemoryEntitiesWithProperties:v16 usingBlock:v17];
}

id sub_1002AAE90(uint64_t a1)
{
  if (a1)
  {
    v1 = MGCopyAnswer();
    if (v1)
    {
      v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
      v3 = [NSScanner scannerWithString:v1];
      if ([v3 isAtEnd])
      {
        v4 = 0;
      }

      else
      {
        v6 = 0;
        [v3 scanUpToCharactersFromSet:v2 intoString:&v6];
        v4 = v6;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1002AAF6C(void *a1)
{
  if (a1)
  {
    a1 = MGCopyAnswer();
    v1 = vars8;
  }

  return a1;
}

__CFString *sub_1002AAFA4(__CFString *result)
{
  if (result)
  {
    v1 = MGGetSInt32Answer() - 1;
    if (v1 > 5)
    {
      return 0;
    }

    else
    {
      return off_1005208E8[v1];
    }
  }

  return result;
}

__CFString *sub_1002AAFF0(__CFString *result)
{
  if (result)
  {
    v1 = MGGetSInt32Answer() - 1;
    if (v1 > 5)
    {
      return 0;
    }

    else
    {
      return off_100520918[v1];
    }
  }

  return result;
}

id sub_1002AB1B0()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002AB254;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAAB8 != -1)
  {
    dispatch_once(&qword_1005AAAB8, block);
  }

  v0 = qword_1005AAAB0;

  return v0;
}

void sub_1002AB254(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAAB0;
  qword_1005AAAB0 = v1;
}

void sub_1002AB28C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002AB334;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002AB334(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v36 = objc_alloc_init(_TtC9appstored6LogKey);
    v30 = v1;
    v3 = sub_1002AC284(v1);
    v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

    v32 = +[LSDatabaseContext sharedDatabaseContext];
    v31 = [v32 startAccessingReturningError:0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v2;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = &swift_willThrowTypedImpl_ptr;
      v10 = *v44;
      v34 = v5;
      v35 = v4;
      v41 = *v44;
      do
      {
        v11 = 0;
        v37 = v7;
        do
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [v4 objectForKeyedSubscript:v12];

          if (!v14)
          {
            v15 = objc_alloc(v9[432]);
            v42 = 0;
            v16 = [v15 initForInstallMachineryWithBundleIdentifier:v12 placeholder:0 error:&v42];
            v17 = v42;
            if (v16 && sub_10040C5B4(v16))
            {
              v40 = v17;
              v18 = [AppLedgerItem alloc];
              v19 = [v16 iTunesMetadata];
              v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 storeItemIdentifier]);
              v39 = [(AppLedgerItem *)v18 initWithBundleID:v12 itemID:v20];

              v21 = sub_1003BB76C([AppLedgerEvent alloc], v16, v36);
              v38 = [AppLedgerInstallItem alloc];
              if (v21)
              {
                v22 = v21[4];
                v23 = v21[5];
                v24 = v21[3];
                v25 = v21[2];
                v26 = v21[8];
                v27 = v21[9];
              }

              else
              {
                v26 = 0;
                v24 = 0;
                v22 = 0;
                v23 = 0;
                v25 = 0;
                v27 = 0;
              }

              v28 = sub_1003A00EC(&v38->super.isa, v22, v23, v24, v25, v26, v27);

              [(AppLedgerItem *)v39 addInstall:v28];
              v4 = v35;
              [v35 setObject:v39 forKeyedSubscript:v12];

              v8 = 1;
              v5 = v34;
              v9 = &swift_willThrowTypedImpl_ptr;
              v7 = v37;
              v17 = v40;
            }

            v10 = v41;
          }

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v7 != v11);
        v29 = [v5 countByEnumeratingWithState:&v43 objects:v47 count:16];
        v7 = v29;
      }

      while (v29);
    }

    else
    {
      v8 = 0;
    }

    if (v31)
    {
      [v32 stopAccessing];
    }

    v2 = v33;
    if (v8)
    {
      sub_1002AC90C(v30, v4, v36);
    }
  }
}

void sub_1002AB6CC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002AB748;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1002AB748(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v23 = objc_alloc_init(_TtC9appstored6LogKey);
    v2 = sub_1002AC284(v1);
    v3 = [NSMutableDictionary dictionaryWithDictionary:v2];

    v21 = +[LSDatabaseContext sharedDatabaseContext];
    v20 = [v21 startAccessingReturningError:0];
    v4 = +[NSMutableArray array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v3;
    v5 = [v3 keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = [LSApplicationRecord alloc];
          v24 = 0;
          v13 = [v12 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v24];
          v14 = v24;
          if (!v13)
          {
            [v4 addObject:v10];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v7);
    }

    if (v20)
    {
      [v21 stopAccessing];
    }

    if ([v4 count])
    {
      [v22 removeObjectsForKeys:v4];
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [v4 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        v30 = v16;
        v31 = 2114;
        v32 = v23;
        v33 = 2114;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Removed [%{public}@]", buf, 0x20u);
      }

      sub_1002AC90C(v19, v22, v23);
    }
  }
}

void sub_1002ABA10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002ABAB8;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002ABAB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v55 = objc_alloc_init(_TtC9appstored6LogKey);
    v57 = v1;
    v5 = sub_1002AC284(v1);
    v69 = [NSMutableDictionary dictionaryWithDictionary:v5];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v56 = v3;
    obj = v3;
    v68 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (!v68)
    {
      goto LABEL_53;
    }

    v67 = *v71;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v71 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v70 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(v7 + 8);
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = [v69 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = v10;
LABEL_17:
          v15 = [AppLedgerInstallItem alloc];
          if (v7)
          {
            v16 = *(v7 + 32);
            v17 = *(v7 + 40);
            v18 = *(v7 + 24);
            v19 = *(v7 + 16);
            v20 = *(v7 + 64);
            v21 = *(v7 + 72);
          }

          else
          {
            v20 = 0;
            v18 = 0;
            v16 = 0;
            v17 = 0;
            v19 = 0;
            v21 = 0;
          }

          v22 = sub_1003A00EC(&v15->super.isa, v16, v17, v18, v19, v20, v21);

          if (v22)
          {
            [(AppLedgerItem *)v11 addInstall:v22];
            if (v7)
            {
              if ((*(v7 + 40) & 0xFFFFFFFFFFFFFFFELL) == 0x12)
              {
                v23 = *(v7 + 56);
                v24 = v11;
                v25 = v23;
                v26 = [(AppLedgerItem *)v24 installs];
                if ([v26 count] != 2)
                {
                  goto LABEL_40;
                }

                v27 = [(AppLedgerItem *)v24 installs];
                v28 = [v27 firstObject];
                if (!v28)
                {
                  v65 = v27;
                  v53 = 0;
                  goto LABEL_39;
                }

                v29 = v28[2];

                if (v29 == 80)
                {
                  v30 = [(AppLedgerItem *)v24 installs];
                  v26 = [v30 lastObject];

                  v31 = [(AppLedgerItem *)v24 installs];
                  v32 = [v31 firstObject];

                  if (v26)
                  {
                    v62 = v26[6] == 0;
                    v33 = v26[1];
                  }

                  else
                  {
                    v33 = 0;
                    v62 = 1;
                  }

                  v34 = v33;
                  [v34 timeIntervalSinceReferenceDate];
                  v36 = v35;
                  v65 = v32;
                  if (v32)
                  {
                    v37 = *(v32 + 8);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v38 = v37;
                  [v38 timeIntervalSinceReferenceDate];
                  v40 = (v36 - v39);

                  if (v40 <= 0)
                  {
                    v41 = 0;
                  }

                  else
                  {
                    v41 = v40 / 0x15180uLL;
                  }

                  v86[0] = @"bundleID";
                  v87 = [(AppLedgerItem *)v24 bundleIdentifier];
                  v86[1] = @"claimedVersionID";
                  v42 = v65;
                  v61 = v87;
                  v59 = v41;
                  if (v65)
                  {
                    v42 = v65[3];
                  }

                  v43 = v62;
                  v44 = v42;
                  v88 = [v44 stringValue];
                  v86[2] = @"updateVersionID";
                  v63 = v44;
                  v64 = v25;
                  v60 = v88;
                  if (v26)
                  {
                    v45 = v26[3];
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v58 = v45;
                  v46 = [v58 stringValue];
                  v89 = v46;
                  v86[3] = @"wasFullUpdate";
                  v47 = [NSNumber numberWithBool:v43];
                  v90 = v47;
                  v86[4] = @"timeToUpdate";
                  v48 = [NSNumber numberWithLong:v59];
                  v91 = v48;
                  v49 = [NSDictionary dictionaryWithObjects:&v87 forKeys:v86 count:5];

                  v50 = ASDLogHandleForCategory();
                  v25 = v64;
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                  {
                    v51 = objc_opt_class();
                    *buf = 138543874;
                    v81 = v51;
                    v82 = 2114;
                    v83 = v64;
                    v84 = 2114;
                    v85 = v49;
                    v52 = v51;
                    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] We have an update of a factory claim update event: %{public}@", buf, 0x20u);
                  }

                  v74 = _NSConcreteStackBlock;
                  v75 = 3221225472;
                  v76 = sub_1002ACD1C;
                  v77 = &unk_100520950;
                  v78 = v49;
                  v53 = v49;
                  AnalyticsSendEventLazy();

LABEL_39:
LABEL_40:
                }
              }
            }
          }

          goto LABEL_43;
        }

        v12 = [AppLedgerItem alloc];
        if (v7)
        {
          v13 = *(v7 + 48);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v11 = [(AppLedgerItem *)v12 initWithBundleID:v9 itemID:v14];

        [v69 setObject:v11 forKeyedSubscript:v9];
        if (v11)
        {
          goto LABEL_17;
        }

LABEL_43:

        v6 = v6 + 1;
      }

      while (v68 != v6);
      v54 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
      v68 = v54;
      if (!v54)
      {
LABEL_53:

        sub_1002AC90C(v57, v69, v55);
        v3 = v56;
        break;
      }
    }
  }
}

id sub_1002AC124(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1002AC220;
    v9 = sub_1002AC230;
    v10 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1002AC238;
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

uint64_t sub_1002AC220(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002AC238(uint64_t a1)
{
  v2 = sub_1002AC284(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1002AC284(uint64_t a1)
{
  if (!a1)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v1 = objc_alloc_init(_TtC9appstored6LogKey);
  v2 = sub_1002ACCC0();
  if (!v2)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v34 = objc_opt_class();
      v35 = 2114;
      v36 = v1;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Unable to generate the path for ledger", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v3 = [[NSData alloc] initWithContentsOfFile:v2];
  if (!v3)
  {
LABEL_16:
    v11 = &__NSDictionary0__struct;
    goto LABEL_17;
  }

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = v1;
    v5 = v34;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Loaded ledger", buf, 0x16u);
  }

  v31 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v31];
  v7 = v31;
  objc_opt_class();
  v8 = v6;
  v9 = 0;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  if (v7)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      *buf = 138543874;
      v34 = v24;
      v35 = 2114;
      v36 = v1;
      v37 = 2114;
      v38 = v7;
      v25 = v24;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Failed to deserialize the cached ledger. Error: %{public}@", buf, 0x20u);
    }
  }

  else if (v9)
  {
    v23 = [v9 objectForKeyedSubscript:@"apps"];

    if (v23)
    {
      v11 = [v9 objectForKeyedSubscript:@"apps"];
      goto LABEL_13;
    }
  }

  v11 = &__NSDictionary0__struct;
LABEL_13:

LABEL_17:
  if (v11)
  {
    v26 = v1;
    v12 = +[NSMutableDictionary dictionary];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];
          v20 = [[AppLedgerItem alloc] initWithDictionary:v19];
          if (v20)
          {
            [v12 setObject:v20 forKeyedSubscript:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v15);
    }

    v21 = [v12 copy];
    v1 = v26;
  }

  else
  {
    v21 = &__NSDictionary0__struct;
  }

LABEL_30:

  return v21;
}

void sub_1002AC6A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002AC748;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002AC748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = objc_alloc_init(_TtC9appstored6LogKey);
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [v3 componentsJoinedByString:{@", "}];
      v16 = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Removing [%{public}@]", &v16, 0x20u);
    }

    v10 = sub_1002AC284(v1);
    v11 = [NSMutableDictionary dictionaryWithDictionary:v10];

    v12 = [v11 allKeys];
    v13 = [v12 count];

    [v11 removeObjectsForKeys:v3];
    v14 = [v11 allKeys];
    v15 = [v14 count];

    if (v13 > v15)
    {
      sub_1002AC90C(v1, v11, v5);
    }
  }
}

void sub_1002AC90C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  +[NSMutableDictionary dictionary];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1002ACD24;
  v6 = v24[3] = &unk_100520978;
  v25 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v24];

  v32[0] = @"version";
  v32[1] = @"apps";
  v33[0] = &off_100549890;
  v33[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
  v8 = sub_1002ACCC0();
  if (v8)
  {
    v23 = 0;
    v9 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:&v23];
    v10 = v23;
    v11 = v10;
    if (!v9)
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        *buf = 138543874;
        v27 = v19;
        v28 = 2112;
        v29 = v4;
        v30 = 2114;
        v31 = v11;
        v20 = v19;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] Failed to serialize ledger. Error: %{public}@", buf, 0x20u);
      }

      goto LABEL_12;
    }

    v22 = v10;
    v12 = [v9 writeToFile:v8 options:1 error:&v22];
    v13 = v22;

    v14 = ASDLogHandleForCategory();
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        *buf = 138543874;
        v27 = v16;
        v28 = 2112;
        v29 = v4;
        v30 = 2112;
        v31 = v8;
        v17 = v16;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] [%@] Wrote the ledger to: %@", buf, 0x20u);
LABEL_16:
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v4;
      v30 = 2114;
      v31 = v13;
      v17 = v21;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] Failed to write ledger. Error: %{public}@", buf, 0x20u);
      goto LABEL_16;
    }

    v11 = v13;
LABEL_12:

    goto LABEL_13;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    *buf = 138543618;
    v27 = v18;
    v28 = 2112;
    v29 = v4;
    v9 = v18;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] Unable to generate the path in order to cache ledger", buf, 0x16u);
LABEL_13:
  }
}

id sub_1002ACCC0()
{
  v0 = sub_10029BDD4();
  v1 = [v0 stringByAppendingPathComponent:@"appledger.plist"];

  return v1;
}

void sub_1002ACD24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

dispatch_queue_t sub_1002ACDA4(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);
  v6 = dispatch_queue_create(a1, v5);

  return v6;
}

id sub_1002ACE24(id a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a10;
  if (!a1)
  {
    goto LABEL_16;
  }

  v20 = a9;
  switch(a9)
  {
    case 1u:
      v21 = 0;
      if (!a8)
      {
        goto LABEL_18;
      }

      break;
    case 0x11u:
      v21 = 0;
      v20 = 17;
      if (!a8)
      {
        goto LABEL_18;
      }

      break;
    case 3u:
      v21 = 1;
      v20 = 3;
      if (!a8)
      {
LABEL_18:
        v22 = 1;
        if (!v17)
        {
          goto LABEL_19;
        }

        goto LABEL_10;
      }

      break;
    default:
      goto LABEL_16;
  }

  if (a8 == 2)
  {
    v22 = 3;
    if (!v17)
    {
LABEL_19:
      v30 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "bundleID == nil", buf, 2u);
      }

      v31 = 0;
LABEL_24:

      goto LABEL_25;
    }

LABEL_10:
    if (!v18)
    {
      v23 = v21;
      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *v40 = 0;
        _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "itemID == nil", v40, 2u);
      }

      v18 = &off_1005479E0;
      v21 = v23;
    }

    v38 = a7;
    if (v19)
    {
      v34 = v21;
      v33 = [ASDInstallationEventProofOfPurchase alloc];
      v25 = [v18 unsignedLongLongValue];
      [v19 timestamp];
      v26 = v37 = v16;
      [v19 privateInput];
      v27 = v36 = a4;
      [v19 lib_certificate];
      v28 = v35 = v22;
      v29 = [v19 finalizedData];
      v30 = [v33 initWithItemID:v25 timestampString:v26 isRedownload:v34 privateInput:v27 certificate:v28 finalizedToken:v29];

      v22 = v35;
      a4 = v36;

      v16 = v37;
    }

    else
    {
      v30 = 0;
    }

    a1 = [a1 initWithPhase:a2 commerceTimestamp:v16 purchase:v30 terminalPhase:a4 bundleID:v17 itemID:v18 appType:v38 source:v22 installType:v20];
    v31 = a1;
    goto LABEL_24;
  }

LABEL_16:
  v31 = 0;
LABEL_25:

  return v31;
}

id sub_1002AD0CC()
{
  objc_opt_self();
  if (qword_1005AAAC8 != -1)
  {
    dispatch_once(&qword_1005AAAC8, &stru_100520998);
  }

  v0 = qword_1005AAAC0;

  return v0;
}

void sub_1002AD124(id a1)
{
  v1 = objc_alloc_init(OcelotService);
  v2 = qword_1005AAAC0;
  qword_1005AAAC0 = v1;
}

void sub_1002AE66C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (*(a1 + 40))
  {
    v17 = v7;
    v8 = [a2 firstObject];
    v9 = v8;
    if (v8)
    {
      if ([v8 isTrialPeriod])
      {
        v10 = @"Free Trial";
      }

      else
      {
        v10 = @"Paid";
      }

      [*(a1 + 32) setObject:v10 forKeyedSubscript:@"fsEntitlementsState"];
      v11 = [v9 appAdamID];
      [*(a1 + 32) setObject:v11 forKeyedSubscript:@"fsEntitlementsAdamID"];

      v12 = [v9 offerID];
      [*(a1 + 32) setObject:v12 forKeyedSubscript:@"fsEntitlementsOfferID"];
    }

    v15 = a1 + 32;
    v13 = *(a1 + 32);
    v14 = *(v15 + 8);
    v16 = ASDErrorWithSafeUserInfo();
    (*(v14 + 16))(v14, v13, v16);

    v7 = v17;
  }
}

void *sub_1002AEA18(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = RescueAbandonedPlaceholderOperation;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[5];
      a1[5] = v4;
    }
  }

  return a1;
}

void *sub_1002AEA94(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    [v2 lock];
    v4 = [v3 copy];

    v5 = v2[6];
    v2[6] = v4;

    return [v2 unlock];
  }

  return result;
}

id *sub_1002AF17C(id *a1, void *a2, void *a3, char a4)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = UpdatesTask;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v10 = v8;
      if (!v8)
      {
        v4 = +[ACAccountStore ams_sharedAccountStore];
        v10 = [v4 ams_activeiTunesAccount];
      }

      objc_storeStrong(a1 + 5, v10);
      if (!v8)
      {
      }

      objc_storeStrong(a1 + 6, a3);
      *(a1 + 56) = a4;
      v11 = objc_alloc_init(_TtC9appstored6LogKey);
      v12 = a1[8];
      a1[8] = v11;
    }
  }

  return a1;
}

id sub_1002AFB3C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (sub_1002C52B0(v1))
    {
      v2 = [NSMutableString stringWithString:@"https://"];
      [v2 appendString:v1];
      [v2 appendString:@"/.well-known/skadnetwork/get-signed-payload"];
    }

    else
    {
      v3 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "SKAdNetwork: adNetworkRegistrableDomain is not in eTLD+1 format", v5, 2u);
      }

      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1002AFC20(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_new();
    if (v1[5] && ASDInstallAttributionVersionCreateFromString() >= 400)
    {
      [v2 setObject:v1[1] forKeyedSubscript:@"adam-id"];
      [v2 setObject:v1[3] forKeyedSubscript:@"web-impression-id"];
      [v2 setObject:v1[4] forKeyedSubscript:@"source-domain"];
      [v2 setObject:v1[6] forKeyedSubscript:@"timestamp"];
      [v2 setObject:v1[5] forKeyedSubscript:@"version"];
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_1002AFCF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

id sub_1002B0154()
{
  objc_opt_self();
  if (qword_1005AAAD8 != -1)
  {
    dispatch_once(&qword_1005AAAD8, &stru_1005209E8);
  }

  v0 = qword_1005AAAD0;

  return v0;
}

void sub_1002B01AC(id a1)
{
  v1 = objc_alloc_init(XDCDeviceManager);
  v2 = qword_1005AAAD0;
  qword_1005AAAD0 = v1;
}

id sub_1002B0280(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = sub_1002B037C;
    v9 = sub_1002B038C;
    v10 = 0;
    v1 = *(a1 + 16);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1002B0394;
    v4[3] = &unk_10051EEF0;
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

uint64_t sub_1002B037C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1002B0394(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002B0410;
  v3[3] = &unk_100520A10;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_1002B0410(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (v7 && (v7[16] & 1) != 0)
  {
    v8 = v7;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v7 = v8;
    *a4 = 1;
  }
}

void *sub_1002B048C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1002B037C;
    v14 = sub_1002B038C;
    v15 = 0;
    v5 = a1[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B05AC;
    block[3] = &unk_10051AE98;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_1002B05AC(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void *sub_1002B05FC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_1002B037C;
    v19 = sub_1002B038C;
    v20 = 0;
    v8 = a1[2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002B0740;
    v10[3] = &unk_100520A38;
    v11 = v6;
    v13 = a1;
    v14 = &v15;
    v12 = v5;
    dispatch_sync(v8, v10);
    a1 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  return a1;
}

void sub_1002B0740(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceForFromID:*(a1 + 40)];
  if (v2)
  {
    v3 = IDSCopyIDForDevice();
    if (v3)
    {
      v4 = v3;
      v5 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:v3];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v8 = sub_1002D86F0([XDCDevice alloc], v2);
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        [*(*(a1 + 48) + 8) setObject:*(*(*(a1 + 56) + 8) + 40) forKeyedSubscript:v4];
      }
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = v2;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device has no destination ID: %{public}@", &v13, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v13 = 138543362;
      v14 = v11;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Device not found for from ID: %{public}@", &v13, 0xCu);
    }
  }
}

void *sub_1002B08FC(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1002B037C;
    v17 = sub_1002B038C;
    v18 = 0;
    v5 = a1[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B0AC8;
    block[3] = &unk_10051AEC0;
    block[4] = a1;
    v6 = v3;
    v11 = v6;
    v12 = &v13;
    dispatch_sync(v5, block);
    v7 = v14[5];
    if (!v7)
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to find device with ID: %{public}@", buf, 0xCu);
      }

      v7 = v14[5];
    }

    a1 = v7;

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_1002B0AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002B0AC8(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1[4] + 8) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = sub_1002D897C(v7);
        v9 = [v8 isEqual:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1002B0C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002B0CAC;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_1002B0CAC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = IDSCopyIDForDevice();
        if (v9)
        {
          [v2 addObject:v9];
          v10 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v9];
          if (v10)
          {
            v11 = v10;
            sub_1002D88A0(v10, v8);
          }

          else
          {
            v11 = sub_1002D86F0([XDCDevice alloc], v8);
            [*(*(a1 + 40) + 8) setObject:v11 forKeyedSubscript:v9];
          }
        }

        else
        {
          v11 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v21 = v8;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Skipping device with no destination ID: %{public}@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = *(*(a1 + 40) + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002B0EFC;
  v14[3] = &unk_100520A60;
  v15 = v2;
  v13 = v2;
  [v12 enumerateKeysAndObjectsUsingBlock:v14];
}

void sub_1002B0EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) containsObject:a2];
  if (v6 && (v5 & 1) == 0)
  {
    v6[8] = 0;
    *(v6 + 19) = 1;
  }
}

id sub_1002B0FA8()
{
  objc_opt_self();
  if (qword_1005AAAE8 != -1)
  {
    dispatch_once(&qword_1005AAAE8, &stru_100520A80);
  }

  v0 = qword_1005AAAE0;

  return v0;
}

void sub_1002B1000(id a1)
{
  v1 = objc_alloc_init(PersonalizationService);
  v2 = qword_1005AAAE0;
  qword_1005AAAE0 = v1;
}

id sub_1002B21A8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NWParameters);
  [v3 setSourceApplicationWithBundleID:v2];

  v4 = v3;
  objc_opt_self();
  v5 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v4];

  v6 = [v5 path];

  return v6;
}

uint64_t sub_1002B2260(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_opt_self();
  v2 = 0;
  while (1)
  {
    v3 = qword_10044BBD0[v2];
    if ([v1 usesInterfaceType:v3])
    {
      break;
    }

    if (++v2 == 4)
    {
      v3 = 0;
      break;
    }
  }

  return v3;
}

void sub_1002B3188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

char *sub_1002B31B0(char *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_1003D5ECC();
    v3 = v2;
    if (v2)
    {
      v1 = [v2 BOOLValue];
    }

    else
    {
      v4 = [*(v1 + 66) stringForKey:@"install-attribution-should-use-proxy"];
      v5 = v4;
      if (v4)
      {
        v1 = [v4 isEqualToString:@"true"];
      }

      else
      {
        v1 = 0;
      }
    }
  }

  return v1;
}

void sub_1002B3250(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v9)
  {
    v53 = 0;
    v42 = [NSJSONSerialization JSONObjectWithData:v7 options:4 error:&v53];
    v12 = v53;
    if (v12)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v57) = 138543362;
        *(&v57 + 4) = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "SKAdNetwork: web impression fetch failed to deserialize response with error: %{public}@", &v57, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
      goto LABEL_52;
    }

    if (!v42)
    {
      v33 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v57) = 0;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "SKAdNetwork: web impression fetch failed to deserialize response.", &v57, 2u);
      }

      v34 = *(a1 + 32);
      v35 = ASDErrorWithDescription();
      (*(v34 + 16))(v34, v35);

      goto LABEL_52;
    }

    obj = sub_10023FF1C(InstallAttributionParams, v42);
    v14 = *(WeakRetained + 50);
    if (v14)
    {
      v14 = v14[3];
    }

    v15 = v14;
    sub_100232B90(obj, v15);

    v16 = *(WeakRetained + 50);
    if (v16)
    {
      v16 = v16[6];
    }

    v17 = v16;
    sub_1002401FC(obj, v17);

    v18 = *(WeakRetained + 50);
    if (v18)
    {
      v18 = v18[8];
    }

    v19 = v18;
    sub_10024020C(obj, v19);

    if (sub_100240124(obj))
    {
      v20 = obj;
      if (obj)
      {
        v20 = obj[8];
      }

      v21 = v20;
      v22 = sub_1002C52B0(v21);

      if (v22)
      {
        v23 = obj;
        if (obj)
        {
          v23 = obj[8];
        }

        v24 = v23;
        v25 = *(WeakRetained + 50);
        if (v25)
        {
          v25 = v25[4];
        }

        v26 = v25;
        v27 = [v24 isEqualToString:v26];

        if (v27)
        {
          v49 = 0;
          v50 = &v49;
          v51 = 0x2020000000;
          v52 = 0;
          *&v57 = 0;
          *(&v57 + 1) = &v57;
          v58 = 0x3032000000;
          v59 = sub_1002B3AA8;
          v60 = sub_1002B3AB8;
          v61 = 0;
          v28 = *(WeakRetained + 58);
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1002B3AC0;
          v45[3] = &unk_10051EE08;
          v47 = &v49;
          v46 = obj;
          v48 = &v57;
          [v28 modifyUsingTransaction:v45];
          if (*(v50 + 24) != 1)
          {
            v39 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = *(*(&v57 + 1) + 40);
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v40;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "SKAdNetwork: Failed to add web impression with error:%{public}@", &buf, 0xCu);
            }

            (*(*(a1 + 32) + 16))();
            goto LABEL_50;
          }

          objc_storeStrong((WeakRetained + 42), obj);
          v29 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SKAdNetwork: Successfully fetched and added web impression.", &buf, 2u);
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v55 = 0x2020000000;
          v56 = 0;
          v30 = *(WeakRetained + 58);
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_1002B3B3C;
          v44[3] = &unk_100520AB0;
          v44[4] = WeakRetained;
          v44[5] = &buf;
          [v30 modifyUsingTransaction:v44];
          if (*(*(&buf + 1) + 24) == 1)
          {
            v31 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v43 = 0;
              v32 = "SKAdNetwork: Cleaned stub impression";
LABEL_48:
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, v43, 2u);
            }
          }

          else
          {
            v31 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *v43 = 0;
              v32 = "SKAdNetwork: Failed to clean stub impression";
              goto LABEL_48;
            }
          }

          (*(*(a1 + 32) + 16))();
          _Block_object_dispose(&buf, 8);
LABEL_50:

          _Block_object_dispose(&v57, 8);
          _Block_object_dispose(&v49, 8);
          goto LABEL_51;
        }

        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v57) = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "SKAdNetwork: Source domain mismatch.", &v57, 2u);
        }
      }

      else
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v57) = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "SKAdNetwork: Source domain is invalid.", &v57, 2u);
        }
      }
    }

    else
    {
      v36 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v57) = 0;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "SKAdNetwork: web impression returned is missing crucial fields.", &v57, 2u);
      }
    }

    v37 = *(a1 + 32);
    v38 = ASDErrorWithDescription();
    (*(v37 + 16))(v37, v38);

LABEL_51:
LABEL_52:

    goto LABEL_53;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v57) = 138543362;
    *(&v57 + 4) = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SKAdNetwork: web impression fetch failed with error: %{public}@", &v57, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_53:
}

void sub_1002B3A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B3AA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1002B3AC0(void *a1, _BOOL8 a2)
{
  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = sub_10031989C(a2, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
  return *(*(a1[5] + 8) + 24);
}

uint64_t sub_1002B3B3C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 50);
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
  v7 = *(*(a1 + 32) + 50);
  if (v7)
  {
    v7 = v7[4];
  }

  v8 = v7;
  v9 = sub_10031A360(v4, v6, v8);

  *(*(*(a1 + 40) + 8) + 24) = v9;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1002B3D04(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setInteger:a2 forKey:@"ODRSimulatedDownloadsBandwidthKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];
}

id sub_1002B3D88()
{
  objc_opt_self();
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 integerForKey:@"ODRSimulatedDownloadsBandwidthKey"];

  return v1;
}

id sub_1002B4DE4(void *a1)
{
  v1 = [a1 objectForKey:@"contentRatingsBySystem"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKey:@"appsApple"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v2 = 0;
LABEL_5:

  return v2;
}

void sub_1002B51F0(uint64_t a1)
{
  if (!*(a1 + 32) || (v16 = 0, v17 = &v16, v18 = 0x2020000000, v19 = 0, sub_10036C90C(), v2 = objc_claimAutoreleasedReturnValue(), *buf = _NSConcreteStackBlock, *&buf[8] = 3221225472, *&buf[16] = sub_1002B9750, v21 = &unk_100520BC8, v22 = &v16, [v2 readUsingSession:buf], v2, v3 = v17[3], _Block_object_dispose(&v16, 8), !v3))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Metrics coordinator initializing app metadata", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      sub_1002B9D40(v8, 0, *(a1 + 40));
    }
  }

  v9 = sub_1002B5480(MetricsCoordinator, 6);
  if (!v9)
  {
    sub_1002B54D4(MetricsCoordinator, 6);
    v9 = sub_1002B5480(MetricsCoordinator, 6);
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 40);
      v13 = v11;
      if (v9)
      {
        [v9 timeIntervalSince1970];
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      *buf = 138543874;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Metrics coordinator first time recording events. Setting the start time as %{time_t}ld", buf, 0x20u);
    }
  }
}

__CFString *sub_1002B5480(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1002B5768(v3, a2);
  if (v4)
  {
    v4 = sub_1003D3EA8(AppDefaultsManager, v4);
  }

  return v4;
}

void sub_1002B54D4(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1002B5698(v3, a2);
  if (v4)
  {
    v5 = v4;
    v6 = +[NSDate date];
    sub_1003D4024(AppDefaultsManager, v6, v5);
  }
}

id sub_1002B5560()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B5604;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAAF8 != -1)
  {
    dispatch_once(&qword_1005AAAF8, block);
  }

  v0 = qword_1005AAAF0;

  return v0;
}

void sub_1002B5604(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAAF0;
  qword_1005AAAF0 = v1;
}

__CFString *sub_1002B563C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  result = sub_1002B5698(v3, a2);
  if (result)
  {

    return sub_1003D4024(AppDefaultsManager, 0, result);
  }

  return result;
}

__CFString *sub_1002B5698(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_100520CD8[a2 - 1];
  }
}

void sub_1002B56DC(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1002B5768(v3, a2);
  if (v4)
  {
    v5 = v4;
    v6 = +[NSDate date];
    sub_1003D4024(AppDefaultsManager, v6, v5);
  }
}

__CFString *sub_1002B5768(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_100520D08[a2 - 1];
  }
}

__CFString *sub_1002B57AC(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1002B5698(v3, a2);
  if (v4)
  {
    v4 = sub_1003D3EA8(AppDefaultsManager, v4);
  }

  return v4;
}

id sub_1002B5800(uint64_t a1)
{
  if (a1)
  {
    v1 = +[NSMutableDictionary dictionary];
    v2 = sub_10036C90C();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1002B58D4;
    v5[3] = &unk_10051C408;
    v3 = v1;
    v6 = v3;
    [v2 readUsingSession:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1002B58D4(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D3F5C(AppMetadataEntity, v3, 0);

  v5 = +[AppMetadataEntity defaultProperties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002B59B8;
  v6[3] = &unk_10051B038;
  v7 = *(a1 + 32);
  [v4 enumerateMemoryEntitiesWithProperties:v5 usingBlock:v6];
}

void sub_1002B59B8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100382084(v4);
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKey:v3];
  }
}

void sub_1002B5A20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002B5ADC;
    v10[3] = &unk_100520B00;
    v10[4] = a1;
    v12 = a2;
    v13 = a3;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void sub_1002B5ADC(void *a1)
{
  v18 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.getEvents"];
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = a1[6];
  v3 = a1[7];
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2;
  v8 = v5;
  if (v6)
  {
    sub_1002B5E98(v6, v7, v3);
    v9 = sub_1002B97DC(v4);
    v10 = v9;
    if (v9 && [v9 shouldCollectMetrics])
    {
      objc_setProperty_nonatomic_copy(v10, v11, *(v6 + 8), 24);
      objc_setProperty_nonatomic_copy(v10, v12, v7, 32);
      v13 = sub_1002B5800(v6);
      objc_storeStrong(v10 + 5, v13);

      v19 = 0;
      v14 = [v10 getAppEventsWithError:&v19];
      v15 = v19;
      if (v8)
      {
        v8[2](v8, v14, v15);
      }
    }

    else
    {
      if (!v8)
      {
LABEL_10:

        goto LABEL_11;
      }

      v15 = sub_1002B9834(MetricsCoordinator, v4);
      v16 = [NSString stringWithFormat:@"Handler not found for type: %@", v15];
      v17 = ASDErrorWithTitleAndMessage();
      v8[2](v8, 0, v17);
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_1002B5CC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B5D6C;
    block[3] = &unk_10051F4B0;
    block[4] = a1;
    v9 = v5;
    v10 = a3;
    dispatch_async(v7, block);
  }
}

void sub_1002B5D6C(uint64_t *a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = a1[5];
    v7 = 138543874;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    v11 = 2114;
    v12 = v5;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] May be uninstalled", &v7, 0x20u);
  }

  sub_1002B5E98(a1[4], v2, a1[6]);
  sub_1002B6E2C(a1[4], 2, v2, a1[6]);
  sub_1002B6E2C(a1[4], 5, v2, a1[6]);
}

void sub_1002B5E98(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = sub_10036E4EC();
    v132 = a1;
    v125 = sub_1002B5800(a1);
    v6 = sub_1002B5480(MetricsCoordinator, 6);
    v7 = +[NSDate now];
    v8 = ASDLogHandleForCategory();
    v124 = v6;
    v126 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      if (v6)
      {
        [v6 timeIntervalSince1970];
        v6 = v11;
      }

      if (v7)
      {
        [v7 timeIntervalSince1970];
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_1002B9BD8(MetricsCoordinator, a3);
      *buf = 138544386;
      *&buf[4] = v9;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v153 = v6;
      *v154 = 2048;
      *&v154[2] = v13;
      *&v154[10] = 2114;
      *&v154[12] = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Record launches checking for launches from: %{time_t}ld to %{time_t}ld sourceType: %{public}@", buf, 0x34u);

      v6 = v124;
      v7 = v126;
    }

    v127 = +[NSMutableArray array];
    v131 = +[NSMutableArray array];
    v15 = +[NSMutableDictionary dictionary];
    v16 = sub_10036C90C();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1002B95E8;
    v153 = &unk_10051C408;
    v17 = v15;
    *v154 = v17;
    [v16 readUsingSession:buf];

    v133 = +[NSMutableSet set];
    v128 = v17;
    if ([v17 count])
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = v19;
        v21 = [v128 allValues];
        v22 = [v21 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v153 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Previously active launches: %{public}@", buf, 0x20u);

        v7 = v126;
      }
    }

    v142 = 0;
    v23 = sub_10036DFAC(LaunchCoordinator, v5, v6, v7, v128, &v142);
    v24 = v142;
    v25 = sub_10036E570(LaunchCoordinator, v23);

    if (v24)
    {
      v26 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v120 = objc_opt_class();
        *buf = 138543874;
        *&buf[4] = v120;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v153 = v24;
        v121 = v120;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{public}@/%@] Failed to lookup launches with error: %{public}@", buf, 0x20u);
      }
    }

    v122 = v24;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    obj = v25;
    v27 = [obj countByEnumeratingWithState:&v138 objects:v151 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v139;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v139 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v138 + 1) + 8 * i);
          if (v31 && ((v32 = *(v31 + 40)) != 0 || (v32 = *(v31 + 128)) != 0))
          {
            v33 = v32;
            v34 = *(v31 + 16);
            if (!v34 || (v35 = *(v31 + 9), v34, (v35 & 1) == 0))
            {
              v42 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = objc_opt_class();
                *buf = 138543874;
                *&buf[4] = v43;
                *&buf[12] = 2112;
                *&buf[14] = v4;
                *&buf[22] = 2114;
                v153 = v33;
                v44 = v43;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Skipping active launch", buf, 0x20u);
              }

              v41 = v131;
              goto LABEL_33;
            }

            v36 = [v128 objectForKeyedSubscript:v33];

            if (v36)
            {
              [v133 addObject:v33];
            }

            v37 = *(v31 + 16);
            v38 = *(v31 + 24);
            [v37 timeIntervalSinceDate:v38];
            v40 = v39;

            if (v40 > 1.0)
            {
              v41 = v127;
LABEL_33:
              [v41 addObject:v31];
              goto LABEL_39;
            }

            v45 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = objc_opt_class();
              v47 = v46;
              v48 = *(v31 + 40);
              *buf = 138543874;
              *&buf[4] = v46;
              *&buf[12] = 2112;
              *&buf[14] = v4;
              *&buf[22] = 2114;
              v153 = v48;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Skipping too short event launch", buf, 0x20u);
            }
          }

          else
          {
            v33 = ASDLogHandleForCategory();
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            v49 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v49;
            *&buf[12] = 2112;
            *&buf[14] = v4;
            *&buf[22] = 2114;
            v153 = v31;
            v45 = v49;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Skipping bundle / containingBundleID-less launch", buf, 0x20u);
          }

LABEL_39:
        }

        v28 = [obj countByEnumeratingWithState:&v138 objects:v151 count:16];
      }

      while (v28);
    }

    if ([v131 count])
    {
      v50 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = objc_opt_class();
        v52 = v51;
        v53 = [v131 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v153 = v53;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Saving active launches: %{public}@", buf, 0x20u);
      }

      v129 = v4;

      v54 = v131;
      v55 = +[NSMutableArray array];
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v56 = v54;
      v57 = [v56 countByEnumeratingWithState:&v146 objects:buf count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v147;
        do
        {
          for (j = 0; j != v58; j = j + 1)
          {
            if (*v147 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v146 + 1) + 8 * j);
            if (v61)
            {
              v62 = *(v61 + 12) - 4;
              if (v62 <= 2)
              {
                v63 = sub_10038AA5C([LaunchEvent alloc], (v62 + 5));
                v64 = *(v61 + 24);
                if (v63)
                {
                  sub_10023E000(v63, v64, @"launch_start_time");
                }

                sub_10038B2EC(v63, *(v61 + 8));
                v65 = *(v61 + 40);
                if (v63)
                {
                  sub_10023E000(v63, v65, @"bundle_id");
                }

                v66 = *(v61 + 32);
                sub_10038B35C(v63, v66);

                [v55 addObject:v63];
              }
            }
          }

          v58 = [v56 countByEnumeratingWithState:&v146 objects:buf count:16];
        }

        while (v58);
      }

      if ([v55 count])
      {
        v67 = sub_10036C90C();
        v143[0] = _NSConcreteStackBlock;
        v143[1] = 3221225472;
        v143[2] = sub_1002B9C20;
        v143[3] = &unk_10051C838;
        v144 = v55;
        v145 = v132;
        [v67 modifyUsingTransaction:v143];
      }

      v4 = v129;
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v68 = [v128 allValues];
    v69 = [v68 countByEnumeratingWithState:&v134 objects:v150 count:16];
    v70 = v133;
    if (v69)
    {
      v71 = v69;
      v72 = *v135;
      do
      {
        v73 = 0;
        do
        {
          if (*v135 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v74 = *(*(&v134 + 1) + 8 * v73);
          if (v74)
          {
            v75 = v74[5];
          }

          else
          {
            v75 = 0;
          }

          v76 = v75;
          if (([v70 containsObject:v76] & 1) == 0)
          {
            if (v74 && (v77 = v74[3]) != 0)
            {
              v78 = v77;
              [v77 timeIntervalSinceDate:*(v132 + 24)];
              v80 = v79;

              v70 = v133;
              if (v80 >= 0.0)
              {
                goto LABEL_78;
              }

              v81 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                v82 = objc_opt_class();
                v83 = *(v132 + 24);
                v84 = v82;
                if (v83)
                {
                  [v83 timeIntervalSince1970];
                  v86 = v85;
                }

                else
                {
                  v86 = 0;
                }

                *buf = 138544130;
                *&buf[4] = v82;
                *&buf[12] = 2112;
                *&buf[14] = v4;
                *&buf[22] = 2114;
                v153 = v74;
                *v154 = 2048;
                *&v154[2] = v86;
                _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Removing active launch: %{public}@ that occurred before the system up date: %{time_t}ld", buf, 0x2Au);

                v70 = v133;
              }

              v76 = v74[5];
              [v70 addObject:v76];
            }

            else
            {
              v70 = v133;
            }
          }

LABEL_78:
          v73 = v73 + 1;
        }

        while (v71 != v73);
        v87 = [v68 countByEnumeratingWithState:&v134 objects:v150 count:16];
        v71 = v87;
      }

      while (v87);
    }

    v88 = [v70 count];
    v89 = v70;
    v90 = v126;
    if (v88)
    {
      v91 = [v89 allObjects];
      v92 = v4;
      v93 = sub_10036C90C();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1002BA0CC;
      v153 = &unk_100520C18;
      v94 = v91;
      *v154 = v94;
      *&v154[8] = v132;
      v95 = v92;
      *&v154[16] = v95;
      [v93 modifyUsingTransaction:buf];
    }

    if ([v127 count])
    {
      v96 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
      {
        v97 = objc_opt_class();
        v98 = v97;
        v99 = [v127 count];
        *buf = 138543874;
        *&buf[4] = v97;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 2048;
        v153 = v99;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "[%{public}@/%@] Discovered %ld launch(s)", buf, 0x20u);
      }

      v100 = [v127 copy];
      v101 = objc_alloc_init(CrossfireMetricsHandler);
      p_isa = &v101->super.super.isa;
      if (v101 && [(CrossfireMetricsHandler *)v101 shouldCollectMetrics])
      {
        objc_setProperty_nonatomic_copy(p_isa, v103, v4, 32);
        objc_storeStrong(p_isa + 5, v125);
        [p_isa recordLaunches:v100];
      }

      v104 = objc_alloc_init(ArcadePayoutMetricsHandler);
      v105 = &v104->super.super.isa;
      if (v104 && [(ArcadePayoutMetricsHandler *)v104 shouldCollectMetrics])
      {
        objc_setProperty_nonatomic_copy(v105, v106, v4, 32);
        objc_storeStrong(v105 + 5, v125);
        [v105 recordLaunches:v100];
      }

      v107 = objc_alloc_init(ArcadeMetricsHandler);
      v108 = &v107->super.super.isa;
      if (v107 && [(ArcadeMetricsHandler *)v107 shouldCollectMetrics])
      {
        objc_setProperty_nonatomic_copy(v108, v109, v4, 32);
        objc_storeStrong(v108 + 5, v125);
        [v108 recordLaunches:v100];
      }

      v110 = objc_alloc_init(DNUMetricsHandler);
      v111 = &v110->super.super.isa;
      if (v110 && [(DNUMetricsHandler *)v110 shouldCollectMetrics])
      {
        objc_setProperty_nonatomic_copy(v111, v112, v4, 32);
        objc_storeStrong(v111 + 5, v125);
        [v111 recordLaunches:v100];
      }

      v113 = objc_alloc_init(ODPMetricsHandler);
      v114 = &v113->super.super.isa;
      if (v113 && [(ODPMetricsHandler *)v113 shouldCollectMetrics])
      {
        objc_setProperty_nonatomic_copy(v114, v115, v4, 32);
        objc_storeStrong(v114 + 5, v125);
        [v114 recordLaunches:v100];
      }

      v90 = v126;
    }

    sub_1002B54D4(MetricsCoordinator, 6);
    v116 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = objc_opt_class();
      v118 = v117;
      v119 = sub_1002B9BD8(MetricsCoordinator, a3);
      *buf = 138543874;
      *&buf[4] = v117;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      v153 = v119;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Record launches complete for sourceType: %{public}@", buf, 0x20u);
    }
  }
}

void sub_1002B6E2C(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if (a1)
  {
    v8 = sub_1002B7434(a1, a2, v7);
    v9 = v8;
    if (v8 && [v8 shouldCollectMetrics])
    {
      if (a2 == 5)
      {
        objc_setProperty_nonatomic_copy(v9, v10, a1[1], 24);
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          v13 = v12;
          objc_opt_self();
          v14 = a1[1];
          v15 = sub_1002B9BD8(MetricsCoordinator, a4);
          v20 = 138544386;
          v21 = v12;
          v22 = 2112;
          v23 = v7;
          v24 = 2114;
          v25 = @"ODP";
          v26 = 2114;
          v27 = v14;
          v28 = 2114;
          v29 = v15;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Recording supplemental metrics with activeAccountID: %{public}@ sourceType: %{public}@", &v20, 0x34u);
        }
      }

      else
      {
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          v17 = v16;
          v18 = sub_1002B9834(MetricsCoordinator, a2);
          v19 = sub_1002B9BD8(MetricsCoordinator, a4);
          v20 = 138544130;
          v21 = v16;
          v22 = 2112;
          v23 = v7;
          v24 = 2114;
          v25 = v18;
          v26 = 2114;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Recording supplemental metrics for sourceType: %{public}@", &v20, 0x2Au);
        }
      }

      [v9 recordSupplementalAppMetricsEvents];
    }
  }
}

void sub_1002B7090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002B714C;
    v10[3] = &unk_100520B00;
    v10[4] = a1;
    v12 = a2;
    v13 = a3;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void sub_1002B714C(uint64_t a1)
{
  v15 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.post"];
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    sub_1002B5E98(v5, v2, v3);
    v7 = sub_1002B97DC(v4);
    v8 = v7;
    if (v7 && [v7 shouldCollectMetrics])
    {
      v9 = objc_alloc_init(_TtC9appstored6LogKey);
      objc_setProperty_nonatomic_copy(v8, v10, *(v5 + 8), 24);
      objc_setProperty_nonatomic_copy(v8, v11, v9, 32);
      v12 = sub_1002B5800(v5);
      objc_storeStrong(v8 + 5, v12);

      [v8 postMetrics];
      if (v6)
      {
        v6[2](v6, 1, 0);
      }
    }

    else
    {
      if (!v6)
      {
LABEL_9:

        goto LABEL_10;
      }

      v9 = sub_1002B9834(MetricsCoordinator, v4);
      v13 = [NSString stringWithFormat:@"Handler not found for type: %@", v9];
      v14 = ASDErrorWithTitleAndMessage();
      (v6)[2](v6, 0, v14);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_1002B7314(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002B73BC;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1002B73BC(uint64_t a1)
{
  v4 = objc_alloc_init(_TtC9appstored6LogKey);
  v2 = sub_1002B7434(*(a1 + 32), 1, v4);
  v3 = v2;
  if (v2)
  {
    sub_10025B394(v2, *(a1 + 40));
  }
}

id *sub_1002B7434(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_1002B97DC(a2);
    v7 = v6;
    if (v6 && [v6 shouldCollectMetrics])
    {
      objc_setProperty_nonatomic_copy(v7, v8, a1[1], 24);
      objc_setProperty_nonatomic_copy(v7, v9, v5, 32);
      v10 = sub_1002B5800(a1);
      objc_storeStrong(v7 + 5, v10);

      a1 = v7;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1002B74F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B75A4;
    block[3] = &unk_10051F4B0;
    block[4] = a1;
    v9 = v5;
    v10 = a3;
    dispatch_async(v7, block);
  }
}

void sub_1002B75A4(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.recordDeleted"];
  sub_1002B7614(*(a1 + 32), *(a1 + 40), 0, 3, *(a1 + 48), 0);
}

void sub_1002B7614(id *a1, void *a2, unsigned int a3, int a4, uint64_t a5, void *a6)
{
  v61 = a2;
  v68 = a6;
  v63 = a1;
  if (a1)
  {
    v69 = objc_alloc_init(_TtC9appstored6LogKey);
    v60 = a4;
    if (a4 == 1)
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = v10;
        v12 = [v61 componentsJoinedByString:{@", "}];
        v13 = sub_1002B9BD8(MetricsCoordinator, a5);
        *buf = 138544130;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        *&buf[22] = 2114;
        v82 = v12;
        *v83 = 2114;
        *&v83[2] = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recording installed apps: [%{public}@] sourceType: %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_9;
      }

      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v16 = [v61 componentsJoinedByString:{@", "}];
        v17 = sub_1002B9BD8(MetricsCoordinator, a5);
        *buf = 138544130;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        *&buf[22] = 2114;
        v82 = v16;
        *v83 = 2114;
        *&v83[2] = v17;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recording uninstalled apps: [%{public}@] sourceType: %{public}@", buf, 0x2Au);
      }
    }

LABEL_9:
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [v61 componentsJoinedByString:{@", "}];
      v22 = sub_1002B9BD8(MetricsCoordinator, a5);
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      *&buf[22] = 2114;
      v82 = v21;
      *v83 = 2114;
      *&v83[2] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Preparing with apps: [%{public}@] sourceType: %{public}@", buf, 0x2Au);
    }

    sub_1002B5E98(v63, v69, a5);
    sub_1002B6E2C(v63, 2, v69, a5);
    sub_1002B6E2C(v63, 5, v69, a5);
    v23 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [v61 componentsJoinedByString:{@", "}];
      v27 = sub_1002B9BD8(MetricsCoordinator, a5);
      *buf = 138544130;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      *&buf[22] = 2114;
      v82 = v26;
      *v83 = 2114;
      *&v83[2] = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recording events for apps: [%{public}@] sourceType: %{public}@", buf, 0x2Au);
    }

    if ((+[AMSDevice deviceIsiPhone]& 1) != 0)
    {
      if (v60 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (((v60 == 1) & +[AMSDevice deviceIsiPad]) == 0)
    {
      goto LABEL_27;
    }

    v28 = +[_TtC9appstored17AppInstallMetrics shared];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v61;
    v29 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    if (v29)
    {
      v65 = *v78;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v78 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v77 + 1) + 8 * i);
          v32 = [v68 objectForKeyedSubscript:v31];
          v33 = dispatch_semaphore_create(0);
          v73 = 0;
          v74 = &v73;
          v75 = 0x2020000000;
          v76 = 0;
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_1002B9D2C;
          v70[3] = &unk_100520BF0;
          v72 = &v73;
          v34 = v33;
          v71 = v34;
          [v28 recordInstallWithBundleID:v31 appInstallType:a3 token:v32 logKey:v69 completionHandler:v70];
          dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
          v35 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = objc_opt_class();
            v37 = sub_1002B9BD8(MetricsCoordinator, a5);
            v38 = *(v74 + 24);
            *buf = 138544898;
            *&buf[4] = v36;
            *&buf[12] = 2112;
            *&buf[14] = v69;
            *&buf[22] = 2114;
            v82 = v31;
            *v83 = 2114;
            *&v83[2] = v37;
            *&v83[10] = 2048;
            *&v83[12] = a3;
            *&v83[20] = 2112;
            *&v83[22] = v32;
            *&v83[30] = 1024;
            v84 = v38;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recorded app install for bundleID: [%{public}@] sourceType: %{public}@ installType: %ld token: %@ result: %{BOOL}d", buf, 0x44u);
          }

          _Block_object_dispose(&v73, 8);
        }

        v29 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
      }

      while (v29);
    }

LABEL_27:
    v39 = +[NSMutableArray array];
    v66 = sub_1002B7434(v63, 1, v69);
    if (a5 != 4 && v66 && [v66 shouldCollectMetrics])
    {
      objc_opt_self();
      [v39 addObject:@"Crossfire"];
      if (v60 == 1)
      {
        [v66 recordInstallEventsForBundleIDs:v61 installType:a3];
      }

      else if (v60 == 3)
      {
        [v66 recordDeletedBundleIDs:v61];
      }
    }

    v40 = sub_1002B7434(v63, 2, v69);
    v41 = v40;
    if (v40 && [v40 shouldCollectMetrics])
    {
      objc_opt_self();
      [v39 addObject:@"DNU"];
      if (v60 == 1)
      {
        [v41 recordInstallEventsForBundleIDs:v61 installType:a3];
      }

      else if (v60 == 3)
      {
        [v41 recordDeletedBundleIDs:v61];
      }
    }

    v42 = sub_1002B7434(v63, 3, v69);
    v43 = v42;
    if (v42 && [v42 shouldCollectMetrics])
    {
      objc_opt_self();
      [v39 addObject:@"Summary"];
      if (v60 == 1)
      {
        [v43 recordInstallEventsForBundleIDs:v61 installType:a3];
      }

      else if (v60 == 3)
      {
        [v43 recordDeletedBundleIDs:v61];
      }
    }

    v44 = sub_1002B7434(v63, 5, v69);
    v45 = v44;
    if (v44 && [v44 shouldCollectMetrics])
    {
      objc_opt_self();
      [v39 addObject:@"ODP"];
      if (v60 == 1)
      {
        [v45 recordInstallEventsForBundleIDs:v61 installType:a3];
        goto LABEL_51;
      }

      if (v60 != 3)
      {
LABEL_60:

        goto LABEL_61;
      }

      [v45 recordDeletedBundleIDs:v61];
    }

    else
    {
      if (v60 == 1)
      {
LABEL_51:
        sub_1002B9D40(v63, v61, v69);
        v46 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = objc_opt_class();
          v48 = v47;
          v49 = [v61 componentsJoinedByString:{@", "}];
          v50 = [v39 componentsJoinedByString:{@", "}];
          *buf = 138544130;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = v69;
          *&buf[22] = 2114;
          v82 = v49;
          *v83 = 2114;
          *&v83[2] = v50;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recorded installed apps: [%{public}@] for types: [%{public}@]", buf, 0x2Au);
        }

LABEL_59:

        goto LABEL_60;
      }

      if (v60 != 3)
      {
        goto LABEL_60;
      }
    }

    v51 = v61;
    v52 = v69;
    v53 = sub_10036C90C();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1002BA2D4;
    v82 = &unk_100520C40;
    v54 = v51;
    *v83 = v54;
    *&v83[8] = v63;
    v55 = v52;
    *&v83[16] = v55;
    *&v83[24] = a5;
    [v53 modifyUsingTransaction:buf];

    v46 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v56 = objc_opt_class();
      v57 = v56;
      v58 = [v54 componentsJoinedByString:{@", "}];
      v59 = [v39 componentsJoinedByString:{@", "}];
      *buf = 138544130;
      *&buf[4] = v56;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      *&buf[22] = 2114;
      v82 = v58;
      *v83 = 2114;
      *&v83[2] = v59;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recorded uninstalled apps: [%{public}@] for types: [%{public}@]", buf, 0x2Au);
    }

    goto LABEL_59;
  }

LABEL_61:
}

void sub_1002B81C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (a1)
  {
    v18 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B8308;
    block[3] = &unk_100520B28;
    block[4] = a1;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v25 = a6;
    v24 = v17;
    dispatch_async(v18, block);
  }
}

void sub_1002B8308(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.recordInstalledClipForBundleID"];
  v3 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = sub_1002B7434(*(a1 + 32), 1, v3);
  v5 = v4;
  if (v4)
  {
    sub_10025BC18(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), v3);
  }

  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  sub_1002B7614(v6, v7, 0xBu, 1, 4, v9);
}

void sub_1002B844C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002B8508;
    v10[3] = &unk_100520B00;
    v10[4] = a1;
    v12 = a2;
    v13 = a3;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void sub_1002B8508(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  sub_1002B8564(*(a1 + 32), *(a1 + 48), v2, *(a1 + 56), *(a1 + 40));
}

void sub_1002B8564(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = a3;
  v9 = a5;
  if (a1)
  {
    sub_1002B5E98(a1, v10, a4);
    sub_1002B6E2C(a1, a2, v10, a4);
    if (v9)
    {
      v9[2](v9, 1, 0);
    }
  }
}

void sub_1002B860C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B86BC;
    block[3] = &unk_100520B50;
    block[4] = a1;
    v11 = a2;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

void sub_1002B86BC(uint64_t a1)
{
  v18 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.record"];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsHandler.reset"];
    v6 = sub_1002B97DC(v2);
    v7 = v6;
    if (v6 && [v6 shouldCollectMetrics])
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = sub_1002B9834(MetricsCoordinator, v2);
        *buf = 138543618;
        v20 = v9;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@/%{public}@] Reset metrics", buf, 0x16u);
      }

      v12 = objc_alloc_init(_TtC9appstored6LogKey);
      objc_setProperty_nonatomic_copy(v7, v13, *(v3 + 8), 24);
      objc_setProperty_nonatomic_copy(v7, v14, v12, 32);
      v15 = sub_1002B5800(v3);
      objc_storeStrong(v7 + 5, v15);

      [v7 resetMetrics];
      v4[2](v4, 1, 0);
    }

    else
    {
      if (!v4)
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = sub_1002B9834(MetricsCoordinator, v2);
      v16 = [NSString stringWithFormat:@"Handler not found for type: %@", v12];
      v17 = ASDErrorWithTitleAndMessage();
      (v4)[2](v4, 0, v17);
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_1002B8950(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v17 = a2;
  if (a1)
  {
    if ((+[AMSDevice deviceIsiPhone](AMSDevice, "deviceIsiPhone") & 1) != 0 || +[AMSDevice deviceIsiPad])
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = sub_1002B8C84;
      v36 = sub_1002B8C94;
      v37 = +[NSMutableDictionary dictionary];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v17;
      v5 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v5)
      {
        v6 = *v29;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v29 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v28 + 1) + 8 * i);
            v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8];
            v10 = sub_1003C27BC();
            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_1002B8C9C;
            v24[3] = &unk_100520B78;
            v11 = v9;
            v26 = v8;
            v27 = &v32;
            v25 = v11;
            [v10 readUsingSession:v24];
          }

          v5 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v5);
      }

      v12 = [v33[5] copy];
      _Block_object_dispose(&v32, 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B8D5C;
    block[3] = &unk_100520BA0;
    block[4] = a1;
    v23 = a3;
    v21 = v12;
    v22 = a4;
    v20 = v17;
    v14 = v12;
    dispatch_async(v13, block);
  }
}

uint64_t sub_1002B8C84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002B8C9C(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v6 = sub_1002D3DF0(AppInstallEntity, v3, *(a1 + 32));

  if (v6)
  {
    v4 = sub_100294650(v6);

    if (v4)
    {
      v5 = sub_100294650(v6);
      [*(*(*(a1 + 48) + 8) + 40) setObject:v5 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

void sub_1002B8D5C(uint64_t a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.recordInstalls"];
  sub_1002B7614(*(a1 + 32), *(a1 + 40), *(a1 + 64), 1, *(a1 + 56), *(a1 + 48));
}

void sub_1002B8DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B8E78;
    block[3] = &unk_100520B50;
    block[4] = a1;
    v10 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1002B8E78(uint64_t *a1)
{
  v4 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.recordLaunches"];
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  sub_1002B5E98(a1[4], v2, a1[6]);
  v3 = a1[5];
  if (v3)
  {
    (*(v3 + 16))(v3, 1, 0);
  }
}

void sub_1002B8F10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1)
  {
    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002B8FCC;
    v10[3] = &unk_100520B00;
    v10[4] = a1;
    v12 = a2;
    v13 = a3;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

void sub_1002B8FCC(uint64_t a1)
{
  v4 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsCoordinator.recordLaunches"];
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  sub_1002B6E2C(*(a1 + 32), *(a1 + 48), v2, *(a1 + 56));
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 1, 0);
  }
}

void sub_1002B9064(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002B9114;
    block[3] = &unk_100520B50;
    block[4] = a1;
    v10 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1002B9114(uint64_t *a1)
{
  v2 = [[KeepAlive alloc] initWithName:@"com.apple.appstored.MetricsHandler.recordDeleted"];
  v3 = sub_1002B5800(a1[4]);
  v31 = objc_alloc_init(_TtC9appstored6LogKey);
  if ([v3 count])
  {
    v28 = v2;
    v30 = +[NSMutableArray array];
    v27 = +[LSDatabaseContext sharedDatabaseContext];
    v26 = [v27 startAccessingReturningError:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = [v3 keyEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v33;
      v29 = a1;
      do
      {
        v8 = 0;
        do
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v32 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = [ApplicationProxy proxyForBundleID:v9];
          v12 = v11;
          if (v11 && (![*(v11 + 120) isPlaceholder] || objc_msgSend(v12[15], "installType") - 7 < 3 || objc_msgSend(v12[15], "isPlaceholder")))
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v17 = objc_opt_class();
              *buf = 138543874;
              v37 = v17;
              v38 = 2112;
              v39 = v31;
              v40 = 2114;
              v41 = v9;
              v18 = v17;
              _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[%{public}@/%@] [Sync] [%{public}@] Not recording uninstall non candidate install type", buf, 0x20u);
            }
          }

          else if (sub_1002B9558(a1[4], v12))
          {
            v14 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = objc_opt_class();
              *buf = 138543874;
              v37 = v15;
              v38 = 2112;
              v39 = v31;
              v40 = 2114;
              v41 = v9;
              v16 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [Sync] [%{public}@] Recording uninstall", buf, 0x20u);

              a1 = v29;
            }

            [v30 addObject:v9];
          }

          objc_autoreleasePoolPop(v10);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v19 = [v4 countByEnumeratingWithState:&v32 objects:v42 count:16];
        v6 = v19;
      }

      while (v19);
    }

    if (v26)
    {
      [v27 stopAccessing];
    }

    if ([v30 count])
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = a1;
        v23 = v21;
        v24 = [v30 componentsJoinedByString:{@", "}];
        *buf = 138543874;
        v37 = v21;
        v38 = 2112;
        v39 = v31;
        v40 = 2114;
        v41 = v24;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [Sync] Found apps that were deleted event for bundleIDs: [%{public}@]", buf, 0x20u);

        a1 = v22;
      }

      sub_1002B7614(a1[4], v30, 0, 3, a1[6], 0);
    }

    v2 = v28;
  }

  v25 = a1[5];
  if (v25)
  {
    (*(v25 + 16))(v25, 1, 0);
  }
}

BOOL sub_1002B9558(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = sub_1003D3068(v3);
    a1 = 0;
    if (v4)
    {
      if (v5)
      {
        if ([v4[15] applicationHasMIDBasedSINF] && !sub_1003D2404(v4))
        {
          a1 = 0;
        }

        else if ([v4[15] isPlaceholder])
        {
          a1 = [v4[15] installType] - 7 < 3;
        }

        else
        {
          a1 = 1;
        }
      }
    }
  }

  return a1;
}

void sub_1002B95E8(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D3F5C(ActiveLaunchEventEntity, v3, 0);

  v5 = +[ActiveLaunchEventEntity defaultProperties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002B96CC;
  v6[3] = &unk_10051B038;
  v7 = *(a1 + 32);
  [v4 enumerateMemoryEntitiesWithProperties:v5 usingBlock:v6];
}

void sub_1002B96CC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = sub_10038AD6C(v5);
  if (v3)
  {
    v4 = sub_10038B0A0(v5);
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void sub_1002B9750(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D3F5C(AppMetadataEntity, v3, 0);

  *(*(*(a1 + 32) + 8) + 24) = [v4 countOfEntities];
}

id sub_1002B97DC(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_alloc_init(*off_100520D38[a1 - 1]);
  }

  return v2;
}

const __CFString *sub_1002B9834(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return *(&off_100520D60 + a2 - 1);
  }
}

void sub_1002B9914(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = [*(a1 + 32) userInfo];
  v4 = sub_1002380D8(v3, @"ID");
  v5 = [v3 objectForKeyedSubscript:@"active"];

  if (v5)
  {
    v5 = sub_10023790C(v3, @"active");
  }

  v6 = [v3 objectForKeyedSubscript:@"signout"];

  if (v3 && v6)
  {
    sub_1002378BC(v3, @"signout", 0);
  }

  if ([v5 BOOLValue] && *(*(a1 + 40) + 8))
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = *(*(a1 + 40) + 8);
      v10 = v8;
      v17 = 138544386;
      v18 = v8;
      v19 = 2112;
      v20 = v2;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = 0;
      v25 = 1024;
      v26 = [v5 BOOLValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Not recording metrics following change from accountID: %{public}@ to accountID: %{public}@ active: %{BOOL}d", &v17, 0x30u);
    }
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = *(*(a1 + 40) + 8);
      v14 = v12;
      v17 = 138544386;
      v18 = v12;
      v19 = 2112;
      v20 = v2;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = 0;
      v25 = 1024;
      v26 = [v5 BOOLValue];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] Recording metrics following change from accountID: %{public}@ going to accountID: %{public}@ active: %{BOOL}d", &v17, 0x30u);
    }

    sub_1002B8564(*(a1 + 40), 5, v2, 5, 0);
  }

  [v5 BOOLValue];
  v15 = *(a1 + 40);
  v16 = *(v15 + 8);
  *(v15 + 8) = 0;
}

const __CFString *sub_1002B9BD8(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100520D88 + a2 - 1);
  }
}

uint64_t sub_1002B9C20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = sub_1003F1444(a2, v3, &v10);
  v5 = v10;
  if (v5)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      *buf = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      v9 = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to record active launches due to error: %{public}@", buf, 0x16u);
    }
  }

  return 1;
}

void sub_1002B9D40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1002BA54C;
  v30[3] = &unk_100520C68;
  v8 = v5;
  v31 = v8;
  v32 = a1;
  v9 = v6;
  v33 = v9;
  v10 = v7;
  v34 = v10;
  sub_1003D31A8(ApplicationProxy, 0, v30);
  v11 = +[BagService appstoredService];
  v12 = [v11 lastBag];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1002BA708;
  v24[3] = &unk_100520C90;
  v13 = v8;
  v25 = v13;
  v26 = v12;
  v27 = a1;
  v14 = v9;
  v28 = v14;
  v29 = v10;
  v15 = v10;
  v16 = v12;
  sub_1003D31A8(ApplicationProxy, 1uLL, v24);
  v17 = v15;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1002B8C84;
  v42 = sub_1002B8C94;
  v43 = 0;
  v18 = sub_10036C90C();
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1002BA924;
  v35[3] = &unk_100520CB8;
  v19 = v17;
  v36 = v19;
  v37 = &v38;
  [v18 modifyUsingTransaction:v35];

  if (v39[5])
  {
    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = v39[5];
      *buf = 138543618;
      v45 = v21;
      v46 = 2114;
      v47 = v22;
      v23 = v21;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to record current apps due to error: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v38, 8);
}

uint64_t sub_1002BA0CC(uint64_t a1, void *a2)
{
  v19 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v21;
    *&v4 = 138543874;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8, v17];
        v10 = [v19 connection];
        v11 = sub_1002D3DF0(ActiveLaunchEventEntity, v10, v9);

        [v11 deleteFromDatabase];
        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          v14 = *(a1 + 48);
          *buf = v17;
          v25 = v13;
          v26 = 2112;
          v27 = v14;
          v28 = 2114;
          v29 = v8;
          v15 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Removed active app launch", buf, 0x20u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);
  }

  return 1;
}

uint64_t sub_1002BA2D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = a1;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v4)
  {
    v6 = v4;
    v23 = *v26;
    p_superclass = TFUploadFeedbackRequest.superclass;
    *&v5 = 138544130;
    v18 = v5;
    v19 = v3;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v25 + 1) + 8 * i);
        v9 = [p_superclass + 29 predicateWithProperty:@"bundle_id" equalToValue:v18];
        v10 = [v3 connection];
        v11 = sub_1002D3DF0(AppMetadataEntity, v10, v9);

        [v11 deleteFromDatabase];
        v12 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          v14 = *(v20 + 56);
          v22 = *(v20 + 48);
          v15 = v13;
          v16 = sub_1002B9BD8(MetricsCoordinator, v14);
          *buf = v18;
          v30 = v13;
          v31 = 2112;
          v32 = v22;
          v33 = 2114;
          v34 = v16;
          v35 = 2114;
          v36 = v24;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] [%{public}@] Removed metadata following deletion", buf, 0x2Au);

          v3 = v19;
          p_superclass = (TFUploadFeedbackRequest + 8);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v6);
  }

  return 1;
}

void sub_1002BA54C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5 || (sub_1003D0F60(v3), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 containsObject:v6], v6, v7))
  {
    if (sub_1002B9558(*(a1 + 40), v4))
    {
      v8 = sub_100381B80([AppMetadata alloc], v4);
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = *(a1 + 48);
        v12 = v10;
        v13 = sub_1003D0F60(v4);
        v14 = sub_1003D26A0(v4);
        v15 = sub_1003D251C(v4);
        v16 = 138544386;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@/%@] [%{public}@] Writing metadata for version: %{public}@ bundleVersion: %{public}@", &v16, 0x34u);
      }

      [*(a1 + 56) addObject:v8];
    }
  }
}

void sub_1002BA708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = sub_1003D0F60(v3);
    if (([v5 containsObject:v6] & 1) == 0 || !v4)
    {
LABEL_12:

      goto LABEL_13;
    }

    if ([v4[15] isPlaceholder])
    {
      v7 = [v4[15] installType] - 7;

      if (v7 > 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v8 = *(a1 + 40);
  v9 = sub_1003D0F60(v4);
  v6 = [v8 itemIDForSystemAppWithBundleID:v9];

  if (v6)
  {
    v10 = sub_100381B80([AppMetadata alloc], v4);
    sub_10023E000(v10, &__kCFBooleanTrue, @"is_prior");
    sub_10023E000(v10, v6, @"item_id");
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 56);
      v14 = v12;
      v15 = sub_1003D0F60(v4);
      v16 = sub_1003D26A0(v4);
      v17 = 138544386;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@/%@] [%{public}@:%{public}@:%{public}@] Writing system metadata", &v17, 0x34u);
    }

    [*(a1 + 64) addObject:v10];
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_1002BA924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = sub_1003F0DC8(v3, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);

  return 1;
}

id sub_1002BA9FC(void *a1)
{
  if (a1)
  {
    a1 = sub_1002BAA30(a1, 40);
    v1 = vars8;
  }

  return a1;
}

id sub_1002BAA30(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v7 = 0;
    sub_100028F9C([a1 bytes], objc_msgSend(a1, "length"), a2, &v7);
    if (v3)
    {
      v4 = v3;
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v9 = v2;
        v10 = 1024;
        v11 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to read %d (error %d)", buf, 0xEu);
      }

      a1 = 0;
    }

    else
    {
      a1 = [NSNumber numberWithUnsignedLongLong:v7];
    }
  }

  return a1;
}

id sub_1002BAB58(void *a1)
{
  if (a1)
  {
    a1 = sub_1002BAA30(a1, 41);
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1002BAB8C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1002BAA30(a1, 42);
  v2 = [v1 isEqualToNumber:&off_100547A28] ^ 1;

  return v2;
}

id sub_1002BABDC(void *a1)
{
  if (a1)
  {
    a1 = sub_1002BAA30(a1, 1);
    v1 = vars8;
  }

  return a1;
}

void sub_1002BAD58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    data = dispatch_source_get_data(WeakRetained[2]);
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = v4;
    if (v4)
    {
      dispatch_assert_queue_V2(v4[1]);
      v6 = [(dispatch_queue_t *)v5 delegate];
      [v6 stream:v5 handleEvent:data];
    }

    WeakRetained = v7;
  }
}

void sub_1002BAEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BAEFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002BAF14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_1002BB0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002BB120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002BB1C8;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    sub_100379C5C(v5, v6);
  }
}

void sub_1002BB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002BB2AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1002BB328;
    v3[3] = &unk_10051B830;
    v3[4] = a1;
    v3[5] = a2;
    sub_100379C5C(v2, v3);
  }
}

id sub_1002BB3F0()
{
  objc_opt_self();
  if (qword_1005AAB08 != -1)
  {
    dispatch_once(&qword_1005AAB08, &stru_100520DE0);
  }

  v0 = qword_1005AAB00;

  return v0;
}

void sub_1002BB448(id a1)
{
  v1 = [AppUpdatesDatabaseStore alloc];
  v5 = sub_1001C0DF0();
  v2 = sub_1001C0EC4(v5);
  v3 = [(SQLiteDatabaseStore *)v1 initWithDatabase:v2];
  v4 = qword_1005AAB00;
  qword_1005AAB00 = v3;
}

uint64_t sub_1002BB548(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = v9;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002BB64C;
    v12[3] = &unk_100520E30;
    v15 = a4;
    v16 = a5;
    v17 = a3;
    v13 = v9;
    v14 = &v18;
    [a1 modifyUsingTransaction:v12];
    LOBYTE(a1) = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return a1 & 1;
}

void sub_1002BB634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BB64C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a1[4]];
  v5 = +[UpdatesManager shouldUseModernUpdates];
  v6 = off_100506480;
  if (!v5)
  {
    v6 = off_100506398;
  }

  v7 = *v6;
  v8 = [v3 connection];
  v9 = sub_1002D3DF0(v7, v8, v4);

  if ([v9 existsInDatabase])
  {
    v10 = [NSNumber numberWithInteger:a1[6]];
    [v9 setValue:v10 forProperty:@"package_type"];

    v11 = [NSNumber numberWithInteger:a1[7]];
    [v9 setValue:v11 forProperty:@"installer_packaging_type"];

    v12 = sub_1003402E8(v9, @"update_state");
    v13 = a1[8];
    if (v12 == v13)
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = a1[4];
        v16 = a1[8];
        *buf = 138543618;
        v56 = v15;
        v57 = 2048;
        v58 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring request to set update state of %{public}@, current state is already %ld", buf, 0x16u);
      }
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 1;
      v17 = ASDLogHandleForCategory();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v13 == 1)
      {
        if (v18)
        {
          v19 = a1[4];
          *buf = 138543362;
          v56 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Updated state to installed for bundleID: %{public}@", buf, 0xCu);
        }

        v20 = +[NSDate date];
        [v9 setValue:v20 forProperty:@"install_date"];

        v21 = [NSNumber numberWithInteger:a1[8]];
        [v9 setValue:v21 forProperty:@"update_state"];

        v14 = [v9 valueForProperty:@"metrics_data"];
        if (v14)
        {
          v22 = [[UpdateItemMetrics alloc] initWithData:v14];
          if (!v22)
          {
            v22 = objc_opt_new();
          }

          v23 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
          sub_1001D7988(v22, v23, ASDUpdateItemMetricsInstallComplete);

          if (v22)
          {
            v24 = [(NSMutableDictionary *)v22->_metricsData copy];
          }

          else
          {
            v24 = 0;
          }

          [v9 setValue:v24 forProperty:@"metrics_data"];

          v25 = +[NSMutableDictionary dictionary];
          if (v22)
          {
            v26 = [(NSMutableDictionary *)v22->_metricsData copy];
          }

          else
          {
            v26 = 0;
          }

          v27 = [v26 objectForKey:ASDUpdateItemMetricsAvailableDate];

          if (v27)
          {
            v46 = v14;
            v47 = v9;
            v48 = v4;
            v49 = v3;
            [v27 doubleValue];
            v45 = [NSNumber numberWithDouble:v28 / 3600.0];
            [v25 setObject:? forKey:?];
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v29 = +[ASDUpdateMetricsEvent relativeMetricsKeys];
            v30 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v51;
              do
              {
                v33 = 0;
                do
                {
                  if (*v51 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v50 + 1) + 8 * v33);
                  if (v22)
                  {
                    v35 = [(NSMutableDictionary *)v22->_metricsData copy];
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v36 = [v35 objectForKey:v34];

                  if (v36)
                  {
                    [v36 doubleValue];
                    v38 = v37;
                    [v27 doubleValue];
                    v40 = [NSNumber numberWithDouble:(v38 - v39) / 3600.0];
                    [v25 setObject:v40 forKey:v34];
                  }

                  v33 = v33 + 1;
                }

                while (v31 != v33);
                v41 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
                v31 = v41;
              }

              while (v41);
            }

            v4 = v48;
            v3 = v49;
            v14 = v46;
            v9 = v47;
          }

          sub_1003F25C4(Analytics, v25, 33);
        }
      }

      else
      {
        if (v18)
        {
          v42 = a1[4];
          v43 = a1[8];
          *buf = 138543618;
          v56 = v42;
          v57 = 2048;
          v58 = v43;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Resetting update state for: %{public}@ to %ld", buf, 0x16u);
        }

        v14 = [NSNumber numberWithInteger:a1[8]];
        [v9 setValue:v14 forProperty:@"update_state"];
      }
    }
  }

  return 1;
}

void sub_1002BBC18(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002BBCD8;
    v7[3] = &unk_100520E08;
    v8 = v5;
    v9 = v6;
    [a1 modifyUsingTransaction:v7];
  }
}

uint64_t sub_1002BBCD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v19 count:1];
  v5 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:v4];

  v6 = +[UpdatesManager shouldUseModernUpdates];
  v7 = off_100506480;
  if (!v6)
  {
    v7 = off_100506398;
  }

  v8 = *v7;
  v9 = [v3 connection];
  v10 = sub_1002D3DF0(v8, v9, v5);

  if (v10)
  {
    sub_100350204(v3, v10, *(a1 + 40));
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v15 = 138412546;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Unable to reset purchase state for update with bundleID: %{public}@", &v15, 0x16u);
    }
  }

  return 1;
}

void sub_1002BBE74(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002BBF34;
    v7[3] = &unk_100520E08;
    v8 = v5;
    v9 = v6;
    [a1 modifyUsingTransaction:v7];
  }
}

uint64_t sub_1002BBF34(uint64_t a1, void *a2)
{
  v19 = *(a1 + 32);
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v19 count:1];
  v5 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:v4];

  v6 = +[UpdatesManager shouldUseModernUpdates];
  v7 = off_100506480;
  if (!v6)
  {
    v7 = off_100506398;
  }

  v8 = *v7;
  v9 = [v3 connection];

  v10 = sub_1002D3DF0(v8, v9, v5);

  if (v10)
  {
    [v10 deleteFromDatabase];
  }

  else
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v15 = 138412546;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Unable to drop update with bundleID: %{public}@", &v15, 0x16u);
    }
  }

  return 1;
}

uint64_t sub_1002BC0CC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    if ([v7 count])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1002BC1EC;
      v10[3] = &unk_100520E80;
      v11 = v7;
      v12 = v8;
      v13 = &v15;
      v14 = a2;
      [a1 modifyUsingTransaction:v10];
    }

    LOBYTE(a1) = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return a1 & 1;
}

void sub_1002BC1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002BC1EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteContainsPredicate containsPredicateWithProperty:@"bundle_id" values:*(a1 + 32)];
  v5 = +[UpdatesManager shouldUseModernUpdates];
  v6 = v5;
  v7 = off_100506480;
  if (!v5)
  {
    v7 = off_100506398;
  }

  v8 = *v7;
  v9 = [v3 connection];
  v10 = sub_1002D3F5C(v8, v9, v4);

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002BC338;
  v15[3] = &unk_100520E58;
  v20 = v6;
  v16 = v3;
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v18 = *(a1 + 48);
  v19 = v12;
  v17 = v11;
  v13 = v3;
  [v10 enumeratePersistentIDsUsingBlock:v15];

  return 1;
}

void sub_1002BC338(uint64_t a1, uint64_t a2)
{
  v4 = off_100506480;
  if (!*(a1 + 64))
  {
    v4 = off_100506398;
  }

  v5 = objc_alloc(*v4);
  v6 = [*(a1 + 32) connection];
  v7 = [v5 initWithPersistentID:a2 onConnection:v6];

  if ([v7 existsInDatabase])
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = sub_100340328(v7, @"bundle_id");
      v11 = *(a1 + 56);
      v13 = 138412802;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Setting update state to %ld", &v13, 0x20u);
    }

    v12 = [NSNumber numberWithInteger:*(a1 + 56)];
    [v7 setValue:v12 forProperty:@"update_state"];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t sub_1002BC4D0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002BC5C0;
    v8[3] = &unk_100520EA8;
    v10 = &v12;
    v11 = a2;
    v9 = v5;
    [a1 modifyUsingTransaction:v8];
    LOBYTE(a1) = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return a1 & 1;
}

void sub_1002BC5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002BC634(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2 > 14499)
  {
    if (a2 <= 15999)
    {
      switch(a2)
      {
        case 14500:
          v4 = &stru_100520F88;
          v5 = 14501;
          break;
        case 14501:
          v4 = &stru_100520FA8;
          v5 = 14502;
          break;
        case 14502:
          v4 = &stru_100520FC8;
          v5 = 16000;
          break;
        default:
          return;
      }

      goto LABEL_27;
    }

    if (a2 == 16000)
    {
      v4 = &stru_100520FE8;
      v5 = 16004;
      goto LABEL_27;
    }

    if (a2 == 16004)
    {
      v4 = &stru_100521008;
      v5 = 17000;
      goto LABEL_27;
    }

    if (a2 != 17000)
    {
      return;
    }

    v4 = &stru_100521028;
    goto LABEL_20;
  }

  if (a2 > 13000)
  {
    switch(a2)
    {
      case 13001:
        v4 = &stru_100520F28;
        v5 = 14000;
        break;
      case 14000:
        v4 = &stru_100520F48;
        v5 = 14001;
        break;
      case 14001:
        v4 = &stru_100520F68;
        v5 = 14500;
        break;
      default:
        return;
    }

    goto LABEL_27;
  }

  if (!a2)
  {
    v4 = &stru_100520EE8;
LABEL_20:
    v5 = 19000;
    goto LABEL_27;
  }

  if (a2 != 13000)
  {
    return;
  }

  v4 = &stru_100520F08;
  v5 = 13001;
LABEL_27:
  *a3 = v5;
  v6 = *a4;
  *a4 = v4;
}

void sub_1002BC790(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"CREATE TABLE IF NOT EXISTS app_updates (pid INTEGER, bundle_id TEXT, current_version_release_date DATETIME, device_families INTEGER, install_date DATETIME, installer_packaging_type INTEGER, is_background INTEGER NOT NULL DEFAULT 0, is_b2b_custom_app INTEGER NOT NULL DEFAULT 0, is_code_signature_update INTEGER NOT NULL DEFAULT 0, is_offloaded INTEGER NOT NULL DEFAULT 0, is_per_device INTEGER NOT NULL DEFAULT 0, is_profile_validated INTEGER NOT NULL DEFAULT 0, metrics_data JSON, package_type INTEGER, purchase_id INTEGER DEFAULT 0, release_date DATETIME, software_platform INTEGER NOT NULL DEFAULT 0, store_item_data JSON, store_item_id INTEGER NOT NULL DEFAULT 0, store_software_version_id INTEGER, timestamp DATETIME DEFAULT (timestamp()), update_state INTEGER NOT NULL DEFAULT 0, UNIQUE(bundle_id) ON CONFLICT REPLACE,PRIMARY KEY (pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS mapi_app_update (pid INTEGER, BOOLean_property_mask INTEGER NOT NULL DEFAULT 0, bundle_id TEXT NOT NULL, install_date DATETIME, installer_packaging_type INTEGER, item_id INTEGER NOT NULL DEFAULT 0, metadata BLOB, metrics_data JSON, package_type INTEGER, store_software_version_id INTEGER, timestamp DATETIME DEFAULT (timestamp()), update_state INTEGER NOT NULL DEFAULT 0, UNIQUE(bundle_id) ON CONFLICT REPLACE,PRIMARY KEY (pid));", 1, 0);
    v2 = v3;
  }
}

void sub_1002BC7F8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"DELETE FROM app_updates WHERE is_profile_validated = 1;", 1, 0);
  }
}

void sub_1002BC81C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE app_updates ADD COLUMN current_version_release_date DATETIME;", 1, 0);
  }
}

void sub_1002BC840(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_updates ADD COLUMN device_families INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE app_updates ADD COLUMN software_platform INTEGER NOT NULL DEFAULT 0;", 1, 0);
    v2 = v3;
  }
}

void sub_1002BC8AC(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v3 = a2;
  has_internal_content = os_variant_has_internal_content();
  if (v3 && has_internal_content)
  {
    sub_1003BA14C(v3, @"DELETE FROM app_updates WHERE is_app_clip", 0, 0);
  }

  _objc_release_x2(has_internal_content);
}

void sub_1002BC914(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE app_updates ADD COLUMN is_code_signature_update INTEGER NOT NULL DEFAULT 0;", 1, 0);
  }
}

void sub_1002BC938(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"CREATE TABLE IF NOT EXISTS mapi_app_update (pid INTEGER, BOOLean_property_mask INTEGER NOT NULL DEFAULT 0, bundle_id TEXT NOT NULL, install_date DATETIME, installer_packaging_type INTEGER, item_id INTEGER NOT NULL DEFAULT 0, metadata BLOB, metrics_data JSON, package_type INTEGER, store_software_version_id INTEGER, timestamp DATETIME DEFAULT (timestamp()), update_state INTEGER NOT NULL DEFAULT 0, UNIQUE(bundle_id) ON CONFLICT REPLACE,PRIMARY KEY (pid));", 1, 0);
  }
}

void sub_1002BC95C(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"ALTER TABLE app_updates ADD COLUMN is_b2b_custom_app INTEGER NOT NULL DEFAULT 0;", 1, 0);
  }
}

void sub_1002BC980(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_updates ADD COLUMN package_type INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE mapi_app_update ADD COLUMN package_type INTEGER;", 0, 0);
    v2 = v3;
  }
}

void sub_1002BC9E8(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"ALTER TABLE app_updates ADD COLUMN installer_packaging_type INTEGER;", 1, 0);
    sub_1003BA14C(v3, @"ALTER TABLE mapi_app_update ADD COLUMN installer_packaging_type INTEGER;", 0, 0);
    v2 = v3;
  }
}

id *sub_1002BCA5C(void *a1, void *a2)
{
  v4 = a2;
  v8.receiver = a1;
  v8.super_class = _NavigationIndexClientState;
  v5 = objc_msgSendSuper2(&v8, "init");
  v6 = v5;
  if (v5)
  {
    *(v5 + 4) = 2;
    objc_storeStrong(v5 + 2, a2);
  }

  return v6;
}

void sub_1002BCD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002BCD4C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_1002BCEF8(WeakRetained, 0, v5);
  }
}

void sub_1002BCDB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      sub_1002BCEF8(v7, 0, v5);
    }
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to load bag for Arcade in Spotlight: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_1002BCEF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v7 = [v6 BOOLForKey:@"arcade-in-spotlight-enabled" defaultValue:0];
      v8 = [v6 stringForKey:@"language-tag"];
      if (v8)
      {
        v9 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
        v10 = [v9 localizations];
        v14 = v8;
        v11 = [NSArray arrayWithObjects:&v14 count:1];
        v12 = [NSBundle preferredLocalizationsFromArray:v10 forPreferences:v11];
        v13 = [v12 firstObject];
      }

      else
      {
        v13 = 0;
      }

      sub_1002BD160(a1, v7, v13, v5);
    }

    else
    {
      sub_1002BD160(a1, 0, 0, v5);
    }
  }
}

void sub_1002BD094(uint64_t a1)
{
  v2 = &__kCFBooleanFalse;
  if (a1)
  {
    v3 = *(a1 + 8);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1002BD148;
    v5[3] = &unk_10051B458;
    v5[4] = a1;
    v4 = &__kCFBooleanFalse;
    v6 = &__kCFBooleanFalse;
    [v3 recentBagNoTimeoutWithCompletionHandler:v5];
  }
}

void sub_1002BD148(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002BCEF8(*(a1 + 32), *(a1 + 40), a2);
  }
}

void sub_1002BD160(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if (a2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v10 = atomic_exchange((a1 + 32), v9);
    if ((v10 & 1) == 0)
    {
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_1002BD440;
      v27 = &unk_100521050;
      v28 = a1;
      v11 = v7;
      v29 = v11;
      v12 = objc_retainBlock(&v24);
      v13 = v11;
      v14 = v8;
      v15 = v12;
      v16 = v15;
      if (v14)
      {
        if ([v14 BOOLValue] != a2)
        {
          v17 = [_NavigationIndexClientState alloc];
          if (v17)
          {
            if (a2)
            {
              v18 = v13;
            }

            else
            {
              v18 = 0;
            }

            v19 = sub_1002BCA5C(v17, v18);
          }

          else
          {
            v19 = 0;
          }

          sub_1002BD504(a1, a2, v13, v19, v16);

          goto LABEL_24;
        }

        v21 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_22;
        }

        *buf = 0;
        v22 = "Spotlight blew away our old index, but we didn't want it anyway!";
      }

      else
      {
        if ((v10 & 4) == 0 || ((v10 & 2) == 0) == a2)
        {
          v23 = *(a1 + 24);
          *buf = _NSConcreteStackBlock;
          v31 = 3221225472;
          v32 = sub_1002BD934;
          v33 = &unk_100521078;
          v34 = a1;
          v36 = v15;
          v35 = v13;
          [v23 fetchLastClientStateWithCompletionHandler:{buf, v24, v25, v26, v27, v28}];

          goto LABEL_24;
        }

        v21 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
LABEL_22:

          (v16[2])(v16, a2, 1);
LABEL_24:

          goto LABEL_25;
        }

        *buf = 0;
        v22 = "Arcade enabled hasn't changed";
      }

      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v22, buf, 2u);
      goto LABEL_22;
    }

    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Coalesced value for arcadeEnabled", buf, 2u);
    }
  }

LABEL_25:
}

uint64_t sub_1002BD440(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = atomic_exchange((*(result + 32) + 32), v4 | v3);
  if (a2 != (v5 & 2) >> 1)
  {
    v6 = result;
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Need to reindex again as the value was changed midflight.", v8, 2u);
    }

    return sub_1002BD160(*(v6 + 32), (v5 >> 1) & 1, *(v6 + 40), 0);
  }

  return result;
}

void sub_1002BD504(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  LODWORD(v7) = a2;
  v9 = a3;
  v10 = a5;
  if (a1)
  {
    v11 = *(a1 + 24);
    v12 = a4;
    [v11 beginIndexBatch];
    if (v7)
    {
      v13 = [[CSSearchableItemAttributeSet alloc] initWithContentType:UTTypeResolvable];
      v39 = v10;
      [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
      v14 = v38 = v7;
      [v14 localizedStringForKey:@"SPOTLIGHT_ARCADE_DISPLAY_NAME" value:0 table:0 localization:v9];
      v16 = v15 = v9;
      [v13 setDisplayName:v16];

      v17 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
      v18 = [v17 localizedStringForKey:@"SPOTLIGHT_ARCADE_KEYWORDS" value:0 table:0 localization:v15];
      v19 = sub_1002BDBE0(v18);

      v20 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
      v21 = [v20 localizedStringForKey:@"SPOTLIGHT_ARCADE_CONTENT_DESCRIPTION_IOS" value:0 table:0 localization:v15];
      [v13 setContentDescription:v21];

      v22 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
      v23 = [v22 localizedStringForKey:@"SPOTLIGHT_ARCADE_KEYWORDS_IOS" value:0 table:0 localization:v15];
      v24 = sub_1002BDBE0(v23);
      v7 = [v24 arrayByAddingObjectsFromArray:v19];

      v9 = v15;
      [v13 setKeywords:v7];
      v25 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppStoreDaemon.framework"];
      v26 = [v25 resourceURL];
      v27 = [v26 URLByAppendingPathComponent:@"arcade-120-rounded.png"];
      [v13 setThumbnailURL:v27];

      v28 = [CSSearchableItem alloc];
      v29 = [v28 initWithUniqueIdentifier:ASDUserActivityUniqueIdentifierArcadeTab domainIdentifier:0 attributeSet:v13];
      v30 = +[NSDate distantFuture];
      [v29 setExpirationDate:v30];

      v31 = *(a1 + 24);
      v43 = v29;
      v32 = [NSArray arrayWithObjects:&v43 count:1];
      [v31 indexSearchableItems:v32 completionHandler:&stru_100521098];

      v10 = v39;
      LOBYTE(v7) = v38;
    }

    else
    {
      [*(a1 + 24) deleteAllSearchableItemsWithCompletionHandler:&stru_1005210B8];
    }

    v33 = *(a1 + 24);
    if (v12)
    {
      v34 = [v12[2] length];
      v35 = [[NSMutableData alloc] initWithLength:v34 + 2];
      v36 = *(v12 + 4);
      *[v35 mutableBytes] = v36;
      [v12[2] getBytes:objc_msgSend(v35 maxLength:"mutableBytes") + 2 usedLength:v34 encoding:0 options:4 range:0 remainingRange:{0, v34, 0}];
      v37 = [v35 copy];
    }

    else
    {
      v37 = 0;
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1002BDE14;
    v40[3] = &unk_1005210E0;
    v41 = v10;
    v42 = v7;
    [v33 endIndexBatchWithClientState:v37 completionHandler:v40];
  }
}

void sub_1002BD934(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = atomic_load((*(a1 + 32) + 32));
  if (v6)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v25.receiver) = 138543362;
      *(&v25.receiver + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch last client state of Spotlight index: %{public}@", &v25, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_30;
  }

  v9 = [_NavigationIndexClientState alloc];
  if (v9)
  {
    if ((v7 & 2) != 0)
    {
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1002BCA5C(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = [_NavigationIndexClientState alloc];
  v13 = v5;
  if (v12)
  {
    v25.receiver = v12;
    v25.super_class = _NavigationIndexClientState;
    v12 = objc_msgSendSuper2(&v25, "init");
    if (v12)
    {
      v14 = [v13 length];
      if (v14 != 1)
      {
        if (!v14)
        {
          v12->_version = 2;
LABEL_19:
          language = v12->_language;
          v12->_language = 0;
LABEL_20:

          goto LABEL_21;
        }

        [v13 getBytes:&v12->_version length:2];
        if (v12->_version == 2)
        {
          v15 = [v13 length];
          v16 = v15 - 2;
          if (v15 == 2)
          {
            goto LABEL_21;
          }

          v17 = [NSString alloc];
          language = [v13 subdataWithRange:{2, v16}];
          v19 = [v17 initWithData:language encoding:4];
          v20 = v12->_language;
          v12->_language = v19;

          goto LABEL_20;
        }
      }

      v12->_version = 0;
      goto LABEL_19;
    }
  }

LABEL_21:

  v21 = v11;
  v22 = v21;
  if (v21 && v12 && v12->_version == *(v21 + 4) && ((v23 = v12->_language, v24 = v22[2], v23 == v24) || v24 && [(NSString *)v23 isEqualToString:?]))
  {

    (*(*(a1 + 48) + 16))();
  }

  else
  {

    sub_1002BD504(*(a1 + 32), (v7 >> 1) & 1, *(a1 + 40), v22, *(a1 + 48));
  }

LABEL_30:
}

id sub_1002BDBE0(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"|"];
  v2 = sub_10036FDEC(v1, &stru_100521100);

  return v2;
}

void sub_1002BDC3C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = ASDLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to add Arcade to Spotlight index: %{public}@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Added Arcade to Spotlight index", &v5, 2u);
  }
}

void sub_1002BDD28(id a1, NSError *a2)
{
  v2 = a2;
  v3 = ASDLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to delete Arcade from Spotlight index: %{public}@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleted Arcade from Spotlight index", &v5, 2u);
  }
}

void sub_1002BDE14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch last client state of Spotlight index: %{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Spotlight index batch ended", &v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1002BE008(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

id sub_1002BE07C(id a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = DigestVerifier;
    a1 = objc_msgSendSuper2(&v16, "init");
    if (a1)
    {
      v6 = [v5 copy];
      v7 = *(a1 + 1);
      *(a1 + 1) = v6;

      *(a1 + 5) = a3;
      *(a1 + 6) = a3;
      v8 = *(a1 + 1);
      if (v8 && (v9 = *(v8 + 8), v9))
      {
        *(a1 + 3) = a3 / v9;
        if (a3 % v9)
        {
LABEL_11:
          *(a1 + 32) = 1;
          goto LABEL_12;
        }
      }

      else
      {
        *(a1 + 3) = 0;
      }

      v10 = [HashDigest alloc];
      v11 = *(a1 + 1);
      if (v11)
      {
        v12 = *(v11 + 24);
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_100382A0C(v10, v12);
      v14 = *(a1 + 2);
      *(a1 + 2) = v13;

      goto LABEL_11;
    }
  }

LABEL_12:

  return a1;
}

uint64_t sub_1002BE160(uint64_t a1, void *a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2 & 1;
  }

  v4 = sub_100382AA0(*(a1 + 16));
  v5 = *(v2 + 24);
  v6 = *(v2 + 8);
  if (v6)
  {
    v6 = v6[2];
  }

  v7 = v6;
  v8 = [v7 count];

  if (v5 >= v8)
  {
    v17 = *(v2 + 24);
    v18 = *(v2 + 8);
    if (v18)
    {
      v18 = v18[2];
    }

    v19 = v18;
    if (v17 == [v19 count])
    {
      v21 = *(v2 + 40);
      v20 = *(v2 + 48);

      if (v20 == v21)
      {
        goto LABEL_27;
      }

      if (!a2)
      {
LABEL_20:
        *(v2 + 32) = 0;
        goto LABEL_27;
      }
    }

    else
    {

      if (!a2)
      {
        goto LABEL_20;
      }
    }

    *a2 = ASDErrorWithDescription();
    goto LABEL_20;
  }

  if (v4)
  {
    v9 = *(v2 + 8);
    if (v9)
    {
      v9 = v9[2];
    }

    v10 = v9;
    v11 = [v10 objectAtIndexedSubscript:*(v2 + 24)];
    *(v2 + 32) = [v4 isEqualToString:v11];

    if ((*(v2 + 32) & 1) == 0)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v30 = *(v2 + 8);
        if (v30)
        {
          v30 = v30[2];
        }

        v31 = v30;
        v32 = [v31 objectAtIndexedSubscript:*(v2 + 24)];
        *buf = 138412546;
        v34 = v4;
        v35 = 2112;
        v36 = v32;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid hash '%@' expected '%@'", buf, 0x16u);
      }

      if (a2)
      {
        v13 = *(v2 + 8);
        if (v13)
        {
          v13 = v13[2];
        }

        v14 = v13;
        v15 = [v14 objectAtIndexedSubscript:*(v2 + 24)];
        v16 = [NSString stringWithFormat:@"Invalid hash '%@' expected '%@'", v4, v15];

        *a2 = ASDErrorWithDescription();
      }

      goto LABEL_27;
    }
  }

  else
  {
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v2 + 24);
      *buf = 134217984;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipped chunk digest at index %lu", buf, 0xCu);
    }

    *(v2 + 32) = 1;
  }

  *(v2 + 48) = *(v2 + 40);
  ++*(v2 + 24);
LABEL_27:
  if (*(v2 + 32) == 1)
  {
    v24 = [HashDigest alloc];
    v25 = *(v2 + 8);
    if (v25)
    {
      v26 = *(v25 + 24);
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_100382A0C(v24, v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v2 + 16);
  *(v2 + 16) = v27;

  LOBYTE(v2) = *(v2 + 32);
  return v2 & 1;
}

uint64_t sub_1002BE498(uint64_t a1, char *a2, unint64_t a3, void *a4)
{
  if (!a1)
  {
    v13 = 0;
    return v13 & 1;
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_8;
  }

  v5 = a2;
  v6 = *(a1 + 8);
  if (!v6 || (v7 = *(v6 + 8), !v7))
  {
    v8 = *(a1 + 40);
    goto LABEL_10;
  }

  v8 = *(a1 + 40);
  v9 = v7 + (v8 / v7) * v7 - *(a1 + 40);
  v10 = a3 - v9;
  if (a3 < v9)
  {
LABEL_10:
    *(a1 + 40) = v8 + a3;
    v12 = *(a1 + 16);
    goto LABEL_11;
  }

  *(a1 + 40) = v8 + v9;
  sub_100382C2C(*(a1 + 16), a2, v9);
  if (sub_1002BE160(a1, a4))
  {
    *(a1 + 40) += v10;
    v12 = *(a1 + 16);
    a2 = &v5[v9];
    LODWORD(a3) = v10;
LABEL_11:
    sub_100382C2C(v12, a2, a3);
    v13 = *(a1 + 32);
    return v13 & 1;
  }

LABEL_8:
  v13 = 0;
  return v13 & 1;
}