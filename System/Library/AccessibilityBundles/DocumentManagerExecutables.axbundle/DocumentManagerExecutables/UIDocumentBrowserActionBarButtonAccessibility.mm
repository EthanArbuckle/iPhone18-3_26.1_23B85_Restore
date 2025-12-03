@interface UIDocumentBrowserActionBarButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UIDocumentBrowserActionBarButtonAccessibility

- (id)accessibilityLabel
{
  v11 = 0;
  objc_opt_class();
  v3 = [(UIDocumentBrowserActionBarButtonAccessibility *)self safeValueForKey:@"docAction"];
  v4 = __UIAccessibilityCastAsClass();

  localizedTitle = [v4 localizedTitle];
  v6 = [localizedTitle length];

  if (v6)
  {
    localizedTitle2 = [v4 localizedTitle];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIDocumentBrowserActionBarButtonAccessibility;
    localizedTitle2 = [(UIDocumentBrowserActionBarButtonAccessibility *)&v10 accessibilityLabel];
  }

  v8 = localizedTitle2;

  return v8;
}

@end