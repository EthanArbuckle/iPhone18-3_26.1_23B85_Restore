uint64_t RegisterCacheDeleteAppFreezerService()
{
  if (RegisterCacheDeleteAppFreezerService_onceToken != -1)
  {
    dispatch_once(&RegisterCacheDeleteAppFreezerService_onceToken, &__block_literal_global);
  }

  return _CacheDeleteRegisterInfoCallbacks(@"com.apple.mobile.cache_delete_app_freezer", &__block_literal_global_11, &__block_literal_global_26, 0, &__block_literal_global_30);
}

void maybeReenableAppFreezer()
{
  if (isAppFreezerEnabled())
  {
    return;
  }

  v8 = 0;
  v0 = objc_alloc_init(NSUserDefaults);
  if (fsctl("/private/var", 0x40046818uLL, &v8, 0))
  {
    v1 = *__error();
    v2 = CDGetLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v7 = strerror(v1);
      *buf = 136315394;
      v10 = "/private/var";
      v11 = 2080;
      v12 = v7;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to determine the state of volume %s: %s", buf, 0x16u);
    }

LABEL_5:

    setAppFreezeEnabled(1);
    return;
  }

  v3 = v8 & 0x2204;
  if (v0)
  {
    v4 = [v0 BOOLForKey:@"AppFreezerDisabledByCDKey"];
    if (v3)
    {
LABEL_14:
      if (!v3)
      {
        v2 = CDGetLogHandle();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SHOULD reenable app freezer as freezer was disabled by CD", buf, 2u);
        }

        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = 0;
    if ((v8 & 0x2204) != 0)
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    goto LABEL_14;
  }

  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SHOULD not reenable app freezer as freezer was not disabled by CD", buf, 2u);
  }

LABEL_15:
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SHOULD NOT reenable app freezer", buf, 2u);
  }
}

void sub_1000013D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __RegisterCacheDeleteAppFreezerService_block_invoke_19(uint64_t a1)
{
  result = isAppFreezerEnabled();
  if (result)
  {
    v3 = [NSNumber numberWithUnsignedLongLong:sizeOfFreezeFiles()];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return _objc_release_x1();
  }

  return result;
}

BOOL isAppFreezerEnabled()
{
  v7 = 0;
  v6 = 4;
  if (sysctlbyname("vm.freeze_enabled", &v7, &v6, 0, 0))
  {
    v0 = *__error();
    v1 = CDGetLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = strerror(v0);
      *buf = 136315138;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to determine freezer state: %s", buf, 0xCu);
    }

    v7 = 0;
LABEL_5:
    v2 = CDGetLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "App freezer NOT enabled";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "App freezer enabled";
    goto LABEL_10;
  }

LABEL_11:

  return v7 != 0;
}

uint64_t sizeOfFreezeFiles()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v5 = 0;
  traverse_directory();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1000016B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __RegisterCacheDeleteAppFreezerService_block_invoke_3_27(uint64_t a1)
{
  if (isAppFreezerEnabled())
  {
    *(*(*(a1 + 32) + 8) + 24) = sizeOfFreezeFiles();

    setAppFreezeEnabled(0);
  }
}

void setAppFreezeEnabled(int a1)
{
  HIDWORD(v10) = a1;
  v2 = objc_alloc_init(NSUserDefaults);
  LODWORD(v10) = 0;
  v9 = 4;
  v3 = CDGetLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "Enabling app freezer";
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "Disabling app freezer";
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
LABEL_7:

  if (sysctlbyname("vm.freeze_enabled", &v10, &v9, &v10 + 4, 4uLL))
  {
    v6 = *__error();
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = strerror(v6);
      *buf = 136315138;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to disable app freezing: %s", buf, 0xCu);
    }
  }

  else if (v2)
  {
    [v2 setBool:a1 ^ 1u forKey:{@"AppFreezerDisabledByCDKey", v9, v10}];
  }
}

uint64_t __sizeOfFreezeFiles_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = strlen(v6);
  if (!strncmp(a2, v6, v7))
  {
    *(*(*(a1 + 32) + 8) + 24) += *(a3 + 8);
  }

  return 1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  RegisterCacheManagementAssetsService();
  RegisterCacheDeleteAppFreezerService();
  objc_autoreleasePoolPop(v3);
  dispatch_main();
}

void sub_10000365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void RegisterCacheManagementAssetsService()
{
  if (RegisterCacheManagementAssetsService_once != -1)
  {
    dispatch_once(&RegisterCacheManagementAssetsService_once, &__block_literal_global_114);
  }

  v1 = @"CACHE_DELETE_REQUIRED_ENTITLEMENTS";
  v2 = &off_10000CE10;
  v0 = [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  CacheDeleteRegisterCallback();
}

void __RegisterCacheManagementAssetsService_block_invoke_3(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v1 = qword_100010618;
    qword_100010618 = 0;
  }

  else
  {
    if (*(a1 + 32))
    {
      v2 = qword_100010618 == 0;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v4 = *(a1 + 40);
      qword_100010618 = [CacheDeleteManagedAssets cacheDeleteManagedAssetsWithInfo:"cacheDeleteManagedAssetsWithInfo:atUrgency:" atUrgency:?];

      _objc_release_x1();
    }

    else if (qword_100010618 && *(a1 + 45) == 1)
    {
      v3 = qword_100010618;

      [v3 cancelPurge];
    }
  }
}

void *__RegisterCacheManagementAssetsService_block_invoke_4(uint64_t a1, void *a2)
{
  v72 = +[NSMutableDictionary dictionary];
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_OPERATIONS"];
  v6 = CDGetLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v94 = v4;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "com.apple.mobile.cache_delete_managed_assets Callback ENTRY, info: %@", buf, 0xCu);
  }

  v67 = v4;

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = &CDGetLogHandle_ptr;
    v73 = *v81;
    v70 = v7;
    v69 = a1;
    do
    {
      v11 = 0;
      v71 = v9;
      do
      {
        if (*v81 != v73)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v80 + 1) + 8 * v11);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = v10[96];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v74 = [TestTelemetry testTelemetryWithInfo:v13];
          v15 = [v13 objectForKeyedSubscript:@"CACHE_DELETE_URGENCY"];
          [v15 integerValue];

          v16 = [v13 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
          v17 = evaluateStringProperty();
          v18 = [CacheDeleteVolume volumeWithPath:v17];

          v19 = CDGetLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v18 mountPoint];
            *buf = 67109378;
            *v94 = 496;
            *&v94[4] = 2112;
            *&v94[6] = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%d CacheManagmentAssets volume: %@", buf, 0x12u);
          }

          if ([v12 isEqualToString:@"CACHE_DELETE_PURGE_OPERATION"])
          {
            v21 = [v13 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
            v22 = evaluateNumberProperty();

            v23 = [v18 mountPoint];
            if (hasUserVolume())
            {
              v24 = "/private/var/mobile";
            }

            else
            {
              v24 = "/private/var";
            }

            v25 = [NSString stringWithUTF8String:v24];
            if ([v23 isEqualToString:v25] && v22)
            {
              v26 = [v22 longLongValue];

              if (v26 >= 1)
              {
                v27 = (*(*(v69 + 32) + 16))();
                if (v27)
                {
                  v28 = [v27 purgeAssets:objc_msgSend(v22 testObject:{"unsignedLongLongValue"), v74}];
                  v29 = (*(*(v69 + 32) + 16))();
                  v91[0] = @"CACHE_DELETE_AMOUNT";
                  v30 = [NSNumber numberWithLongLong:v28];
                  v91[1] = @"CACHE_DELETE_VOLUME";
                  v92[0] = v30;
                  v31 = [v27 volume];
                  v92[1] = v31;
                  v10 = &CDGetLogHandle_ptr;
                  v32 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:2];

                  goto LABEL_43;
                }

                v32 = &off_10000CE50;
                v7 = v70;
                v10 = &CDGetLogHandle_ptr;
LABEL_44:

                [v72 setObject:v32 forKeyedSubscript:@"CACHE_DELETE_PURGE_OPERATION"];
LABEL_61:

                v9 = v71;
                goto LABEL_62;
              }
            }

            else
            {
            }

            v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Amount doesn't make sense: %lld", [v22 longLongValue], v67);
            v89 = @"CACHE_DELETE_ERROR";
            v90 = v27;
            v10 = &CDGetLogHandle_ptr;
            v32 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
LABEL_43:
            v7 = v70;
            goto LABEL_44;
          }

          if ([v12 isEqualToString:@"CACHE_DELETE_PURGEABLE_OPERATION"])
          {
            v34 = [v18 mountPoint];
            if (hasUserVolume())
            {
              v35 = "/private/var/mobile";
            }

            else
            {
              v35 = "/private/var";
            }

            v36 = [NSString stringWithUTF8String:v35];
            v37 = [v34 isEqualToString:v36];

            if (v37)
            {
              v38 = (*(*(v69 + 32) + 16))();
              if (v38)
              {
                v79 = 0;
                v68 = v38;
                v39 = [v38 sizeEligibleAsset:&v79];
                v40 = (*(*(v69 + 32) + 16))();
                v41 = CDGetLogHandle();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "purgeableAssets:", buf, 2u);
                }

                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v42 = v39;
                v43 = [v42 countByEnumeratingWithState:&v75 objects:v88 count:16];
                if (v43)
                {
                  v44 = v43;
                  v45 = *v76;
                  do
                  {
                    for (i = 0; i != v44; i = i + 1)
                    {
                      if (*v76 != v45)
                      {
                        objc_enumerationMutation(v42);
                      }

                      v47 = *(*(&v75 + 1) + 8 * i);
                      v48 = CDGetLogHandle();
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *v94 = v47;
                        _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }
                    }

                    v44 = [v42 countByEnumeratingWithState:&v75 objects:v88 count:16];
                  }

                  while (v44);
                }

                v86[0] = @"CACHE_DELETE_AMOUNT";
                v49 = [NSNumber numberWithLongLong:v79];
                v86[1] = @"CACHE_DELETE_VOLUME";
                v87[0] = v49;
                v50 = [v68 volume];
                v87[1] = v50;
                v51 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];

                v10 = &CDGetLogHandle_ptr;
                v52 = v68;
              }

              else
              {
                v52 = 0;
                v51 = &off_10000CE78;
                v10 = &CDGetLogHandle_ptr;
              }
            }

            else
            {
              v54 = CDGetLogHandle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                v55 = [v13 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
                *buf = 67109378;
                *v94 = 544;
                *&v94[4] = 2112;
                *&v94[6] = v55;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%d CacheManagementAssets Purgeable skipping volume: %@", buf, 0x12u);
              }

              v84[0] = @"CACHE_DELETE_AMOUNT";
              v84[1] = @"CACHE_DELETE_VOLUME";
              v85[0] = &off_10000CD98;
              v52 = [v13 objectForKeyedSubscript:?];
              v85[1] = v52;
              v10 = &CDGetLogHandle_ptr;
              v51 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
            }

            [v72 setObject:v51 forKeyedSubscript:@"CACHE_DELETE_PURGEABLE_OPERATION"];
          }

          else
          {
            v10 = &CDGetLogHandle_ptr;
            if ([v12 isEqualToString:@"CACHE_DELETE_PURGE_CANCEL_OPERATION"])
            {
              v53 = (*(*(v69 + 32) + 16))();
              goto LABEL_61;
            }

            if (![v12 isEqualToString:@"CACHE_DELETE_PERIODIC_OPERATION"])
            {
              if ([v12 isEqualToString:@"CACHE_DELETE_ANALYTICS_REPORT"])
              {
                v60 = objc_alloc_init(NSMutableDictionary);
                for (j = 1; j != 5; ++j)
                {
                  v62 = (*(*(v69 + 32) + 16))();
                  v63 = [v62 analytics];
                  [v60 addEntriesFromDictionary:v63];

                  v64 = (*(*(v69 + 32) + 16))();
                }

                [v72 setObject:v60 forKeyedSubscript:@"CACHE_DELETE_ANALYTICS_REPORT"];

                v7 = v70;
                v10 = &CDGetLogHandle_ptr;
              }

              goto LABEL_61;
            }

            v56 = (*(*(v69 + 32) + 16))();
            v57 = v56;
            if (v56)
            {
              [v56 periodic:v74];
              v58 = (*(*(v69 + 32) + 16))();
              v59 = 0;
            }

            else
            {
              v59 = &off_10000CEA0;
            }

            [v72 setObject:v59 forKeyedSubscript:@"CACHE_DELETE_PERIODIC_OPERATION"];
          }

          v7 = v70;
          goto LABEL_61;
        }

        v33 = CDGetLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v94 = v13;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "operation info is not a dictionary: %@", buf, 0xCu);
        }

        [v72 setObject:&off_10000CE28 forKeyedSubscript:@"CACHE_DELETE_SERVICE_REQUEST_OPERATION"];
LABEL_62:

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v65 = [v7 countByEnumeratingWithState:&v80 objects:v95 count:16];
      v9 = v65;
    }

    while (v65);
  }

  return v72;
}