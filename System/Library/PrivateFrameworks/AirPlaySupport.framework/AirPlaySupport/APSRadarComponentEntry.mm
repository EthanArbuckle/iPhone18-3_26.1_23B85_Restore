@interface APSRadarComponentEntry
+ (id)componentEntryWithName:(id)name version:(id)version ID:(id)d;
@end

@implementation APSRadarComponentEntry

+ (id)componentEntryWithName:(id)name version:(id)version ID:(id)d
{
  v8 = objc_alloc_init(APSRadarComponentEntry);
  if (v8)
  {
    v8->componentName = [name copy];
    v8->componentVersion = [version copy];
    v8->componentID = [d copy];
  }

  return v8;
}

@end