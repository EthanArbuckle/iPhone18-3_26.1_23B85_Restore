@interface MediaControlsEndpointsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MediaControlsEndpointsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsEndpointsViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"MediaControlsEndpointsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MediaControlsEndpointsViewController" isKindOfClass:@"MediaControlsCollectionViewController"];
  [validationsCopy validateClass:@"MediaControlsCollectionViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MediaControlsEndpointsViewControllerAccessibility;
  [(MediaControlsEndpointsViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MediaControlsEndpointsViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityContainerType:4];
  v4 = accessibilityLocalizedString(@"media.controls.container.label");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityNavigationStyle:2];
  v5 = [(MediaControlsEndpointsViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  [v5 accessibilitySetIdentification:@"AXMediaControlsScrollViewIdentifier"];
}

- (BOOL)accessibilityPerformEscape
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __79__MediaControlsEndpointsViewControllerAccessibility_accessibilityPerformEscape__block_invoke;
  v9 = &unk_29F2CF208;
  selfCopy = self;
  v11 = &v12;
  AXPerformSafeBlock();
  if (v13[3])
  {
    accessibilityPerformEscape = 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MediaControlsEndpointsViewControllerAccessibility;
    accessibilityPerformEscape = [(MediaControlsEndpointsViewControllerAccessibility *)&v5 accessibilityPerformEscape];
    *(v13 + 24) = accessibilityPerformEscape;
  }

  _Block_object_dispose(&v12, 8);
  return accessibilityPerformEscape;
}

void __79__MediaControlsEndpointsViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 parentViewController];
  NSClassFromString(&cfstr_Ccuicontentmod.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end