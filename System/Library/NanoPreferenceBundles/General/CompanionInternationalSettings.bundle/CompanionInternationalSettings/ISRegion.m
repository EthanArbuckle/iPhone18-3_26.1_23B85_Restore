@interface ISRegion
+ (id)regionWithName:(id)a3 code:(id)a4;
@end

@implementation ISRegion

+ (id)regionWithName:(id)a3 code:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(ISRegion);
  v8 = v7;
  if (v7)
  {
    [(ISRegion *)v7 setRegionName:v5];
    [(ISRegion *)v8 setRegionCode:v6];
  }

  return v8;
}

@end