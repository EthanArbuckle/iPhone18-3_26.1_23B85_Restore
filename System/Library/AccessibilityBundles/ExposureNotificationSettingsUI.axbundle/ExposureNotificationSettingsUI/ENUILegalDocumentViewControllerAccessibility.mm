@interface ENUILegalDocumentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ENUILegalDocumentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ENUILegalDocumentViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ENUILegalDocumentViewController" hasInstanceMethod:@"legalTextView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = ENUILegalDocumentViewControllerAccessibility;
  [(ENUILegalDocumentViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(ENUILegalDocumentViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __90__ENUILegalDocumentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2BDD40;
  v4[4] = self;
  [v3 _setAccessibilityElementsBlock:v4];
}

id __90__ENUILegalDocumentViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x29EDB8D80];
  v2 = [*(a1 + 32) safeValueForKey:@"legalTextView"];
  v3 = [v1 axArrayByIgnoringNilElementsWithCount:{1, v2}];

  return v3;
}

@end