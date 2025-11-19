@interface AKStoreUtils
+ (id)hash:(id)a3;
@end

@implementation AKStoreUtils

+ (id)hash:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = location[0];
  v3 = location[0];
  v13 = [v8 UTF8String];
  if (v13)
  {
    v12 = strlen(v13);
    CC_SHA256(v13, v12, md);
    v11 = objc_alloc_init(NSMutableString);
    for (i = 0; i < 32; ++i)
    {
      [v11 appendFormat:@"%02x", md[i]];
    }

    v4 = [v11 copy];
    v5 = location[0];
    location[0] = v4;
    _objc_release(v5);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v15, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Cannot convert %@ to a non-nil string", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v7 = _objc_retain(location[0]);
  objc_storeStrong(location, 0);

  return v7;
}

@end