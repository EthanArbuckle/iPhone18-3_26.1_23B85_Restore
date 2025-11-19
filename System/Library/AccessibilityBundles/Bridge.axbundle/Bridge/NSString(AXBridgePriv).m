@interface NSString(AXBridgePriv)
+ (void)_accessibilitySetLastDrawnString:()AXBridgePriv;
@end

@implementation NSString(AXBridgePriv)

+ (void)_accessibilitySetLastDrawnString:()AXBridgePriv
{
  value = a3;
  _AXLogWithFacility();
  objc_setAssociatedObject(a1, &kAXBridgeLastDrawnStringStorage, value, 0x303);
}

@end