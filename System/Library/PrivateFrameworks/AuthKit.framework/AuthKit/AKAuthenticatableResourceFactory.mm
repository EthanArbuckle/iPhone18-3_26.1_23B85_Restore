@interface AKAuthenticatableResourceFactory
+ (id)authenticatableResourceForBundleID:(id)d;
+ (id)resourceDictionary;
+ (int64_t)resourceTypeForBundleID:(id)d;
@end

@implementation AKAuthenticatableResourceFactory

+ (id)resourceDictionary
{
  v5 = &unk_1003744F8;
  location = 0;
  objc_storeStrong(&location, &stru_10031F098);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003744F0;

  return v2;
}

+ (int64_t)resourceTypeForBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  resourceDictionary = [selfCopy resourceDictionary];
  v5 = [resourceDictionary objectForKey:location[0]];
  _objc_release(resourceDictionary);
  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return integerValue;
}

+ (id)authenticatableResourceForBundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = [selfCopy resourceTypeForBundleID:location[0]];
  if (v8)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v12, location[0]);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Created auth-able resource for client: %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v3 = [AKAuthenticatableResource alloc];
    v11 = [v3 initWithResourceType:v8 resourceName:0];
    v7 = 1;
  }

  else
  {
    v11 = 0;
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

@end