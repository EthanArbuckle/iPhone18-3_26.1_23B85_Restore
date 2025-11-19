void sub_268C(id a1)
{
  qword_BA538 = objc_alloc_init(StorageSettingsWrapper);

  _objc_release_x1();
}

void sub_2FF4(uint64_t a1)
{
  v43 = [NSMutableDictionary dictionaryWithCapacity:10];
  v1 = [NSMutableDictionary dictionaryWithCapacity:4];
  v2 = [NSMutableDictionary dictionaryWithCapacity:4];
  v3 = +[NSFileManager defaultManager];
  v39 = [NSURL fileURLWithPath:@"/System/Library/PreferenceBundles/StoragePlugins/" isDirectory:1];
  v40 = v3;
  [v3 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v4 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v59;
    v7 = &swift_slowDealloc_ptr;
    v42 = *v59;
    do
    {
      v8 = 0;
      v44 = v5;
      do
      {
        if (*v59 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v48 = v8;
        v9 = *(*(&v58 + 1) + 8 * v8);
        v10 = [v7[175] bundleWithURL:v9];
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:@"com.apple.UsageStorageBundle"];

        v13 = v10;
        if ((v12 & 1) == 0)
        {
          v57 = 0;
          v14 = [v10 loadAndReturnError:&v57];
          v15 = v57;
          if (v14)
          {
            v16 = [v13 principalClass];
            if (!v16)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                v18 = [v9 lastPathComponent];
                *buf = 138543362;
                v65 = v18;
                _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: No plugin class found", buf, 0xCu);
                goto LABEL_41;
              }

              goto LABEL_42;
            }

            v17 = objc_alloc_init(v16);
            v18 = v17;
            if (v17)
            {
              v19 = [v17 identifier];
              [v43 setObject:v18 forKey:v19];

              v45 = v15;
              v46 = v13;
              if (objc_opt_respondsToSelector())
              {
                v20 = [v18 documentAppIdentifiers];
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                v21 = [v20 countByEnumeratingWithState:&v53 objects:v63 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v54;
                  do
                  {
                    for (i = 0; i != v22; i = i + 1)
                    {
                      if (*v54 != v23)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(*(&v53 + 1) + 8 * i);
                      v26 = [v1 objectForKey:v25];
                      v27 = v26;
                      if (v26)
                      {
                        [v26 addObject:v18];
                      }

                      else
                      {
                        v28 = [NSMutableArray arrayWithObject:v18];
                        [v1 setObject:v28 forKey:v25];
                      }
                    }

                    v22 = [v20 countByEnumeratingWithState:&v53 objects:v63 count:16];
                  }

                  while (v22);
                }

                v6 = v42;
                v5 = v44;
                v15 = v45;
                v7 = &swift_slowDealloc_ptr;
                v13 = v46;
              }

              if (objc_opt_respondsToSelector())
              {
                v29 = [v18 externDataSizeAppIdentifiers];
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v30 = [v29 countByEnumeratingWithState:&v49 objects:v62 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v50;
                  do
                  {
                    for (j = 0; j != v31; j = j + 1)
                    {
                      if (*v50 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      v34 = *(*(&v49 + 1) + 8 * j);
                      v35 = [v2 objectForKey:v34];
                      v36 = v35;
                      if (v35)
                      {
                        [v35 addObject:v18];
                      }

                      else
                      {
                        v37 = [NSMutableArray arrayWithObject:v18];
                        [v2 setObject:v37 forKey:v34];
                      }
                    }

                    v31 = [v29 countByEnumeratingWithState:&v49 objects:v62 count:16];
                  }

                  while (v31);
                }

                v6 = v42;
                v5 = v44;
                v15 = v45;
                v7 = &swift_slowDealloc_ptr;
                v13 = v46;
              }

LABEL_41:

LABEL_42:
              goto LABEL_43;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              goto LABEL_41;
            }

            v38 = [v9 lastPathComponent];
            *buf = 138543362;
            v65 = v38;
            _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "\x10\x10%{public}@: Could not load plugin object", buf, 0xCu);
          }

          else
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_42;
            }

            v18 = [v9 lastPathComponent];
            v38 = [v15 localizedDescription];
            *buf = 138543618;
            v65 = v18;
            v66 = 2114;
            v67 = v38;
            _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
          }

          goto LABEL_41;
        }

LABEL_43:

        v8 = v48 + 1;
      }

      while ((v48 + 1) != v5);
      v5 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setPluginsByID:v43];
  [*(a1 + 32) setDocPluginsByID:v1];
  [*(a1 + 32) setExternDataPluginsByID:v2];
}

void sub_36CC(uint64_t a1)
{
  v2 = [*(a1 + 32) tips];
  if ([v2 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          [v8 setUiDelegate:*(a1 + 40)];
          v9 = [*(a1 + 32) identifier];
          [v8 setProperty:v9 forKey:@"_stPluginID"];

          v10 = [v8 propertyForKey:@"_stTipID"];

          if (!v10)
          {
            v11 = [v8 title];
            [v8 setProperty:v11 forKey:@"_stTipID"];
          }

          v12 = [v8 propertyForKey:@"_stTipID"];
          v13 = [*(a1 + 40) tipsByID];
          [v13 setObject:v8 forKey:v12];
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    v2 = v14;
  }
}

void sub_3A88(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginsByID];
  v3 = [v2 allValues];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + 1);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) loadTipsOperation:{*(*(&v11 + 1) + 8 * v9), v11}];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 16) addOperations:v4 waitUntilFinished:1];
}

void sub_41AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 delegate];
    [v3 enableOptionForTip:*(a1 + 32)];
  }
}

id sub_42D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = [v2 propertyForKey:@"_stTipID"];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 notifyTipsChanged];
}

id sub_5658(uint64_t a1)
{
  v2 = [*(a1 + 32) storageApp];
  [v2 refreshAppState];

  v3 = *(a1 + 32);

  return [v3 syncUI];
}

id sub_59F8(id result)
{
  v1 = *(result + 4);
  v2 = *(result + 10);
  if (*(v1 + 152) != v2)
  {
    *(v1 + 152) = v2;
    return [*(result + 4) reloadSpecifiers];
  }

  return result;
}

void sub_5C1C(uint64_t a1)
{
  STLog();
  v2 = objc_alloc_init(IXUninstallOptions);
  [v2 setRequestUserConfirmation:1];
  [v2 setShowDemotionOption:0];
  [v2 setShowArchiveOption:0];
  [v2 setWaitForDeletion:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5D14;
  v6[3] = &unk_AA6D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [IXAppInstallCoordinator uninstallAppWithIdentity:v3 options:v2 completion:v6];
}

void sub_5D14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_80264(a1, v5);
    }
  }

  else if (a2 == 1)
  {
    [*(a1 + 40) setUIState:0];
  }

  else
  {
    v6 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5E10;
    block[3] = &unk_AA628;
    block[4] = *(a1 + 40);
    dispatch_after(v6, &_dispatch_main_q, block);
  }

  *(*(a1 + 40) + 244) = 0;
}

void sub_5E10(uint64_t a1)
{
  v3 = [*(a1 + 32) parentViewController];
  v1 = [v3 navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void sub_60C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_80264(a1, v3);
    }
  }

  else
  {
    v4 = (a1 + 32);
    [*(a1 + 32) refreshAppState];
    if (([*(a1 + 32) isDemoted] & 1) == 0)
    {
      do
      {
        usleep(0x7A120u);
        [*v4 refreshAppState];
      }

      while (![*v4 isDemoted]);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_803EC((a1 + 32));
    }
  }

  *(*(a1 + 40) + 244) = 0;
}

void sub_6630(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setUIState:*(a1 + 48)];
    [*(a1 + 32) showAlertForFailedInstallation];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_80500(v3);
    }
  }

  else
  {
    v4 = (a1 + 40);
    [*(a1 + 40) refreshAppState];
    if ([*(a1 + 40) isDemoted])
    {
      do
      {
        usleep(0x7A120u);
        [*v4 refreshAppState];
      }

      while (([*v4 isDemoted] & 1) != 0);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_8059C((a1 + 40));
    }
  }

  [*(a1 + 32) syncUI];
  *(*(a1 + 32) + 244) = 0;
}

void sub_6794(uint64_t a1)
{
  v2 = STLocalizedString(@"“%@” could not be reinstalled properly.");
  v3 = [*(a1 + 32) storageApp];
  v4 = [v3 name];
  v9 = [NSString stringWithFormat:v2, v4];

  v5 = STLocalizedString(@"Installation failed");
  v6 = [UIAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];

  v7 = STLocalizedString(@"OK");
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v8];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_703C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 consumedDate];

  v5 = 32;
  if (!v4)
  {
    v5 = 40;
  }

  [*(a1 + v5) addObject:v3];

  return 1;
}

int64_t sub_70A0(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CacheManagementAsset *)v4 lastViewedDate];
  if (v6)
  {
    v7 = v6;
    v8 = [(CacheManagementAsset *)v5 lastViewedDate];

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v9 = [(CacheManagementAsset *)v5 lastViewedDate];
  if (v9)
  {
    v10 = v9;
    v11 = [(CacheManagementAsset *)v4 lastViewedDate];

    if (!v11)
    {
LABEL_8:
      v13 = 1;
      goto LABEL_10;
    }
  }

  v12 = [(CacheManagementAsset *)v4 size];
  if (v12 <= [(CacheManagementAsset *)v5 size])
  {
    v14 = [(CacheManagementAsset *)v4 size];
    if (v14 >= [(CacheManagementAsset *)v5 size])
    {
      v15 = [(CacheManagementAsset *)v4 displayName];
      v16 = [(CacheManagementAsset *)v5 displayName];
      v13 = [v15 localizedCaseInsensitiveCompare:v16];

      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_6:
  v13 = -1;
LABEL_10:

  return v13;
}

int64_t sub_71CC(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CacheManagementAsset *)v4 size];
  if (v6 <= [(CacheManagementAsset *)v5 size])
  {
    v8 = [(CacheManagementAsset *)v4 size];
    if (v8 >= [(CacheManagementAsset *)v5 size])
    {
      v9 = [(CacheManagementAsset *)v4 displayName];
      v10 = [(CacheManagementAsset *)v5 displayName];
      v7 = [v9 localizedCaseInsensitiveCompare:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_7328(uint64_t a1)
{
  v2 = [*(a1 + 32) hlsSpecifiers];
  v3 = *(a1 + 32);
  v4 = *(v3 + 252);
  *(v3 + 252) = v2;

  v5 = dispatch_time(0, 10000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_73E0;
  block[3] = &unk_AA628;
  block[4] = *(a1 + 32);
  dispatch_after(v5, &_dispatch_main_q, block);
}

void sub_76A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_76BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_76D4(uint64_t a1, void *a2)
{
  v3 = [a2 UIImage];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_7F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_9888(uint64_t a1)
{
  [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"_syncUI:" object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:"_syncUI:" withObject:0];
}

void sub_9D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_80628(v3);
    }
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_9DC0;
    v4[3] = &unk_AA650;
    v5 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v4);
  }
}

id sub_9DC0(uint64_t a1)
{
  [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);

  return [v2 updateHLSSpecs];
}

void sub_9FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  [v2 removeItemAtURL:v3 error:&v7];
  v4 = v7;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_806C4(v4);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A0B0;
    block[3] = &unk_AA650;
    v6 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_A2F4(uint64_t a1)
{
  v2 = +[MPMediaLibrary defaultMediaLibrary];
  v3 = [v2 removeItems:*(a1 + 32)];

  if (v3)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_A3D4;
    v10 = &unk_AA650;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = v4;
    v12 = v5;
    dispatch_async(&_dispatch_main_q, &v7);
    v6 = [STMediaCache sharedCache:v7];
    [v6 reload];
  }
}

void sub_A3D4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeSpecifier:*(*(&v7 + 1) + 8 * v6) animated:{1, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_B378(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id usageBundleForAppIdentifier(void *a1)
{
  v1 = a1;
  v2 = +[StorageSettingsWrapper recommendationsShared];
  v3 = [v2 usageBundleForIdentifier:v1];

  return v3;
}

id STLocalizedString(void *a1)
{
  v1 = qword_BA548;
  v2 = a1;
  if (v1 != -1)
  {
    sub_80760();
  }

  v3 = [qword_BA540 localizedStringForKey:v2 value:v2 table:0];

  return v3;
}

void sub_C5D4(id a1)
{
  qword_BA540 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id STShouldDisplayUnfoundApps()
{
  v0 = CFPreferencesCopyValue(@"displayUnfoundApps", @"com.apple.settings.storage", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v1 = [v0 BOOLValue];

  return v1;
}

id localizedDeviceName()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id sub_C828(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKey:a3];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

int64_t sub_C8B4(id a1, id a2, id a3)
{
  v4 = MPMediaItemPropertyFileSize;
  v5 = a2;
  v6 = [a3 valueForProperty:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &off_AEFB8;
  }

  v9 = v8;

  v10 = [v5 valueForProperty:v4];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &off_AEFB8;
  }

  v12 = v11;

  v13 = [v9 compare:v12];
  return v13;
}

void sub_CACC(id a1)
{
  qword_BA550 = objc_alloc_init(STMediaCache);

  _objc_release_x1();
}

void sub_CB74(id a1)
{
  v11[0] = comAppleiTunesU;
  v10[0] = UsageMediaAudioCourses;
  v10[1] = UsageMediaVideoCourses;
  v1 = [NSArray arrayWithObjects:v10 count:2];
  v12[0] = v1;
  v11[1] = comApplePodcasts;
  v9[0] = UsageMediaAudioPodcasts;
  v9[1] = UsageMediaVideoPodcasts;
  v2 = [NSArray arrayWithObjects:v9 count:2];
  v12[1] = v2;
  v11[2] = comAppleBooks;
  v8 = UsageMediaAudioBooks;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v12[2] = v3;
  v11[3] = comAppleTV;
  v7 = UsageMediaTVShows;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v12[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = qword_BA560;
  qword_BA560 = v5;
}

uint64_t sub_DDDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 mediaCollectionForKey:a2];
  v8 = [*(a1 + 32) mediaCollectionForKey:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      v11 = -1;
    }

    else
    {
      v11 = v8 != 0;
    }
  }

  else
  {
    v10 = [v7 totalSize];
    v11 = v10 < [v8 totalSize];
  }

  return v11;
}

void sub_E66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_E698(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E770;
  block[3] = &unk_AA9C0;
  v9 = a3;
  v6 = v9;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_E770(uint64_t a1)
{
  if (*(a1 + 32) || ([*(a1 + 40) UIImage], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v2 = PSBlankIconImage();
  }

  else
  {
    v2 = [*(a1 + 40) UIImage];
  }

  v5 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setIcon:v5];
}

uint64_t sub_EFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (![v4 length])
  {
LABEL_7:
    [*(a1 + 40) addObject:v3];
    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"com.apple.news"] & 1) == 0)
  {
    v5 = [*(a1 + 32) objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      [v5 addObject:v3];
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [NSMutableArray arrayWithObject:v3];
      [v7 setValue:v8 forKey:v4];
    }

    goto LABEL_7;
  }

LABEL_8:

  return 1;
}

int64_t sub_F0B8(id a1, LSApplicationRecord *a2, LSApplicationRecord *a3)
{
  v4 = a3;
  v5 = [(LSApplicationRecord *)a2 localizedName];
  v6 = [(LSApplicationRecord *)v4 localizedName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

int64_t sub_F128(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(CacheManagementAsset *)v4 consumedDate];
  v8 = [(CacheManagementAsset *)v5 consumedDate];
  v9 = v8;
  if (!v7 || v8)
  {
    if (!v8 || v7)
    {
      v11 = [(CacheManagementAsset *)v4 lastViewedDate];

      v12 = [(CacheManagementAsset *)v5 lastViewedDate];

      if (!v11 || v12)
      {
        if (v12 && !v11)
        {
          v7 = 0;
          v10 = 1;
          v9 = v12;
          goto LABEL_20;
        }

        v13 = [(CacheManagementAsset *)v4 size];
        v14 = [(CacheManagementAsset *)v5 size];
        if (v13 <= v14)
        {
          if (v13 < v14)
          {
            v10 = 1;
          }

          else
          {
            v15 = [(CacheManagementAsset *)v4 displayName];
            v16 = [(CacheManagementAsset *)v5 displayName];
            v10 = [v15 localizedCaseInsensitiveCompare:v16];
          }
        }

        else
        {
          v10 = -1;
        }

        v9 = v12;
      }

      else
      {
        v9 = 0;
        v10 = -1;
      }

      v7 = v11;
      goto LABEL_20;
    }

    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_20:

  objc_autoreleasePoolPop(v6);
  return v10;
}

int64_t sub_F298(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(CacheManagementAsset *)v4 consumedDate];
  v8 = [(CacheManagementAsset *)v5 consumedDate];
  v9 = v8;
  if (!v7 || v8)
  {
    if (!v8 || v7)
    {
      v11 = [(CacheManagementAsset *)v4 lastViewedDate];

      v12 = [(CacheManagementAsset *)v5 lastViewedDate];

      if (!v11 || v12)
      {
        if (v12 && !v11)
        {
          v7 = 0;
          v10 = 1;
          v9 = v12;
          goto LABEL_20;
        }

        v13 = [(CacheManagementAsset *)v4 size];
        v14 = [(CacheManagementAsset *)v5 size];
        if (v13 <= v14)
        {
          if (v13 < v14)
          {
            v10 = 1;
          }

          else
          {
            v15 = [(CacheManagementAsset *)v4 displayName];
            v16 = [(CacheManagementAsset *)v5 displayName];
            v10 = [v15 localizedCaseInsensitiveCompare:v16];
          }
        }

        else
        {
          v10 = -1;
        }

        v9 = v12;
      }

      else
      {
        v9 = 0;
        v10 = -1;
      }

      v7 = v11;
      goto LABEL_20;
    }

    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_20:

  objc_autoreleasePoolPop(v6);
  return v10;
}

void sub_F4C8(uint64_t a1)
{
  v2 = [*(a1 + 32) hlsSpecifiers];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  v5 = dispatch_time(0, 10000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_F588;
  v6[3] = &unk_AAA90;
  v7 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  dispatch_after(v5, &_dispatch_main_q, v6);
}

id sub_F588(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 setSpecifiers:v2[18]];
  }

  v3 = v2[18];
  return [v2 updateSpecifiers:*(v2 + OBJC_IVAR___PSListController__specifiers) withSpecifiers:?];
}

void sub_F82C(uint64_t a1)
{
  v2 = [*(a1 + 32) propertyForKey:@"stCacheAsset"];
  if (v2)
  {
    v3 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    CacheManagementRemove();
  }
}

void sub_F8D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    v6 = [v4 description];
    NSLog(@"Error %d removing video asset: %@", v5, v6);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F9A4;
    block[3] = &unk_AA650;
    v8 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_F9A4(uint64_t a1)
{
  [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);

  return [v2 updateHLSSpecs];
}

void sub_1001C(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailData];
  if (v2 && ([UIImage imageWithData:v2], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = 0;
  }

  else
  {
    v4 = [UIImage systemImageNamed:@"film"];
    v5 = +[UIColor systemGray3Color];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1013C;
  block[3] = &unk_AA8A0;
  block[4] = *(a1 + 40);
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1013C(uint64_t a1)
{
  [*(a1 + 32) setTintColor:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setIcon:v2];
}

void sub_1017C(uint64_t a1)
{
  v2 = [*(a1 + 32) size];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10208;
  v3[3] = &unk_AAAC0;
  v3[4] = *(a1 + 40);
  v3[5] = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10980(uint64_t a1)
{
  v2 = [*(a1 + 32) artwork];
  v3 = v2;
  if (v2 && ([v2 imageWithSize:{56.0, 56.0}], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) mediaType];
    v7 = @"book";
    if ((v6 & 4) == 0)
    {
      v7 = @"music";
    }

    v8 = @"podcasts";
    if ((v6 & 0xA) != 0)
    {
      v7 = @"podcasts";
    }

    if (!v6)
    {
      v7 = 0;
    }

    if ((v6 & 0x1400) == 0)
    {
      v8 = @"film";
    }

    if ((v6 & 0xFF00) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v5 = +[UIColor systemGray3Color];
    v4 = [UIImage _systemImageNamed:v9];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10AF4;
  block[3] = &unk_AA8A0;
  block[4] = *(a1 + 40);
  v13 = v5;
  v14 = v4;
  v10 = v4;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10AF4(uint64_t a1)
{
  [*(a1 + 32) setTintColor:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setIcon:v2];
}

void sub_10B34(id a1)
{
  qword_BA570 = STLocalizedString(@"Last accessed: %@");

  _objc_release_x1();
}

void sub_1147C(id a1)
{
  v1 = NSStringFromSelector("documentSize");
  v2 = [NSSortDescriptor sortDescriptorWithKey:v1 ascending:0];
  v3 = NSStringFromSelector("displayName");
  v4 = [NSSortDescriptor sortDescriptorWithKey:v3 ascending:1 selector:"localizedCaseInsensitiveCompare:", v2];
  v9[1] = v4;
  v5 = NSStringFromSelector("itemIdentifier");
  v6 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1];
  v9[2] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:3];
  v8 = qword_BA588;
  qword_BA588 = v7;
}

void sub_11A44(uint64_t a1)
{
  v3 = +[FPItemManager defaultManager];
  v2 = [[FPDeleteOperation alloc] initWithItems:*(a1 + 32)];
  [v3 scheduleAction:v2];
}

id sub_11E0C(uint64_t a1)
{
  [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"reloadSpecifiers" object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:"reloadSpecifiers" withObject:0 afterDelay:1.0];
}

uint64_t sub_12C58()
{
  v1 = v0;
  v2 = sub_147EC(&qword_B7A40, &qword_88398);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v19 - v4;
  v6 = sub_147EC(&qword_B7A48, &qword_883A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v19 - v8;
  if (!*v0)
  {
    v18 = *(v0 + 8);
    type metadata accessor for StorageShared();
    sub_14B3C(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
    return result;
  }

  v10 = *v0;
  v11 = *(sub_254C4() + 16);

  if (v11)
  {
    v12 = v10[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

    if (v12 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_80C68();

      v14 = v19[0];
      v13 = v19[1];

      v15 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v15 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v15)
      {
        *v9 = sub_81008();
        *(v9 + 1) = 0;
        v9[16] = 1;
        v16 = sub_147EC(&qword_B7A60, &qword_883F0);
        sub_12F80(v1, &v9[*(v16 + 44)]);
        sub_14F6C(v9, v5, &qword_B7A48, &qword_883A0);
        swift_storeEnumTagMultiPayload();
        sub_14F24(&qword_B7A58, &qword_B7A48, &qword_883A0);
        sub_810A8();
        return sub_14FD4(v9, &qword_B7A48, &qword_883A0);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

LABEL_10:
  swift_storeEnumTagMultiPayload();
  sub_14F24(&qword_B7A58, &qword_B7A48, &qword_883A0);
  return sub_810A8();
}

uint64_t sub_12F80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = sub_80E18();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_147EC(&qword_B7A68, &qword_883F8);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_147EC(&qword_B7A70, &qword_88400);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = sub_147EC(&qword_B7A78, &qword_88408);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v37 - v22;
  v24 = sub_818E8();
  v25 = sub_818E8();
  v26 = STLocalizedString(v24);

  v27 = sub_81928();
  v29 = v28;

  v48 = v27;
  v49 = v29;
  v43 = *(a1 + 16);
  LOBYTE(v44) = *(a1 + 32);
  sub_147EC(&qword_B7A80, &qword_88410);
  sub_815D8();
  v43 = v46;
  LOBYTE(v44) = v47;
  sub_147EC(&qword_B7A88, &qword_88418);
  sub_14E7C();
  sub_14F24(&qword_B7A98, &qword_B7A88, &qword_88418);
  sub_14ED0();
  sub_81588();
  sub_80E08();
  v30 = sub_14F24(&qword_B7AA8, &qword_B7A68, &qword_883F8);
  v31 = v40;
  sub_81308();
  (*(v41 + 8))(v7, v31);
  (*(v37 + 8))(v11, v8);
  *&v43 = v8;
  *(&v43 + 1) = v31;
  v44 = v30;
  v45 = &protocol witness table for MenuPickerStyle;
  swift_getOpaqueTypeConformance2();
  v32 = v38;
  sub_81398();
  (*(v39 + 8))(v16, v32);
  sub_14F6C(v23, v21, &qword_B7A78, &qword_88408);
  v33 = v42;
  *v42 = 0;
  *(v33 + 8) = 1;
  v34 = v33;
  v35 = sub_147EC(&qword_B7AB0, &qword_88420);
  sub_14F6C(v21, v34 + *(v35 + 48), &qword_B7A78, &qword_88408);
  sub_14FD4(v23, &qword_B7A78, &qword_88408);
  return sub_14FD4(v21, &qword_B7A78, &qword_88408);
}

uint64_t sub_1349C@<X0>(char *a1@<X8>)
{
  v72 = a1;
  v1 = (*(*(sub_147EC(&qword_B78C8, &unk_89660) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v68 - v2;
  v4 = sub_147EC(&qword_B7AB8, &qword_88428);
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = (__chkstk_darwin)();
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v70 = &v68 - v9;
  v10 = __chkstk_darwin(v8);
  v75 = &v68 - v11;
  v12 = __chkstk_darwin(v10);
  v69 = &v68 - v13;
  v14 = __chkstk_darwin(v12);
  v74 = &v68 - v15;
  __chkstk_darwin(v14);
  v17 = &v68 - v16;
  v18 = sub_818E8();
  v19 = sub_818E8();
  v20 = STLocalizedString(v18);

  v21 = sub_81928();
  v23 = v22;

  v76 = v21;
  v77 = v23;
  sub_14ED0();
  v24 = sub_81288();
  v26 = v25;
  v76 = v24;
  v77 = v25;
  v28 = v27 & 1;
  v78 = v27 & 1;
  v79 = v29;
  sub_81398();
  sub_15034(v24, v26, v28);

  v73 = v17;
  sub_15044(v3, v17);
  v30 = sub_147EC(&qword_B78D0, &qword_87E80);
  *&v17[*(v30 + 36)] = 256;
  v31 = sub_818E8();
  v32 = sub_818E8();
  v33 = STLocalizedString(v31);

  v34 = sub_81928();
  v36 = v35;

  v76 = v34;
  v77 = v36;
  v37 = sub_81288();
  v39 = v38;
  v76 = v37;
  v77 = v38;
  LOBYTE(v17) = v40 & 1;
  v78 = v40 & 1;
  v79 = v41;
  sub_81398();
  sub_15034(v37, v39, v17);

  v42 = v74;
  sub_15044(v3, v74);
  *(v42 + *(v30 + 36)) = 257;
  v43 = sub_818E8();
  v44 = sub_818E8();
  v45 = STLocalizedString(v43);

  v46 = sub_81928();
  v48 = v47;

  v76 = v46;
  v77 = v48;
  v49 = sub_81288();
  v51 = v50;
  v76 = v49;
  v77 = v50;
  v53 = v52 & 1;
  v78 = v52 & 1;
  v79 = v54;
  sub_81398();
  sub_15034(v49, v51, v53);

  v55 = v3;
  v56 = v69;
  sub_15044(v55, v69);
  *(v56 + *(v30 + 36)) = 258;
  v57 = v68;
  v58 = *(v68 + 16);
  v59 = v75;
  v60 = v4;
  v58(v75, v73, v4);
  v61 = v70;
  v62 = v74;
  v58(v70, v74, v60);
  v63 = v71;
  v58(v71, v56, v60);
  v64 = v72;
  v58(v72, v59, v60);
  v65 = sub_147EC(&qword_B7AC0, &qword_88430);
  v58(&v64[*(v65 + 48)], v61, v60);
  v58(&v64[*(v65 + 64)], v63, v60);
  v66 = *(v57 + 8);
  v66(v56, v60);
  v66(v62, v60);
  v66(v73, v60);
  v66(v63, v60);
  v66(v61, v60);
  return (v66)(v75, v60);
}

uint64_t sub_13B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_7FD88(2, 26, 0, 0))
  {
    sub_81188();

    return sub_80E28();
  }

  else
  {
    sub_80E38();
    swift_getWitnessTable();
    sub_81108();
    sub_80E28();
    sub_81B98();
    swift_getWitnessTable();
    sub_80E38();
    swift_getWitnessTable();
    sub_81108();
    return sub_80E28();
  }
}

uint64_t sub_13C68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_7FD88(2, 26, 0, 0))
  {
    sub_81188();
    sub_80E28();
  }

  else
  {
    sub_80E38();
    swift_getWitnessTable();
    sub_81108();
    sub_80E28();
    sub_81B98();
    swift_getWitnessTable();
    sub_80E38();
    swift_getWitnessTable();
    sub_81108();
    sub_80E28();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_13E8C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_12C58();
}

uint64_t sub_13ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_7FD88(2, 26, 4, 0))
  {
    v32 = a6;
    v33 = a7;
    v34 = v8;
    v31 = sub_80DF8();
    v17 = *(v31 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin(v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_81D08(17);

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      v38._countAndFlagsBits = a3;
      v38._object = a4;
      sub_81978(v38);
      v39._countAndFlagsBits = 58;
      v39._object = 0xE100000000000000;
      sub_81978(v39);
      v35 = a5;
      v40._countAndFlagsBits = sub_81DF8();
      sub_81978(v40);
    }

    v25 = sub_81AB8();
    v26 = *(*(v25 - 8) + 64);
    __chkstk_darwin(v25);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_80DE8();
    sub_149DC(v34, a8);
    v29 = sub_147EC(&qword_B78F0, &qword_87E90);
    return (*(v17 + 32))(a8 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a8 + *(sub_147EC(&qword_B78F8, &qword_87E98) + 36));
    v22 = *(sub_80DA8() + 20);
    v23 = sub_81AB8();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;

    return sub_149DC(v8, a8);
  }
}

uint64_t sub_14258(uint64_t a1, id *a2)
{
  result = sub_81908();
  *a2 = 0;
  return result;
}

uint64_t sub_142D0(uint64_t a1, id *a2)
{
  v3 = sub_81918();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_14350@<X0>(void *a1@<X8>)
{
  sub_81928();
  v2 = sub_818E8();

  *a1 = v2;
  return result;
}

BOOL sub_143A0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_14410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_81928();
  v6 = v5;
  if (v4 == sub_81928() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_81E18();
  }

  return v9 & 1;
}

void *sub_14498@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_144FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_818E8();

  *a2 = v5;
  return result;
}

uint64_t sub_14544@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_81928();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_14570(uint64_t a1)
{
  v2 = sub_14B3C(&qword_B7A10, type metadata accessor for FPProviderDomainID);
  v3 = sub_14B3C(&qword_B7A18, type metadata accessor for FPProviderDomainID);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1462C(uint64_t a1)
{
  v2 = sub_14B3C(&qword_B7A20, type metadata accessor for NSFileProviderItemIdentifier);
  v3 = sub_14B3C(&qword_B7A28, type metadata accessor for NSFileProviderItemIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_146E8()
{
  v1 = *v0;
  sub_81928();
  v2 = sub_819A8();

  return v2;
}

uint64_t sub_14724()
{
  v1 = *v0;
  sub_81928();
  sub_81968();
}

Swift::Int sub_14778()
{
  v1 = *v0;
  sub_81928();
  sub_81E78();
  sub_81968();
  v2 = sub_81EB8();

  return v2;
}

uint64_t sub_147EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_14834(uint64_t *a1)
{
  v1 = *a1;
  if (sub_7FD88(2, 26, 4, 0))
  {
    sub_80DF8();
  }

  else
  {
    sub_80DA8();
  }

  return sub_80E28();
}

uint64_t sub_1489C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_7FD88(2, 26, 4, 0))
  {
    sub_80DF8();
    sub_80E28();
    sub_14990();
  }

  else
  {
    sub_80DA8();
    sub_80E28();
    sub_14B3C(&qword_B78E0, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_14990()
{
  result = qword_B78D8;
  if (!qword_B78D8)
  {
    sub_80DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B78D8);
  }

  return result;
}

uint64_t sub_149DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B78E8, &qword_87E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for ApplicationSize(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ApplicationSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_14B3C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_14D14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_14D60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_14D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_14E2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_14E7C()
{
  result = qword_B7A90;
  if (!qword_B7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7A90);
  }

  return result;
}

unint64_t sub_14ED0()
{
  result = qword_B7AA0;
  if (!qword_B7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7AA0);
  }

  return result;
}

uint64_t sub_14F24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_14E2C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_14F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_147EC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_14FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_147EC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_15034(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_15044(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B78C8, &unk_89660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_150B8()
{
  result = qword_B7AC8;
  if (!qword_B7AC8)
  {
    sub_14E2C(&qword_B7AD0, qword_88438);
    sub_14F24(&qword_B7A58, &qword_B7A48, &qword_883A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7AC8);
  }

  return result;
}

uint64_t sub_151B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_15210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1528C(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81048();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_147EC(&qword_B7B20, &qword_88530);
  sub_152F4(a1, (a2 + *(v4 + 44)));
}

void sub_152F4(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = sub_81758();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v39 - v7;
  v8 = sub_817E8();
  v9 = *(*(v8 - 1) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_81778();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  type metadata accessor for StorageShared();
  sub_1635C();
  v22 = sub_80E68();
  v39 = v23;
  v40 = v22;
  if (a1)
  {
    v24 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v24;
    sub_80C68();

    v26 = *&v14[v8[7]];
    sub_1642C(v14, &type metadata accessor for Volume);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_80C68();

    v27 = *&v12[v8[7]];
    v28 = *&v12[v8[8]];
    v29 = v27 - v28;
    if (__OFSUB__(v27, v28))
    {
      __break(1u);
    }

    else
    {
      v30 = *&v12[v8[9]];
      sub_1642C(v12, &type metadata accessor for Volume);
      if (!__OFSUB__(v29, v30))
      {
        sub_81768();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_80C68();

        v31 = *&v14[v8[7]];
        sub_1642C(v14, &type metadata accessor for Volume);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_80C68();

        v32 = v41;
        sub_81748();
        sub_163C4(v21, v19, &type metadata accessor for StorageGaugeView);
        v33 = v43;
        sub_163C4(v32, v43, &type metadata accessor for StorageGaugeLegendView);
        v34 = v42;
        v35 = v39;
        v36 = v40;
        *v42 = v40;
        v34[1] = v35;
        v37 = sub_147EC(&qword_B7B28, &qword_885C8);
        sub_163C4(v19, v34 + *(v37 + 48), &type metadata accessor for StorageGaugeView);
        sub_163C4(v33, v34 + *(v37 + 64), &type metadata accessor for StorageGaugeLegendView);
        v38 = v36;
        sub_1642C(v32, &type metadata accessor for StorageGaugeLegendView);
        sub_1642C(v21, &type metadata accessor for StorageGaugeView);
        sub_1642C(v33, &type metadata accessor for StorageGaugeLegendView);
        sub_1642C(v19, &type metadata accessor for StorageGaugeView);

        return;
      }
    }

    __break(1u);
  }

  sub_80E58();
  __break(1u);
}

uint64_t sub_15800@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_147EC(&qword_B7B08, &qword_884F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v25 - v4;
  v6 = sub_147EC(&qword_B86B0, &qword_88500);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = sub_147EC(&qword_B7AF8, &qword_884F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v25 - v17;
  if (_IsInternalInstall(v16))
  {
    *v18 = sub_81008();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v19 = *(sub_147EC(&qword_B7B10, &qword_88508) + 44);
    v25[1] = a1;
    v20 = &v18[v19];
    sub_81018();
    sub_81558();
    v25[0] = v2;
    v21 = v7[2];
    v21(v11, v13, v6);
    *v20 = 0;
    v20[8] = 1;
    v22 = sub_147EC(&qword_B7B18, &unk_88510);
    v21(&v20[*(v22 + 48)], v11, v6);
    v23 = v7[1];
    v23(v13, v6);
    v23(v11, v6);
    sub_160AC(v18, v5);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B7AF0, &qword_B7AF8, &qword_884F0);
    sub_810A8();
    return sub_1611C(v18);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B7AF0, &qword_B7AF8, &qword_884F0);
    return sub_810A8();
  }
}

uint64_t sub_15B70()
{
  v0 = sub_147EC(&unk_B8240, &qword_88F50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_81AB8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_81A88();
  v5 = sub_81A78();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_68AE4(0, 0, v3, &unk_88528, v6);
}

uint64_t sub_15C7C()
{
  v0[2] = sub_81A88();
  v0[3] = sub_81A78();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_15D28;

  return sub_591D0(0, 1);
}

uint64_t sub_15D28()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_81A58();

  return _swift_task_switch(sub_15E64, v5, v4);
}

uint64_t sub_15E64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_15EC4()
{
  v1 = sub_147EC(&qword_B7AD8, &qword_884E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v6 = *v0;
  sub_15800(&v5[-v3]);
  sub_147EC(&qword_B7AE0, &qword_884E8);
  sub_15FF4();
  sub_14F24(&qword_B7B00, &qword_B7AE0, &qword_884E8);
  return sub_81618();
}

unint64_t sub_15FF4()
{
  result = qword_B7AE8;
  if (!qword_B7AE8)
  {
    sub_14E2C(&qword_B7AD8, &qword_884E0);
    sub_14F24(&qword_B7AF0, &qword_B7AF8, &qword_884F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7AE8);
  }

  return result;
}

uint64_t sub_160AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B7AF8, &qword_884F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1611C(uint64_t a1)
{
  v2 = sub_147EC(&qword_B7AF8, &qword_884F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16184()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_161BC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_16268;

  return sub_15C7C();
}

uint64_t sub_16268()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1635C()
{
  result = qword_B7A50;
  if (!qword_B7A50)
  {
    type metadata accessor for StorageShared();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7A50);
  }

  return result;
}

uint64_t sub_163C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1642C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_16490()
{
  result = qword_B7B30;
  if (!qword_B7B30)
  {
    sub_14E2C(&qword_B7B38, &unk_885D0);
    sub_15FF4();
    sub_14F24(&qword_B7B00, &qword_B7AE0, &qword_884E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7B30);
  }

  return result;
}

__n128 sub_16554(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_16568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_165B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B7B40, &qword_88688);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = sub_147EC(&qword_B7B48, &qword_88690);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  if (a3)
  {
    *v9 = sub_81008();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v14 = sub_147EC(&qword_B7B50, &qword_88698);
    sub_16844(a1, a2, a3, &v9[*(v14 + 44)]);
    sub_14F6C(v9, v13, &qword_B7B40, &qword_88688);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B7B58, &qword_B7B40, &qword_88688);
    sub_810A8();
    return sub_14FD4(v9, &qword_B7B40, &qword_88688);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B7B58, &qword_B7B40, &qword_88688);
    return sub_810A8();
  }
}

uint64_t sub_16844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v36 = sub_147EC(&qword_B7B60, &unk_886A0);
  v7 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v9 = &v34 - v8;
  v10 = sub_147EC(&qword_B7B68, &unk_8A470);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_147EC(&qword_B7B70, &qword_886B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v38 = a1;
  v39 = a2;
  sub_14ED0();

  v22 = sub_81288();
  v24 = v23;
  v35 = v25;
  v37 = v26;
  if (v34 == 0x8000000000000000)
  {
    sub_80D28();
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
    sub_810A8();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v38 = sub_81E68();
    v39 = v27;
    *v9 = sub_81288();
    *(v9 + 1) = v28;
    v9[16] = v29 & 1;
    *(v9 + 3) = v30;
    swift_storeEnumTagMultiPayload();
    sub_14F24(&qword_B8760, &qword_B7B68, &unk_8A470);
    sub_810A8();
  }

  sub_14F6C(v21, v19, &qword_B7B70, &qword_886B0);
  *a4 = v22;
  *(a4 + 8) = v24;
  v31 = v35 & 1;
  *(a4 + 16) = v35 & 1;
  *(a4 + 24) = v37;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v32 = sub_147EC(&qword_B7B78, &qword_886B8);
  sub_14F6C(v19, a4 + *(v32 + 64), &qword_B7B70, &qword_886B0);
  sub_16C28(v22, v24, v31);

  sub_14FD4(v21, &qword_B7B70, &qword_886B0);
  sub_14FD4(v19, &qword_B7B70, &qword_886B0);
  sub_15034(v22, v24, v31);
}

uint64_t sub_16C28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_16C3C()
{
  result = qword_B7B80;
  if (!qword_B7B80)
  {
    sub_14E2C(&qword_B7B88, &unk_886C0);
    sub_14F24(&qword_B7B58, &qword_B7B40, &qword_88688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7B80);
  }

  return result;
}

uint64_t sub_16D00(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_16D18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_16D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_16D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_16DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_16E48()
{
  result = qword_B7B90;
  if (!qword_B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7B90);
  }

  return result;
}

void sub_16E9C(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 0;
    }

    sub_81E88(v4);
  }

  else
  {
    sub_81E88(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    sub_81EA8(v5);
  }
}

Swift::Int sub_16F00(Swift::UInt64 a1, char a2)
{
  sub_81E78();
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 0;
    }

    sub_81E88(v4);
  }

  else
  {
    sub_81E88(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = 0;
    }

    sub_81EA8(v5);
  }

  return sub_81EB8();
}

BOOL sub_16F8C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v6 = *a1;
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v5 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = 0;
      }

      return v9 == 1;
    }

    v5 = *&v3 == 1;
  }

  if (v5)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

Swift::Int sub_17018()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_81E78();
  if (v2 == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 0;
    }

    sub_81E88(v3);
  }

  else
  {
    sub_81E88(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    sub_81EA8(v4);
  }

  return sub_81EB8();
}

uint64_t sub_170A4()
{
  if (v0[13] < 1001 || (*v0 == 0x722D6F742D706174 ? (v1 = v0[1] == 0xEC00000072616461) : (v1 = 0), v1 || (sub_81E18() & 1) != 0))
  {
    v2 = v0[11];
    v3 = v0[12];
  }

  else
  {
    v5 = sub_818E8();
    v6 = sub_818E8();
    v7 = STLocalizedString(v5);

    sub_81928();
    sub_147EC(&qword_B7CB0, &qword_88A40);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_886D0;
    v9 = sub_81E68();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_1A83C();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v13 = sub_81938();
    v15 = v14;

    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_886E0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v12;
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    v18 = v0[11];
    v17 = v0[12];
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v12;
    *(v16 + 72) = v18;
    *(v16 + 80) = v17;

    return sub_81938();
  }

  return v2;
}

uint64_t sub_17290@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[19];
  if (v3)
  {
    v4 = v1[19];
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      v8 = v1[2];
      v9 = v1[3];
      v10 = sub_818E8();
      v11 = usageBundleForAppIdentifier(v10);

      if (v11)
      {
        v12 = [objc_allocWithZone(PSSpecifier) init];
        sub_147EC(&qword_B7C98, &qword_88A30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_886D0;
        v28 = sub_81928();
        v29 = v14;
        sub_81CB8();
        *(inited + 96) = sub_1A7F4(0, &unk_B7CA0, PSUsageBundleApp_ptr);
        *(inited + 72) = v11;
        v15 = v11;
        sub_3A894(inited);
        swift_setDeallocating();
        sub_14FD4(inited + 32, &unk_B83E0, &qword_88A38);
        isa = sub_81828().super.isa;

        [v12 setProperties:{isa, v28, v29}];

        [v7 setSpecifier:v12];
      }

      sub_147EC(&qword_B7C90, &qword_88A28);
      if (sub_81948() == 0xD000000000000024 && 0x8000000000094560 == v17)
      {
      }

      else
      {
        v22 = sub_81E18();

        if ((v22 & 1) == 0)
        {
          v23 = [v7 navigationItem];
          v24 = v1[4];
          v25 = v1[5];
          v26 = sub_818E8();
          [v23 setTitle:v26];
        }
      }

      sub_80AF8();
      v27 = sub_80B08();
      return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
    }

    else
    {

      v21 = sub_80B08();
      return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
    }
  }

  else
  {
    v18 = sub_80B08();
    v19 = *(*(v18 - 8) + 56);

    return v19(a1, 1, 1, v18);
  }
}

void sub_17610()
{
  v1 = *v0;
  v2 = v0[1];
  sub_81968();
  v3 = v0[2];
  v4 = v0[3];
  sub_81968();
  v5 = v0[22];
  if (v0[23])
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 0;
    }

    sub_81E88(v6);
  }

  else
  {
    sub_81E88(1uLL);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    sub_81EA8(v7);
  }

  sub_81E98(v0[26] & 1);
}

uint64_t sub_176A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1773C;

  return sub_591D0(a1, 0);
}

uint64_t sub_1773C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2(0, 1);
}

void sub_17838(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B7B98, &qword_88938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_19638;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17A80;
  aBlock[3] = &unk_AB158;
  v13 = _Block_copy(aBlock);

  [a2 startWithCompletionBlock:v13];
  _Block_release(v13);
}

uint64_t sub_179FC(int a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = [a2 purgeableSize];
    swift_beginAccess();
    *(a4 + 16) = v5;
  }

  sub_147EC(&qword_B7B98, &qword_88938);
  return sub_81A68();
}

void sub_17A80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a3;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_17B30()
{
  *(v0 + 32) = objc_opt_self();
  sub_81A88();
  *(v0 + 40) = sub_81A78();
  v2 = sub_81A58();

  return _swift_task_switch(sub_17BD4, v2, v1);
}

uint64_t sub_17BD4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  *(v0 + 25) = [v2 isRunningInStoreDemoMode];

  return _swift_task_switch(sub_17C50, 0, 0);
}

uint64_t sub_17C50()
{
  v1 = *(v0 + 25);
  v2 = [objc_allocWithZone(ASDPushCacheDeleteUpdateRequest) init];
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_17D6C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000016, 0x8000000000094160, sub_196E8, v3, &type metadata for RecommendationStatus);
}

uint64_t sub_17D6C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_17E84, 0, 0);
}

uint64_t sub_17E84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void sub_17EEC(uint64_t a1, void *a2, char a3)
{
  v6 = sub_147EC(&qword_B7BA0, &unk_88940);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_19788;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_182D4;
  aBlock[3] = &unk_AB1A8;
  v13 = _Block_copy(aBlock);

  [a2 startWithCompletionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_180A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v3 = sub_80BC8();
    sub_19818(v3, qword_BCF70);
    swift_errorRetain();
    v4 = sub_80BB8();
    v5 = sub_81B18();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&dword_0, v4, v5, "Unable to enable auto-offload with error %@", v6, 0xCu);
      sub_14FD4(v7, &qword_B7BA8, &qword_8A5F0);
    }

    else
    {
    }
  }

  else if ((a3 & 1) == 0)
  {
    v9 = sub_818E8();
    v10 = kCFBooleanTrue;
    v11 = sub_818E8();
    CFPreferencesSetAppValue(v9, v10, v11);
  }

  sub_147EC(&qword_B7BA0, &unk_88940);
  return sub_81A68();
}

void sub_182D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1836C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_18464;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x287069547370616DLL, 0xEE00293A6D6F7266, sub_1A598, v2, &type metadata for RecommendationStatus);
}

uint64_t sub_18464()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1857C, 0, 0);
}

void sub_18598(uint64_t a1, void *a2)
{
  v4 = sub_147EC(&qword_B7BA0, &unk_88940);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1A634;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18918;
  aBlock[3] = &unk_AB248;
  v11 = _Block_copy(aBlock);

  [a2 enableWithCompletionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_18748(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v1 = sub_80BC8();
    sub_19818(v1, qword_BCF70);
    swift_errorRetain();
    v2 = sub_80BB8();
    v3 = sub_81B18();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_0, v2, v3, "Unable to enable messages recommendation with error %@", v4, 0xCu);
      sub_14FD4(v5, &qword_B7BA8, &qword_8A5F0);
    }

    sub_147EC(&qword_B7BA0, &unk_88940);
    sub_81A68();
  }

  else
  {
    sub_147EC(&qword_B7BA0, &unk_88940);
    return sub_81A68();
  }
}

void sub_18918(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_18984@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_18990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 208);
  v6 = *(a2 + 104);
  v7 = *(a2 + 176);
  v8 = *(a2 + 184);
  v9 = *(a2 + 208);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_81E18() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v3 == 0.0)
    {
      v10 = *&v7 == 0;
    }

    else
    {
      if (*&v3 != 1)
      {
        if (*&v7 > 1uLL)
        {
          v13 = v8;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_21;
      }

      v10 = *&v7 == 1;
    }

    if (v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

LABEL_21:
    if (v13 != 1 || v2 != v6)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  result = 0;
  if ((v8 & 1) == 0 && v3 == v7 && v2 == v6)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

Swift::Int sub_18A7C()
{
  sub_81E78();
  sub_17610();
  return sub_81EB8();
}

Swift::Int sub_18AC0()
{
  sub_81E78();
  sub_17610();
  return sub_81EB8();
}

double sub_18B08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_81D08(17);
  v4 = sub_81E68();
  v6 = v5;

  v12._countAndFlagsBits = 0x7473797320666F20;
  v12._object = 0xEF61746164206D65;
  sub_81978(v12);
  v7 = v6;
  sub_81D08(36);

  v13._countAndFlagsBits = sub_81E68();
  sub_81978(v13);

  v14._countAndFlagsBits = 0xD000000000000019;
  v14._object = 0x8000000000094310;
  sub_81978(v14);
  if (a1 <= 20000000000)
  {
    v8 = 0x7265776F6CLL;
  }

  else
  {
    v8 = 0x726568676968;
  }

  if (a1 <= 20000000000)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  v15._countAndFlagsBits = v8;
  v15._object = v9;
  sub_81978(v15);

  v16._countAndFlagsBits = 0xD000000000000024;
  v16._object = 0x8000000000094330;
  sub_81978(v16);

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  strcpy(a2, "tap-to-radar");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  *(a2 + 16) = 0xD000000000000014;
  *(a2 + 24) = 0x8000000000094360;
  *(a2 + 32) = v4;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0xD000000000000014;
  *(a2 + 56) = 0x8000000000094360;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xD000000000000014;
  *(a2 + 80) = 0x8000000000094360;
  *(a2 + 88) = 0x6576616820756F59;
  *(a2 + 96) = 0xE900000000000020;
  *(a2 + 104) = 0x7FFFFFFFFFFFFFFFLL;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = xmmword_886F0;
  result = -1.68324421e212;
  *(a2 + 168) = xmmword_88700;
  *(a2 + 184) = 1;
  *(a2 + 192) = &unk_88958;
  *(a2 + 200) = v10;
  *(a2 + 208) = 0;
  return result;
}

uint64_t sub_18D9C()
{
  v1 = swift_allocObject();
  v0[6] = v1;
  *(v1 + 16) = 50;
  v2 = objc_allocWithZone(ASDPurgeableAppRequestOptions);
  v3 = sub_818E8();
  v4 = [v2 initWithVolume:v3 urgency:3];
  v0[7] = v4;

  if (v4)
  {
    v5 = [objc_allocWithZone(ASDPurgeableAppRequest) initWithOptions:v4];
    v0[8] = v5;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v1;
    v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1919C;

    return withCheckedContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000016, 0x8000000000094160, sub_19560, v6, &type metadata for () + 8);
  }

  else
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = sub_818E8();
    v12 = sub_818E8();
    v13 = STLocalizedString(v11);

    v14 = sub_81928();
    v31 = v15;
    v32 = v14;

    v16 = sub_818E8();
    v17 = sub_818E8();
    v18 = STLocalizedString(v16);

    v19 = sub_81928();
    v21 = v20;

    swift_beginAccess();
    v22 = *(v9 + 16);
    v23 = sub_818E8();
    v24 = sub_818E8();
    v25 = STLocalizedString(v23);

    v26 = sub_81928();
    v28 = v27;

    strcpy(v10, "autoUnloadApps");
    *(v10 + 15) = -18;
    *(v10 + 16) = 0xD000000000000012;
    *(v10 + 24) = 0x8000000000094050;
    *(v10 + 32) = v32;
    *(v10 + 40) = v31;
    *(v10 + 48) = 0xD000000000000012;
    *(v10 + 56) = 0x8000000000094050;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0xD000000000000012;
    *(v10 + 80) = 0x8000000000094050;
    *(v10 + 88) = v19;
    *(v10 + 96) = v21;
    *(v10 + 104) = v22;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = v26;
    *(v10 + 168) = v28;
    *(v10 + 176) = 0;
    *(v10 + 184) = 1;
    *(v10 + 192) = &unk_88930;
    *(v10 + 200) = 0;
    *(v10 + 208) = 0;
    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1919C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_192B4, 0, 0);
}

uint64_t sub_192B4()
{
  v1 = *(v0 + 64);

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_818E8();
  v5 = sub_818E8();
  v6 = STLocalizedString(v4);

  v24 = sub_81928();
  v8 = v7;

  v9 = sub_818E8();
  v10 = sub_818E8();
  v11 = STLocalizedString(v9);

  v12 = sub_81928();
  v14 = v13;

  swift_beginAccess();
  v15 = *(v2 + 16);
  v16 = sub_818E8();
  v17 = sub_818E8();
  v18 = STLocalizedString(v16);

  v19 = sub_81928();
  v21 = v20;

  strcpy(v3, "autoUnloadApps");
  *(v3 + 15) = -18;
  *(v3 + 16) = 0xD000000000000012;
  *(v3 + 24) = 0x8000000000094050;
  *(v3 + 32) = v24;
  *(v3 + 40) = v8;
  *(v3 + 48) = 0xD000000000000012;
  *(v3 + 56) = 0x8000000000094050;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0xD000000000000012;
  *(v3 + 80) = 0x8000000000094050;
  *(v3 + 88) = v12;
  *(v3 + 96) = v14;
  *(v3 + 104) = v15;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = v19;
  *(v3 + 168) = v21;
  *(v3 + 176) = 0;
  *(v3 + 184) = 1;
  *(v3 + 192) = &unk_88930;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_19568()
{
  v1 = sub_147EC(&qword_B7B98, &qword_88938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_19638(int a1, void *a2, uint64_t a3)
{
  v7 = *(*(sub_147EC(&qword_B7B98, &qword_88938) - 8) + 80);
  v8 = *(v3 + 16);

  return sub_179FC(a1, a2, a3, v8);
}

uint64_t sub_196D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_196F4()
{
  v1 = sub_147EC(&qword_B7BA0, &unk_88940);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_19788(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_147EC(&qword_B7BA0, &unk_88940) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_180A4(a1, a2, v6);
}

uint64_t sub_19818(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

double sub_19850@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_818E8();
  v5 = sub_818E8();
  v6 = STLocalizedString(v4);

  v7 = sub_81928();
  v9 = v8;

  v10 = sub_818E8();
  v11 = sub_818E8();
  v12 = STLocalizedString(v10);

  v13 = sub_81928();
  v15 = v14;

  v16 = sub_1A7F4(0, &qword_B7BB0, off_A9200);
  *a2 = 0x616964654D736C68;
  *(a2 + 8) = 0xE800000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = xmmword_88710;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0x616964654D736C68;
  *(a2 + 80) = 0xE800000000000000;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = a1;
  result = 0.0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = v16;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return result;
}

uint64_t sub_199FC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A90;

  return sub_176A4(v2);
}

uint64_t sub_19A90(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

double sub_19B94@<D0>(uint64_t a1@<X8>)
{
  v3 = objc_allocWithZone(NSBundle);
  v4 = sub_818E8();
  v5 = [v3 initWithPath:v4];

  if (v5 && [v5 principalClass] && (swift_getObjCClassMetadata(), sub_1A7F4(0, &qword_B7BC0, NSObject_ptr), swift_dynamicCastMetatype()) && (v6 = objc_msgSend(objc_allocWithZone(swift_getObjCClassFromMetadata()), "init")) != 0)
  {
    v7 = v6;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (!v8)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = usageBundleForAppIdentifier(comAppleTV);
  if (!v8 || ([v8 respondsToSelector:"usageDetailControllerClassForUsageBundleApp:"] & 1) == 0 || !objc_msgSend(v8, "usageDetailControllerClassForUsageBundleApp:", v9) || ((swift_getObjCClassMetadata(), sub_1A7F4(0, &qword_B7BB8, PSViewController_ptr), (v10 = swift_dynamicCastMetatype()) != 0) ? (v11 = v9 == 0) : (v11 = 1), v11))
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v12 = sub_80BC8();
    sub_19818(v12, qword_BCF70);
    v13 = sub_80BB8();
    v14 = sub_81B18();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Could not load TV usageBundle properly", v15, 2u);
    }

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v50 = v10;
  [v9 totalSize];
  if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v23 < 1000)
  {
    v1 = v23;
    if (qword_B7850 == -1)
    {
LABEL_28:
      v24 = sub_80BC8();
      sub_19818(v24, qword_BCF70);
      v25 = sub_80BB8();
      v26 = sub_81B08();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v1;
        _os_log_impl(&dword_0, v25, v26, "Skipping TV recommendation with size %f", v27, 0xCu);
      }

      swift_unknownObjectRelease();
LABEL_21:
      sub_1A6B0(&v65);
      goto LABEL_22;
    }

LABEL_37:
    swift_once();
    goto LABEL_28;
  }

  v48 = v23;
  v28 = sub_818E8();
  v29 = MGGetBoolAnswer();

  if ((v29 & 1) == 0)
  {
    v30 = sub_818E8();
    MGGetBoolAnswer();
  }

  v31 = sub_818E8();
  v32 = sub_818E8();
  v33 = STLocalizedString(v31);

  v47 = sub_81928();
  v46 = v34;

  v35 = sub_818E8();
  v36 = sub_818E8();
  v37 = STLocalizedString(v35);

  v38 = sub_81928();
  v49 = v39;

  v40 = sub_81928();
  v42 = v41;
  v43 = sub_81928();
  v45 = v44;

  swift_unknownObjectRelease();
  strcpy(&v51, "iTunesVideos");
  BYTE13(v51) = 0;
  HIWORD(v51) = -5120;
  *&v52 = v40;
  *(&v52 + 1) = v42;
  *&v53 = v47;
  *(&v53 + 1) = v46;
  *&v54 = v43;
  *(&v54 + 1) = v45;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = v43;
  *&v56 = v45;
  *(&v56 + 1) = v38;
  *&v57 = v49;
  *(&v57 + 1) = v48;
  v58 = 0u;
  v59 = 0u;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = v50;
  v61 = 0uLL;
  *&v62 = 0;
  BYTE8(v62) = 1;
  v63 = 0uLL;
  v64 = 0;
  nullsub_1(&v51);
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v65 = v51;
  v66 = v52;

LABEL_22:
  v16 = v76;
  *(a1 + 160) = v75;
  *(a1 + 176) = v16;
  *(a1 + 192) = v77;
  *(a1 + 208) = v78;
  v17 = v72;
  *(a1 + 96) = v71;
  *(a1 + 112) = v17;
  v18 = v74;
  *(a1 + 128) = v73;
  *(a1 + 144) = v18;
  v19 = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = v19;
  v20 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v20;
  result = *&v65;
  v22 = v66;
  *a1 = v65;
  *(a1 + 16) = v22;
  return result;
}

id sub_1A2B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 representedApp];
  v4 = sub_81928();
  v27 = v5;
  v28 = v4;

  v6 = [a1 title];
  v26 = sub_81928();
  v8 = v7;

  v9 = [a1 representedApp];
  v10 = sub_81928();
  v12 = v11;

  v13 = [a1 message];
  v14 = sub_81928();
  v16 = v15;

  v17 = [a1 expectedSize];
  v18 = sub_818E8();
  v19 = sub_818E8();
  v20 = STLocalizedString(v18);

  v21 = sub_81928();
  v23 = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *a2 = 1936744813;
  *(a2 + 8) = 0xE400000000000000;
  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
  *(a2 + 32) = v26;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 56) = v12;
  *(a2 + 64) = 0;
  *(a2 + 72) = v10;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  *(a2 + 104) = v17;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = v21;
  *(a2 + 168) = v23;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  *(a2 + 192) = &unk_88968;
  *(a2 + 200) = v24;
  *(a2 + 208) = 0;

  return a1;
}

uint64_t sub_1A4CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A504()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A89C;

  return sub_1834C(v2);
}

uint64_t sub_1A5A0()
{
  v1 = sub_147EC(&qword_B7BA0, &unk_88940);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A634(uint64_t a1)
{
  v2 = *(*(sub_147EC(&qword_B7BA0, &unk_88940) - 8) + 80);

  return sub_18748(a1);
}

double sub_1A6B0(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RecommendationStatus(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RecommendationStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RecommendationStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A740(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A75C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1A7A0()
{
  result = qword_B7C28;
  if (!qword_B7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7C28);
  }

  return result;
}

uint64_t sub_1A7F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1A83C()
{
  result = qword_B7CB8;
  if (!qword_B7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7CB8);
  }

  return result;
}

uint64_t sub_1A8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_147EC(&unk_B8230, qword_88A50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A98C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_147EC(&unk_B8230, qword_88A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Application()
{
  result = qword_B7D78;
  if (!qword_B7D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AA88()
{
  sub_1ACE4(319, &qword_B7D88, sub_1AC98, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1ACE4(319, &qword_B7D98, type metadata accessor for Application, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1ACE4(319, &qword_B7DA0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1ADAC(319, &qword_B7DA8, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1AD48();
          if (v4 <= 0x3F)
          {
            sub_1ADAC(319, &unk_B7DC0, &type metadata for Application.SizeDetail, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1AC98()
{
  result = qword_B7D90;
  if (!qword_B7D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B7D90);
  }

  return result;
}

void sub_1ACE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AD48()
{
  if (!qword_B7DB0)
  {
    sub_14E2C(&qword_B7DB8, &qword_88A80);
    v0 = sub_81B98();
    if (!v1)
    {
      atomic_store(v0, &qword_B7DB0);
    }
  }
}

void sub_1ADAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_1ADFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AE10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AE58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationSortingOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationSortingOrder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B170()
{
  result = qword_B7E30;
  if (!qword_B7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7E30);
  }

  return result;
}

unint64_t sub_1B210()
{
  result = qword_B7E38;
  if (!qword_B7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7E38);
  }

  return result;
}

Swift::Int sub_1B264()
{
  v1 = *v0;
  sub_81E78();
  sub_81E88(v1);
  return sub_81EB8();
}

Swift::Int sub_1B2AC()
{
  v1 = *v0;
  sub_81E78();
  sub_81E88(v1);
  return sub_81EB8();
}

uint64_t sub_1B2F0()
{
  sub_147EC(&qword_B7E40, &qword_88C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_886E0;
  *(inited + 32) = sub_81928();
  *(inited + 40) = v1;
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  v5 = sub_81928();
  v7 = v6;

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 64) = sub_81928();
  *(inited + 72) = v8;
  v9 = sub_818E8();
  v10 = sub_818E8();
  v11 = STLocalizedString(v9);

  v12 = sub_81928();
  v14 = v13;

  *(inited + 80) = v12;
  *(inited + 88) = v14;
  v15 = sub_3A9D0(inited);
  swift_setDeallocating();
  sub_147EC(&qword_B7E48, &qword_88C58);
  result = swift_arrayDestroy();
  qword_BCF60 = v15;
  return result;
}

uint64_t sub_1B4B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Application();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_B7888 != -1)
  {
    swift_once();
  }

  v7 = *v1;
  v8 = *(v1 + 8);
  if (*(qword_BD078 + 16) && (sub_34B30(*v1, *(v1 + 8)), (v9 & 1) != 0) || *(*(v1 + 120) + 16) || *(v1 + 133) == 1)
  {
    if (!*(v1 + *(v3 + 80)))
    {
      sub_208C8(v1, v6);
      v19 = type metadata accessor for AppDetailViewWrapper();
      v20 = objc_allocWithZone(v19);
      sub_208C8(v6, v20 + OBJC_IVAR____TtC17StorageSettingsUI20AppDetailViewWrapper_model);
      v29.receiver = v20;
      v29.super_class = v19;
      objc_msgSendSuper2(&v29, "initWithNibName:bundle:", 0, 0);
      sub_2095C(v6);
      return sub_80AF8();
    }
  }

  else if (!*(v1 + *(v3 + 80)))
  {
    v28 = a1;
    v21 = *(v1 + 72);
    v22 = *(v1 + 16);
    v23 = *(v1 + 24);
    v24 = *(v1 + 48);
    v25 = *(v1 + 56);
    v26 = objc_allocWithZone(STStorageAppDetailController);
    v16 = sub_818E8();
    v17 = sub_818E8();
    [v26 initWithAppRecord:v21 bundleIdentifier:v16 name:v17 appSize:v24 dataSize:v25];
    goto LABEL_9;
  }

  v28 = a1;
  v10 = *(v1 + 72);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_818E8();
  v17 = sub_818E8();
  [v15 initWithAppRecord:v10 bundleIdentifier:v16 name:v17 appSize:v13 dataSize:v14];
LABEL_9:

  return sub_80AF8();
}

BOOL sub_1B740(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_14ED0();
  return sub_81BD8() == -1;
}

void *sub_1B7A0(void *result, void *a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = a2[6];
  v5 = a2[7];
  if (v2 == v4 && v3 == v5)
  {
    v12 = result[2];
    v13 = result[3];
    v10 = a2[2];
    v11 = a2[3];
    sub_14ED0();
    return (sub_81BD8() == -1);
  }

  else
  {
    v7 = __OFADD__(v4, v5);
    v8 = v4 + v5;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v7 = __OFADD__(v2, v3);
      v9 = v2 + v3;
      if (!v7)
      {
        return (v8 < v9);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B83C(void *a1, void *a2)
{
  v4 = sub_80A38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v52 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v55 = &v49[-v10];
  __chkstk_darwin(v9);
  v53 = &v49[-v11];
  v12 = sub_147EC(&unk_B8230, qword_88A50);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v54 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v49[-v17];
  __chkstk_darwin(v16);
  v20 = &v49[-v19];
  v21 = sub_147EC(&qword_B7E90, &unk_88CA0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v49[-v24];
  v26 = *(type metadata accessor for Application() + 72);
  v27 = *(v22 + 56);
  v57 = a1;
  sub_2101C(a1 + v26, v25);
  v56 = a2;
  sub_2101C(a2 + v26, &v25[v27]);
  v28 = *(v5 + 48);
  if (v28(v25, 1, v4) != 1)
  {
    sub_2101C(v25, v20);
    if (v28(&v25[v27], 1, v4) != 1)
    {
      v36 = v53;
      (*(v5 + 32))(v53, &v25[v27], v4);
      sub_2108C(&qword_B7E98, &type metadata accessor for Date);
      v50 = sub_81868();
      v51 = v5;
      v37 = *(v5 + 8);
      v37(v36, v4);
      v37(v20, v4);
      result = sub_14FD4(v25, &unk_B8230, qword_88A50);
      if (v50)
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_2101C(v57 + v26, v18);
      if (v28(v18, 1, v4) == 1)
      {
        sub_14FD4(v18, &unk_B8230, qword_88A50);
        v30 = 0;
      }

      else
      {
        v31 = v51;
        v32 = *(v51 + 32);
        v33 = v55;
        v32(v55, v18, v4);
        v34 = v56 + v26;
        v35 = v54;
        sub_2101C(v34, v54);
        if (v28(v35, 1, v4) == 1)
        {
          (*(v31 + 8))(v33, v4);
          sub_14FD4(v35, &unk_B8230, qword_88A50);
          v30 = 1;
        }

        else
        {
          v47 = v52;
          v32(v52, v35, v4);
          v30 = sub_809F8();
          v48 = *(v31 + 8);
          v48(v47, v4);
          v48(v33, v4);
        }
      }

      return v30 & 1;
    }

    (*(v5 + 8))(v20, v4);
LABEL_6:
    v51 = v5;
    sub_14FD4(v25, &qword_B7E90, &unk_88CA0);
    goto LABEL_7;
  }

  if (v28(&v25[v27], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  result = sub_14FD4(v25, &unk_B8230, qword_88A50);
LABEL_12:
  v38 = v57[6];
  v39 = v57[7];
  v40 = v56[6];
  v41 = v56[7];
  if (v38 == v40 && v39 == v41)
  {
    v42 = v57[3];
    v60 = v57[2];
    v61 = v42;
    v43 = v56[3];
    v58 = v56[2];
    v59 = v43;
    sub_14ED0();
    v30 = sub_81BD8() == -1;
    return v30 & 1;
  }

  v44 = __OFADD__(v40, v41);
  v45 = v40 + v41;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    v44 = __OFADD__(v38, v39);
    v46 = v38 + v39;
    if (!v44)
    {
      v30 = v45 < v46;
      return v30 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BDA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 193) = a5;
  *(v5 + 192) = a4;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 40) = a1;
  v6 = sub_81878();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = *(*(sub_147EC(&qword_B7E50, &qword_8A3F0) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v10 = type metadata accessor for Application();
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  *(v5 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1BF2C, 0, 0);
}

uint64_t sub_1BF2C()
{
  v124 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_34340(*(v1 + 16), 0);
    v4 = sub_39EBC(&v123, v3 + 4, v2, v1);

    result = sub_208C0();
    if (v4 != v2)
    {
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v123 = v3;
  sub_1FCA8(&v123);
  v6 = v123;
  *(v0 + 144) = v123;
  v7 = *(v6 + 2);
  *(v0 + 152) = v7;
  if (v7)
  {
    *(v0 + 160) = 0;
    *(v0 + 168) = _swiftEmptyArrayStorage;
    v9 = *(v6 + 4);
    v8 = *(v6 + 5);
    *(v0 + 176) = v8;

    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_1C9BC;
    v11 = *(v0 + 88);
    v12 = *(v0 + 193);
    v13 = *(v0 + 192);
    v14 = *(v0 + 56);

    return sub_1D58C(v11, v9, v8, v14, v13, v12);
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (!v15)
  {
    goto LABEL_18;
  }

  v114 = *(v0 + 120);
  v16 = *(v0 + 104);
  v123 = _swiftEmptyArrayStorage;
  sub_34F24(0, v15, 0);
  v17 = v123;
  v18 = _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v116 = v0;
  v117 = *(v16 + 72);
  v112 = v18;
  do
  {
    v19 = *(v0 + 120);
    v20 = v17;
    sub_208C8(v18, v19);
    v21 = *(v114 + 80);
    v22 = *(v114 + 88);
    v23 = *(v114 + 96);
    v24 = *(v114 + 112);
    v119 = *(v114 + 104);
    sub_2092C(v21, v22, v23);

    sub_2095C(v19);
    v17 = v20;
    v123 = v20;
    v26 = *(v20 + 2);
    v25 = *(v20 + 3);
    if (v26 >= v25 >> 1)
    {
      sub_34F24((v25 > 1), v26 + 1, 1);
      v17 = v123;
    }

    *(v17 + 2) = v26 + 1;
    v27 = &v17[40 * v26];
    *(v27 + 4) = v21;
    *(v27 + 5) = v22;
    v27[48] = v23;
    *(v27 + 7) = v119;
    *(v27 + 8) = v24;
    v0 = v116;
    v18 += v117;
    --v15;
  }

  while (v15);
  v28 = _swiftEmptyArrayStorage[2];
  if (!v28)
  {
LABEL_18:
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);
    v35 = *(v0 + 40);

    (*(v33 + 56))(v35, 1, 1, v34);
    goto LABEL_42;
  }

  if (v28 != 1)
  {
    v106 = v17;
    v120 = *(v116 + 120);
    v123 = _swiftEmptyArrayStorage;

    sub_34F04(0, v28, 0);
    v36 = v123;
    v37 = v112;
    v38 = v28;
    do
    {
      v39 = *(v0 + 120);
      sub_208C8(v37, v39);
      v40 = *v39;
      v41 = *(v120 + 8);

      sub_2095C(v39);
      v123 = v36;
      v43 = *(v36 + 2);
      v42 = *(v36 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_34F04((v42 > 1), v43 + 1, 1);
        v36 = v123;
      }

      *(v36 + 2) = v43 + 1;
      v44 = &v36[16 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v41;
      v0 = v116;
      v37 += v117;
      --v38;
    }

    while (v38);
    v45 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage[2];
    if (v46)
    {
      v47 = *(v116 + 112);
      v48 = v112;
      do
      {
        sub_208C8(v48, *(v116 + 112));
        v49 = *(v47 + 32);
        v50 = *(v47 + 40);
        v51 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v51 = v49 & 0xFFFFFFFFFFFFLL;
        }

        v52 = *(v116 + 112);
        if (v51)
        {
          v53 = *(v47 + 40);

          sub_2095C(v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_33D10(0, *(v45 + 2) + 1, 1, v45);
          }

          v55 = *(v45 + 2);
          v54 = *(v45 + 3);
          if (v55 >= v54 >> 1)
          {
            v45 = sub_33D10((v54 > 1), v55 + 1, 1, v45);
          }

          *(v45 + 2) = v55 + 1;
          v56 = &v45[16 * v55];
          *(v56 + 4) = v49;
          *(v56 + 5) = v50;
        }

        else
        {
          sub_2095C(v52);
        }

        v48 += v117;
        --v46;
      }

      while (v46);
    }

    v57 = *(v116 + 120);
    v58 = *(v116 + 72);
    v59 = *(v116 + 80);
    v121 = *(v116 + 64);
    v60 = sub_20ED0(v45);

    *(v116 + 16) = v60;
    sub_808E8();
    sub_147EC(&qword_B7E58, &qword_88C78);
    sub_14F24(&qword_B7E60, &qword_B7E58, &qword_88C78);
    sub_2108C(&qword_B7E68, &type metadata accessor for String.Comparator);
    sub_819B8();
    v107 = *(v58 + 8);
    v107(v59, v121);

    v123 = _swiftEmptyArrayStorage;
    sub_34F04(0, v28, 0);
    v61 = v123;
    v62 = v112;
    do
    {
      v63 = *(v116 + 120);
      sub_208C8(v62, v63);
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);

      sub_2095C(v63);
      v123 = v61;
      v67 = *(v61 + 2);
      v66 = *(v61 + 3);
      if (v67 >= v66 >> 1)
      {
        sub_34F04((v66 > 1), v67 + 1, 1);
        v61 = v123;
      }

      *(v61 + 2) = v67 + 1;
      v68 = &v61[16 * v67];
      *(v68 + 4) = v65;
      *(v68 + 5) = v64;
      v62 += v117;
      --v28;
    }

    while (v28);
    v69 = *(v116 + 80);
    v71 = *(v116 + 56);
    v70 = *(v116 + 64);
    v72 = sub_20ED0(v61);

    *(v116 + 24) = v72;
    sub_808E8();
    sub_819B8();
    v107(v69, v70);

    v73 = objc_opt_self();
    isa = sub_819E8().super.isa;

    v75 = [v73 localizedStringByJoiningStrings:isa];

    v76 = sub_81928();
    v118 = v77;
    v122 = v76;

    v78 = sub_819E8().super.isa;

    v79 = [v73 localizedStringByJoiningStrings:v78];

    v80 = sub_81928();
    v82 = v81;

    *(v116 + 32) = v36;
    sub_147EC(&qword_B7E70, &unk_88C80);
    sub_14F24(&qword_B7E78, &qword_B7E70, &unk_88C80);
    v83 = sub_81858();
    v85 = v84;

    result = [v71 fixedSize];
    if ((result & 0x8000000000000000) == 0)
    {
      v110 = result;
      v111 = v83;
      v113 = v82;
      v115 = v80;
      result = [*(v116 + 56) dataSize];
      if ((result & 0x8000000000000000) == 0)
      {
        v86 = result;
        v88 = *(v116 + 96);
        v87 = *(v116 + 104);
        v109 = *(v116 + 193);
        v108 = *(v116 + 192);
        v89 = *(v116 + 40);

        v90 = v88[18];
        v91 = sub_80A38();
        (*(*(v91 - 8) + 56))(v89 + v90, 1, 1, v91);
        v92 = sub_818E8();
        v93 = sub_818E8();
        v94 = STLocalizedString(v92);

        v95 = sub_81928();
        v97 = v96;

        *v89 = v111;
        *(v89 + 8) = v85;
        v0 = v116;
        *(v89 + 16) = v122;
        *(v89 + 24) = v118;
        *(v89 + 32) = v115;
        *(v89 + 40) = v113;
        *(v89 + 48) = v110;
        *(v89 + 56) = v86;
        *(v89 + 64) = 0;
        *(v89 + 72) = 0;
        *(v89 + 80) = v106;
        *(v89 + 88) = 0;
        *(v89 + 96) = 2;
        *(v89 + 104) = v111;
        *(v89 + 112) = v85;
        *(v89 + 120) = _swiftEmptyArrayStorage;
        *(v89 + 128) = 0;
        *(v89 + 130) = v108;
        *(v89 + 131) = v109;
        *(v89 + 132) = 0;
        v98 = (v89 + v88[19]);
        *v98 = v95;
        v98[1] = v97;
        *(v89 + v88[20]) = 0;
        *(v89 + v88[21]) = _swiftEmptyArrayStorage;
        (*(v87 + 56))(v89, 0, 1, v88);
        goto LABEL_42;
      }

LABEL_48:
      __break(1u);
      return result;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = v112;
  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = *(v116 + 120);
  v30 = *(v116 + 96);
  v31 = *(v116 + 104);
  v32 = *(v116 + 40);
  sub_208C8(v112, v29);

  sub_20F68(v29, v32);
  (*(v31 + 56))(v32, 0, 1, v30);
LABEL_42:
  v100 = *(v0 + 128);
  v99 = *(v0 + 136);
  v101 = *(v0 + 112);
  v102 = *(v0 + 120);
  v104 = *(v0 + 80);
  v103 = *(v0 + 88);

  v105 = *(v0 + 8);

  return v105();
}

uint64_t sub_1C9BC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_1CAD4, 0, 0);
}

uint64_t sub_1CAD4()
{
  v1 = v0;
  v2 = v0[11];
  if ((*(v0[13] + 48))(v2, 1, v0[12]) == 1)
  {
    sub_14FD4(v2, &qword_B7E50, &qword_8A3F0);
    v3 = v0[21];
  }

  else
  {
    v4 = v0[21];
    v6 = v1[16];
    v5 = v1[17];
    sub_20F68(v2, v5);
    sub_208C8(v5, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v1[21];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_33CE8(0, v3[2] + 1, 1, v1[21]);
    }

    v9 = v3[2];
    v8 = v3[3];
    if (v9 >= v8 >> 1)
    {
      v3 = sub_33CE8(v8 > 1, v9 + 1, 1, v3);
    }

    v10 = v1[16];
    v11 = v1[13];
    sub_2095C(v1[17]);
    v3[2] = v9 + 1;
    sub_20F68(v10, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9);
  }

  v12 = v1[20] + 1;
  if (v12 == v1[19])
  {
    v13 = v1[18];

    v14 = v3[2];
    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = v1[15];
    v16 = v1[13];
    sub_34F24(0, v14, 0);
    v17 = _swiftEmptyArrayStorage;
    v18 = v3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v123 = v1;
    v124 = *(v16 + 72);
    v121 = v18;
    v122 = v3;
    do
    {
      v19 = v1[15];
      v20 = v17;
      sub_208C8(v18, v19);
      v21 = *(v15 + 80);
      v22 = *(v15 + 88);
      v23 = *(v15 + 96);
      v24 = *(v15 + 112);
      v126 = *(v15 + 104);
      sub_2092C(v21, v22, v23);

      sub_2095C(v19);
      v17 = v20;
      v129 = v20;
      v25 = v20[2];
      v26 = v17[3];
      if (v25 >= v26 >> 1)
      {
        sub_34F24((v26 > 1), v25 + 1, 1);
        v17 = v129;
      }

      v17[2] = v25 + 1;
      v27 = &v17[5 * v25];
      v27[4] = v21;
      v27[5] = v22;
      *(v27 + 48) = v23;
      v27[7] = v126;
      v27[8] = v24;
      v1 = v123;
      v18 += v124;
      --v14;
    }

    while (v14);
    v37 = v3[2];
    if (!v37)
    {
LABEL_22:
      v43 = v1[12];
      v42 = v1[13];
      v44 = v1[5];

      (*(v42 + 56))(v44, 1, 1, v43);
      goto LABEL_46;
    }

    if (v37 == 1)
    {

      result = v121;
      if (v3[2])
      {
        v38 = v123[15];
        v39 = v123[12];
        v40 = v123[13];
        v41 = v123[5];
        sub_208C8(v121, v38);

        sub_20F68(v38, v41);
        (*(v40 + 56))(v41, 0, 1, v39);
LABEL_46:
        v109 = v1[16];
        v108 = v1[17];
        v110 = v1[14];
        v111 = v1[15];
        v113 = v1[10];
        v112 = v1[11];

        v114 = v1[1];

        return v114();
      }

      __break(1u);
    }

    else
    {
      v115 = v17;
      v45 = v123[15];

      sub_34F04(0, v37, 0);
      v46 = v121;
      v47 = v37;
      do
      {
        v48 = v1[15];
        sub_208C8(v46, v48);
        v49 = *v48;
        v50 = *(v45 + 8);

        sub_2095C(v48);
        v52 = _swiftEmptyArrayStorage[2];
        v51 = _swiftEmptyArrayStorage[3];
        if (v52 >= v51 >> 1)
        {
          sub_34F04((v51 > 1), v52 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v52 + 1;
        v53 = &_swiftEmptyArrayStorage[2 * v52];
        v53[4] = v49;
        v53[5] = v50;
        v1 = v123;
        v46 += v124;
        --v47;
      }

      while (v47);
      v54 = v3[2];
      v55 = _swiftEmptyArrayStorage;
      if (v54)
      {
        v56 = v123[14];
        v57 = v121;
        do
        {
          sub_208C8(v57, v123[14]);
          v58 = *(v56 + 32);
          v59 = *(v56 + 40);
          v60 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v60 = v58 & 0xFFFFFFFFFFFFLL;
          }

          v61 = v123[14];
          if (v60)
          {
            v62 = *(v56 + 40);

            sub_2095C(v61);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_33D10(0, *(v55 + 2) + 1, 1, v55);
            }

            v64 = *(v55 + 2);
            v63 = *(v55 + 3);
            if (v64 >= v63 >> 1)
            {
              v55 = sub_33D10((v63 > 1), v64 + 1, 1, v55);
            }

            *(v55 + 2) = v64 + 1;
            v65 = &v55[16 * v64];
            *(v65 + 4) = v58;
            *(v65 + 5) = v59;
          }

          else
          {
            sub_2095C(v61);
          }

          v57 += v124;
          --v54;
        }

        while (v54);
      }

      v66 = v123[15];
      v67 = v123[9];
      v68 = v123[10];
      v127 = v123[8];
      v69 = sub_20ED0(v55);

      v123[2] = v69;
      sub_808E8();
      sub_147EC(&qword_B7E58, &qword_88C78);
      sub_14F24(&qword_B7E60, &qword_B7E58, &qword_88C78);
      sub_2108C(&qword_B7E68, &type metadata accessor for String.Comparator);
      sub_819B8();
      v116 = *(v67 + 8);
      v116(v68, v127);

      sub_34F04(0, v37, 0);
      v70 = v121;
      do
      {
        v71 = v123[15];
        sub_208C8(v70, v71);
        v73 = *(v66 + 16);
        v72 = *(v66 + 24);

        sub_2095C(v71);
        v75 = _swiftEmptyArrayStorage[2];
        v74 = _swiftEmptyArrayStorage[3];
        if (v75 >= v74 >> 1)
        {
          sub_34F04((v74 > 1), v75 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v75 + 1;
        v76 = &_swiftEmptyArrayStorage[2 * v75];
        v76[4] = v73;
        v76[5] = v72;
        v70 += v124;
        --v37;
      }

      while (v37);
      v77 = v123[10];
      v79 = v123[7];
      v78 = v123[8];
      v80 = sub_20ED0(_swiftEmptyArrayStorage);

      v123[3] = v80;
      sub_808E8();
      sub_819B8();
      v116(v77, v78);

      v81 = objc_opt_self();
      isa = sub_819E8().super.isa;

      v83 = [v81 localizedStringByJoiningStrings:isa];

      v84 = sub_81928();
      v125 = v85;
      v128 = v84;

      v86 = sub_819E8().super.isa;

      v87 = [v81 localizedStringByJoiningStrings:v86];

      v88 = sub_81928();
      v90 = v89;

      v123[4] = _swiftEmptyArrayStorage;
      sub_147EC(&qword_B7E70, &unk_88C80);
      sub_14F24(&qword_B7E78, &qword_B7E70, &unk_88C80);
      v91 = sub_81858();
      v93 = v92;

      result = [v79 fixedSize];
      if ((result & 0x8000000000000000) == 0)
      {
        v94 = result;
        v119 = v91;
        v120 = v90;
        result = [v123[7] dataSize];
        if ((result & 0x8000000000000000) == 0)
        {
          v95 = result;
          v97 = v123[12];
          v96 = v123[13];
          v118 = *(v123 + 193);
          v117 = *(v123 + 192);
          v98 = v123[5];

          v99 = v97[18];
          v100 = sub_80A38();
          (*(*(v100 - 8) + 56))(v98 + v99, 1, 1, v100);
          v101 = sub_818E8();
          v102 = sub_818E8();
          v103 = STLocalizedString(v101);

          v104 = sub_81928();
          v106 = v105;

          *v98 = v119;
          *(v98 + 8) = v93;
          v1 = v123;
          *(v98 + 16) = v128;
          *(v98 + 24) = v125;
          *(v98 + 32) = v88;
          *(v98 + 40) = v120;
          *(v98 + 48) = v94;
          *(v98 + 56) = v95;
          *(v98 + 64) = 0;
          *(v98 + 72) = 0;
          *(v98 + 80) = v115;
          *(v98 + 88) = 0;
          *(v98 + 96) = 2;
          *(v98 + 104) = v119;
          *(v98 + 112) = v93;
          *(v98 + 120) = v122;
          *(v98 + 128) = 0;
          *(v98 + 130) = v117;
          *(v98 + 131) = v118;
          *(v98 + 132) = 0;
          v107 = (v98 + v97[19]);
          *v107 = v104;
          v107[1] = v106;
          *(v98 + v97[20]) = 0;
          *(v98 + v97[21]) = _swiftEmptyArrayStorage;
          (*(v96 + 56))(v98, 0, 1, v97);
          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v1[20] = v12;
  v1[21] = v3;
  v28 = v1[18] + 16 * v12;
  v30 = *(v28 + 32);
  v29 = *(v28 + 40);
  v1[22] = v29;

  v31 = swift_task_alloc();
  v1[23] = v31;
  *v31 = v1;
  v31[1] = sub_1C9BC;
  v32 = v1[11];
  v33 = *(v1 + 193);
  v34 = *(v1 + 192);
  v35 = v1[7];

  return sub_1D58C(v32, v30, v29, v35, v34, v33);
}

uint64_t sub_1D58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 265) = a6;
  *(v6 + 264) = a5;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  return _swift_task_switch(sub_1D5B8, 0, 0);
}

uint64_t sub_1D5B8()
{
  v1 = sub_7CFD8(*(v0 + 56));
  v3 = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  if (qword_B7888 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v4 = qword_BD078;
    if (*(qword_BD078 + 16))
    {
      v5 = sub_34B30(*(v0 + 40), *(v0 + 48));
      if (v6)
      {
        v7 = *(v0 + 40);
        v8 = *(v4 + 56) + 144 * v5;
        v9 = *(v8 + 24);
        v75 = *(v8 + 16);
        v77 = *(v0 + 48);
        *(v0 + 80) = *(v8 + 32);
        *(v0 + 88) = *(v8 + 40);
        v10 = *(v8 + 48);
        *(v0 + 96) = v10;
        v11 = *(v8 + 56);
        *(v0 + 104) = v11;
        v12 = *(v8 + 64);
        *(v0 + 266) = v12;
        *(v0 + 112) = *(v8 + 72);
        *(v0 + 120) = *(v8 + 80);
        *(v0 + 128) = *(v8 + 104);
        *(v0 + 136) = *(v8 + 112);
        *(v0 + 144) = *(v8 + 136);
        if (sub_81928() == v7 && v13 == v77)
        {

          sub_2092C(v10, v11, v12);

LABEL_19:

          *(v0 + 152) = sub_81A88();
          *(v0 + 160) = sub_81A78();
          v41 = sub_81A58();

          return _swift_task_switch(sub_1DEB0, v41, v40);
        }

        v37 = *(v0 + 40);
        v38 = *(v0 + 48);
        v39 = sub_81E18();

        sub_2092C(v10, v11, v12);

        if (v39)
        {
          goto LABEL_19;
        }

        v79 = *(v0 + 144);
        v66 = *(v0 + 128);
        v71 = *(v0 + 112);
        v72 = *(v0 + 120);
        v42 = *(v0 + 96);
        v68 = *(v0 + 104);
        v73 = *(v0 + 80);
        v74 = *(v0 + 88);
        v44 = *(v0 + 64);
        v43 = *(v0 + 72);
        v69 = *(v0 + 265);
        v70 = *(v0 + 266);
        v67 = *(v0 + 264);
        v46 = *(v0 + 40);
        v45 = *(v0 + 48);
        v47 = *(v0 + 32);
        v48 = type metadata accessor for Application();
        v49 = v48[18];
        v50 = sub_80A38();
        (*(*(v50 - 8) + 56))(v47 + v49, 1, 1, v50);
        *v47 = v46;
        *(v47 + 8) = v45;
        *(v47 + 16) = v75;
        *(v47 + 24) = v9;
        *(v47 + 32) = v66;
        *(v47 + 48) = v44;
        *(v47 + 56) = v43;
        *(v47 + 64) = 0;
        *(v47 + 72) = 0;
        *(v47 + 80) = v42;
        *(v47 + 88) = v68;
        *(v47 + 96) = v70;
        *(v47 + 104) = v71;
        *(v47 + 112) = v72;
        *(v47 + 120) = _swiftEmptyArrayStorage;
        *(v47 + 128) = 0;
        *(v47 + 130) = v67;
        *(v47 + 131) = v69;
        *(v47 + 132) = 0;
        v51 = (v47 + v48[19]);
        *v51 = v73;
        v51[1] = v74;
        *(v47 + v48[20]) = v79;
        *(v47 + v48[21]) = _swiftEmptyArrayStorage;
        (*(*(v48 - 1) + 56))(v47, 0, 1, v48);

LABEL_23:
        v52 = *(v0 + 8);

        return v52();
      }
    }

    v14 = sub_20A50(*(v0 + 40), *(v0 + 48));
    *(v0 + 208) = v14;
    if (!v14)
    {
      v22 = STShouldDisplayUnfoundApps();
      if (v22 && _IsInternalInstall(v22))
      {
        v78 = *(v0 + 265);
        v76 = *(v0 + 264);
        v24 = *(v0 + 40);
        v23 = *(v0 + 48);
        v25 = *(v0 + 32);

        v81._countAndFlagsBits = v24;
        v81._object = v23;
        sub_81978(v81);
        v82._countAndFlagsBits = 41;
        v82._object = 0xE100000000000000;
        sub_81978(v82);
        v83._countAndFlagsBits = v24;
        v83._object = v23;
        sub_81978(v83);
        v84._countAndFlagsBits = 41;
        v84._object = 0xE100000000000000;
        sub_81978(v84);
        v26 = type metadata accessor for Application();
        v27 = v26[18];
        v28 = sub_80A38();
        (*(*(v28 - 8) + 56))(v25 + v27, 1, 1, v28);
        *v25 = v24;
        *(v25 + 8) = v23;
        *(v25 + 16) = 0x28208FB8EFA09AE2;
        *(v25 + 24) = 0xA800000000000000;
        *(v25 + 32) = 40;
        *(v25 + 40) = 0xE100000000000000;
        *(v25 + 48) = v1;
        *(v25 + 56) = v3;
        *(v25 + 64) = 0;
        *(v25 + 72) = 0;
        *(v25 + 80) = v24;
        *(v25 + 88) = v23;
        *(v25 + 96) = 0;
        *(v25 + 104) = v24;
        *(v25 + 112) = v23;
        *(v25 + 120) = _swiftEmptyArrayStorage;
        *(v25 + 128) = 0;
        *(v25 + 130) = v76;
        *(v25 + 131) = v78;
        *(v25 + 132) = 0;
        v29 = (v25 + v26[19]);
        *v29 = 0;
        v29[1] = 0;
        *(v25 + v26[20]) = 0;
        *(v25 + v26[21]) = _swiftEmptyArrayStorage;
        (*(*(v26 - 1) + 56))(v25, 0, 1, v26);
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v35 = *(v0 + 32);
        v36 = type metadata accessor for Application();
        (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      }

      goto LABEL_23;
    }

    v15 = v14;
    v16 = *(v0 + 48);
    swift_bridgeObjectRetain_n();
    v17 = [v15 iTunesMetadata];
    *(v0 + 216) = v17;
    v18 = v15;
    if ([v18 developerType] == 1)
    {
LABEL_9:
      v19 = sub_818E8();
      v20 = sub_818E8();
      v21 = STLocalizedString(v19);

      goto LABEL_29;
    }

    v30 = [v17 artistName];
    if (v30)
    {
      v31 = v30;
      v32 = sub_81928();
      v34 = v33;

      if (v32 == 0x656C707041 && v34 == 0xE500000000000000)
      {
      }

      else
      {
        v53 = sub_81E18();

        if ((v53 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v54 = *(v0 + 40);
      v55 = *(v0 + 48);
      if (sub_1E9C8())
      {
        goto LABEL_9;
      }
    }

LABEL_28:
    v21 = [v17 artistName];
    if (!v21)
    {
      v56 = 0;
      v58 = 0xE000000000000000;
      goto LABEL_30;
    }

LABEL_29:
    v56 = sub_81928();
    v58 = v57;

LABEL_30:
    *(v0 + 224) = v56;
    *(v0 + 232) = v58;
    v59 = [v18 applicationState];
    *(v0 + 240) = v59;
    if (([v59 isInstalled] & 1) != 0 || objc_msgSend(v59, "isPlaceholder"))
    {
      v1 = [v18 localizedName];

      goto LABEL_33;
    }

    v64 = [v17 itemName];
    if (v64)
    {
      break;
    }

    v3 = [v18 compatibilityObject];
    v1 = [v3 localizedName];

    if (v1)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  v1 = v64;
LABEL_33:
  v60 = sub_81928();
  v62 = v61;

  *(v0 + 16) = v60;
  *(v0 + 24) = v62;
  *(v0 + 248) = v62;
  *(v0 + 267) = [v18 isManagedAppDistributor];
  *(v0 + 268) = sub_20DE0(v18);
  v63 = swift_task_alloc();
  *(v0 + 256) = v63;
  *v63 = v0;
  v63[1] = sub_1E318;

  return sub_65C78(v18);
}

uint64_t sub_1DEB0()
{
  v1 = *(v0 + 160);

  if (qword_B7858 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1DF48, 0, 0);
}

uint64_t sub_1DF48()
{
  v1 = *(v0 + 152);
  *(v0 + 168) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_1DFD4, v3, v2);
}

uint64_t sub_1DFD4()
{
  v1 = *(v0 + 168);

  *(v0 + 176) = qword_BCF88;

  return _swift_task_switch(sub_1E048, 0, 0);
}

uint64_t sub_1E048()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_softwareUpdateController);
  *(v0 + 184) = v1;

  return _swift_task_switch(sub_1E0CC, v1, 0);
}

uint64_t sub_1E0CC()
{
  v1 = v0[23];
  sub_55F08();
  v3 = v2;
  v5 = v4;

  v0[24] = v3;
  v0[25] = v5;

  return _swift_task_switch(sub_1E150, 0, 0);
}

uint64_t sub_1E150()
{
  v13 = *(v0 + 128);
  v14 = *(v0 + 192);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v21 = *(v0 + 88);
  v22 = *(v0 + 144);
  v20 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v16 = *(v0 + 265);
  v17 = *(v0 + 266);
  v15 = *(v0 + 264);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = type metadata accessor for Application();
  v9 = v8[18];
  v10 = sub_80A38();
  (*(*(v10 - 8) + 56))(v7 + v9, 1, 1, v10);
  *v7 = v6;
  *(v7 + 8) = v5;
  *(v7 + 16) = v14;
  *(v7 + 32) = v13;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = v2;
  *(v7 + 88) = v1;
  *(v7 + 96) = v17;
  *(v7 + 104) = v18;
  *(v7 + 112) = v19;
  *(v7 + 120) = _swiftEmptyArrayStorage;
  *(v7 + 128) = 0;
  *(v7 + 130) = v15;
  *(v7 + 131) = v16;
  *(v7 + 132) = 0;
  v11 = (v7 + v8[19]);
  *v11 = v20;
  v11[1] = v21;
  *(v7 + v8[20]) = v22;
  *(v7 + v8[21]) = _swiftEmptyArrayStorage;
  (*(*(v8 - 1) + 56))(v7, 0, 1, v8);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1E318(char a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 269) = a1;

  return _swift_task_switch(sub_1E418, 0, 0);
}

uint64_t sub_1E418()
{
  v1 = *(v0 + 269);
  v2 = *(v0 + 268);
  v3 = *(v0 + 267);
  if (!*(v0 + 268))
  {
    v57 = 0;
    v52 = *(v0 + 248);
    v50 = *(v0 + 16);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v54 = *(v0 + 269);
LABEL_16:
    v56 = v14;
    v53 = v14;
    v55 = v15;
    v51 = v15;
    goto LABEL_17;
  }

  v4 = *(v0 + 40) == 0xD000000000000010 && 0x8000000000094710 == *(v0 + 48);
  if (v4 || (v5 = *(v0 + 48), (sub_81E18() & 1) != 0))
  {
    v6 = *(v0 + 248);

    swift_bridgeObjectRelease_n();
    v7 = sub_818E8();
    v8 = sub_818E8();
    v9 = STLocalizedString(v7);

    v10 = sub_81928();
    v12 = v11;

    if (qword_B7870 != -1)
    {
      swift_once();
    }

    v13 = unk_BD020;
    v53 = qword_BD018;
    v56 = qword_BD000;
    v55 = *algn_BD008;
    v57 = byte_BD010;
    sub_2092C(qword_BD000, *algn_BD008, byte_BD010);
    v51 = v13;

    v54 = 0;
LABEL_10:
    v52 = v12;
    v50 = v10;
    goto LABEL_17;
  }

  if (*(v0 + 40) == 0x6C7070612E6D6F63 && *(v0 + 48) == 0xEE007370614D2E65 || (v16 = *(v0 + 48), (sub_81E18() & 1) != 0))
  {
    v17 = *(v0 + 248);

    v18 = sub_818E8();
    v19 = sub_818E8();
    v20 = STLocalizedString(v18);

    v50 = sub_81928();
    v52 = v21;

    v57 = 0;
    v54 = *(v0 + 269);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    goto LABEL_16;
  }

  if (*(v0 + 40) == 0xD000000000000019 && 0x8000000000094730 == *(v0 + 48) || (v36 = *(v0 + 48), (sub_81E18() & 1) != 0))
  {
    v37 = *(v0 + 248);

    swift_bridgeObjectRelease_n();
    v38 = sub_818E8();
    v39 = sub_818E8();
    v40 = STLocalizedString(v38);

    v10 = sub_81928();
    v12 = v41;

    if (qword_B7878 != -1)
    {
      swift_once();
    }

    v42 = unk_BD048;
    v53 = qword_BD040;
    v56 = qword_BD028;
    v55 = qword_BD030;
    v57 = byte_BD038;
    sub_2092C(qword_BD028, qword_BD030, byte_BD038);
    v51 = v42;

    v54 = *(v0 + 269);
    goto LABEL_10;
  }

  v57 = 0;
  v54 = *(v0 + 269);
  v52 = *(v0 + 248);
  v50 = *(v0 + 16);
  v55 = *(v0 + 48);
  v56 = *(v0 + 40);
  v53 = v56;
  v51 = v55;
LABEL_17:
  if (v2 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v1;
  }

  v48 = v22 & (v3 ^ 1);
  v49 = *(v0 + 267);
  v23 = *(v0 + 240);
  v43 = *(v0 + 224);
  v24 = *(v0 + 216);
  v44 = *(v0 + 208);
  v25 = *(v0 + 64);
  v26 = *(v0 + 72);
  v47 = *(v0 + 265);
  v45 = *(v0 + 268);
  v46 = *(v0 + 264);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  v29 = *(v0 + 32);
  v30 = type metadata accessor for Application();
  v31 = v30[18];
  v32 = sub_80A38();
  (*(*(v32 - 8) + 56))(v29 + v31, 1, 1, v32);

  *v29 = v27;
  *(v29 + 8) = v28;
  *(v29 + 16) = v50;
  *(v29 + 24) = v52;
  *(v29 + 32) = v43;
  *(v29 + 48) = v25;
  *(v29 + 56) = v26;
  *(v29 + 64) = v45;
  *(v29 + 72) = v44;
  *(v29 + 80) = v56;
  *(v29 + 88) = v55;
  *(v29 + 96) = v57;
  *(v29 + 104) = v53;
  *(v29 + 112) = v51;
  *(v29 + 120) = _swiftEmptyArrayStorage;
  *(v29 + 128) = v54;
  *(v29 + 129) = v48;
  *(v29 + 130) = v46;
  *(v29 + 131) = v47;
  *(v29 + 132) = 0;
  *(v29 + 133) = v49;
  v33 = (v29 + v30[19]);
  *v33 = 0;
  v33[1] = 0;
  *(v29 + v30[20]) = 0;
  *(v29 + v30[21]) = _swiftEmptyArrayStorage;
  (*(*(v30 - 1) + 56))(v29, 0, 1, v30);
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1E9C8()
{

  v0 = sub_81988();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_81988();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_81E18();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_81988();
      v3 = v5;
    }

    while (v5);
  }

  sub_81988();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1EB24()
{
  v0 = sub_818E8();
  v1 = sub_818E8();
  v2 = STLocalizedString(v0);

  v3 = sub_81928();
  return v3;
}

uint64_t sub_1EC08()
{
  if (v0[132] == 1 || v0[133] == 1)
  {
    sub_81788();
  }

  else
  {
    v1 = v0[64];
    sub_81788();
  }

  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  return sub_81288();
}

id sub_1F168(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_818E8();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_80958();

    swift_willThrow();
  }

  return v6;
}

id sub_1F244()
{
  v1 = sub_818E8();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_80958();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1F310(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1F370(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1F3E4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_81E78();
  sub_81968();
  v9 = sub_81EB8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_81E18() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1F794(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1F534(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_147EC(&qword_B7E80, &unk_8B320);
  result = sub_81CD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_81E78();
      sub_81968();
      result = sub_81EB8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1F794(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1F534(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1F914();
      goto LABEL_16;
    }

    sub_1FA70(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_81E78();
  sub_81968();
  result = sub_81EB8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_81E18();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_81E28();
  __break(1u);
  return result;
}

void *sub_1F914()
{
  v1 = v0;
  sub_147EC(&qword_B7E80, &unk_8B320);
  v2 = *v0;
  v3 = sub_81CC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1FA70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_147EC(&qword_B7E80, &unk_8B320);
  result = sub_81CD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_81E78();

      sub_81968();
      result = sub_81EB8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_1FCA8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20884(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1FD14(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1FD14(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_81DE8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_81A18();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1FEDC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1FE0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1FE0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_81E18(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1FEDC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2076C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_204B8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_81E18();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_81E18();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20780(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_20780((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_204B8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2076C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_206E0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_81E18(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_204B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_81E18() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_81E18() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_206E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2076C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_20780(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_147EC(&qword_B7E88, &unk_88C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_208C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Application();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2092C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 < 2u || a3 == 3;
  if (v3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2095C(uint64_t a1)
{
  v2 = type metadata accessor for Application();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_209B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_81E18()) && *(a1 + 64) == *(a2 + 64) && (*(a1 + 48) == *(a2 + 48) ? (v5 = *(a1 + 56) == *(a2 + 56)) : (v5 = 0), v5 && *(a1 + 130) == *(a2 + 130)))
  {
    v6 = *(a1 + 131) ^ *(a2 + 131) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_20A50(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  return sub_1F168(a1, a2, 1);
}

uint64_t sub_20DE0(void *a1)
{
  v2 = [a1 applicationState];
  if (([a1 isWebAppPlaceholder] & 1) == 0 && ((objc_msgSend(v2, "isPlaceholder") & 1) != 0 || objc_msgSend(a1, "isSystemPlaceholder") || objc_msgSend(v2, "isDowngraded")))
  {

    return 1;
  }

  else if ([a1 isWebAppPlaceholder] || (objc_msgSend(v2, "isInstalled") & 1) == 0)
  {

    return 2;
  }

  else
  {
    v3 = [v2 isValid];

    if (v3)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_20ED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_81AE8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1F3E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Application();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20FD0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2101C(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&unk_B8230, qword_88A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2108C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_210EC()
{
  v0 = type metadata accessor for PinnedFilesController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_3ACBC(_swiftEmptyArrayStorage);
  *(v3 + 24) = sub_3ADB4(_swiftEmptyArrayStorage);
  result = sub_80A98();
  qword_BCF68 = v3;
  return result;
}

uint64_t sub_21158()
{
  swift_getKeyPath();
  sub_22704();
  sub_80A68();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_211E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_22704();
  sub_80A68();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_21270(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_22704();
  sub_80A58();
}

uint64_t sub_2130C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_21374()
{
  swift_getKeyPath();
  sub_22704();
  sub_80A68();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_213FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_22704();
  sub_80A68();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_2148C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_22D18(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_22704();
    sub_80A58();
  }
}

uint64_t sub_215A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_2160C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  swift_getKeyPath();
  v32 = v2;
  sub_22704();
  sub_80A68();

  swift_beginAccess();
  v10 = *(v2 + 16);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  v11 = *(v3 + 16);

  v12 = sub_34BEC(a1);
  if ((v13 & 1) == 0)
  {

    goto LABEL_9;
  }

  v14 = (*(v10 + 56) + 16 * v12);
  v15 = *v14;
  v16 = v14[1];

  v18 = v16 - a2;
  if (__OFSUB__(v16, a2))
  {
    __break(1u);
  }

  else if ((v18 & 0x8000000000000000) == 0 || (v19 = __OFSUB__(0, v18), v18 = a2 - v16, !v19))
  {
    if (v18 < 10000000)
    {
      return v15;
    }

LABEL_9:
    swift_getKeyPath();
    v31 = v3;
    sub_80A68();

    swift_beginAccess();
    if (*(*(v3 + 24) + 16))
    {
      v20 = *(v3 + 24);

      sub_34BEC(a1);
      v22 = v21;

      if (v22)
      {
        return 0x8000000000000000;
      }
    }

    v23 = sub_81AB8();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = a1;
    v24[5] = v3;
    v24[6] = a2;
    v25 = a1;

    v26 = sub_222BC(0, 0, v9, &unk_88D78, v24);
    sub_2289C(v9);
    swift_getKeyPath();
    v30 = v3;
    sub_80A68();

    v30 = v3;
    swift_getKeyPath();
    sub_80A88();

    swift_beginAccess();
    v27 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v3 + 24);
    v15 = 0x8000000000000000;
    *(v3 + 24) = 0x8000000000000000;
    sub_37D18(v26, v25, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v29;
    swift_endAccess();
    v30 = v3;
    swift_getKeyPath();
    sub_80A78();

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_21A10, 0, 0);
}

uint64_t sub_21A10()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21B48;
  v3 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B8010, &qword_88D90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_21F04;
  v0[13] = &unk_AB5A8;
  v0[14] = v3;
  [v2 accumulatedSizeOfPinnedItemsInDomain:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_21B48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_21DA4;
  }

  else
  {
    v3 = sub_21C58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_21C58()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[23] != 0;
  v7 = sub_81AB8();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  sub_81A88();

  v8 = v4;
  v9 = sub_81A78();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = v2;
  *(v10 + 40) = v8;
  *(v10 + 48) = v5;
  *(v10 + 56) = v6;
  *(v10 + 64) = v3;
  sub_68AE4(0, 0, v1, &unk_88DA0, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21DA4()
{
  v1 = v0[23];
  swift_willThrow();

  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[23] != 0;
  v7 = sub_81AB8();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_81A88();

  v8 = v5;
  v9 = sub_81A78();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = v3;
  *(v10 + 40) = v8;
  *(v10 + 48) = 0;
  *(v10 + 56) = v6;
  *(v10 + 64) = v4;
  sub_68AE4(0, 0, v2, &unk_88DA0, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_21FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  sub_81A88();
  *(v8 + 72) = sub_81A78();
  v10 = sub_81A58();

  return _swift_task_switch(sub_22070, v10, v9);
}

uint64_t sub_22070()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v12 = *(v0 + 64);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);

  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  swift_getKeyPath();
  *(v0 + 16) = v5;
  sub_22704();
  sub_80A68();

  *(v0 + 16) = v5;
  swift_getKeyPath();
  sub_80A88();

  swift_beginAccess();
  v7 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_37E84(v6, v12, v4, isUniquelyReferenced_nonNull_native);
  *(v5 + 16) = v13;
  swift_endAccess();
  *(v0 + 16) = v5;
  swift_getKeyPath();
  sub_80A78();

  swift_getKeyPath();
  *(v0 + 16) = v5;
  v9 = v4;
  sub_80A68();

  *(v0 + 16) = v5;
  swift_getKeyPath();
  sub_80A88();

  swift_beginAccess();
  sub_251E8(0, v9);
  swift_endAccess();
  *(v0 + 16) = v5;
  swift_getKeyPath();
  sub_80A78();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_222BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_22904(a3, v27 - v11);
  v13 = sub_81AB8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2289C(v12);
  }

  else
  {
    sub_81AA8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_81A58();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_81958() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2255C()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC17StorageSettingsUI21PinnedFilesController___observationRegistrar;
  v4 = sub_80AA8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PinnedFilesController()
{
  result = qword_B7ED0;
  if (!qword_B7ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2265C()
{
  result = sub_80AA8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22704()
{
  result = qword_B8008;
  if (!qword_B8008)
  {
    type metadata accessor for PinnedFilesController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B8008);
  }

  return result;
}

uint64_t sub_22760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2148C(v4);
}

uint64_t sub_2278C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_227D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_16268;

  return sub_21970(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2289C(uint64_t a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22904(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22974()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_229AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22EB0;

  return sub_65474(a1, v5);
}

uint64_t sub_22A64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_16268;

  return sub_65474(a1, v5);
}

uint64_t sub_22B2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_22BD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22EB0;

  return sub_21FD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_22CB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22D18(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + 8 * v12);

    v15 = sub_34BEC(v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v15);

    v19 = sub_81AC8();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16[-1] - v6;
  v8 = sub_20A50(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = sub_20DE0(v8);
    v17 = sub_254C4();
    v11 = sub_26510(v16, a1, a2);
    v13 = v12;
    v14 = type metadata accessor for Application();
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      *(v13 + 64) = v10;
    }

    (v11)(v16, 0);
    sub_2588C(v17);
  }

  else
  {
    v16[0] = sub_254C4();
    sub_355EC(a1, a2, v7);
    sub_14FD4(v7, &qword_B7E50, &qword_8A3F0);
    sub_2588C(v16[0]);
  }
}

void sub_23040(uint64_t a1, unint64_t a2)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v46[-1] - v6;
  v8 = type metadata accessor for Application();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v46[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v46[-1] - v15;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    return;
  }

  v45 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  v17 = v46[0];
  v18 = v46[0][2];
  if (!v18)
  {
LABEL_11:

    (*(v9 + 56))(v16, 1, 1, v8);
    sub_14FD4(v16, &qword_B7E50, &qword_8A3F0);
    return;
  }

  v19 = 0;
  while (1)
  {
    if (v19 >= v17[2])
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_18;
    }

    sub_208C8(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v12);
    v20 = *v12 == a1 && v12[1] == a2;
    if (v20 || (sub_81E18() & 1) != 0)
    {
      break;
    }

    ++v19;
    sub_2095C(v12);
    if (v18 == v19)
    {
      goto LABEL_11;
    }
  }

  sub_20F68(v12, v16);
  (*(v9 + 56))(v16, 0, 1, v8);
  sub_14FD4(v16, &qword_B7E50, &qword_8A3F0);
  v21 = objc_allocWithZone(IXApplicationIdentity);
  v22 = sub_818E8();
  v23 = [v21 initWithBundleIdentifier:v22];

  if (v23)
  {
    v24 = [objc_allocWithZone(IXUninstallOptions) init];
    if (v24)
    {
      v25 = v24;
      [v24 setWaitForDeletion:1];
      [v25 setShowArchiveOption:0];
      [v25 setRequestUserConfirmation:1];
      v47 = sub_254C4();
      v26 = sub_26510(v46, a1, a2);
      v28 = v27;
      if (!(*(v9 + 48))(v27, 1, v8))
      {
        *(v28 + 64) = 4;
      }

      (v26)(v46, 0);
      sub_2588C(v47);
      v29 = v45;
      sub_81A98();
      v30 = sub_81AB8();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v23;
      v32[5] = v25;
      v32[6] = a1;
      v32[7] = a2;
      v32[8] = v31;
      v33 = v23;
      v34 = v25;

      sub_222BC(0, 0, v29, &unk_88E00, v32);

      sub_14FD4(v29, &unk_B8240, &qword_88F50);
    }

    else
    {
      if (qword_B7850 != -1)
      {
        swift_once();
      }

      v40 = sub_80BC8();
      sub_19818(v40, qword_BCF70);

      v41 = sub_80BB8();
      v42 = sub_81B18();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46[0] = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_34588(a1, a2, v46);
        _os_log_impl(&dword_0, v41, v42, "Unable to create uninstall options for %s", v43, 0xCu);
        sub_20FD0(v44);
      }
    }

    return;
  }

  if (qword_B7850 != -1)
  {
    goto LABEL_28;
  }

LABEL_18:
  v35 = sub_80BC8();
  sub_19818(v35, qword_BCF70);

  v36 = sub_80BB8();
  v37 = sub_81B18();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_34588(a1, a2, v46);
    _os_log_impl(&dword_0, v36, v37, "Unable to create app identity for %s", v38, 0xCu);
    sub_20FD0(v39);
  }
}

uint64_t sub_23740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  return _swift_task_switch(sub_23768, 0, 0);
}

uint64_t sub_23768()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_238A4;
  v4 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B8020, &qword_88E08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_21F04;
  v0[13] = &unk_AB648;
  v0[14] = v4;
  [v3 uninstallAppWithIdentity:v2 options:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_238A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_23B1C;
  }

  else
  {
    v3 = sub_239B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_239B4()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    sub_81A88();
    v0[26] = sub_81A78();
    v4 = sub_81A58();

    return _swift_task_switch(sub_23AA0, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23AA0()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[21];
  v3 = v0[22];

  sub_22EB4(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23B1C()
{
  v22 = v0;
  v1 = v0[24];
  swift_willThrow();
  if (qword_B7850 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[22];
  v4 = sub_80BC8();
  sub_19818(v4, qword_BCF70);

  swift_errorRetain();
  v5 = sub_80BB8();
  v6 = sub_81B18();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v10 = v0[21];
    v9 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_34588(v10, v9, &v21);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_0, v5, v6, "Error while uninstalling %s : %@", v11, 0x16u);
    sub_14FD4(v12, &qword_B7BA8, &qword_8A5F0);

    sub_20FD0(v13);
  }

  else
  {
  }

  v15 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    sub_81A88();
    v0[26] = sub_81A78();
    v18 = sub_81A58();

    return _swift_task_switch(sub_23AA0, v18, v17);
  }

  else
  {
    v19 = v0[1];

    return v19();
  }
}

void sub_23DDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v38[-1] - v6;
  v8 = type metadata accessor for Application();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v38[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v38[-1] - v15;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    return;
  }

  v37 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  v17 = v38[0];
  v18 = v38[0][2];
  if (!v18)
  {
LABEL_11:

    (*(v9 + 56))(v16, 1, 1, v8);
    sub_14FD4(v16, &qword_B7E50, &qword_8A3F0);
    return;
  }

  v19 = 0;
  while (1)
  {
    if (v19 >= v17[2])
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_17;
    }

    sub_208C8(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v12);
    v20 = *v12 == a1 && v12[1] == a2;
    if (v20 || (sub_81E18() & 1) != 0)
    {
      break;
    }

    ++v19;
    sub_2095C(v12);
    if (v18 == v19)
    {
      goto LABEL_11;
    }
  }

  sub_20F68(v12, v16);
  (*(v9 + 56))(v16, 0, 1, v8);
  sub_14FD4(v16, &qword_B7E50, &qword_8A3F0);
  v21 = objc_allocWithZone(IXApplicationIdentity);
  v22 = sub_818E8();
  v23 = [v21 initWithBundleIdentifier:v22];

  if (v23)
  {
    v39 = sub_254C4();
    v24 = sub_26510(v38, a1, a2);
    v26 = v25;
    if (!(*(v9 + 48))(v25, 1, v8))
    {
      *(v26 + 64) = 5;
    }

    (v24)(v38, 0);
    v27 = v37;
    sub_2588C(v39);
    sub_81A98();
    v28 = sub_81AB8();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v23;
    v30[5] = a1;
    v30[6] = a2;
    v30[7] = v29;
    v31 = v23;

    sub_222BC(0, 0, v27, &unk_88E18, v30);

    sub_14FD4(v27, &unk_B8240, &qword_88F50);
    return;
  }

  if (qword_B7850 != -1)
  {
    goto LABEL_22;
  }

LABEL_17:
  v32 = sub_80BC8();
  sub_19818(v32, qword_BCF70);

  v33 = sub_80BB8();
  v34 = sub_81B18();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_34588(a1, a2, v38);
    _os_log_impl(&dword_0, v33, v34, "Unable to create app identity for %s", v35, 0xCu);
    sub_20FD0(v36);
  }
}

uint64_t sub_24360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return _swift_task_switch(sub_24384, 0, 0);
}

uint64_t sub_24384()
{
  v1 = v0[18];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_244C0;
  v3 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B8028, &qword_88E20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_249F8;
  v0[13] = &unk_AB698;
  v0[14] = v3;
  [v2 demoteAppToPlaceholderWithApplicationIdentity:v1 forReason:2 waitForDeletion:1 ignoreRemovability:1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_244C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_24738;
  }

  else
  {
    v3 = sub_245D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_245D0()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    sub_81A88();
    v0[24] = sub_81A78();
    v4 = sub_81A58();

    return _swift_task_switch(sub_246BC, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_246BC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];

  sub_22EB4(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24738()
{
  v22 = v0;
  v1 = v0[22];
  swift_willThrow();
  if (qword_B7850 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_80BC8();
  sub_19818(v4, qword_BCF70);

  swift_errorRetain();
  v5 = sub_80BB8();
  v6 = sub_81B18();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v10 = v0[19];
    v9 = v0[20];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_34588(v10, v9, &v21);
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&dword_0, v5, v6, "Error while demoting %s : %@", v11, 0x16u);
    sub_14FD4(v12, &qword_B7BA8, &qword_8A5F0);

    sub_20FD0(v13);
  }

  else
  {
  }

  v15 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    sub_81A88();
    v0[24] = sub_81A78();
    v18 = sub_81A58();

    return _swift_task_switch(sub_246BC, v18, v17);
  }

  else
  {
    v19 = v0[1];

    return v19();
  }
}