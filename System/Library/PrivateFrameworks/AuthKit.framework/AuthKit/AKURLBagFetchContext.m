@interface AKURLBagFetchContext
+ (id)contextWithAltDSID:(id)a3;
@end

@implementation AKURLBagFetchContext

+ (id)contextWithAltDSID:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_alloc_init(objc_opt_class());
  [v5 setAltDSID:location[0]];
  v4 = _objc_retain(v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end