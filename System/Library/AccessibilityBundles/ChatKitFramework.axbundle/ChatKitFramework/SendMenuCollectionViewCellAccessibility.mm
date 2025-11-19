@interface SendMenuCollectionViewCellAccessibility
- (CGRect)_accessibilityVisibleFrame:(BOOL)a3;
@end

@implementation SendMenuCollectionViewCellAccessibility

- (CGRect)_accessibilityVisibleFrame:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SendMenuCollectionViewCellAccessibility;
  [(SendMenuCollectionViewCellAccessibility *)&v7 _accessibilityVisibleFrame:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end