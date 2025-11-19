@interface INService_Subsystem
+ (id)initForPlugInKit;
@end

@implementation INService_Subsystem

+ (id)initForPlugInKit
{
  [MEMORY[0x1E696B0F8] _startListening];
  v3 = objc_alloc_init(a1);

  return v3;
}

@end