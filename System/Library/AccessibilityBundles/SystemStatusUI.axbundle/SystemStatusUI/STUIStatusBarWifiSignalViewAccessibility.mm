@interface STUIStatusBarWifiSignalViewAccessibility
- (id)_accessibilitySignalStrengthText;
- (id)accessibilityValue;
@end

@implementation STUIStatusBarWifiSignalViewAccessibility

- (id)accessibilityValue
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarWifiSignalViewAccessibility;
  accessibilityValue = [(STUIStatusBarWifiSignalViewAccessibility *)&v6 accessibilityValue];
  v3 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:@"SSID"];
  [v3 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD998]];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)_accessibilitySignalStrengthText
{
  if (self)
  {
    v3.receiver = self;
    v3.super_class = STUIStatusBarWifiSignalViewAccessibility;
    self = objc_msgSendSuper2(&v3, sel_accessibilityValue);
    v1 = vars8;
  }

  return self;
}

@end