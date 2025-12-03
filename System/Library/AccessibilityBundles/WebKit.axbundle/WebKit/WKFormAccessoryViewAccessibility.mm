@interface WKFormAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)axDoneItem;
- (id)axNextItem;
- (id)axPreviousItem;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WKFormAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WKFormAccessoryView" hasInstanceVariable:@"_nextItem" withType:"{RetainPtr<UIBarButtonItem>=m_ptr@UIBarButtonItem}"];
  [validationsCopy validateClass:@"WKFormAccessoryView" hasInstanceVariable:@"_previousItem" withType:"{RetainPtr<UIBarButtonItem>=m_ptr@UIBarButtonItem}"];
  [validationsCopy validateClass:@"WKFormAccessoryView" hasInstanceVariable:@"_doneButton" withType:"{RetainPtr<UIBarButtonItem>=m_ptr@UIBarButtonItem}"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = WKFormAccessoryViewAccessibility;
  [(WKFormAccessoryViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  axNextItem = [(WKFormAccessoryViewAccessibility *)self axNextItem];
  v4 = accessibilityLocalizedString(@"next.button");
  [axNextItem setAccessibilityLabel:v4];

  axPreviousItem = [(WKFormAccessoryViewAccessibility *)self axPreviousItem];
  v6 = accessibilityLocalizedString(@"previous.button");
  [axPreviousItem setAccessibilityLabel:v6];

  axDoneItem = [(WKFormAccessoryViewAccessibility *)self axDoneItem];
  v8 = accessibilityLocalizedString(@"done.button");
  [axDoneItem setAccessibilityLabel:v8];
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