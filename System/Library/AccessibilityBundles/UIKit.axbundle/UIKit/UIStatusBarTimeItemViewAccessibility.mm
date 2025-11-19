@interface UIStatusBarTimeItemViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarTimeItemViewAccessibility

- (BOOL)isAccessibilityElement
{
  v5 = [(UIStatusBarTimeItemViewAccessibility *)self safeValueForKey:@"_dateTimeString"];
  v4 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v3 = [v5 stringByTrimmingCharactersInSet:?];
  v6 = [v3 length];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  return v6 != 0;
}

- (id)accessibilityLabel
{
  v7[2] = self;
  v7[1] = a2;
  v4 = MEMORY[0x29EDBD7E8];
  v5 = [(UIStatusBarTimeItemViewAccessibility *)self safeValueForKey:@"_dateTimeString"];
  v7[0] = [v4 axAttributedStringWithString:?];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  [v7[0] setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD888], v2}];
  v6 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarTimeItemViewAccessibility;
  return [(UIStatusBarTimeItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC7FF0];
}

@end