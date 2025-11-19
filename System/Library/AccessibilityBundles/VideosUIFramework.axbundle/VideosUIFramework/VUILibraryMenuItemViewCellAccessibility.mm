@interface VUILibraryMenuItemViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VUILibraryMenuItemViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUILibraryMenuItemViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"VUILibraryMenuItemViewCell" hasProperty:@"titleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v2 = [(VUILibraryMenuItemViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VUILibraryMenuItemViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VUILibraryMenuItemViewCellAccessibility *)&v3 accessibilityTraits];
}

@end