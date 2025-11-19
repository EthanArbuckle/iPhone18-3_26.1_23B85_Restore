@interface BuddyNetworkProvider
- (BOOL)connectedOverCellular;
- (BOOL)connectedOverWiFi;
- (BOOL)connectedOverWiFiAndNetworkReachable;
- (BOOL)currentNetworkRequiresDataUsageWarningForRestore;
- (BOOL)currentNetworkSupportsRestore;
- (BOOL)deviceSupportsCellularRestore;
- (BOOL)inAppleStore;
- (BOOL)isCellularDataPossible;
- (BOOL)networkReachable;
- (BuddyNetworkProvider)init;
- (void)assumeNetworkReachabilityOverWiFi;
@end

@implementation BuddyNetworkProvider

- (BuddyNetworkProvider)init
{
  v22 = a2;
  location = 0;
  v21.receiver = self;
  v21.super_class = BuddyNetworkProvider;
  location = [(BuddyNetworkProvider *)&v21 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc_init(NWPathEvaluator);
    v3 = *(location + 2);
    *(location + 2) = v2;

    v4 = [CoreTelephonyClient alloc];
    v5 = dispatch_get_global_queue(0, 0);
    v6 = [v4 initWithQueue:v5];
    v7 = *(location + 3);
    *(location + 3) = v6;

    v8 = dispatch_queue_create("Force Network Reachability Queue", 0);
    v9 = *(location + 5);
    *(location + 5) = v8;

    v10 = nw_path_monitor_create();
    v11 = *(location + 4);
    *(location + 4) = v10;

    nw_path_monitor_set_queue(*(location + 4), *(location + 5));
    v12 = *(location + 4);
    update_handler = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_1000C0B6C;
    v19 = &unk_10032B368;
    v20 = location;
    nw_path_monitor_set_update_handler(v12, &update_handler);
    nw_path_monitor_start(*(location + 4));
    objc_storeStrong(&v20, 0);
  }

  v13 = location;
  objc_storeStrong(&location, 0);
  return v13;
}

- (BOOL)networkReachable
{
  if (![(BuddyNetworkProvider *)self forceNetworkReachabilityOverWiFi])
  {
    v2 = [(BuddyNetworkProvider *)self pathEvaluator];
    v3 = [(NWPathEvaluator *)v2 path];
    v4 = [v3 status];

    if (v4)
    {
      if (v4 == 1)
      {
        v7 = 1;
        return v7 & 1;
      }

      if ((v4 - 2) >= 2)
      {
        return v7 & 1;
      }
    }

    v7 = 0;
    return v7 & 1;
  }

  v7 = 1;
  return v7 & 1;
}

- (BOOL)connectedOverWiFi
{
  if (![(BuddyNetworkProvider *)self forceNetworkReachabilityOverWiFi])
  {
    v2 = [(BuddyNetworkProvider *)self pathEvaluator];
    v3 = [(NWPathEvaluator *)v2 path];
    v4 = [v3 interface];
    v5 = [v4 type];

    if (v5)
    {
      if (v5 == 1)
      {
        goto LABEL_9;
      }

      if (v5 == 2)
      {
        goto LABEL_8;
      }

      if (v5 == 3)
      {
LABEL_9:
        v8 = 1;
        return v8 & 1;
      }

      if (v5 != 4)
      {
        return v8 & 1;
      }
    }

LABEL_8:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

- (BOOL)connectedOverCellular
{
  v2 = [(BuddyNetworkProvider *)self pathEvaluator];
  v3 = [(NWPathEvaluator *)v2 path];
  v4 = [v3 interface];
  v5 = [v4 type];

  if (v5 < 2)
  {
    goto LABEL_4;
  }

  if (v5 == 2)
  {
    v7 = 1;
    return v7 & 1;
  }

  if ((v5 - 3) <= 1)
  {
LABEL_4:
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)connectedOverWiFiAndNetworkReachable
{
  v2 = [(BuddyNetworkProvider *)self networkReachable];
  v3 = 0;
  if (v2)
  {
    v3 = [(BuddyNetworkProvider *)self connectedOverWiFi];
  }

  return v3 & 1;
}

- (BOOL)currentNetworkSupportsRestore
{
  v72 = self;
  location[1] = a2;
  v2 = [(BuddyNetworkProvider *)self pathEvaluator];
  v3 = [(NWPathEvaluator *)v2 path];
  v4 = [v3 status];

  if (!v4)
  {
    goto LABEL_74;
  }

  if (v4 != 1)
  {
    if ((v4 - 2) >= 2)
    {
      return v73 & 1;
    }

    goto LABEL_74;
  }

  v5 = [(BuddyNetworkProvider *)v72 pathEvaluator];
  v6 = [(NWPathEvaluator *)v5 path];
  v7 = [v6 interface];
  v8 = [v7 type];

  if (v8 < 2)
  {
    goto LABEL_73;
  }

  if (v8 != 2)
  {
    if ((v8 - 3) >= 2)
    {
LABEL_74:
      v73 = 0;
      return v73 & 1;
    }

LABEL_73:
    v73 = 1;
    return v73 & 1;
  }

  v9 = [(BuddyNetworkProvider *)v72 pathEvaluator];
  v10 = [(NWPathEvaluator *)v9 path];
  v11 = [v10 interface];
  v12 = [v11 isExpensive];

  if (v12)
  {
    location[0] = _BYLoggingFacility();
    v70 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = location[0];
      v14 = v70;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v13, v14, "Cellular network is expensive; does not support restore", buf, 2u);
    }

    objc_storeStrong(location, 0);
    v73 = 0;
    return v73 & 1;
  }

  if ([(BuddyNetworkProvider *)v72 deviceSupportsCellularRestore])
  {
    v65 = 0;
    v17 = [(BuddyNetworkProvider *)v72 telephonyClient];
    v63 = 0;
    v18 = [(CoreTelephonyClient *)v17 getCurrentDataSubscriptionContextSync:&v63];
    objc_storeStrong(&v65, v63);
    v64 = v18;

    if (v65)
    {
      v62 = _BYLoggingFacility();
      v61 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v59 = 0;
        v57 = 0;
        if (_BYIsInternalInstall())
        {
          v19 = v65;
        }

        else if (v65)
        {
          v60 = [v65 domain];
          v59 = 1;
          v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v60, [v65 code]);
          v58 = v19;
          v57 = 1;
        }

        else
        {
          v19 = 0;
        }

        sub_100071CBC(v77, v19);
        _os_log_error_impl(&_mh_execute_header, v62, v61, "Failed to get data subscription context: %{public}@", v77, 0xCu);
        if (v57)
        {
        }

        if (v59)
        {
        }
      }

      objc_storeStrong(&v62, 0);
      v73 = 0;
      v56 = 1;
      goto LABEL_72;
    }

    v55 = [[CTBundle alloc] initWithBundleType:1];
    v20 = [(BuddyNetworkProvider *)v72 telephonyClient];
    obj = v65;
    v21 = [(CoreTelephonyClient *)v20 copyCarrierBundleValue:v64 key:@"EnableRestoreOnCellular" bundleType:v55 error:&obj];
    objc_storeStrong(&v65, obj);
    v54 = v21;

    if (v54)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([v54 BOOLValue] & 1) == 0)
        {
          oslog = _BYLoggingFacility();
          v51 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = oslog;
            v23 = v51;
            sub_10006AA68(v50);
            _os_log_impl(&_mh_execute_header, v22, v23, "Cellular network is disallowed for restore", v50, 2u);
          }

          objc_storeStrong(&oslog, 0);
          v73 = 0;
          v56 = 1;
LABEL_71:
          objc_storeStrong(&v54, 0);
          objc_storeStrong(&v55, 0);
LABEL_72:
          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
          return v73 & 1;
        }
      }

      else
      {
        v49 = _BYLoggingFacility();
        v48 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10006AE18(v76, v54);
          _os_log_error_impl(&_mh_execute_header, v49, v48, "Unexpected value from carrier bundle for restore: %@", v76, 0xCu);
        }

        objc_storeStrong(&v49, 0);
      }
    }

    else
    {
      v47 = _BYLoggingFacility();
      v46 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v44 = 0;
        v42 = 0;
        if (_BYIsInternalInstall())
        {
          v24 = v65;
        }

        else if (v65)
        {
          v45 = [v65 domain];
          v44 = 1;
          v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v45, [v65 code]);
          v43 = v24;
          v42 = 1;
        }

        else
        {
          v24 = 0;
        }

        sub_100071CBC(v75, v24);
        _os_log_error_impl(&_mh_execute_header, v47, v46, "Failed to get carrier bundle for restore: %{public}@", v75, 0xCu);
        if (v42)
        {
        }

        if (v44)
        {
        }
      }

      objc_storeStrong(&v47, 0);
    }

    v25 = [(BuddyNetworkProvider *)v72 telephonyClient];
    v40 = v65;
    v26 = [(CoreTelephonyClient *)v25 getDataStatus:v64 error:&v40];
    objc_storeStrong(&v65, v40);
    v41 = v26;

    if (v65)
    {
      v39 = _BYLoggingFacility();
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v36 = 0;
        v34 = 0;
        if (_BYIsInternalInstall())
        {
          v27 = v65;
        }

        else if (v65)
        {
          v37 = [v65 domain];
          v36 = 1;
          v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v37, [v65 code]);
          v35 = v27;
          v34 = 1;
        }

        else
        {
          v27 = 0;
        }

        sub_100071CBC(v74, v27);
        _os_log_error_impl(&_mh_execute_header, v39, v38, "Failed to get data status: %{public}@", v74, 0xCu);
        if (v34)
        {
        }

        if (v36)
        {
        }
      }

      objc_storeStrong(&v39, 0);
      v73 = 0;
      v56 = 1;
    }

    else if ([v41 newRadioCoverage])
    {
      v73 = 1;
      v56 = 1;
    }

    else if ([v41 radioTechnology] == 7 || objc_msgSend(v41, "radioTechnology") == 10)
    {
      v73 = 1;
      v56 = 1;
    }

    else
    {
      v33 = _BYLoggingFacility();
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v33;
        v29 = v32;
        sub_10006AA68(v31);
        _os_log_impl(&_mh_execute_header, v28, v29, "Cellular network is not qualified for restore", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      v73 = 0;
      v56 = 1;
    }

    objc_storeStrong(&v41, 0);
    goto LABEL_71;
  }

  v68 = _BYLoggingFacility();
  v67 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v68;
    v16 = v67;
    sub_10006AA68(v66);
    _os_log_impl(&_mh_execute_header, v15, v16, "Device does not support cellular restore", v66, 2u);
  }

  objc_storeStrong(&v68, 0);
  v73 = 0;
  return v73 & 1;
}

- (BOOL)currentNetworkRequiresDataUsageWarningForRestore
{
  v2 = [(BuddyNetworkProvider *)self pathEvaluator:a2];
  v3 = [(NWPathEvaluator *)v2 path];
  v4 = [v3 interface];
  v5 = [v4 type] == 2;

  return v5;
}

- (BOOL)isCellularDataPossible
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  v2 = [(BuddyNetworkProvider *)self telephonyClient];
  obj = 0;
  v3 = [(CoreTelephonyClient *)v2 getInternetDataStatusBasicSync:&obj];
  objc_storeStrong(location, obj);
  v14 = v3;

  if (location[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v8 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location[0];
      }

      else if (location[0])
      {
        v11 = [location[0] domain];
        v10 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [location[0] code]);
        v9 = v4;
        v8 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to get data subscription context: %{public}@", buf, 0xCu);
      if (v8)
      {
      }

      if (v10)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    v16 = 0;
  }

  else
  {
    v5 = [v14 roamAllowed];
    v6 = 0;
    if (v5)
    {
      v6 = [v14 cellularDataPossible];
    }

    v16 = v6 & 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16 & 1;
}

- (BOOL)deviceSupportsCellularRestore
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  v2 = [(BuddyNetworkProvider *)self telephonyClient];
  obj = 0;
  v3 = [(CoreTelephonyClient *)v2 getCurrentDataSubscriptionContextSync:&obj];
  objc_storeStrong(location, obj);
  v24 = v3;

  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v19 = 0;
      v17 = 0;
      if (_BYIsInternalInstall())
      {
        v4 = location[0];
      }

      else if (location[0])
      {
        v20 = [location[0] domain];
        v19 = 1;
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v20, [location[0] code]);
        v18 = v4;
        v17 = 1;
      }

      else
      {
        v4 = 0;
      }

      sub_100071CBC(buf, v4);
      _os_log_error_impl(&_mh_execute_header, oslog, v21, "Failed to get data subscription context: %{public}@", buf, 0xCu);
      if (v17)
      {
      }

      if (v19)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
    v27 = 0;
    v16 = 1;
  }

  else
  {
    v5 = [(BuddyNetworkProvider *)v26 telephonyClient];
    v14 = location[0];
    v6 = [(CoreTelephonyClient *)v5 getSupports5G:v24 error:&v14];
    objc_storeStrong(location, v14);
    v15 = v6;

    if (location[0])
    {
      v13 = _BYLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v11 = 0;
        v9 = 0;
        if (_BYIsInternalInstall())
        {
          v7 = location[0];
        }

        else if (location[0])
        {
          v12 = [location[0] domain];
          v11 = 1;
          v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
          v10 = v7;
          v9 = 1;
        }

        else
        {
          v7 = 0;
        }

        sub_100071CBC(v28, v7);
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to determine 5G support: %{public}@", v28, 0xCu);
        if (v9)
        {
        }

        if (v11)
        {
        }
      }

      objc_storeStrong(&v13, 0);
      v27 = 0;
      v16 = 1;
    }

    else
    {
      v27 = [v15 BOOLValue] & 1;
      v16 = 1;
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  return v27 & 1;
}

- (BOOL)inAppleStore
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(CWFInterface);
  [location[0] activate];
  v2 = [location[0] networkName];
  v3 = [v2 isEqualToString:@"Apple Store"];

  [location[0] invalidate];
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)assumeNetworkReachabilityOverWiFi
{
  v9 = self;
  v8[1] = a2;
  v2 = [(BuddyNetworkProvider *)self forceNetworkReachabilityQueue];
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1000C2154;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

@end