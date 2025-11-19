@interface TVMLKit_UILabelAccessibility
- (BOOL)_isAccessibilityExplorerElement;
@end

@implementation TVMLKit_UILabelAccessibility

- (BOOL)_isAccessibilityExplorerElement
{
  v3 = [(TVMLKit_UILabelAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uiindexbarview.isa)];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TVMLKit_UILabelAccessibility;
    v4 = [(TVMLKit_UILabelAccessibility *)&v6 _isAccessibilityExplorerElement];
  }

  return v4;
}

@end