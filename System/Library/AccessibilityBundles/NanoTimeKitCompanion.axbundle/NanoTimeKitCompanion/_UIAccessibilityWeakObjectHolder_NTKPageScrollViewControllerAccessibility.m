@interface _UIAccessibilityWeakObjectHolder_NTKPageScrollViewControllerAccessibility
- (NTKPageScrollViewControllerAccessibility)referencedScrollViewController;
@end

@implementation _UIAccessibilityWeakObjectHolder_NTKPageScrollViewControllerAccessibility

- (NTKPageScrollViewControllerAccessibility)referencedScrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_referencedScrollViewController);

  return WeakRetained;
}

@end