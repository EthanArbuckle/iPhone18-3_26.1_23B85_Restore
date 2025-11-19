@interface UIKit_PKSubsystem
+ (id)initForPlugInKit;
+ (id)sharedInstance;
- (void)beginUsing:(id)a3 withBundle:(id)a4;
- (void)dealloc;
@end

@implementation UIKit_PKSubsystem

+ (id)initForPlugInKit
{
  result = [a1 sharedInstance];
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
  v3[4] = a1;
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

- (void)beginUsing:(id)a3 withBundle:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  v6 = [NSExtension globalStateQueueForExtension:0, a4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIKit_PKSubsystem_beginUsing_withBundle___block_invoke;
  block[3] = &unk_1E69F2080;
  block[4] = self;
  block[5] = a3;
  dispatch_async(v6, block);
}

@end