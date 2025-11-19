@interface _UIStatusBarWifiSignalViewAccessibility
- (id)_accessibilitySignalStrengthText;
- (id)accessibilityValue;
@end

@implementation _UIStatusBarWifiSignalViewAccessibility

- (id)_accessibilitySignalStrengthText
{
  v4 = a1;
  if (a1)
  {
    v3.receiver = v4;
    v3.super_class = _UIStatusBarWifiSignalViewAccessibility;
    v5 = objc_msgSendSuper2(&v3, sel_accessibilityValue);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (id)accessibilityValue
{
  v6[2] = self;
  v6[1] = a2;
  v5.receiver = self;
  v5.super_class = _UIStatusBarWifiSignalViewAccessibility;
  v6[0] = [(_UIStatusBarWifiSignalViewAccessibility *)&v5 accessibilityValue];
  v4 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithString:@"SSID"];
  [v4 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD998]];
  v3 = __UIAXStringForVariables();
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

@end