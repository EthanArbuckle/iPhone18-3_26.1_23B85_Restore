@interface TVInterfaceFactoryAccessibility
- (id)_viewFromElement:(id)a3 existingView:(id)a4;
@end

@implementation TVInterfaceFactoryAccessibility

- (id)_viewFromElement:(id)a3 existingView:(id)a4
{
  v12.receiver = self;
  v12.super_class = TVInterfaceFactoryAccessibility;
  v5 = a3;
  v6 = [(TVInterfaceFactoryAccessibility *)&v12 _viewFromElement:v5 existingView:a4];
  v7 = [v5 accessibilityText];

  v8 = [v6 accessibilityLabel];
  v9 = [v8 length];

  if (!v9)
  {
    if ([v7 length])
    {
      [v6 setAccessibilityLabel:v7];
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