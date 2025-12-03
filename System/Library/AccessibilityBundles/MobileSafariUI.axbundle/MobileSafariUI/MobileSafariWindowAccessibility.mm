@interface MobileSafariWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_iosAccessibilityAttributeValue:(int64_t)value;
@end

@implementation MobileSafariWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MobileSafariWindow" hasInstanceMethod:@"safariWindowDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserControllerDefaultUIDelegate" conformsToProtocol:@"MobileSafariWindowDelegate"];
  [validationsCopy validateClass:@"BrowserControllerDefaultUIDelegate" hasInstanceVariable:@"_browserController" withType:"BrowserController"];
  [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_tabController" withType:"TabController"];
  [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TabDocumentView"];
  [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (id)_iosAccessibilityAttributeValue:(int64_t)value
{
  if (value == 5074)
  {
    v3 = [(MobileSafariWindowAccessibility *)self safeValueForKeyPath:@"safariWindowDelegate._browserController"];
    v4 = v3;
    if (v3 && ([v3 safeValueForKeyPath:@"_tabController.activeTabDocument.view"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v7 = [v5 _iosAccessibilityAttributeValue:5074];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MobileSafariWindowAccessibility;
    v7 = [(MobileSafariWindowAccessibility *)&v9 _iosAccessibilityAttributeValue:?];
  }

  return v7;
}

@end