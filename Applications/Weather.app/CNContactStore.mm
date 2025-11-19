@interface CNContactStore
- (id)w_meContact;
@end

@implementation CNContactStore

- (id)w_meContact
{
  v2 = objc_alloc_init(CNContactStore);
  v9 = 0;
  v3 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:&__NSArray0__struct error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = os_log_create("com.apple.weather", "LocationsOfInterest");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100A1675C(v5, v7);
    }
  }

  return v3;
}

@end