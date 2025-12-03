@interface PXPhotosDetailsBarsControllerAccessibility
- (id)_barButtonItemForBarItemIdentifier:(id)identifier;
@end

@implementation PXPhotosDetailsBarsControllerAccessibility

- (id)_barButtonItemForBarItemIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PXPhotosDetailsBarsControllerAccessibility;
  identifierCopy = identifier;
  v4 = [(PXPhotosDetailsBarsControllerAccessibility *)&v8 _barButtonItemForBarItemIdentifier:identifierCopy];
  v5 = [identifierCopy isEqualToString:{@"PXBarItemIdentifierActionMenu", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = accessibilityPhotosUICoreLocalizedString(@"action.menu");
    [v4 setAccessibilityLabel:v6];
  }

  return v4;
}

@end