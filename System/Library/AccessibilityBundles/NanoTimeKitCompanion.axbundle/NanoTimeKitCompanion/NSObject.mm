@interface NSObject
- (id)_accessibilityWorldClockStringFromLabel:(id)label;
@end

@implementation NSObject

- (id)_accessibilityWorldClockStringFromLabel:(id)label
{
  labelCopy = label;
  _accessibilityWorldClockCityName = [self _accessibilityWorldClockCityName];
  v6 = [_accessibilityWorldClockCityName length];
  v7 = [AXAttributedString alloc];
  if (v6)
  {
    _accessibilityWorldClockCityName2 = [self _accessibilityWorldClockCityName];
    v9 = [v7 initWithString:_accessibilityWorldClockCityName2];

    v10 = [AXAttributedString alloc];
    accessibilityLabel = [labelCopy accessibilityLabel];
    v12 = [v10 initWithString:accessibilityLabel];

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