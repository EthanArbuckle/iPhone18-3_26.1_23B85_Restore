@interface UICollectionView(SwiftUITesting_Swizzles)
+ (void)_performSwiftUITestingOverrides;
@end

@implementation UICollectionView(SwiftUITesting_Swizzles)

+ (void)_performSwiftUITestingOverrides
{
  v0 = objc_opt_self();
  _SwizzleMethods(v0, sel__viewAnimationsForCurrentUpdateWithCollectionViewAnimator_, sel__SwiftUITesting__viewAnimationsForCurrentUpdateWithCollectionViewAnimator_);
}

@end