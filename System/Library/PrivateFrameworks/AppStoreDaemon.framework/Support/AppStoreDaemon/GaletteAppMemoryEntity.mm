@interface GaletteAppMemoryEntity
+ (id)appWithBundleID:(id)d mode:(int64_t)mode name:(id)name;
+ (id)defaultProperties;
@end

@implementation GaletteAppMemoryEntity

+ (id)appWithBundleID:(id)d mode:(int64_t)mode name:(id)name
{
  nameCopy = name;
  dCopy = d;
  v9 = [GaletteAppMemoryEntity alloc];
  v15[0] = dCopy;
  v14[0] = @"bundle_id";
  v14[1] = @"mode";
  v10 = [NSNumber numberWithInteger:mode];
  v14[2] = @"name";
  v15[1] = v10;
  v15[2] = nameCopy;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = [(SQLiteMemoryEntity *)v9 initWithPropertyValues:v11];

  return v12;
}

+ (id)defaultProperties
{
  v4[0] = @"bundle_id";
  v4[1] = @"mode";
  v4[2] = @"name";
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

@end