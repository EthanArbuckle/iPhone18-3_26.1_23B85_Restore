@interface AEConcreteAccessibilityServerPrimitives
- (BOOL)isRestrictedForAAC;
@end

@implementation AEConcreteAccessibilityServerPrimitives

- (BOOL)isRestrictedForAAC
{
  server = [MEMORY[0x277CE7D30] server];
  isRestrictedForAAC = [server isRestrictedForAAC];

  return isRestrictedForAAC;
}

@end