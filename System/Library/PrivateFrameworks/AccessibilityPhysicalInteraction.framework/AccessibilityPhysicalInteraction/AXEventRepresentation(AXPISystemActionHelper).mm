@interface AXEventRepresentation(AXPISystemActionHelper)
- (uint64_t)postHIDEventDirectly;
- (void)setPostHIDEventDirectly:()AXPISystemActionHelper;
@end

@implementation AXEventRepresentation(AXPISystemActionHelper)

- (void)setPostHIDEventDirectly:()AXPISystemActionHelper
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, &PostHIDDirectly, v2, 1);
}

- (uint64_t)postHIDEventDirectly
{
  v1 = objc_getAssociatedObject(self, &PostHIDDirectly);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end