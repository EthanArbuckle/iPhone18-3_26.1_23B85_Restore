@interface _UIContextMenuContainerViewInvertColorsAccessibility
- (void)addSubview:(id)subview;
@end

@implementation _UIContextMenuContainerViewInvertColorsAccessibility

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  v7.receiver = self;
  v7.super_class = _UIContextMenuContainerViewInvertColorsAccessibility;
  [(_UIContextMenuContainerViewInvertColorsAccessibility *)&v7 addSubview:subviewCopy];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    traitCollection = [(_UIContextMenuContainerViewInvertColorsAccessibility *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == &dword_0 + 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [subviewCopy setAccessibilityVisualEffectHandleBackdrop:1];
      }
    }
  }
}

@end