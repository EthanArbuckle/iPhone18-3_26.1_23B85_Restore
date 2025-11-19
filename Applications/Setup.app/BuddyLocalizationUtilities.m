@interface BuddyLocalizationUtilities
+ (id)dispositionSpecificLocalizedStringKeyForKey:(id)a3 disposition:(unint64_t)a4;
+ (id)modelSpecificLocalizedStringKeyForKey:(id)a3 deviceClass:(id)a4;
+ (id)siblingDeviceSpecificLocalizedStringKeyForKey:(id)a3 deviceClass:(id)a4;
+ (id)siblingPairDeviceSpecificLocalizedStringKeyForKey:(id)a3 deviceClass:(id)a4;
@end

@implementation BuddyLocalizationUtilities

+ (id)modelSpecificLocalizedStringKeyForKey:(id)a3 deviceClass:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v5 = location[0];
  v6 = [v9 uppercaseString];
  v7 = [NSString stringWithFormat:@"%@_%@", v5, v6];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)siblingDeviceSpecificLocalizedStringKeyForKey:(id)a3 deviceClass:(id)a4
{
  v11 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = MGCopyAnswer();
  if (([v8 isEqualToString:v9] & 1) == 0 && objc_msgSend(v9, "length"))
  {
    v12 = [v11 modelSpecificLocalizedStringKeyForKey:location[0] deviceClass:v9];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%@_OTHER", location[0]];
    v12 = [UIDevice modelSpecificLocalizedStringKeyForKey:v7];
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

+ (id)siblingPairDeviceSpecificLocalizedStringKeyForKey:(id)a3 deviceClass:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = MGCopyAnswer();
  if (([v11 isEqualToString:v12] & 1) == 0 && objc_msgSend(v12, "length"))
  {
    v5 = location[0];
    v6 = [v11 uppercaseString];
    v7 = [v12 uppercaseString];
    v14 = [NSString stringWithFormat:@"%@_%@_%@", v5, v6, v7];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@_OTHER", location[0]];
    v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:v10];
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v8 = v14;

  return v8;
}

+ (id)dispositionSpecificLocalizedStringKeyForKey:(id)a3 disposition:(unint64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = BYStringForFlowItemDispositions();
  v5 = 0;
  if (a4)
  {
    v5 = 0;
    if ((v15 & 0x3C) == v15)
    {
      v5 = [v14 containsString:{@", "}] ^ 1;
    }
  }

  v13 = v5 & 1;
  if ((v5 & 1) == 0)
  {
    oslog = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v10 = BYStringForFlowItemDispositions();
      sub_10006AE18(buf, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, v11, "Disposition specific localized string key not supported for '%@'", buf, 0xCu);

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  v6 = [v14 uppercaseString];
  v9 = [v6 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v7 = [NSString stringWithFormat:@"%@_%@", location[0], v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end