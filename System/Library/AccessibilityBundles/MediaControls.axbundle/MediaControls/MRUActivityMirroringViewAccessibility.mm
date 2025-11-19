@interface MRUActivityMirroringViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUActivityMirroringViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUActivityMirroringView" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUActivityMirroringView" hasInstanceMethod:@"trailingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUActivityMirroringView" hasInstanceMethod:@"deviceImageView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = MRUActivityMirroringViewAccessibility;
  [(MRUActivityMirroringViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(MRUActivityMirroringViewAccessibility *)self safeValueForKey:@"leadingView"];
  v4 = accessibilityLocalizedString(@"airplay.video");
  [v3 setAccessibilityLabel:v4];

  v5 = [(MRUActivityMirroringViewAccessibility *)self safeValueForKey:@"trailingView"];
  v6 = [(MRUActivityMirroringViewAccessibility *)self safeValueForKey:@"deviceImageView"];
  v7 = [v6 accessibilityLabel];
  [v5 setAccessibilityLabel:v7];
}

@end