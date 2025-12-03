@interface NSString(AXBridgePriv)
+ (void)_accessibilitySetLastDrawnString:()AXBridgePriv;
@end

@implementation NSString(AXBridgePriv)

+ (void)_accessibilitySetLastDrawnString:()AXBridgePriv
{
  value = a3;
  _AXLogWithFacility();
  objc_setAssociatedObject(self, &kAXBridgeLastDrawnStringStorage, value, 0x303);
}

@end