@interface PXPhotosDetailsBarsControllerAccessibility
- (id)_barButtonItemForBarItemIdentifier:(id)a3;
@end

@implementation PXPhotosDetailsBarsControllerAccessibility

- (id)_barButtonItemForBarItemIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXPhotosDetailsBarsControllerAccessibility;
  v3 = a3;
  v4 = [(PXPhotosDetailsBarsControllerAccessibility *)&v8 _barButtonItemForBarItemIdentifier:v3];
  v5 = [v3 isEqualToString:{@"PXBarItemIdentifierActionMenu", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = accessibilityPhotosUICoreLocalizedString(@"action.menu");
    [v4 setAccessibilityLabel:v6];
  }

  return v4;
}

@end