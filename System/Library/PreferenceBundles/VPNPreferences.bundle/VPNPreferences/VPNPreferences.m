uint64_t sub_1C48()
{
  sub_28A40(&qword_49E40, &qword_3C370);
  sub_289DC();
  return swift_getOpaqueTypeConformance2();
}

void sub_3308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3340(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 connectionWithServiceID:v5 withGrade:a3];

  if (v7)
  {
    v8 = [v7 displayName];
    v9 = +[VPNConnectionStore sharedInstance];
    v10 = [v9 organizationForServiceID:v5];

    v53 = a1;
    v54 = v8;
    if ([v7 isPerApp])
    {
      v11 = +[VPNConnectionStore sharedInstance];
      v50 = [v11 isProfileBacked:v5];

      v12 = [PSSpecifier preferenceSpecifierNamed:v8 target:*(a1 + 32) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
      v62[0] = @"DNSProxySetupListController";
      v61[0] = PSSetupCustomClassKey;
      v61[1] = PSCellClassKey;
      v13 = objc_opt_class();
      v61[2] = PSDetailControllerClassKey;
      v62[1] = v13;
      v62[2] = @"DNSProxySetupListController";
      v14 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
      [v12 setProperties:v14];

      v59[0] = @"vpn-service-id";
      v49 = [v7 serviceID];
      v60[0] = v49;
      v59[1] = @"vpn-user-created";
      [NSNumber numberWithInteger:0];
      v15 = v52 = v5;
      v60[1] = v15;
      v60[2] = v10;
      v59[2] = @"vpn-organization";
      v59[3] = @"vpn-status";
      v16 = [v7 statusText];
      v60[3] = v16;
      v59[4] = @"vpn-status-value";
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 status]);
      v60[4] = v17;
      v59[5] = @"service-grade";
      v18 = [NSNumber numberWithUnsignedInteger:a3];
      v60[5] = v18;
      v59[6] = @"overview-mode";
      [NSNumber numberWithBool:1];
      v20 = v19 = v10;
      v60[6] = v20;
      v59[7] = @"vpn-profile-backed";
      v21 = [NSNumber numberWithBool:v50];
      v60[7] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:8];
      [v12 setUserInfo:v22];

      v23 = v54;
      v5 = v52;

      [v12 setProperty:&off_43500 forKey:PSEnabledKey];
      v24 = [*(v53 + 32) perAppSpecifiers];
      [v24 addObject:v12];
    }

    else
    {
      v12 = [PSSpecifier preferenceSpecifierNamed:v8 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];
      v25 = [v7 serviceID];
      [v12 setProperty:v25 forKey:@"vpn-service-id"];

      v26 = [NSNumber numberWithUnsignedInteger:a3];
      [v12 setProperty:v26 forKey:@"service-grade"];

      v51 = v10;
      [v12 setProperty:objc_opt_class() forKey:PSCellClassKey];
      if (a3 == 5)
      {
        v57[0] = @"vpn-service-id";
        v27 = [v7 serviceID];
        v28 = v10;
        v29 = v27;
        v58[0] = v27;
        v58[1] = v28;
        v57[1] = @"vpn-organization";
        v57[2] = @"vpn-status";
        v30 = [v7 statusText];
        v58[2] = v30;
        v57[3] = @"vpn-status-value";
        v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 status]);
        v58[3] = v31;
        v57[4] = @"service-grade";
        v32 = [NSNumber numberWithUnsignedInteger:5];
        v58[4] = v32;
        v33 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:5];
        [v12 setUserInfo:v33];
      }

      else
      {
        v55 = @"vpn-organization";
        v56 = v10;
        v29 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        [v12 setUserInfo:v29];
      }

      v34 = +[VPNConnectionStore sharedInstance];
      v35 = [v34 isEnabledWithServiceID:v5 withGrade:a3];

      if (v35)
      {
        *(*(*(v53 + 48) + 8) + 24) = 1;
      }

      [v12 setProperty:&off_43500 forKey:PSEnabledKey];
      v36 = +[VPNConnectionStore sharedInstance];
      v24 = [v36 optionsForServiceID:v5 withGrade:a3];

      if (!v24)
      {
        goto LABEL_18;
      }

      v37 = v35 ^ 1;
      if (a3 != 4)
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        v38 = *(v53 + 40);
        v39 = [v24 objectForKeyedSubscript:@"server"];
        [v38 addObject:v39];
      }

      v40 = [v24 objectForKeyedSubscript:@"dnsProhibitDisablement"];
      v41 = [v40 BOOLValue];

      if (v41)
      {
        *(*(*(v53 + 56) + 8) + 24) = 0;
        if ([v7 status] == &dword_0 + 3)
        {
          if (a3 == 5)
          {
            [*(v53 + 32) setHasDNSProxyProhibitDisablement:1];
          }

          else if (a3 == 4)
          {
            [*(v53 + 32) setHasDNSSettingsProhibitDisablement:1];
          }
        }
      }

      else
      {
LABEL_18:
        if (v35)
        {
          v42 = &off_43518;
        }

        else
        {
          v42 = &off_43530;
        }

        [v12 setProperty:v42 forKey:PSAccessoryKey];
      }

      v43 = [v7 bundleID];
      [v12 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
      if ([(__CFString *)v43 length])
      {
        v44 = PSLazyIconAppID;
        v45 = v12;
        v46 = v43;
      }

      else
      {
        v44 = PSIconUTTypeIdentifierKey;
        v46 = @"com.apple.graphic-icon.device-management";
        v45 = v12;
      }

      [v45 setProperty:v46 forKey:v44];
      v47 = [*(v53 + 32) currentDNSSettingsSpecifiers];
      [v47 addObject:v12];

      v23 = v54;
      v19 = v51;
    }
  }

  return 1;
}

void sub_3C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3C68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 isEnabledWithServiceID:v5 withGrade:a3];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v8 = +[VPNConnectionStore sharedInstance];
    [v8 enable:0 serviceID:v5 withGrade:a3];
  }

  return 1;
}

void sub_3F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3F68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v6 = +[VPNConnectionStore sharedInstance];
    v7 = [v6 isEnabledWithServiceID:v5 withGrade:a3];

    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

id sub_46D8()
{
  if (qword_4A070 != -1)
  {
    sub_29C6C();
  }

  v1 = qword_4A068;

  return v1;
}

void sub_471C(id a1)
{
  qword_4A068 = os_log_create("com.apple.networkextension", "VPN Settings");

  _objc_release_x1();
}

void sub_4760(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 session];
    v3 = [v2 queue];
    v4 = v2;
    ne_session_get_status();
  }
}

void sub_4820(uint64_t a1)
{
  v2 = [*(a1 + 32) timerSource];

  if (v2)
  {
    v3 = [*(a1 + 32) timerSource];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setTimerSource:0];
  }

  [*(a1 + 32) session];
  v4 = [*(a1 + 32) queue];
  v5 = *(a1 + 32);
  ne_session_get_info();
}

void sub_4920(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, "VPN");
    v6 = v5;
    if (v5)
    {
      int64 = xpc_dictionary_get_int64(v5, "OnDemandAction");
    }

    else
    {
      int64 = 0;
    }
  }

  else
  {
    int64 = 0;
  }

  v8 = [*(a1 + 32) onDemandAction];
  if (v8 != int64)
  {
    [*(a1 + 32) setOnDemandAction:int64];
  }

  v9 = *(a1 + 40);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v22 = sub_46D8();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v23;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%@ state is now Disconnected", buf, 0xCu);
      }

      if (v4)
      {
        v24 = xpc_dictionary_get_value(v4, "VPN");
        v25 = v24;
        if (v24)
        {
          v26 = xpc_dictionary_get_int64(v24, "LastCause");
        }

        else
        {
          v33 = xpc_dictionary_get_value(v4, "IPSec");
          v34 = xpc_dictionary_get_value(v4, "PPP");
          v35 = v33;
          if (v33 || (v35 = v34) != 0)
          {
            v26 = xpc_dictionary_get_int64(v35, "LastCause");
          }

          else
          {
            v26 = 0;
          }
        }
      }

      else
      {
        v26 = 0;
      }

      v17 = [NSNumber numberWithLongLong:v26];
      [*(a1 + 32) setLastStopCause:v17];
      goto LABEL_44;
    }

    if (v9 != 2)
    {
      goto LABEL_45;
    }

    v17 = sub_46D8();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    v18 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v18;
    v19 = "%@ state is now Connecting";
LABEL_26:
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_44;
  }

  switch(v9)
  {
    case 5:
      v17 = sub_46D8();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v20 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v20;
      v19 = "%@ state is now Disconnecting";
      goto LABEL_26;
    case 4:
      v17 = sub_46D8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v21;
        v19 = "%@ state is now Reasserting";
        goto LABEL_26;
      }

LABEL_44:

      break;
    case 3:
      v10 = sub_46D8();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ state is now Connected", buf, 0xCu);
      }

      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      [*(a1 + 32) setTimerSource:v12];

      v13 = [*(a1 + 32) timerSource];
      dispatch_source_set_timer(v13, 0, 0x3B9ACA00uLL, 0x3B9ACA00uLL);

      v14 = [*(a1 + 32) timerSource];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_4FEC;
      handler[3] = &unk_40B38;
      v50 = *(a1 + 32);
      dispatch_source_set_event_handler(v14, handler);

      v15 = [*(a1 + 32) timerSource];
      dispatch_resume(v15);

      if ([*(a1 + 32) grade] == &dword_0 + 3)
      {
        v16 = [*(a1 + 32) subConnections];
        [v16 removeAllObjects];

        if (v4)
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_504C;
          applier[3] = &unk_40B60;
          v48 = *(a1 + 32);
          xpc_dictionary_apply(v4, applier);
        }
      }

      else
      {
        *buf = &stru_411E8;
        v45 = 0;
        v46 = &stru_411E8;
        v44 = 0;
        v43 = 0;
        v42 = 0;
        sub_51F8(v4, buf, &v46, &v45, &v44, &v43, &v42);
        [*(a1 + 32) setLastStopCause:&off_43548];
        v27 = [NSNumber numberWithLongLong:v42];
        [*(a1 + 32) setSessionConnectTime:v27];

        v28 = *buf;
        v29 = v46;
        v51[0] = *buf;
        v51[1] = v46;
        v30 = [NSArray arrayWithObjects:v51 count:2];
        [*(a1 + 32) setSessionIPAddresses:v30];

        v31 = v45;
        [*(a1 + 32) setSessionRemoteAddress:v45];
        [*(a1 + 32) setMatchDomains:v44];
        [*(a1 + 32) setIsPrimary:v43];
      }

      if ([*(a1 + 32) grade] == &dword_4 + 3 || objc_msgSend(*(a1 + 32), "grade") == &dword_8)
      {
        v32 = xpc_dictionary_get_array(v4, "SortedRelayErrors");
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_5534;
        v40[3] = &unk_40B88;
        v41 = *(a1 + 32);
        xpc_array_apply(v32, v40);
      }

      v17 = v50;
      goto LABEL_44;
  }

LABEL_45:
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_561C;
  v36[3] = &unk_40BB0;
  v37 = *(a1 + 32);
  v38 = *(a1 + 40);
  v39 = v8 != int64;
  dispatch_async(&_dispatch_main_q, v36);
}

void sub_4FEC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:off_49D58 object:*(a1 + 32)];
}

uint64_t sub_504C(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = &stru_411E8;
  v18 = &stru_411E8;
  v15 = 0;
  v16 = &stru_411E8;
  sub_51F8(a3, &v18, &v17, &v16, 0, 0, &v15);
  v5 = v15;
  if (v15 <= 0)
  {
    v11 = v16;
    v9 = v17;
    v8 = v18;
  }

  else
  {
    v6 = [*(a1 + 32) subConnections];
    v20[0] = off_49D78;
    v7 = [NSString stringWithUTF8String:a2];
    v21[0] = v7;
    v20[1] = off_49D60;
    v9 = v17;
    v8 = v18;
    v19[0] = v18;
    v19[1] = v17;
    v10 = [NSArray arrayWithObjects:v19 count:2];
    v11 = v16;
    v21[1] = v10;
    v21[2] = v16;
    v20[2] = off_49D68;
    v20[3] = off_49D70;
    v12 = [NSNumber numberWithLongLong:v5];
    v21[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];
    [v6 addObject:v13];
  }

  return 1;
}

void sub_51F8(void *a1, void **a2, void **a3, void **a4, void **a5, BOOL *a6, int64_t *a7)
{
  v13 = a1;
  v14 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  v40 = a2;
  v41 = a3;
  v15 = xpc_dictionary_get_value(v13, "VPN");
  v16 = xpc_dictionary_get_value(v14, "IPv4");
  v17 = xpc_dictionary_get_value(v14, "IPv6");
  v18 = xpc_dictionary_get_value(v14, "DNSSupplementalMatchDomains");
  if (!v15)
  {
    v39 = a6;
    v34 = xpc_dictionary_get_value(v14, "IPSec");
    v35 = xpc_dictionary_get_value(v14, "PPP");
    v36 = v35;
    if (v34)
    {
      *a7 = xpc_dictionary_get_int64(v34, "ConnectTime");
      v37 = "RemoteAddress";
      v38 = v34;
    }

    else
    {
      if (!v35)
      {
        string = 0;
LABEL_30:

        a6 = v39;
        if (!string)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      *a7 = xpc_dictionary_get_int64(v35, "ConnectTime");
      v37 = "CommRemoteAddress";
      v38 = v36;
    }

    string = xpc_dictionary_get_string(v38, v37);
    goto LABEL_30;
  }

  *a7 = xpc_dictionary_get_int64(v15, "ConnectTime");
  string = xpc_dictionary_get_string(v15, "RemoteAddress");
  if (string)
  {
LABEL_4:
    v20 = [NSString stringWithUTF8String:string, v39];
    v21 = *a4;
    *a4 = v20;
  }

LABEL_5:
  if (v16)
  {
    v22 = xpc_dictionary_get_value(v16, "Addresses");
    v23 = v22;
    if (v22)
    {
      if (xpc_array_get_count(v22))
      {
        v24 = xpc_array_get_string(v23, 0);
        if (v24)
        {
          v25 = [NSString stringWithUTF8String:v24];
          v26 = *v40;
          *v40 = v25;
        }
      }
    }
  }

  if (v17)
  {
    v27 = xpc_dictionary_get_value(v17, "Addresses");
    v28 = v27;
    if (v27)
    {
      if (xpc_array_get_count(v27))
      {
        v29 = xpc_array_get_string(v28, 0);
        if (v29)
        {
          v30 = [NSString stringWithUTF8String:v29];
          v31 = *v41;
          *v41 = v30;
        }
      }
    }
  }

  if (a5 && v18 && xpc_array_get_count(v18))
  {
    v32 = objc_alloc_init(NSMutableArray);
    v33 = *a5;
    *a5 = v32;

    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_749C;
    applier[3] = &unk_40C88;
    applier[4] = a5;
    xpc_array_apply(v18, applier);
  }

  if (a6)
  {
    *a6 = xpc_dictionary_get_int64(v14, "IsPrimaryInterface") != 0;
  }

LABEL_24:
}

uint64_t sub_5534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary && (int64 = xpc_dictionary_get_int64(v4, "LastCause"), int64 >= 2))
  {
    v8 = int64;
    v9 = xpc_dictionary_get_double(v4, "TimeEpoch");
    v10 = +[NSDate now];
    [v10 timeIntervalSince1970];
    v12 = v11 - v9;

    if (v12 <= 300.0)
    {
      v13 = [[NSNumber alloc] initWithDouble:v8];
      [*(a1 + 32) setLastStopCause:v13];
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_561C(uint64_t a1)
{
  [*(a1 + 32) setSession_status:*(a1 + 40)];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:off_49D50 object:*(a1 + 32)];

  if (*(a1 + 44) == 1)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"VPNNEConfigurationChangedNotification" object:*(a1 + 32)];
  }
}

void sub_5B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5B5C(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 40);

    _ne_session_release(v3);
  }

  else if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    sub_4760(WeakRetained);
  }
}

void sub_6E4C(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_4A088 = v1 / v2 / 1000.0 / 1000000.0;
  }
}

uint64_t sub_749C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (xpc_get_type(v4) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(v5);
      if (string_ptr)
      {
        v7 = **(a1 + 32);
        v8 = [NSString stringWithUTF8String:string_ptr];
        [v7 addObject:v8];
      }
    }
  }

  return 1;
}

void sub_8640(uint64_t a1)
{
  for (i = 0; i != 10; ++i)
  {
    *(*(a1 + 32) + i + 8) = 0;
    *(*(a1 + 32) + i + 184) = 0;
    v3 = *(a1 + 32) + 8 * i;
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v5 = *(a1 + 32) + 8 * i;
    v6 = *(v5 + 104);
    *(v5 + 104) = 0;

    v7 = *(a1 + 32) + 280;
    if (*(v7 + 8 * i))
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = *(v7 + 8 * i);
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * j);
            v14 = [*(*(a1 + 32) + 8 * i + 280) objectForKeyedSubscript:v13];
            v15 = [*(a1 + 32) optionsForServiceID:v13 withGrade:i];
            [v14 updateWithOptions:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }
  }

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 postNotificationName:@"VPNNEConfigurationChangedNotification" object:*(a1 + 32)];
}

void sub_899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_89D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConfigurations:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _configurationChanged];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setVpnServiceCountDirty:1];
}

void sub_8A60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained configurationManager];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 storeQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8B68;
  v8[3] = &unk_40EC8;
  objc_copyWeak(&v9, (a1 + 32));
  [v5 loadConfigurationsWithCompletionQueue:v7 handler:v8];

  objc_destroyWeak(&v9);
}

void sub_8B68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConfigurations:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _configurationChanged];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setVpnServiceCountDirty:1];
}

void sub_B940(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != &dword_8 + 1)
  {
    v5 = sub_46D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29D78(v4, a1);
    }
  }

  else
  {
    v5 = [*(a1 + 40) configurationManager];
    v6 = [*(a1 + 40) storeQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_BA40;
    v7[3] = &unk_40F18;
    v7[4] = *(a1 + 40);
    [v5 loadConfigurationsWithCompletionQueue:v6 handler:v7];
  }
}

id sub_BA40(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setConfigurations:a2];
  [*(a1 + 32) _configurationChanged];
  v3 = *(a1 + 32);

  return [v3 setVpnServiceCountDirty:1];
}

void sub_BCAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != &dword_8 + 1)
  {
    v5 = sub_46D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29D78(v4, a1);
    }
  }

  else
  {
    v5 = [*(a1 + 40) configurationManager];
    v6 = [*(a1 + 40) storeQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_BDAC;
    v7[3] = &unk_40F18;
    v7[4] = *(a1 + 40);
    [v5 loadConfigurationsWithCompletionQueue:v6 handler:v7];
  }
}

id sub_BDAC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setConfigurations:a2];
  [*(a1 + 32) _configurationChanged];
  v3 = *(a1 + 32);

  return [v3 setVpnServiceCountDirty:1];
}

void sub_BFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != &dword_8 + 1)
  {
    v5 = sub_46D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29DE0(v4, a1);
    }
  }

  else
  {
    v5 = [*(a1 + 40) configurationManager];
    v6 = [*(a1 + 40) storeQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_C0F4;
    v7[3] = &unk_40F18;
    v7[4] = *(a1 + 40);
    [v5 loadConfigurationsWithCompletionQueue:v6 handler:v7];
  }
}

id sub_C0F4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setConfigurations:a2];
  [*(a1 + 32) _configurationChanged];
  v3 = *(a1 + 32);

  return [v3 setVpnServiceCountDirty:1];
}

id sub_F900(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 name];
  v5 = [v3 name];

  v6 = [v4 compare:v5];
  return v6;
}

id sub_F970(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 name];
  v5 = [v3 name];

  v6 = [v4 localizedCaseInsensitiveCompare:v5];
  return v6;
}

void sub_100F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != &dword_8 + 1)
  {
    v5 = sub_46D8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29D78(v4, a1);
    }
  }

  else
  {
    v5 = [*(a1 + 40) configurationManager];
    v6 = [*(a1 + 40) storeQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_101F8;
    v7[3] = &unk_40F18;
    v7[4] = *(a1 + 40);
    [v5 loadConfigurationsWithCompletionQueue:v6 handler:v7];
  }
}

id sub_101F8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setConfigurations:a2];
  [*(a1 + 32) _configurationChanged];
  v3 = *(a1 + 32);

  return [v3 setVpnServiceCountDirty:1];
}

void sub_11B68(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_11B94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_12730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_12748(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 connectionWithServiceID:v5 withGrade:a3];

  v8 = [v7 session_status];
  if (v8 == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v9 = v8 != 3;

  return v9;
}

void sub_12954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1296C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 connectionWithServiceID:v5 withGrade:a3];

  v8 = [v7 session_status];
  if (v8 == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v9 = v8 != 3;

  return v9;
}

void sub_186EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18710(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_18728(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 isEnabledWithServiceID:v5 withGrade:a3];

  if (v7)
  {
    v8 = ++*(*(*(a1 + 32) + 8) + 24);
    v9 = v8 == 1;
    if (v8 == 1)
    {
      v10 = +[VPNConnectionStore sharedInstance];
      v11 = [v10 optionsForServiceID:v5 withGrade:a3];

      if (!v11)
      {
        v9 = 1;
        goto LABEL_8;
      }

      v12 = [v11 objectForKeyedSubscript:@"dispName"];
    }

    else
    {
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"MULTIPLE_DNS" value:&stru_411E8 table:@"MobileVPN"];
    }

    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

LABEL_8:
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

void sub_189A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_189BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 connectionWithServiceID:v5 withGrade:a3];

  v8 = [*(a1 + 32) name];
  v9 = [v7 displayName];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = +[VPNConnectionStore sharedInstance];
    v12 = [v11 isEnabledWithServiceID:v5 withGrade:a3];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = v13;
    if (v12)
    {
      v15 = @"ON";
    }

    else
    {
      v15 = @"OFF";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_411E8 table:@"MobileVPN"];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  return v10 ^ 1;
}

void sub_19E2C(id a1, NSError *a2)
{
  if (a2)
  {
    NSLog(@"%s: Failed to setURLFilterActive - %@", "[URLFilterController setURLFilterActive:specifier:]_block_invoke", a2);
  }
}

uint64_t sub_1A200(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 connectionWithServiceID:v5 withGrade:a3];

  [*(a1 + 32) setCurrentConnection:v7];
  if (v7)
  {
    v8 = +[VPNConnectionStore sharedInstance];
    v9 = [v8 organizationForServiceID:v5];

    v10 = +[VPNConnectionStore sharedInstance];
    v11 = [v10 isMDM:v5];

    v12 = [v7 displayName];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:*(a1 + 32) set:"setURLFilterState:forSpecifier:" get:"getURLFilterState:" detail:0 cell:6 edit:0];

    v28[0] = PSConfirmationDestructiveKey;
    v14 = [NSNumber numberWithBool:1];
    v29[0] = v14;
    v28[1] = PSCellClassKey;
    v29[1] = objc_opt_class();
    v28[2] = PSEnabledKey;
    v15 = [NSNumber numberWithBool:v11 ^ 1];
    v29[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v13 setProperties:v16];

    v26[0] = @"vpn-service-id";
    v17 = [v7 serviceID];
    v27[0] = v17;
    v27[1] = v9;
    v26[1] = @"vpn-organization";
    v26[2] = @"vpn-status";
    v18 = [v7 statusText];
    v27[2] = v18;
    v26[3] = @"vpn-status-value";
    v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 status]);
    v27[3] = v19;
    v26[4] = @"service-grade";
    v20 = [NSNumber numberWithUnsignedInteger:a3];
    v27[4] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
    [v13 setUserInfo:v21];

    v22 = [*(a1 + 32) specifier];
    [v22 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];

    v23 = [*(a1 + 32) specifier];
    [v23 setProperty:@"com.apple.graphic-icon.device-management" forKey:PSIconUTTypeIdentifierKey];

    v24 = [*(a1 + 32) systemSpecifiers];
    [v24 addObject:v13];
  }

  return 1;
}

id sub_1F760(uint64_t a1)
{
  result = [*(a1 + 32) editMode];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 cancelButtonClicked:0];
  }

  return result;
}

id sub_1F7B0(uint64_t a1)
{
  [*(a1 + 32) setPptpWarningAccepted:1];
  v2 = *(a1 + 32);

  return [v2 saveButtonClicked:0];
}

void sub_21A74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 serverAddressSpecifier];
  [v1 removeSpecifier:v2];
}

uint64_t sub_2716C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[VPNConnectionStore sharedInstance];
  v7 = [v6 connectionWithServiceID:v5 withGrade:a3];

  if (v7)
  {
    v8 = [v7 displayName];
    v9 = +[VPNConnectionStore sharedInstance];
    v10 = [v9 organizationForServiceID:v5];

    v11 = +[VPNConnectionStore sharedInstance];
    v12 = [v11 isProfileBacked:v5];

    v37 = v10;
    if ([v7 isPerApp])
    {
      v13 = [PSSpecifier preferenceSpecifierNamed:v8 target:*(a1 + 32) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
      v43[0] = @"ContentFilterSetupListController";
      v42[0] = PSSetupCustomClassKey;
      v42[1] = PSCellClassKey;
      v14 = objc_opt_class();
      v42[2] = PSDetailControllerClassKey;
      v43[1] = v14;
      v43[2] = @"ContentFilterSetupListController";
      v36 = v8;
      v15 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
      [v13 setProperties:v15];

      v40[0] = @"vpn-service-id";
      v34 = [v7 serviceID];
      v41[0] = v34;
      v40[1] = @"vpn-user-created";
      [NSNumber numberWithInteger:0];
      v16 = v35 = a1;
      v41[1] = v16;
      v41[2] = v10;
      v40[2] = @"vpn-organization";
      v40[3] = @"vpn-status";
      v17 = [v7 statusText];
      v41[3] = v17;
      v40[4] = @"vpn-status-value";
      v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 status]);
      v41[4] = v18;
      v40[5] = @"service-grade";
      v19 = [NSNumber numberWithUnsignedInteger:a3];
      v41[5] = v19;
      v40[6] = @"overview-mode";
      v20 = [NSNumber numberWithBool:1];
      v41[6] = v20;
      v40[7] = @"vpn-profile-backed";
      v21 = [NSNumber numberWithBool:v12];
      v41[7] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:8];
      [v13 setUserInfo:v22];

      v8 = v36;
      [v13 setProperty:&off_436B0 forKey:PSEnabledKey];
      v23 = [*(v35 + 32) perAppSpecifiers];
    }

    else
    {
      v24 = [v7 displayName];
      v13 = [PSSpecifier preferenceSpecifierNamed:v24 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

      [v13 setProperty:objc_opt_class() forKey:PSCellClassKey];
      v38[0] = @"vpn-service-id";
      v25 = [v7 serviceID];
      v39[0] = v25;
      v39[1] = v10;
      v38[1] = @"vpn-organization";
      v38[2] = @"vpn-status";
      v26 = [v7 statusText];
      v39[2] = v26;
      v38[3] = @"vpn-status-value";
      v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 status]);
      v39[3] = v27;
      v38[4] = @"service-grade";
      v28 = [NSNumber numberWithUnsignedInteger:a3];
      v39[4] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:5];
      [v13 setUserInfo:v29];

      v30 = [*(a1 + 32) specifier];
      [v30 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];

      v31 = [*(a1 + 32) specifier];
      [v31 setProperty:@"com.apple.graphic-icon.device-management" forKey:PSIconUTTypeIdentifierKey];

      v23 = [*(a1 + 32) systemSpecifiers];
    }

    v32 = v23;
    [v23 addObject:v13];
  }

  return 1;
}

CFTypeRef sub_2791C()
{
  cf = 0;
  v5[0] = kSecClass;
  v5[1] = kSecReturnPersistentRef;
  v6[0] = kSecClassIdentity;
  v6[1] = kCFBooleanTrue;
  v5[2] = kSecMatchLimit;
  v5[3] = kSecAttrAccessGroup;
  v6[2] = &off_436C8;
  v6[3] = @"com.apple.identities";
  v0 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v1 = SecItemCopyMatching(v0, &cf);
  v2 = cf;
  if (v1 && cf)
  {
    CFRelease(cf);
    v2 = 0;
    cf = 0;
  }

  return v2;
}

CFTypeRef sub_27A24()
{
  cf = 0;
  v5[0] = kSecClass;
  v5[1] = kSecReturnRef;
  v6[0] = kSecClassIdentity;
  v6[1] = kCFBooleanTrue;
  v5[2] = kSecMatchLimit;
  v5[3] = kSecAttrAccessGroup;
  v6[2] = &off_436C8;
  v6[3] = @"com.apple.identities";
  v0 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4];
  v1 = SecItemCopyMatching(v0, &cf);
  v2 = cf;
  if (v1 && cf)
  {
    CFRelease(cf);
    v2 = 0;
    cf = 0;
  }

  return v2;
}

CFStringRef sub_27B2C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v10[0] = kSecValuePersistentRef;
    v10[1] = kSecReturnRef;
    v11[0] = v1;
    v11[1] = kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    certificateRef = 0;
    result = 0;
    v4 = SecItemCopyMatching(v3, &result);
    v5 = 0;
    v6 = result;
    if (!v4 && result)
    {
      v5 = 0;
      if (!SecIdentityCopyCertificate(result, &certificateRef) && certificateRef)
      {
        v5 = SecCertificateCopySubjectSummary(certificateRef);
      }

      v6 = result;
    }

    if (v6)
    {
      CFRelease(v6);
      result = 0;
    }

    if (certificateRef)
    {
      CFRelease(certificateRef);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_27C74()
{
  v0 = sub_27E34(&qword_49E40, &qword_3C370);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = v9 - v3;
  sub_27E34(&qword_49E48, &qword_3C378);
  v5 = sub_29F84();
  v6 = sub_29144(&qword_49E50, &type metadata accessor for PreferencesControllerView);
  v7 = sub_280C8();
  v9[0] = v5;
  v9[1] = &type metadata for String;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  sub_2A0A4();
  sub_289DC();
  sub_2A054();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_27E34(uint64_t *a1, uint64_t *a2)
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

id sub_27E7C()
{
  v0 = *(*(sub_29FB4() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_29F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2A124();
  sub_2A114();
  sub_2A104();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29238(0, &qword_49F28, &off_40598);
  sub_29FA4();
  sub_29F74();
  result = [objc_opt_self() navigationTitle];
  if (result)
  {
    v7 = result;
    v8 = sub_2A0C4();
    v10 = v9;

    v11[0] = v8;
    v11[1] = v10;
    sub_29144(&qword_49E50, &type metadata accessor for PreferencesControllerView);
    sub_280C8();
    sub_2A004();

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_280C8()
{
  result = qword_49E58;
  if (!qword_49E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_49E58);
  }

  return result;
}

uint64_t sub_2811C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_29F14();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_29FF4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_27E34(&qword_49F08, &qword_3C458) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_29F54();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_29F64();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = sub_2A084();
  v2[18] = v16;
  v17 = *(v16 - 8);
  v2[19] = v17;
  v18 = *(v17 + 64) + 15;
  v2[20] = swift_task_alloc();
  sub_2A124();
  v2[21] = sub_2A114();
  v20 = sub_2A104();

  return _swift_task_switch(sub_283C4, v20, v19);
}

id sub_283C4()
{
  v84 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[3];
  v5 = sub_2A134();
  (*(v2 + 16))(v1, v4, v3);
  sub_29238(0, &qword_49F10, OS_os_log_ptr);
  v6 = sub_2A164();
  v7 = os_log_type_enabled(v6, v5);
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];
  if (v7)
  {
    v82 = v5;
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v83 = v80;
    *v14 = 136315138;
    v79 = v10;
    sub_2A074();
    sub_29144(&qword_49F18, &type metadata accessor for URL);
    v15 = sub_2A194();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    (*(v8 + 8))(v9, v79);
    v18 = sub_28B9C(v15, v17, &v83);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v6, v82, "MobileVPN onSettingsExperienceOpenURL: %s", v14, 0xCu);
    sub_2918C(v80);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v20 = v0[16];
  v19 = v0[17];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[13];
  v24 = v0[11];
  v25 = v0[3];
  sub_2A074();
  sub_29F34();
  (*(v20 + 8))(v19, v21);
  if ((*(v23 + 48))(v24, 1, v22) != 1)
  {
    v33 = v0[9];
    v34 = v0[3];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_2A064();
    sub_29F44();
    v86._object = 0x8000000000034010;
    v86._countAndFlagsBits = 0xD00000000000001BLL;
    v35 = sub_2A0F4(v86);

    if (!v35)
    {
      v57 = v0[21];

LABEL_37:
      v64 = v0[13];
      v63 = v0[14];
      v65 = v0[12];
      v67 = v0[8];
      v66 = v0[9];
      v68 = v0[7];
      v69 = v0[2];
      sub_2A094();
      (*(v67 + 8))(v66, v68);
      (*(v64 + 8))(v63, v65);
      goto LABEL_38;
    }

    v36 = v0[14];
    v37 = sub_29F24();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = &_swiftEmptyArrayStorage;
    }

    v39 = v38[2];
    v78 = v38;
    if (v39)
    {
      v81 = 0;
      v40 = 0;
      v41 = v0[5];
      v44 = *(v41 + 16);
      v43 = v41 + 16;
      v42 = v44;
      v45 = v38 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
      v46 = *(v43 + 56);
      v44(v0[6], v45, v0[4]);
      while (1)
      {
        v50 = sub_29EF4();
        v51 = v49;
        v52 = v50 == 0x7265646E6573 && v49 == 0xE600000000000000;
        if (v52 || (sub_2A1A4() & 1) != 0)
        {

          v47 = v0[6];

          sub_29F04();
          v40 = v48;
          goto LABEL_13;
        }

        if (v50 == 0x44496769666E6F63 && v51 == 0xE800000000000000)
        {
        }

        else
        {
          v54 = sub_2A1A4();

          if ((v54 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v55 = v0[6];

        sub_29F04();
        v81 = v56;
LABEL_13:
        (*(v43 - 8))(v0[6], v0[4]);
        v45 += v46;
        if (!--v39)
        {
          goto LABEL_30;
        }

        v42(v0[6], v45, v0[4]);
      }
    }

    v81 = 0;
    v40 = 0;
LABEL_30:
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v59 = result;
    v60 = v0[21];

    if (v81)
    {
      v61 = sub_2A0B4();

      if (v40)
      {
LABEL_33:
        v62 = sub_2A0B4();

LABEL_36:
        [v59 triggerLocalAuthenticationForConfigurationIdentifier:v61 requestedByApp:{v62, v78}];

        goto LABEL_37;
      }
    }

    else
    {
      v61 = 0;
      if (v40)
      {
        goto LABEL_33;
      }
    }

    v62 = 0;
    goto LABEL_36;
  }

  v26 = v0[21];
  v27 = v0[10];
  v28 = v0[11];
  v29 = v0[7];
  v30 = v0[8];
  v32 = v0[2];
  v31 = v0[3];

  sub_28B34(v28);
  sub_2A064();
  sub_2A094();
  (*(v30 + 8))(v27, v29);
LABEL_38:
  v70 = v0[20];
  v71 = v0[17];
  v72 = v0[14];
  v74 = v0[10];
  v73 = v0[11];
  v75 = v0[9];
  v76 = v0[6];

  v77 = v0[1];

  return v77();
}

unint64_t sub_289DC()
{
  result = qword_49E60;
  if (!qword_49E60)
  {
    sub_28A40(&qword_49E40, &qword_3C370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_49E60);
  }

  return result;
}

uint64_t sub_28A40(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_28A90()
{
  result = qword_49E68;
  if (!qword_49E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_49E68);
  }

  return result;
}

uint64_t sub_28B34(uint64_t a1)
{
  v2 = sub_27E34(&qword_49F08, &qword_3C458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28B9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_28C68(v11, 0, 0, 1, a1, a2);
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
    sub_291D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2918C(v11);
  return v7;
}

unint64_t sub_28C68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_28D74(a5, a6);
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
    result = sub_2A184();
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

char *sub_28D74(uint64_t a1, unint64_t a2)
{
  v4 = sub_28DC0(a1, a2);
  sub_28EF0(&off_410B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_28DC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_28FDC(v5, 0);
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

  result = sub_2A184();
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
        v10 = sub_2A0E4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_28FDC(v10, 0);
        result = sub_2A174();
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

uint64_t sub_28EF0(uint64_t result)
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

  result = sub_29050(result, v12, 1, v3);
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

void *sub_28FDC(uint64_t a1, uint64_t a2)
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

  sub_27E34(&qword_49F20, &unk_3C460);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29050(char *result, int64_t a2, char a3, char *a4)
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
    sub_27E34(&qword_49F20, &unk_3C460);
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

uint64_t sub_29144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2918C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_291D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29238(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_29280()
{
  v1 = sub_29FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = [v0 traitCollection];
  sub_2A144();

  (*(v2 + 16))(v6, v8, v1);
  v10 = sub_2A0D4();
  (*(v2 + 8))(v8, v1);
  return v10;
}

void sub_295A4(char a1)
{
  v2 = v1;
  v4 = sub_2A044();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 traitCollection];
  sub_2A154();

  LOBYTE(v9) = sub_2A014();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    v11 = [v2 traitCollection];
    sub_2A154();

    sub_2A034(1);
    v10(v8, v4);
  }

  else
  {
    v12 = [v2 navigationController];
  }
}

void sub_297FC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2A044();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 traitCollection];
  sub_2A154();

  LOBYTE(v11) = sub_2A014();
  v12 = *(v7 + 8);
  v12(v10, v6);
  if (v11)
  {
    v17 = &OBJC_PROTOCOL___PSController;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v19 = sub_29FB4();
      v20 = sub_29B44(&qword_49F98, &type metadata accessor for PreferencesControllerRecipe);
      sub_29A9C(v18);
      v13 = a1;
      sub_29F94();
    }

    else
    {
      v19 = sub_29FD4();
      v20 = sub_29B44(&qword_49F90, &type metadata accessor for SettingsAnyPlatformViewControllerRecipe);
      sub_29A9C(v18);
      v15 = a1;
      sub_29FE4();
    }

    sub_29B00(v18, v19);
    v16 = [v3 traitCollection];
    sub_2A154();

    sub_2A024();
    v12(v10, v6);
    sub_2918C(v18);
  }

  else
  {
    v14 = [v3 navigationController];
  }
}

uint64_t *sub_29A9C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_29B00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29B44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D78(uint64_t a1, uint64_t a2)
{
  sub_11BB0(a2, __stack_chk_guard);
  sub_11B50();
  sub_11B68(&dword_0, v2, v3, "Save error: %@ configuration: %@");
}

void sub_29DE0(uint64_t a1, uint64_t a2)
{
  sub_11BB0(a2, __stack_chk_guard);
  sub_11B50();
  sub_11B68(&dword_0, v2, v3, "Remove error: %@ configuration: %@");
}