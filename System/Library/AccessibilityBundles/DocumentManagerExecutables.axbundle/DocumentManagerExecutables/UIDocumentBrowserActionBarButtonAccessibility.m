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

  v5 = [v4 localizedTitle];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 localizedTitle];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIDocumentBrowserActionBarButtonAccessibility;
    v7 = [(UIDocumentBrowserActionBarButtonAccessibility *)&v10 accessibilityLabel];
  }

  v8 = v7;

  return v8;
}

@end