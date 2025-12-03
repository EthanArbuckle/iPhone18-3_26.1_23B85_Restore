@interface UIKit_PKSubsystem
+ (id)initForPlugInKit;
+ (id)sharedInstance;
- (void)beginUsing:(id)using withBundle:(id)bundle;
- (void)dealloc;
@end

@implementation UIKit_PKSubsystem

+ (id)initForPlugInKit
{
  result = [self sharedInstance];
  *(result + 9) = 1;
  return result;
}

+ (id)sharedInstance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__UIKit_PKSubsystem_sharedInstance__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = self;
  if (qword_1ED4402B0 != -1)
  {
    dispatch_once(&qword_1ED4402B0, v3);
  }

  return _MergedGlobals_153;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = UIKit_PKSubsystem;
  [(UIKit_PKSubsystem *)&v3 dealloc];
}

- (void)beginUsing:(id)using withBundle:(id)bundle
{
  block[6] = *MEMORY[0x1E69E9840];
  bundle = [NSExtension globalStateQueueForExtension:0, bundle];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIKit_PKSubsystem_beginUsing_withBundle___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = using;
  dispatch_async(bundle, block);
}

@end