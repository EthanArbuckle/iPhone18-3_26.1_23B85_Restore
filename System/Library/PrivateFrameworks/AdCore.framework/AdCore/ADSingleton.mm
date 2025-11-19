@interface ADSingleton
+ (id)sharedInstance;
@end

@implementation ADSingleton

+ (id)sharedInstance
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 raise:@"Call to unimplemented sharedInstance" format:{@"%@ does not implement sharedInstance. Add the CREATE_SHARED_INSTANCE macro to the @implementation", v4}];

  return 0;
}

@end