@interface AVInfoMenuCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation AVInfoMenuCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVInfoMenuCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"AVInfoMenuCell" hasInstanceMethod:@"floatingView" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = _UIAccessibilityFocusedElements();
  v4 = [v3 containsObject:self];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = AVInfoMenuCellAccessibility;
  return [(AVInfoMenuCellAccessibility *)&v6 isAccessibilityElement];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AVInfoMenuCellAccessibility;
  return *MEMORY[0x29EDC7588] | [(AVInfoMenuCellAccessibility *)&v3 accessibilityTraits];
}

@end