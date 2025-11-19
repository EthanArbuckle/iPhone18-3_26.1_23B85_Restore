@interface SKUILockupSwooshCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SKUILockupSwooshCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SKUILockupSwooshCollectionViewCellAccessibility *)self safeValueForKey:@"layout"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end