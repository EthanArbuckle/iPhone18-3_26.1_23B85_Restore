@interface SKUI_UIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:(id)item;
@end

@implementation SKUI_UIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUINavigationBarButtonsController" hasInstanceVariable:@"_buttonItemElements" withType:"NSMapTable"];
  [validationsCopy validateClass:@"SKUIButtonViewElement"];
}

- (id)_accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = SKUI_UIViewAccessibility;
  v5 = [(SKUI_UIViewAccessibility *)&v14 _accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:itemCopy];
  v6 = v5;
  if (v5)
  {
    accessibilityLabel = v5;
  }

  else
  {
    target = [itemCopy target];
    NSClassFromString(&cfstr_Skuinavigation.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v9 = [target safeValueForKey:@"_buttonItemElements"];
      v10 = __UIAccessibilityCastAsClass();

      v11 = [v10 objectForKey:itemCopy];
      v12 = __UIAccessibilitySafeClass();

      accessibilityLabel = [v12 accessibilityLabel];
    }

    else
    {
      accessibilityLabel = 0;
    }
  }

  return accessibilityLabel;
}

@end