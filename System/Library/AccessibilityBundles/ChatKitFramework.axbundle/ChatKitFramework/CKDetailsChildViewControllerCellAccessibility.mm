@interface CKDetailsChildViewControllerCellAccessibility
- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3;
@end

@implementation CKDetailsChildViewControllerCellAccessibility

- (BOOL)accessibilityScrollToVisibleWithChild:(id)a3
{
  v4 = [a3 _accessibilityParentView];
  NSClassFromString(&cfstr_Ckattachmentce_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [(CKDetailsChildViewControllerCellAccessibility *)self _accessibilityScrollParent];
    [v4 accessibilityFrameForScrolling];
    [v6 _accessibilityScrollToFrame:v4 forView:?];
  }

  return isKindOfClass & 1;
}

@end