@interface UpNextQueueViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLayoutSubviews;
@end

@implementation UpNextQueueViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.UpNextQueueViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = UpNextQueueViewControllerAccessibility;
  [(UpNextQueueViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(UpNextQueueViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = v3;
  if (v3)
  {
    subviews = [v3 subviews];
    v6 = [subviews ax_filteredArrayUsingBlock:&__block_literal_global_2];
    [v6 enumerateObjectsUsingBlock:&__block_literal_global_300];
    objc_opt_class();
    lastObject = [v6 lastObject];
    v8 = __UIAccessibilityCastAsClass();

    [v8 setIsAccessibilityElement:1];
  }
}

uint64_t __84__UpNextQueueViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED34A70](@"_UIGrabber");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __84__UpNextQueueViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 setIsAccessibilityElement:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UpNextQueueViewControllerAccessibility;
  [(UpNextQueueViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(UpNextQueueViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end