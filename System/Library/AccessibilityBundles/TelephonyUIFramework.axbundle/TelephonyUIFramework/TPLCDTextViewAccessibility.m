@interface TPLCDTextViewAccessibility
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation TPLCDTextViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(TPLCDTextViewAccessibility *)self accessibilityLabel];
  v3 = [v2 length] != 0;

  return v3;
}

- (CGRect)accessibilityFrame
{
  v3 = [(TPLCDTextViewAccessibility *)self safeValueForKey:@"textRect"];
  [v3 rectValue];
  v5 = v4;
  v7 = v6;

  v8 = [(TPLCDTextViewAccessibility *)self safeValueForKey:@"sizeToFit"];
  [v8 sizeValue];
  v10 = v9;
  v12 = v11;

  v13.n128_u64[0] = v5;
  v14.n128_u64[0] = v7;
  v15.n128_u64[0] = v10;
  v16.n128_u64[0] = v12;

  MEMORY[0x2A1C69F48](self, v13, v14, v15, v16);
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = TPLCDTextViewAccessibility;
  v3 = [(TPLCDTextViewAccessibility *)&v6 accessibilityLabel];
  if (![v3 length])
  {
    v4 = [(TPLCDTextViewAccessibility *)self safeValueForKey:@"text"];

    v3 = v4;
  }

  return v3;
}

@end