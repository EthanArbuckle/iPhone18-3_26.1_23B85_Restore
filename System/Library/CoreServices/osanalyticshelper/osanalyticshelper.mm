void sub_1000019D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100001ABC;
    v5[3] = &unk_1000253A8;
    objc_copyWeak(&v7, (a1 + 32));
    v4 = v3;
    v6 = v4;
    xpc_connection_set_event_handler(v4, v5);
    xpc_connection_resume(v4);

    objc_destroyWeak(&v7);
  }
}

void sub_100001ABC(uint64_t a1, void *a2)
{
  original = a2;
  if (xpc_get_type(original) == &_xpc_type_dictionary)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = objc_autoreleasePoolPush();
    reply = xpc_dictionary_create_reply(original);
    uint64 = xpc_dictionary_get_uint64(original, "operation");
    if (WeakRetained)
    {
      v7 = [WeakRetained serviceRequest:original forOperation:uint64 fromConnection:*(a1 + 32) forReply:reply];
      if (!reply)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      if (!reply)
      {
LABEL_8:

        objc_autoreleasePoolPop(v4);
        goto LABEL_9;
      }
    }

    if (uint64 != 8)
    {
      xpc_dictionary_set_BOOL(reply, "result", v7);
      xpc_connection_send_message(*(a1 + 32), reply);
    }

    goto LABEL_8;
  }

LABEL_9:
}

uint64_t sub_100001C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001E40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100001E78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100001EB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100002034(uint64_t a1)
{
  v4 = @"state";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_10000234C(uint64_t a1)
{
  v1 = @"NO";
  if (*(a1 + 32))
  {
    v1 = @"YES";
  }

  v4 = @"prodFused";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10000242C(id a1)
{
  v3[0] = CTCategoryIdentifierGames;
  v3[1] = CTCategoryIdentifierSocialNetworking;
  v4[0] = @"Games";
  v4[1] = @"Social Networking";
  v3[2] = CTCategoryIdentifierEntertainment;
  v3[3] = CTCategoryIdentifierCreativity;
  v4[2] = @"Entertainment";
  v4[3] = @"Creativity";
  v3[4] = CTCategoryIdentifierProductivity;
  v3[5] = CTCategoryIdentifierEducation;
  v4[4] = @"Productivity";
  v4[5] = @"Education";
  v3[6] = CTCategoryIdentifierReadingAndReference;
  v3[7] = CTCategoryIdentifierHealthAndFitness;
  v4[6] = @"Reading & Reference";
  v4[7] = @"Health & Fitness";
  v3[8] = CTCategoryIdentifierOther;
  v3[9] = CTCategoryIdentifierUtilities;
  v4[8] = @"Other";
  v4[9] = @"Utilities";
  v3[10] = CTCategoryIdentifierShoppingAndFood;
  v3[11] = CTCategoryIdentifierTravel;
  v4[10] = @"Shopping & Food";
  v4[11] = @"Travel";
  v3[12] = CTCategoryIdentifierSystemUnblockable;
  v3[13] = CTCategoryIdentifierSystemBlockable;
  v4[12] = @"System Unblockable Applications";
  v4[13] = @"System Blockable Applications";
  v3[14] = CTCategoryIdentifierSystemHidden;
  v4[14] = @"System Hidden Applications";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
  v2 = qword_10002A3C0;
  qword_10002A3C0 = v1;
}

void sub_100002658(id a1)
{
  v3[0] = CTCategoryIdentifierShoppingAndFood;
  v3[1] = CTCategoryIdentifierOther;
  v4[0] = &off_100027238;
  v4[1] = &off_100027250;
  v3[2] = CTCategoryIdentifierSystemUnblockable;
  v3[3] = CTCategoryIdentifierTravel;
  v4[2] = &off_100027268;
  v4[3] = &off_100027280;
  v3[4] = CTCategoryIdentifierEducation;
  v3[5] = CTCategoryIdentifierEntertainment;
  v4[4] = &off_100027298;
  v4[5] = &off_1000272B0;
  v3[6] = CTCategoryIdentifierUtilities;
  v3[7] = CTCategoryIdentifierSocialNetworking;
  v4[6] = &off_1000272C8;
  v4[7] = &off_1000272E0;
  v3[8] = CTCategoryIdentifierReadingAndReference;
  v3[9] = CTCategoryIdentifierHealthAndFitness;
  v4[8] = &off_1000272F8;
  v4[9] = &off_100027310;
  v3[10] = CTCategoryIdentifierCreativity;
  v3[11] = CTCategoryIdentifierSystemBlockable;
  v4[10] = &off_100027328;
  v4[11] = &off_100027340;
  v3[12] = CTCategoryIdentifierSystemHidden;
  v3[13] = CTCategoryIdentifierSystemBlockable;
  v4[12] = &off_100027358;
  v4[13] = &off_100027370;
  v3[14] = CTCategoryIdentifierGames;
  v3[15] = CTCategoryIdentifierUtilities;
  v4[14] = &off_100027388;
  v4[15] = &off_1000273A0;
  v3[16] = CTCategoryIdentifierProductivity;
  v4[16] = &off_1000273B8;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:17];
  v2 = qword_10002A3D0;
  qword_10002A3D0 = v1;
}

void sub_100002938(id a1)
{
  v3[0] = @"com.apple.AccessibilityInspector";
  v3[1] = @"com.apple.ActivityMonitor";
  v4[0] = CTCategoryIdentifierUtilities;
  v4[1] = CTCategoryIdentifierUtilities;
  v3[2] = @"com.apple.ActivityMonitorApp";
  v3[3] = @"com.apple.BarcodeScanner";
  v4[2] = CTCategoryIdentifierUtilities;
  v4[3] = CTCategoryIdentifierUtilities;
  v3[4] = @"com.apple.Bridge";
  v3[5] = @"com.apple.clock";
  v4[4] = CTCategoryIdentifierUtilities;
  v4[5] = CTCategoryIdentifierUtilities;
  v3[6] = @"com.apple.compass";
  v3[7] = @"com.apple.DeepBreathing";
  v4[6] = CTCategoryIdentifierUtilities;
  v4[7] = CTCategoryIdentifierHealthAndFitness;
  v3[8] = @"com.apple.Diagnostics";
  v3[9] = @"com.apple.dock";
  v4[8] = CTCategoryIdentifierUtilities;
  v4[9] = CTCategoryIdentifierUtilities;
  v3[10] = @"com.apple.DocumentsApp";
  v3[11] = @"com.apple.finder";
  v4[10] = CTCategoryIdentifierProductivity;
  v4[11] = CTCategoryIdentifierUtilities;
  v3[12] = @"com.apple.findmy";
  v3[13] = @"com.apple.Fitness";
  v4[12] = CTCategoryIdentifierUtilities;
  v4[13] = CTCategoryIdentifierHealthAndFitness;
  v3[14] = @"com.apple.Health";
  v3[15] = @"com.apple.HeartRate";
  v4[14] = CTCategoryIdentifierHealthAndFitness;
  v4[15] = CTCategoryIdentifierHealthAndFitness;
  v3[16] = @"com.apple.Home";
  v3[17] = @"com.apple.InCallService";
  v4[16] = CTCategoryIdentifierUtilities;
  v4[17] = CTCategoryIdentifierProductivity;
  v3[18] = @"com.apple.keychainaccess";
  v3[19] = @"com.apple.Magnifier";
  v4[18] = CTCategoryIdentifierUtilities;
  v4[19] = CTCategoryIdentifierUtilities;
  v3[20] = @"com.apple.MigrateAssistant";
  v3[21] = @"com.apple.mobilephone";
  v4[20] = CTCategoryIdentifierUtilities;
  v4[21] = CTCategoryIdentifierProductivity;
  v3[22] = @"com.apple.mobilesafari";
  v3[23] = @"com.apple.mobiletimer";
  v4[22] = CTCategoryIdentifierUtilities;
  v4[23] = CTCategoryIdentifierUtilities;
  v3[24] = @"com.apple.Passbook";
  v3[25] = @"com.apple.Preferences";
  v4[24] = CTCategoryIdentifierProductivity;
  v4[25] = CTCategoryIdentifierUtilities;
  v3[26] = @"com.apple.PreviewShell";
  v3[27] = @"com.apple.Safari";
  v4[26] = CTCategoryIdentifierProductivity;
  v4[27] = CTCategoryIdentifierUtilities;
  v3[28] = @"com.apple.SafariTechnologyPreview";
  v3[29] = @"com.apple.Siri";
  v4[28] = CTCategoryIdentifierUtilities;
  v4[29] = CTCategoryIdentifierProductivity;
  v3[30] = @"com.apple.ScreenTimeWidgetApplication";
  v3[31] = @"com.apple.SharingViewService";
  v4[30] = CTCategoryIdentifierUtilities;
  v4[31] = CTCategoryIdentifierUtilities;
  v3[32] = @"com.apple.sidecar";
  v3[33] = @"com.apple.siri";
  v4[32] = CTCategoryIdentifierUtilities;
  v4[33] = CTCategoryIdentifierProductivity;
  v3[34] = @"com.apple.SleepLockScreen";
  v3[35] = @"com.apple.SoftwareUpdate";
  v4[34] = CTCategoryIdentifierUtilities;
  v4[35] = CTCategoryIdentifierUtilities;
  v3[36] = @"com.apple.systempreferences";
  v3[37] = @"com.apple.SystemProfiler";
  v4[36] = CTCategoryIdentifierUtilities;
  v4[37] = CTCategoryIdentifierUtilities;
  v3[38] = @"com.google.Chrome";
  v3[39] = @"com.parallels.desktop.console";
  v4[38] = CTCategoryIdentifierUtilities;
  v4[39] = CTCategoryIdentifierUtilities;
  v3[40] = @"org.mozilla.firefox";
  v3[41] = @"com.operasoftware.OperaGX";
  v4[40] = CTCategoryIdentifierUtilities;
  v4[41] = CTCategoryIdentifierUtilities;
  v3[42] = @"com.microsoft.edgemac";
  v3[43] = @"com.operasoftware.Opera";
  v4[42] = CTCategoryIdentifierUtilities;
  v4[43] = CTCategoryIdentifierUtilities;
  v3[44] = @"org.mozilla.firefoxdeveloperedition";
  v3[45] = @"com.brave.Browser";
  v4[44] = CTCategoryIdentifierUtilities;
  v4[45] = CTCategoryIdentifierUtilities;
  v3[46] = @"ru.yandex.desktop.yandex-browser";
  v3[47] = @"company.thebrowser.Browser";
  v4[46] = CTCategoryIdentifierUtilities;
  v4[47] = CTCategoryIdentifierUtilities;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:48];
  v2 = qword_10002A3E0;
  qword_10002A3E0 = v1;
}

void sub_100003164(uint64_t a1, void *a2, void *a3)
{
  v71 = a2;
  v62 = a3;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    sub_100014BF0(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v70 = [*(a1 + 32) _DHIDtoCategoryDisplayNameMap];
  v69 = [NSMutableArray arrayWithObjects:&stru_100025FB0, &stru_100025FB0, 0];
  [*(a1 + 32) generateTopThreeCategories:v71];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  obj = v86 = 0u;
  v12 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v12)
  {
    LODWORD(v13) = 0;
    v14 = *v86;
    do
    {
      v15 = 0;
      v13 = v13;
      do
      {
        if (*v86 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v85 + 1) + 8 * v15);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v70 objectForKeyedSubscript:v16];
          v20 = [v71 objectForKeyedSubscript:v16];
          *buf = 138412802;
          v90 = v16;
          v91 = 2112;
          v92 = v19;
          v93 = 2112;
          v94 = v20;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "HighEngagement: Top three total: %@, %@, %@", buf, 0x20u);
        }

        v17 = [NSString stringWithFormat:@"com.apple.topCategory%d", v13];
        v78 = _NSConcreteStackBlock;
        v79 = 3221225472;
        v80 = sub_100003B44;
        v81 = &unk_100024CB0;
        v82 = v16;
        v83 = v70;
        v84 = v71;
        AnalyticsSendEventLazy();

        v18 = [v83 objectForKeyedSubscript:v16];
        [v69 setObject:v18 atIndexedSubscript:v13];

        ++v13;
        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
    }

    while (v12);
  }

  v67 = [*(a1 + 32) _DHIDto95thPercentile];
  v64 = [NSMutableArray arrayWithObjects:&stru_100025FB0, 0];
  v63 = objc_alloc_init(NSMutableArray);
  v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v21)
  {
    sub_100014C2C(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v66 = obj;
  v29 = [v66 countByEnumeratingWithState:&v74 objects:v99 count:16];
  if (v29)
  {
    v30 = 0;
    v31 = *v75;
LABEL_16:
    v32 = 0;
    v33 = v30;
    if (v30 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v30;
    }

    v35 = (v34 - v30);
    while (1)
    {
      if (*v75 != v31)
      {
        objc_enumerationMutation(v66);
      }

      v36 = *(*(&v74 + 1) + 8 * v32);
      v37 = [v67 objectForKeyedSubscript:v36];
      v38 = [v71 objectForKeyedSubscript:v36];
      [v38 doubleValue];
      v40 = v39;
      [v37 doubleValue];
      v42 = v40 < v41;

      if (!v42)
      {
        [v63 addObject:v36];
        v43 = [NSString stringWithFormat:@"com.apple.highEngagementCategory%d", (v33 + 1)];
        v72 = v70;
        v73 = v71;
        AnalyticsSendEventLazy();

        v44 = [v72 objectForKeyedSubscript:v36];
        [v64 setObject:v44 atIndexedSubscript:v33];
      }

      if (v35 == v32)
      {
        break;
      }

      ++v33;
      if (v29 == ++v32)
      {
        v29 = [v66 countByEnumeratingWithState:&v74 objects:v99 count:16];
        v30 = v33;
        if (v29)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [v69 objectAtIndexedSubscript:0];
    v46 = [v69 objectAtIndexedSubscript:1];
    v47 = [v69 objectAtIndexedSubscript:2];
    v48 = [v64 objectAtIndexedSubscript:0];
    v49 = [v64 objectAtIndexedSubscript:1];
    *buf = 138413314;
    v90 = v45;
    v91 = 2112;
    v92 = v46;
    v93 = 2112;
    v94 = v47;
    v95 = 2112;
    v96 = v48;
    v97 = 2112;
    v98 = v49;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Posting to Biome: topCategory1: %@, topCategory2: %@, topCategory3: %@, highEngagementCategory1: %@, highEngagementCategory2: %@", buf, 0x34u);
  }

  v50 = [BMOSAnalyticsHighEngagementDevices alloc];
  v51 = [v69 objectAtIndexedSubscript:0];
  v52 = [v69 objectAtIndexedSubscript:1];
  v53 = [v69 objectAtIndexedSubscript:2];
  v54 = [v64 objectAtIndexedSubscript:0];
  v55 = [v64 objectAtIndexedSubscript:1];
  v56 = [v50 initWithTopCategory1:v51 topCategory2:v52 topCategory3:v53 highEngagementCategory1:v54 highEngagementCategory2:v55];

  v57 = BiomeLibrary();
  v58 = [v57 OSAnalytics];
  v59 = [v58 CA];
  v60 = [v59 HighEngagementDevices];

  v61 = [v60 source];
  [v61 sendEvent:v56];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: Done posting to Biome", buf, 2u);
  }
}

id sub_100003B44(uint64_t a1)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = v4;
  v9[0] = @"category";
  v9[1] = @"name";
  v5 = [v3 objectForKeyedSubscript:?];
  v10[1] = v5;
  v9[2] = @"total";
  v6 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 32)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_100003C58(uint64_t a1)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = v4;
  v9[0] = @"category";
  v9[1] = @"name";
  v5 = [v3 objectForKeyedSubscript:?];
  v10[1] = v5;
  v9[2] = @"total";
  v6 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 32)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_100003E98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 compare:v6];

  return v8;
}

void sub_100003F10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000426C(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v19 = a3;
  if (v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = [v19 description];
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v19 code]);
      v7 = [v19 localizedFailureReason];
      *buf = 138412802;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "HighEngagement: Category error: %@, %@, %@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "HighEngagement: generateTotalByCategory in completion handler", buf, 2u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v20;
    v8 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [obj objectForKeyedSubscript:v11];
          v13 = [v12 identifier];

          v14 = [*(a1 + 56) _OverrideIfNeeded:v11 givenCategory:v13];
          if (v14)
          {
            v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
            v16 = [*(a1 + 40) objectForKeyedSubscript:v11];
            v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 integerValue] + objc_msgSend(v16, "integerValue"));
            [*(a1 + 32) setObject:v17 forKeyedSubscript:v14];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v8);
    }
  }

  v18 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

void sub_100004990(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_100005038(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100005334(void *a1)
{
  v18 = 8;
  v19 = 0;
  sysctlbyname("vm.shared_region_control", &v19, &v18, 0, 0);
  if (v19)
  {
    p_super = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "Skipping stability check in pre-reboot state.", buf, 2u);
    }

LABEL_4:

    goto LABEL_5;
  }

  v4 = [[OSAStabilityMonitor alloc] initWithParameters:a1[4] targetBundleID:a1[5] completionHandler:a1[7]];
  if (!v4)
  {
LABEL_5:
    v3 = a1[7];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }

    return;
  }

  p_super = &v4->super;
  if (a1[5])
  {
    if (a1[6])
    {
      v5 = [(OSAStabilityMonitor *)v4 coalitionBasedBundleIDs];
      v6 = [v5 containsObject:a1[5]];

      if (v6)
      {
        [p_super setTargetBundleID:a1[6]];
      }
    }

    v7 = a1[5];
    v17 = 0;
    if (v7 && ([p_super isRollbackSupportedForBundleID:v7 reason:&v17]& 1) == 0)
    {
      v8 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = a1[5];
        *buf = 138543618;
        v21 = v9;
        v22 = 2050;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Targeted mode for %{public}@ is not available: %{public}lu", buf, 0x16u);
      }

      goto LABEL_4;
    }
  }

  else
  {
    v17 = 0;
  }

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10000558C;
  v15 = &unk_100024D60;
  v16 = p_super;
  v10 = qword_10002A3F0;
  v11 = p_super;
  if (v10 != -1)
  {
    dispatch_once(&qword_10002A3F0, &v12);
  }

  [v11 evaluateStability:v12];
}

void sub_1000058F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 dateByAddingTimeInterval:{-(86400 * objc_msgSend(*(a1 + 32), "unsignedIntegerValue"))}];
    v11 = v7;
    v12 = v11;
    if (!v11 || ([v11 timeIntervalSinceDate:v10], v13 < 0.0))
    {
      v14 = v10;

      v12 = v14;
    }

    v15 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v23 = v12;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Calculating baseline from %{public}@ to %{public}@", buf, 0x16u);
    }

    v16 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005B20;
    v18[3] = &unk_100024DD8;
    v18[4] = v16;
    v19 = v12;
    v20 = v8;
    v21 = *(a1 + 48);
    v17 = v12;
    [v16 totalUptimeFrom:v17 to:v20 targetBundleID:0 targetAppVersions:0 firstPartyBundleIDs:0 completionHandler:v18];
  }

  else
  {
    v10 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100014DFC(a1);
    }
  }
}

void sub_100005B20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v5 versions];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005C54;
    v12[3] = &unk_100024DB0;
    v13 = v5;
    v14 = *(a1 + 56);
    [v7 totalCrashesFrom:v8 to:v9 targetBundleID:0 appVersions:v10 isBaseline:1 completionHandler:v12];

    v11 = v13;
  }

  else
  {
    v11 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100014E68(a1);
    }
  }
}

void sub_100005C54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v5 aggregatedTotalsAsUnsignedInteger];
    [v7 setObject:v8 forKey:@"stability-monitor.baselineCrashCount"];

    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [*(a1 + 32) versions];
    [v9 setObject:v10 forKey:@"stability-monitor.baselineVersions"];

    v11 = [*(a1 + 32) aggregatedTotalsAsDouble];
    v12 = +[NSMutableDictionary dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18, v24];
          [v19 doubleValue];
          v21 = v20 / 3600.0;

          v22 = [NSNumber numberWithDouble:round(v21 * 10.0) / 10.0];
          [v12 setObject:v22 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v23 = +[NSUserDefaults standardUserDefaults];
    [v23 setObject:v12 forKey:@"stability-monitor.baselineUptime"];
  }

  else
  {
    v13 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100014ED4(a1);
    }
  }
}

void sub_10000668C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = OSAStabilityMonitorLogDomain();
  v11 = v10;
  if (v7 && v8)
  {
    v29 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v39 = v7;
      v40 = 2114;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Evaluating stability from %{public}@ to %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 32);
    v28 = *(a1 + 40);
    v13 = v12[3];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000069B0;
    v30[3] = &unk_100024E50;
    v30[4] = v12;
    v31 = v7;
    v32 = v8;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v33 = v19;
    v34 = v18;
    v20 = *(a1 + 72);
    v21 = *(a1 + 80);
    v22 = *(a1 + 88);
    v23 = *(a1 + 96);
    *&v24 = v22;
    *(&v24 + 1) = v23;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v35 = v25;
    v36 = v24;
    v37 = *(a1 + 104);
    [v12 totalCrashesFrom:v31 to:v32 targetBundleID:v13 appVersions:v28 isBaseline:0 completionHandler:v30];

    v9 = v29;
  }

  else
  {
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100015158();
      }

      v26 = *(a1 + 32);
      v27 = @"Error determining end date";
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Duration on current build has exceeded maximum days.", buf, 2u);
      }

      v26 = *(a1 + 32);
      v27 = @"Exceeded maximum days on target build";
    }

    [v26 reportResultsForBundleID:0 crashes:0 uptime:0 MTBF:0 result:0 status:v27];
  }
}

void sub_1000069B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = v7[3];
    v19 = v8;
    v20 = *(a1 + 40);
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = [v5 firstPartyBundleIDs];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100006BBC;
    v21[3] = &unk_100024E28;
    v21[4] = *(a1 + 32);
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 80);
    v25 = v5;
    v12 = *(a1 + 88);
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);
    v15 = *(a1 + 112);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v26 = v17;
    v27 = v16;
    v28 = *(a1 + 120);
    [v7 totalUptimeFrom:v20 to:v10 targetBundleID:v19 targetAppVersions:v9 firstPartyBundleIDs:v11 completionHandler:v21];
  }

  else
  {
    v18 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000151C0();
    }

    [*(a1 + 32) reportResultsForBundleID:0 crashes:0 uptime:0 MTBF:0 result:0 status:@"Error calculating crash count"];
  }
}

void sub_100006BBC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 totals];
    v8 = [v7 count];

    if (!v8)
    {
      v9 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No uptime values for target apps.", buf, 2u);
      }

      [a1[4] reportResultsForBundleID:0 crashes:0 uptime:0 MTBF:0 result:0 status:@"No uptime on target build"];
    }

    v78 = v6;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = [v5 totals];
    v10 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v85;
      v79 = *v85;
      v80 = v5;
      do
      {
        v13 = 0;
        v81 = v11;
        do
        {
          if (*v85 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v84 + 1) + 8 * v13);
          v15 = [a1[5] objectForKeyedSubscript:*&v14];
          v16 = [v15 unsignedIntegerValue];

          v17 = [a1[6] objectForKeyedSubscript:*&v14];
          [v17 doubleValue];
          v19 = v18;

          [a1[7] doubleValue];
          if (v19 >= v20)
          {
            v22 = [v5 totals];
            v23 = [v22 objectForKeyedSubscript:*&v14];
            v24 = [a1[8] totals];
            v25 = [v24 objectForKeyedSubscript:*&v14];
            v26 = [OSAStabilityMonitor calculateStabilityRateWithAppUsage:v23 crashCounts:v25];

            v27 = [v26 crashCount];
            if (v27 < [a1[9] unsignedIntegerValue])
            {
              v28 = OSAStabilityMonitorLogDomain();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = COERCE_DOUBLE([v26 crashCount]);
                *buf = 138543618;
                v89 = v14;
                v90 = 2050;
                v91 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Crash count for %{public}@ is %{public}lu, which is below the threshold.", buf, 0x16u);
              }

              v30 = a1[4];
              v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 crashCount]);
              [v30 reportResultsForBundleID:*&v14 crashes:v31 uptime:0 MTBF:0 result:0 status:@"Crash count below threshold"];
              goto LABEL_32;
            }

            v32 = [v26 MTBF];

            if (v32)
            {
              v83 = 0;
              v33 = OSAStabilityMonitorLogDomain();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                v70 = COERCE_DOUBLE([v26 crashCount]);
                [v26 uptime];
                v72 = v71;
                v73 = [v26 MTBF];
                [v73 doubleValue];
                *buf = 138544130;
                v89 = v14;
                v90 = 2050;
                v91 = v70;
                v92 = 2050;
                v93 = v72;
                v94 = 2050;
                v95 = v74;
                _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Evaluating stability for %{public}@ with results: crash count=%{public}lu; uptime=%{public}0.1f; MTBF=%{public}0.1f", buf, 0x2Au);
              }

              if (v16)
              {
                v34 = [v26 MTBF];
                [v34 doubleValue];
                v36 = v35;
                [a1[10] doubleValue];
                if (v36 > v37)
                {
                  goto LABEL_26;
                }

                v38 = v19 / v16;
                v39 = [v26 MTBF];
                [v39 doubleValue];
                v41 = v38 - v40;
                [a1[11] doubleValue];
                if (v41 < v42)
                {

LABEL_26:
LABEL_27:
                  v43 = OSAStabilityMonitorLogDomain();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                  {
                    v44 = [v26 MTBF];
                    [v44 doubleValue];
                    *buf = 134349314;
                    v89 = v45;
                    v90 = 2114;
                    v91 = v14;
                    v46 = v43;
                    v47 = "MTBF of %{public}f for %{public}@ does not meet filtering criteria.";
                    goto LABEL_38;
                  }

                  goto LABEL_39;
                }

                v60 = [v26 MTBF];
                [v60 doubleValue];
                v62 = v61;
                [a1[12] doubleValue];
                v64 = v38 * v63;

                if (v62 > v64)
                {
                  goto LABEL_27;
                }

LABEL_41:
                v59 = [a1[4] recommendRollbackForBundleID:*&v14 reason:&v83];
              }

              else
              {
                v51 = OSAStabilityMonitorLogDomain();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = a1[13];
                  *buf = 138543362;
                  v89 = *&v52;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Baseline has no crashes; adjusting maximum MTBF to %{public}@", buf, 0xCu);
                }

                v53 = [v26 MTBF];
                [v53 doubleValue];
                v55 = v54;
                [a1[13] doubleValue];
                v57 = v56;

                if (v55 <= v57)
                {
                  goto LABEL_41;
                }

                v43 = OSAStabilityMonitorLogDomain();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = [v26 MTBF];
                  [v44 doubleValue];
                  *buf = 134349314;
                  v89 = v58;
                  v90 = 2114;
                  v91 = v14;
                  v46 = v43;
                  v47 = "MTBF of %{public}f for %{public}@ does not meet adjusted filtering criteria.";
LABEL_38:
                  _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 0x16u);
                }

LABEL_39:

                v59 = 0;
              }

              if ((v83 - 1) > 5)
              {
                v65 = 0;
              }

              else
              {
                v65 = *(&off_100024FF8 + v83 - 1);
              }

              v66 = a1[4];
              v67 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 crashCount]);
              [v26 uptime];
              v68 = [NSNumber numberWithDouble:?];
              v69 = [v26 MTBF];
              [v66 reportResultsForBundleID:*&v14 crashes:v67 uptime:v68 MTBF:v69 result:v59 status:v65];
            }

            else
            {
              v48 = OSAStabilityMonitorLogDomain();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v75 = COERCE_DOUBLE([v26 crashCount]);
                [v26 uptime];
                *buf = 138543874;
                v89 = v14;
                v90 = 2050;
                v91 = v75;
                v92 = 2050;
                v93 = v76;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error calculating MTBF for %{public}@ with crash count=%{public}lu and uptime=%{public}0.1f", buf, 0x20u);
              }

              v49 = a1[4];
              v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 crashCount]);
              [v26 uptime];
              v50 = [NSNumber numberWithDouble:?];
              [v49 reportResultsForBundleID:*&v14 crashes:v31 uptime:v50 MTBF:0 result:0 status:@"Error calculating MTBF"];

LABEL_32:
            }

            v12 = v79;

            v5 = v80;
            v11 = v81;
            goto LABEL_47;
          }

          v21 = OSAStabilityMonitorLogDomain();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v89 = v14;
            v90 = 2050;
            v91 = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Baseline uptime for %{public}@ is %{public}lf, which is below the threshold.", buf, 0x16u);
          }

          [a1[4] reportResultsForBundleID:*&v14 crashes:0 uptime:0 MTBF:0 result:0 status:@"Baseline uptime below threshold"];
LABEL_47:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
      }

      while (v11);
    }

    v6 = v78;
  }

  else
  {
    v77 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      sub_100015228();
    }

    [a1[4] reportResultsForBundleID:0 crashes:0 uptime:0 MTBF:0 result:0 status:@"Error calculating uptime"];
  }
}

uint64_t sub_1000077F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 stringValue];
  if ([v4 isValidBundleID:v5])
  {
    v6 = [*(a1 + 32) coalitionBasedBundleIDs];
    v7 = [v3 stringValue];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100007894(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 40), *(a1 + 32), 0);
  }
}

void sub_100007B60(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 40), *(a1 + 32), 0);
  }
}

void sub_10000805C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000808C(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 state];
  v4 = a1[4];
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, 0, 0, v5);
  }

  else
  {
    (*(v4 + 16))(a1[4], *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), 0);
  }
}

uint64_t sub_10000813C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v5 = [v3 eventBody];
  v6 = [v5 supplementalBuild];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [v3 eventBody];
    v9 = [v8 rapidSecurityResponsePreReboot];

    if ((v9 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v10 = 56;
LABEL_7:
      objc_storeStrong((*(*(a1 + v10) + 8) + 40), v4);
      v11 = 1;
      goto LABEL_8;
    }

LABEL_6:
    v10 = 40;
    goto LABEL_7;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

id sub_10000864C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
    if (v4 > 5)
    {
      v6 = @"(20, Inf)";
      if (v4 < 0x15)
      {
        v6 = CFSTR("(10, 20]");
      }

      if (v4 >= 0xB)
      {
        v5 = v6;
      }

      else
      {
        v5 = CFSTR("(5, 10]");
      }
    }

    else
    {
      v5 = [NSString stringWithFormat:@"%lu", v4];
    }

    [v2 setObject:v5 forKeyedSubscript:@"crashCount"];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 doubleValue];
    if (v8 >= 0.0)
    {
      if (v8 <= 5.0)
      {
        v9 = [NSString stringWithFormat:@"%ld", llround(v8)];
      }

      else
      {
        v10 = CFSTR("(12, 24]");
        if (v8 > 24.0)
        {
          v10 = @"(24, Inf)";
        }

        if (v8 > 12.0)
        {
          v9 = v10;
        }

        else
        {
          v9 = CFSTR("(5, 12]");
        }
      }
    }

    else
    {
      v9 = @"(-Inf, 0)";
    }

    [v2 setObject:v9 forKeyedSubscript:@"uptime"];
  }

  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"bundleID"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"MTBF"];
  v11 = [NSNumber numberWithBool:*(a1 + 72)];
  [v2 setObject:v11 forKeyedSubscript:@"result"];

  [v2 setObject:*(a1 + 64) forKeyedSubscript:@"status"];

  return v2;
}

void sub_100008D2C(id a1)
{
  qword_10002A3F8 = dispatch_queue_create("com.apple.osanalytics.stabilityMonitor", 0);

  _objc_release_x1();
}

void sub_10000A0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000A0C4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = [NSString stringWithFormat:@"%@-%@", a1, a2];
    v2 = vars8;
  }

  return v3;
}

void sub_10000A124(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  [v15 timeIntervalSinceDate:*(a1 + 32)];
  v7 = *(a1 + 40);
  if (v8 >= 0.0)
  {
    [*(a1 + 32) timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
    v13 = v12;
    v14 = [*(a1 + 48) stringValue];
    [v7 addDouble:v14 forKey:*(a1 + 32) onDate:v13];

    *a4 = 1;
  }

  else
  {
    [v15 timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
    v10 = v9;
    v11 = [*(a1 + 48) stringValue];
    [v7 addDouble:v11 forKey:*(*(*(a1 + 56) + 8) + 40) onDate:v10];

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }
}

void sub_10000A824(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000A844(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000A88C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id sub_10000A8AC()
{
  if (qword_10002A410 != -1)
  {
    sub_100015448();
  }

  v1 = qword_10002A408;

  return v1;
}

void sub_10000A8F0(id a1)
{
  qword_10002A408 = os_log_create("com.apple.osanalytics.steelrose", "SteelRose");

  _objc_release_x1();
}

void sub_10000AEF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = *(a1 + 32);
    v10 = [a4 localizedDescription];
    v19 = v10;
    v11 = "Error: Webtunnel error: %@";
    v12 = v9;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = *(a1 + 32);
      v15 = [v8 description];
      [v14 logOutcomeInternal:{"Error: Webtunnel response: %@", v15}];

      goto LABEL_5;
    }

    v10 = v8;
    v13 = sub_10000A8AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v21 = [v10 statusCode];
      v22 = 1024;
      v23 = [v7 length];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Webtunnel response %d received %d bytes\n", buf, 0xEu);
    }

    if ([v10 statusCode] != 200 && objc_msgSend(v10, "statusCode") != 201)
    {
      v16 = *(a1 + 32);
      v17 = [v10 description];
      v18 = [[NSString alloc] initWithData:v7 encoding:4];
      [v16 logOutcomeInternal:{"Error: Webtunnel response: %@\n\n%@", v17, v18}];

      goto LABEL_4;
    }

    v12 = *(a1 + 32);
    v11 = "Success: matched and got Webtunnel success code";
  }

  [v12 logOutcomeInternal:{v11, v19}];
LABEL_4:

LABEL_5:
}

void sub_10000B8A4(id a1)
{
  qword_10002A418 = objc_alloc_init(OSADiagnosticMonitorServer);

  _objc_release_x1();
}

void sub_10000BAE4(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 entitled])
        {
          [v7 willWriteLog:a1[5] details:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10000BD38(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 entitled])
        {
          [v7 didWriteLog:a1[5] filePath:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10000BF8C(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1[4] + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 entitled])
        {
          [v7 failedToWriteLog:a1[5] error:a1[6]];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_10000C2F0(uint64_t a1)
{
  v2 = DiagnosticMonitorLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100015A10(a1);
  }

  return [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
}

void sub_10000C7A0(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [NSException raise:NSInvalidUnarchiveOperationException format:@"Putative set of strings was a %@", objc_opt_class()];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [NSException raise:NSInvalidUnarchiveOperationException format:@"Putative set of strings contained a %@", objc_opt_class()];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

id sub_10000C938()
{
  v0 = [NSString stringWithFormat:@"Diagnostic monitor client lacks %@ entitlement", @"com.apple.osanalytics.canusediagnosticmonitor"];
  v4 = NSLocalizedDescriptionKey;
  v5 = v0;
  v1 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v2 = [NSError errorWithDomain:@"OSADiagnosticMonitor" code:0 userInfo:v1];

  return v2;
}

void sub_10000CB50(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void sub_10000CB9C(id a1)
{
  v1 = objc_alloc_init(OSABridgeLinkRemote);
  v2 = qword_10002A428;
  qword_10002A428 = v1;

  xpc_set_event_stream_handler("com.apple.remoteservicediscovery.events", &_dispatch_main_q, &stru_100025148);
  if (qword_10002A428)
  {

    [OSABridgeLinkProxy setLink:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Remote link is unavailable", v3, 2u);
  }
}

void sub_10000CC68(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = _xpc_event_key_name;
      v7 = 2080;
      v8 = string;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got com.apple.remoteservicediscovery.events %s:%s", &v5, 0x16u);
    }

    if (!strcmp(string, "com.apple.SubmitDiagInfo.available"))
    {
      [qword_10002A428 handleLaunchEvent];
    }

    if (!strcmp(string, "com.apple.SubmitDiagInfo.available.display"))
    {
      [qword_10002A428 handleLaunchEvent];
    }
  }
}

void sub_10000D004(void *a1)
{
  v2 = time(0);
  if (v2 >= 0)
  {
    v3 = (v2 / 0x15180uLL);
  }

  else
  {
    v3 = v2;
  }

  v4 = [*(a1[4] + 24) objectForKeyedSubscript:@"<current_day>"];
  v5 = [v4 intValue];

  if (v5 != v3)
  {
    [*(a1[4] + 24) removeAllObjects];
    v6 = [NSNumber numberWithInt:v3];
    [*(a1[4] + 24) setObject:v6 forKeyedSubscript:@"<current_day>"];
  }

  v7 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v8 = [v7 intValue];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = a1[5];
    v13 = 138412802;
    *v14 = v9;
    *&v14[8] = 1024;
    *&v14[10] = v8;
    v15 = 1024;
    v16 = 50;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "daily xfer limit for %@ %d/%d", &v13, 0x18u);
  }

  v10 = [NSNumber numberWithInt:(v8 + 1)];
  [*(a1[4] + 24) setObject:v10 forKeyedSubscript:a1[5]];

  if (v8 > 49)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[6];
      v13 = 67109378;
      *v14 = v8;
      *&v14[4] = 2112;
      *&v14[6] = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "daily xfer limit exceeded (%d), deleting %@", &v13, 0x12u);
    }

    v11 = +[NSFileManager defaultManager];
    [v11 removeItemAtPath:a1[6] error:0];
  }

  else
  {
    [*(a1[4] + 8) initiate:0 transferLog:a1[6] withOptions:&off_100027470 job:0];
    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:*(a1[4] + 24) forKey:@"xfer-counts"];
  }
}

void sub_10000D4B8(const char *a1, void *a2)
{
  v3 = a2;
  v4 = opendir(a1);
  if (v4)
  {
    v5 = v4;
    for (i = readdir(v4); i; i = readdir(v5))
    {
      d_type = i->d_type;
      if (d_type == 4)
      {
        if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
        {
          snprintf(__str, 0x400uLL, "%s/%s", a1, i->d_name);
          sub_10000D4B8(__str, v3);
        }
      }

      else if (d_type == 8)
      {
        v3[2](v3, a1, i->d_name);
      }
    }

    closedir(v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = __error();
    v9 = strerror(*v8);
    *__str = 136315394;
    v11 = a1;
    v12 = 2080;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to open log directory '%s': %s", __str, 0x16u);
  }
}

void sub_10000D63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [NSString stringWithUTF8String:a3];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = *(a1 + 32);
  v20 = 0;
  v9 = [v8 attributesOfItemAtPath:v7 error:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = [v9 fileModificationDate];
    [v11 timeIntervalSinceNow];
    v13 = fabs(v12);

    v14 = [v9 fileSize];
    v15 = v14;
    if ((*(a1 + 40) & 1) == 0 && v13 <= 604800.0 && v14 <= 0x100000)
    {
      v16 = v10;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 604801.0;
    v15 = 1048577;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v22 = v13;
    v23 = 2048;
    v24 = v15;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Removing old (%.0f) or big (%llu) log '%{public}@'", buf, 0x20u);
  }

  v17 = *(a1 + 32);
  v19 = v10;
  v18 = [v17 removeItemAtPath:v7 error:&v19];
  v16 = v19;

  if ((v18 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = *&v7;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to remove log '%@': %@", buf, 0x16u);
  }

LABEL_12:
}

uint64_t start(int a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "osanalyticshelper launched", v6, 2u);
  }

  if (a1 == 2)
  {
    v4 = *(a2 + 8);
    if (!strcmp("server-init", v4))
    {
      sub_100015BC0();
    }

    if (!strcmp("agent-init", v4))
    {
      sub_100015B70();
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100015B28();
  }

  return 1;
}

id sub_10000DA8C()
{
  xpc_activity_register("com.apple.osanalytics.state-monitor", XPC_ACTIVITY_CHECK_IN, &stru_100025190);
  xpc_activity_register("com.apple.osanalytics.stability-monitor", XPC_ACTIVITY_CHECK_IN, &stru_1000251B0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registering the daily telemetry activity.", buf, 2u);
  }

  xpc_activity_register("com.apple.osanalytics.daily.telemetry", XPC_ACTIVITY_CHECK_IN, &stru_1000251D0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Registering the boot time rtc beacon activity.", v1, 2u);
  }

  xpc_activity_register("com.apple.osanalytics.postboot.telemetry", XPC_ACTIVITY_CHECK_IN, &stru_1000251F0);
  xpc_set_event_stream_handler("com.apple.alarm", 0, &stru_100025210);
  return [HighEngagementGenerator setAlarm:0];
}

void sub_10000DBDC(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running the state monitor.", v2, 2u);
    }

    +[OSAStateMonitor evaluateState];
  }
}

void sub_10000DC54(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    v2 = OSAStabilityMonitorLoadParameters();
    [OSAStabilityMonitor evaluateStabilityWithParameters:v2];
  }
}

void sub_10000DCCC(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running the daily telemetry collection.", v2, 2u);
    }

    +[OSADailyTelemetryMonitor evaluateState];
    [OSADailyTelemetryMonitor sendRTCBeacon:0];
  }
}

void sub_10000DD58(id a1, OS_xpc_object *a2)
{
  if (xpc_activity_get_state(a2) == 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running the post-boot telemetry.", v2, 2u);
    }

    [OSADailyTelemetryMonitor sendRTCBeacon:1];
  }
}

void sub_10000DDD4(id a1, OS_xpc_object *a2)
{
  xpc_dictionary_get_string(a2, _xpc_event_key_name);
  xpc_set_event();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running the High Engagement Alarm.", v2, 2u);
  }

  +[HighEngagementGenerator createBiomeFeed];
  [HighEngagementGenerator setAlarm:1];
}

void sub_10000DE78(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    if (!strcmp(string, "com.apple.trial.NamespaceUpdate.STEEL_ROSE_CHECK_IN_COHORT"))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = "com.apple.trial.NamespaceUpdate.STEEL_ROSE_CHECK_IN_COHORT";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Got event '%s'", &v4, 0xCu);
      }

      v3 = objc_alloc_init(SteelRoseTrialClient);
      [(SteelRoseTrialClient *)v3 handleNewTrialFactors];
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100015D28();
  }
}

void sub_10000DFA4(id a1)
{
  qword_10002A440 = dispatch_queue_create("com.apple.osanalytics.reportCreateQueue", &_dispatch_queue_attr_concurrent);

  _objc_release_x1();
}

void sub_10000E120(uint64_t a1)
{
  v2 = &BiomeLibrary_ptr;
  if (*(a1 + 32))
  {
    v3 = kOSALogMetadataBugType;
    string = xpc_dictionary_get_string(*(a1 + 40), [kOSALogMetadataBugType UTF8String]);
    if (!string)
    {
      v9 = 0;
      v7 = @"<unknown>";
      v10 = "illegal request -- missing bug type";
      goto LABEL_39;
    }

    v5 = string;
    v6 = xpc_dictionary_get_string(*(a1 + 40), "caller");
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = v5;
      v57 = 2080;
      v58 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "S1. helper service invoked for '%s' report creation on behalf of %s", buf, 0x16u);
    }

    v7 = [NSString stringWithUTF8String:v5];
    v50 = xpc_dictionary_get_value(*(a1 + 40), "additionalHeaders");
    if (v50)
    {
      v8 = xpc2ns();
    }

    else
    {
      v8 = 0;
    }

    v49 = xpc_dictionary_get_value(*(a1 + 40), "options");
    if (v49)
    {
      v11 = xpc2ns();
    }

    else
    {
      v11 = 0;
    }

    v12 = +[NSMutableDictionary dictionary];
    v13 = [v11 objectForKeyedSubscript:kOSALogOptionObserverInfo];
    [v12 addEntriesFromDictionary:v13];

    v14 = kOSALogMetadataIncidentID;
    v15 = [v8 objectForKeyedSubscript:kOSALogMetadataIncidentID];
    if (v15)
    {
      v16 = [v8 objectForKeyedSubscript:v14];
    }

    else
    {
      v16 = @"<unknown>";
    }

    if ([(__CFString *)v7 isEqualToString:@"210"])
    {
      [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:kOSALogOptionUrgent];
    }

    v51 = v8;
    [v12 setObject:v16 forKeyedSubscript:@"logInfo"];
    v17 = [v12 objectForKeyedSubscript:v3];

    if (!v17)
    {
      [v12 setObject:v7 forKeyedSubscript:v3];
    }

    v18 = [[OSALogIdentity alloc] initWithIncidentID:v16 bugType:v7];
    v19 = +[OSADiagnosticMonitorServer sharedInstance];
    [v19 willWriteLog:v18 details:v12];

    v20 = kOSALogOptionOptInOverride;
    v21 = [v11 objectForKeyedSubscript:kOSALogOptionOptInOverride];
    v22 = [v21 BOOLValue];

    if (v22)
    {
      if ([(__CFString *)v7 isEqualToString:@"211"]&& (v23 = *(a1 + 48)) != 0 && xpc_dictionary_get_BOOL(v23, "com.apple.private.osanalytics.write-logs.allow"))
      {
        if (!+[OSALog isDataVaultEnabled])
        {
          goto LABEL_32;
        }

        v24 = kOSALogOptionDataVaultPath;
        v25 = &__kCFBooleanTrue;
        v26 = v11;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100015D84();
        }

        v25 = &__kCFBooleanFalse;
        v26 = v11;
        v24 = v20;
      }

      [v26 setObject:v25 forKeyedSubscript:v24];
    }

LABEL_32:
    v27 = [v11 objectForKeyedSubscript:kOSALogOptionOverridePath];

    v48 = v18;
    if (v27)
    {
      v10 = "illegal request -- invalid arguments";
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "S2. helper service creating file", buf, 2u);
      }

      v54 = 0;
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_10000EA84;
      v52[3] = &unk_1000252A0;
      v53 = *(a1 + 40);
      v37 = [OSALog locallyCreateForSubmission:v7 metadata:v51 options:v11 error:&v54 writing:v52];
      v38 = v54;
      v31 = v38;
      if (v37)
      {
        v39 = *(a1 + 32);
        v40 = [v37 filepath];
        xpc_dictionary_set_string(v39, "filePath", [v40 fileSystemRepresentation]);

        v9 = [v37 filepath];
        *(*(*(a1 + 56) + 8) + 24) = 1;
        v41 = [v37 oldFilePath];

        if (v41)
        {
          v42 = *(a1 + 32);
          [v37 oldFilePath];
          v44 = v43 = v16;
          xpc_dictionary_set_string(v42, "oldFilePath", [v44 fileSystemRepresentation]);

          v16 = v43;
        }

        if (v9)
        {
          v32 = +[OSADiagnosticMonitorServer sharedInstance];
          v18 = v48;
          [v32 didWriteLog:v48 filePath:v9];
          v10 = 0;
LABEL_38:

          v2 = &BiomeLibrary_ptr;
          if (!v10)
          {
LABEL_41:
            xpc_dictionary_set_BOOL(*(a1 + 32), "result", *(*(*(a1 + 56) + 8) + 24));
            goto LABEL_42;
          }

LABEL_39:
          xpc_dictionary_set_BOOL(*(a1 + 32), "result", 0);
          xpc_dictionary_set_string(*(a1 + 32), "error_desc", v10);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v56 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "helper unable to create log: %{public}s", buf, 0xCu);
          }

          goto LABEL_41;
        }

        v10 = 0;
        v18 = v48;
        if (v31)
        {
LABEL_37:
          v32 = +[OSADiagnosticMonitorServer sharedInstance];
          [v32 failedToWriteLog:v18 error:v31];
          v9 = 0;
          goto LABEL_38;
        }

        v28 = v16;
        v29 = @"failed to create log (unknown reason)";
        goto LABEL_35;
      }

      if (v38)
      {
        v45 = [v38 localizedDescription];
        v10 = [v45 UTF8String];

        v46 = *(a1 + 32);
        v47 = [v31 domain];
        xpc_dictionary_set_string(v46, "error_domain", [v47 UTF8String]);

        xpc_dictionary_set_uint64(*(a1 + 32), "error_code", [v31 code]);
        v29 = v53;
        goto LABEL_36;
      }

      v10 = "failed to create log (unknown reason)";
    }

    v28 = v16;
    v29 = [NSString stringWithUTF8String:v10, v48, v49, v50];
LABEL_35:
    v61 = NSLocalizedDescriptionKey;
    v62 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1, v48];
    v31 = [NSError errorWithDomain:@"OSALog" code:0 userInfo:v30];

    v16 = v28;
    v18 = v48;
LABEL_36:

    goto LABEL_37;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Couldn't create XPC reply -- refusing to create file", buf, 2u);
  }

  v9 = 0;
  v10 = "unable to create log -- no xpc reply";
  v7 = @"<unknown>";
LABEL_42:
  if (*(*(*(a1 + 56) + 8) + 24) == 1 && [(__CFString *)v7 isEqualToString:@"210"])
  {
    [*(a1 + 64) triggerUrgentSubmission];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67109120;
    LODWORD(v56) = v33;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "S6. helper service complete with final result %d", buf, 8u);
  }

  v34 = [v2[306] logObjForBugType:{v7, v48}];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v35 = @"success";
    }

    else
    {
      v35 = @"FAILED";
    }

    if (v10)
    {
      v36 = [NSString stringWithUTF8String:v10];
    }

    else
    {
      v36 = v9;
    }

    *buf = 138543874;
    v56 = v7;
    v57 = 2112;
    v58 = v35;
    v59 = 2114;
    v60 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "xpc log creation type %{public}@ result %@: %{public}@", buf, 0x20u);
    if (v10)
    {
    }
  }
}

void *sub_10000EA70(void *result)
{
  if (result)
  {
    return xpc_dictionary_get_BOOL(result, "com.apple.private.osanalytics.write-logs.allow");
  }

  return result;
}

BOOL sub_10000EA84(uint64_t a1, int a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "S3. helper service utilizing back-channel with file descriptor for payload", buf, 2u);
  }

  v5 = xpc_dictionary_get_value(*(a1 + 32), "datawriter_endpoint");
  v6 = xpc_connection_create_from_endpoint(v5);
  v7 = v6;
  *buf = 0;
  v36 = buf;
  v37 = 0x3032000000;
  v38 = sub_100001C10;
  v39 = sub_100001C28;
  v40 = 0;
  if (v6)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000F070;
    handler[3] = &unk_100025278;
    handler[4] = buf;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(v7);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_fd(v8, "fileDesc", a2);
    v9 = xpc_connection_send_message_with_reply_sync(v7, v8);
    v10 = v9;
    if (v9)
    {
      v11 = xpc_dictionary_get_BOOL(v9, "result");
    }

    else
    {
      v11 = 0;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 67109120;
      LODWORD(v50) = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "S5. helper service recieved back-channel payload write result: %d", v49, 8u);
    }

    if (v10)
    {
      if (!v11)
      {
        if (xpc_get_type(v10) == &_xpc_type_error)
        {
          string = xpc_dictionary_get_string(v10, _xpc_error_key_description);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 136446210;
            v50 = string;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got back-channel xpc error message: %{public}s\n", v49, 0xCu);
          }

          v47 = NSLocalizedDescriptionKey;
          v19 = [NSString stringWithUTF8String:string];
          v48 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v21 = [NSError errorWithDomain:@"OSALog" code:102 userInfo:v20];
          v22 = *(v36 + 5);
          *(v36 + 5) = v21;
        }

        else
        {
          v13 = xpc_dictionary_get_string(v10, "error_desc");
          v14 = xpc_dictionary_get_string(v10, "error_domain");
          uint64 = xpc_dictionary_get_uint64(v10, "error_code");
          if (v14)
          {
            v32 = [NSString stringWithUTF8String:v14];
          }

          else
          {
            v32 = @"OSALog";
          }

          v45 = NSLocalizedDescriptionKey;
          if (v13)
          {
            v23 = [NSString stringWithUTF8String:v13];
          }

          else
          {
            v23 = @"<unknown>";
          }

          v46 = v23;
          v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1, uint64];
          v25 = [NSError errorWithDomain:v32 code:v31 userInfo:v24];
          v26 = *(v36 + 5);
          *(v36 + 5) = v25;

          if (v13)
          {
          }

          if (v14)
          {
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(v36 + 5);
            *v49 = 138412290;
            v50 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "non-xpc (via xpc) error: %@", v49, 0xCu);
          }
        }
      }
    }

    else
    {
      v43 = NSLocalizedDescriptionKey;
      v44 = @"no response from private datawriter request";
      v15 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v16 = [NSError errorWithDomain:@"OSALog" code:103 userInfo:v15];
      v17 = *(v36 + 5);
      *(v36 + 5) = v16;
    }
  }

  else
  {
    v41 = NSLocalizedDescriptionKey;
    v42 = @"failed to create back-channel XPC connection";
    v8 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v12 = [NSError errorWithDomain:@"OSALog" code:104 userInfo:v8];
    v11 = 0;
    v10 = *(v36 + 5);
    *(v36 + 5) = v12;
  }

  v28 = *(v36 + 5);
  if (v28)
  {
    *a3 = v28;
  }

  _Block_object_dispose(buf, 8);

  return v11;
}

void sub_10000F038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F070(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 != &_xpc_error_connection_interrupted && xpc_get_type(v3) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(v4, _xpc_error_key_description);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = string;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got back-channel xpc error event: %{public}s\n", buf, 0xCu);
    }

    v6 = [NSString stringWithUTF8String:string, NSLocalizedDescriptionKey];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:@"OSALog" code:101 userInfo:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_10000F24C(id a1)
{
  qword_10002A448 = dispatch_queue_create("com.apple.osanalytics.urgentSubmissionsQ", 0);

  _objc_release_x1();
}

void sub_10000F28C(id a1)
{
  v2 = objc_opt_new();
  [v2 setUrgentSubmission:1];
  v1 = objc_alloc_init(OSASubmissionClient);
  [v1 submitWithOptions:v2];
}

uint64_t sub_10000F8D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bugType];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    if (*(a1 + 40))
    {
      v6 = *(a1 + 48);
      v7 = [v3 filepath];
      v25 = 0;
      v8 = [v6 attributesOfItemAtPath:v7 error:&v25];
      v9 = v25;

      if (v8)
      {
        v10 = [v8 fileCreationDate];
        v11 = [v10 compare:*(a1 + 40)];

        if (v11 > 0)
        {
          goto LABEL_5;
        }
      }
    }

    v9 = [v3 metaData];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = *(a1 + 56);
    v13 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (!v13)
    {
      v12 = 1;
      goto LABEL_18;
    }

    v14 = v13;
    v15 = *v22;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v8);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      v18 = [v9 objectForKeyedSubscript:{v17, v21}];
      v19 = [*(a1 + 56) objectForKeyedSubscript:v17];

      if (v18 != v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        v12 = 1;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

LABEL_5:
    v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

void sub_10000FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000FD48(uint64_t a1)
{
  v4 = [OSASubmitter submissionPathsWithHomeDirectory:0 withProxies:0];
  v2 = +[OSADeviceRecoveryEnvHelper sharedInstance];
  *(*(*(a1 + 40) + 8) + 24) = [v2 overrideMountPath:*(a1 + 32)];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = [OSASubmitter submissionPathsWithHomeDirectory:0 withProxies:0];
    [OSALogHelper moveLogsFrom:v4 to:v3];
  }
}

uint64_t sub_100010254(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (v1)
  {
    v2 = xpc_dictionary_get_array(v1, [@"com.apple.security.system-groups" UTF8String]);
    v3 = v2;
    if (v2)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100010360;
      v6[3] = &unk_100025380;
      v7 = v2;
      v8 = &v9;
      xpc_array_apply(v7, v6);
    }

    v4 = *(v10 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4 & 1;
}

void sub_100010348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010360(uint64_t a1, size_t a2)
{
  string = xpc_array_get_string(*(a1 + 32), a2);
  if (!string)
  {
    return 1;
  }

  v4 = strcmp(string, "systemgroup.com.apple.osanalytics");
  result = 1;
  if (!v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

void sub_100010518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100010960(void *a1)
{
  result = [OSAXPCServices handleDefaultsRequestWithParams:a1[4] forReply:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_10001129C(id a1, int a2)
{
  fchmod(a2, 0x180u);

  fchown(a2, 0, 0xFAu);
}

void sub_100011658(uint64_t a1, BOOL a2)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), "result", 1);
  xpc_dictionary_set_BOOL(*(a1 + 32), "stability_result", a2);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  xpc_connection_send_message(v4, v5);
}

void sub_100011F48(id a1)
{
  v1 = dispatch_semaphore_create(1);
  v2 = qword_10002A458;
  qword_10002A458 = v1;

  qword_10002A488 = CFAbsoluteTimeGetCurrent();
}

uint64_t sub_100011F80(uint64_t a1, uint64_t a2, xpc_object_t xstring)
{
  v5 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(xstring)];
  v6 = *(a1 + 32);
  v7 = [NSString stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

void *sub_100012004(uint64_t a1)
{
  if (snprintf(__str, 0x80uLL, "0x%llx", *(a1 + 40)) < 0)
  {
    v17 = xmmword_10001AA08;
    v18 = unk_10001AA18;
    v19 = xmmword_10001AA28;
    v20 = unk_10001AA38;
    *__str = *"<unknown>";
    v14 = unk_10001A9D8;
    v15 = xmmword_10001A9E8;
    v16 = unk_10001A9F8;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = "<anonymous>";
  }

  xpc_dictionary_set_string(v2, "caller", v4);
  xpc_dictionary_set_uint64(v3, "latency", *(a1 + 56));
  xpc_dictionary_set_uint64(v3, "latency_outer", *(a1 + 64));
  xpc_dictionary_set_uint64(v3, "latency_inner", *(a1 + 72));
  xpc_dictionary_set_uint64(v3, "latency_prior", *(a1 + 80));
  xpc_dictionary_set_BOOL(v3, "result", *(a1 + 112));
  xpc_dictionary_set_uint64(v3, "size", *(a1 + 88));
  xpc_dictionary_set_uint64(v3, "size_adj", *(a1 + 96));
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = *(a1 + 88);
    v7 = v6 - v5;
    if ((v6 - v5) >= 0)
    {
      v8 = v6 - v5;
    }

    else
    {
      v8 = v5 - v6;
    }

    v9 = (v5 + 100 * v8 - 1) / v5;
    if (v7 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

  xpc_dictionary_set_int64(v3, "size_deltapct", v10);
  xpc_dictionary_set_int64(v3, "size_delta", v7);
  xpc_dictionary_set_string(v3, "exception_code", __str);
  v11 = *(a1 + 32);
  if (v11)
  {
    xpc_dictionary_set_BOOL(v3, "tasked", [v11 BOOLValue]);
  }

  return v3;
}

uint64_t sub_1000123B8(uint64_t a1, uint64_t a2, xpc_object_t xstring)
{
  v5 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(xstring)];
  v6 = *(a1 + 32);
  v7 = [NSString stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

id sub_10001279C()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v15);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100014A88(0, &qword_10002A398, OS_os_log_ptr);
  static OS_os_log.default.getter();
  Logger.init(_:)();
  v13 = sub_100014A88(0, &qword_10002A3A0, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_100014AD0(&qword_10002A3A8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100014338(&qword_10002A3B0, &unk_10001AAB0);
  sub_100014B18(&qword_10002A3B8, &qword_10002A3B0, &unk_10001AAB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v14;
  *&v14[OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_queue] = v8;
  v10 = type metadata accessor for OSAJobQuiescenceMonitor();
  v16.receiver = v9;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, "init");
  sub_100013D40();

  return v11;
}

uint64_t sub_100012A98()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (__chkstk_darwin)();
  v66 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v65 = &v60[-v8];
  v9 = __chkstk_darwin(v7);
  v63 = &v60[-v10];
  v11 = __chkstk_darwin(v9);
  v13 = &v60[-v12];
  v14 = __chkstk_darwin(v11);
  v64 = &v60[-v15];
  v16 = __chkstk_darwin(v14);
  v62 = &v60[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v60[-v19];
  __chkstk_darwin(v18);
  v22 = &v60[-v21];
  v68 = v3[2];
  v69 = OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_logger;
  v68(&v60[-v21], (v1 + OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_logger), v2);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Syncing and submitting logs", v25, 2u);
  }

  v26 = v3[1];
  (v26)(v22, v2);
  v27 = v68;
  v68(v20, &v69[v1], v2);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v67 = v3 + 1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Attempting rollover of CoreAnalytics log", v31, 2u);
  }

  (v26)(v20, v2);
  v61 = AnalyticsRolloverEvents();
  if (v61)
  {
    v32 = v62;
    v27(v62, &v69[v1], v2);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Successful CoreAnalytics log rollover", v35, 2u);
      v64 = v32;
LABEL_10:

      v38 = v68;
      v32 = v64;
      goto LABEL_12;
    }
  }

  else
  {
    v32 = v64;
    v27(v64, &v69[v1], v2);
    v33 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v33, v36, "Failed to rollover CoreAnalytics log", v37, 2u);
      goto LABEL_10;
    }
  }

  v38 = v68;
LABEL_12:

  (v26)(v32, v2);
  v38(v13, &v69[v1], v2);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Attempting submission of logs", v41, 2u);
  }

  (v26)(v13, v2);
  v42 = [objc_allocWithZone(OSASubmissionClient) init];
  v43 = [v42 submit];

  LODWORD(v64) = v43;
  if (v43)
  {
    v44 = v63;
    v38(v63, &v69[v1], v2);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Logs submitted successfully", v47, 2u);
      v65 = v44;
LABEL_19:

      v44 = v65;
    }
  }

  else
  {
    v44 = v65;
    v38(v65, &v69[v1], v2);
    v45 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v45, v48, "Failed to submit logs", v49, 2u);
      v38 = v68;
      goto LABEL_19;
    }

    v38 = v68;
  }

  (v26)(v44, v2);
  v38(v66, &v69[v1], v2);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    if (v61)
    {
      v53 = 1702195828;
    }

    else
    {
      v53 = 0x65736C6166;
    }

    v69 = v26;
    if (v61)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    v55 = sub_100014434(v53, v54, &v70);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2082;
    if (v64)
    {
      v56 = 1702195828;
    }

    else
    {
      v56 = 0x65736C6166;
    }

    if (v64)
    {
      v57 = 0xE400000000000000;
    }

    else
    {
      v57 = 0xE500000000000000;
    }

    v58 = sub_100014434(v56, v57, &v70);

    *(v52 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "Completed sync and submission of logs (rollover: %{public}s, submission: %{public}s)", v52, 0x16u);
    swift_arrayDestroy();

    return (v69)(v66, v2);
  }

  else
  {

    return (v26)(v66, v2);
  }
}

void sub_1000132B0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = type metadata accessor for PostQuiesceActions();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PostQuiesceActions.shutdown.getter();
  sub_100014380();
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) != 0 || (v19 = [objc_opt_self() standardUserDefaults], v20 = String._bridgeToObjectiveC()(), v21 = objc_msgSend(v19, "BOOLForKey:", v20), v19, v20, v21))
  {
    v44 = v1;
    v45 = v0;
    (*(v7 + 16))(v12, &v52[OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_logger], v6);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Quiesce request accepted. Queueing quiescence tasks.", v24, 2u);
    }

    v46 = *(v7 + 8);
    v46(v12, v6);
    v25 = type metadata accessor for JQXPCConnection();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JQXPCConnection.init()();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = type metadata accessor for JQTaskDescriptor();
    v30 = *(*(v29 - 8) + 64);
    __chkstk_darwin(v29 - 8);

    getpid();
    JQTaskDescriptor.init(name:pid:duration:jobGroup:)();
    v31 = type metadata accessor for JQTask();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    *(v28 + 16) = JQTask.init(conn:description:)();

    dispatch thunk of JQTask.begin()();

    v34 = v52;
    v35 = *&v52[OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_queue];
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v28;
    aBlock[4] = sub_1000143CC;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100013CFC;
    aBlock[3] = &unk_1000255C8;
    v37 = _Block_copy(aBlock);
    v38 = v35;
    v39 = v34;

    v40 = v47;
    static DispatchQoS.unspecified.getter();
    v53 = &_swiftEmptyArrayStorage;
    sub_100014AD0(&qword_10002A378, &type metadata accessor for DispatchWorkItemFlags);
    sub_100014338(&qword_10002A380, &qword_10001AAA0);
    sub_100014B18(&qword_10002A388, &qword_10002A380, &qword_10001AAA0);
    v41 = v49;
    v42 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v44 + 8))(v41, v42);
    (*(v48 + 8))(v40, v50);
  }
}

uint64_t sub_100013A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_logger;
  v24 = v5[2];
  v24(&v22 - v10, a1 + OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_logger, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = a2;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Beginning quiescence task", v15, 2u);
    a2 = v23;
  }

  v16 = v5[1];
  v16(v11, v4);
  sub_100012A98();
  v24(v9, a1 + v12, v4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Completed quiescence task", v19, 2u);
  }

  v16(v9, v4);
  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    v21 = *(a2 + 16);

    dispatch thunk of JQTask.end()();
  }

  return result;
}

uint64_t sub_100013CFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100013D40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v19 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v17 = v3[2];
  v17(&v17 - v7, &v1[OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_logger], v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Starting JobQuiescence monitor", v11, 2u);
  }

  v18 = v3[1];
  v18(v8, v2);
  v12 = objc_allocWithZone(type metadata accessor for JQLaunchEventSubscription());
  v13 = JQLaunchEventSubscription.init(subscriptionName:subscriberName:)();
  v14 = *&v1[OBJC_IVAR____TtC17osanalyticshelper23OSAJobQuiescenceMonitor_queue];
  *(swift_allocObject() + 16) = v1;
  v15 = v14;
  v16 = v1;
  dispatch thunk of JQLaunchEventSubscription.register(on:for:notification:)();
}

id sub_1000140CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OSAJobQuiescenceMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for OSAJobQuiescenceMonitor()
{
  result = qword_10002A4A8;
  if (!qword_10002A4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000141D4()
{
  result = type metadata accessor for Logger();
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

id sub_10001429C()
{
  result = [objc_allocWithZone(type metadata accessor for OSAJobQuiescenceMonitor()) init];
  qword_10002A498 = result;
  return result;
}

uint64_t sub_1000142D0(uint64_t a1)
{
  v2 = sub_100014338(&qword_10002A368, &qword_10001AA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014338(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100014380()
{
  result = qword_10002A370;
  if (!qword_10002A370)
  {
    type metadata accessor for PostQuiesceActions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A370);
  }

  return result;
}

uint64_t sub_1000143D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000143EC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100014434(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014500(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100014658(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001460C(v11);
  return v7;
}

unint64_t sub_100014500(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000146B4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10001460C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100014658(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_1000146B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100014700(a1, a2);
  sub_100014830(&off_100025528);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100014700(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001491C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001491C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100014830(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100014990(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001491C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100014338(&qword_10002A390, &qword_10001AAA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014990(char *result, int64_t a2, char a3, char *a4)
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
    sub_100014338(&qword_10002A390, &qword_10001AAA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100014A88(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100014AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000143EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100014CE0(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "HighEngagement: Error querying knowledge store: %@", buf, 0xCu);
}

void sub_100014DFC(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_10000A80C();
  sub_10000A824(&_mh_execute_header, v2, v3, "Error finding end date from baseline (%{public}@): %{public}@");
}

void sub_100014E68(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_10000A80C();
  sub_10000A824(&_mh_execute_header, v2, v3, "Error calculating app uptime from baseline (%{public}@): %{public}@");
}

void sub_100014ED4(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_10000A80C();
  sub_10000A824(&_mh_execute_header, v2, v3, "Error calculating crashes count from baseline (%{public}@): %{public}@");
}

void sub_100014F40(uint64_t *a1)
{
  v1 = *a1;
  sub_10000A80C();
  sub_10000A824(&_mh_execute_header, v2, v3, "Unexpectedly would have recommended a rollback when targeting %{public}@ for %{public}@");
}

void sub_100015064()
{
  sub_10000A880();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Retrieved baseline values: crash count=%{public}@; uptime=%{public}@", v2, 0x16u);
}

void sub_1000152E8(void *a1, uint64_t *a2)
{
  v4 = [a1 stringValue];
  v5 = [a1 startDate];
  v6 = *a2;
  sub_10000A860();
  sub_10000A88C(&_mh_execute_header, v7, v8, "Clamping start date for %{public}@ from %{public}@ to %{public}@", v9, v10, v11, v12, v13);
}

void sub_100015398(void *a1, uint64_t *a2)
{
  v4 = [a1 stringValue];
  v5 = [a1 endDate];
  v6 = *a2;
  sub_10000A860();
  sub_10000A88C(&_mh_execute_header, v7, v8, "Clamping end date for %{public}@ from %{public}@ to %{public}@", v9, v10, v11, v12, v13);
}

void sub_1000154D0()
{
  sub_10000B898();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001550C()
{
  sub_10000B898();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015548()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001562C(void *a1, NSObject *a2)
{
  [a1 count];
  sub_10000A880();
  v4 = 1024;
  v5 = 26;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid array length:%lu, expected at least %d", v3, 0x12u);
}

void sub_1000156C4()
{
  sub_10000B898();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015700()
{
  sub_10000B898();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001573C()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000157AC(void *a1, NSObject *a2)
{
  [a1 count];
  sub_10000A880();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid array length:%lu, expected at least 2", v3, 0xCu);
}

void sub_100015834()
{
  sub_10000B898();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100015870()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000158F4(void *a1, NSObject *a2)
{
  v3[0] = 67109378;
  v3[1] = [a1 processIdentifier];
  v4 = 2114;
  v5 = @"com.apple.osanalytics.canusediagnosticmonitor";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Adding client connection from pid %d which lacks entitlement %{public}@ -- observer registration attempts will fail.", v3, 0x12u);
}

void sub_100015AA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "initial xfer-counts %@", &v2, 0xCu);
}

void sub_100015B70()
{
  sub_10000DBC4();
  v0 = +[NSRunLoop currentRunLoop];
  [v0 run];

  __assert_rtn("main", "main.m", 194, "false");
}

void sub_100015BC0()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(OSAXPCServices);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "instantiating the diagnostic monitor server", v7, 2u);
  }

  v2 = +[OSADiagnosticMonitorServer sharedInstance];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "instantiating the job quiescence monitor server if available", buf, 2u);
  }

  v3 = +[_TtC17osanalyticshelper23OSAJobQuiescenceMonitor sharedInstance];
  v4 = +[OSASystemConfiguration sharedInstance];
  v5 = [v4 pathSubmissionSubdirDiagnosticLogs];

  if ((OSAIsRSDDisplay() & 1) == 0)
  {
    +[OSASubmissionScheduler scheduleSubmission];
  }

  [OSASubmissionScheduler scheduleCleanupForUser:0];
  sub_10000DA8C();
  objc_autoreleasePoolPop(v0);
  v6 = +[NSRunLoop currentRunLoop];
  [v6 run];

  __assert_rtn("main", "main.m", 189, "false");
}

void sub_100015F24(uint8_t *buf, int a2)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Client (%d) is not entitled to override mount path.", buf, 8u);
}

void sub_10001607C(uint8_t *buf, int a2)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Client (%d) is not entitled to read/write defaults.", buf, 8u);
}

void sub_100016144(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_10000B88C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000161C4()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100016280()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000162F8()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000163B4(_xpc_connection_s *a1)
{
  xpc_connection_get_pid(a1);
  sub_10000B88C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100016434(char a1)
{
  v1[0] = 67109120;
  v1[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Retrieved DRE opt-in value: %d via XPC", v1, 8u);
}

void sub_1000164B8()
{
  sub_10000A880();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100016574()
{
  sub_10000A880();
  v3 = 2081;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error handling XPC request to run stability monitor: %{public}s. Request: %{private}s", v2, 0x16u);
}

void sub_1000165F8(_xpc_connection_s *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = xpc_connection_get_pid(a1);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client (%d) is not entitled to run the stability monitor.", v3, 8u);
}

void sub_100016698()
{
  CFAbsoluteTimeGetCurrent();
  sub_10000B88C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}