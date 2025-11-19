@interface PXHighFidelityVideoOverlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (PXHighFidelityVideoOverlayButtonAccessibility)initWithConfiguration:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PXHighFidelityVideoOverlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXHighFidelityVideoOverlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [v3 validateClass:@"PXHighFidelityVideoOverlayButton" hasInstanceMethod:@"initWithConfiguration:" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PXHighFidelityVideoOverlayButtonAccessibility;
  [(PXHighFidelityVideoOverlayButtonAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXHighFidelityVideoOverlayButtonAccessibility *)self safeValueForKey:@"_button"];
  [v3 setIsAccessibilityElement:0];
}

- (PXHighFidelityVideoOverlayButtonAccessibility)initWithConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXHighFidelityVideoOverlayButtonAccessibility;
  v3 = [(PXHighFidelityVideoOverlayButtonAccessibility *)&v5 initWithConfiguration:a3];
  [(PXHighFidelityVideoOverlayButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PXHighFidelityVideoOverlayButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PXHighFidelityVideoOverlayButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PXHighFidelityVideoOverlayButtonAccessibility *)&v3 accessibilityTraits];
}

@end