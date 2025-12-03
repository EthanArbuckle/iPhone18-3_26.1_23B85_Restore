@interface TVMLKit_UILabelAccessibility
- (BOOL)_isAccessibilityExplorerElement;
@end

@implementation TVMLKit_UILabelAccessibility

- (BOOL)_isAccessibilityExplorerElement
{
  v3 = [(TVMLKit_UILabelAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uiindexbarview.isa)];
  if (v3)
  {
    _isAccessibilityExplorerElement = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TVMLKit_UILabelAccessibility;
    _isAccessibilityExplorerElement = [(TVMLKit_UILabelAccessibility *)&v6 _isAccessibilityExplorerElement];
  }

  return _isAccessibilityExplorerElement;
}

@end