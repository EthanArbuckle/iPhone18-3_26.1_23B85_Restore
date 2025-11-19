@interface AKRegulatoryEligibilityHandler
+ (id)regulatoryEligibilities;
+ (void)reportBirthdayToOSElligibility;
+ (void)reportRegulatoryEligibilityStatusToIdMS;
@end

@implementation AKRegulatoryEligibilityHandler

+ (id)regulatoryEligibilities
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  all_domain_answers = os_eligibility_get_all_domain_answers();
  if (all_domain_answers)
  {
    location = _AKLogSystem();
    v7 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      sub_10014E8CC(v14, all_domain_answers);
      _os_log_error_impl(&_mh_execute_header, location, v7, "Eligibilities check failed with error code: %{private}d", v14, 8u);
    }

    objc_storeStrong(&location, 0);
    v13 = 0;
    v6 = 1;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v4 = [NSString ak_base64EncodedJsonFromObject:v5];
    v13 = _objc_retain(v4);
    v6 = 1;
    objc_storeStrong(&v4, 0);
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong((&all_domain_answers + 4), 0);
  v2 = v13;

  return v2;
}

+ (void)reportRegulatoryEligibilityStatusToIdMS
{
  v15[2] = a1;
  v15[1] = a2;
  v15[0] = +[AKAccountManager sharedInstance];
  v14 = [v15[0] primaryAuthKitAccount];
  if (v14)
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v9;
      v4 = v8;
      sub_10001CEEC(v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "Triggering liveness to report latest eligibility", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v2 = +[AKAppleIDCheckInHelperService sharedService];
    [v2 performCheckInForAccount:v14 event:AKPostDataEventLiveness reason:8 completion:&stru_1003249A8];
    _objc_release(v2);
    v10 = 0;
  }

  else
  {
    location = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v12;
      sub_10001CEEC(v11);
      _os_log_impl(&_mh_execute_header, log, type, "Skipping regulatory eligibility check since there is no primary AuthKit account", v11, 2u);
    }

    objc_storeStrong(&location, 0);
    v10 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
}

+ (void)reportBirthdayToOSElligibility
{
  v20[2] = a1;
  v20[1] = a2;
  v20[0] = +[AKAccountManager sharedInstance];
  v19 = [v20[0] primaryAuthKitAccount];
  v18 = [v20[0] altDSIDforPrimaryiCloudAccount];
  if (v19)
  {
    v13 = objc_alloc_init(AKBirthDayKeychain);
    v12 = 0;
    obj = 0;
    v3 = [v13 fetchBirthDayForAltDSID:v18 error:&obj];
    objc_storeStrong(&v12, obj);
    v11 = v3;
    [v3 timeIntervalSince1970];
    v4 = xpc_date_create((v2 * 1000000000.0));
    v5 = os_eligibility_set_input();
    _objc_release(v4);
    v9 = v5;
    if (v5)
    {
      oslog = _objc_retain(&_os_log_default);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10006A654(v21, v9);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to set birthday eligibility input: %d", v21, 8u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    v14 = 0;
  }

  else
  {
    location = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v16;
      sub_10001CEEC(v15);
      _os_log_impl(&_mh_execute_header, log, type, "Skipping regulatory input needed update since there is no primary AuthKit account", v15, 2u);
    }

    objc_storeStrong(&location, 0);
    v14 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
}

@end