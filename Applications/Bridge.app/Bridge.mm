uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, v6, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100005544(id a1)
{
  v1 = objc_alloc_init(COSShortcutController);
  v2 = qword_1002BD5D0;
  qword_1002BD5D0 = v1;
}

id sub_100005794()
{
  v0 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  if (v0)
  {
    v1 = [[NSUUID alloc] initWithUUIDString:@"C5BAD2E8-BB79-4E9E-8A0D-757C60D31053"];
    v2 = [v0 supportsCapability:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100005808(void *a1, const __CFString **a2)
{
  v3 = a1;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 canPairAnotherClassic];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 canPairAnotherTinker];

  if (PBShouldOfferBetterTogetherFlow())
  {
    if (PBStoreDemoContentIsFrozen())
    {
      v8 = pbb_setupflow_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = 2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Denying Pairing Flow because Retail Device has Content Frozen.", buf, 2u);
        v5 = 0;
      }

      else
      {
        v5 = 0;
        v9 = 2;
      }
    }

    else
    {
      v8 = sub_10002E264();
      if ([v8 count])
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = v8;
        v11 = [v8 countByEnumeratingWithState:&v28 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v8);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              v16 = pbb_setupflow_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v15 _bridgeConciseDebugDescription];
                *buf = 138412290;
                v33 = v17;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found Device: %@", buf, 0xCu);
              }
            }

            v12 = [v8 countByEnumeratingWithState:&v28 objects:v42 count:16];
          }

          while (v12);
        }

        if (sub_100009A74() && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 BOOLForKey:@"IgnoreBetterTogetherDeviceLimit"], v18, v19))
        {
          v20 = pbb_setupflow_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100186AB8(v20);
          }

          v9 = 1;
        }

        else
        {
          v20 = pbb_setupflow_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Denying Pairing Flow because Retail Phone already has a Watch paired.", buf, 2u);
          }

          v5 = 0;
          v9 = 3;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    v7 = 0;
    if (!v3)
    {
LABEL_33:
      v10 = v5 | v7;
      if (!a2)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v9 = 1;
    if (!v3)
    {
      goto LABEL_33;
    }
  }

  if ([v3 BOOLValue])
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2)
  {
LABEL_34:
    if (v10)
    {
      v21 = 0;
    }

    else
    {
      v21 = [NSError errorWithDomain:@"com.apple.Bridge-QuickSwitchPairing" code:v9 userInfo:0];
    }

    *a2 = v21;
  }

LABEL_38:
  v22 = pbb_bridge_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "NO";
    if (v5)
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    if (v7)
    {
      v25 = "YES";
    }

    else
    {
      v25 = "NO";
    }

    if (v10)
    {
      v23 = "YES";
    }

    if (a2)
    {
      v26 = *a2;
    }

    else
    {
      v26 = @"no errorPtr";
    }

    *buf = 136316162;
    v33 = v24;
    v34 = 2080;
    v35 = v25;
    v36 = 2112;
    v37 = v3;
    v38 = 2080;
    v39 = v23;
    v40 = 2112;
    v41 = v26;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Can pair standard: %s Can pair tinker: %s isTinker: %@ Can pair: %s Error: %@", buf, 0x34u);
  }

  return v10 & 1;
}

void sub_100005CB4()
{
  v0 = objc_opt_new();
  v1 = qword_1002BD5C0;
  qword_1002BD5C0 = v0;
}

id sub_100005F18()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100268B90];

  return v1;
}

void sub_1000071E0(void *a1)
{
  v1 = a1;
  v4 = objc_opt_new();
  v2 = +[UIColor _barStyleBlackHairlineShadowColor];
  [v4 setShadowColor:v2];

  [v1 setStandardAppearance:v4];
  [v1 _accessibilitySetInterfaceStyleIntent:1];
  v3 = BPSBridgeTintColor();
  [v1 setTintColor:v3];
}

id sub_100007C2C()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"SuppressUIForSim"];

  return v1;
}

void sub_1000086F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000088D4(uint64_t a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 contentsOfDirectoryAtPath:@"/System/Library/NanoPreferenceBundles/Applications/" error:0];

  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"dSYM";
    v8 = *v28;
    v26 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 pathExtension];
        v12 = [v11 isEqualToString:v7];

        if ((v12 & 1) == 0)
        {
          v13 = [v10 stringByDeletingPathExtension];
          if ([v13 length])
          {
            v14 = [@"/System/Library/NanoPreferenceBundles/Applications/" stringByAppendingPathComponent:v10];
            v15 = [v14 stringByResolvingSymlinksInPath];

            v16 = [[NSBundle alloc] initWithPath:v15];
            v17 = [v16 bundleIdentifier];

            if (!v17)
            {
              v25 = [NSString stringWithFormat:@"Bridge settings bundle at path '%@' is malformed", v15];
              v31 = @"BundleDescription";
              v32 = v13;
              [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
              v18 = v6;
              v19 = v7;
              v20 = v4;
              v22 = v21 = v3;
              v23 = [NSException exceptionWithName:@"NanoPreferenceBundleException" reason:v25 userInfo:v22];

              v3 = v21;
              v4 = v20;
              v7 = v19;
              v6 = v18;
              [v23 raise];
            }

            [v3 setObject:v16 forKey:v13];

            v8 = v26;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) _setUpBundleRows:v3];
  [*(a1 + 32) _buildSystemAppSpecifierDicts];
  [*(a1 + 32) _notifyThatFullSpecifierDictListIsLoaded];
}

id sub_100008BAC()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"COSDisableGalleryFeatures"];

  return v1;
}

uint64_t sub_100008BFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100008C8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100009350()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100268B50];

  return v1;
}

id sub_1000093AC()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100268BB0];

  return v1;
}

id sub_100009A24()
{
  result = sub_100009A74();
  if (result)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 BOOLForKey:@"SkipSetupFlow"];

    return v2;
  }

  return result;
}

id sub_100009A74()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 sf_isInternalInstall];

  return v1;
}

id sub_100009AB4()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100268B30];

  return v1;
}

void sub_100009C78(uint64_t a1, void *a2)
{
  v5 = [a2 setByAddingObjectsFromSet:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) setNotificationCategories:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100009E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009F30(id a1)
{
  v1 = objc_alloc_init(COSBackupManager);
  v2 = qword_1002BD568;
  qword_1002BD568 = v1;
}

Class sub_10000A118(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD580)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000BC96C;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026B060;
    v6 = 0;
    qword_1002BD580 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD580)
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
  result = objc_getClass("NBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018975C();
  }

  qword_1002BD578 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000A2C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got a transition, layout is: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIPhoneMirroringEnabled:v4 != 0];
}

void sub_10000A50C(uint64_t a1)
{
  v5[0] = &off_100281C30;
  v5[1] = &off_100281C60;
  v6[0] = &off_100281C48;
  v6[1] = &off_100281C78;
  v5[2] = &off_100281C90;
  v6[2] = &off_100281CA8;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
}

void sub_10000A5CC(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Authorization for user notifications not granted: %@", &v6, 0xCu);
    }
  }
}

uint64_t sub_10000AAEC()
{
  type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  swift_allocObject();
  SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)();
  State.init(wrappedValue:)();
  return v1;
}

void sub_10000AB88(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 12) = 1;
  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(v5 + 64) arrayByAddingObjectsFromArray:v3];

    v7 = *(a1 + 32);
    v8 = [v7 removeIncompatibleBackups:v6];
    v9 = [v7 sortBackups:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    *(v10 + 64) = v9;

    v5 = *(a1 + 32);
    if (*(v5 + 64))
    {
      *(v5 + 14) = 1;
      v5 = *(a1 + 32);
    }
  }

  else
  {
    v6 = v3;
  }

  WeakRetained = objc_loadWeakRetained((v5 + 48));

  v13 = pbb_setupflow_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v14)
    {
      v15 = *(*(a1 + 32) + 14);
      v18[0] = 67109120;
      v18[1] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "iCloud Backups changed, calling delegate with found: %d", v18, 8u);
    }

    v16 = objc_loadWeakRetained((*(a1 + 32) + 48));
    v13 = v16;
    if (*(*(a1 + 32) + 14))
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [v16 backupsChanged:v17];
  }

  else if (v14)
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "iCloud Backups changed but no delegate", v18, 2u);
  }
}

id sub_10000AD54(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_10026E598 table:@"Settings"];

  return v3;
}

void sub_10000C33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000D3B4()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"SuppressInternalSettingsUI"];

  return v1;
}

BOOL sub_10000D61C()
{
  v0 = sub_1000093AC();
  v1 = [v0 count] != 0;

  return v1;
}

uint64_t sub_10000D74C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_10000DB38()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsArchived];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

uint64_t sub_10000DCBC()
{
  v3[0] = 0;
  if (!qword_1002BD3E0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100056674;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_100269628;
    v5 = 0;
    qword_1002BD3E0 = _sl_dlopen();
  }

  v0 = qword_1002BD3E0;
  v1 = v3[0];
  if (!qword_1002BD3E0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10000DDBC()
{
  v3[0] = 0;
  if (!qword_1002BD488)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10007A300;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_100269E68;
    v5 = 0;
    qword_1002BD488 = _sl_dlopen();
  }

  v0 = qword_1002BD488;
  v1 = v3[0];
  if (!qword_1002BD488)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

id sub_10000DEBC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD3E8;
  v7 = qword_1002BD3E8;
  if (!qword_1002BD3E8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000E15C;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_10000E15C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000DF9C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD490;
  v7 = qword_1002BD490;
  if (!qword_1002BD490)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000E1B4;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_10000E1B4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000E07C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD4F0;
  v7 = qword_1002BD4F0;
  if (!qword_1002BD4F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000E20C;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_10000E20C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000E144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000E15C(uint64_t a1)
{
  sub_10000DCBC();
  result = objc_getClass("NPHCellularBridgeUIManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD3E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001877D8();
    return sub_10000E1B4(v3);
  }

  return result;
}

Class sub_10000E1B4(uint64_t a1)
{
  sub_10000DDBC();
  result = objc_getClass("NPHCellularBridgeUIManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD490 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001877D8();
    return sub_10000E20C(v3);
  }

  return result;
}

Class sub_10000E20C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD4F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10009A880;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026A718;
    v6 = 0;
    qword_1002BD4F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD4F8)
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
  result = objc_getClass("NPHCellularBridgeUIManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001877D8();
  }

  qword_1002BD4F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000E434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000E70C(uint64_t a1)
{
  [*(a1 + 32) registerAppDelegateNotifications];
  [*(a1 + 32) registerPairedSyncNotifications];
  v2 = *(a1 + 32);

  return [v2 registerNanoRegistryNotifications];
}

void sub_10000E944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000F16C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 loadSystemAppSpecifiers:*(a1 + 40)];
}

void sub_10000F2A0(uint64_t a1)
{
  v2 = +[COSCoreSpotlightIndexer sharedInstance];
  v3 = [NSURL URLWithString:@"/System/Library/BridgeManifests/"];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000781C0;
  v4[3] = &unk_100268430;
  objc_copyWeak(&v5, (a1 + 32));
  [v2 indexManifestBundlesAtURL:v3 withCompletion:v4];

  objc_destroyWeak(&v5);
}

void sub_10000F4CC(id a1)
{
  v1 = objc_alloc_init(COSReachabilityMonitor);
  v2 = qword_1002BD648;
  qword_1002BD648 = v1;
}

uint64_t sub_10000F59C()
{
  if (sub_10000F608())
  {
    return 1;
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"__SkipReachabilityChecks"];

  return v2;
}

uint64_t sub_10000F608()
{
  if (qword_1002BD300 != -1)
  {
    sub_10000F5F4();
  }

  return byte_1002BD2F8;
}

void sub_10000F640(id a1)
{
  v4 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v1 = off_1002BD348;
  v9 = off_1002BD348;
  if (!off_1002BD348)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000F738;
    v5[3] = &unk_1002680D0;
    v5[4] = &v6;
    sub_10000F738(v5);
    v1 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v1)
  {
    v3 = sub_100186904();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v3);
  }

  v2 = v1(&v4);
  byte_1002BD2F8 = [v2 isEqualToString:{@"FactoryActivated", v4}];
}

void *sub_10000F738(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1002BD350)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10002EF50;
    v5[4] = &unk_100268108;
    v5[5] = v5;
    v6 = off_100268CE0;
    v7 = 0;
    qword_1002BD350 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1002BD350;
    if (qword_1002BD350)
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

  v2 = qword_1002BD350;
LABEL_5:
  result = dlsym(v2, "MAEGetActivationStateWithError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD348 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000FC10(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: currentSyncSession: %@ error: %@", buf, 0x16u);
  }

  if (!v7)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000CF6F4;
    v9[3] = &unk_100268458;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v6;
    dispatch_async(&_dispatch_main_q, v9);

    objc_destroyWeak(&v11);
  }
}

void sub_10000FF84(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "NRPairedDeviceRegistry retriggerUnpairInfoDialog started", buf, 2u);
  }

  v2 = +[NRPairedDeviceRegistry sharedInstance];
  [v2 retriggerUnpairInfoDialog];

  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NRPairedDeviceRegistry retriggerUnpairInfoDialog completed", v4, 2u);
  }
}

void sub_100010274(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = a3;
  [v4 setIsNetworkReachable:(a2 >> 1) & 1];
  [v4 setIsConnectedOverWifi:(a2 & 0x40000) == 0];
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = [v4 isNetworkReachable];
    v8 = 1024;
    v9 = [v4 isConnectedOverWifi];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reachability Updated ~ Network reachability: %{BOOL}d isWifi: %{BOOL}d", v7, 0xEu);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"COSReachabilityMonitorChangedNotification" object:0];
}

uint64_t sub_1000107F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001082C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001086C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000108A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000108E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001091C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010954()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&qword_1002BBFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010A04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010A44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010A7C(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BBFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010B34()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010B6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010BA4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010BE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100010CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100010DA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010DE0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 88))
  {
  }

  sub_10014AA1C(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v1 = *(v0 + 184);
  if (v1 != 255)
  {
    sub_10014AA1C(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), v1);
  }

  v2 = *(v0 + 224);
  if (v2 != 255)
  {
    sub_10014AA1C(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2);
    v3 = *(v0 + 264);
    if (v3 != 255)
    {
      sub_10014AA1C(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), v3);
    }
  }

  sub_10014AA1C(*(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));
  v4 = *(v0 + 344);
  if (v4 != 255)
  {
    sub_10014AA1C(*(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), v4);
  }

  v5 = *(v0 + 384);
  if (v5 != 255)
  {
    sub_10014AA1C(*(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376), v5);
    v6 = *(v0 + 424);
    if (v6 != 255)
    {
      sub_10014AA1C(*(v0 + 392), *(v0 + 400), *(v0 + 408), *(v0 + 416), v6);
    }
  }

  sub_10014AA80(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472));

  return _swift_deallocObject(v0, 475, 7);
}

uint64_t sub_100010F10()
{
  v1 = type metadata accessor for SearchZeroKeywordListItem();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1001379C4(&qword_1002BC868);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1001379C4(&qword_1002BC870);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_1001379C4(&qword_1002BC878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Locale();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  v12 = type metadata accessor for SettingsNavigationEventRecord();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100011148(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001379C4(&qword_1002BC880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001379C4(&qword_1002BC888);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1001379C4(&qword_1002BC890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SettingsNavigationEventRecord();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1000112F4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001379C4(&qword_1002BC880);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1001379C4(&qword_1002BC888);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_1001379C4(&qword_1002BC890);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SettingsNavigationEventRecord();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1000114B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000114E8(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BC9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011558()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000115A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000115D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011628()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011660()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001169C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000116EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011724()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100011764()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000117B0()
{
  sub_1001677E8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100011804()
{
  sub_10013BA14(&qword_1002BD0D8);
  sub_100167D48();
  sub_100167F9C();
  return swift_getOpaqueTypeConformance2();
}

void sub_100011B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100011DF0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD248)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100011F34;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_1002680F0;
    v6 = 0;
    qword_1002BD248 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD248)
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
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001860F8();
  }

  qword_1002BD240 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011F34()
{
  result = _sl_dlopen();
  qword_1002BD248 = result;
  return result;
}

id sub_1000124B0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD250;
  v7 = qword_1002BD250;
  if (!qword_1002BD250)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000143AC;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_1000143AC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100012578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000129CC(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [*(a1 + 32) learnMoreURL];
  [v3 openURL:v2 withCompletionHandler:0];
}

id sub_100013968(uint64_t a1, uint64_t a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(COSSOSController) activating UI, newtonEligibility:%lu", &v8, 0xCu);
  }

  [*(a1 + 32) setFinishedLoadingNewton:1];
  [*(a1 + 32) setNewtonEligibility:a2];
  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = sub_1000124B0();
      v6 = &__kCFBooleanTrue;
      goto LABEL_13;
    }

    if (a2 != 1)
    {
      return [*(a1 + 32) updateAvailableSafetyFeatures];
    }

    goto LABEL_10;
  }

  switch(a2)
  {
    case 2:
      v5 = sub_1000124B0();
      v6 = 0;
      goto LABEL_13;
    case 3:
LABEL_10:
      v5 = sub_1000124B0();
      v6 = &__kCFBooleanFalse;
LABEL_13:
      [v5 setNewtonTriggersEmergencySOSNumber:v6];
      return [*(a1 + 32) updateAvailableSafetyFeatures];
    case 4:
      [sub_1000124B0() setNewtonTriggersEmergencySOSNumber:&__kCFBooleanTrue];
      [sub_1000124B0() setNewtonTriggersEmergencySOSWorkouts:1];
      break;
  }

  return [*(a1 + 32) updateAvailableSafetyFeatures];
}

void sub_100013AB0(uint64_t a1, uint64_t a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013B3C;
  block[3] = &unk_100268180;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100013B3C(uint64_t a1)
{
  [*(a1 + 32) _stopLoading];
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(COSSOSController) newton not set, using newtonEligibility:%lu", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100013D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100013E84();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100013F64;
    v6[3] = &unk_1002681D0;
    v7 = *(a1 + 32);
    [v4 newtonEligibilityWithHealthStore:v3 completion:v6];
  }

  else
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(COSSOSController) no health store, newtonElibitiliy:%lu", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

id sub_100013E84()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD260;
  v7 = qword_1002BD260;
  if (!qword_1002BD260)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100014574;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_100014574(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100013F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013F64(uint64_t a1, uint64_t a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(COSSOSController) newtonEligibilityWithHealthStore:%lu", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100014028(uint64_t a1, uint64_t a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(COSSOSController) newtonEligibilityWithCompletion:%lu", &v6, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10001417C(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000141F4;
  v2[3] = &unk_100268220;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000141F4(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [sub_1000124B0() setNewtonTriggersEmergencySOSNumber:&__kCFBooleanFalse];
  }

  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(COSSOSController) newtonEligibility:%lu", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 buddyControllerReleaseHold:*(a1 + 32)];
}

void sub_1000143AC(uint64_t a1)
{
  sub_100014404();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOSUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD250 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1001860F8();
    sub_100014404();
  }
}

void sub_100014404()
{
  v1[0] = 0;
  if (!qword_1002BD258)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100014500;
    v1[4] = &unk_100268108;
    v1[5] = v1;
    v2 = off_100268240;
    v3 = 0;
    qword_1002BD258 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002BD258)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100014500()
{
  result = _sl_dlopen();
  qword_1002BD258 = result;
  return result;
}

COSiCloudLoginViewController *sub_100014574(uint64_t a1)
{
  sub_100014404();
  result = objc_getClass("SOSNewtonManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD260 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100186120();
    return [(COSiCloudLoginViewController *)v3 init];
  }

  return result;
}

void sub_1000146D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000146EC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stockholmSupportedInGizmoRegion:a2];
}

void sub_100014B7C(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:v3];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Success: %@ Error %@", &v7, 0x16u);
  }
}

void sub_100014D98(uint64_t a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed FollowUp for %@", &v4, 0xCu);
  }
}

void sub_100014F60(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerDone:*(a1 + 32)];
}

void sub_1000152E8(uint64_t a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) username];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Issuing primeBuysOnWatchCredentials... for %@", &v7, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 bridgeController];
  v6 = [*(a1 + 32) username];
  [v5 sendBuysOnWatchUsername:v6 andPassword:*(a1 + 40) withCompletion:&stru_100268330];
}

void sub_1000153FC(id a1, BOOL a2, int64_t a3, NSString *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = pbb_accountsignin_log();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "primeBuysOnWatchCredentials Success!", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100186148(a3, v6, v8);
  }
}

void sub_100015798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000157CC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001588C;
  block[3] = &unk_100268380;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_10001588C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updatedAppleAccountPropertiesWithAuthenticated:*(a1 + 48) error:*(a1 + 32)];
}

void sub_100015A84(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved account: (%@) with success: (%{BOOL}d); error: (%@)", &v8, 0x1Cu);
  }
}

id sub_100015C10()
{
  if (qword_1002BD270 != -1)
  {
    sub_100186204();
  }

  v1 = qword_1002BD268;

  return v1;
}

void sub_100015C54(id a1)
{
  v1 = os_log_create("com.apple.Bridge", "ScreenTimeSetup");
  v2 = qword_1002BD268;
  qword_1002BD268 = v1;
}

void sub_100016388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000163E4(uint64_t a1)
{
  sub_10001643C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STSetupClient");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD278 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100186318();
    sub_10001643C();
  }
}

void sub_10001643C()
{
  v1[0] = 0;
  if (!qword_1002BD280)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100016538;
    v1[4] = &unk_100268108;
    v1[5] = v1;
    v2 = off_100268410;
    v3 = 0;
    qword_1002BD280 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002BD280)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100016538()
{
  result = _sl_dlopen();
  qword_1002BD280 = result;
  return result;
}

void sub_1000165AC(uint64_t a1)
{
  sub_10001643C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("STUserID");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD288 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100186340();
    sub_100016604();
  }
}

void sub_1000166F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100016714(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkLocalPairingStorePathAndReleaseHold];
}

void sub_100016A98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 buddyControllerReleaseHold:v3];
}

void sub_100017028(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 240));
  _Unwind_Resume(a1);
}

void sub_100017050(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100017108;
  v5[3] = &unk_100268458;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100017108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v4 = WeakRetained;
    v3 = [WeakRetained headerView];
    [v3 setIcon:*(a1 + 32) accessibilityLabel:0];

    WeakRetained = v4;
  }
}

void sub_100017484(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"RESTORE_FAILED" value:&stru_10026E598 table:@"Localizable"];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"PAIRING_FAILED_ERR_%@" value:&stru_10026E598 table:@"Localizable"];
    v8 = [NSString stringWithFormat:v7, v3];
    v9 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
    [v9 addAction:v12];

    v13 = pbb_setupflow_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Presenting 'restore failed' alert", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000177B0;
    block[3] = &unk_100268358;
    block[4] = *(a1 + 32);
    v16 = v9;
    v14 = v9;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100017724;
    v18[3] = &unk_1002682F0;
    v18[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v18);
  }
}

void sub_100017724(uint64_t a1)
{
  v2 = [UIApp setupController];
  v3 = [v2 linkUpgradeMonitor];
  [v3 indicateBackupRestoreStepCompleted];

  v4 = [*(a1 + 32) delegate];
  [v4 buddyControllerDone:*(a1 + 32)];
}

void sub_100018E00(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    v12 = WeakRetained;
    v4 = [a1[4] uniqueIdentifier];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = *(v12 + 5);
      v7 = *(v12 + 6);
      v8 = [v6 sectionViewForSection:v7];
      v9 = [v8 itemViewForItem:v5];
      v10 = [a1[5] passSnapshotForCredential:a1[4]];

      v11 = [v9 imageView];
      [v11 setImage:v10];
    }

    WeakRetained = v12;
  }
}

void sub_1000191B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000191F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

id sub_100019D1C(void *a1)
{
  v1 = a1;
  v2 = [v1 propertyForKey:@"COSSockPuppetAppTeamIDKey"];
  v3 = [v1 propertyForKey:@"COSSockPuppetAppBundleIDKey"];

  v4 = [NSString stringWithFormat:@"%@.%@", v2, v3];

  return v4;
}

void sub_100019DBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + OBJC_IVAR___PSViewController__specifier);
  v4 = a2;
  v5 = [v3 propertyForKey:v4];
  [v2 setProperty:v5 forKey:v4];
}

void sub_10001A24C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 40);
    if (v6 == 1 && a2 != 0)
    {
      v8 = block;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      v9 = sub_10001A340;
LABEL_10:
      v8[2] = v9;
      v8[3] = &unk_1002682F0;
      v8[4] = *(a1 + 32);
      dispatch_async(&_dispatch_main_q, v8);
      goto LABEL_11;
    }

    if (v6 == 4 && (a2 & 1) == 0)
    {
      v8 = v10;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v9 = sub_10001A3C0;
      goto LABEL_10;
    }
  }

LABEL_11:
}

id sub_10001A340(uint64_t a1)
{
  v2 = *(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier);
  v3 = [NSNumber numberWithInt:2];
  [v2 setProperty:v3 forKey:@"COSSockPuppetInstallationState"];

  v4 = *(a1 + 32);

  return [v4 reloadSpecifiers];
}

id sub_10001A3C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier);
  v3 = [NSNumber numberWithInt:5];
  [v2 setProperty:v3 forKey:@"COSSockPuppetInstallationState"];

  v4 = *(a1 + 32);

  return [v4 reloadSpecifiers];
}

id sub_10001AB4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 136446466;
      v12 = "[COSSockPuppetAppListController deleteAppOnGizmo:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "error while calling %{public}s for app: %@", &v11, 0x16u);
    }

    [*(a1 + 40) presentACError:v5];
  }

  v8 = *(*(a1 + 40) + OBJC_IVAR___PSViewController__specifier);
  v9 = [NSNumber numberWithInteger:a2];
  [v8 setProperty:v9 forKey:@"COSSockPuppetInstallationState"];

  return [*(a1 + 40) _resetAfterAppDeletionResponse:a2];
}

void sub_10001ACFC(uint64_t a1)
{
  v2 = OBJC_IVAR___PSViewController__specifier;
  v3 = *(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier);
  v4 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v3 setProperty:v4 forKey:@"COSSockPuppetInstallationState"];

  [*(*(a1 + 32) + v2) setProperty:&__kCFBooleanFalse forKey:@"COSSockPuppetStateChanging"];
  v5 = [*(*(a1 + 32) + v2) propertyForKey:PSAppSettingsBundleIDKey];
  LODWORD(v4) = sub_10002D914(v5);

  v6 = *(a1 + 32);
  if (v4)
  {

    [v6 reloadSpecifiers];
  }

  else
  {
    [v6 reloadSpecifierID:@"SHOWS_ON_GIZMO" animated:1];
    v7 = [*(a1 + 32) specifierForID:@"SHOW_ON_GIZMO_GROUP_ID"];
    [v7 removePropertyForKey:PSFooterTextGroupKey];
    [*(a1 + 32) reloadSpecifier:v7 animated:1];
  }
}

void sub_10001AEB0(uint64_t a1)
{
  v2 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v3 = pbb_bridge_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 4)
  {
    if (v4)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "App deleted", &v7, 2u);
    }

    v5 = [*(a1 + 32) specifierForID:@"SHOW_ON_GIZMO_GROUP_ID"];
    [v5 removePropertyForKey:PSFooterTextGroupKey];
    [*(a1 + 32) reloadSpecifier:v5 animated:1];
    [UIApp popToTopLevelSettingsAnimated:1];
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Delete failed, install state: %ld", &v7, 0xCu);
    }

    [*(a1 + 32) reloadSpecifierID:@"DELETE_ON_GIZMO" animated:1];
    v5 = [*(a1 + 32) specifierForID:@"SHOW_ON_GIZMO_GROUP_ID"];
    [v5 removePropertyForKey:PSFooterTextGroupKey];
    [*(a1 + 32) reloadSpecifier:v5 animated:1];
  }
}

void sub_10001B5A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 deviceStatus];
    if ([v8 installStatus] == 2)
    {
      [*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier) setProperty:&off_100281948 forKey:@"COSSockPuppetInstallationState"];
      [*(a1 + 32) _resetAfterSockPuppetResponseWithState:2];
LABEL_29:

      goto LABEL_30;
    }

    v9 = [v8 architectureCompatibility];
    v10 = [v5 companionAppBundleID];
    v11 = [v5 isBetaApp];
    v12 = pbb_bridge_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9 == 2 && (v11 & 1) == 0)
    {
      if (v13)
      {
        v14 = [v5 applicationName];
        *buf = 138412546;
        v33 = v14;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "App (%@) requires update! Requesting update for companion app (%@)", buf, 0x16u);
      }

      v31 = v10;
      v15 = [NSArray arrayWithObjects:&v31 count:1];
      v30 = 0;
      v16 = [ASDUpdateWatchApps updateBundleIDs:v15 userInitiated:1 error:&v30];
      v17 = v30;

      if (!v16 || v17)
      {
        v18 = pbb_setup_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 138412290;
        v33 = v17;
        v19 = "Error forcing updates: %@";
      }

      else
      {
        v18 = pbb_bridge_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
LABEL_27:

          goto LABEL_28;
        }

        *buf = 138412290;
        v33 = v10;
        v19 = "Companion app (%@) queued for update.";
      }

      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      goto LABEL_27;
    }

    if (v11)
    {
      if (v13)
      {
        v20 = [v5 applicationName];
        *buf = 138412290;
        v33 = v20;
        v21 = "Beta App (%@) doesn't get updated";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    else if (v13)
    {
      v20 = [v5 applicationName];
      *buf = 138412290;
      v33 = v20;
      v21 = "App (%@) does not require update.";
      goto LABEL_21;
    }

    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    v24 = *(a1 + 56);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001B9A0;
    v27[3] = &unk_1002685E8;
    v25 = v22;
    v26 = *(a1 + 32);
    v28 = v25;
    v29 = v26;
    [v23 installApplication:v25 onPairedDevice:v24 completion:v27];
    v17 = v28;
LABEL_28:

    goto LABEL_29;
  }

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "determineArchitectureCompatibility failed with error %@", buf, 0xCu);
  }

  [*(a1 + 32) presentACError:v6];
LABEL_30:
}

void sub_10001B9A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 136446466;
      v11 = "[COSSockPuppetAppListController setPuppetAppShows:specifier:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "error while calling %{public}s for app: %@", &v10, 0x16u);
    }

    [*(a1 + 40) presentACError:v5];
  }

  v8 = *(*(a1 + 40) + OBJC_IVAR___PSViewController__specifier);
  v9 = [NSNumber numberWithInteger:a2];
  [v8 setProperty:v9 forKey:@"COSSockPuppetInstallationState"];

  if ((a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [*(a1 + 40) _resetAfterSockPuppetResponseWithState:a2];
  }
}

void sub_10001BAE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 136446466;
      v11 = "[COSSockPuppetAppListController setPuppetAppShows:specifier:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "error while calling %{public}s for app: %@", &v10, 0x16u);
    }

    [*(a1 + 40) presentACError:v5];
  }

  v8 = *(*(a1 + 40) + OBJC_IVAR___PSViewController__specifier);
  v9 = [NSNumber numberWithInteger:a2];
  [v8 setProperty:v9 forKey:@"COSSockPuppetInstallationState"];

  if ((a2 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [*(a1 + 40) _resetAfterSockPuppetResponseWithState:a2];
  }
}

void sub_10001BC30(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 136446466;
      v11 = "[COSSockPuppetAppListController setPuppetAppShows:specifier:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "error while calling %{public}s for app: %@", &v10, 0x16u);
    }

    [*(a1 + 40) presentACError:v5];
  }

  v8 = *(*(a1 + 40) + OBJC_IVAR___PSViewController__specifier);
  v9 = [NSNumber numberWithInteger:a2];
  [v8 setProperty:v9 forKey:@"COSSockPuppetInstallationState"];

  if ((a2 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [*(a1 + 40) _resetAfterSockPuppetResponseWithState:a2];
  }
}

void sub_10001BFD8(uint64_t a1)
{
  v5 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:0];
  [v5 addAction:v4];

  [*(a1 + 48) presentViewController:v5 animated:1 completion:0];
}

id sub_10001C9F4(uint64_t a1)
{
  [*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier) setProperty:&__kCFBooleanTrue forKey:@"locallyAvailable"];
  v3.receiver = *(a1 + 32);
  v3.super_class = COSSockPuppetAppListController;
  return objc_msgSendSuper2(&v3, "reloadSpecifiers");
}

id sub_10001CC50(uint64_t a1)
{
  [*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier) setProperty:&__kCFBooleanFalse forKey:@"locallyAvailable"];
  v3.receiver = *(a1 + 32);
  v3.super_class = COSSockPuppetAppListController;
  return objc_msgSendSuper2(&v3, "reloadSpecifiers");
}

id sub_10001CD38()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD290;
  v7 = qword_1002BD290;
  if (!qword_1002BD290)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001D2E4;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_10001D2E4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10001CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10001D2E4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD298)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10001D428;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_100268658;
    v6 = 0;
    qword_1002BD298 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD298)
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
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018658C();
  }

  qword_1002BD290 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001D428()
{
  result = _sl_dlopen();
  qword_1002BD298 = result;
  return result;
}

id sub_10001F4DC()
{
  v0 = objc_alloc_init(UILabel);
  v1 = +[UIColor clearColor];
  [v0 setBackgroundColor:v1];

  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v2];

  v3 = +[PSListController appearance];
  v4 = [v3 textColor];
  [v0 setTextColor:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v5) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v5];

  return v0;
}

id sub_10001F5CC()
{
  v0 = objc_alloc_init(UILabel);
  v1 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  v2 = +[UIColor tableCellGrayTextColor];
  [v0 setTextColor:v2];

  v3 = +[UIColor clearColor];
  [v0 setBackgroundColor:v3];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1144750080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v4];

  return v0;
}

void sub_100020E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020EC4(id a1)
{
  v1 = pbb_setupflow_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Watch will update in Setup while not revlocked", v2, 2u);
  }
}

void sub_100020F2C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v7 = a4;
  v8 = +[NRPairedDeviceRegistry sharedInstance];
  [v8 resumePairingClientCrashMonitoring];

  v9 = +[UIApplication sharedApplication];
  v10 = [v9 setupController];
  v11 = [v10 linkUpgradeMonitor];
  [v11 requestLinkUpgrade];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained updateController];
  [v13 dismissViewControllerAnimated:1 completion:0];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setDisplayingUpdatePane:0];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 setUpdateController:0];

  if (!a2)
  {
    v16 = objc_loadWeakRetained((a1 + 32));
    [v16 cleanupAfterRestoreSuccess];
  }

  v17 = objc_loadWeakRetained((a1 + 32));
  v18 = [v17 finishCompletion];

  if (v18)
  {
    v19 = objc_loadWeakRetained((a1 + 32));
    v20 = [v19 finishCompletion];
    (v20)[2](v20, a2, v21, v7);
  }
}

void sub_1000216AC(id a1, UIAlertAction *a2)
{
  v2 = [UIApp setupController];
  [v2 companionDidFinishHealthSharingOptIn:0];
}

void sub_100022390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000223AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error returned when gathering diagnostic log list: %@", buf, 0xCu);
    }
  }

  else
  {
    if (!WeakRetained)
    {
      goto LABEL_36;
    }

    if ([v7 count])
    {
      v42 = v8;
      v41 = v11;
      [v11 setContainsAbsolutePath:0];
      v12 = objc_opt_new();
      v45 = objc_opt_new();
      v13 = objc_opt_new();
      v14 = objc_opt_new();
      v15 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v43 = v7;
      v16 = v7;
      v17 = [v16 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v52;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v51 + 1) + 8 * i);
            v22 = [v21 _containsSubstring:*(a1 + 32)];
            v23 = v13;
            if ((v22 & 1) == 0)
            {
              v24 = [v21 _containsSubstring:*(a1 + 40)];
              v23 = v14;
              if ((v24 & 1) == 0)
              {
                if (![v21 _containsSubstring:*(a1 + 48)] || (v25 = objc_msgSend(v21, "hasSuffix:", @"tar.gz"), v23 = v45, (v25 & 1) == 0))
                {
                  if ([v21 _containsSubstring:*(a1 + 56)])
                  {
                    v23 = v15;
                  }

                  else
                  {
                    v23 = v12;
                  }
                }
              }
            }

            [v23 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v18);
      }

      v11 = v41;
      [v41 setFilePaths:v12];
      [v41 setSysdiagnosePaths:v45];
      [v41 setScreenshotPaths:v13];
      [v41 setScreencapturePaths:v14];
      [v41 setAppPrivacyReportsPaths:v15];

      v7 = v43;
      v8 = v42;
    }

    else
    {
      if (![v8 count])
      {
LABEL_35:
        [v11 setPathsLoaded:1];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000228C0;
        block[3] = &unk_1002682F0;
        block[4] = v11;
        dispatch_async(&_dispatch_main_q, block);
        goto LABEL_36;
      }

      v44 = v7;
      v26 = v11;
      [v11 setContainsAbsolutePath:1];
      v27 = [v8 objectForKeyedSubscript:NSSFilesCategoryTypeDiagnostics];
      v28 = objc_opt_new();
      v29 = objc_opt_new();
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v12 = v27;
      v30 = [v12 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v48;
        do
        {
          for (j = 0; j != v31; j = j + 1)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v12);
            }

            v34 = *(*(&v47 + 1) + 8 * j);
            if ([v34 _containsSubstring:*(a1 + 56)])
            {
              v35 = v29;
            }

            else
            {
              v35 = v28;
            }

            [v35 addObject:v34];
          }

          v31 = [v12 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v31);
      }

      v11 = v26;
      [v26 setFilePaths:v28];
      v36 = [v8 objectForKeyedSubscript:NSSFilesCategoryTypeSysdiagnose];
      [v26 setSysdiagnosePaths:v36];

      v37 = [v8 objectForKeyedSubscript:NSSFilesCategoryTypeScreenshots];
      [v26 setScreenshotPaths:v37];

      v38 = [v8 objectForKeyedSubscript:NSSFilesCategoryTypeScreenCaptures];
      [v26 setScreencapturePaths:v38];

      v39 = [v8 objectForKeyedSubscript:NSSFilesCategoryTypeAppPrivacyReports];
      v40 = [v39 arrayByAddingObjectsFromArray:v29];
      [v26 setAppPrivacyReportsPaths:v40];

      v7 = v44;
    }

    v9 = 0;
  }

  if (v11)
  {
    goto LABEL_35;
  }

LABEL_36:
}

void sub_100023080(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) diagFileSpecifier:a2 isScreenshot:0];
  [*(a1 + 32) recheckFileDownload:v3];
  [*(a1 + 40) addObject:v3];
}

void sub_1000230EC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) diagFileSpecifier:a2 isScreenshot:0];
  [*(a1 + 32) recheckFileDownload:v3];
  [*(a1 + 40) addObject:v3];
}

void sub_100023158(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) diagFileSpecifier:a2 isScreenshot:1];
  [*(a1 + 32) recheckFileDownload:v3];
  [*(a1 + 40) addObject:v3];
}

void sub_1000231C4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) diagFileSpecifier:a2 isScreenshot:1];
  [*(a1 + 32) recheckFileDownload:v3];
  [*(a1 + 40) addObject:v3];
}

void sub_100023230(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) diagFileSpecifier:a2 isScreenshot:0];
  [*(a1 + 32) recheckFileDownload:v3];
  [*(a1 + 40) addObject:v3];
}

void sub_100023448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002346C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error transferring log file: %@", &v12, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = *(a1 + 32);
    v10 = [v5 absoluteString];
    [WeakRetained updateSpecifier:v9 withDownloadPath:v10];

    v11 = objc_loadWeakRetained((a1 + 40));
    [v11 cancelTransferProgress:*(a1 + 32)];
  }
}

void sub_100023984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000239A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    WeakRetained = pbb_bridge_log();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "error while attempting to cancel log transfer %@", &v7, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained cancelTransferProgress:*(a1 + 40)];
  }
}

void sub_100023DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023E08(uint64_t a1)
{
  v2 = [*(a1 + 32) propertyForKey:PSIDKey];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 40) downloadedDiagnosticLogs];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 lastPathComponent];
        v10 = [v2 isEqualToString:v9];

        if (v10)
        {
          v11 = [*(a1 + 40) transferredFilesPath];
          v12 = [v11 stringByAppendingPathComponent:v8];

          [*(a1 + 40) updateSpecifier:*(a1 + 32) withDownloadPath:v12];
          *(*(*(a1 + 48) + 8) + 24) = 1;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 40) checkIfFileInTransit:*(a1 + 32)];
  }
}

void sub_1000240AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000240C8(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 0x62)
  {
    v7[3] = v2;
    v7[4] = v3;
    [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:@"DiagnosticLogDownloadingKey"];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100024194;
    v5[3] = &unk_100268458;
    objc_copyWeak(v7, (a1 + 40));
    v6 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v5);

    objc_destroyWeak(v7);
  }
}

void sub_100024194(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
}

id sub_1000242AC(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:@"DiagnosticLogSharePathKey"];
  [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:@"FileDownloadedKey"];
  [*(a1 + 32) setButtonAction:"showDeleteOrShareAlert:"];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 reloadSpecifier:v3 animated:1];
}

void sub_100024750(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000247E4;
  v2[3] = &unk_100268358;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 dismissViewControllerAnimated:1 completion:v2];
}

void sub_100024A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024A98(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to delete file on gizmo %@ and error %@", buf, 0x16u);
    }
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100024BE4;
    v6[3] = &unk_100268458;
    objc_copyWeak(&v8, (a1 + 48));
    v7 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v6);

    objc_destroyWeak(&v8);
  }
}

void sub_100024BE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeSpecifier:*(a1 + 32) animated:1];
}

void sub_100024EA8(id a1)
{
  v1 = objc_alloc_init(COSInternalUserStudyDataManager);
  v2 = qword_1002BD2A0;
  qword_1002BD2A0 = v1;
}

void sub_100025A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100025AB0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD2C0;
  v8 = qword_1002BD2C0;
  if (!qword_1002BD2C0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000265E0;
    v4[3] = &unk_1002680D0;
    v4[4] = &v5;
    sub_1000265E0(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = *v0;

  return v1;
}

void sub_100025B90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AAUISignInController: should continue with displaying auth:%@ and error:%@", &v14, 0x16u);
  }

  if (a2)
  {
    v8 = +[PSListController appearance];
    *(*(a1 + 32) + 30) = [v8 usesDarkTheme];

    v9 = +[PSListController appearance];
    v10 = +[UIColor blackColor];
    [v9 setTextColor:v10];

    v11 = +[PSListController appearance];
    [v11 setUsesDarkTheme:0];

    [*(a1 + 40) setModalPresentationStyle:0];
    [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
  }

  else
  {
    v12 = pbb_accountsignin_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AAUISignInController: should NOT continue, also returned error: %@", &v14, 0xCu);
    }

    v13 = [*(a1 + 32) view];
    [v13 setUserInteractionEnabled:1];
  }
}

id sub_100026028(uint64_t a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[COSAppleIDSkippedBenefitsViewController signInController:didCompleteWithSuccess:error:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s -> dismissViewControllerAnimated", &v7, 0xCu);
  }

  v3 = +[PSListController appearance];
  v4 = BPSTextColor();
  [v3 setTextColor:v4];

  v5 = +[PSListController appearance];
  [v5 setUsesDarkTheme:*(*(a1 + 32) + 30)];

  return [*(a1 + 32) updateUIFromLoginStatus];
}

void sub_100026220(uint64_t a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSAppleIDSkippedBenefitsViewController signInControllerDidCancel:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s -> dismissViewControllerAnimated", &v4, 0xCu);
  }

  [*(a1 + 32) updateUIFromLoginStatus];
  v3 = +[PSListController appearance];
  [v3 setUsesDarkTheme:*(*(a1 + 32) + 30)];
}

void sub_100026314(id a1)
{
  v1 = [UIApp setupController];
  [v1 updateNanoRegistryToNormalState];

  v2 = [UIApp setupController];
  [v2 updateActivelyPairingWatchBuddyStage:2];
}

Class sub_100026428(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD2B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10002656C;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_100268898;
    v6 = 0;
    qword_1002BD2B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD2B8)
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
  result = objc_getClass("AAUISignInController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100186928();
  }

  qword_1002BD2B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10002656C()
{
  result = _sl_dlopen();
  qword_1002BD2B8 = result;
  return result;
}

void *sub_1000265E0(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1002BD2C8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100026720;
    v5[4] = &unk_100268108;
    v5[5] = v5;
    v6 = off_1002688B0;
    v7 = 0;
    qword_1002BD2C8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1002BD2C8;
    if (qword_1002BD2C8)
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

  v2 = qword_1002BD2C8;
LABEL_5:
  result = dlsym(v2, "AIDAServiceTypeMessages");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD2C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100026720()
{
  result = _sl_dlopen();
  qword_1002BD2C8 = result;
  return result;
}

void sub_100026A18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected value in resume pairing state: %@ %@", &v8, 0x16u);
    }
  }
}

void sub_100027518(id a1, NSString *a2, NSNumber *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = NSClassFromString(v4);
  if (!v6)
  {
    v9 = pbb_bridge_log();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    v13 = v4;
    v11 = "%@ class is nil!";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = objc_opt_respondsToSelector();
  v9 = pbb_bridge_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 1) == 0)
  {
    if (!v10)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = 138412290;
    v13 = v4;
    v11 = "%@ doesn't implement resumePairingWithSavedValue";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: resuming pairing with %@", &v12, 0x16u);
  }

  [(objc_class *)v7 resumePairingWithSavedValue:v5];
LABEL_13:
}

void sub_1000277A8(id a1, NSString *a2, NSNumber *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = NSClassFromString(v4);
  if (!v6)
  {
    v9 = pbb_bridge_log();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = 138412290;
    v13 = v4;
    v11 = "%@ class is nil!";
    goto LABEL_11;
  }

  v7 = v6;
  v8 = objc_opt_respondsToSelector();
  v9 = pbb_bridge_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 1) == 0)
  {
    if (!v10)
    {
LABEL_12:

      goto LABEL_13;
    }

    v12 = 138412290;
    v13 = v4;
    v11 = "%@ doesn't implement resumePairingDidFinishIPEWithSavedValue";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    goto LABEL_12;
  }

  if (v10)
  {
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: resuming pairing post-IPE with %@", &v12, 0x16u);
  }

  [(objc_class *)v7 resumePairingDidFinishIPEWithSavedValue:v5];
LABEL_13:
}

void sub_100028E2C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1000296CC(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 16) setProxiedDevice:a2];
  v3 = *(a1 + 32);

  return [v3 startCreation];
}

id sub_100029C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained buddyControllerCancelAnyHold];

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 32);

  return [v3 setViewControllers:v4 animated:1];
}

id sub_100029F90(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setBuddyControllerDelegate:*(a1 + 40)];
  *(*(a1 + 32) + 17) = 1;
  v2 = *(a1 + 32);

  return [v2 setupSharingIfReady];
}

void sub_10002A368(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10002A384(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleLegalDocuments:v6 error:v5];
}

id sub_10002BD70(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RF_URL_INFO" value:&stru_10026E598 table:@"Localizable"];

  v4 = [*(a1 + 32) valueForProperty:NRDevicePropertyProductType];
  v5 = +[NSLocale preferredLanguages];
  v6 = +[NSLocale systemLanguages];
  v7 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v5];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    if ([v8 length])
    {
      v9 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v9 = @"en";
    }
  }

  else
  {
    v9 = @"en";
  }

  v10 = [NSString stringWithFormat:@"www.apple.com/legal/rfexposure/%@/%@/", v4, v9];
  v11 = [NSString stringWithFormat:@"<a href=https://%@>%@</a>", v10, v10];
  v12 = [NSString stringWithFormat:v3, v11];

  return v12;
}

void sub_10002C794(void *a1)
{
  v1 = a1;
  v5 = objc_opt_new();
  [v5 configureWithTransparentBackground];
  v2 = +[UIColor blackColor];
  v3 = [v2 colorWithAlphaComponent:0.99];
  [v5 setBackgroundColor:v3];

  [v1 setStandardAppearance:v5];
  v4 = BPSBridgeTintColor();
  [v1 setTintColor:v4];
}

id sub_10002C85C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:101 target:v3 action:a2];

  return v4;
}

id sub_10002C8C8()
{
  if (qword_1002BD2E0 != -1)
  {
    sub_100186A68();
  }

  v1 = qword_1002BD2D8;

  return v1;
}

void sub_10002C90C(id a1)
{
  v1 = [AIDAServiceOwnersManager alloc];
  v4 = objc_alloc_init(ACAccountStore);
  v2 = [v1 initWithAccountStore:v4];
  v3 = qword_1002BD2D8;
  qword_1002BD2D8 = v2;
}

id sub_10002C980()
{
  if (qword_1002BD2F0 != -1)
  {
    sub_100186A7C();
  }

  v1 = qword_1002BD2E8;

  return v1;
}

void sub_10002C9C4(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.Bridge.NPSQueue", v3);
  v2 = qword_1002BD2E8;
  qword_1002BD2E8 = v1;
}

void sub_10002CA2C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = sub_10002C980();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002CBC0;
    block[3] = &unk_100268638;
    v12 = v5;
    v13 = v8;
    v14 = v6;
    dispatch_async(v9, block);

    v10 = v12;
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Domain=%@, key=%@, value=%@ must all be non-nil", buf, 0x20u);
    }
  }
}

void sub_10002CBC0(void *a1)
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:a1[4]];
  v3 = v2;
  if (v2)
  {
    [v2 setObject:a1[5] forKey:a1[6]];
    v4 = [v3 synchronize];
    v5 = objc_opt_new();
    v6 = a1[4];
    v10 = a1[6];
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [NSSet setWithArray:v7];
    [v5 synchronizeNanoDomain:v6 keys:v8];
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not create accessor for: %@", buf, 0xCu);
    }
  }
}

void sub_10002CD34(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v9 = sub_10002C980();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002CEE0;
    block[3] = &unk_100268A38;
    v13 = v5;
    v14 = v6;
    v15 = v8;
    dispatch_async(v9, block);

    v10 = v13;
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_retainBlock(v8);
      *buf = 138412802;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Domain=%@, key=%@, completionHandler=%@ must all be non-nil", buf, 0x20u);
    }
  }
}

void sub_10002CEE0(void *a1)
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:a1[4]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 synchronize];
    v5 = [v3 objectForKey:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not create accessor for: %@", &v7, 0xCu);
    }
  }
}

id sub_10002CFFC()
{
  result = sub_100009A74();
  if (result)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 BOOLForKey:@"COSEnableInternalUI"];

    return v2;
  }

  return result;
}

uint64_t sub_10002D04C()
{
  result = PBIsInternalInstall();
  if (result)
  {
    return CFPreferencesGetAppBooleanValue(@"_ShowInternalAutomationUI", @"com.apple.nanobuddy.automationhelper", 0) != 0;
  }

  return result;
}

id sub_10002D088()
{
  if (!PBIsInternalInstall() || (sub_10002D04C() & 1) != 0)
  {
    return 0;
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v0 = [v1 integerForKey:@"COSCameraUserTestingID"];

  return v0;
}

id sub_10002D0E8()
{
  if (!PBIsInternalInstall() || (sub_10002D04C() & 1) != 0)
  {
    return 0;
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"COSWristOnlyUserStudy"];

  return v2;
}

uint64_t sub_10002D148()
{
  result = PBIsInternalInstall();
  if (result)
  {
    return sub_10002D04C() ^ 1;
  }

  return result;
}

id sub_10002D18C(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [[NSUUID alloc] initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
    v3 = [v1 supportsCapability:v2];

    return v3;
  }

  return result;
}

id sub_10002D1FC()
{
  v0 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v1 = sub_10002D18C(v0);

  return v1;
}

id sub_10002D234(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [[NSUUID alloc] initWithUUIDString:@"0054136F-C120-452A-93D8-9259272B812F"];
    v3 = [v1 supportsCapability:v2];

    return v3;
  }

  return result;
}

id sub_10002D2A4()
{
  v0 = sub_10002D3EC(@"https://www.apple.com/help/watch-app/learn-more");
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 objectForKey:@"COSAppleWatchLinkURLOverride"];

  if ([v2 isMemberOfClass:objc_opt_class()])
  {
    v3 = v2;

    v0 = v3;
  }

  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "watchMarketing link %@", &v7, 0xCu);
  }

  v5 = [NSURL URLWithString:v0];

  return v5;
}

id sub_10002D3EC(void *a1)
{
  v1 = a1;
  v2 = +[NSLocale currentLocale];
  v3 = +[NSLocale deviceLanguageIdentifier];
  v4 = [v2 objectForKey:NSLocaleCountryCode];
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = v1;
  }

  else
  {
    v6 = [NSString stringWithFormat:@"country=%@&lang=%@", v4, v3];
    v7 = +[NSCharacterSet URLHostAllowedCharacterSet];
    v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = [NSString stringWithFormat:@"%@/?%@", v1, v8];
  }

  return v9;
}

id sub_10002D568(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = [PBBridgeWatchAttributeController sizeFromDevice:v1];
  v3 = v2 == 19 || v2 == 25;
  v4 = @"2025/Screen-Diagnostics";
  if (!v3)
  {
    v4 = 0;
  }

  if (v2 != 19 && v2 != 25)
  {
LABEL_11:
    v4 = @"2025/Screen-Diagnostics";
  }

  if (!v4)
  {
    v4 = @"Screen-Diagnostics";
  }

  v6 = [NSString stringWithFormat:@"%@%@", @"DeviceAssets/", v4];

  return v6;
}

id sub_10002D68C()
{
  if (qword_1002BD310 != -1)
  {
    sub_100186A90();
  }

  v1 = qword_1002BD308;

  return v1;
}

void sub_10002D6D0(id a1)
{
  v4 = BPSTextColor();
  v1 = [v4 styleString];
  v2 = [NSString stringWithFormat:@"        var spans = document.getElementsByTagName('SPAN')        for (var i = 0; i < spans.length; i += 1) {        spans[i].style.color='%1$@';        }        var paragraphs = document.getElementsByTagName('P');        for (var i = 0; i < paragraphs.length; i += 1) {        paragraphs[i].style.color='%1$@';        }", v1];;
  v3 = qword_1002BD308;
  qword_1002BD308 = v2;
}

id sub_10002D760(void *a1)
{
  v1 = a1;
  v11 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v1;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error while retrieving application record %@ with error %@", buf, 0x16u);
    }
  }

  v5 = [v2 iTunesMetadata];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 storeItemIdentifier]);

  if (v2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v8 = [NSString stringWithFormat:@"itms-beta://beta.itunes.apple.com/v1/app/%@?action=installWatchApp", v6];
    v9 = [NSURL URLWithString:v8];
  }

  return v9;
}

id sub_10002D914(void *a1)
{
  v1 = a1;
  v7 = 0;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v7];
  v3 = v7;
  if (v3)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = v1;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error while retrieving application record %@ with error %@", buf, 0x16u);
    }
  }

  v5 = [v2 isBeta];

  return v5;
}

void sub_10002DA20(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[ACXDeviceConnection sharedDeviceConnection];
  if (v5 && v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002DC3C;
    v12[3] = &unk_100268AD0;
    v13 = v6;
    v14 = v5;
    v15 = v7;
    [v8 applicationIsInstalledOnPairedDevice:v14 withBundleID:v13 completion:v12];

    v9 = v13;
  }

  else
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "error checking (%@) install status: nil device or nil bundle ID", buf, 0xCu);
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = @"nil device or nil bundle ID";
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [NSError errorWithDomain:@"COSAppInstallationStatusErrorDomain" code:1 userInfo:v11];

    (*(v7 + 2))(v7, 0, v9);
  }
}

void sub_10002DC3C(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_bridge_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = [v5 localizedDescription];
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "error checking %@ install status for device %@: %@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = 138412546;
    v13 = v11;
    v14 = 1024;
    LODWORD(v15) = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Install status for (%@): %i", &v12, 0x12u);
  }

  (*(a1[6] + 16))();
}

void sub_10002DDC4(uint64_t a1)
{
  v10 = objc_opt_new();
  v2 = [NPSDomainAccessor alloc];
  v3 = kBridgeDomain;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 activeWatch];
  v6 = [v2 initWithDomain:v3 pairedDevice:v5];

  [v6 setBool:a1 forKey:@"AutoUpdate"];
  v7 = [v6 synchronize];
  v8 = [v6 domain];
  v9 = [NSSet setWithObject:@"AutoUpdate"];
  [v10 synchronizeNanoDomain:v8 keys:v9];
}

id sub_10002DEE4()
{
  v0 = [NPSDomainAccessor alloc];
  v1 = kBridgeDomain;
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 activeWatch];
  v4 = [v0 initWithDomain:v1 pairedDevice:v3];

  v5 = [v4 synchronize];
  v6 = [v4 objectForKey:@"AutoUpdate"];
  v7 = [v6 BOOLValue];

  return v7;
}

uint64_t sub_10002DF9C()
{
  if (qword_1002BD320 != -1)
  {
    sub_100186AA4();
  }

  return byte_1002BD318;
}

void *sub_10002DFFC()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:NRDevicePropertyIsArchived];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

BOOL sub_10002E0AC(id a1, NRDevice *a2)
{
  v2 = NRDevicePropertyIsArchived;
  v3 = a2;
  v4 = [(NRDevice *)v3 valueForProperty:v2];
  v5 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsPaired];
  v6 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsAltAccount];

  if ([v5 BOOLValue] && (objc_msgSend(v6, "BOOLValue") & 1) == 0 && !objc_msgSend(v4, "BOOLValue") || objc_msgSend(v5, "BOOLValue") && (objc_msgSend(v6, "BOOLValue") & 1) != 0)
  {
    v7 = 1;
  }

  else if ([v4 BOOLValue])
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_10002E1A4(id a1, NRDevice *a2)
{
  v2 = NRDevicePropertyIsArchived;
  v3 = a2;
  v4 = [(NRDevice *)v3 valueForProperty:v2];
  v5 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsPaired];
  v6 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsAltAccount];

  if ([v5 BOOLValue] && (objc_msgSend(v6, "BOOLValue") & 1) == 0)
  {
    v7 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

id sub_10002E264()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100268B70];

  return v1;
}

BOOL sub_10002E2C0(id a1, NRDevice *a2)
{
  v2 = NRDevicePropertyIsArchived;
  v3 = a2;
  v4 = [(NRDevice *)v3 valueForProperty:v2];
  v5 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsPaired];
  v6 = [(NRDevice *)v3 valueForProperty:NRDevicePropertyIsAltAccount];

  if ([v5 BOOLValue] && (objc_msgSend(v6, "BOOLValue") & 1) == 0)
  {
    v7 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

BOOL sub_10002E388(id a1, NRDevice *a2)
{
  v2 = [(NRDevice *)a2 valueForProperty:NRDevicePropertyIsAltAccount];
  v3 = [v2 BOOLValue];

  return v3;
}

id sub_10002E3D0()
{
  v0 = +[NRPairedDeviceRegistry sharedInstance];
  v1 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100268BD0];

  return v1;
}

BOOL sub_10002E42C(id a1, NRDevice *a2)
{
  v2 = a2;
  v3 = [(NRDevice *)v2 valueForProperty:NRDevicePropertyIsAltAccount];
  if ([v3 BOOLValue])
  {
    v4 = [(NRDevice *)v2 valueForProperty:_NRDevicePropertyCompatibilityState];
    v5 = [v4 intValue] != 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_10002E500(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [NPSDomainAccessor alloc];
    v4 = [v2 initWithDomain:kBridgeDomain pairedDevice:v1];

    [v4 removeObjectForKey:@"BuildWatchIsUpdatingFrom"];
    v3 = [v4 synchronize];
  }
}

id sub_10002E594(void *a1, const char *a2)
{
  if (a2 == 2)
  {
    v2 = @"-victory";
  }

  else
  {
    v2 = &stru_10026E598;
  }

  return [a1 stringByAppendingString:v2];
}

void sub_10002E5B0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    if (v5)
    {
      v9 = objc_alloc_init(HKHealthStore);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10002E6B0;
      v10[3] = &unk_100268C40;
      v11 = v6;
      v12 = v8;
      [v9 profileIdentifierForNRDeviceUUID:v5 completion:v10];
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void sub_10002E6B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    v5 = &_dispatch_main_q;
    v6 = &_dispatch_main_q;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002E78C;
  v8[3] = &unk_100268C18;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = v3;
  dispatch_async(v5, v8);
  if (!v4)
  {
  }
}

void sub_10002E78C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(HKHealthStore);
    [v2 setProfileIdentifier:*(a1 + 32)];
    [v2 resume];
  }

  else
  {
    v2 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10002EAFC()
{
  if (qword_1002BD330 != -1)
  {
    sub_100186AFC();
  }

  v0 = pbb_bridge_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1002BD328)
    {
      v1 = @"Skip SyncTrap";
    }

    else
    {
      v1 = @"SyncTrap Mode";
    }

    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%@", &v3, 0xCu);
  }

  return byte_1002BD328;
}

void sub_10002EBD8(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002BD328 = [v1 BOOLForKey:@"SkipSyncTrap"];
}

id sub_10002EC30()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 sf_isiPhone];

  return v1;
}

id sub_10002EC70()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 sf_isiPad];

  return v1;
}

void sub_10002ECB0()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  [v0 removeObjectForKey:@"DisplayGraduationUnpairInstructions"];

  v1 = +[NRPairedDeviceRegistry sharedInstance];
  [v1 clearWatchNeedsGraduation:&stru_100268CA0];
}

void sub_10002ED2C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cleared watch needs gradutation: %@\n", &v4, 0xCu);
  }
}

void sub_10002EE00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (qword_1002BD340 != -1)
  {
    sub_100186B10();
  }

  if (qword_1002BD338)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [[NSString alloc] initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v14 = @"com.apple.Bridge";
      v15 = 2114;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

id sub_10002EF1C()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t sub_10002EF50()
{
  result = _sl_dlopen();
  qword_1002BD350 = result;
  return result;
}

void sub_10002F2C8(id a1)
{
  v7.width = 27.0;
  v7.height = 27.0;
  UIGraphicsBeginImageContextWithOptions(v7, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v2 = +[UIColor systemOrangeColor];
  [v2 setStroke];

  CGContextSetLineWidth(CurrentContext, 1.0);
  v8.origin.x = 1.0;
  v8.origin.y = 1.0;
  v8.size.width = 25.0;
  v8.size.height = 25.0;
  CGContextStrokeEllipseInRect(CurrentContext, v8);
  v3 = +[UIColor clearColor];
  [v3 setFill];

  v9.origin.x = 13.0;
  v9.origin.y = 10.0;
  v9.size.width = 14.0;
  v9.size.height = 5.5;
  UIRectFill(v9);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  v5 = qword_1002BD358;
  qword_1002BD358 = v4;

  UIGraphicsEndImageContext();
}

void sub_10002FA60(id a1)
{
  v1 = [UIColor colorWithRed:0.992 green:0.51 blue:0.031 alpha:0.85];
  v2 = BPSTintedSymbol();

  v3 = qword_1002BD368;
  qword_1002BD368 = v2;
}

void sub_100030060(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "installApplication %@ error: (%@)", buf, 0x16u);
  }

  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100030194;
    v8[3] = &unk_100268220;
    v8[4] = *(a1 + 40);
    v8[5] = a2;
    dispatch_async(&_dispatch_main_q, v8);
    sub_100030224(v5);
  }
}

id sub_100030194(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + OBJC_IVAR___PSTableCell__specifier));
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  [WeakRetained setProperty:v3 forKey:@"COSSockPuppetInstallationState"];

  v4 = *(a1 + 32);

  return [v4 setNeedsLayout];
}

void sub_100030224(void *a1)
{
  v1 = a1;
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = @"COSAppInstallErrorKey";
  v5 = v1;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  [v2 postNotificationName:@"COSAppInstallErrorNotification" object:0 userInfo:v3];
}

void sub_1000306B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000306DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 companionAppBundleID];
    v9 = [v5 deviceStatus];
    v10 = [v9 architectureCompatibility];
    v11 = [v5 isBetaApp];
    v12 = pbb_bridge_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v10 == 2 && (v11 & 1) == 0)
    {
      if (v13)
      {
        v14 = [v5 applicationName];
        *buf = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "App (%@) requires update! Requesting update for companion app (%@)", buf, 0x16u);
      }

      v23 = v8;
      v15 = [NSArray arrayWithObjects:&v23 count:1];
      v22 = 0;
      v16 = [ASDUpdateWatchApps updateBundleIDs:v15 userInitiated:1 error:&v22];
      WeakRetained = v22;

      if (!v16 || WeakRetained)
      {
        v18 = pbb_setup_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 138412290;
        v25 = WeakRetained;
        v19 = "Error forcing updates: %@";
      }

      else
      {
        v18 = pbb_bridge_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
LABEL_25:

          goto LABEL_26;
        }

        *buf = 138412290;
        v25 = v8;
        v19 = "Companion app (%@) queued for update.";
      }

      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      goto LABEL_25;
    }

    if (v11)
    {
      if (v13)
      {
        v20 = [v5 applicationName];
        *buf = 138412290;
        v25 = v20;
        v21 = "Beta App (%@) doesn't get updated";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    else if (v13)
    {
      v20 = [v5 applicationName];
      *buf = 138412290;
      v25 = v20;
      v21 = "App (%@) does not require update.";
      goto LABEL_19;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained installNanoBundle:*(a1 + 32) forDevice:*(a1 + 40)];
LABEL_26:

    goto LABEL_27;
  }

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "determineArchitectureCompatibility failed with error %@", buf, 0xCu);
  }

  sub_100030224(v6);
LABEL_27:
}

void sub_100030B90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error while removing application: %@ with error: %@", &v7, 0x16u);
    }

    sub_100030224(v4);
  }
}

void sub_100031750(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002BD378;
  qword_1002BD378 = v1;
}

double sub_100032DD0()
{
  x = CGRectZero.origin.x;
  v1 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v2 = [v1 size];

  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = v2 - 1;
  if (v5 <= 2.0)
  {
    if (v6 < 0x19 && ((0x11C30C3u >> v6) & 1) != 0)
    {
      v7 = &unk_1001C6810;
      return v7[v6];
    }
  }

  else if (v6 < 0x19 && ((0x11C30C3u >> v6) & 1) != 0)
  {
    v7 = &unk_1001C64F0;
    return v7[v6];
  }

  return x;
}

id sub_100032EF8()
{
  v0 = sub_100033100();
  v1 = [PBBridgeWatchAttributeController resourceString:@"Outro1" material:sub_100033148() size:v0 forAttributes:4];
  v2 = sub_100033188();
  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

id sub_100032F90()
{
  v0 = sub_100033100();
  v1 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v2 = [v1 edition];

  if (v2 == 3)
  {
    v3 = 6;
  }

  else
  {
    v3 = 5;
  }

  v4 = [PBBridgeWatchAttributeController resourceString:@"Outro2" material:sub_100033148() size:v0 forAttributes:v3];
  v5 = sub_100033188();
  v6 = [v4 stringByAppendingString:v5];

  return v6;
}

id sub_100033050()
{
  v0 = sub_100033100();
  v1 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v2 = +[PBBridgeWatchAttributeController resourceString:material:size:forAttributes:](PBBridgeWatchAttributeController, "resourceString:material:size:forAttributes:", @"Outro2", [v1 fallbackMaterialForSize:v0], v0, 5);
  v3 = sub_100033188();
  v4 = [v2 stringByAppendingString:v3];

  return v4;
}

uint64_t sub_100033100()
{
  v0 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v1 = [v0 size];

  if (v1 == 25)
  {
    return 19;
  }

  else
  {
    return v1;
  }
}

id sub_100033148()
{
  v0 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v1 = [v0 material];

  return v1;
}

__CFString *sub_100033188()
{
  v0 = +[UIScreen mainScreen];
  [v0 scale];
  if (v1 <= 2.0)
  {
    v2 = @"@2x";
  }

  else
  {
    v2 = @"@3x";
  }

  v3 = v2;

  return v2;
}

void sub_100035040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035080(uint64_t a1, void *a2, int a3)
{
  v15 = a2;
  v5 = @"HEADER_NO_APPLE_PAY";
  if (a3)
  {
    v5 = @"HEADER";
  }

  v6 = v5;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_10026E598 table:@"AppleID"];

  if (sub_10002D18C(*(*(a1 + 32) + 168)) && +[COSFindMyController isDeviceLocatorEnabled])
  {
    v9 = sub_10000DB38();
    HasCapabilityForString = BPSDeviceHasCapabilityForString();

    if (HasCapabilityForString)
    {
      v11 = @"HEADER_ACTIVATION_LOCK_ADDITION_FMW";
    }

    else
    {
      v11 = @"HEADER_ACTIVATION_LOCK_ADDITION";
    }

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:v11 value:&stru_10026E598 table:@"AppleID"];
    v14 = [v8 stringByAppendingString:v13];

    v8 = v14;
  }

  [v15 setProperty:v8 forKey:PSFooterTextGroupKey];
}

void sub_100035214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained specifierForID:@"iCloudHeader"];

  if (v4)
  {
    (*(*(a1 + 32) + 16))();
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 reloadSpecifier:v4];
  }
}

void sub_100035870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035894(uint64_t a1, void *a2, void *a3)
{
  v17 = a1;
  v4 = a2;
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "queryWatchForAccountsInfo getAccountsInfo returned error %@- dump follows", buf, 0xCu);
  }

  v18 = v5;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v17}];
        v14 = pbb_accountsignin_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v24 = v12;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "key=%@ value=%@", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = pbb_accountsignin_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "queryWatchForAccountsInfo getAccountsInfo dump complete", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((v17 + 32));
  [WeakRetained handleAccountsInfoReply:v7 error:v18];
}

void sub_1000362DC(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_10003654C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) specifierForID:a2];
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  [v4 setProperty:v3 forKey:PSEnabledKey];

  [*(a1 + 32) reloadSpecifier:v4];
}

void sub_100036D5C(id a1, BOOL a2, NSError *a3)
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"iTunesAccount-FollowUp";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed %@", &v4, 0xCu);
  }
}

void sub_100036E28(id a1, BOOL a2, NSError *a3)
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = @"AppleID-FollowUp";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removed %@", &v4, 0xCu);
  }
}

void sub_10003725C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _removeStoreFollowUp];
  }

  else
  {
    v6 = pbb_accountsignin_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithBool:0];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not attempting to remove followup for result: %@ error: %@", &v8, 0x16u);
    }
  }
}

void sub_1000381A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000381F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _textFieldValueDidChange:v3];
}

void sub_100038250(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _textFieldValueDidChange:v3];
}

void sub_1000382AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _textFieldValueDidChange:v3];
}

void sub_100038308(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _textFieldValueDidChange:v3];
}

id sub_1000391B0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD388;
  v7 = qword_1002BD388;
  if (!qword_1002BD388)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003A714;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_10003A714(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100039278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000394EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "markAsMissingSupportedForPairedDeviceWithUDID %@ Error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100039B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100039B98(void *a1, void *a2, int a3)
{
  v11 = a2;
  if (a3)
  {
    v5 = a1[4];
    v6 = *(*(a1[5] + 8) + 40);
    v7 = *(*(a1[6] + 8) + 40);
    v8 = [NSError errorWithDomain:@"COSFindMyErrorDomain" code:0 userInfo:0];
    (*(v5 + 16))(v5, v6, v7, v11, v8);
  }

  else
  {
    v9 = [v11 fmipWipeToken];

    if (v9)
    {
      (*(a1[4] + 16))();
    }

    else
    {
      v10 = [NSError errorWithDomain:@"COSFindMyErrorDomain" code:2 userInfo:0];
      (*(a1[4] + 16))();
    }
  }
}

void sub_100039E10(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 fmipWipeToken];

  if (v13)
  {
    v14 = [*(a1 + 32) device];
    v15 = [v14 valueForProperty:NRDevicePropertyUDID];

    v16 = objc_opt_class();
    v17 = [*(a1 + 32) device];
    LODWORD(v16) = [v16 isTinkerDevice:v17];

    if (v16)
    {
      v18 = [v11 fmipUrl];

      if (v18)
      {
        v35 = v15;
        v36 = v12;
        v37 = v10;
        v47 = 0;
        v48 = &v47;
        v49 = 0x2050000000;
        v19 = qword_1002BD398;
        v50 = qword_1002BD398;
        if (!qword_1002BD398)
        {
          *buf = _NSConcreteStackBlock;
          v43 = 3221225472;
          v44 = sub_10003A8DC;
          v45 = &unk_1002680D0;
          v46 = &v47;
          sub_10003A8DC(buf);
          v19 = v48[3];
        }

        v20 = v19;
        _Block_object_dispose(&v47, 8);
        v21 = [v19 alloc];
        v22 = [v9 username];
        [*(a1 + 32) member];
        v23 = v34 = v9;
        v24 = [v23 dsid];
        v25 = [v24 stringValue];
        v26 = [v11 fmipWipeToken];
        v27 = [v11 fmipUrl];
        v28 = [NSURL URLWithString:v27];
        v29 = [v21 initWithUserName:v22 dsid:v25 oneTimeRemoveAuthToken:v26 serverURL:v28];

        v9 = v34;
        v30 = [sub_1000391B0() sharedInstance];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10003A230;
        v40[3] = &unk_100268810;
        v41 = *(a1 + 48);
        v15 = v35;
        [v30 disableFMIPForAccount:v29 pairedDeviceWithUDID:v35 withCompletion:v40];

        v12 = v36;
        v10 = v37;
      }

      else
      {
        v33 = pbb_bridge_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "missing URL for FindMy", buf, 2u);
        }

        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v31 = [sub_1000391B0() sharedInstance];
      v32 = [v11 fmipWipeToken];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10003A2F0;
      v38[3] = &unk_100268810;
      v39 = *(a1 + 48);
      [v31 disableFMIPUsingToken:v32 forPairedDeviceWithUDID:v15 withCompletion:v38];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003A230(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A2DC;
  v6[3] = &unk_100268F10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10003A2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A39C;
  v6[3] = &unk_100268F10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10003A490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 fmipWipeToken];

  if (v9)
  {
    v10 = [*(a1 + 32) device];
    v11 = [v10 valueForProperty:NRDevicePropertyUDID];

    v12 = [sub_1000391B0() sharedInstance];
    v13 = [v7 fmipWipeToken];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003A5D8;
    v14[3] = &unk_100268810;
    v15 = *(a1 + 40);
    [v12 markPairedDeviceWithUDID:v11 asMissingUsingToken:v13 withCompletion:v14];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10003A5D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003A684;
  v6[3] = &unk_100268F10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10003A714(uint64_t a1)
{
  sub_10003A76C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FMDFMIPManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD388 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100186B74();
    sub_10003A76C();
  }
}

void sub_10003A76C()
{
  v1[0] = 0;
  if (!qword_1002BD390)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10003A868;
    v1[4] = &unk_100268108;
    v1[5] = v1;
    v2 = off_100268F80;
    v3 = 0;
    qword_1002BD390 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002BD390)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10003A868()
{
  result = _sl_dlopen();
  qword_1002BD390 = result;
  return result;
}

Class sub_10003A8DC(uint64_t a1)
{
  sub_10003A76C();
  result = objc_getClass("FMDFMIPAccountInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD398 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100186B9C();
    return [(COSRemoteManagementInformationViewController *)v3 requiresActivationCheck];
  }

  return result;
}

void sub_10003AD8C(uint64_t a1)
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 managingOrganizationInformation];

  objc_initWeak(&location, *(a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10018701C;
  v6[3] = &unk_1002684D0;
  objc_copyWeak(&v9, &location);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id sub_10003C710(void *a1)
{
  [*(a1[4] + 24) overrideMaterial:a1[9] size:a1[10]];
  [*(a1[4] + 64) setText:a1[5]];
  v2 = a1[4];
  v3 = v2[3];
  v4 = [v2 imagePath];
  [v3 setScreenImageName:v4];

  [*(a1[4] + 80) setText:a1[6]];
  [*(a1[4] + 96) setText:a1[7]];
  v5 = *(a1[4] + 104);
  v6 = a1[8];

  return [v5 setText:v6];
}

void sub_10003CEEC(uint64_t a1)
{
  v2 = [*(a1 + 32) dashboardData];
  v5 = [v2 updateEvent:*(a1 + 40)];

  [*(a1 + 32) _updateDashBoardRows:v5];
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  if (v3)
  {
    v4 = [*(a1 + 32) watchHeader];
    [v4 refreshForWatchDetails:v3];
  }
}

void sub_10003D014(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

void sub_10003D8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003D8FC(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003D994;
  v3[3] = &unk_100268FC8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_10003D994(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      [WeakRetained setDiscoveredWatchNearby:1];
      v3 = [v5 delegate];
      [v3 discoveredWatchNearby:v5];

      v4 = [v5 unpairedWatchDiscoveryTimer];
      [v4 invalidate];

      [v5 setUnpairedWatchDiscoveryTimer:0];
    }

    else
    {
      [WeakRetained _refreshWatchDiscoveryTimer];
    }

    WeakRetained = v5;
  }
}

void sub_10003DB24(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[NRDeviceDiscoveryController sharedInstance];
    v4 = [v3 devices];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v14 = v1;
      v8 = 0;
      v9 = *v16;
      v10 = NRDevicePropertyAdvertisedName;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) valueForProperty:v10];
          if (v12)
          {
            v13 = pbb_setupflow_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v20 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "foundDevice %@", buf, 0xCu);
            }

            v8 = 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);

      v1 = v14;
      if (v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [WeakRetained _shouldAllowBailoutForDetectingNetworkRelayWatches];
LABEL_18:
    (*(*(v1 + 32) + 16))();

    goto LABEL_19;
  }

  (*(*(v1 + 32) + 16))();
LABEL_19:
}

void sub_10003E1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003E1C4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(a1 + 32) + 136) = 0;
    v9 = pbb_setup_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "getUsageData %@ %@", buf, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 160), a2);
    if (v7)
    {
      *(*(a1 + 32) + 137) = 1;
      v10 = objc_opt_new();
      v11 = *(a1 + 32);
      v12 = *(v11 + 160);
      *(v11 + 160) = v10;

      v13 = *(a1 + 32);
      BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
    }

    [WeakRetained reloadSpecifiers];
  }
}

void sub_10003E384(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_10003EB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003EB48(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) setProperty:v4 forKey:PSIconImageKey];
    [WeakRetained reloadSpecifierID:*(a1 + 40)];
  }
}

int64_t sub_10003EBC4(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = [a3 propertyForKey:@"TOTAL_SIZE"];
  v6 = [v4 propertyForKey:@"TOTAL_SIZE"];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_10003F17C(id a1, PSCapacityBarCategory *a2, PSCapacityBarCategory *a3)
{
  v4 = a3;
  v5 = [(PSCapacityBarCategory *)a2 bytes];
  v6 = [(PSCapacityBarCategory *)v4 bytes];

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_10003F7C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F83C;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10003F83C(uint64_t a1)
{
  v4 = [UIApp settingsController];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + OBJC_IVAR___PSViewController__parentController));
  v3 = [v4 popToViewController:WeakRetained animated:1];
}

void sub_1000417FC(uint64_t a1)
{
  v11 = [*(*(a1 + 32) + 56) stringByAppendingString:@"@3x.png"];
  v2 = [UIImage imageNamed:?];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 64);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [UIImage imageNamed:v3 inBundle:v4];

    if (PBIsInternalInstall())
    {
      if (CFPreferencesGetAppBooleanValue(@"DebugMobileAssetLoading", @"com.apple.Bridge", 0))
      {
        [v2 size];
        UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
        [v2 drawAtPoint:{0.0, 0.0}];
        v5 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
        [v5 setFill];

        [v2 size];
        v7 = v6;
        [v2 size];
        v14.size.height = v8;
        v14.origin.x = 0.0;
        v14.origin.y = 0.0;
        v14.size.width = v7;
        UIRectFillUsingBlendMode(v14, kCGBlendModePlusLighter);
        v9 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        v2 = v9;
      }
    }
  }

  v10 = [*(a1 + 32) marketingBannerImage];
  [v10 setImage:v2];
}

void sub_1000419B0(uint64_t a1)
{
  v2 = [*(a1 + 32) marketingBannerImage];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100041A78;
  v3[3] = &unk_100269120;
  v4 = *(a1 + 40);
  [UIView transitionWithView:v2 duration:5242880 options:v3 animations:&stru_100269160 completion:0.45];
}

void sub_10004225C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100042284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _logConnectionDescription];
  [WeakRetained _spinnerFinished];
  if ([*(a1 + 32) radioState])
  {
    [WeakRetained showConnectivityAlert];
  }

  else
  {
    v2 = [WeakRetained getStartedDelegate];
    [v2 tappedStart];

    kdebug_trace();
  }
}

void sub_1000424A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000424D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _spinnerFinished];
  [WeakRetained _logConnectionDescription];
  if ([*(a1 + 32) radioState])
  {
    [WeakRetained showConnectivityAlert];
  }

  else
  {
    v2 = [WeakRetained getStartedDelegate];
    [v2 tappedStartInternal];
  }
}

void sub_100042D84(id a1, UIAlertAction *a2)
{
  v2 = +[COSReachabilityMonitor sharedMonitor];
  v3 = [v2 radioState];

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  if ((v3 & 4) != 0)
  {
    v4 = @"prefs:root=WIFI";
  }

  else
  {
    v4 = @"prefs:root=Bluetooth";
  }

  v5 = [NSURL URLWithString:v4];
  [v6 openSensitiveURL:v5 withOptions:0];
}

void sub_100043588(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043600;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100043600(uint64_t a1)
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = *(a1 + 32);
  v8 = NRDevicePropertyIsPaired;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  [v2 removePropertyObserver:v3 forPropertyChanges:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = [*(a1 + 32) collectionView];
  [v7 reloadData];
}

void sub_1000437A8(uint64_t a1)
{
  v2 = objc_alloc_init(BCDiscoverPluginManager);
  v3 = [v2 discoverPlugins];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004385C;
  v5[3] = &unk_100268358;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_10004385C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = a1;
  obj = [*(a1 + 40) copy];
  v19 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v19)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = objc_alloc_init(NSMutableArray);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [v6 copy];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 isAvailableInCurrentConfiguration] & 1) == 0)
              {
                v14 = pbb_discover_log();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  sub_100187464(v28, v13, &v29, v14);
                }
              }

              else
              {
                [v7 addObject:v13];
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
          }

          while (v10);
        }

        [*(*(v18 + 32) + 24) addObject:v7];
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v19);
  }

  *(*(v18 + 32) + 8) = 0;
  v15 = [*(v18 + 32) collectionView];
  [v15 reloadData];
}

void sub_10004650C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100047D04;
    block[3] = &unk_1002682F0;
    v5 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }
}

int64_t sub_100046EF4(id a1, _COSTCCItem *a2, _COSTCCItem *a3)
{
  v4 = a3;
  v5 = [(_COSTCCItem *)a2 displayName];
  v6 = [(_COSTCCItem *)v4 displayName];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100047158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100047214;
    v7[3] = &unk_1002691E8;
    v7[4] = *(a1 + 32);
    v8 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_100047214(uint64_t a1)
{
  v2 = [*(a1 + 32) imageCache];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = [*(a1 + 32) tableView];
  v4 = [NSIndexPath indexPathForRow:*(a1 + 56) inSection:0];
  v5 = [v3 cellForRowAtIndexPath:v4];

  [v5 setIcon:*(a1 + 40)];
}

void sub_100047D04(uint64_t a1)
{
  v2 = [*(a1 + 32) _generateTCCItems];
  [*(a1 + 32) setItems:v2];

  v3 = [*(a1 + 32) tableView];
  [v3 reloadData];
}

void sub_10004A8A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004A8BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315906;
    v19 = "[COSRestoreSelectionViewController _triggerUpdate:]_block_invoke";
    v20 = 2048;
    v21 = a2;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Update completed with status: %ld and error: %@ for update: %@", &v18, 0x2Au);
  }

  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained continueButton];
    [v13 setEnabled:1];

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 backupsTableView];
    [v15 setUserInteractionEnabled:1];

    [UIApp setIsUpdatingGizmoInSetupFlow:0];
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[COSRestoreSelectionViewController _triggerUpdate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Update dismissed, UI reenabled", &v18, 0xCu);
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[COSRestoreSelectionViewController _triggerUpdate:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: triggering restore", &v18, 0xCu);
    }

    v11 = objc_loadWeakRetained((a1 + 32));
    [v11 _triggerRestoreFromIndex:*(a1 + 40)];
LABEL_10:

    goto LABEL_15;
  }

  v16 = pbb_bridge_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Update unsuccessful, aborting pairing", &v18, 2u);
  }

  [UIApp resetSetupFlowAnimated:1 forEvent:57];
LABEL_15:
  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 setSetupUpdateManager:0];
}

void sub_10004ACD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001875A0();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AE7C;
    block[3] = &unk_100268358;
    block[4] = *(a1 + 32);
    v9 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restore from Backup Complete (%@)", buf, 0xCu);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004AE88;
    v7[3] = &unk_1002682F0;
    v7[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_10004AFFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100187614();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B1C4;
    block[3] = &unk_100268358;
    block[4] = *(a1 + 32);
    v14 = v3;
    dispatch_async(&_dispatch_main_q, block);
    v6 = v14;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) _bridgeConciseDebugDescription];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restore from Other Paired Device Complete (%@)", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004B1D0;
    v10[3] = &unk_100268358;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    dispatch_async(&_dispatch_main_q, v10);
    v6 = v11;
  }
}

void sub_10004B1D0(uint64_t a1)
{
  v2 = NRDevicePropertySerialNumber;
  v4 = [*(a1 + 32) valueForProperty:NRDevicePropertySerialNumber];
  v3 = [*(*(a1 + 40) + 40) valueForProperty:v2];
  [UIApp setIsRestoringToKnownDevice:{objc_msgSend(v4, "isEqualToString:", v3)}];
  [*(a1 + 40) _restoreCompletedWithSuccess];
}

void sub_10004BB24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "no backups found, releasing hold and skipping setdelegate", v8, 2u);
    }

    [objc_opt_class() tellLinkUpgradeMonitorAboutBackupStepCompletion];
    v7 = +[COSBackupManager sharedBackupManager];
    [v7 setDelegate:0];

    v5 = [*(a1 + 32) delegate];
    [v5 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "backups found, releasing hold in setdelegate", buf, 2u);
    }

    v4 = +[COSBackupManager sharedBackupManager];
    [v4 setDelegate:0];

    v5 = [*(a1 + 32) delegate];
    [v5 buddyControllerReleaseHold:*(a1 + 32)];
  }
}

void sub_10004C190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10004C1B4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD3A0;
  v7 = qword_1002BD3A0;
  if (!qword_1002BD3A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004C4E0;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_10004C4E0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10004C27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C294(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpecifiers:v3];
}

void sub_10004C3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004C3F4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    v5 = [WeakRetained navigationController];
    v6 = [v5 popViewControllerAnimated:1];
  }

  else
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KappaThirdParty,COSSOSSettingsKappaSharingViewController,disableKappaThirdPartyAppForSpecifier,failed", v7, 2u);
    }
  }
}

Class sub_10004C4E0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD3A8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10004C624;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_1002692C0;
    v6 = 0;
    qword_1002BD3A8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD3A8)
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
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001860F8();
  }

  qword_1002BD3A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10004C624()
{
  result = _sl_dlopen();
  qword_1002BD3A8 = result;
  return result;
}

void sub_10004D1A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_10004D1CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUserCaptureSequence:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setAssetsLoaded:1];
}

void sub_10004D3DC(id *a1)
{
  v2 = a1[4];
  v10 = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:&v10];
  v4 = v10;
  if (v3 == 3)
  {
    v5 = pbb_setup_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to load duration property for asset: %@ with error: %@", buf, 0x16u);
    }

    if (sub_10002D088() >= 1)
    {
      [a1[5] abortAndRecaptureMovie];
    }
  }

  else if (v3 == 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D568;
    block[3] = &unk_100268C18;
    v8 = a1[4];
    v9 = a1[6];
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10004D568(uint64_t a1)
{
  v2 = [AVPlayerItem playerItemWithAsset:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

void sub_10004D5E8(id a1)
{
  v1 = pbb_setup_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[COSInternalUserStudyViewController abortAndRecaptureMovie]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }

  v2 = +[UIApplication sharedApplication];
  [v2 resetFlowForCameraExpiry];

  +[COSInternalUserStudyAssetManager clearVideoFile];
}

id sub_10004DE2C(uint64_t a1)
{
  +[COSInternalUserStudyAssetManager clearVideoFile];
  v2 = *(a1 + 32);

  return [v2 completePane];
}

void sub_10004DE6C(uint64_t a1)
{
  v2 = dispatch_time(0, 20000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004DF2C;
  v3[3] = &unk_100268358;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_after(v2, &_dispatch_main_q, v3);
}

id sub_10004DF2C(uint64_t a1)
{
  [*(a1 + 32) setEnabled:1];
  v2 = *(a1 + 40);

  return [v2 setEnabled:1];
}

void sub_10004E3D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "dataBlob %@", buf, 0xCu);
  }

  v5 = dispatch_get_global_queue(33, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E50C;
  v7[3] = &unk_100268358;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10004E50C(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [*(a1 + 32) assetManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004E65C;
  v9[3] = &unk_100268858;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v5 = v2;
  v10 = v5;
  [v3 uploadData:v4 withCompletion:v9];

  v6 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BeamBridge] Upload Timed Out!", v8, 2u);
    }

    +[COSInternalUserStudyAssetManager clearVideoFile];
    [*(a1 + 32) completePane];
  }
}

void sub_10004E65C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004E71C;
  v9[3] = &unk_100269350;
  v13 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);
}

intptr_t sub_10004E71C(uint64_t a1)
{
  v2 = pbb_setup_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSNumber numberWithBool:*(a1 + 56)];
    v4 = *(a1 + 32);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Upload %@ (error %@)", buf, 0x16u);
  }

  if (*(a1 + 32))
  {
    v5 = +[COSInternalUserStudyAssetManager detailBundle];
    v6 = [v5 localizedStringForKey:@"USER_STUDY_UPLOAD_FAILED_TITLE" value:&stru_10026E598 table:@"User_Study"];
    v7 = [*(a1 + 32) localizedDescription];
    v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = +[COSInternalUserStudyAssetManager detailBundle];
    v10 = [v9 localizedStringForKey:@"USER_STUDY_COMPLETE_OKAY" value:&stru_10026E598 table:@"User_Study"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004E9C8;
    v14[3] = &unk_100268580;
    v14[4] = *(a1 + 40);
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v14];

    [v8 addAction:v11];
    [v8 setPreferredAction:v11];
    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Presenting 'User Study Complete' alert", buf, 2u);
    }

    [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    +[COSInternalUserStudyAssetManager clearVideoFile];
    [*(a1 + 40) completePane];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10004E9C8(uint64_t a1)
{
  if (sub_10002D16C())
  {
    v3 = +[UIApplication sharedApplication];
    [v3 resetFlowForCameraExpiry];
  }

  else
  {
    +[COSInternalUserStudyAssetManager clearVideoFile];
    v2 = *(a1 + 32);

    [v2 completePane];
  }
}

void sub_10004EA54(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_bridge_log();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Created BeamBridge TTR Report";
      v9 = v7;
      v10 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    v8 = "Failed to Create BeamBuddy TTR (Error: %@)";
    v9 = v7;
    v10 = 12;
    goto LABEL_7;
  }

  v11 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EBC8;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_after(v11, &_dispatch_main_q, block);
}

id sub_10004EBC8(uint64_t a1)
{
  +[COSInternalUserStudyAssetManager clearVideoFile];
  v2 = *(a1 + 32);

  return [v2 completePane];
}

id sub_10004F028(uint64_t a1)
{
  if (([*(a1 + 32) dismissed] & 1) == 0)
  {
    v2 = pbb_setup_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Flow required dismissal", buf, 2u);
    }

    if (sub_10002D16C())
    {
      if (sub_10002D088() >= 1)
      {
        v3 = +[COSBeamBridgeUserStudyController sharedController];
        v4 = [v3 continueUserStudyPhase];

        v5 = dispatch_time(0, 800000000);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10004F190;
        v8[3] = &unk_1002693C0;
        v9 = v4;
        v8[4] = *(a1 + 32);
        dispatch_after(v5, &_dispatch_main_q, v8);
      }

      v6 = +[UIApplication sharedApplication];
      [v6 resetFlowForCameraExpiry];
    }

    else
    {
      v6 = [*(a1 + 32) delegate];
      [v6 buddyControllerDone:*(a1 + 32)];
    }
  }

  return [*(a1 + 32) setDismissed:1];
}

void sub_10004F190(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v11 = +[UIApplication sharedApplication];
    [v11 presentSetupFlowAnimated:1];
  }

  else
  {
    v2 = +[COSInternalUserStudyAssetManager detailBundle];
    v3 = [v2 localizedStringForKey:@"USER_STUDY_COMPLETE_TITLE" value:&stru_10026E598 table:@"User_Study"];
    v4 = +[COSInternalUserStudyAssetManager detailBundle];
    v5 = [v4 localizedStringForKey:@"USER_STUDY_COMPLETE_BODY" value:&stru_10026E598 table:@"User_Study"];
    v6 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

    v7 = +[COSInternalUserStudyAssetManager detailBundle];
    v8 = [v7 localizedStringForKey:@"USER_STUDY_COMPLETE_OKAY" value:&stru_10026E598 table:@"User_Study"];
    v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:&stru_100269398];

    [v6 addAction:v9];
    [v6 setPreferredAction:v9];
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Presenting 'User Study Complete' alert", buf, 2u);
    }

    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }
}

void sub_10004F3A4(id a1, UIAlertAction *a2)
{
  v2 = +[COSBeamBridgeUserStudyController sharedController];
  [v2 startNewUserStudy];
}

uint64_t sub_10004F580()
{
  if ([sub_10004F784() dictationIsEnabled])
  {
    return 1;
  }

  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  v1 = +[NSLocale currentLocale];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = off_1002BD3C0;
  v11 = off_1002BD3C0;
  if (!off_1002BD3C0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100050218;
    *&buf[24] = &unk_1002680D0;
    *&buf[32] = &v8;
    sub_100050218(buf);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    sub_100186904();
    __break(1u);
  }

  v3 = v2(v1);
  if (v3)
  {
    v7 = 0;
    v0 = [sub_10004F784() dictationIsSupportedForLanguageCode:v3 error:&v7];
    v4 = v7;
  }

  else
  {
    v4 = 0;
    v0 = 0;
  }

  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v0;
    *&buf[18] = 2112;
    *&buf[20] = v4;
    *&buf[28] = 2112;
    *&buf[30] = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dictation: phoneLanguageCode: %@; needsToRun: %d, phoneError: %@; watchError: %@", buf, 0x26u);
  }

  return v0;
}

void sub_10004F764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004F784()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD3B0;
  v7 = qword_1002BD3B0;
  if (!qword_1002BD3B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100050050;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_100050050(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10004F84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004FC3C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD3D0;
  v7 = qword_1002BD3D0;
  if (!qword_1002BD3D0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000503CC;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_1000503CC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10004FD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050050(uint64_t a1)
{
  sub_1000500A8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFDictationConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD3B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100187688();
    sub_1000500A8();
  }
}

void sub_1000500A8()
{
  v1[0] = 0;
  if (!qword_1002BD3B8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_1000501A4;
    v1[4] = &unk_100268108;
    v1[5] = v1;
    v2 = off_100269438;
    v3 = 0;
    qword_1002BD3B8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_1002BD3B8)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000501A4()
{
  result = _sl_dlopen();
  qword_1002BD3B8 = result;
  return result;
}

void *sub_100050218(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1002BD3C8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100050358;
    v5[4] = &unk_100268108;
    v5[5] = v5;
    v6 = off_100269450;
    v7 = 0;
    qword_1002BD3C8 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1002BD3C8;
    if (qword_1002BD3C8)
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

  v2 = qword_1002BD3C8;
LABEL_5:
  result = dlsym(v2, "_VSCopyLanguageIdentifierForLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD3C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100050358()
{
  result = _sl_dlopen();
  qword_1002BD3C8 = result;
  return result;
}

void sub_1000503CC(uint64_t a1)
{
  sub_1000500A8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD3D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = sub_1001876B0();
    [(COSHeadphoneNotificationsController *)v2 viewDidLoad];
  }
}

void sub_100051784(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2;
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error when presenting auth dialog task with error: %@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, 0);
  }
}

void sub_1000519AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    a2;
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error when presenting auth dialog task with error: %@", &v7, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, 0);
  }
}

id sub_100052AE8(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 mutableCopy];
  if ([v3 length] >= a2 && objc_msgSend(v3, "length") > a2)
  {
    v5 = 0;
    v6 = a2;
    do
    {
      if ([v3 length] > v6)
      {
        [v4 insertString:@" " atIndex:v5 + v6];
        ++v5;
      }

      v6 += a2;
    }

    while (v6 < [v3 length]);
  }

  return v4;
}

id sub_100052BA8(void *a1)
{
  v1 = sub_100052AE8(a1, 5uLL);
  v2 = [v1 uppercaseString];

  return v2;
}

id sub_100052BF8(void *a1)
{
  v1 = [a1 mutableCopy];
  if ([v1 length] >= 3)
  {
    [v1 insertString:@" " atIndex:2];
  }

  if ([v1 length] >= 0xA)
  {
    [v1 insertString:@" " atIndex:9];
  }

  if ([v1 length] >= 0x11)
  {
    [v1 insertString:@" " atIndex:16];
  }

  return v1;
}

void sub_1000530B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained queryDevice];
}

void sub_100054154(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAboutInfo:v6 error:v5];
}

void sub_1000541CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUsageData:v6 error:v5];
}

void sub_100054310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    [WeakRetained setHasReceivedCellularPlanUpdate:1];
    v3 = [*(a1 + 32) userInfo];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v4 = qword_1002BD408;
    v31 = qword_1002BD408;
    if (!qword_1002BD408)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000568FC;
      v34 = &unk_1002680D0;
      v35 = &v28;
      v5 = sub_10000DCBC();
      v6 = dlsym(v5, "NPHCellularPlanInfoError");
      *(v35[1] + 24) = v6;
      qword_1002BD408 = *(v35[1] + 24);
      v4 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (!v4)
    {
      sub_100186904();
      __break(1u);
    }

    v7 = *v4;
    v23 = [v3 objectForKeyedSubscript:v7];

    if (v23)
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) name];
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ has error: %@", buf, 0x16u);
      }
    }

    v10 = [sub_10000DEBC() sharedInstance];
    v11 = [v10 cellularPlans];

    v12 = pbb_bridge_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 134217984;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrieved %lu plan item(s)", buf, 0xCu);
    }

    v14 = +[NSMutableArray array];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = pbb_bridge_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Inspecting plan item: %@", buf, 0xCu);
          }

          v21 = [v19 iccid];
          if (v21)
          {
            if ([v19 isSelected])
            {
              [v14 insertObject:v21 atIndex:0];
            }

            else if ([v19 isSelectable])
            {
              [v14 addObject:v21];
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    if ([v14 count])
    {
      [v22 handleRetrievedICCIDs:v14];
    }

    WeakRetained = v22;
  }
}

void sub_1000546FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054A24(id a1, PSSpecifierUpdates *a2)
{
  v2 = a2;
  [(PSSpecifierUpdates *)v2 reloadSpecifierWithID:@"SONGS_CELL_ID"];
  [(PSSpecifierUpdates *)v2 reloadSpecifierWithID:@"PHOTOS_CELL_ID"];
  [(PSSpecifierUpdates *)v2 reloadSpecifierWithID:@"APPLICATIONS_CELL_ID"];
  [(PSSpecifierUpdates *)v2 reloadSpecifierWithID:@"STORAGE_AVAILABLE_CELL_ID"];
}

void sub_100054C44(id a1, PSSpecifierUpdates *a2)
{
  v2 = a2;
  [(PSSpecifierUpdates *)v2 reloadSpecifierWithID:@"STORAGE_AVAILABLE_CELL_ID"];
  [(PSSpecifierUpdates *)v2 reloadSpecifierWithID:@"STORAGE_CAPACITY_CELL_ID"];
}

void sub_100056170(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained performUpdatesAnimated:*(a1 + 48) usingBlock:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void *sub_100056624(uint64_t a1)
{
  v2 = sub_10000DCBC();
  result = dlsym(v2, "NPHCellularPlanInfoDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD3D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100056674()
{
  result = _sl_dlopen();
  qword_1002BD3E0 = result;
  return result;
}

void *sub_1000566E8(uint64_t a1)
{
  v2 = sub_100056738();
  result = dlsym(v2, "_CTServerConnectionCreateOnTargetQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD3F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100056738()
{
  v3[0] = 0;
  if (!qword_1002BD3F8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100056838;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_100269640;
    v5 = 0;
    qword_1002BD3F8 = _sl_dlopen();
  }

  v0 = qword_1002BD3F8;
  v1 = v3[0];
  if (!qword_1002BD3F8)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100056838()
{
  result = _sl_dlopen();
  qword_1002BD3F8 = result;
  return result;
}

void *sub_1000568AC(uint64_t a1)
{
  v2 = sub_100056738();
  result = dlsym(v2, "_CTServerConnectionGetRemoteBundleInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD400 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000568FC(uint64_t a1)
{
  v2 = sub_10000DCBC();
  result = dlsym(v2, "NPHCellularPlanInfoError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD408 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100056AB0(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Dismissed internal settings.", v2, 2u);
  }
}

void sub_100057268(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100187800(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[COSScreenTimeController _openScreenTimeForTinkerFamilyMember]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Found: %@", &v9, 0x16u);
    }

    [*(a1 + 32) _openScreenTimeForFamilyMember:v5];
  }
}

void sub_100057714(uint64_t a1)
{
  v2 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v2 setSignalLimitOverride:PPDiscoveryLimitBridge];

  v3 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v3 begin];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"discoveredAdvertisingWatch:" name:PPDeviceWasDiscoveredNotification object:0];
}

id sub_100057C44()
{
  objc_opt_self();
  v0 = [UIApp setupController];
  v1 = [v0 activationManager];
  v2 = [v1 hasStashedALFlow];

  return v2;
}

id sub_100058DD4(uint64_t a1, uint64_t a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithUnsignedShort:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "watchDidSelectLanguageAndLocale %@", &v7, 0xCu);
  }

  return [*(a1 + 32) watchDidSelectLanguageAndLocale:a2];
}

id sub_100059798()
{
  if (qword_1002BD420 != -1)
  {
    sub_100187A8C();
  }

  v1 = qword_1002BD418;

  return v1;
}

void sub_1000597DC(id a1)
{
  v1 = NSClassFromString(@"VTUISiriOptinViewController");
  v2 = NSStringFromClass(v1);
  v11[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11[1] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v11[2] = v6;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v11[3] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:4];
  v10 = qword_1002BD418;
  qword_1002BD418 = v9;
}

id sub_100059F28(void *a1)
{
  v1 = a1;
  v2 = [@"Screen-Location" stringByAppendingString:@"-v10"];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  if (HasCapabilityForString)
  {
    v4 = [v2 stringByAppendingString:@"-Compass"];

    v2 = v4;
  }

  v5 = sub_10002D528(v2);

  return v5;
}

id sub_100059FE0(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_10002D528(*(&off_1002696E8 + a1));
  }

  return v2;
}

id sub_10005A034(unint64_t a1)
{
  v1 = sub_100059FE0(a1);
  LOBYTE(v4) = 1;
  v2 = [BPSAnimationControllingBuilder animationControllerWithFileName:v1 fileExtension:0 fileType:0 initialState:0 targetState:0 bundle:0 autoStart:0.5 startDelay:v4];

  return v2;
}

uint64_t COSBBUserStudyDataBlobReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v73[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v73[0] & 0x7F) << v5;
        if ((v73[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 6)
      {
        break;
      }

      if (v13 <= 9)
      {
        switch(v13)
        {
          case 7:
            v40 = PBReaderReadString();
            v41 = 64;
LABEL_94:
            v56 = *(a1 + v41);
            *(a1 + v41) = v40;

            goto LABEL_148;
          case 8:
            v40 = PBReaderReadString();
            v41 = 24;
            goto LABEL_94;
          case 9:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 76) |= 4u;
            while (1)
            {
              LOBYTE(v73[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v73[0] & 0x7F) << v21;
              if ((v73[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_122;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_122:
            v69 = 20;
            goto LABEL_147;
        }

        goto LABEL_113;
      }

      if (v13 == 10)
      {
        *(a1 + 76) |= 1u;
        v73[0] = 0;
        v48 = [a2 position] + 8;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
        {
          v71 = [a2 data];
          [v71 getBytes:v73 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v73[0];
        goto LABEL_148;
      }

      if (v13 == 11)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 76) |= 2u;
        while (1)
        {
          LOBYTE(v73[0]) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v73[0] & 0x7F) << v63;
          if ((v73[0] & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v11 = v64++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_146;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v65;
        }

LABEL_146:
        v69 = 16;
        goto LABEL_147;
      }

      if (v13 != 13)
      {
        goto LABEL_113;
      }

      v33 = objc_alloc_init(COSBBScannedResults);
      [a1 addResults:v33];
      v73[0] = 0;
      v73[1] = 0;
      if (!PBReaderPlaceMark() || !COSBBScannedResultsReadFrom(v33, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_148:
      v70 = [a2 position];
      if (v70 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 3)
    {
      switch(v13)
      {
        case 4:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *(a1 + 76) |= 0x20u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v44 |= (v73[0] & 0x7F) << v42;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v11 = v43++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_134;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v44;
          }

LABEL_134:
          v69 = 48;
          goto LABEL_147;
        case 5:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 76) |= 0x100u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v73[0] & 0x7F) << v57;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_142;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v59;
          }

LABEL_142:
          v69 = 72;
          goto LABEL_147;
        case 6:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 76) |= 0x80u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v73[0] & 0x7F) << v27;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_126;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_126:
          v69 = 56;
          goto LABEL_147;
      }
    }

    else
    {
      switch(v13)
      {
        case 1:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v73[0] & 0x7F) << v34;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_130;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_130:
          v69 = 52;
          goto LABEL_147;
        case 2:
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 76) |= 0x10u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v53 = [a2 position] + 1;
            if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v52 |= (v73[0] & 0x7F) << v50;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_138;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v52;
          }

LABEL_138:
          v69 = 36;
          goto LABEL_147;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v73[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v73 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v73[0] & 0x7F) << v14;
            if ((v73[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_118;
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

LABEL_118:
          v69 = 32;
LABEL_147:
          *(a1 + v69) = v20;
          goto LABEL_148;
      }
    }

LABEL_113:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_148;
  }

  return [a2 hasError] ^ 1;
}

void sub_10005C7F8(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = +[NSMutableDictionary dictionary];
    [v2 setObject:*(a1 + 32) forKey:@"items"];
    v3 = [v2 objectForKey:@"title"];
    v4 = [*(a1 + 40) bundle];
    v5 = SpecifiersFromPlist();

    v6 = [v5 sortedArrayUsingComparator:{&stru_100269710, 0}];
    v7 = [v6 mutableCopy];

    v8 = v7;
    v9 = *(a1 + 40);
    v10 = [v9 systemAppSpecifiers];
    LOBYTE(v9) = [v9 _newSystemAppSpecifiers:v8 sameAs:v10];

    if (v9)
    {
      v11 = pbb_bridge_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "System app specifier set is the same as the old, will not refresh", buf, 2u);
      }
    }

    else
    {
      v11 = [*(a1 + 40) systemAppSpecifiers];
      [*(a1 + 40) setSystemAppSpecifiers:v8];
      v12 = pbb_bridge_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "System app settings rows added, reloading", v19, 2u);
        }

        [*(a1 + 40) reloadSpecifiers];
      }

      else
      {
        if (v13)
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "System app settings rows loaded, inserting full set", v20, 2u);
        }

        v14 = *(a1 + 40);
        v15 = [v14 systemAppSpecifiers];
        [v14 _decorateInsertAndReloadSystemAppSpecifiers:v15];

        v16 = *(a1 + 40);
        v17 = [v16 systemAppSpecifiers];
        [v16 systemAppSpecifierProcessing:v17];
      }
    }
  }

  else
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "No settings data is loaded! There is nothing to process", v21, 2u);
    }
  }
}

int64_t sub_10005CABC(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_10005CDEC(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System app settings rows removed: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 identifier];
        [v10 removeSpecifierID:v11 animated:1];

        v12 = *(a1 + 40);
        v13 = [v9 identifier];
        [v12 _removeSystemAppSpecifierFromCache:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void sub_10005E768(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[COSUpdateWatchViewController suggestedButtonPressed:]_block_invoke";
    v17 = 2048;
    v18 = a2;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Update completed with status: %ld and error: %@ for update: %@", &v15, 0x2Au);
  }

  if (a2 == 1)
  {
    v11 = pbb_bridge_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Update dismissed, enabling UI", &v15, 2u);
    }

    v12 = [*(a1 + 32) suggestedChoiceButton];
    [v12 setEnabled:1];

    v13 = [*(a1 + 32) alternateChoiceButton];
    [v13 setEnabled:1];
  }

  else if (a2)
  {
    v14 = pbb_bridge_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Update unsuccessful, aborting pairing", &v15, 2u);
    }

    [*(a1 + 32) abortPairing];
  }

  else
  {
    v10 = [*(a1 + 32) delegate];
    [v10 buddyControllerDone:*(a1 + 32)];
  }
}

void sub_10005EB20(id a1, BOOL a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"FAILED";
    if (v2)
    {
      v4 = @"SUCCEEDED";
    }

    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OpenURL for zero day learn more link %@", &v5, 0xCu);
  }
}

void sub_10005EDC0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing result: (%@)", &v4, 0xCu);
  }
}

void sub_10005F674(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerReleaseHold:*(a1 + 32)];
}

void sub_1000615E0(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_internalPairingController Dismissed", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;
}

void sub_100061B94(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_internalPairingController Dismissed", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = 0;
}

id sub_10006217C(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Detected Frames! Cancel Scanning.", v5, 2u);
  }

  *(*(a1 + 32) + 11) = 1;
  [*(*(a1 + 32) + 176) stopDiscoveringWatchNearby];
  v3 = +[NRDeviceDiscoveryController sharedInstance];
  [v3 end];

  [*(a1 + 32) _cancelAlreadyPairedTimers];
  [*(a1 + 32) stopTrackingAccelerometer];
  return [*(a1 + 32) cancelEnqueuedAlreadyPairedDetectionStart];
}

id sub_100062828(uint64_t a1, uint64_t a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithBool:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Followed Learn More Link: %@.", &v7, 0xCu);
  }

  [PBBridgeCAReporter recordAlreadyPairedAlertLearnedMore:a2];
  return [*(a1 + 32) enqueueAlreadyPairedDetectionStart];
}

void sub_100062CF8(id a1)
{
  v1 = [UIApp setupController];
  v2 = [v1 pairingReportManager];

  [v2 addPairingTimeEventToPairingReportPlist:71 withValue:&off_100281A68 withError:0];
  [v2 completePairingMetricWithSuccess:0];
  [UIApp resetSetupFlowAnimated:1 forEvent:21];
  [UIApp dismissSetupFlowComplete:0 animated:1];
}

void sub_100062DE4(id a1)
{
  v1 = [UIApp setupController];
  v2 = [v1 pairingReportManager];

  [v2 addPairingTimeEventToPairingReportPlist:73 withValue:&off_100281A68 withError:0];
  [v2 completePairingMetricWithSuccess:0];
  [UIApp resetSetupFlowAnimated:1 forEvent:59];
  [UIApp dismissSetupFlowComplete:0 animated:1];
}

void sub_100062ED0(id a1, BOOL a2)
{
  v2 = a2;
  v3 = [UIApp setupController];
  v4 = [v3 pairingReportManager];

  [v4 addPairingTimeEventToPairingReportPlist:70 withValue:&off_100281A68 withError:0];
  [v4 completePairingMetricWithSuccess:0];
  [UIApp resetSetupFlowAnimated:1 forEvent:13];
  [UIApp dismissSetupFlowComplete:0 animated:1];
  [PBBridgeCAReporter recordEndOfLifePhoneAlertUserResponse:v2];
}

id sub_10006323C(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(UHP) Finished pairing", v4, 2u);
  }

  [*(a1 + 32) finishedPairing];
  return [*(a1 + 32) setWrappingUpSuccessfulManualPairing:0];
}

id sub_100063A20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;

  v4 = *(a1 + 32);

  return [v4 _beginConsideringFaceUpAdvice];
}

void sub_10006445C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002BD428 = [v1 BOOLForKey:@"Verbose_MA_Logging"];
}

void sub_10006481C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100064858(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v41 = v3;
  [WeakRetained setMagicCodeOutro:v3];

  v45 = +[NSFileManager defaultManager];
  v43 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v43 count])
  {
    v5 = [v43 firstObject];
    v42 = [NSString stringWithFormat:@"%@/%@/%@.mov", v5, PBAssetsCacheDirName, *(a1 + 32)];

    v44 = [v45 destinationOfSymbolicLinkAtPath:v42 error:0];
    v6 = [v45 fileExistsAtPath:v44];
    v7 = objc_loadWeakRetained((a1 + 64));
    v8 = [v7 _verboseMALogging];

    if (v8)
    {
      v9 = pbb_setupflow_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v42;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "symLinkPath: %@", buf, 0xCu);
      }

      v10 = pbb_setupflow_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v44;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "destinationPath: %@", buf, 0xCu);
      }
    }

    if (v6)
    {
      v11 = [NSString stringWithFormat:@"file://%@", v44];
      v12 = [NSURL URLWithString:v11];
      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v11 = sub_10002D51C();
  v12 = [v14 URLForResource:v15 withExtension:@"mov" subdirectory:v11];
  v13 = 0;
LABEL_12:

  v16 = pbb_setupflow_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Will add magicCodeOutroPerMaterial url: %@", buf, 0xCu);
  }

  v17 = objc_loadWeakRetained((a1 + 64));
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100064E04;
  v46[3] = &unk_1002692E0;
  objc_copyWeak(&v47, (a1 + 64));
  [v17 addItemWithURL:v12 completion:v46];

  v18 = +[PBBridgeWatchAttributeController sharedDeviceController];
  v19 = v18;
  if ((v13 & 1) == 0 && ([*(a1 + 56) _singleMaterialSize:{objc_msgSend(v18, "size")}] & 1) == 0)
  {
    v20 = +[UIScreen mainScreen];
    [v20 scale];
    v21 = @"@2x";
    if (v22 > 2.0)
    {
      v21 = @"@3x";
    }

    v40 = v21;

    v23 = [v19 material];
    v24 = [v19 size];
    v25 = [UIImageView alloc];
    v26 = [PBBridgeWatchAttributeController resourceString:@"generic-mask" material:v23 size:v24 forAttributes:4];
    v27 = [v26 stringByAppendingString:v40];
    v28 = sub_10002D528(v27);
    v29 = [UIImage imageNamed:v28];
    v30 = [v25 initWithImage:v29];
    v31 = objc_loadWeakRetained((a1 + 64));
    [v31 setGenericMask:v30];

    sub_100032DD0();
    v33 = v32;
    v35 = v34;
    v36 = pbb_bridge_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = @"nil";
      if (v44)
      {
        v37 = v44;
      }

      *buf = 138412290;
      v49 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Asset at path: %@ not found, using fallback outro video", buf, 0xCu);
    }

    v38 = objc_loadWeakRetained((a1 + 64));
    v39 = [v38 genericMask];
    [v39 setFrame:{CGPointZero.x, CGPointZero.y, v33, v35}];
  }

  objc_destroyWeak(&v47);
}

void sub_100064E04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMagicCodeOutroPerMaterial:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setAssetsLoaded:1];
}

void sub_100064FB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 statusOfValueForKey:@"duration" error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3 == 3)
  {
    NSLog(@"Failed to load duration property for asset: %@ with error: %@", *(a1 + 32), v4);
  }

  else if (v3 == 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000650B0;
    block[3] = &unk_100268C18;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1000650B0(uint64_t a1)
{
  v2 = [AVPlayerItem playerItemWithAsset:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v2;
    (*(v3 + 16))();
    v2 = v4;
  }
}

id sub_1000652F8(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device insignia did reach end notification received", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 64) currentItem];
  v4 = *(*(a1 + 32) + 72);

  if (v3 != v4)
  {
    return [*(a1 + 32) moveOutroToInsignia];
  }

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Advancing to the outro2 phase...", buf, 2u);
  }

  result = [*(*(a1 + 32) + 64) advanceToNextItem];
  v7 = *(a1 + 32);
  if (*(v7 + 96))
  {
    result = [*(v7 + 56) addSubview:?];
    v7 = *(a1 + 32);
  }

  if (*(v7 + 88))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100065498;
    v8[3] = &unk_1002682F0;
    v8[4] = v7;
    return [UIView animateWithDuration:v8 animations:0 completion:1.5];
  }

  return result;
}

void sub_100065C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065C28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006815C;
    block[3] = &unk_1002682F0;
    v5 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100067650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

Class sub_100068164(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD440)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000682A8;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_1002698D0;
    v6 = 0;
    qword_1002BD440 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD440)
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
  result = objc_getClass("ADASManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100187BB4();
  }

  qword_1002BD438 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000682A8()
{
  result = _sl_dlopen();
  qword_1002BD440 = result;
  return result;
}

void sub_100069500(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100069604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = COSMagicCodeScanner;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1000696C0(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = @"Unknown Errror";
  }

  else
  {
    v2 = off_100269A20[a1];
  }

  v6 = NSLocalizedDescriptionKey;
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:@"com.apple.Bridge" code:a1 userInfo:v3];

  return v4;
}

id sub_10006B2B4(void *a1)
{
  [*(a1[4] + 216) updateWithConfidences:a1[5]];
  v2 = *(a1[4] + 216);
  v3 = a1[6];

  return [v2 updateWithSummary:v3];
}

id sub_10006B31C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 216) setAlpha:0.5];
  *(*(a1 + 32) + 161) = 1;
  return result;
}

void sub_10006B368(uint64_t a1)
{
  NPayloadBytes = HCImagePerspectiveReader::GetNPayloadBytes(*(*(a1 + 32) + 64));
  PayloadBytePtr = HCImagePerspectiveReader::GetPayloadBytePtr(*(*(a1 + 32) + 64));
  v4 = 0;
  if (NPayloadBytes)
  {
    do
    {
      if (!PayloadBytePtr[v4])
      {
        goto LABEL_5;
      }

      ++v4;
    }

    while (NPayloadBytes != v4);
    v4 = NPayloadBytes;
  }

LABEL_5:
  v5 = [[NSString alloc] initWithBytes:PayloadBytePtr length:v4 encoding:4];
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (*(a1 + 40) - *(*(a1 + 32) + 136)) * 1000.0;
    *buf = 67109634;
    v9 = NPayloadBytes;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished decoding payload of length %d bytes, elapsed %.2fms - Payload: %@", buf, 0x1Cu);
  }

  *(*(a1 + 32) + 136) = *(a1 + 40);
  *(*(a1 + 32) + 152) = 1065353216;
  HCImagePerspectiveReader::Reset(*(*(a1 + 32) + 64));
}

void sub_10006B664(uint64_t a1)
{
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v3 = v2;

  v4 = *(*(a1 + 32) + 208);
  v8 = [NSString stringWithFormat:@"Read: %@", *(a1 + 40)];
  [v4 setText:?];

  v5 = *(a1 + 32);
  v6 = *(v5 + 208);
  [*(v5 + 200) frame];
  [v6 setFrame:{0.0, CGRectGetMinY(v12) + -25.0, v3, 25.0}];
  v9 = [*(a1 + 32) delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = [*(a1 + 32) delegate];
    [v10 updateScanningProgress:*(a1 + 40) key:1.0];
  }
}

void sub_10006B7D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained receivedData:*(a1 + 40)];
}

void sub_10006B840(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wrote Asset!", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006B914;
  block[3] = &unk_1002699B0;
  v4 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10006B924(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v15 = +[UIScreen mainScreen];
    [v15 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = *(*(a1 + 32) + 200);
    v19.origin.x = v3;
    v19.origin.y = v5;
    v19.size.width = v7;
    v19.size.height = v9;
    Height = CGRectGetHeight(v19);
    [*(a1 + 32) safeAreaInsets];
    v13 = Height - v12 + -5.0;
    v20.origin.x = v3;
    v20.origin.y = v5;
    v20.size.width = v7;
    v20.size.height = v9;
    [v10 setFrame:{0.0, v13, CGRectGetWidth(v20) * *(a1 + 40), 5.0}];
  }

  v16 = [*(a1 + 32) delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v17 = [*(a1 + 32) delegate];
    [v17 updateScanningProgress:0 key:{fmin(*(a1 + 40), 1.0)}];
  }
}