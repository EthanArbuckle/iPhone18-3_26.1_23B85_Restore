@interface _UIContextMenuContainerViewInvertColorsAccessibility
- (void)addSubview:(id)a3;
@end

@implementation _UIContextMenuContainerViewInvertColorsAccessibility

- (void)addSubview:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIContextMenuContainerViewInvertColorsAccessibility;
  [(_UIContextMenuContainerViewInvertColorsAccessibility *)&v7 addSubview:v4];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v5 = [(_UIContextMenuContainerViewInvertColorsAccessibility *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    if (v6 == &dword_0 + 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 setAccessibilityVisualEffectHandleBackdrop:1];
      }
    }
  }
}

@end