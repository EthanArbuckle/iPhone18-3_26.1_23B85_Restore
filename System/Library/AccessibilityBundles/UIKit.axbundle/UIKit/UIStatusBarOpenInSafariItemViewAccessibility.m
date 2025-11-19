@interface UIStatusBarOpenInSafariItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarOpenInSafariItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIStatusBarOpenInSafariItemView" hasInstanceMethod:@"destinationText" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityHint
{
  v3 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityUIKitLocalizedString();
  v4 = [(UIStatusBarOpenInSafariItemViewAccessibility *)self safeValueForKey:@"destinationText"];
  v6 = [v3 stringWithFormat:v5, v4];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarOpenInSafariItemViewAccessibility;
  return [(UIStatusBarOpenInSafariItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F70];
}

@end