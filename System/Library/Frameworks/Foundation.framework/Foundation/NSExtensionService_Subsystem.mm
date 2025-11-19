@interface NSExtensionService_Subsystem
+ (id)sharedInstance;
@end

@implementation NSExtensionService_Subsystem

+ (id)sharedInstance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__NSExtensionService_Subsystem_sharedInstance__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (qword_1ED4402C0 != -1)
  {
    dispatch_once(&qword_1ED4402C0, v3);
  }

  return qword_1ED4402B8;
}

@end