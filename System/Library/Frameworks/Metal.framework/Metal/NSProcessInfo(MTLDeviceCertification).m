@interface NSProcessInfo(MTLDeviceCertification)
- (BOOL)hasPerformanceProfile:()MTLDeviceCertification;
- (uint64_t)isDeviceCertifiedFor:()MTLDeviceCertification;
@end

@implementation NSProcessInfo(MTLDeviceCertification)

- (uint64_t)isDeviceCertifiedFor:()MTLDeviceCertification
{
  if (a3 <= 1001)
  {
    if (a3 == 1)
    {
      return MEMORY[0x1EEE62800](@"iphone-performance-gaming-tier");
    }

    if (a3 == 1001)
    {
      return MEMORY[0x1EEE62800](@"UnifiedGamingPerfLeveliPadTier1");
    }
  }

  else
  {
    switch(a3)
    {
      case 1002:
        return MEMORY[0x1EEE62800](@"UnifiedGamingPerfLeveliPadTier2");
      case 2002:
        return MEMORY[0x1EEE62800](@"UnifiedGamingPerfLevelMacTier2");
      case 2001:
        return MEMORY[0x1EEE62800](@"UnifiedGamingPerfLevelMacTier1");
    }
  }

  return 0;
}

- (BOOL)hasPerformanceProfile:()MTLDeviceCertification
{
  if (hasPerformanceProfile__onceToken != -1)
  {
    [NSProcessInfo(MTLDeviceCertification) hasPerformanceProfile:];
  }

  notify_get_state(_semNotifyToken, &_semState);
  return _semState == a3;
}

@end