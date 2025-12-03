@interface SKUILockupSwooshCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUILockupSwooshCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUILockupSwooshCollectionViewCellAccessibility *)self safeValueForKey:@"layout"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end