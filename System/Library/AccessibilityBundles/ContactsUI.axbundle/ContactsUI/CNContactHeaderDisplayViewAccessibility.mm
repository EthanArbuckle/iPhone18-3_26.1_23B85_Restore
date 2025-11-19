@interface CNContactHeaderDisplayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNContactHeaderDisplayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNContactHeaderDisplayView" hasInstanceMethod:@"copy:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CNContactHeaderDisplayView" isKindOfClass:@"CNContactHeaderView"];
  [v3 validateClass:@"CNContactHeaderView" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = CNContactHeaderDisplayViewAccessibility;
  [(CNContactHeaderDisplayViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNContactHeaderDisplayViewAccessibility *)self safeValueForKey:@"nameLabel"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
  v4 = objc_alloc(MEMORY[0x29EDC78E0]);
  v5 = accessibilityLocalizedString(@"copy.name.action");
  v6 = [v4 initWithName:v5 target:self selector:sel__accessibilityPerformCopyAction_];

  v9[0] = v6;
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  [v3 setAccessibilityCustomActions:v7];
}

@end