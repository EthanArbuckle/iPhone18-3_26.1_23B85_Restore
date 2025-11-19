os_log_t define_nph_log(char *category)
{
  v1 = os_log_create("com.apple.NanoPhone", category);

  return v1;
}

id nph_general_log()
{
  if (qword_22A80 != -1)
  {
    sub_DE28();
  }

  v1 = qword_22A78;

  return v1;
}

void sub_1A20(id a1)
{
  qword_22A78 = os_log_create("com.apple.NanoPhone", "general");

  _objc_release_x1();
}

id nph_sos_general_log()
{
  if (qword_22A90 != -1)
  {
    sub_DE3C();
  }

  v1 = qword_22A88;

  return v1;
}

void sub_1AA8(id a1)
{
  qword_22A88 = os_log_create("com.apple.NanoPhone", "sos_general");

  _objc_release_x1();
}

id nph_sos_newton_log()
{
  if (qword_22AA0 != -1)
  {
    sub_DE50();
  }

  v1 = qword_22A98;

  return v1;
}

void sub_1B30(id a1)
{
  qword_22A98 = os_log_create("com.apple.NanoPhone", "sos_newton");

  _objc_release_x1();
}

void sub_377C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_37A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_385C;
    v4[3] = &unk_1C600;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(&_dispatch_main_q, v4);

    objc_destroyWeak(&v6);
  }
}

void sub_385C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained imageView];
  [v2 setImage:*(a1 + 32)];
}

id CTSUServerQueue()
{
  if (qword_22AB0 != -1)
  {
    sub_DE64();
  }

  v1 = qword_22AA8;

  return v1;
}

void sub_3AF4(id a1)
{
  v1 = dispatch_queue_create("com.apple.bridge.nanophone.ctserverqueue", 0);
  v2 = qword_22AA8;
  qword_22AA8 = v1;

  if (!qword_22AA8)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "dispatch_queue_t CTSUServerQueue(void)_block_invoke";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerQueue", &v4, 0xCu);
    }
  }
}

uint64_t CTSUServerConnectionRef()
{
  if (qword_22AC0 != -1)
  {
    sub_DE78();
  }

  return qword_22AB8;
}

void sub_3BFC(id a1)
{
  _CTServerConnectionAddIdentifierException();
  v1 = CTSUServerQueue();
  qword_22AB8 = _CTServerConnectionCreateOnTargetQueue();

  if (!qword_22AB8)
  {
    v2 = nph_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke";
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s - unable to create sCTServerConnectionRef", &v3, 0xCu);
    }
  }
}

void sub_3D00(id a1, __CFString *a2, __CFDictionary *a3)
{
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "CTServerConnectionRef CTSUServerConnectionRef(void)_block_invoke_2";
    v8 = 2112;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s notification:%@ info:%@", &v6, 0x20u);
  }
}

void sub_4060(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nph_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_DE8C();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [v5 appDataUsageForPeriod:0];
    v9 = nph_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "App Data Usage Array: %@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_4214;
    v11[3] = &unk_1C6F8;
    v11[4] = v10;
    v12 = v5;
    v13 = *(a1 + 40);
    [v10 _getappDataUsageArrayfromTempArray:v8 forSystemServices:0 withCompletion:v11];
  }
}

void sub_4214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_42B4;
  v5[3] = &unk_1C6D0;
  v6 = *(a1 + 48);
  [v3 _addTotalUsageItemsToDataUsageArray:a2 deviceDataUsage:v4 completion:v5];
}

void sub_42B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NPHCSAppCellularDataUsageItem userSelectedComparator];
  v5 = [v3 sortedArrayUsingComparator:v4];

  (*(*(a1 + 32) + 16))();
}

void sub_4620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_4668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_DF0C();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[NPHCSCellularDataUsageDataSource _getappDataUsageArrayfromTempArray:forSystemServices:withCompletion:]_block_invoke";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%s - Data usage policies: %@", buf, 0x16u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v13 bundleId];
          v16 = [v14 objectForKeyedSubscript:v15];

          [v16 setDataUsagePolicy:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  v17 = *(a1 + 32);
  v18 = [*(*(*(a1 + 40) + 8) + 40) allValues];
  (*(v17 + 16))(v17, v18);
}

void sub_4DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_4E20(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NPHCSAppCellularDataUsageItem userSelectedComparator];
  v7 = [v3 sortedArrayUsingComparator:v4];

  [*(*(a1[5] + 8) + 40) setChildObjects:v7];
  [*(*(a1[6] + 8) + 40) addObject:*(*(a1[5] + 8) + 40)];
  v5 = a1[4];
  v6 = [*(*(a1[6] + 8) + 40) copy];
  (*(v5 + 16))(v5, v6);
}

void sub_4F50(id a1)
{
  v1 = objc_alloc_init(NSByteCountFormatter);
  v2 = qword_22AC8;
  qword_22AC8 = v1;

  [qword_22AC8 setZeroPadsFractionDigits:1];
  [qword_22AC8 setAdaptive:0];
  v3 = qword_22AC8;

  [v3 setCountStyle:3];
}

uint64_t NPHDeviceOSIsInternalInstall()
{
  if (qword_22AD8 != -1)
  {
    sub_DFA0();
  }

  return byte_22AE0;
}

uint64_t NPHDeviceHasBaseband()
{
  if (qword_22AE8 != -1)
  {
    sub_DFB4();
  }

  return byte_22AF0;
}

id NPHIsCerberusEnabled()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"cerberusEnabled"];

  return v1;
}

uint64_t NPHIsWalkaboutEnabled()
{
  if (qword_22AF8 != -1)
  {
    sub_DFC8();
  }

  return byte_22B00;
}

void sub_5170(id a1)
{
  v1 = CFPreferencesCopyAppValue(@"ExperimentGroup", @"com.apple.da");
  if (v1)
  {
    v2 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 isEqualToString:@"walkabout"])
      {
        if (qword_22AD8 != -1)
        {
          sub_DFA0();
        }

        byte_22B00 = byte_22AE0;
      }
    }
  }

  _objc_release_x1();
}

id NPHWiFiStringKey(void *a1)
{
  v1 = a1;
  if (MGGetBoolAnswer())
  {
    v2 = @"_WLAN";
  }

  else
  {
    v2 = @"_WIFI";
  }

  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

uint64_t NPHDeriveProgramName(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = a1;
  }

  qword_22B08 = [NSString stringWithUTF8String:v3];

  return _objc_release_x1();
}

void NPHSetTmpDirPrefix()
{
  v0 = +[NSBundle mainBundle];
  v1 = [v0 bundleIdentifier];
  [v1 cStringUsingEncoding:4];
  v2 = _set_user_dir_suffix();

  if ((v2 & 1) == 0)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_DFDC(v3);
    }
  }
}

id NPHSharedUtilitiesAppendBuildVersion(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = v2;
  v4 = @"unknown";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [NSString stringWithFormat:@"%@.%@.", v1, v5];

  return v6;
}

id NSStringFromTUCallDisconnectedReason(unsigned int a1)
{
  if (a1 < 0x1A && ((0x3EFFFFFu >> a1) & 1) != 0)
  {
    v2 = *(&off_1C880 + a1);
  }

  else
  {
    v2 = [NSString stringWithFormat:@"unhadled TUCallDisconnectedReason in %s", "NSString *NSStringFromTUCallDisconnectedReason(TUCallDisconnectedReason)"];
  }

  return v2;
}

void sub_55C4(id a1)
{
  v1 = +[PDRDevice activeDevice];
  byte_22B18 = [v1 hasHomeButton];
}

double mach_time_elapsed_to_seconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return (info.numer * a1 / info.denom) / 1000000000.0;
}

void nph_ensure_on_main_queue(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_5CD0(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:3];
  v3 = qword_22B28;
  qword_22B28 = v2;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"_NPHIdleTimeNotification:" name:@"NPHIdleNotification" object:0];
}

void sub_6E10(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_E094(v2, v3);
    }
  }
}

int64_t sub_6E74(id a1, NPHCSAppCellularDataUsageItem *a2, NPHCSAppCellularDataUsageItem *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NPHCSAppCellularDataUsageItem *)v4 isTotalUsage])
  {
    v6 = -1;
  }

  else if ([(NPHCSAppCellularDataUsageItem *)v5 isTotalUsage])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 BOOLForKey:@"NPHCSBridgeCellularUsageShouldSortByNameKey"];

    if ((v8 & 1) != 0 || (v9 = [(NPHCSAppCellularDataUsageItem *)v4 bytesUsed], v9 == [(NPHCSAppCellularDataUsageItem *)v5 bytesUsed]))
    {
      v10 = [(NPHCSAppCellularDataUsageItem *)v4 displayName];
      v11 = [(NPHCSAppCellularDataUsageItem *)v5 displayName];
      v6 = [v10 localizedStandardCompare:v11];
    }

    else
    {
      v12 = [(NPHCSAppCellularDataUsageItem *)v4 bytesUsed];
      v6 = v12 < [(NPHCSAppCellularDataUsageItem *)v5 bytesUsed];
    }
  }

  return v6;
}

void sub_85F0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [*(a1 + 32) activeCellularPlans];
  v4 = [v3 count];
  v5 = [*(a1 + 32) inactiveCellularPlans];
  v6 = [v5 count];

  v7 = +[NPHCellularBridgeUIManager sharedInstance];
  v8 = [v7 serviceSubscriptionsShouldShowAddNewRemotePlan];
  v9 = [v8 count];

  v43[0] = @"activeCellularPlansSection";
  v42[0] = @"key";
  v42[1] = @"count";
  v10 = [*(a1 + 32) activeCellularPlans];
  v11 = [v10 count];
  if (&v6[v4])
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = [NSNumber numberWithUnsignedInteger:v13];
  v43[1] = v14;
  v42[2] = @"header";
  v15 = *(a1 + 32);
  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"ACTIVE_CELLULAR_PLANS_HEADER" value:&stru_1CD90 table:0];
  v43[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
  [v2 addObject:v18];

  v19 = [*(a1 + 32) inactiveCellularPlans];
  v20 = [v19 count];

  if (v20)
  {
    v41[0] = @"inactiveCellularPlansSection";
    v40[0] = @"key";
    v40[1] = @"count";
    v21 = [*(a1 + 32) inactiveCellularPlans];
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
    v41[1] = v22;
    v40[2] = @"header";
    v23 = *(a1 + 32);
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"DISABLED_CELLULAR_PLANS_HEADER" value:&stru_1CD90 table:0];
    v41[2] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
    [v2 addObject:v26];
  }

  if ([*(a1 + 32) _shouldShowCellularDataUsage])
  {
    v39[0] = @"appsDataUsageSection";
    v38[0] = @"key";
    v38[1] = @"count";
    v27 = [*(a1 + 32) appsDataUsageArray];
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 count]);
    v39[1] = v28;
    v38[2] = @"header";
    v29 = *(a1 + 32);
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"CELLULAR_DATA_USAGE_GROUP_HEADER" value:&stru_1CD90 table:0];
    v39[2] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:3];
    [v2 addObject:v32];

    v36[0] = @"key";
    v36[1] = @"count";
    v37[0] = @"resetDataUsageSection";
    v37[1] = &off_1DDC8;
    v36[2] = @"header";
    v37[2] = &stru_1CD90;
    v33 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
    [v2 addObject:v33];
  }

  v34 = [v2 copy];
  [*(a1 + 32) setSections:v34];

  v35 = [*(a1 + 32) tableView];
  [v35 reloadData];
}

BOOL sub_8AFC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = [(NSError *)v2 domain];
  if ([v3 isEqualToString:CTCellularPlanErrorDomain])
  {
    v4 = [(NSError *)v2 code]== &stru_20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_8C38(uint64_t a1)
{
  v2 = +[CTCellularPlanManager sharedManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8CF8;
  v4[3] = &unk_1CA90;
  v3 = *(a1 + 32);
  v5 = vextq_s8(v3, v3, 8uLL);
  [v2 didSelectRemotePlanItem:v3.i64[0] completion:v4];

  [*(a1 + 40) _updateTableView];
}

void sub_8CF8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[NPHCSBridgeCellularSettingsViewController _switchToCellularPlanItem:]_block_invoke_2";
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s wasSuccessful:%d error:%@", buf, 0x1Cu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8E4C;
  v10[3] = &unk_1CA68;
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v9 = v5;
  nph_ensure_on_main_queue(v10);
}

id sub_8E4C(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = +[NPHCellularBridgeUIManager sharedInstance];
      v5 = [v4 subscriptionContextForCellularPlanItem:*(a1 + 48)];
      v6 = [NSError NPHCellularSanitizedError:v2 forSubscriptionContext:v5];
      [v3 presentError:v6];
    }
  }

  v7 = *(a1 + 40);

  return [v7 _updateTableView];
}

void sub_90FC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9198;
  v8[3] = &unk_1CAE0;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  nph_ensure_on_main_queue(v8);
}

void sub_9198(int8x16_t *a1)
{
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[3].u8[0];
    v4 = a1[2].i64[0];
    *buf = 136315650;
    v10 = "[NPHCSBridgeCellularSettingsViewController _userDidProvideResponse:forPlan:]_block_invoke_2";
    v11 = 1024;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s - success:%d error:%@", buf, 0x1Cu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_92DC;
  block[3] = &unk_1CAB8;
  v6 = a1[2];
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_92DC(uint64_t a1)
{
  result = [*(a1 + 32) setPromptingUserForConsent:0];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 presentError:?];
  }

  return result;
}

BOOL sub_9C90(id a1, NSError *a2)
{
  v2 = a2;
  v3 = [(NSError *)v2 domain];
  if ([v3 isEqualToString:NPHCellularErrorDomain])
  {
    v4 = [(NSError *)v2 code]!= &dword_4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id sub_9F30(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_E1F0(v2);
    }

    [*(a1 + 40) presentError:*(a1 + 32)];
  }

  v4 = [*(a1 + 48) objectForKeyedSubscript:kActiveCellularPlans];
  [*(a1 + 40) setActiveCellularPlans:v4];

  v5 = [*(a1 + 48) objectForKeyedSubscript:kInactiveCellularPlans];
  [*(a1 + 40) setInactiveCellularPlans:v5];

  [*(a1 + 40) _promptUserForConsentIfNecessary];
  return [*(a1 + 40) _updateTableView];
}

id sub_A10C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAppsDataUsageArray:a2];
  v3 = *(a1 + 32);

  return [v3 _updateTableView];
}

void sub_A2E4(id a1)
{
  v1 = nph_general_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "[NPHCSBridgeCellularSettingsViewController _setUpPlan]_block_invoke";
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%s Presented NPHCellularSetupViewController", &v2, 0xCu);
  }
}

void sub_A514(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_A584;
  v2[3] = &unk_1CBE8;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  nph_ensure_on_main_queue(v2);
}

void sub_A584(uint64_t a1)
{
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 44);
    *buf = 136315650;
    v8 = "[NPHCSBridgeCellularSettingsViewController _clearStats]_block_invoke_2";
    v9 = 1024;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s: domain: %d, error: %d", buf, 0x18u);
  }

  if (*(a1 + 40))
  {
    v5 = [NSError errorWithDomain:NPHCellularDataUsageErrorDomain code:*(a1 + 44) userInfo:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_A6DC;
    v6[3] = &unk_1CAB8;
    v6[4] = *(a1 + 32);
    v6[5] = v5;
    nph_ensure_on_main_queue(v6);
  }

  else
  {
    [*(a1 + 32) _updateCellularDataUsageItems];
  }
}

void sub_ACCC(uint64_t a1)
{
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "manage plan:%@", buf, 0xCu);
  }

  v4 = [NSNumber numberWithInteger:8, @"FlowTypeKey"];
  v16[0] = v4;
  v15[1] = @"CarrierNameKey";
  v5 = [*(a1 + 32) plan];
  v6 = [v5 carrierName];
  v16[1] = v6;
  v15[2] = @"Iccid";
  v7 = [*(a1 + 32) plan];
  v8 = [v7 iccid];
  v16[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v10 = [TSSIMSetupFlow flowWithOptions:v9];
  v11 = *(a1 + 40);
  v12 = *(v11 + 32);
  *(v11 + 32) = v10;

  v13 = [*(*(a1 + 40) + 32) firstViewController];
  [*(*(a1 + 40) + 32) setDelegate:?];
  v14 = [[UINavigationController alloc] initWithRootViewController:v13];
  [*(a1 + 40) presentViewController:v14 animated:1 completion:0];
}

id sub_B28C(uint64_t a1)
{
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "didDeleteRemotePlanItem:%@", &v5, 0xCu);
  }

  return [*(a1 + 40) _removePlan:*(a1 + 32)];
}

void sub_B4F4(uint64_t a1, char a2, void *a3)
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_B5B8;
  v10 = &unk_1CA68;
  v14 = a2;
  v11 = a3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = v4;
  v13 = v5;
  v6 = v11;
  nph_ensure_on_main_queue(&v7);
  [*(a1 + 40) _removeTinkerDeviceAssertion];
}

void sub_B5B8(uint64_t a1)
{
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v13 = 136315650;
    v14 = "[NPHCSBridgeCellularSettingsViewController _removePlan:]_block_invoke_2";
    v15 = 1024;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s wasSuccessful:%d error:%@", &v13, 0x1Cu);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = +[NPHCellularBridgeUIManager sharedInstance];
      v7 = [v6 subscriptionContextForCellularPlanItem:*(a1 + 40)];
      v8 = [NSError NPHCellularSanitizedError:v5 forSubscriptionContext:v7];

      v9 = nph_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_E27C();
      }

      [*(a1 + 48) presentError:v8];
    }

    else
    {
      v10 = nph_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_E2F8();
      }

      v11 = *(a1 + 48);
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v8 localizedStringForKey:@"REMOVE_PLAN_UNSUCCESSFUL" value:&stru_1CD90 table:0];
      [v11 presentErrorMessage:v12];
    }
  }
}

void sub_B968(id a1)
{
  v1 = nph_general_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_E378();
  }
}

void sub_B9AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[NPHCSBridgeCellularSettingsViewController _getTinkerDeviceAssertion]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s setActivePairedDevice: error %@ assertion %@", &v9, 0x20u);
  }

  if (v6)
  {
    v8 = [*(a1 + 32) tinkerDeviceAssertion];
    [v8 invalidate];

    [*(a1 + 32) setTinkerDeviceAssertion:v6];
  }
}

id sub_C648(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_titleLabel] = v4;
  v5 = [objc_allocWithZone(UIStackView) init];
  *&v2[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortControlsStackView] = v5;
  v6 = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortingTypeLabel] = v6;
  v7 = [objc_allocWithZone(UIButton) init];
  *&v2[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortToggle] = v7;
  if (a2)
  {
    v8 = sub_E408();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for NPHCSCellularUsageHeaderView();
  v9 = objc_msgSendSuper2(&v12, "initWithReuseIdentifier:", v8);

  v10 = v9;
  sub_C808();

  return v10;
}

void sub_C808()
{
  sub_D130();
  v2 = OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_titleLabel;
  v3 = *&v0[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_titleLabel];
  v65 = objc_opt_self();
  v4 = v3;
  v5 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v4 setFont:v5];

  v6 = *&v0[v2];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemGrayColor];
  [v8 setTextColor:v9];

  [*&v0[v2] setNumberOfLines:0];
  [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v0 contentView];
  [v10 addSubview:*&v0[v2]];

  v67 = objc_opt_self();
  sub_D4CC(&qword_22990, &unk_17210);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_17190;
  v12 = [*&v0[v2] leadingAnchor];
  v13 = sub_D56C();
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 leadingAnchor];
  v16 = [v1 constraintEqualToAnchor:v15];

  *(v11 + 32) = v16;
  v17 = [*&v0[v2] trailingAnchor];
  v18 = sub_D56C();
  v19 = [v18 layoutMarginsGuide];

  v20 = [v19 trailingAnchor];
  v21 = [v1 constraintEqualToAnchor:v20];

  *(v11 + 40) = v21;
  v22 = [*&v0[v2] topAnchor];
  v23 = sub_D56C();
  v24 = [v23 layoutMarginsGuide];

  v25 = [v24 topAnchor];
  v26 = [v1 constraintEqualToAnchor:v25];

  *(v11 + 48) = v26;
  sub_D514();
  isa = sub_E428().super.isa;

  [v67 activateConstraints:isa];

  v28 = OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortControlsStackView;
  [*&v0[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortControlsStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v0 traitCollection];
  v30 = [v29 preferredContentSizeCategory];

  LODWORD(v10) = UIContentSizeCategoryIsAccessibilityCategory(v30);
  [*&v0[v28] setAxis:v10];
  [*&v0[v28] setDistribution:0];
  [*&v0[v28] setSpacing:8.0];
  v31 = [v0 contentView];
  [v31 addSubview:*&v0[v28]];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_171A0;
  v33 = [*&v0[v28] topAnchor];
  v34 = [*&v0[v2] bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v32 + 32) = v35;
  v36 = [*&v0[v28] bottomAnchor];
  v37 = [v0 contentView];
  v38 = [v37 layoutMarginsGuide];

  v39 = [v38 bottomAnchor];
  v64 = v10;
  v40 = 0.0;
  if (v10)
  {
    v40 = -8.0;
  }

  v41 = [v36 constraintEqualToAnchor:v39 constant:v40];

  *(v32 + 40) = v41;
  v42 = [*&v0[v28] leadingAnchor];
  v43 = [v0 layoutMarginsGuide];
  v44 = [v43 leadingAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v32 + 48) = v45;
  v46 = [*&v0[v28] trailingAnchor];
  v47 = [v0 layoutMarginsGuide];
  v48 = [v47 trailingAnchor];

  v49 = [v46 constraintEqualToAnchor:v48];
  *(v32 + 56) = v49;
  v50 = sub_E428().super.isa;

  [v67 activateConstraints:v50];

  v51 = OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortingTypeLabel;
  v52 = *&v0[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortingTypeLabel];
  v53 = [v65 preferredFontForTextStyle:?];
  [v52 setFont:v53];

  [*&v0[v51] setNumberOfLines:0];
  v54 = OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortToggle;
  v55 = [*&v0[OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortToggle] titleLabel];
  if (v55)
  {
    v56 = v55;
    v57 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v56 setFont:v57];
  }

  v58 = [*&v0[v54] titleLabel];
  [v58 setNumberOfLines:0];

  [*&v0[v54] setContentHorizontalAlignment:2];
  if (v64 != [v0 _shouldReverseLayoutDirection])
  {
    [*&v0[v54] setContentHorizontalAlignment:1];
  }

  [*&v0[v28] addArrangedSubview:*&v0[v51]];
  [*&v0[v28] addArrangedSubview:*&v0[v54]];
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_171B0;
  v60 = [*&v0[v51] widthAnchor];
  v61 = [v60 constraintGreaterThanOrEqualToConstant:100.0];

  *(v59 + 32) = v61;
  v62 = [*&v0[v54] widthAnchor];
  v63 = [v62 constraintGreaterThanOrEqualToConstant:150.0];

  *(v59 + 40) = v63;
  v66 = sub_E428().super.isa;

  [v67 activateConstraints:v66];
}

void sub_D130()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = [v2 BOOLForKey:@"NPHCSBridgeCellularUsageShouldSortByNameKey"];

  v4 = qword_22940;
  v5 = *(v1 + OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_titleLabel);
  if (v4 != -1)
  {
    swift_once();
  }

  if (v3)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (v3)
  {
    v7 = 0xD000000000000020;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (v3)
  {
    v8 = "AGE_SORT_BY_NAME";
  }

  else
  {
    v8 = "AGE_APPS_BY_USAGE";
  }

  if (v3)
  {
    v9 = "AGE_SORT_BY_USAGE";
  }

  else
  {
    v9 = "AGE_GROUP_HEADER";
  }

  v19._object = 0x80000000000137A0;
  v19._countAndFlagsBits = 0xD000000000000020;
  v10 = sub_D65C(v19);
  sub_D3F4(v10, v11, v5);

  v12 = *(v1 + OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortingTypeLabel);
  v20._object = (v9 | 0x8000000000000000);
  v20._countAndFlagsBits = v7;
  v13 = sub_D65C(v20);
  sub_D3F4(v13, v14, v12);

  v17 = *(v1 + OBJC_IVAR____TtC22CellularBridgeSettings28NPHCSCellularUsageHeaderView_sortToggle);
  v21._object = (v8 | 0x8000000000000000);
  v21._countAndFlagsBits = v6;
  v15 = sub_D65C(v21);
  sub_D458(v15, v16, 0, v17);
}

id sub_D330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NPHCSCellularUsageHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_D3F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_E408();

  [a3 setText:v4];
}

void sub_D458(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_E408();

  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_D4CC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_D514()
{
  result = qword_22998;
  if (!qword_22998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22998);
  }

  return result;
}

uint64_t sub_D558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
  return _objc_release_x1();
}

id sub_D56C()
{
  v3 = *(v1 + 1024);

  return [v0 v3];
}

uint64_t *sub_D588()
{
  type metadata accessor for Localization();
  swift_allocObject();
  result = sub_D5C4();
  qword_22B40 = result;
  return result;
}

uint64_t *sub_D5C4()
{
  v0[3] = 0x617A696C61636F4CLL;
  v0[4] = 0xEB00000000656C62;
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return v0;
}

uint64_t sub_D65C(Swift::String a1)
{
  v2.super.isa = *(v1 + 16);
  v4._countAndFlagsBits = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  return sub_E3F8(a1, *(v1 + 24), v2, v5, v4);
}

uint64_t sub_D698()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_D6C0()
{
  sub_D698();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_D7B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView_textView);
  *(v1 + OBJC_IVAR____TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView_textView) = a1;
  return _objc_release_x1();
}

id sub_D7CC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UITextView) init];
  *&v2[OBJC_IVAR____TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView_textView] = v4;
  if (a2)
  {
    v5 = sub_E408();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for NPHCSFooterHyperLinkView();
  v6 = objc_msgSendSuper2(&v9, "initWithReuseIdentifier:", v5);

  v7 = v6;
  sub_D928();

  return v7;
}

void sub_D928()
{
  v1 = OBJC_IVAR____TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView_textView;
  [*(v0 + OBJC_IVAR____TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView_textView) setScrollEnabled:0];
  [*(v0 + v1) setDataDetectorTypes:3];
  v2 = *(v0 + v1);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 _defaultTextColorForTableViewStyle:1 isSectionHeader:0];
  [v4 setTextColor:v5];

  v6 = *(v0 + v1);
  v7 = [v3 _defaultFontForTableViewStyle:1 isSectionHeader:0];
  [v6 setFont:v7];

  [*(v0 + v1) setEditable:0];
  [*(v0 + v1) setSelectable:1];
  [*(v0 + v1) setUserInteractionEnabled:1];
  [*(v0 + v1) setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = sub_DE10();
  [v8 addSubview:*(v0 + v1)];

  v30 = objc_opt_self();
  sub_D4CC(&qword_22990, &unk_17210);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_171A0;
  v10 = [*(v0 + v1) leadingAnchor];
  v11 = sub_DE10();
  v12 = [v11 layoutMarginsGuide];

  v13 = [v12 leadingAnchor];
  v14 = sub_DDF4();

  *(v9 + 32) = v14;
  v15 = [*(v0 + v1) trailingAnchor];
  v16 = sub_DE10();
  v17 = [v16 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = sub_DDF4();

  *(v9 + 40) = v19;
  v20 = sub_DE10();
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 heightAnchor];
  v23 = [*(v0 + v1) heightAnchor];
  v24 = sub_DDF4();

  *(v9 + 48) = v24;
  v25 = sub_DE10();
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 widthAnchor];
  v28 = [*(v0 + v1) widthAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v9 + 56) = v29;
  sub_D514();
  isa = sub_E428().super.isa;

  [v30 activateConstraints:isa];
}

id sub_DD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NPHCSFooterHyperLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_DDF4()
{
  v4 = *(v2 + 1056);

  return [v0 v4];
}

id sub_DE10()
{
  v3 = *(v1 + 1024);

  return [v0 v3];
}

void sub_DE8C()
{
  v1[0] = 136315394;
  sub_5014();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s: Failed to get device data usage: %@", v1, 0x16u);
}

void sub_DF0C()
{
  v1[0] = 136315394;
  sub_5014();
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%s - Failed to get data usage policies: %@", v1, 0x16u);
}

void sub_DFDC(NSObject *a1)
{
  v2 = *__error();
  v3 = 136315394;
  v4 = "void NPHSetTmpDirPrefix(void)";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%s: failed, errno: %d", &v3, 0x12u);
}

void sub_E094(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[NPHCSAppCellularDataUsageItem setUsagePoliciesForCellular:andWifi:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s error: %@", &v2, 0x16u);
}

void sub_E174()
{
  sub_5014();
  sub_C124();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_E1F0(uint64_t *a1)
{
  v6 = *a1;
  sub_C124();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_E27C()
{
  sub_5014();
  sub_C124();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}