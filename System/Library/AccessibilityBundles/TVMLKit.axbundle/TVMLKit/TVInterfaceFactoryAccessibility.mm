@interface TVInterfaceFactoryAccessibility
- (id)_viewFromElement:(id)element existingView:(id)view;
@end

@implementation TVInterfaceFactoryAccessibility

- (id)_viewFromElement:(id)element existingView:(id)view
{
  v12.receiver = self;
  v12.super_class = TVInterfaceFactoryAccessibility;
  elementCopy = element;
  v6 = [(TVInterfaceFactoryAccessibility *)&v12 _viewFromElement:elementCopy existingView:view];
  accessibilityText = [elementCopy accessibilityText];

  accessibilityLabel = [v6 accessibilityLabel];
  v9 = [accessibilityLabel length];

  if (!v9)
  {
    if ([accessibilityText length])
    {
      [v6 setAccessibilityLabel:accessibilityText];
    }

    else
    {
      v10 = accessibilityLabelForTVView(v6);
      [v6 setAccessibilityLabel:v10];
    }
  }

  return v6;
}

@end