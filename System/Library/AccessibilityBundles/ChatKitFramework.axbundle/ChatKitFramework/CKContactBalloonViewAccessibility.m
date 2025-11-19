@interface CKContactBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKContactBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKContactBalloonView" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKContactBalloonView" hasInstanceMethod:@"organizationLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = _AXCKStringForMediaType(4);
  v4 = [(CKContactBalloonViewAccessibility *)self safeValueForKey:@"nameLabel"];
  v5 = [v4 accessibilityLabel];
  v6 = [(CKContactBalloonViewAccessibility *)self safeValueForKey:@"organizationLabel"];
  v9 = [v6 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end