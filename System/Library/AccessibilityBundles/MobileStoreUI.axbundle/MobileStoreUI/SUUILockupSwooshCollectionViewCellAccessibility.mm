@interface SUUILockupSwooshCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SUUILockupSwooshCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SUUILockupSwooshCollectionViewCellAccessibility *)self safeValueForKey:@"layout"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end