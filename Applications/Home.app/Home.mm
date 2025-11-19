void *sub_100003520(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100005A30();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_100003708(uint64_t a1, objc_class *a2)
{
  v4 = [*(a1 + 32) tableView];
  v3 = NSStringFromClass(a2);
  [v4 registerClass:a2 forCellReuseIdentifier:v3];
}

void sub_100003D2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id sub_100003D58(uint64_t a1)
{
  v2 = [*(a1 + 32) savedButtonBarItem];
  v3 = [*(a1 + 32) navigationItem];
  [v3 setRightBarButtonItem:v2];

  v4 = *(a1 + 32);

  return [v4 setSavedButtonBarItem:0];
}

void sub_100003DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  [v4 setSelectedHome:v3 userInitiated:1];

  v5 = [*(a1 + 32) delegate];
  [v5 addLocationViewController:*(a1 + 32) didFinishWithHome:v3];
}

void sub_100003E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[HFErrorHandler sharedHandler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003FA8;
  v8[3] = &unk_1000C1CF0;
  v8[4] = WeakRetained;
  [v5 handleError:v3 retryBlock:v8 cancelBlock:0];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating home %@ failed with error %@", buf, 0x16u);
  }
}

void sub_100004398(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 wallpaper];
  v4 = [v3 type];

  if (v4 == 1)
  {
    v5 = [v10 processedImage];
    v6 = [*(a1 + 32) wallpaperPickerViewController];
    v7 = [v10 wallpaper];
    [v6 setCustomWallpaper:v7 image:v5];
  }

  v8 = [*(a1 + 32) wallpaperPickerViewController];
  v9 = [v10 wallpaper];
  [v8 setSelectedWallpaper:v9 animated:*(a1 + 40)];
}

void sub_100004A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 processedImage];
  [*(a1 + 32) setImage:v5];
  v4 = [v3 wallpaper];

  LODWORD(v3) = [v4 type] != 2;
  [*(a1 + 32) setContentMode:2 * v3];
}

void sub_100004C84(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 originalImage];
  v4 = [HUWallpaperEditingViewController alloc];
  v5 = [v3 wallpaper];

  v6 = [v4 initWithWallpaper:v5 image:v7 delegate:*(a1 + 32)];
  [v6 setModalPresentationStyle:0];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void sub_1000053D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 originalImage];
  v4 = *(a1 + 32);
  v5 = [v3 wallpaper];

  [v4 presentWallpaperEditingViewControllerWithImage:v6 wallpaper:v5];
}

id sub_100005A30()
{
  if (qword_1000DAA40 != -1)
  {
    sub_10007F974();
  }

  v1 = qword_1000DAA48;

  return v1;
}

void sub_100005A74(id a1)
{
  v1 = qword_1000DAA48;
  qword_1000DAA48 = &off_1000CB3F8;
}

id sub_1000067C0(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 unsignedIntegerValue];

  return [HOOnboardingRootNavigationController stringForOnboardingState:v2];
}

void sub_100007954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id sub_10000797C(uint64_t a1)
{
  v2 = *(a1 + 48) + 1;
  v3 = [*(a1 + 32) onboardingViewControllers];
  v4 = [v3 count];

  if (v2 >= v4)
  {
LABEL_9:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v5 = [*(a1 + 32) onboardingViewControllers];
      v6 = [v5 objectAtIndexedSubscript:v2];

      if (*(a1 + 56) != 1)
      {
        break;
      }

      if (objc_opt_respondsToSelector())
      {
        v7 = [v6 segmentIdentifier];
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 40);
      if (!v8 || ([v8 isEqualToString:v7] & 1) == 0)
      {

        break;
      }

      ++v2;
      v9 = [*(a1 + 32) onboardingViewControllers];
      v10 = [v9 count];

      if (v2 >= v10)
      {
        goto LABEL_9;
      }
    }
  }

  return v6;
}

id sub_100007A9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] != 32)
  {
    goto LABEL_4;
  }

  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 homeManager];
  v6 = [*(a1 + 32) name];
  v7 = [v5 hf_homeForName:v6];

  if (v7)
  {
    v8 = [NAFuture futureWithResult:v7];
  }

  else
  {
LABEL_4:
    v8 = [NAFuture futureWithError:v3];
  }

  return v8;
}

void sub_100007B84(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  [v4 setSelectedHome:v8 userInitiated:1];

  v5 = [v8 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:1];
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 homeManager];
  [v7 hf_enableEventLogOnboardingFlag];

  [WeakRetained _finishedOnboarding];
}

void sub_100007C48(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:HFErrorUserInfoOptionsKey];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 objectForKey:HFErrorUserInfoRetryBlockKey];

  v9 = +[HFErrorHandler sharedHandler];
  [v9 handleError:v3 retryBlock:v8 cancelBlock:0];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) name];
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating first home %@ failed with error %@", &v12, 0x16u);
  }
}

void sub_100007EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100007EBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 unsignedIntegerValue];

  v6 = [WeakRetained _viewControllerForState:v5];

  return v6;
}

void *sub_100008E30(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100009738();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_100009738()
{
  if (qword_1000DAA50 != -1)
  {
    sub_10007FB1C();
  }

  v1 = qword_1000DAA58;

  return v1;
}

void sub_10000977C(id a1)
{
  v1 = qword_1000DAA58;
  qword_1000DAA58 = &off_1000CB410;
}

void sub_10000A020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A044(uint64_t a1)
{
  v2 = +[HMFScheduler mainScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A114;
  v4[3] = &unk_1000C1FE0;
  objc_copyWeak(v5, (a1 + 32));
  v5[1] = *(a1 + 40);
  v3 = [v2 performBlock:v4];

  objc_destroyWeak(v5);
}

void sub_10000A114(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained itemManager];
  v3 = [v2 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];
}

id sub_10000A434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (!v7)
    {
      sub_10007FBBC(v5, v4);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) _generateShortcutItemForActionSetItem:v7];

  return v8;
}

void sub_10000A4E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  v4 = [v3 na_filter:&stru_1000C2048];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 32) itemManager];
  v7 = [v6 home];

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = @"HOHomeScreenQuickActionCreateSceneTitle";
    v10 = [v8 localizedStringForKey:@"HOHomeScreenQuickActionCreateSceneTitle" value:@"_" table:@"HOLocalizable"];

    if ([@"_" isEqualToString:v10])
    {
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = sub_10000B2DC();
      v12 = [v11 countByEnumeratingWithState:&v25 objects:buf count:16];
      if (v12)
      {
        v13 = v12;
        v23 = a1;
        v24 = v5;
        v14 = *v26;
LABEL_8:
        v15 = 0;
        while (1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          v17 = +[NSBundle mainBundle];
          v18 = [v17 localizedStringForKey:@"HOHomeScreenQuickActionCreateSceneTitle" value:@"HOHomeScreenQuickActionCreateSceneTitle" table:v16];

          if (![(__CFString *)v18 isEqualToString:@"HOHomeScreenQuickActionCreateSceneTitle"])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v25 objects:buf count:16];
            if (v13)
            {
              goto LABEL_8;
            }

            v18 = @"_";
            break;
          }
        }

        a1 = v23;
        v5 = v24;
      }

      else
      {
        v18 = @"_";
      }

      v10 = v18;
    }

    if ([@"_" isEqualToString:v10])
    {
      NSLog(@"Sensitive key '%@' not found!", @"HOHomeScreenQuickActionCreateSceneTitle");
    }

    else
    {
      v9 = v10;
    }

    v19 = [UIApplicationShortcutIcon iconWithType:3];
    v20 = [[UIApplicationShortcutItem alloc] initWithType:@"HOHomeScreenQuickActionCreateSceneType" localizedTitle:v9 localizedSubtitle:0 icon:v19 userInfo:0];
    [v5 addObject:v20];
  }

  v21 = [*(a1 + 32) application];
  [v21 setShortcutItems:v5];

  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updated home screen quick actions: %@", buf, 0xCu);
  }
}

BOOL sub_10000A800(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10000AB1C(uint64_t a1)
{
  v14[0] = @"HOHomeScreenQuickActionActionSetIdentifierKey";
  v14[1] = @"HOHomeScreenQuickActionHomeIdentifierKey";
  v2 = *(a1 + 40);
  v15[0] = *(a1 + 32);
  v15[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v4 = [*(a1 + 48) latestResults];
  v5 = [v4 objectForKeyedSubscript:HFResultDisplayIconDescriptorKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(@"All scene icon descriptors should be images. This scene's icon descriptor is: %@", v5);
  }

  v6 = [v5 identifier];
  v7 = [UIImage _systemImageNamed:v6];

  if (!v7)
  {
    v8 = [v5 identifier];
    NSLog(@"Could not find icon image for descriptor with identifier %@!", v8);
  }

  v9 = [SBSApplicationShortcutCustomImageIcon alloc];
  v10 = UIImagePNGRepresentation(v7);
  v11 = [v9 initWithImageData:v10 dataType:0 isTemplate:1];

  v12 = [[UIApplicationShortcutIcon alloc] initWithSBSApplicationShortcutIcon:v11];
  v13 = [[UIApplicationShortcutItem alloc] initWithType:@"HOHomeScreenQuickActionExecuteSceneType" localizedTitle:*(a1 + 56) localizedSubtitle:0 icon:v12 userInfo:v3];
  [*(a1 + 64) finishWithResult:v13];
}

id sub_10000AF58(id *a1, void *a2)
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000B1B8;
  v21[3] = &unk_1000C20C0;
  v4 = (a1 + 4);
  v22 = a1[4];
  v5 = [a2 na_firstObjectPassingTest:v21];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 actionSets];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000B214;
    v19 = &unk_1000C20E8;
    v20 = a1[6];
    v8 = [v7 na_firstObjectPassingTest:&v16];

    if (v8)
    {
      v9 = [v6 hf_characteristicValueManager];
      v10 = [v9 executeActionSet:v8];

      [a1[7] showHomeDashboardCellForActionSet:v8 executeActionSetFuture:v10];
    }

    else
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10007FC64(a1, a1 + 6);
      }

      v14 = [NSError hf_errorWithCode:30, v16, v17, v18, v19];
      v10 = [NAFuture futureWithError:v14];
    }

    v12 = v20;
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007FCD4(a1, v4);
    }

    v12 = [NSError hf_errorWithCode:30];
    v10 = [NAFuture futureWithError:v12];
  }

  return v10;
}

id sub_10000B1B8(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id sub_10000B214(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id sub_10000B2DC()
{
  if (qword_1000DAA60 != -1)
  {
    sub_10007FD44();
  }

  v1 = qword_1000DAA68;

  return v1;
}

void sub_10000B320(id a1)
{
  v1 = qword_1000DAA68;
  qword_1000DAA68 = &off_1000CB440;
}

void sub_10000B350(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_10000C210()
{
  if (qword_1000DAA70 != -1)
  {
    sub_10007FD58();
  }

  v1 = qword_1000DAA78;

  return v1;
}

void sub_10000C254(id a1)
{
  v1 = qword_1000DAA78;
  qword_1000DAA78 = &off_1000CB458;
}

void sub_10000C418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C43C(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Home preferences changed; reloading state", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadState];
}

void sub_10000C594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C5B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadStateWithInvitation:0 home:v3];
}

void sub_10000C70C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000C730(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadStateWithInvitation:*(a1 + 32) home:v3];
}

void sub_10000D330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000D354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateOnboardingCompleteFutureForNewPresentationState:*(a1 + 56)];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 56);
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "desired onboarding state: %lu", &v9, 0xCu);
  }

  v5 = *(a1 + 56);
  if (v5 == 3)
  {
    v6 = [WeakRetained _presentOnboardingWithStates:*(a1 + 32) withHome:*(a1 + 40)];
  }

  else if (v5 == 2)
  {
    v6 = [WeakRetained _presentDataSyncingControllerWithState:*(a1 + 64)];
  }

  else
  {
    if (v5 == 1)
    {
      [WeakRetained _presentiCloudDisabledControllerWithState:*(a1 + 64) andStatus:*(a1 + 72)];
    }

    else
    {
      +[NAFuture futureWithNoResult];
    }
    v6 = ;
  }

  v7 = v6;

  return v7;
}

void sub_10000D570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10000D594(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatcher];
  v5 = [v4 homeFuture];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D690;
  v8[3] = &unk_1000C21E0;
  objc_copyWeak(&v9, (a1 + 40));
  v6 = [v5 addCompletionBlock:v8];
  objc_destroyWeak(&v9);

  return v6;
}

void sub_10000D690(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HOOnboardingRootNavigationController onboardingStatesForHome:v3];
  v6 = [WeakRetained pendingHomeIDsFromInvitations];
  v7 = [HOOnboardingRootNavigationController onboardingStatesForHome:v3 pendingHomeIDsFromInvitations:v6];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    v10 = [v7 count];
    v11 = @"will not";
    if (!v10)
    {
      v11 = @"will";
    }

    v13 = 134218242;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remaining App Onboarding states = %lu, %@ start feature onboarding", &v13, 0x16u);
  }

  if (![v7 count])
  {
    v12 = [WeakRetained delegate];
    [v12 appOnboardingWillFinishForStateController:WeakRetained];
  }
}

void sub_10000EE50(uint64_t a1)
{
  [*(a1 + 32) _checkForAppOnboardingWillFinish];
  v2 = [*(a1 + 32) onboardingCompleteFuture];
  [v2 finishWithNoResult];
}

id sub_10000F08C(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) homeUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_10000F9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 handleFailureInFunction:v5 file:a4 lineNumber:54 description:?];
}

void *sub_100010644(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_1000130D8();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_10001082C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = HFLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained invitation];
      v4 = [v3 hf_prettyDescription];
      v5 = [WeakRetained invitation];
      v10 = 136315650;
      v11 = "[HOOnboardingIncomingInvitationViewController invitationResponseController:stateDidChange:]_block_invoke";
      v12 = 2112;
      v13 = v4;
      v14 = 1024;
      v15 = [v5 isInviteeRestrictedGuest];
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%s) Two minutes time out reached for handling invitation. invitation = %@. isInviteeRestrictedGuest = %{BOOL}d", &v10, 0x1Cu);
    }

    v6 = [WeakRetained incomingInvitationDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [NSError hf_errorWithCode:39];
      v9 = [WeakRetained incomingInvitationDelegate];
      [v9 invitationViewControllerDidDecideLaterInvitation:WeakRetained error:v8];
    }

    else
    {
      v8 = [WeakRetained incomingInvitationDelegate];
      [v8 invitationViewControllerDidDecideLaterInvitation:WeakRetained];
    }
  }
}

void sub_10001159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a27);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_100011600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped ignore on the action sheet", &v5, 0x16u);
  }

  [WeakRetained _ignoreInvitation:0];
}

void sub_1000116EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped report on the action sheet", &v5, 0x16u);
  }

  [WeakRetained _reportJunk:0];
}

void sub_1000117D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "[HOOnboardingIncomingInvitationViewController _ignoreOrReportAlert:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button '%@' from alert", &v6, 0x16u);
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

void sub_1000124D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a27);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_100012538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped Accept on the alert. Finally / really / accepting invitation.", &v5, 0x16u);
  }

  [WeakRetained _reallyAcceptInvitation];
}

void sub_100012620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped Ignore and Report on the alert", &v5, 0x16u);
  }

  [WeakRetained _reportJunk:0];
}

void sub_10001270C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[HOOnboardingIncomingInvitationViewController _acceptInvitation]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%{public}@' from the alert popup", &v5, 0x16u);
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

id sub_1000130D8()
{
  if (qword_1000DAA80 != -1)
  {
    sub_10007FDF4();
  }

  v1 = qword_1000DAA88;

  return v1;
}

void sub_10001311C(id a1)
{
  v1 = qword_1000DAA88;
  qword_1000DAA88 = &off_1000CB488;
}

void *sub_1000134E8(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100013EC0();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_100013EC0()
{
  if (qword_1000DAA90 != -1)
  {
    sub_10007FE08();
  }

  v1 = qword_1000DAA98;

  return v1;
}

void sub_100013F04(id a1)
{
  v1 = qword_1000DAA98;
  qword_1000DAA98 = &off_1000CB4A0;
}

id sub_100014198()
{
  if (qword_1000DAAA0 != -1)
  {
    sub_10007FE1C();
  }

  v1 = qword_1000DAAA8;

  return v1;
}

void sub_1000141DC(id a1)
{
  qword_1000DAAA8 = dispatch_queue_create("com.apple.Home.networkPathMonitorDispatchQueue", 0);

  _objc_release_x1();
}

void sub_10001421C(uint64_t a1, nw_path_t path)
{
  if (nw_path_get_status(path) == nw_path_status_satisfied)
  {
    v3 = v6;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v4 = sub_1000142E8;
  }

  else
  {
    v3 = v5;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v4 = sub_10001434C;
  }

  v3[2] = v4;
  v3[3] = &unk_1000C1CF0;
  v3[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v3);
}

id sub_1000142E8(uint64_t a1)
{
  if ([*(a1 + 32) currentConnectionIssueState] == 2)
  {
    v2 = +[HODiscoverWebViewManager sharedInstance];
    [v2 reloadWebViews];
  }

  v3 = *(a1 + 32);

  return [v3 _updateNetworkConnectionState:0];
}

void sub_100016168(uint64_t a1)
{
  v2 = +[HODiscoverWebViewManager sharedInstance];
  v3 = [*(a1 + 32) webView];
  v4 = [v2 getWebViewNavigationStateForWebView:v3];

  if (!v4)
  {
    v5 = [*(a1 + 32) webViewActivityIndicator];
    [v5 startAnimating];
  }
}

id sub_100016B2C()
{
  if (qword_1000DAAB0 != -1)
  {
    sub_10007FE30();
  }

  v1 = qword_1000DAAB8;

  return v1;
}

void sub_100016B70(id a1)
{
  v1 = qword_1000DAAB8;
  qword_1000DAAB8 = &off_1000CB4B8;
}

void sub_100016CB8(id a1)
{
  v1 = +[HUTipsManager sharedManager];
  [v1 warmUp];

  v2 = +[HUTipsManager sharedManager];
  [v2 donateAppLaunchEvent];
}

void sub_100016D20(id a1)
{
  +[HFUtilities warmUpStaticPreferences];

  +[HFAccessoryTypeGroup warmUp];
}

void sub_100017908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001792C(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "expirationHandler called for itemID = %@ - taskID = %lu", &v6, 0x16u);
  }

  return [*(a1 + 40) _endBackgroundTaskWithTaskIdentifier:*(*(*(a1 + 48) + 8) + 24)];
}

id sub_100017C78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _logAccessoryCountMetricsWithHomes:v4];
  [*(a1 + 32) _logUserAutomationNamingTypeProportions:v4];
  [*(a1 + 32) _logNonConfiguredAccessoryMetricsWithHomes:v4];

  v5 = *(a1 + 32);

  return [v5 _logNetworkSymptoms];
}

void sub_100017F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100017F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_allVisibleServices];
  v5 = [v3 accessories];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v6 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v6;
  v8[2] = sub_100018048;
  v8[3] = &unk_1000C24C8;
  v9 = v4;
  v7 = v4;
  [v5 na_each:v8];
}

void sub_100018048(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [v3 services];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000181D8;
  v9[3] = &unk_1000C24A0;
  v10 = *(a1 + 32);
  v11 = &v14;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  [v4 na_each:v9];

  if ((v15[3] & 1) == 0)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  if ([v3 hf_isCamera])
  {
    v5 = &OBJC_PROTOCOL___HFFavoritable;
    v6 = v3;
    if ([v6 conformsToProtocol:v5])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if ([v8 hf_effectiveIsFavorite])
    {
      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_1000181BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000181D8(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if ([v5 hf_isOnForContextType:2])
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    v3 = [v5 hf_isLegacyService];
    v4 = 64;
    if (v3)
    {
      v4 = 56;
    }

    ++*(*(*(a1 + v4) + 8) + 24);
  }
}

void sub_10001829C(id a1, HMHome *a2)
{
  v2 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(HMHome *)v2 accessories];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018510;
  v10[3] = &unk_1000C2558;
  v10[4] = &v11;
  v10[5] = &v15;
  v10[6] = &v19;
  [v3 na_each:v10];

  v23[0] = HFAnalyticsResumeSetupNonConfiguredAccessoryCountKey;
  v4 = [NSNumber numberWithUnsignedInteger:v20[3]];
  v24[0] = v4;
  v23[1] = HFAnalyticsResumeSetupNonConfiguredBridgeCountKey;
  v5 = [NSNumber numberWithUnsignedInteger:v16[3]];
  v24[1] = v5;
  v23[2] = HFAnalyticsResumeSetupNonConfiguredBridgedCountKey;
  v6 = [NSNumber numberWithUnsignedInteger:v12[3]];
  v24[2] = v6;
  v23[3] = HFAnalyticsDataHomeUUIDKey;
  v7 = [(HMHome *)v2 uniqueIdentifier];
  v8 = [v7 UUIDString];
  v24[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

  [HFAnalytics sendEvent:30 withData:v9];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void sub_1000184D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_100018510(void *a1, void *a2)
{
  v4 = a2;
  v3 = [v4 pendingConfigurationIdentifier];
  if ([v3 length])
  {
    if ([v4 isBridged])
    {
      ++*(*(a1[4] + 8) + 24);
    }

    if ([v4 hf_isBridge])
    {
      ++*(*(a1[5] + 8) + 24);
    }

    ++*(*(a1[6] + 8) + 24);
  }
}

BOOL sub_1000186D4(id a1, HMTrigger *a2)
{
  v2 = [(HMTrigger *)a2 configuredName];
  v3 = v2 != 0;

  return v3;
}

void sub_1000187C4(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 homes];
  v6 = [v4 na_flatMap:&stru_1000C25F8];

  v5 = [v6 na_map:&stru_1000C2678];
  if ([v5 count] && (objc_msgSend(v5, "hmf_isEmpty") & 1) == 0)
  {
    [*(a1 + 32) _submitMetricsSymptomsSummaryForSymptomsHandlers:v5];
    [*(a1 + 32) _submitMetricsSymptomsNoInteractionForAccessories:v6];
  }
}

NSArray *__cdecl sub_10001889C(id a1, HMHome *a2)
{
  v2 = a2;
  if ([(HMHome *)v2 homeLocationStatus]== 1)
  {
    v3 = [(HMHome *)v2 accessories];
    v4 = [v3 na_filter:&stru_1000C2638];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100018B3C(uint64_t a1, void *a2)
{
  v3 = [a2 symptoms];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018BDC;
  v4[3] = &unk_1000C26A0;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void sub_100018BDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = HFAnalyticsEventFieldNameAnySymptom;
  v5 = a2;
  [v3 setObject:&off_1000CB740 forKeyedSubscript:v4];
  v6 = [v5 type];

  v7 = v6 - 100;
  if (v6 - 100) <= 0xF && ((0xB00Fu >> v7))
  {
    v8 = *(a1 + 32);
    v9 = **(&off_1000C2728 + v7);

    [v8 setObject:&off_1000CB740 forKeyedSubscript:v9];
  }
}

void sub_100018CA4(id a1, HMAccessory *a2)
{
  v2 = a2;
  v3 = [(HMAccessory *)v2 symptomsHandler];
  v4 = [v3 hf_symptomsSortedByPriority];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    if ([(HMAccessory *)v2 hf_isHomePod])
    {
      [v6 setObject:&off_1000CB758 forKeyedSubscript:HFAnalyticsEventFieldNameAccessoryTypeEnum];
      v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 type]);
      [v6 setObject:v7 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomEnum];

      [v6 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameInteractionTypeTileTap];
      [v6 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameInteractionTypeLearnMoreButton];
      [v6 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameInteractionTypeWifiPicker];
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending HFAnalyticsEventTypeNetworkSymptomsInteraction with data=%@", &v9, 0xCu);
      }

      [HFAnalytics sendEvent:59 withData:v6];
    }
  }
}

void sub_100019310(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10001B71C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 176));
  _Unwind_Resume(a1);
}

id sub_10001B758(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

id sub_10001B7A0(id *a1, void *a2)
{
  v3 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10001BC84;
  v41 = sub_10001BC94;
  v42 = 0;
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10001BC9C;
  v34 = &unk_1000C27B0;
  v36 = &v37;
  v35 = a1[4];
  v4 = [v3 na_firstObjectPassingTest:&v31];
  if (v4)
  {
    if ([v38[5] isBridged])
    {
      v5 = [v38[5] hf_owningBridgeAccessory];
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        v8 = v38[5];
        v9 = [v5 deviceIdentifier];
        *buf = 138413058;
        v44 = v7;
        v45 = 2112;
        v46 = v8;
        v47 = 2112;
        v48 = v5;
        v49 = 2112;
        v50 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to reprovision device for deviceIdentifier %@. Corresponding accessory %@ is a bridged accessory. Opening its bridge %@ with deviceIdentifier %@ instead.", buf, 0x2Au);
      }

      v10 = v38[5];
      v38[5] = v5;
    }

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v38[5] hf_prettyDescription];
      v13 = [v4 hf_prettyDescription];
      *buf = 138412546;
      v44 = v12;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to reprovision accessory %@ in home %@.", buf, 0x16u);
    }

    v14 = [a1[5] navigator];
    v15 = [v14 showAccessory:v38[5] secondaryDestination:1];
LABEL_19:
    v25 = v15;

    goto LABEL_20;
  }

  if ([HFUtilities supportsAccessorySetup:v31])
  {
    v16 = +[HFHomeKitDispatcher sharedDispatcher];
    v17 = [v16 homeManager];
    v18 = [NSUUID alloc];
    v19 = [a1[6] valueForParameter:HFURLComponentsHome];
    v20 = [v18 initWithUUIDString:v19];
    v21 = [v17 hf_homeWithIdentifier:v20];
    v22 = v21;
    if (v21)
    {
      v14 = v21;
    }

    else
    {
      v26 = +[HFHomeKitDispatcher sharedDispatcher];
      v14 = [v26 home];
    }

    v27 = HFLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a1[4];
      v29 = [v14 hf_prettyDescription];
      *buf = 138412546;
      v44 = v28;
      v45 = 2112;
      v46 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler request to reprovision device deviceIdentifier %@. Showing add new accessory UI for home %@ as no accessory found.", buf, 0x16u);
    }

    v15 = [HFAddAndSetupNewAccessoriesHandler addAndSetupNewAccessoriesForHome:v14 room:0];
    goto LABEL_19;
  }

  v23 = HFLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a1[4];
    *buf = 138412290;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler request to reprovision device deviceIdentifier %@. Ignoring as no accessory found and we do not support adding accessories.", buf, 0xCu);
  }

  v25 = +[NAFuture futureWithNoResult];
LABEL_20:

  _Block_object_dispose(&v37, 8);

  return v25;
}

void sub_10001BC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BC84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10001BC9C(uint64_t a1, void *a2)
{
  v3 = [a2 hf_accessoryWithDeviceIdentifier:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

id sub_10001BCF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138412802;
    v11 = WeakRetained;
    v12 = 2080;
    v13 = "[HOAppNavigationURLHandler _openURLComponents:]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) Opening user vc for %@", &v10, 0x20u);
  }

  v7 = [WeakRetained navigator];
  v8 = [v7 showUserDetails:v3];

  return v8;
}

id sub_10001BE1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 138413314;
    v12 = WeakRetained;
    v13 = 2080;
    v14 = "[HOAppNavigationURLHandler _openURLComponents:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ occurred looking for user with uniqueIdentifier %@. Showing settings for current home %@", &v11, 0x34u);
  }

  v8 = [WeakRetained navigator];
  v9 = [v8 showHomeSettingsForHome:*(a1 + 40)];

  return v9;
}

void sub_10001BF54(id a1, NAPromise *a2)
{
  v2 = a2;
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C004;
  block[3] = &unk_1000C1CF0;
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, &_dispatch_main_q, block);
}

id sub_10001C00C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler request from HUIS to show accessory details", buf, 2u);
    }

    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = [v7 allHomesFuture];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10001C3D0;
    v32[3] = &unk_1000C28B8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v34 = *(a1 + 40);
    v35 = v10;
    v33 = v9;
    v11 = [v8 flatMap:v32];

    goto LABEL_5;
  }

  if (v6)
  {
    v12 = [*(a1 + 32) URL];
    *buf = 138412290;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request for destination: %@.", buf, 0xCu);
  }

  v13 = [*(a1 + 32) destination];
  v14 = *(a1 + 32);
  if (v13 == 8)
  {
    v15 = [v14 URL];
    v16 = [v15 pathComponents];
    v17 = [v16 count];

    if (v17 < 2)
    {
      v7 = [*(a1 + 40) navigator];
      v11 = [v7 showAutomationTab];
      goto LABEL_6;
    }

    v18 = [NSUUID alloc];
    v19 = [*(a1 + 32) URL];
    v20 = [v19 pathComponents];
    v21 = [v20 objectAtIndexedSubscript:1];
    v7 = [v18 initWithUUIDString:v21];

    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request for trigger with identifier %@", buf, 0xCu);
    }

    v8 = [*(a1 + 40) navigator];
    v11 = [v8 presentConfirmationAlertForExecutingTriggerWithIdentifier:v7];
LABEL_5:

LABEL_6:
    goto LABEL_15;
  }

  v23 = [v14 homeKitObjectFuture];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001C99C;
  v29[3] = &unk_1000C28E0;
  v31 = *(a1 + 48);
  v28 = *(a1 + 32);
  v24 = v28.i64[0];
  v30 = vextq_s8(v28, v28, 8uLL);
  v25 = [v23 flatMap:v29];
  v11 = [v25 recover:&stru_1000C2920];

  v26 = [v11 addFailureBlock:&stru_1000C2960];
LABEL_15:

  return v11;
}

id sub_10001C3D0(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler [HFHomeKitDispatcher.sharedDispatcher allHomesFuture] completed", buf, 2u);
  }

  v3 = [NSUUID alloc];
  v4 = [*(a1 + 32) valueForParameter:HFURLComponentsHome];
  v5 = [v3 initWithUUIDString:v4];

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 homeManager];
  v8 = [v7 hf_homeWithIdentifier:v5];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v10 = [v11 home];
  }

  v12 = [*(a1 + 32) secondaryDestination];
  v13 = *(a1 + 48);
  if (v13 <= 19)
  {
    v14 = v12;
    if ((v13 - 6) >= 2 && v13 != 4)
    {
      goto LABEL_17;
    }

LABEL_21:
    v23 = [*(a1 + 32) URL];
    v24 = [v23 pathComponents];
    v25 = [v24 objectAtIndexedSubscript:1];

    v26 = [*(a1 + 40) navigator];
    v27 = [[NSUUID alloc] initWithUUIDString:v25];
    v17 = [v26 showCardForHomeKitIdentifier:v27 destination:*(a1 + 48) secondaryDestination:v14 inHome:v10];

    v28 = HFLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 48);
      *buf = 136315650;
      v41 = "[HOAppNavigationURLHandler _openURLComponents:]_block_invoke";
      v42 = 2048;
      v43 = v29;
      v44 = 2048;
      v45 = v14;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s Showing card destination: %lu, secondaryDestination: %lu", buf, 0x20u);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001C898;
    v33[3] = &unk_1000C2890;
    v30 = *(a1 + 48);
    v34 = v25;
    v36 = v30;
    v37 = v14;
    v35 = v10;
    v16 = v25;
    v31 = [v17 addCompletionBlock:v33];

    goto LABEL_24;
  }

  if (v13 != 20)
  {
    if (v13 == 21)
    {
      v14 = 1;
    }

    else
    {
      if (v13 != 29)
      {
LABEL_17:
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(a1 + 32) URL];
          *buf = 138412290;
          v41 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler got unhandled URL from HUIS: %@.", buf, 0xCu);
        }

        v20 = HFErrorDomain;
        v38 = NSURLErrorFailingURLErrorKey;
        v16 = [*(a1 + 32) URL];
        v39 = v16;
        v21 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v22 = [NSError errorWithDomain:v20 code:38 userInfo:v21];
        v17 = [NAFuture futureWithError:v22];

        goto LABEL_24;
      }

      v14 = 3;
    }

    goto LABEL_21;
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Home Hub Onboarding for home: %@", buf, 0xCu);
  }

  v16 = [*(a1 + 40) navigator];
  v17 = [v16 showHH2OnboardingFlowForHomeIfMigrationAvailable:v10];
LABEL_24:

  return v17;
}

void sub_10001C898(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[6];
    v9 = a1[7];
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138413570;
    v13 = v10;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler showCard for {UUID %@, destination %lu, secondaryDestination %lu, home %@}, result %@ error %@", &v12, 0x3Eu);
  }
}

id sub_10001C99C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v96 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler HomeKit object lookup succeeded with: %@.", buf, 0xCu);
  }

  switch(*(a1 + 48))
  {
    case 0:
    case 8:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x16:
    case 0x17:
    case 0x1ELL:
      v5 = HFLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 40) URL];
        *buf = 138412290;
        v96 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler unable to handle request for destination: %@.", buf, 0xCu);
      }

      v7 = [*(a1 + 40) URL];
      v90 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v9 = [NSError errorWithDomain:NSURLErrorDomain code:-1002 userInfo:v8];
      a1 = [NAFuture futureWithError:v9];

      goto LABEL_84;
    case 1:
      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showHomeInvitation:v3];
      goto LABEL_49;
    case 2:
      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showHome:v3];
      goto LABEL_49;
    case 3:
      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showRoom:v3];
      goto LABEL_49;
    case 4:
    case 0x1DLL:
      v7 = v3;
      v11 = HFLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 hf_prettyDescription];
        v13 = [v7 home];
        v14 = [v13 hf_prettyDescription];
        *buf = 138412546;
        v96 = v12;
        v97 = 2112;
        v98 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Accessory for accessory %@ in home %@.", buf, 0x16u);
      }

      v15 = [*(a1 + 32) navigator];
      if (*(a1 + 48) == 29)
      {
        v16 = 3;
      }

      else
      {
        v16 = [*(a1 + 40) secondaryDestination];
      }

      v20 = [v15 showAccessory:v7 secondaryDestination:v16];
      goto LABEL_41;
    case 5:
      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showMediaSystem:v3 secondaryDestination:{objc_msgSend(*(a1 + 40), "secondaryDestination")}];
      goto LABEL_49;
    case 6:
      v7 = v3;
      v15 = [v7 accessory];
      v46 = HFLogForCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v7 hf_prettyDescription];
        v48 = [v15 hf_prettyDescription];
        v49 = [v15 home];
        v50 = [v49 hf_prettyDescription];
        *buf = 138412802;
        v96 = v47;
        v97 = 2112;
        v98 = v48;
        v99 = 2112;
        v100 = v50;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Camera Profile for camera profile %@ accessory %@ in home %@.", buf, 0x20u);
      }

      if ([*(a1 + 40) secondaryDestination] == 1)
      {
        v30 = [*(a1 + 32) navigator];
        v31 = [v30 showSettingsForCameraProfile:v7];
LABEL_45:
        a1 = v31;
      }

      else
      {
        v54 = [*(a1 + 40) URL];
        v55 = [v54 absoluteString];
        v56 = +[HFCameraUtilities cameraFeedbackQueryString];
        v57 = [v55 containsString:v56];

        v58 = *(a1 + 32);
        if (v57)
        {
          v30 = [v58 navigator];
          v59 = [*(a1 + 40) valueForParameter:HFNotificationCameraClipKey];
          v60 = [v30 showFeedbackFlowForCameraClipID:v59 cameraProfile:v7];
LABEL_80:
          a1 = v60;
        }

        else
        {
          v30 = [v58 _startDateForURLComponents:*(a1 + 40)];
          v59 = [*(a1 + 32) _startDateForURLComponents:*(a1 + 40)];
          v86 = [*(a1 + 32) navigator];
          v87 = v86;
          if (v30 && v59)
          {
            a1 = [v86 showRoomContainedCamera:v7 startDate:v30 endDate:v59];
          }

          else
          {
            v88 = [*(a1 + 40) valueForParameter:HFNotificationCameraClipKey];
            a1 = [v87 showCameraProfile:v7 clipID:v88];
          }
        }
      }

      goto LABEL_83;
    case 7:
      v7 = v3;
      v15 = [v7 accessory];
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v7 hf_prettyDescription];
        v27 = [v15 hf_prettyDescription];
        v28 = [v15 home];
        v29 = [v28 hf_prettyDescription];
        *buf = 138412802;
        v96 = v26;
        v97 = 2112;
        v98 = v27;
        v99 = 2112;
        v100 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Service for service %@ accessory %@ in home %@.", buf, 0x20u);
      }

      v30 = [*(a1 + 32) navigator];
      v31 = [v30 showService:v7 secondaryDestination:{objc_msgSend(*(a1 + 40), "secondaryDestination")}];
      goto LABEL_45;
    case 9:
      v32 = +[HFHomeKitDispatcher sharedDispatcher];
      v33 = [v32 homeManager];
      v34 = [NSUUID alloc];
      v35 = [*(a1 + 40) valueForParameter:HFURLComponentsHome];
      v36 = [v34 initWithUUIDString:v35];
      v37 = [v33 hf_homeWithIdentifier:v36];
      v38 = v37;
      if (v37)
      {
        v7 = v37;
      }

      else
      {
        v65 = +[HFHomeKitDispatcher sharedDispatcher];
        v7 = [v65 home];
      }

      v66 = [NSUUID alloc];
      v67 = [*(a1 + 40) valueForParameter:HFURLComponentsPersonManager];
      v68 = [v66 initWithUUIDString:v67];
      v69 = [v7 hf_personManagerWithIdentifier:v68];
      v70 = v69;
      if (v69)
      {
        v71 = v69;
      }

      else
      {
        v71 = [v7 personManager];
      }

      v15 = v71;

      objc_opt_class();
      v72 = v3;
      if (v72)
      {
        if (objc_opt_isKindOfClass())
        {
          v73 = v72;
        }

        else
        {
          v73 = 0;
        }

        v30 = v73;
        if (!v30)
        {
          sub_10007FD6C();
        }
      }

      else
      {
        v30 = 0;
      }

      v74 = HFLogForCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v96 = v30;
        v97 = 2112;
        v98 = v15;
        v99 = 2112;
        v100 = v7;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Presenting face recognition settings for person:%@ personManager:%@ home:%@", buf, 0x20u);
      }

      v59 = [*(a1 + 32) navigator];
      v60 = [v59 showFaceRecognitionSettingsForPerson:v30 personManager:v15 inHome:v7];
      goto LABEL_80;
    case 0xALL:
      v39 = +[HFHomeKitDispatcher sharedDispatcher];
      v40 = [v39 homeManager];
      v41 = [NSUUID alloc];
      v42 = [*(a1 + 40) valueForParameter:HFURLComponentsHome];
      v43 = [v41 initWithUUIDString:v42];
      v44 = [v40 hf_homeWithIdentifier:v43];
      v45 = v44;
      if (v44)
      {
        v7 = v44;
      }

      else
      {
        v75 = +[HFHomeKitDispatcher sharedDispatcher];
        v7 = [v75 home];
      }

      v76 = [NSUUID alloc];
      v77 = [*(a1 + 40) valueForParameter:HFURLComponentsCameraProfile];
      v78 = [v76 initWithUUIDString:v77];
      v15 = [v7 hf_cameraProfileWithIdentifier:v78];

      objc_opt_class();
      v79 = v3;
      if (v79)
      {
        if (objc_opt_isKindOfClass())
        {
          v80 = v79;
        }

        else
        {
          v80 = 0;
        }

        v30 = v80;
        if (!v30)
        {
          sub_10007FD6C();
        }
      }

      else
      {
        v30 = 0;
      }

      v81 = HFLogForCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v96 = v30;
        v97 = 2112;
        v98 = v15;
        v99 = 2112;
        v100 = v7;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Presenting face recognition settings for unknown person event:%@ cameraProfile:%@ home:%@", buf, 0x20u);
      }

      v59 = [*(a1 + 32) navigator];
      v60 = [v59 showFaceRecognitionSettingsForUnknownPersonEvent:v30 inHome:v7];
      goto LABEL_80;
    case 0xELL:
    case 0x13:
      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showSoftwareUpdateForHome:v3];
      goto LABEL_49;
    case 0x15:
      v7 = v3;
      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v7 hf_prettyDescription];
        v23 = [v7 home];
        v24 = [v23 hf_prettyDescription];
        *buf = 138412546;
        v96 = v22;
        v97 = 2112;
        v98 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Bridge Settings for accessory %@ in home %@.", buf, 0x16u);
      }

      v15 = [*(a1 + 32) navigator];
      v20 = [v15 showBridgeSettingsForAccessory:v7];
      goto LABEL_41;
    case 0x18:
      v53 = HFLogForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v3;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open User settings for Locks for home %@.", buf, 0xCu);
      }

      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showUserLockSettingsForHome:v3];
      goto LABEL_49;
    case 0x19:
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Locks Onboarding for home %@.", buf, 0xCu);
      }

      v7 = [*(a1 + 40) valueForParameter:HFURLLocksOnboardingTypeParameter];
      v18 = [*(a1 + 32) lockOnboardingTypeForString:v7];
      if (v18)
      {
        v19 = v18;
        v15 = [*(a1 + 32) navigator];
        v20 = [v15 showLocksOnboardingForHome:v3 onboardingType:v19];
        goto LABEL_41;
      }

      v61 = HFLogForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v7;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler unable to handle request for HFURLComponentsDestinationLocksOnboarding with type: %@.", buf, 0xCu);
      }

      v62 = NSURLErrorDomain;
      v93 = NSURLErrorFailingURLErrorKey;
      v15 = [*(a1 + 40) URL];
      v94 = v15;
      v63 = &v94;
      v64 = &v93;
      goto LABEL_91;
    case 0x1ALL:
      v51 = HFLogForCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v3;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Locks Firmware Setup for home %@.", buf, 0xCu);
      }

      v7 = [*(a1 + 40) valueForParameter:HFURLLocksOnboardingTypeParameter];
      if ([*(a1 + 32) lockOnboardingTypeForString:v7])
      {
        v15 = [*(a1 + 32) navigator];
        v20 = [v15 showLocksFirmwareSetupForHome:v3];
LABEL_41:
        a1 = v20;
      }

      else
      {
        v83 = HFLogForCategory();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v96 = v7;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler unable to handle request for HFURLComponentsDestinationLocksFirmwareUpdateSetup with type: %@.", buf, 0xCu);
        }

        v62 = NSURLErrorDomain;
        v91 = NSURLErrorFailingURLErrorKey;
        v15 = [*(a1 + 40) URL];
        v92 = v15;
        v63 = &v92;
        v64 = &v91;
LABEL_91:
        v84 = [NSDictionary dictionaryWithObjects:v63 forKeys:v64 count:1];
        v85 = [NSError errorWithDomain:v62 code:-1002 userInfo:v84];
        a1 = [NAFuture futureWithError:v85];
      }

LABEL_83:

LABEL_84:
LABEL_85:

      return a1;
    case 0x1BLL:
      v7 = v3;
      v52 = HFLogForCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v96 = v7;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handling request to open Drop In UI for accessory %@.", buf, 0xCu);
      }

      v15 = [*(a1 + 32) navigator];
      v30 = [v7 home];
      v31 = [v15 showDropInUI:v7 home:v30];
      goto LABEL_45;
    case 0x1CLL:
      v7 = [*(a1 + 32) navigator];
      v10 = [v7 showDefaultAccountForHome:v3];
LABEL_49:
      a1 = v10;
      goto LABEL_84;
    default:
      goto LABEL_85;
  }
}

void sub_10001D9CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10007FF7C(v2, v3);
  }
}

id sub_10001DC38(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler opened application URL: %@.", &v7, 0xCu);
    }

    return [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007FFF4(a1, v6);
    }

    return [*(a1 + 40) finishWithError:*(a1 + 48)];
  }
}

void sub_10001DE04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [[HFURLComponents alloc] initWithURL:*(a1 + 32)];
    v5 = [v4 destination];
    if (v5 > 7 || ((1 << v5) & 0xD0) == 0)
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        v21 = v15;
        v22 = 2112;
        v23 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handle show notification settings (URL: %@) for home: %@.", buf, 0x16u);
      }

      v11 = [*(a1 + 40) navigator];
      v16 = [v11 showNotificationSettingsForHome:v3];
    }

    else
    {
      v7 = [v4 homeKitObjectFuture];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001E030;
      v17[3] = &unk_1000C29D8;
      v8 = v3;
      v9 = *(a1 + 40);
      v18 = v8;
      v19 = v9;
      v10 = [v7 addSuccessBlock:v17];

      v11 = v18;
    }
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handle show notification settings (missing objectURL) for home: %@.", buf, 0xCu);
    }

    v4 = [*(a1 + 40) navigator];
    v13 = [v4 showNotificationSettingsForHome:v3];
  }
}

void sub_10001E030(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &OBJC_PROTOCOL___HFUserNotificationServiceSettingsProviding;
  if ([v3 conformsToProtocol:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HOAppNavigationURLHandler handle show notification settings for object: %@ in home: %@.", buf, 0x16u);
    }

    v9 = [*(a1 + 40) navigator];
    v10 = [v9 showNotificationSettingsForHomeKitObject:v6 inHome:*(a1 + 32)];
  }

  else
  {
    NSLog(@"Received unexpected object %@ that does not support notifications!", v3);
    v9 = [*(a1 + 40) navigator];
    v11 = [v9 showNotificationSettingsForHome:*(a1 + 32)];
  }
}

id sub_10001E568(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    NSLog(@"Expected an HMService: %@", v4);
  }

  v7 = [*(a1 + 32) room];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 accessory];
  v10 = [v9 room];
  v11 = [v10 uniqueIdentifier];
  v12 = [v8 isEqual:v11];

  return v12;
}

void sub_10001E678(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = +[NSMutableDictionary dictionary];
  v4 = [v3 addedItems];

  v5 = [v4 count];
  if (!v5)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:HFResultHiddenKey];
  }

  v6 = [*(a1 + 32) room];

  if (v6)
  {
    v7 = +[NSMutableSet set];
    v8 = [*(a1 + 32) room];
    v9 = [v8 accessories];
    [v7 addObjectsFromArray:v9];

    v10 = [*(a1 + 32) room];
    [v7 addObject:v10];

    [v13 setObject:v7 forKeyedSubscript:HFResultDependentHomeKitObjectsKey];
  }

  v11 = *(a1 + 40);
  v12 = [HFItemUpdateOutcome outcomeWithResults:v13];
  [v11 finishWithResult:v12];
}

id sub_10001ED48(uint64_t a1)
{
  [*(a1 + 32) startedTest:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = HFHomeAppTabIdentifierTriggers;

  return [v2 selectTabWithIdentifier:v3];
}

void sub_10001F008(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 home];

  v6 = a1[4];
  v7 = a1[5];
  if (v5)
  {
    [v6 startedTest:v7];
    v8 = [a1[6] appNavigator];
    v9 = [v8 showHomeSettingsForHome:v5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001F1E0;
    v15[3] = &unk_1000C2AF0;
    v16 = v3;
    v17 = a1[4];
    v18 = a1[5];
    v19 = a1[7];
    v10 = [v9 addSuccessBlock:v15];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001F4BC;
    v12[3] = &unk_1000C2AC8;
    v13 = a1[4];
    v14 = a1[5];
    v11 = [v10 addFailureBlock:v12];
  }

  else
  {
    [v6 failedTest:v7 withFailure:@"Invalid home"];
  }
}

void sub_10001F1E0(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[HOAppDelegate(PerformanceTests) _runScrollHomeSettingsTestWithApplication:options:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%s) Succeeded opening home settings", &v21, 0xCu);
  }

  objc_opt_class();
  v3 = [*(a1 + 32) topViewController];
  v4 = [v3 presentedViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    objc_opt_class();
    v7 = [v6 topViewController];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 tableView];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = [*(a1 + 56) valueForKey:@"iterations"];
        v15 = [v14 intValue];

        v16 = [*(a1 + 56) valueForKey:@"offset"];
        v17 = [v16 intValue];

        [v13 _performScrollTest:*(a1 + 48) iterations:v15 delta:v17];
      }

      else
      {
        v20 = HFLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000800A4(v9);
        }

        [*(a1 + 40) failedTest:*(a1 + 48) withFailure:@"editLocationTableView should be a scroll view"];
      }
    }

    else
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100080134();
      }

      [*(a1 + 40) failedTest:*(a1 + 48) withFailure:@"Unable to find edit location vc"];
    }
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000801D8();
    }

    [*(a1 + 40) failedTest:*(a1 + 48) withFailure:@"presentedNavController should be a navigationController"];
  }
}

void sub_10001F4BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [NSString stringWithFormat:@"(%s) Failed presenting home settings", "[HOAppDelegate(PerformanceTests) _runScrollHomeSettingsTestWithApplication:options:]_block_invoke"];
  [v1 failedTest:v2 withFailure:v3];
}

id sub_10001F530(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HOAppDelegate(PerformanceTests) _runScrollHomeSettingsTestWithApplication:options:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%s) Unable to open home settings", &v4, 0xCu);
  }

  return [*(a1 + 32) failedTest:*(a1 + 40)];
}

void sub_10001F7F0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 topViewController];

  v5 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v12 = v6;
    if (!v12)
    {
      sub_1000802EC();
    }
  }

  else
  {
    v12 = 0;
  }

  v7 = [v12 tableView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_100080380(a1);
  }

  v8 = [*(a1 + 40) valueForKey:@"iterations"];
  v9 = [v8 intValue];

  v10 = [*(a1 + 40) valueForKey:@"offset"];
  v11 = [v10 intValue];

  [v7 _performScrollTest:*(a1 + 48) iterations:v9 delta:v11];
}

void sub_10001FC2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 localizedDescription];
  [v2 failedTest:v3 withFailure:v4];
}

id sub_10001FF5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NAFuture);
  [*(a1 + 32) startedTest:*(a1 + 40)];
  v5 = *(a1 + 48);
  v6 = [v4 errorOnlyCompletionHandlerAdapter];
  [v5 removeRoom:v3 completionHandler:v6];

  return v4;
}

void sub_10001FFF4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 localizedDescription];
  [v2 failedTest:v3 withFailure:v4];
}

void sub_10002023C(id *a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 home];

  v4 = a1[4];
  v5 = a1[5];
  if (v3)
  {
    [v4 startedTest:v5];
    v6 = [a1[6] appNavigator];
    v7 = [v6 showHomeSettingsForHome:v3];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000203E4;
    v13[3] = &unk_1000C2BE0;
    v14 = a1[4];
    v15 = a1[5];
    v8 = [v7 addSuccessBlock:v13];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000203F0;
    v10[3] = &unk_1000C2AC8;
    v11 = a1[4];
    v12 = a1[5];
    v9 = [v8 addFailureBlock:v10];
  }

  else
  {
    [v4 failedTest:v5 withFailure:@"Invalid home"];
  }
}

void sub_1000205FC(id *a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 home];

  if (v3)
  {
    v4 = [a1[6] _networkRouterForTestingInHome:v3];
    v5 = a1[4];
    v6 = a1[5];
    if (v4)
    {
      [v5 startedTest:v6];
      v7 = [a1[6] appNavigator];
      v8 = [v7 showNetworkSettingsForHome:v3];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000207D4;
      v14[3] = &unk_1000C2BE0;
      v15 = a1[4];
      v16 = a1[5];
      v9 = [v8 addSuccessBlock:v14];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000207E0;
      v11[3] = &unk_1000C2AC8;
      v12 = a1[4];
      v13 = a1[5];
      v10 = [v9 addFailureBlock:v11];
    }

    else
    {
      [v5 failedTest:v6 withFailure:@"Invalid network router"];
    }
  }

  else
  {
    [a1[4] failedTest:a1[5] withFailure:@"Invalid home"];
  }
}

void sub_1000209EC(id *a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 home];

  if (v3)
  {
    v4 = [a1[6] _networkRouterForTestingInHome:v3];
    v5 = a1[4];
    v6 = a1[5];
    if (v4)
    {
      [v5 startedTest:v6];
      v7 = [a1[6] appNavigator];
      v8 = [v7 showNetworkSettingsForAccessory:v4 home:v3];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100020BC8;
      v14[3] = &unk_1000C2BE0;
      v15 = a1[4];
      v16 = a1[5];
      v9 = [v8 addSuccessBlock:v14];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100020BD4;
      v11[3] = &unk_1000C2AC8;
      v12 = a1[4];
      v13 = a1[5];
      v10 = [v9 addFailureBlock:v11];
    }

    else
    {
      [v5 failedTest:v6 withFailure:@"Invalid network router profile"];
    }
  }

  else
  {
    [a1[4] failedTest:a1[5] withFailure:@"Invalid home"];
  }
}

void sub_100020E04(id *a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 home];

  if (v3)
  {
    v4 = [a1[6] _networkRouterForTestingInHome:v3];
    if (v4)
    {
      v5 = [a1[6] _networkConfigurationProfileForTestingInHome:v3];
      v6 = a1[4];
      v7 = a1[5];
      if (v5)
      {
        [v6 startedTest:v7];
        v8 = [a1[6] appNavigator];
        v9 = [v8 showNetworkSettingsForNetworkConfigurationProfile:v5 home:v3];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100021018;
        v15[3] = &unk_1000C2BE0;
        v16 = a1[4];
        v17 = a1[5];
        v10 = [v9 addSuccessBlock:v15];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100021024;
        v12[3] = &unk_1000C2AC8;
        v13 = a1[4];
        v14 = a1[5];
        v11 = [v10 addFailureBlock:v12];
      }

      else
      {
        [v6 failedTest:v7 withFailure:@"Invalid network configuration profile"];
      }
    }

    else
    {
      [a1[4] failedTest:a1[5] withFailure:@"Invalid network router"];
    }
  }

  else
  {
    [a1[4] failedTest:a1[5] withFailure:@"Invalid home"];
  }
}

uint64_t sub_100021458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100021470(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 topViewController];

  v5 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (!v7)
    {
      sub_1000802EC();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  v11 = [v10 home];

  if (v11)
  {
    v12 = [*(a1 + 48) _cameraProfileForTestingInHome:v11 withUUID:*(a1 + 56)];
    if (v12)
    {
      v13 = [*(a1 + 48) appNavigator];
      v14 = [v13 showCameraProfile:v12 clipID:0];
    }

    else
    {
      [*(a1 + 32) failedTest:*(a1 + 40) withFailure:@"Invalid camera profile"];
      v14 = +[NAFuture futureWithNoResult];
    }
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40) withFailure:@"Invalid home"];
    v14 = +[NAFuture futureWithNoResult];
  }

  return v14;
}

id sub_1000215F8(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) ppt_cameraController];

  if (v2)
  {
    v3 = [*(*(*(a1 + 48) + 8) + 40) ppt_cameraController];
    v4 = [v3 ppt_clipsLoadedFuture];
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40) withFailure:@"The dashboard's camera controller is nil"];
    v4 = +[NAFuture futureWithNoResult];
  }

  return v4;
}

void sub_10002169C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 56) + 8) + 40) ppt_cameraController];
  v8 = [v2 ppt_clipCollectionView];

  if (v8)
  {
    v3 = [*(a1 + 48) valueForKey:@"iterations"];
    v4 = [v3 intValue];

    v5 = [*(a1 + 48) valueForKey:@"duration"];
    v6 = objc_alloc_init(NSNumberFormatter);
    [v6 setNumberStyle:1];
    v7 = [v6 numberFromString:v5];
    [v8 _performTranslationScrollTest:*(a1 + 40) duration:v4 iterations:1 scrollAxis:{objc_msgSend(v7, "intValue")}];
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40) withFailure:@"Failed to find clip collection view"];
  }
}

void sub_1000217C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 localizedDescription];
  [v2 failedTest:v3 withFailure:v4];
}

void sub_100021A04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 topViewController];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 itemManager];
    v8 = [v7 allDisplayedItems];
    v9 = [v8 na_firstObjectPassingTest:&stru_1000C2CC0];

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      [v10 startedTest:v11];
      v12 = [v6 _performTapActionForItem:v9 tappedArea:HUTileCellTappableAreaStateToggleButton];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100021CAC;
      v14[3] = &unk_1000C2CE8;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v13 = [v12 addCompletionBlock:v14];
    }

    else
    {
      [v10 failedTest:v11 withFailure:@"cannot found any light service item"];
    }
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40) withFailure:@"cannot find dashboardViewController"];
  }
}

BOOL sub_100021BA4(id a1, HFItem *a2)
{
  v2 = a2;
  if ([(HFItem *)v2 conformsToProtocol:&OBJC_PROTOCOL___HFAccessoryRepresentableItem])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [(HFItem *)v4 accessoryRepresentableObject];
    v7 = [v6 hf_containedServices];
    if ([v7 count] == 1)
    {
      v8 = [v6 hf_containedServices];
      v9 = [v8 allObjects];
      v10 = [v9 firstObject];
      v11 = [v10 serviceType];
      v12 = [v11 isEqualToString:HMServiceTypeLightbulb];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_100021CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    return [v5 failedTest:v6 withFailure:@"failed to tap light service item"];
  }

  else
  {
    return [v5 finishedTest:v6];
  }
}

void sub_100021EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 topViewController];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 itemManager];
    v8 = [v7 allDisplayedItems];
    v9 = [v8 na_firstObjectPassingTest:&stru_1000C2D08];

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v9)
    {
      [v10 startedTest:v11];
      v12 = [v6 _performTapActionForItem:v9 tappedArea:HUTileCellTappableAreaStateToggleButton];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000220B0;
      v14[3] = &unk_1000C2CE8;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v13 = [v12 addCompletionBlock:v14];
    }

    else
    {
      [v10 failedTest:v11 withFailure:@"cannot found any action set item"];
    }
  }

  else
  {
    [*(a1 + 32) failedTest:*(a1 + 40) withFailure:@"cannot find dashboardViewController"];
  }
}

BOOL sub_100022064(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1000220B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    return [v5 failedTest:v6 withFailure:@"failed to tap action set item"];
  }

  else
  {
    return [v5 finishedTest:v6];
  }
}

NAFuture *__cdecl sub_100022154(id a1, HMHome *a2)
{
  v2 = [(HMHome *)a2 hf_characteristicValueManager];
  v3 = [v2 firstReadCompleteFuture];

  return v3;
}

NAFuture *__cdecl sub_100022360(id a1, NSArray *a2)
{
  v2 = [(NSArray *)a2 objectAtIndexedSubscript:0];
  v3 = [NAFuture futureWithResult:v2];
  v4 = [NAScheduler schedulerWithDispatchQueue:&_dispatch_main_q];
  v5 = [v3 reschedule:v4];

  return v5;
}

NAFuture *__cdecl sub_100022404(id a1, UINavigationController *a2)
{
  v2 = a2;
  v3 = &OBJC_PROTOCOL___HUPreloadableViewController;
  if ([(UINavigationController *)v2 conformsToProtocol:v3])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(UINavigationController *)v2 topViewController];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___HUPreloadableViewController])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 hu_preloadContent];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100022554;
    v12[3] = &unk_1000C2DF0;
    v13 = v2;
    v10 = [v9 flatMap:v12];
  }

  else
  {
    v10 = [NAFuture futureWithResult:v2];
  }

  return v10;
}

NAFuture *__cdecl sub_100022568(id a1, UINavigationController *a2)
{
  v2 = a2;
  v3 = +[NAFuture futureWithNoResult];
  v4 = [(UINavigationController *)v2 topViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UINavigationController *)v2 topViewController];
    v7 = [v6 hu_performanceTestReadyFuture];

    v3 = v7;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022688;
  v11[3] = &unk_1000C2E38;
  v12 = v2;
  v8 = v2;
  v9 = [v3 flatMap:v11];

  return v9;
}

NAFuture *__cdecl sub_10002269C(id a1, id a2)
{
  v2 = a2;
  v3 = +[NAFuture futureWithNoResult];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 home];
  v6 = [v5 hf_characteristicValueManager];

  v7 = [v6 characteristicsWithPendingReads];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v6 firstReadCompleteFuture];

    v3 = v9;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000227E4;
  v13[3] = &unk_1000C2E38;
  v14 = v2;
  v10 = v2;
  v11 = [v3 flatMap:v13];

  return v11;
}

int64_t sub_100022868(id a1, HMAccessory *a2, HMAccessory *a3)
{
  v4 = a3;
  v5 = [(HMAccessory *)a2 name];
  v6 = [(HMAccessory *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_100022948(id a1, HMNetworkConfigurationProfile *a2, HMNetworkConfigurationProfile *a3)
{
  v4 = a3;
  v5 = [(HMNetworkConfigurationProfile *)a2 accessory];
  v6 = [v5 name];
  v7 = [(HMNetworkConfigurationProfile *)v4 accessory];

  v8 = [v7 name];
  v9 = [v6 compare:v8];

  return v9;
}

int64_t sub_100022A3C(id a1, HMAccessory *a2, HMAccessory *a3)
{
  v4 = a3;
  v5 = [(HMAccessory *)a2 name];
  v6 = [(HMAccessory *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100022BD0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100080538(v2, v3);
    }
  }
}

void sub_100022DD8(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 finishedTest:*(a1 + 32)];
}

id *sub_100023024(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] finishWithNoResult];
  }

  return result;
}

void sub_100023068(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_1000230AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return [a12 handleFailureInFunction:v12 file:a4 lineNumber:54 description:?];
}

void *sub_100023400(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100023980();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_100023980()
{
  if (qword_1000DAAC0 != -1)
  {
    sub_1000805B0();
  }

  v1 = qword_1000DAAC8;

  return v1;
}

void sub_1000239C4(id a1)
{
  v1 = qword_1000DAAC8;
  qword_1000DAAC8 = &off_1000CB4D0;
}

void sub_100023A5C(id a1)
{
  v1 = +[HUViewControllerRegistry sharedInstance];
  [v1 registerViewControllerClass:objc_opt_class() forIdentifier:HUViewControllerClassIdentifierServiceLikeItemDetails];
}

void sub_100023C98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_100023CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100023DB0;
  v9[3] = &unk_1000C3030;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

NAFuture *sub_100023DB0(uint64_t a1)
{
  v1 = [*(a1 + 32) _selectHome:*(a1 + 40)];

  return +[NAFuture futureWithNoResult];
}

id sub_100023DF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100023ED0;
  v6[3] = &unk_1000C3030;
  v7 = *(a1 + 32);
  v8 = WeakRetained;
  v4 = [v3 flatMap:v6];

  return v4;
}

NAFuture *sub_100023ED0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [*(a1 + 40) _createHomeWithName:?];
  }

  else
  {
    v2 = +[HFHomeKitDispatcher sharedDispatcher];
    v3 = [v2 home];
    v4 = [v1 _selectHome:v3];
  }

  return +[NAFuture futureWithNoResult];
}

void sub_100024010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10002402C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024118;
  v9[3] = &unk_1000C3030;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

NAFuture *sub_100024118(uint64_t a1)
{
  v1 = [*(a1 + 32) _selectHome:*(a1 + 40)];

  return +[NAFuture futureWithNoResult];
}

void sub_1000242C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000242E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 rooms];
  v6 = [NSPredicate predicateWithFormat:@"name LIKE[cd] %@", *(a1 + 32)];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  if ([v7 count])
  {
    v8 = [v7 firstObject];
    v9 = [WeakRetained showRoom:v8];
    [NAFuture futureWithResult:v8];
  }

  else
  {
    [WeakRetained _createRoomWithName:*(a1 + 32) home:v3];
    v8 = [NSError hf_errorWithCode:30];
    [NAFuture futureWithError:v8];
  }
  v10 = ;

  return v10;
}

void sub_100024544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024560(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    v6 = [WeakRetained _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100024670;
    v8[3] = &unk_1000C30F0;
    v8[4] = v5;
    v9 = *(a1 + 32);
    v10 = v3;
    v7 = [v6 addCompletionBlock:v8];
  }

  else
  {
    [WeakRetained _showCreateOrEditActionSetViewControllerWithActionSetName:*(a1 + 32) home:v3];
  }
}

void sub_10002496C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100024990(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 hf_roomWithName:*(a1 + 32)];
  v6 = [WeakRetained _serviceWithName:*(a1 + 40) type:*(a1 + 48) home:v3 room:v5];

  if (v6)
  {
    [WeakRetained showService:v6 secondaryDestination:0];
  }

  else
  {
    +[NAFuture futureWithNoResult];
  }
  v7 = ;

  return v7;
}

void sub_100024C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100024CA4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v5 = [WeakRetained _selectHome:v3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100024DE8;
  v9[3] = &unk_1000C3190;
  v10 = v3;
  v11 = a1[4];
  v12 = a1[5];
  v13 = WeakRetained;
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v6 = v3;
  v7 = [v5 flatMap:v9];

  return v7;
}

id sub_100024DE8(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_roomWithName:*(a1 + 40)];
  v3 = v2;
  v4 = *(a1 + 48);
  if (!(v4 | v2))
  {
    [*(a1 + 56) showHomeForName:*(a1 + 64)];
    v5 = +[NAFuture futureWithNoResult];
    goto LABEL_15;
  }

  if (!v4)
  {
    v6 = [v2 hf_allCameraProfiles];
    if ([v6 count] > 1)
    {
      v10 = [*(a1 + 56) showRoom:v3];
      goto LABEL_13;
    }

    v4 = *(a1 + 48);
  }

  v6 = [*(a1 + 56) _cameraProfileWithName:v4 home:*(a1 + 32) room:v3];
  v7 = *(a1 + 56);
  if (v6)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v10 = [v7 showRoomContainedCamera:v6 startDate:*(a1 + 72) endDate:*(a1 + 80)];
LABEL_13:
    v5 = v10;
    goto LABEL_14;
  }

  v9 = [v7 _showRoom:v3 animated:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024F98;
  v12[3] = &unk_1000C3168;
  v13 = v6;
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v5 = [v9 flatMap:v12];

LABEL_14:
LABEL_15:

  return v5;
}

id sub_100024F98(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 presentCameraProfile:a1[4] startDate:a1[5] endDate:a1[6] animated:1];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalid attempt to display camera %@", &v9, 0xCu);
    }

    v4 = +[NAFuture futureWithNoResult];
  }

  v7 = v4;

  return v7;
}

void sub_1000251AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000251D0(uint64_t a1, void *a2)
{
  if (([a2 hf_shouldBlockCurrentUserFromHome] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained _selectTabWithIdentifier:HFHomeAppTabIdentifierHome animated:1];
    v4 = [v3 addCompletionBlock:&stru_1000C31F8];
  }
}

void sub_100025470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100025494(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 hf_allRooms];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000255D8;
  v11[3] = &unk_1000C3220;
  v12 = *(a1 + 32);
  v6 = [v5 na_firstObjectPassingTest:v11];

  if (v6)
  {
    v7 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = [v7 home];
    [v8 hf_setSelectedRoom:v6];

    [WeakRetained _showRoom:v6 animated:1];
  }

  else
  {
    +[NAFuture futureWithNoResult];
  }
  v9 = ;

  return v9;
}

id sub_1000255D8(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

NAFuture *__cdecl sub_10002581C(id a1, Class a2, id a3)
{
  v4 = a3;
  v5 = NSStringFromClass(a2);
  v6 = [NSString stringWithFormat:@"HOAppNavigator Class Mismatch. Expected %@, but got %@", v5, v4];

  v7 = [NSError hf_errorWithCode:-1 description:v6];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000805D8();
  }

  v9 = [NAFuture futureWithError:v7];

  return v9;
}

id sub_100025910(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[HOAppNavigator showCardForHomeKitIdentifier:destination:secondaryDestination:inHome:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, home has changed, _showHomeTabForHome", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) _showHomeTabForHome:*(a1 + 40) animated:1];
  }

  else
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[HOAppNavigator showCardForHomeKitIdentifier:destination:secondaryDestination:inHome:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, home has not changed, selectingCurrentTabAnimated", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) _selectCurrentTabAnimated:1];
  }

  return v6;
}

NAFuture *__cdecl sub_100025A50(id a1, Protocol *a2, id a3)
{
  v4 = a3;
  v5 = NSStringFromProtocol(a2);
  v6 = [NSString stringWithFormat:@"HOAppNavigator Nil Protocol. Expected %@, but got %@", v5, v4];

  v7 = [NSError hf_errorWithCode:-1 description:v6];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000805D8();
  }

  v9 = [NAFuture futureWithError:v7];

  return v9;
}

id sub_100025B44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[HOAppNavigator showCardForHomeKitIdentifier:destination:secondaryDestination:inHome:]_block_invoke";
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, navControlFuture completed %@", buf, 0x16u);
  }

  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = v5;
  if (v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  v13 = v5;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v8 = v14;

  if (!v8)
  {
    v20 = *(a1 + 48);
    v21 = objc_opt_class();
    v18 = (*(v20 + 16))(v20, v21, v13);
    goto LABEL_22;
  }

  v15 = [v8 navigationController];
  if (v15)
  {
    v16 = v15;

    v8 = v16;
LABEL_7:
    v9 = [v8 topViewController];
    if ([v9 conformsToProtocol:&OBJC_PROTOCOL___HUHomeKitObjectPresenting])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [NAFuture futureWithResult:v11];
    }

    else
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "[HOAppNavigator showCardForHomeKitIdentifier:destination:secondaryDestination:inHome:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s, We are not in a tab capable of presenting homekit object. Select Home tab.", buf, 0xCu);
      }

      v12 = [*(a1 + 32) _showHomeTabForHome:*(a1 + 40) animated:1];
    }

    v18 = v12;

    goto LABEL_22;
  }

  v22 = [NSString stringWithFormat:@"HOAppNavigator Error: No Navigation Controller found from View Controller: %@", v8];
  v23 = [NSError hf_errorWithCode:-1 description:v22];
  v24 = HFLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1000805D8();
  }

  v18 = [NAFuture futureWithError:v23];

LABEL_22:

  return v18;
}

id sub_100025E4C(void *a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[HOAppNavigator showCardForHomeKitIdentifier:destination:secondaryDestination:inHome:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, homeKitObjectPresentingFuture completed %@", &v11, 0x16u);
  }

  v5 = v3;
  v6 = &OBJC_PROTOCOL___HUHomeKitObjectPresenting;
  if ([v5 conformsToProtocol:v6])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v8 presentItemWithUUID:a1[4] destination:a1[6] secondaryDestination:a1[7] animated:1];
  }

  else
  {
    (*(a1[5] + 16))();
  }
  v9 = ;

  return v9;
}

id sub_1000260E4(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100026304;
  v14[3] = &unk_1000C3340;
  v15 = *(a1 + 40);
  v3 = [v2 na_any:v14];

  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 40) hf_prettyDescription];
      v7 = [*(a1 + 48) hf_prettyDescription];
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HOAppNavigator handling request to open Accessory for accessory %@. Open Bridge Settings for home %@.", buf, 0x16u);
    }

    v8 = [*(a1 + 56) showBridgeSettingsForAccessory:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      v9 = [*(a1 + 40) hf_prettyDescription];
      v10 = [*(a1 + 48) hf_prettyDescription];
      v11 = *(a1 + 64);
      *buf = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HOAppNavigator handling request to open Accessory for accessory %@ in home %@ with secondary destination %lu.", buf, 0x20u);
    }

    v8 = [*(a1 + 56) _showRoomContainedObject:*(a1 + 40) secondaryDestination:*(a1 + 64)];
  }

  v12 = v8;

  return v12;
}

id sub_100026304(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10002648C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000264A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100080640();
    }
  }

  else
  {
    v8 = [WeakRetained homePodProfileInstaller];
    v9 = [v6 rootViewController];
    [v8 showProfileInstallationFlowFromViewController:v9 withSenderURLString:*(a1 + 32)];
  }
}

void sub_100026660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_100026684(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _showLocationListWithHome:*(a1 + 32) customizationBlock:&stru_1000C33D0];

  return v3;
}

BOOL sub_1000269E0(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = [v2 isEqualToString:@"payload"];

  return v3;
}

void sub_100026A24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HULocalizedString();
  v5 = [NSError hf_errorWithCode:62 description:v4];

  if (*(a1 + 32))
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7 = [v6 homeManager];
    v8 = [v7 accessorySetupCoordinator];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100026B98;
    v10[3] = &unk_1000C3460;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v13 = v3;
    v14 = v5;
    [v8 createSetupAccessoryPayloadWithSetupPayloadURLString:v9 completionHandler:v10];
  }

  else
  {
    [v3 finishWithError:v5];
  }
}

void sub_100026B98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000806C4(a1);
    }

    [*(a1 + 48) finishWithError:*(a1 + 56)];
  }

  else
  {
    [*(a1 + 48) finishWithResult:a2];
  }
}

id sub_100026C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7 = [v6 allHomesFuture];
    v8 = [v7 isFinished];
    v9 = @"Not Done";
    if (v8)
    {
      v9 = @"Done";
    }

    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waiting for homeManager before opening the setup flow for URL: %@. (allHomesFuture = %@)", buf, 0x16u);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  v11 = [v10 allHomesFuture];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026E10;
  v15[3] = &unk_1000C34F0;
  v16 = v3;
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v12 = v3;
  v13 = [v11 addCompletionBlock:v15];

  return v13;
}

void sub_100026E10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];

  v7 = HFLogForCategory();
  v8 = v7;
  if (v4 || !v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100080748();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = a1[6];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "homeManager loaded. addAndSetupAccessoriesWithPayload: %@, payload string, %@, URL %@", &v12, 0x20u);
    }

    [v6 addAndSetupAccessoriesWithPayload:a1[4] completionHandler:&stru_1000C34C8];
  }
}

void sub_100026F5C(id a1, NSError *a2, NSArray *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSArray *)v5 hf_prettyDescription];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "addAndSetupAccessoriesWithPayload finished with error: %@, addedAccessories: %@", &v8, 0x16u);
  }
}

NAFuture *__cdecl sub_100027044(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 handleError:v2 operationType:HFOperationSetupAccessory options:0 retryBlock:0 cancelBlock:0];

  v4 = [NAFuture futureWithError:v2];

  return v4;
}

void sub_100027860(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 40);
  if ((v3 - 1) < 2)
  {
    v4 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessWalletKeySetupInHome:*(a1 + 32)];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (v3 == 3)
  {
    v4 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessPinCodeSetupInHome:*(a1 + 32)];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 homeManager];
  [v7 launchHomeUIServiceToResumeSetupWithUserInfo:v5 completionHandler:&stru_1000C3580];

  [v8 finishWithNoResult];
}

void sub_100027A44(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessFirmwareUpgradeSetupInHome:v2];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 homeManager];
  [v5 launchHomeUIServiceToResumeSetupWithUserInfo:v6 completionHandler:&stru_1000C35C8];

  [v3 finishWithNoResult];
}

void sub_100027C00(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 homeManager];

  if (![v5 isHH2MigrationAvailable] || (objc_msgSend(v5, "isHH2MigrationInProgress") & 1) != 0 || (objc_msgSend(v5, "hasOptedToHH2") & 1) != 0)
  {
    [v3 finishWithNoResult];
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 isHH2MigrationAvailable];
      v8 = [v5 isHH2MigrationInProgress];
      v9 = [v5 hasOptedToHH2];
      *buf = 67109888;
      v18 = 0;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[showHH2OnboardingFlowForHomeIfMigrationAvailable] Not showing HH2 migration flow because hh2MigrationAvailable = %{BOOL}d | hh2MigrationAvailable = %{BOOL}d | hh2MigrationInProgress = %{BOOL}d | optedToHH2 = %{BOOL}d", buf, 0x1Au);
    }
  }

  else
  {
    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = [v10 homeManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100027E4C;
    v12[3] = &unk_1000C3618;
    objc_copyWeak(&v15, &location);
    v13 = *(a1 + 40);
    v14 = v3;
    [v11 fetchDevicesWithCompletionHandler:v12];

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&location);
}

void sub_100027E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027E4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = HFLogForCategory();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000807C4();
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v14 = 136315650;
      v15 = "[HOAppNavigator showHH2OnboardingFlowForHomeIfMigrationAvailable:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Fetched devices:[%@] for home: %@", &v14, 0x20u);
    }

    v11 = *(a1 + 32);
    v12 = [WeakRetained currentViewController];
    v13 = [HUHomeFeatureOnboardingUtilities home:v11 onboardHomeHub2FromPresentingViewController:v12 devices:v5 usageOptions:0];

    [*(a1 + 40) finishWithNoResult];
  }
}

id sub_100028134(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[HOAppNavigator showDropInUI:home:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, home has changed, _showHomeTabForHome", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) _showHomeTabForHome:*(a1 + 40) animated:1];
  }

  else
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[HOAppNavigator showDropInUI:home:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s, home has not changed, selectingCurrentTabAnimated", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) _selectCurrentTabAnimated:1];
  }

  return v6;
}

void sub_100028274(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10008089C();
    }
  }

  else
  {
    v6 = [HUHomeControlServiceContext alloc];
    v7 = [*(a1 + 32) home];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) currentViewController];
    v10 = [v6 initWithServiceType:2 home:v7 accessory:v8 presentingViewController:v9];

    v11 = +[HUHomeControlServiceManager sharedInstance];
    [v11 launchServiceWithContext:v10];
  }
}

id sub_100028680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && ((objc_opt_class(), v4 = v3, isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0) ? (v6 = 0) : (v6 = v4), v7 = v6, v4, v7, (isKindOfClass & 1) != 0))
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Show camera profile:%@ for clip:%@.", &v16, 0x16u);
    }

    v10 = [*(a1 + 40) _showRoomContainedCamera:*(a1 + 32) forCameraClip:v4];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Show camera profile:%@ for missing clip with request clipID:%@.", &v16, 0x16u);
    }

    v10 = [*(a1 + 40) _showRoomContainedObject:*(a1 + 32) secondaryDestination:0];
  }

  v14 = v10;

  return v14;
}

id sub_100028A40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 canAskForUserFeedback];
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Display dashboard for camera %@", buf, 0xCu);
    }

    v8 = [*(a1 + 40) _showDashboardForRoomContainedObject:*(a1 + 32) animated:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100028BF0;
    v11[3] = &unk_1000C3668;
    v12 = v3;
    v13 = *(a1 + 32);
    v9 = [v8 flatMap:v11];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100080964(v3, a1);
    }

    v9 = +[NAFuture futureWithNoResult];
  }

  return v9;
}

id sub_100028BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 presentFeedbackFlowForCameraClip:*(a1 + 32) fromProfile:*(a1 + 40)];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalid attempt to display feedback flow for clip:%@ cameraProfile:%@", &v10, 0x16u);
    }

    v4 = +[NAFuture futureWithNoResult];
  }

  v8 = v4;

  return v8;
}

void sub_100028E04(uint64_t a1, void *a2)
{
  v3 = [a2 presentNetworkSettings:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028EB0;
  v5[3] = &unk_1000C36D8;
  v6 = *(a1 + 32);
  v4 = [v3 flatMap:v5];
}

void sub_100028F80(uint64_t a1, void *a2)
{
  v3 = [a2 presentNetworkSettings:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002902C;
  v5[3] = &unk_1000C36D8;
  v6 = *(a1 + 32);
  v4 = [v3 flatMap:v5];
}

void sub_10002910C(uint64_t a1, void *a2)
{
  v3 = [a2 presentBridgeSettings:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000291B8;
  v5[3] = &unk_1000C3700;
  v6 = *(a1 + 32);
  v4 = [v3 flatMap:v5];
}

id sub_1000291B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 home];
  v3 = [HUHomeHubsAndBridgesHelper presentBridgeDetailViewForAccessory:v1 withHome:v2];

  return v3;
}

void sub_1000293DC(id a1, HUEditLocationViewController *a2)
{
  v4 = a2;
  v2 = +[HFUserNotificationServiceTopic _cameraTopic];
  v3 = [(HUEditLocationViewController *)v4 presentNotificationSettingsForTopic:v2 animated:0];
}

void sub_10002955C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFUserNotificationServiceTopic _cameraTopic];
  v5 = [v3 presentNotificationSettingsForTopic:v4 animated:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029650;
  v7[3] = &unk_1000C3788;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = [v5 flatMap:v7];
}

void sub_100029748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFUserNotificationServiceTopic _cameraTopic];
  v5 = [v3 presentNotificationSettingsForTopic:v4 animated:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029828;
  v7[3] = &unk_1000C37D8;
  v8 = *(a1 + 32);
  v6 = [v5 flatMap:v7];
}

void sub_100029920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029944(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers animated:1];
  v2 = [v1 addCompletionBlock:&stru_1000C37F8];
}

void sub_1000299BC(id a1, UINavigationController *a2, NSError *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = [(UINavigationController *)v3 topViewController];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (!v7)
  {
    NSLog(@"Please verify that this code runs if you can add an automation.");
    v6 = 0;
  }

  [v6 showAddTriggerView];
}

void sub_100029CB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v5 home];
  [v2 _configureDashboardContextWithHome:v4 navigationController:v3 animated:1];
}

id sub_100029ED4(uint64_t a1)
{
  v2 = [*(a1 + 32) baseController];
  v3 = [v2 selectTabWithIdentifier:*(a1 + 40)];

  return v3;
}

id sub_100029FF0(uint64_t a1)
{
  v1 = [*(a1 + 32) baseController];
  v2 = [v1 selectCurrentTab];

  return v2;
}

id sub_10002A1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    [v5 setSelectedHome:*(a1 + 32) userInitiated:1];

    v4 = *(a1 + 32);
  }

  v6 = [NSNumber numberWithInt:v4 != v3];
  v7 = [NAFuture futureWithResult:v6];

  return v7;
}

uint64_t sub_10002A4AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &OBJC_PROTOCOL___HFShowInHomeDashboard;
  if ([v2 conformsToProtocol:v3])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && ([v5 hf_effectiveShowInHomeDashboard] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = &OBJC_PROTOCOL___HFFavoritable;
    if ([v7 conformsToProtocol:v8])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v6 = [v10 hf_effectiveIsFavorite];
  }

  return v6;
}

id sub_10002A66C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _selectHome:v4];
  [*(a1 + 32) _configureDashboardContextWithHome:*(a1 + 40) navigationController:v5 animated:*(a1 + 48)];
  objc_opt_class();
  v7 = [v5 topViewController];

  v8 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      sub_100080B4C();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

id sub_10002A8D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v7 = [v3 viewControllers];
    [v5 _configureDashboardContextWithRoom:v6 navigationController:v4 animated:{objc_msgSend(v7, "count") == 1}];
  }

  else
  {
    [*(a1 + 32) _configureDashboardContextWithRoom:*(a1 + 40) navigationController:v3 animated:0];
  }

  objc_opt_class();
  v8 = [v4 topViewController];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      sub_100080B4C();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

id sub_10002AAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Present camera from dashboard for clip:%@", &v17, 0xCu);
    }

    v8 = [v3 presentCameraProfile:*(a1 + 40) forCameraClip:*(a1 + 32) animated:1];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100080BD8(a1, v6, v9, v10, v11, v12, v13, v14);
    }

    v8 = +[NAFuture futureWithNoResult];
  }

  v15 = v8;

  return v15;
}

id sub_10002AD4C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 presentCameraProfile:a1[4] startDate:a1[5] endDate:a1[6] animated:1];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalid attempt to display camera %@", &v9, 0xCu);
    }

    v4 = +[NAFuture futureWithNoResult];
  }

  v7 = v4;

  return v7;
}

void sub_10002B184(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[UINavigationController alloc] initWithRootViewController:v3];

  [v6 setModalPresentationStyle:2];
  v4 = [*(a1 + 32) rootViewController];
  v5 = [v4 hu_presentPreloadableViewController:v6 animated:1];
}

void sub_10002B3EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id sub_10002B420(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B4F0;
  v7[3] = &unk_1000C3560;
  v8 = *(a1 + 32);
  v5 = [WeakRetained _showLocationListWithHome:v3 customizationBlock:v7];

  return v5;
}

id sub_10002B518(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) uniqueIdentifier];
    v11 = 138413314;
    v12 = WeakRetained;
    v13 = 2080;
    v14 = "[HOAppNavigator _showUser:customizationBlock:]_block_invoke_3";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ occurred looking for user with uniqueIdentifier %@. Showing settings for current home %@", &v11, 0x34u);
  }

  v9 = [WeakRetained _showLocationListWithHome:v6 customizationBlock:*(a1 + 40)];

  return v9;
}

id sub_10002B788(uint64_t a1)
{
  v2 = [HOLocationListViewController viewControllerForPresentingLocationEditorForHome:*(a1 + 32) delegate:*(a1 + 40) customizationBlock:*(a1 + 48)];
  v3 = [*(a1 + 40) rootViewController];
  v4 = [v3 hu_presentPreloadableViewController:v2 animated:1];

  return v4;
}

NAFuture *__cdecl sub_10002B904(id a1, UINavigationController *a2)
{
  v2 = [(UINavigationController *)a2 topViewController];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

id sub_10002B964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &OBJC_PROTOCOL___HURoomSettingsDelegate;
  if ([v3 conformsToProtocol:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 presentRoomSettingsForRoom:*(a1 + 32)];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100080C48();
    }

    v7 = +[NAFuture futureWithNoResult];
  }

  v9 = v7;

  return v9;
}

id sub_10002BF00(uint64_t a1, void *a2)
{
  v3 = [a2 topViewController];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___HUHomeKitObjectPresenting])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 presentStatusDetailsForStatusItemClass:*(a1 + 32) animated:1];
  }

  else
  {
    v6 = +[NAFuture futureWithNoResult];
  }

  v7 = v6;

  return v7;
}

id sub_10002C13C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = a2;
  [v2 _configureDashboardContextWithAccessoryTypeGroup:v3 home:v4 navigationController:v6 animated:v5];
  objc_opt_class();
  v7 = [v6 topViewController];

  v8 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      sub_100080B4C();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

id sub_10002C3B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = a2;
  [v2 _configureScenesDashboardContextWithTitle:v3 home:v4 navigationController:v6 animated:v5];
  objc_opt_class();
  v7 = [v6 topViewController];

  v8 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      sub_100080B4C();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

id sub_10002C62C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = a2;
  [v2 _configureSpeakersAndTVsDashboardContextWithTitle:v3 home:v4 navigationController:v6 animated:v5];
  objc_opt_class();
  v7 = [v6 topViewController];

  v8 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      sub_100080B4C();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

id sub_10002C8A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = a2;
  [v2 _configureCameraDashboardContextWithTitle:v3 home:v4 navigationController:v6 animated:v5];
  objc_opt_class();
  v7 = [v6 topViewController];

  v8 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (!v10)
    {
      sub_100080B4C();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

void sub_10002CA48(uint64_t a1, void *a2)
{
  v3 = [a2 topViewController];
  v4 = [v3 contentScrollViewForEdge:1];
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ Scrolling to the top of currently presented view controller: %@", &v8, 0x16u);
    }

    [v4 _scrollToTopIfPossible:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100080CB0(a1);
    }
  }
}

void sub_10002CE70(id a1)
{
  v3 = +[HFOpenURLRouter sharedInstance];
  v1 = +[HFURLComponents homeHub2OnboardingURL];
  v2 = [v3 openURL:v1];
}

void sub_10002CEE8(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100080DA4(v1);
  }
}

uint64_t sub_10002D484()
{

  return objc_opt_class();
}

void sub_10002E0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002E0FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained imageView];
  [v4 setImage:v3];
}

void *sub_10002E168(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_10002EB08();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_10002EB08()
{
  if (qword_1000DAAD8 != -1)
  {
    sub_100080DE8();
  }

  v1 = qword_1000DAAE0;

  return v1;
}

void sub_10002EB4C(id a1)
{
  v1 = qword_1000DAAE0;
  qword_1000DAAE0 = &off_1000CB4E8;
}

void sub_10002EE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002EE50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkAndRunFeatureOnboardingWithHomeSwitch:0];
}

void sub_10002F1B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100080DFC(a1);
    }
  }

  v8 = sub_10002F47C(@"HOLocationTriggerAlertDescription");
  v26[0] = 0;
  v9 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:v26, v5];
  v10 = v26[0];

  if (!v9)
  {
    NSLog(@"Couldn't localize format string HOLocationTriggerAlertDescription. Most likely, the format specifiers don't match. %@", v10);
  }

  v11 = sub_10002F47C(@"HOLocationTriggerAlertTitle");
  v12 = [UIAlertController alertControllerWithTitle:v11 message:v9 preferredStyle:1];

  v13 = sub_10002F47C(@"HOLocationTriggerAlertRun");
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10002F664;
  v24[3] = &unk_1000C3AF0;
  v20 = *(a1 + 32);
  v14 = v20.i64[0];
  v25 = vextq_s8(v20, v20, 8uLL);
  v15 = [UIAlertAction actionWithTitle:v13 style:0 handler:v24];
  [v12 addAction:v15];

  v16 = sub_10002F47C(@"HOLocationTriggerAlertCancel");
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002F674;
  v22[3] = &unk_1000C3AF0;
  v21 = *(a1 + 32);
  v17 = v21.i64[0];
  v23 = vextq_s8(v21, v21, 8uLL);
  v18 = [UIAlertAction actionWithTitle:v16 style:1 handler:v22];
  [v12 addAction:v18];

  v19 = [*(a1 + 40) rootViewController];
  [v19 presentViewController:v12 animated:1 completion:0];
}

void *sub_10002F47C(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100030F84();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_10002F770(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100080E68(a1);
    }
  }
}

id sub_10002FB1C(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  v3 = [v2 hu_presentPreloadableViewController:*(a1 + 40) animated:1];

  return v3;
}

void sub_10003067C(uint64_t a1)
{
  v2 = [*(a1 + 32) home];

  if (!v2)
  {
    v3 = [*(a1 + 40) rootViewController];
    [v3 setLoadingViewController:*(a1 + 48)];

    v4 = [*(a1 + 40) rootViewController];
    v5 = [objc_opt_class() instancesRespondToSelector:"didLoadLoadingViewController"];

    if (v5)
    {
      v6 = [*(a1 + 40) rootViewController];
      [v6 didLoadLoadingViewController];
    }
  }
}

id sub_100030F84()
{
  if (qword_1000DAAE8 != -1)
  {
    sub_100080F8C();
  }

  v1 = qword_1000DAAF0;

  return v1;
}

void sub_100030FC8(id a1)
{
  v1 = qword_1000DAAF0;
  qword_1000DAAF0 = &off_1000CB500;
}

void sub_100032210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003223C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained didPushNextViewController] & 1) == 0)
  {
    v1 = [WeakRetained navigationController];
    v2 = [v1 visibleViewController];
    v3 = [v2 isEqual:WeakRetained];

    if (v3)
    {
      v4 = [WeakRetained navigationController];
      v5 = [WeakRetained joinedHomeVC];
      [v4 pushViewController:v5 animated:1];

      [WeakRetained setDidPushNextViewController:1];
    }
  }
}

void sub_1000324A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000324D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 BOOLValue];

  v6 = HFLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [WeakRetained responseController];
      v9 = [v8 invitation];
      v10 = [v9 hf_prettyDescription];
      v17 = 136315394;
      v18 = "[HOOnboardingInvitationJoiningHomeViewController _handleAppDidForeground]_block_invoke";
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) At the moment when Home app got foregrounded, invitation's home was found. Moving onto next screen for %@.", &v17, 0x16u);
    }

    [WeakRetained _moveToNextViewController];
  }

  else
  {
    if (v7)
    {
      v11 = [WeakRetained responseController];
      v12 = [v11 invitation];
      v13 = [v12 hf_prettyDescription];
      v17 = 136315394;
      v18 = "[HOOnboardingInvitationJoiningHomeViewController _handleAppDidForeground]_block_invoke";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) At the moment when Home app got foregrounded, invitation's home was NOT found. Starting timer for invitation %@.", &v17, 0x16u);
    }

    v14 = [WeakRetained acceptedPendingAddHomeTimeoutCancellationToken];

    if (!v14)
    {
      [WeakRetained _startAddHomeTimeout];
    }
  }

  v15 = +[NAFuture futureWithNoResult];

  return v15;
}

void sub_1000327C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000327EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _didHomeGetAdded];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000328C4;
    v6[3] = &unk_1000C3BB0;
    objc_copyWeak(&v7, (a1 + 32));
    v5 = [v4 flatMap:v6];

    objc_destroyWeak(&v7);
  }
}

id sub_1000328C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 BOOLValue])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100032B90;
    v8[3] = &unk_1000C3BD8;
    v4 = &v9;
    objc_copyWeak(&v9, (a1 + 32));
    v5 = [NAFuture futureWithBlock:v8];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100032A14;
    v10[3] = &unk_1000C3BD8;
    v4 = &v11;
    objc_copyWeak(&v11, (a1 + 32));
    v5 = [NAFuture futureWithBlock:v10];
  }

  v6 = v5;
  objc_destroyWeak(v4);

  return v6;
}

void sub_100032A14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [NSError hf_errorWithCode:39];
  [WeakRetained setAcceptInvitationError:v4];

  v5 = [WeakRetained incomingInvitationDelegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [WeakRetained incomingInvitationDelegate];
  if (v6)
  {
    v8 = [WeakRetained responseController];
    v9 = [v8 invitation];
    v10 = [WeakRetained acceptInvitationError];
    [v7 didDecideLaterForInvitation:v9 viewController:WeakRetained error:v10];

LABEL_5:
    goto LABEL_7;
  }

  v11 = objc_opt_respondsToSelector();

  v12 = [WeakRetained incomingInvitationDelegate];
  v7 = v12;
  if (v11)
  {
    v8 = [WeakRetained acceptInvitationError];
    [v7 invitationViewControllerDidDecideLaterInvitation:WeakRetained error:v8];
    goto LABEL_5;
  }

  [v12 invitationViewControllerDidDecideLaterInvitation:WeakRetained];
LABEL_7:

  [v3 finishWithNoResult];
}

void sub_100032B90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAcceptInvitationError:0];
  [WeakRetained _moveToNextViewController];
  [v3 finishWithNoResult];
}

id sub_100032CC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100032FA4;
  v18[3] = &unk_1000C20C0;
  v18[4] = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v18];
  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) responseController];
    v8 = [v7 invitation];
    v9 = [v8 homeName];
    v10 = [*(a1 + 32) responseController];
    v11 = [v10 invitation];
    v12 = [v11 homeUUID];
    v13 = [HMHome hf_minimumDescriptionsOfHomes:v3];
    *buf = 136315906;
    v20 = "[HOOnboardingInvitationJoiningHomeViewController _didHomeGetAdded]_block_invoke";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v14 = "(%s) New invited HMHome <name:%@, uuid: %@> was found. resultHomes = %@";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [*(a1 + 32) responseController];
    v8 = [v7 invitation];
    v9 = [v8 homeName];
    v10 = [*(a1 + 32) responseController];
    v11 = [v10 invitation];
    v12 = [v11 homeUUID];
    v13 = [HMHome hf_minimumDescriptionsOfHomes:v3];
    *buf = 136315906;
    v20 = "[HOOnboardingInvitationJoiningHomeViewController _didHomeGetAdded]_block_invoke";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v14 = "(%s) New invited HMHome <name:%@, uuid: %@> was NOT found among %@";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v14, buf, 0x2Au);

LABEL_7:
  v15 = [NSNumber numberWithInt:v4 != 0];
  v16 = [NAFuture futureWithResult:v15];

  return v16;
}

id sub_100032FA4(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) responseController];
  v5 = [v4 invitation];
  v6 = [v5 homeUUID];
  v7 = [v3 hmf_isEqualToUUID:v6];

  return v7;
}

id sub_1000335CC()
{
  if (qword_1000DAAF8 != -1)
  {
    sub_100080FA0();
  }

  v1 = qword_1000DAB00;

  return v1;
}

void sub_100033610(id a1)
{
  v1 = qword_1000DAB00;
  qword_1000DAB00 = &off_1000CB518;
}

void sub_100033858(id a1)
{
  qword_1000DAB08 = objc_alloc_init(HODiscoverWebViewManager);

  _objc_release_x1();
}

void sub_1000342A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [NSURL URLWithString:v5];
  v8 = [*(a1 + 32) getURLRequestForURL:v7];
  v9 = [v6 webView];

  v10 = [v9 loadRequest:v8];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[HODiscoverWebViewManager reloadWebViews]_block_invoke";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Reloaded Discover webview with url:[%@]", &v12, 0x16u);
  }
}

BOOL sub_100034800(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 webView];
  v5 = v3 == v4;

  return v5;
}

void *sub_100035884(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100036F44();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_100036104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100036168(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Accept on the alert", &v3, 0xCu);
  }

  [WeakRetained _displayNextViewController];
}

void sub_10003622C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%s) User tapped Ignore and Report on the alert", &v3, 0xCu);
  }

  [WeakRetained _reportJunk];
}

void sub_1000362F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 136315394;
    v7 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]_block_invoke";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped cancel button '%@' from the alert popup", &v6, 0x16u);
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

id sub_100036F44()
{
  if (qword_1000DAB18 != -1)
  {
    sub_10008104C();
  }

  v1 = qword_1000DAB20;

  return v1;
}

void sub_100036F88(id a1)
{
  v1 = qword_1000DAB20;
  qword_1000DAB20 = &off_1000CB530;
}

void *sub_1000371C0(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_1000379C0();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_1000379C0()
{
  if (qword_1000DAB28 != -1)
  {
    sub_100081060();
  }

  v1 = qword_1000DAB30;

  return v1;
}

void sub_100037A04(id a1)
{
  v1 = qword_1000DAB30;
  qword_1000DAB30 = &off_1000CB548;
}

id sub_100037A20()
{
  if (qword_1000DAB38 != -1)
  {
    sub_100081074();
  }

  v1 = qword_1000DAB40;

  return v1;
}

void sub_100037A64(id a1)
{
  qword_1000DAB40 = objc_opt_new();

  _objc_release_x1();
}

void sub_100038458(uint64_t a1)
{
  v3 = [UIBlurEffect effectWithStyle:6];
  v2 = [*(a1 + 32) blurView];
  [v2 setEffect:v3];
}

void sub_100038594(uint64_t a1)
{
  v1 = [*(a1 + 32) blurView];
  [v1 setEffect:0];
}

void sub_100038770(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [*(a1 + 32) presentedViewController];
  v9 = [v8 view];
  [v9 frame];
  v11 = v10;

  v12 = [*(a1 + 32) presentedViewController];
  v13 = [v12 view];
  [v13 setFrame:{v11, 40.0, v5, v7}];

  v15 = [*(a1 + 32) presentedViewController];
  v14 = [v15 view];
  [v14 layoutIfNeeded];
}

BOOL sub_100038CBC(id a1, HMIncomingHomeInvitation *a2)
{
  v2 = a2;
  v3 = [(HMIncomingHomeInvitation *)v2 invitationState]== 2 || [(HMIncomingHomeInvitation *)v2 invitationState]== 5;

  return v3;
}

void *sub_1000391E8(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_10003D6E0();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_10003AAB0(uint64_t a1, void *a2)
{
  v3 = [a2 homeUUID];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqual:v4];

  return v5;
}

id sub_10003ACE0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

id sub_10003B4B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

void sub_10003C194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_10003C208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] User tapped accept/continue button on the alert", &v23, 2u);
  }

  v4 = [*(a1 + 32) invitation];
  v5 = [v4 isInviteeRestrictedGuest];

  if (v5)
  {
    v6 = [*(a1 + 32) invitation];
    v7 = [v6 restrictedGuestSchedule];

    v8 = HFLogForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = [*(a1 + 32) invitation];
        v11 = [v10 hf_prettyDescription];
        v12 = [*(a1 + 32) invitation];
        v13 = [v12 uniqueIdentifier];
        v23 = 138412546;
        v24 = v11;
        v25 = 2114;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation]  Presenting invitation flow starting from 'Guest Access' screen. Invitation = %@ (uniqueIdentifier: %{public}@)", &v23, 0x16u);
      }

      v14 = [[HOOnboardingInvitationRestrictedGuestAccessViewController alloc] initWithIncomingInvitation:*(a1 + 40) invitationHelper:*(a1 + 32) incomingInvitationDelegate:WeakRetained];
      [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v14 setDelegate:WeakRetained];
      [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v14 setDidUserTriggerOnboardingDismissal:0];
    }

    else
    {
      if (v9)
      {
        v17 = [*(a1 + 32) invitation];
        v18 = [v17 hf_prettyDescription];
        v19 = [*(a1 + 32) invitation];
        v20 = [v19 uniqueIdentifier];
        v23 = 138412546;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] Presenting invitation flow starting from 'Setting Up <Home Name>' screen. Invitation = %@ (uniqueIdentifier: %{public}@)", &v23, 0x16u);
      }

      v14 = [[HOOnboardingInvitationJoiningHomeViewController alloc] initWithIncomingInvitation:*(a1 + 40) invitationHelper:*(a1 + 32) incomingInvitationDelegate:WeakRetained];
      [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v14 setDelegate:WeakRetained];
    }

    v21 = [[UINavigationController alloc] initWithRootViewController:v14];
    v22 = [WeakRetained hu_presentPreloadableViewController:v21 animated:1];
  }

  else
  {
    v14 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:WeakRetained invitation:*(a1 + 40)];
    v15 = [WeakRetained invitationResponseControllersByHomeUUID];
    v16 = [*(a1 + 40) homeUUID];
    [v15 setObject:v14 forKeyedSubscript:v16];

    [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v14 respondToInvitationWithResponse:*(a1 + 56)];
  }
}

id sub_10003C540(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] User tapped Cancel on the alert", v4, 2u);
  }

  return [*(a1 + 32) dismissViewControllerAnimated:1 completion:&stru_1000C3E20];
}

void sub_10003C5C4(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] dismissed confirmation alert", v2, 2u);
  }
}

void sub_10003C630(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] presented confirmation alert", v2, 2u);
  }
}

void sub_10003C69C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 title];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation:] User tapped delete and report button '%@' from alert", &v10, 0xCu);
  }

  v7 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:WeakRetained invitation:*(a1 + 32)];
  v8 = [WeakRetained invitationResponseControllersByHomeUUID];
  v9 = [*(a1 + 32) homeUUID];
  [v8 setObject:v7 forKeyedSubscript:v9];

  [v7 respondToInvitationWithResponse:*(a1 + 48)];
}

void sub_10003C7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation:] User tapped cancel button '%@' from alert", &v6, 0xCu);
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:&stru_1000C3E88];
}

void sub_10003C8CC(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] dismissed canReportConfirmAlert alert", v2, 2u);
  }
}

void sub_10003C938(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HOLocationListViewController-invitationCell:didRespondToInvitation] presented canReportConfirmAlert alert", v2, 2u);
  }
}

void sub_10003CB40(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[HFErrorHandler sharedHandler];
    [v2 handleError:*(a1 + 32) operationType:HFOperationAcceptInvitation options:0 retryBlock:0 cancelBlock:0];
  }
}

id sub_10003CF58(id a1, HMIncomingHomeInvitation *a2)
{
  v2 = [(HMIncomingHomeInvitation *)a2 identifier];
  v3 = [v2 UUIDString];

  return v3;
}

id sub_10003D160(id a1, HMIncomingHomeInvitation *a2)
{
  v2 = [(HMIncomingHomeInvitation *)a2 identifier];
  v3 = [v2 UUIDString];

  return v3;
}

void sub_10003D388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003D3AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained locationSensingAvailable];
  v5 = [v3 BOOLValue];

  if (v4 != v5)
  {
    if ([WeakRetained tableViewReady])
    {
      if (v4)
      {
        v6 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [WeakRetained _indexOfSectionWithIdentifier:@"HOLocationListHomeSensingSectionIdentifier"]);
        [WeakRetained setLocationSensingAvailable:0];
        v7 = [WeakRetained tableView];
        [v7 deleteSections:v6 withRowAnimation:100];
      }

      else
      {
        v6 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [WeakRetained _indexOfSectionWithIdentifier:@"HOLocationListLocationsSectionIdentifier"] + 1);
        [WeakRetained setLocationSensingAvailable:1];
        v7 = [WeakRetained tableView];
        [v7 insertSections:v6 withRowAnimation:100];
      }
    }

    else
    {
      [WeakRetained setLocationSensingAvailable:v5];
      v6 = [WeakRetained tableView];
      [v6 reloadData];
    }
  }
}

id sub_10003D6E0()
{
  if (qword_1000DAB48 != -1)
  {
    sub_100081120();
  }

  v1 = qword_1000DAB50;

  return v1;
}

void sub_10003D724(id a1)
{
  v1 = qword_1000DAB50;
  qword_1000DAB50 = &off_1000CB560;
}

void *sub_10003DB38(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_10003E55C();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_10003E55C()
{
  if (qword_1000DAB58 != -1)
  {
    sub_1000811AC();
  }

  v1 = qword_1000DAB60;

  return v1;
}

void sub_10003E5A0(id a1)
{
  v1 = qword_1000DAB60;
  qword_1000DAB60 = &off_1000CB578;
}

void sub_10003F394(uint64_t a1, char a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100041A1C;
  v5[3] = &unk_1000C4150;
  v6 = a3;
  v7 = (a2 & 2) != 0;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

void *sub_10003FCAC(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_1000419C0();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_1000409C8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100081234();
    }

    v4 = +[HFOpenURLRouter sharedInstance];
    v5 = +[NSURL hf_openiCloudPreferencesURL];
    v6 = [v4 openURL:v5];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_enableICloud] Completed updateiCloudSwitchState iCloud.", v7, 2u);
  }
}

void sub_100040B34(id a1)
{
  v1 = +[UIApplication sharedApplication];
  [v1 terminateWithSuccess];

  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_quit] Dismissed after user tapped 'quit' button.", v3, 2u);
  }
}

void sub_100040E3C(id a1, UIAlertAction *a2)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonPressed] User tapped 'ok' action for the alert", v3, 2u);
  }
}

void sub_100040EA8(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HF_LOG_VIEW_VISIBILITY:_resetButtonPressed] Presented popup alert about iCloud URL reachable is NO", v2, 2u);
  }
}

id sub_100040F14(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_enableButtonPressed] User tapped 'reset' action for the alert", v4, 2u);
  }

  return [*(a1 + 32) _resetButtonConfirmed];
}

void sub_100040F8C(id a1, UIAlertAction *a2)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonPressed] User tapped 'cancel' action for the alert", v3, 2u);
  }
}

void sub_100040FF8(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonPressed] presented alert controller about resetting.", v2, 2u);
  }
}

void sub_10004110C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1000812A8(v3, v4);
    }

    v5 = sub_10003FCAC(@"HODataSyncingAlertTitle");
    v6 = sub_10003FCAC(@"HODataSyncingResetBodyGeneric");
    v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

    v8 = sub_10003FCAC(@"HODataSyncingAlertOKButton");
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&stru_1000C40A0];

    [v7 addAction:v9];
    v10 = [*(a1 + 32) navigationController];
    [v10 presentViewController:v7 animated:1 completion:&stru_1000C40C0];
  }
}

void sub_10004124C(id a1, UIAlertAction *a2)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonConfirmed] User tapped 'ok' action for the popup", v3, 2u);
  }
}

void sub_1000412B8(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:_resetButtonConfirmed] presented alert controller about reset confirmation", v2, 2u);
  }
}

void sub_100041508(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008133C(v5, a1);
    }

    goto LABEL_7;
  }

  v6 = HFLogForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000813B4(v5, a1);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController-startCDPRepair] CDPUIDeviceToDeviceEncryption succeed in repairing.", v8, 2u);
  }

  [*(a1 + 40) dismissViewControllerAnimated:1 completion:&stru_1000C40E0];
LABEL_8:
}

void sub_100041600(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[HODataSyncingViewController:startCDPRepair] dismissing after completing CDP repair.", v2, 2u);
  }
}

id sub_1000419C0()
{
  if (qword_1000DAB68 != -1)
  {
    sub_10008142C();
  }

  v1 = qword_1000DAB70;

  return v1;
}

void sub_100041A04(id a1)
{
  v1 = qword_1000DAB70;
  qword_1000DAB70 = &off_1000CB590;
}

void *sub_100041CEC(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_1000422B4();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_1000420A0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [(NSError *)v2 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HOOnboardingACCDisclosureViewController] Failed to set user disclosed for adaptive temperature automations sheet: %@", &v6, 0xCu);
    }
  }

  else if (v4)
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[HOOnboardingACCDisclosureViewController] Successfully set user disclosed for adaptive temperature automations sheet", &v6, 2u);
  }
}

id sub_1000422B4()
{
  if (qword_1000DAB78 != -1)
  {
    sub_100081440();
  }

  v1 = qword_1000DAB80;

  return v1;
}

void sub_1000422F8(id a1)
{
  v1 = qword_1000DAB80;
  qword_1000DAB80 = &off_1000CB5A8;
}

void sub_10004273C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40))
  {
    v3 = WeakRetained;
    [WeakRetained openSenderURL];
    WeakRetained = v3;
  }
}

void sub_100042AC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100081650(a1, v3);
    }
  }
}

id sub_100042EE0(uint64_t a1)
{
  result = [*(a1 + 32) setInstallProfileViewController:0];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 openSenderURL];
  }

  return result;
}

id sub_100043000()
{
  if (qword_1000DAB88 != -1)
  {
    sub_1000816F4();
  }

  v1 = qword_1000DAB90;

  return v1;
}

void sub_100043044(id a1)
{
  v1 = qword_1000DAB90;
  qword_1000DAB90 = &off_1000CB5C0;
}

void sub_100043070(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void *sub_100043700(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_1000452A4();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

void sub_100043C40(uint64_t a1, void *a2)
{
  v6 = [a2 na_filter:&stru_1000C4218];
  v3 = [v6 count];
  v4 = *(a1 + 32);
  if (v3 < 2)
  {
    v5 = [v6 firstObject];
    [v4 _handleProfileInstallationForHome:v5];
  }

  else
  {
    [v4 _presentHomeSelectionAlertWithHomes:v6];
  }
}

BOOL sub_100043CD4(id a1, HMHome *a2)
{
  v2 = a2;
  if ([(HMHome *)v2 hf_isCurrentLocationHome])
  {
    v3 = [(HMHome *)v2 hf_hasHomePods];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMHome *)v2 hf_allHomePodsSupportRemoteProfileInstallation];
  v5 = (v3 | v4) & [(HMHome *)v2 hf_currentUserIsOwner];

  return v5 & 1;
}

void sub_100043E6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100043F4C;
  v10[3] = &unk_1000C4240;
  v11 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v8 = v5;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

id sub_100043F4C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081810(a1, v2);
    }

    return [*(a1 + 48) _presentErrorAlert];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = [*(a1 + 40) hf_prettyDescription];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Profile: %@ successfully installed on HomePod: %@", &v9, 0x16u);
    }

    return [*(a1 + 48) _presentCompletionAlert];
  }
}

void sub_10004412C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] profileData];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100044208;
  v8[3] = &unk_1000C4268;
  v9 = a1[5];
  v10 = v3;
  v5 = a1[6];
  v6 = a1[4];
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [v7 installManagedConfigurationProfileWithData:v4 completionHandler:v8];
}

void sub_100044208(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) na_safeAddObject:v6];
  v7 = [*(a1 + 48) lastObject];
  v8 = *(a1 + 40);

  if (v7 == v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044340;
    block[3] = &unk_1000C2098;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    *&v11 = *(a1 + 40);
    *(&v11 + 1) = *(a1 + 56);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v14 = v12;
    v15 = v11;
    v16 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_100044340(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) count])
  {
    v3 = [*(a1 + 32) count];
    v4 = [*(a1 + 40) count];
    v5 = HFLogForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v3 == v4)
    {
      if (v6)
      {
        sub_100081970(a1);
      }

      return [*(a1 + 56) _presentErrorAlert];
    }

    else
    {
      if (v6)
      {
        sub_1000818C0(v2);
      }

      return [*(a1 + 56) _presentPartialErrorAlertForHomePods:*(a1 + 32)];
    }
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 64);
      v10 = [*(a1 + 48) home];
      v11 = [v10 hf_prettyDescription];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Profile: %@ successfully installed on all HomePods in home: %@", &v12, 0x16u);
    }

    return [*(a1 + 56) _presentCompletionAlert];
  }
}

void sub_1000445FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100044628(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100081A1C();
    }

    v6 = sub_100043700(@"HOProfileHomePodSearchFailedTitle");
    v7 = sub_100043700(@"HOProfileHomePodSearchFailedMessage");
    [WeakRetained showProfileInstallationAlertViewWithTitle:v6 message:v7 shouldGoBackToSenderURL:1];
  }
}

int64_t sub_10004482C(id a1, HMHome *a2, HMHome *a3)
{
  v4 = a3;
  v5 = [(HMHome *)a2 name];
  v6 = [(HMHome *)v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_10004489C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100044978;
  v10 = &unk_1000C3AF0;
  v11 = *(a1 + 32);
  v12 = v3;
  v5 = v3;
  v6 = [UIAlertAction actionWithTitle:v4 style:0 handler:&v7];

  [*(a1 + 40) addAction:{v6, v7, v8, v9, v10, v11}];
}

int64_t sub_100044B98(id a1, HMAccessory *a2, HMAccessory *a3)
{
  v4 = a3;
  v5 = [(HMAccessory *)a2 name];
  v6 = [(HMAccessory *)v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_100044C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100044CE4;
  v10 = &unk_1000C3AF0;
  v11 = *(a1 + 32);
  v12 = v3;
  v5 = v3;
  v6 = [UIAlertAction actionWithTitle:v4 style:0 handler:&v7];

  [*(a1 + 40) addAction:{v6, v7, v8, v9, v10, v11}];
}

id sub_1000452A4()
{
  if (qword_1000DAB98 != -1)
  {
    sub_100081AA0();
  }

  v1 = qword_1000DABA0;

  return v1;
}

void sub_1000452E8(id a1)
{
  v1 = qword_1000DABA0;
  qword_1000DABA0 = &off_1000CB5D8;
}

id sub_100045EFC(uint64_t a1, void *a2)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [*(a1 + 32) entityName];
        v11 = [v10 description];
        v12 = [v9 isEqualToString:v11];

        if (v12)
        {
          v14 = [NAFuture futureWithResult:v8];
          v13 = v3;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = [NSError hf_errorWithCode:30];
  v14 = [NAFuture futureWithError:v13];
LABEL_11:

  return v14;
}

void *sub_100046640(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v3])
  {
    v4 = v1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = sub_100046B80();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:v4 value:v4 table:v10];

        if (![(__CFString *)v12 isEqualToString:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = @"_";
    }

    v3 = v12;
  }

  v13 = v3;
  if ([@"_" isEqualToString:v3])
  {
    NSLog(@"Sensitive key '%@' not found!", v1);
    v13 = v1;
  }

  v14 = v13;

  return v13;
}

id sub_100046B80()
{
  if (qword_1000DABA8 != -1)
  {
    sub_100081AB4();
  }

  v1 = qword_1000DABB0;

  return v1;
}

void sub_100046BC4(id a1)
{
  v1 = qword_1000DABB0;
  qword_1000DABB0 = &off_1000CB5F0;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Home application launched", buf, 2u);
  }

  v6 = HFLogForCategory();
  if (os_signpost_enabled(v6))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0x1F4uLL, "HomeAppLaunch", "App started launching from main", v11, 2u);
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, 0, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t variable initialization expression of AdaptiveTabBarController.localeAvailability()
{
  v0 = [objc_opt_self() getAvailabilityDictionary];
  v1 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_100046E58(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100046ED0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100046F50@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100046FA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100046FF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10004701C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void *sub_1000470A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000470C0(uint64_t a1)
{
  v2 = sub_1000471C0(&qword_1000D9830);
  v3 = sub_1000471C0(&qword_1000D9838);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000471C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HFHomeAppTabIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100047238()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100047274()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000472C8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

__n128 sub_100047354(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100047360(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100047380(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_1000473C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000473E0(uint64_t a1, int a2)
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

uint64_t sub_100047400(uint64_t result, int a2, int a3)
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

void sub_10004743C(uint64_t a1, unint64_t *a2)
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

void sub_1000474A0(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v2;
  v6 = v2;
  v7 = sub_100047FC4(1, sub_10005D5EC, v5);

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = 6;
  *(v8 + 32) = a2;
  *(v8 + 40) = a1;
  v21 = sub_1000579A4;
  v22 = v8;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10005D794;
  v20 = &unk_1000C5260;
  v9 = _Block_copy(&v17);
  v10 = v6;

  v11 = a1;

  v12 = [v7 addSuccessBlock:v9];
  _Block_release(v9);

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = 6;
  v21 = sub_10005D77C;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100047498;
  v20 = &unk_1000C52B0;
  v14 = _Block_copy(&v17);
  v15 = v11;

  v16 = [v12 addFailureBlock:v14];
  _Block_release(v14);
}

void sub_1000476D0(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() lightAccessoryTypeGroup];
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = v5;
  v8 = sub_100047FC4(1, sub_10005D578, v6);

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = 12;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  v22 = sub_10005D49C;
  v23 = v9;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10005D794;
  v21 = &unk_1000C58F0;
  v10 = _Block_copy(&v18);
  v11 = v2;

  v12 = a1;

  v13 = [v8 addSuccessBlock:v10];
  _Block_release(v10);

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = 12;
  v22 = sub_10005D77C;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100047498;
  v21 = &unk_1000C5940;
  v15 = _Block_copy(&v18);
  v16 = v12;

  v17 = [v13 addFailureBlock:v15];
  _Block_release(v15);
}

id sub_100047924(void *a1, void *a2, char a3, void *a4)
{
  v8 = [a1 itemManager];
  v9 = [v8 home];

  if (v9)
  {
    sub_100070AEC(a3);
    v10 = String._bridgeToObjectiveC()();

    [a2 startedTest:v10];

    v11 = [a4 showHome:v9];
    return v11;
  }

  else
  {
    sub_100057794();
    swift_allocError();
    v14 = v13;
    v15 = [a1 itemManager];
    v16 = sub_10005B9DC(0, &qword_1000D9D60, HUDashboardItemManager_ptr);
    *v14 = v15;
    *(v14 + 24) = v16;
    *(v14 + 32) = 1701670760;
    *(v14 + 40) = 0xE400000000000000;
    *(v14 + 48) = 3;
    v17 = _convertErrorToNSError(_:)();
    v18 = [objc_opt_self() futureWithError:v17];

    return v18;
  }
}

void sub_100047AB8(void *a1, char a2)
{
  sub_100070AEC(a2);
  v3 = String._bridgeToObjectiveC()();

  [a1 startedTest:v3];
}

void sub_100047B24(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = sub_100047FC4(1, sub_10005D560, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = 9;
  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  v20 = sub_10005D49C;
  v21 = v7;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10005D794;
  v19 = &unk_1000C55A8;
  v8 = _Block_copy(&v16);
  v9 = v2;

  v10 = a1;

  v11 = [v6 addSuccessBlock:v8];
  _Block_release(v8);

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = 9;
  v20 = sub_10005D77C;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100047498;
  v19 = &unk_1000C55F8;
  v13 = _Block_copy(&v16);
  v14 = v10;

  v15 = [v11 addFailureBlock:v13];
  _Block_release(v13);
}

void sub_100047D44(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = sub_10007739C(a1, a3, a4);
}

id sub_100047E08(int a1, void *a2, id a3, void *a4, void (*a5)(id))
{
  v10 = [a3 hf_activeRooms];
  sub_10005B9DC(0, &qword_1000DA870, HMRoom_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = a4;

  v19 = sub_10007C5E8(v12);
  sub_100057338(&v19, v11);
  if (v5)
  {
    goto LABEL_18;
  }

  v11 = v19;
  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    if (*(v19 + 16))
    {
      goto LABEL_5;
    }

LABEL_13:

    v15 = [a3 roomForEntireHome];
    v14 = v15;
    if (!a5)
    {
LABEL_10:
      v16 = [a2 _showRoom:v14 animated:1];
      if (v16)
      {
        v17 = v16;

        return v17;
      }

      goto LABEL_17;
    }

LABEL_9:
    a5(v15);
    goto LABEL_10;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v14 = v13;

    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (*(v11 + 16))
  {
    v13 = *(v11 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

id sub_100047FC4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = [v4 _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
  if (result)
  {
    v9 = result;
    v22 = sub_10007A0C8;
    v23 = 0;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10005D798;
    v21 = &unk_1000C4FE0;
    v10 = _Block_copy(&v18);
    v11 = [v9 flatMap:v10];
    _Block_release(v10);

    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = a2;
    v12[4] = a3;
    v22 = sub_10005D614;
    v23 = v12;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_10005D798;
    v21 = &unk_1000C5030;
    v13 = _Block_copy(&v18);
    v14 = v4;

    v15 = [v11 flatMap:v13];
    _Block_release(v13);

    if (a1)
    {
      v22 = sub_100052220;
      v23 = 0;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100052498;
      v21 = &unk_1000C5058;
      v16 = _Block_copy(&v18);

      v17 = [v15 flatMap:v16];

      _Block_release(v16);
      return v17;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100048224(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = HFHomeAppTabIdentifierHome;
  v7 = v2;
  v8 = [v7 _selectAndFinishFirstReadForTabWithIdentifier:v6];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100057C14;
    *(v10 + 24) = v5;
    v26 = sub_100057C68;
    v27 = v10;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D798;
    v25 = &unk_1000C5AD0;
    v11 = _Block_copy(&v22);

    v12 = [v9 flatMap:v11];

    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = 14;
    *(v13 + 32) = a2;
    *(v13 + 40) = a1;
    v26 = sub_100057C70;
    v27 = v13;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D794;
    v25 = &unk_1000C5B20;
    v14 = _Block_copy(&v22);
    v15 = v7;

    v16 = a1;

    v17 = [v12 addSuccessBlock:v14];
    _Block_release(v14);

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = 14;
    v26 = sub_10005D77C;
    v27 = v18;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100047498;
    v25 = &unk_1000C5B70;
    v19 = _Block_copy(&v22);
    v20 = v16;

    v21 = [v17 addFailureBlock:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

id sub_100048514(void *a1)
{
  v4 = sub_1000573D8(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(HFActionSetBuilder) initWithExistingObject:v4 inHome:a1];
    _s23AccessoryPickerDelegateCMa();
    swift_allocObject();
    objc_allocWithZone(type metadata accessor for ActionSetAccessoryPickerViewController());
    v7 = v6;

    v1 = ActionSetAccessoryPickerViewController.init(actionSetBuilder:delegate:)();
    [v1 setModalPresentationStyle:2];
  }

  return v1;
}

void sub_1000485F8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  type metadata accessor for ActionSetAccessoryPickerViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = [v8 collectionView];
    if (v10)
    {
      v11 = v10;
      v12 = sub_100070AEC(a3);
      v18 = sub_100077518(v12, v13, v11, a4, 0);

      v17 = [v18 asGeneric];

      return;
    }

    sub_100057794();
    v14 = swift_allocError();
    *v16 = 0xD000000000000035;
    *(v16 + 8) = 0x800000010009A1B0;
    *(v16 + 48) = 4;
    swift_willThrow();
  }

  else
  {
    sub_100057794();
    v14 = swift_allocError();
    *v15 = 0xD000000000000036;
    *(v15 + 8) = 0x800000010009A170;
    *(v15 + 48) = 4;
    swift_willThrow();
  }

  swift_errorRetain();
  sub_10007095C(a3, v14);
}

void sub_10004880C(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  v6 = HFHomeAppTabIdentifierHome;
  v7 = v2;
  v8 = [v7 _selectAndFinishFirstReadForTabWithIdentifier:v6];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100057DCC;
    *(v10 + 24) = v5;
    v26 = sub_10005D7A8;
    v27 = v10;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D798;
    v25 = &unk_1000C5CD8;
    v11 = _Block_copy(&v22);

    v12 = [v9 flatMap:v11];

    _Block_release(v11);

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = 15;
    *(v13 + 32) = a2;
    *(v13 + 40) = a1;
    v26 = sub_100057E30;
    v27 = v13;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10005D794;
    v25 = &unk_1000C5D28;
    v14 = _Block_copy(&v22);
    v15 = v7;

    v16 = a1;

    v17 = [v12 addSuccessBlock:v14];
    _Block_release(v14);

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = 15;
    v26 = sub_10005D77C;
    v27 = v18;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100047498;
    v25 = &unk_1000C5D78;
    v19 = _Block_copy(&v22);
    v20 = v16;

    v21 = [v17 addFailureBlock:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}