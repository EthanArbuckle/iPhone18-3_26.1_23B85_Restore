@interface BLSValidWhenBacklightInactiveAttribute
+ (id)cancelWhenBacklightInactivates;
+ (id)ignoreWhenBacklightInactivates;
@end

@implementation BLSValidWhenBacklightInactiveAttribute

+ (id)ignoreWhenBacklightInactivates
{
  v2 = objc_alloc_init(BLSIgnoreWhenBacklightInactivatesAttribute);

  return v2;
}

+ (id)cancelWhenBacklightInactivates
{
  v2 = objc_alloc_init(BLSCancelWhenBacklightInactivatesAttribute);

  return v2;
}

@end