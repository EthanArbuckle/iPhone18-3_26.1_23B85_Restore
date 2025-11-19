@interface HandleManagedDefaultsLoggingChanged
@end

@implementation HandleManagedDefaultsLoggingChanged

uint64_t ___HandleManagedDefaultsLoggingChanged_block_invoke()
{
  v0 = IsAppleInternalBuild();
  result = LogControl();
  if (v0)
  {

    return LogControl();
  }

  return result;
}

@end