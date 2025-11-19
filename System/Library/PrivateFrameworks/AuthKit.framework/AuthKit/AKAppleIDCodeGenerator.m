@interface AKAppleIDCodeGenerator
+ (id)generateLoginCode:(id *)a3;
@end

@implementation AKAppleIDCodeGenerator

+ (id)generateLoginCode:(id *)a3
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  v17 = +[AKActiveAnisetteDSIDFetcher activeAnisettDSIDFromLastKnownIDMSEnvironment];
  sub_100271CF4(v17, &v18);
  v16 = v3;
  if (v3)
  {
    location = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v10 = [NSNumber numberWithInt:v16];
      sub_1000194D4(v23, v10);
      _os_log_error_impl(&_mh_execute_header, location, v14, "ADIGenerateOTPCode failed with error code %@", v23, 0xCu);
      _objc_release(v10);
    }

    objc_storeStrong(&location, 0);
    if (v19)
    {
      v9 = [NSError ak_wrappedAnisetteError:v16];
      v4 = v9;
      *v19 = v9;
    }

    v22 = 0;
  }

  else
  {
    oslog = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v7 = oslog;
      v8 = v12;
      sub_10001CEEC(v11);
      _os_log_debug_impl(&_mh_execute_header, v7, v8, "ADIGenerateOTPCode succeeded!", v11, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v22 = [NSNumber numberWithUnsignedInt:v18];
  }

  v5 = v22;

  return v5;
}

@end