@interface AUAudioUnitService_Subsystem
+ (id)initForPlugInKit;
@end

@implementation AUAudioUnitService_Subsystem

+ (id)initForPlugInKit
{
  [MEMORY[0x1E696B0F8] _startListening];
  v2 = objc_opt_new();

  return v2;
}

@end