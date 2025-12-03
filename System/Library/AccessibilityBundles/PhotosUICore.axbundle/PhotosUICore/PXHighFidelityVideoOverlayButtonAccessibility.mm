@interface PXHighFidelityVideoOverlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (PXHighFidelityVideoOverlayButtonAccessibility)initWithConfiguration:(id)configuration;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXHighFidelityVideoOverlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXHighFidelityVideoOverlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [validationsCopy validateClass:@"PXHighFidelityVideoOverlayButton" hasInstanceMethod:@"initWithConfiguration:" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PXHighFidelityVideoOverlayButtonAccessibility;
  [(PXHighFidelityVideoOverlayButtonAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXHighFidelityVideoOverlayButtonAccessibility *)self safeValueForKey:@"_button"];
  [v3 setIsAccessibilityElement:0];
}

- (PXHighFidelityVideoOverlayButtonAccessibility)initWithConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = PXHighFidelityVideoOverlayButtonAccessibility;
  v3 = [(PXHighFidelityVideoOverlayButtonAccessibility *)&v5 initWithConfiguration:configuration];
  [(PXHighFidelityVideoOverlayButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(PXHighFidelityVideoOverlayButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v3 = isAccessibilityUserDefinedElement;
  if (isAccessibilityUserDefinedElement)
  {
    bOOLValue = [isAccessibilityUserDefinedElement BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXHighFidelityVideoOverlayButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PXHighFidelityVideoOverlayButtonAccessibility *)&v3 accessibilityTraits];
}

@end