@interface AXDataActivation
+ (void)accessibilityInitializeBundle;
@end

@implementation AXDataActivation

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    _Failover = [objc_allocWithZone(AXDataActivation) init];

    MEMORY[0x2A1C71028]();
  }
}

@end