@interface LargeGameCenterPlayerCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation LargeGameCenterPlayerCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(LargeGameCenterPlayerCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"alias"];
  v3 = __UIAXStringForVariables();

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LargeGameCenterPlayerCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LargeGameCenterPlayerCollectionViewCellAccessibility *)&v3 accessibilityTraits];
}

@end