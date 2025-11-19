@interface WKFormAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)axDoneItem;
- (id)axNextItem;
- (id)axPreviousItem;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WKFormAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WKFormAccessoryView" hasInstanceVariable:@"_nextItem" withType:"{RetainPtr<UIBarButtonItem>=m_ptr@UIBarButtonItem}"];
  [v3 validateClass:@"WKFormAccessoryView" hasInstanceVariable:@"_previousItem" withType:"{RetainPtr<UIBarButtonItem>=m_ptr@UIBarButtonItem}"];
  [v3 validateClass:@"WKFormAccessoryView" hasInstanceVariable:@"_doneButton" withType:"{RetainPtr<UIBarButtonItem>=m_ptr@UIBarButtonItem}"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = WKFormAccessoryViewAccessibility;
  [(WKFormAccessoryViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(WKFormAccessoryViewAccessibility *)self axNextItem];
  v4 = accessibilityLocalizedString(@"next.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(WKFormAccessoryViewAccessibility *)self axPreviousItem];
  v6 = accessibilityLocalizedString(@"previous.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(WKFormAccessoryViewAccessibility *)self axDoneItem];
  v8 = accessibilityLocalizedString(@"done.button");
  [v7 setAccessibilityLabel:v8];
}

- (id)axNextItem
{
  v2 = [(WKFormAccessoryViewAccessibility *)self safeIvarForKey:@"_nextItem"];
  if (v2)
  {
    v2 = *v2;
  }

  return v2;
}

- (id)axPreviousItem
{
  v2 = [(WKFormAccessoryViewAccessibility *)self safeIvarForKey:@"_previousItem"];
  if (v2)
  {
    v2 = *v2;
  }

  return v2;
}

- (id)axDoneItem
{
  v2 = [(WKFormAccessoryViewAccessibility *)self safeIvarForKey:@"_doneButton"];
  if (v2)
  {
    v2 = *v2;
  }

  return v2;
}

@end