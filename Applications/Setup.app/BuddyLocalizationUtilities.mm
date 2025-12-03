@interface BuddyLocalizationUtilities
+ (id)dispositionSpecificLocalizedStringKeyForKey:(id)key disposition:(unint64_t)disposition;
+ (id)modelSpecificLocalizedStringKeyForKey:(id)key deviceClass:(id)class;
+ (id)siblingDeviceSpecificLocalizedStringKeyForKey:(id)key deviceClass:(id)class;
+ (id)siblingPairDeviceSpecificLocalizedStringKeyForKey:(id)key deviceClass:(id)class;
@end

@implementation BuddyLocalizationUtilities

+ (id)modelSpecificLocalizedStringKeyForKey:(id)key deviceClass:(id)class
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v9 = 0;
  objc_storeStrong(&v9, class);
  v5 = location[0];
  uppercaseString = [v9 uppercaseString];
  v7 = [NSString stringWithFormat:@"%@_%@", v5, uppercaseString];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

+ (id)siblingDeviceSpecificLocalizedStringKeyForKey:(id)key deviceClass:(id)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v9 = 0;
  objc_storeStrong(&v9, class);
  v8 = MGCopyAnswer();
  if (([v8 isEqualToString:v9] & 1) == 0 && objc_msgSend(v9, "length"))
  {
    v12 = [selfCopy modelSpecificLocalizedStringKeyForKey:location[0] deviceClass:v9];
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

+ (id)siblingPairDeviceSpecificLocalizedStringKeyForKey:(id)key deviceClass:(id)class
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v12 = 0;
  objc_storeStrong(&v12, class);
  v11 = MGCopyAnswer();
  if (([v11 isEqualToString:v12] & 1) == 0 && objc_msgSend(v12, "length"))
  {
    v5 = location[0];
    uppercaseString = [v11 uppercaseString];
    uppercaseString2 = [v12 uppercaseString];
    v14 = [NSString stringWithFormat:@"%@_%@_%@", v5, uppercaseString, uppercaseString2];
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

+ (id)dispositionSpecificLocalizedStringKeyForKey:(id)key disposition:(unint64_t)disposition
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  dispositionCopy = disposition;
  v14 = BYStringForFlowItemDispositions();
  v5 = 0;
  if (disposition)
  {
    v5 = 0;
    if ((dispositionCopy & 0x3C) == dispositionCopy)
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

  uppercaseString = [v14 uppercaseString];
  v9 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v7 = [NSString stringWithFormat:@"%@_%@", location[0], v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end