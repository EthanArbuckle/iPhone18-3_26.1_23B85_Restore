@interface UserProfilePersonalizationLinkCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)updateTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
@end

@implementation UserProfilePersonalizationLinkCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UserProfilePersonalizationLinkCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UserProfilePersonalizationLinkCell" hasInstanceMethod:@"updateTitle:subtitle:icon:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UserProfilePersonalizationLinkCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UserProfilePersonalizationLinkCellAccessibility *)&v3 accessibilityTraits];
}

- (void)updateTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v9.receiver = self;
  v9.super_class = UserProfilePersonalizationLinkCellAccessibility;
  v8 = a3;
  [(UserProfilePersonalizationLinkCellAccessibility *)&v9 updateTitle:v8 subtitle:a4 icon:a5];
  [(UserProfilePersonalizationLinkCellAccessibility *)self setAccessibilityLabel:v8, v9.receiver, v9.super_class];
}

@end