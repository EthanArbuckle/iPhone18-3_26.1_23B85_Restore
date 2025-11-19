@interface ATXDeviceClass
+ (BOOL)isConstrainedForActions;
@end

@implementation ATXDeviceClass

+ (BOOL)isConstrainedForActions
{
  if (isConstrainedForActions_onceToken != -1)
  {
    +[ATXDeviceClass isConstrainedForActions];
  }

  return isConstrainedForActions_constrained;
}

void __41__ATXDeviceClass_isConstrainedForActions__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 physicalMemory];

  if (v1 <= 0x64000000)
  {
    isConstrainedForActions_constrained = 1;
  }
}

@end