@interface UserProfilePersonalizationLinkCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)updateTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
@end

@implementation UserProfilePersonalizationLinkCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UserProfilePersonalizationLinkCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UserProfilePersonalizationLinkCell" hasInstanceMethod:@"updateTitle:subtitle:icon:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UserProfilePersonalizationLinkCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UserProfilePersonalizationLinkCellAccessibility *)&v3 accessibilityTraits];
}

- (void)updateTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  v9.receiver = self;
  v9.super_class = UserProfilePersonalizationLinkCellAccessibility;
  titleCopy = title;
  [(UserProfilePersonalizationLinkCellAccessibility *)&v9 updateTitle:titleCopy subtitle:subtitle icon:icon];
  [(UserProfilePersonalizationLinkCellAccessibility *)self setAccessibilityLabel:titleCopy, v9.receiver, v9.super_class];
}

@end