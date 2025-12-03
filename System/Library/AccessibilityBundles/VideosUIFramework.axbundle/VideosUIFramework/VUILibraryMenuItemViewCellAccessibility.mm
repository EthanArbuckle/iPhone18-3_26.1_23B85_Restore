@interface VUILibraryMenuItemViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUILibraryMenuItemViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUILibraryMenuItemViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"VUILibraryMenuItemViewCell" hasProperty:@"titleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v2 = [(VUILibraryMenuItemViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUILibraryMenuItemViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUILibraryMenuItemViewCellAccessibility *)&v3 accessibilityTraits];
}

@end