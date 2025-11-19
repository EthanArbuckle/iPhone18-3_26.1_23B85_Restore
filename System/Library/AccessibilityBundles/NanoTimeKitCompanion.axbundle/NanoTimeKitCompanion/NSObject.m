@interface NSObject
- (id)_accessibilityWorldClockStringFromLabel:(id)a3;
@end

@implementation NSObject

- (id)_accessibilityWorldClockStringFromLabel:(id)a3
{
  v4 = a3;
  v5 = [self _accessibilityWorldClockCityName];
  v6 = [v5 length];
  v7 = [AXAttributedString alloc];
  if (v6)
  {
    v8 = [self _accessibilityWorldClockCityName];
    v9 = [v7 initWithString:v8];

    v10 = [AXAttributedString alloc];
    v11 = [v4 accessibilityLabel];
    v12 = [v10 initWithString:v11];

    [v12 setAttribute:&__kCFBooleanTrue forKey:UIAccessibilityTokenClockTime];
    [v9 appendAXAttributedString:v12];
  }

  else
  {
    v12 = AXNTKLocalizedStringForKey();
    v9 = [v7 initWithString:v12];
  }

  return v9;
}

@end