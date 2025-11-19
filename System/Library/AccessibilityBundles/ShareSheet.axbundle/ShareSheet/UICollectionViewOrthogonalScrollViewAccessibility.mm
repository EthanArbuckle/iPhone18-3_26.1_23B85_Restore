@interface UICollectionViewOrthogonalScrollViewAccessibility
@end

@implementation UICollectionViewOrthogonalScrollViewAccessibility

id __131___UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit_accessibilityApplyScrollContent_sendScrollStatus_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 57);
  v4.receiver = *(a1 + 32);
  v4.super_class = _UICollectionViewOrthogonalScrollViewAccessibility__ShareSheet__UIKit;
  return objc_msgSendSuper2(&v4, sel_accessibilityApplyScrollContent_sendScrollStatus_animated_, v1, v2, *(a1 + 40), *(a1 + 48));
}

@end