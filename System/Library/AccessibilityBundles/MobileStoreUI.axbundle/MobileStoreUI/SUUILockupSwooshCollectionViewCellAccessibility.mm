@interface SUUILockupSwooshCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUILockupSwooshCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUILockupSwooshCollectionViewCellAccessibility *)self safeValueForKey:@"layout"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end