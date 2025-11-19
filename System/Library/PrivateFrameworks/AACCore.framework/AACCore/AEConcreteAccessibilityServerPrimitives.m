@interface AEConcreteAccessibilityServerPrimitives
- (BOOL)isRestrictedForAAC;
@end

@implementation AEConcreteAccessibilityServerPrimitives

- (BOOL)isRestrictedForAAC
{
  v2 = [MEMORY[0x277CE7D30] server];
  v3 = [v2 isRestrictedForAAC];

  return v3;
}

@end