@interface PUCropAspectViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)aspectButtonPressed:(id)pressed;
- (void)updateAspectButtons;
- (void)viewDidLoad;
@end

@implementation PUCropAspectViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"aspectButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"allAspectRatios" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"buttonContainer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"width" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUCropAspect" hasInstanceMethod:@"height" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"aspectButtonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"updateAspectButtons" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUCropAspectViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCropToolController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PUCropAspectViewControllerAccessibility;
  [(PUCropAspectViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUCropAspectViewControllerAccessibility *)self safeArrayForKey:@"aspectButtons"];
  v4 = [(PUCropAspectViewControllerAccessibility *)self safeArrayForKey:@"allAspectRatios"];
  v5 = [(PUCropAspectViewControllerAccessibility *)self safeUIViewForKey:@"buttonContainer"];
  [v5 _setAccessibilityLabelBlock:&__block_literal_global_6];
  [v5 setAccessibilityContainerType:4];
  v6 = [v3 count];
  if (v6 == [v4 count])
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __85__PUCropAspectViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v7[3] = &unk_29F2E8330;
    v8 = v3;
    [v4 enumerateObjectsUsingBlock:v7];
  }
}

void __85__PUCropAspectViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __85__PUCropAspectViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v8[3] = &unk_29F2E8308;
  v9 = v5;
  v7 = v5;
  [v6 _setAccessibilityLabelBlock:v8];
}

id __85__PUCropAspectViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeStringForKey:@"localizedName"];
  v3 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
  v4 = [v2 rangeOfCharacterFromSet:v3];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v2;
  }

  else
  {
    [*(a1 + 32) safeCGFloatForKey:@"width"];
    v7 = v6;
    [*(a1 + 32) safeCGFloatForKey:@"height"];
    v9 = v8;
    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityPULocalizedString(@"aspect.ratio.value");
    v5 = [v10 stringWithFormat:v11, v7, v9];
  }

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUCropAspectViewControllerAccessibility;
  [(PUCropAspectViewControllerAccessibility *)&v3 viewDidLoad];
  [(PUCropAspectViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)aspectButtonPressed:(id)pressed
{
  v5.receiver = self;
  v5.super_class = PUCropAspectViewControllerAccessibility;
  [(PUCropAspectViewControllerAccessibility *)&v5 aspectButtonPressed:pressed];
  [(PUCropAspectViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v4 = [(PUCropAspectViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Pucroptoolcont_0.isa);
  if (objc_opt_isKindOfClass())
  {
    [v4 _accessibilityLoadAccessibilityInformation];
  }
}

- (void)updateAspectButtons
{
  v3.receiver = self;
  v3.super_class = PUCropAspectViewControllerAccessibility;
  [(PUCropAspectViewControllerAccessibility *)&v3 updateAspectButtons];
  [(PUCropAspectViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end