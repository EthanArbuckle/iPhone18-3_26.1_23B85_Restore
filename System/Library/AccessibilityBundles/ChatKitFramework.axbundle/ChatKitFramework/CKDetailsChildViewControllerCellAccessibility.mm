@interface CKDetailsChildViewControllerCellAccessibility
- (BOOL)accessibilityScrollToVisibleWithChild:(id)child;
@end

@implementation CKDetailsChildViewControllerCellAccessibility

- (BOOL)accessibilityScrollToVisibleWithChild:(id)child
{
  _accessibilityParentView = [child _accessibilityParentView];
  NSClassFromString(&cfstr_Ckattachmentce_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    _accessibilityScrollParent = [(CKDetailsChildViewControllerCellAccessibility *)self _accessibilityScrollParent];
    [_accessibilityParentView accessibilityFrameForScrolling];
    [_accessibilityScrollParent _accessibilityScrollToFrame:_accessibilityParentView forView:?];
  }

  return isKindOfClass & 1;
}

@end