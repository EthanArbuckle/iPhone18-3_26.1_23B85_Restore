@interface UICollectionViewAccessibility__PhotosUI__UIKit
- (BOOL)_accessibilityOpaqueElementScrollsContentIntoView;
@end

@implementation UICollectionViewAccessibility__PhotosUI__UIKit

- (BOOL)_accessibilityOpaqueElementScrollsContentIntoView
{
  v3 = [(UICollectionViewAccessibility__PhotosUI__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"photoSharingCollectionView"];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UICollectionViewAccessibility__PhotosUI__UIKit;
  return [(UICollectionViewAccessibility__PhotosUI__UIKit *)&v6 _accessibilityOpaqueElementScrollsContentIntoView];
}

@end