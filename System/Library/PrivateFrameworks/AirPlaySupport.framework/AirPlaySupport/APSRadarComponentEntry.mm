@interface APSRadarComponentEntry
+ (id)componentEntryWithName:(id)a3 version:(id)a4 ID:(id)a5;
@end

@implementation APSRadarComponentEntry

+ (id)componentEntryWithName:(id)a3 version:(id)a4 ID:(id)a5
{
  v8 = objc_alloc_init(APSRadarComponentEntry);
  if (v8)
  {
    v8->componentName = [a3 copy];
    v8->componentVersion = [a4 copy];
    v8->componentID = [a5 copy];
  }

  return v8;
}

@end