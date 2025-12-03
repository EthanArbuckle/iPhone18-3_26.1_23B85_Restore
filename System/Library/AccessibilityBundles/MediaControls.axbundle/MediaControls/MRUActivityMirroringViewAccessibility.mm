@interface MRUActivityMirroringViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUActivityMirroringViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUActivityMirroringView" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUActivityMirroringView" hasInstanceMethod:@"trailingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUActivityMirroringView" hasInstanceMethod:@"deviceImageView" withFullSignature:{"@", 0}];
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
  accessibilityLabel = [v6 accessibilityLabel];
  [v5 setAccessibilityLabel:accessibilityLabel];
}

@end