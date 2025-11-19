@interface AKMDMConfiguration
+ (id)getOrganizationToken;
@end

@implementation AKMDMConfiguration

+ (id)getOrganizationToken
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  v6 = 0;
  v4 = [MDMConfiguration getOrgTokenForMAID:&v6];
  objc_storeStrong(location, v6);
  v7 = v4;
  if (location[0])
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v10, location[0]);
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error attempting to fetch org token: %@", v10, 0xCu);
    }

    objc_storeStrong(&v5, 0);
  }

  v9 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

@end