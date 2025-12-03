@interface ISRegion
+ (id)regionWithName:(id)name code:(id)code;
@end

@implementation ISRegion

+ (id)regionWithName:(id)name code:(id)code
{
  nameCopy = name;
  codeCopy = code;
  v7 = objc_alloc_init(ISRegion);
  v8 = v7;
  if (v7)
  {
    [(ISRegion *)v7 setRegionName:nameCopy];
    [(ISRegion *)v8 setRegionCode:codeCopy];
  }

  return v8;
}

@end