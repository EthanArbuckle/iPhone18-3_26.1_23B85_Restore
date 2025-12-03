@interface MFAtomTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MFAtomTextViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MFAtomTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFAtomTextView" hasInstanceMethod:@"clearButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFAtomTextView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"MFAtomTextView" hasInstanceMethod:@"placeholder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFAtomTextView" hasInstanceMethod:@"placeholderLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MFAtomTextViewAccessibility;
  [(MFAtomTextViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFAtomTextViewAccessibility *)self safeValueForKey:@"clearButton"];
  v4 = UIKitAccessibilityLocalizedString();
  [v3 setAccessibilityLabel:v4];

  v5 = [(MFAtomTextViewAccessibility *)self safeValueForKey:@"placeholderLabel"];
  [v5 setIsAccessibilityElement:0];
}

- (MFAtomTextViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MFAtomTextViewAccessibility;
  v3 = [(MFAtomTextViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(MFAtomTextViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

void __50___MFAtomTextViewAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 accessibilityLabel];
  [v2 ax_enqueueObject:v3];
}

@end