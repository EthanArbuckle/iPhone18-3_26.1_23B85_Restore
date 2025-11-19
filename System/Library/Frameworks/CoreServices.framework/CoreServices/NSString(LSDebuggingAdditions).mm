@interface NSString(LSDebuggingAdditions)
+ (__CFString)NSStringFromLSInstallPhase:()LSDebuggingAdditions;
+ (__CFString)NSStringFromLSInstallState:()LSDebuggingAdditions;
+ (__CFString)NSStringFromLSInstallType:()LSDebuggingAdditions;
@end

@implementation NSString(LSDebuggingAdditions)

+ (__CFString)NSStringFromLSInstallPhase:()LSDebuggingAdditions
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(LSInstallPhase)%llu", a3];
  }

  else
  {
    v4 = off_1E6A1CEB8[a3];
  }

  return v4;
}

+ (__CFString)NSStringFromLSInstallState:()LSDebuggingAdditions
{
  if (a3 >= 6)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(LSInstallState)%llu", a3];
  }

  else
  {
    v4 = off_1E6A1CEE0[a3];
  }

  return v4;
}

+ (__CFString)NSStringFromLSInstallType:()LSDebuggingAdditions
{
  if (a3 >= 0xB)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(LSInstallType)%llu", a3];
  }

  else
  {
    v4 = off_1E6A1CF10[a3];
  }

  return v4;
}

@end