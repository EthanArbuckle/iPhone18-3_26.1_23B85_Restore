@interface EXUIKit_Subsystem
+ (id)initForPlugInKit;
+ (id)sharedInstance;
- (void)beginUsing:(id)using withBundle:(id)bundle;
@end

@implementation EXUIKit_Subsystem

- (void)beginUsing:(id)using withBundle:(id)bundle
{
  usingCopy = using;
  v6 = [MEMORY[0x1E696ABD0] globalStateQueueForExtension:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__EXUIKit_Subsystem_beginUsing_withBundle___block_invoke;
  v8[3] = &unk_1E6E4DB10;
  v8[4] = self;
  v9 = usingCopy;
  v7 = usingCopy;
  dispatch_async(v6, v8);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__EXUIKit_Subsystem_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_0 != -1)
  {
    dispatch_once(&sharedInstance_once_0, block);
  }

  v2 = sharedInstance___instance;

  return v2;
}

+ (id)initForPlugInKit
{
  result = [self sharedInstance];
  *(result + 9) = 1;
  return result;
}

@end