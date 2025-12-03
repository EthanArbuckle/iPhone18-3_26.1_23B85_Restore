@interface AKCommonResponseCodeHandler
+ (void)handleResponseCode:(int64_t)code altDSID:(id)d;
@end

@implementation AKCommonResponseCodeHandler

+ (void)handleResponseCode:(int64_t)code altDSID:(id)d
{
  selfCopy = self;
  v22 = a2;
  codeCopy = code;
  location = 0;
  objc_storeStrong(&location, d);
  if (codeCopy == 437)
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      type = v18;
      sub_10001CEEC(v17);
      _os_log_impl(&_mh_execute_header, log, type, "Received status code to sign out. Checking for altDSID.", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    if (location)
    {
      v16 = _AKLogSystem();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v16;
        v7 = v15;
        sub_10001CEEC(v14);
        _os_log_impl(&_mh_execute_header, v6, v7, "Marking account for sign out.", v14, 2u);
      }

      objc_storeStrong(&v16, 0);
      v13 = +[AKSignOutManager sharedManager];
      [v13 markAccountForSignOutForAltDSID:location];
      objc_storeStrong(&v13, 0);
    }

    else
    {
      v12 = _AKLogSystem();
      v11 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v4 = v12;
        v5 = v11;
        sub_10001CEEC(v10);
        _os_log_error_impl(&_mh_execute_header, v4, v5, "No altDSID given, cannot proceed to sign out.", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
    }
  }

  objc_storeStrong(&location, 0);
}

@end