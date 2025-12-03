@interface AKURLBagFetchContext
+ (id)contextWithAltDSID:(id)d;
@end

@implementation AKURLBagFetchContext

+ (id)contextWithAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = objc_alloc_init(objc_opt_class());
  [v5 setAltDSID:location[0]];
  v4 = _objc_retain(v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end