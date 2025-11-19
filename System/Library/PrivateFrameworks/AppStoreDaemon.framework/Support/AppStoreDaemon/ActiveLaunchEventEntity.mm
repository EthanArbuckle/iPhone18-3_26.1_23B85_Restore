@interface ActiveLaunchEventEntity
+ (id)defaultProperties;
@end

@implementation ActiveLaunchEventEntity

+ (id)defaultProperties
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ActiveLaunchEventEntity;
  v2 = objc_msgSendSuper2(&v5, "defaultProperties");
  v3 = [v2 arrayByAddingObject:@"payload"];

  return v3;
}

@end