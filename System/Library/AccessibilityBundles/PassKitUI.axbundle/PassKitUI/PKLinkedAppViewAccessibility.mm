@interface PKLinkedAppViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation PKLinkedAppViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKLinkedApplication"];
  [validationsCopy validateClass:@"ASCLockupContentView"];
  [validationsCopy validateClass:@"ASCLockupContentView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCLockupContentView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCLockupContentView" hasInstanceMethod:@"offerButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKContinuousButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"PKLinkedAppView" hasInstanceMethod:@"linkedAppView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKLinkedAppContentView" hasInstanceMethod:@"linkedApplication" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKLinkedApplication" hasInstanceMethod:@"isInstalled" withFullSignature:{"B", 0}];
}

uint64_t __45__PKLinkedAppViewAccessibility__axGetAppView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Asclockupconte.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  _axGetAppView = [(PKLinkedAppViewAccessibility *)self _axGetAppView];
  v3 = [_axGetAppView safeValueForKey:@"titleLabel"];
  v6 = [_axGetAppView safeValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axGetAppView = [(PKLinkedAppViewAccessibility *)self _axGetAppView];
  v3 = [_axGetAppView safeValueForKey:@"offerButton"];

  v4 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)accessibilityHint
{
  v2 = [(PKLinkedAppViewAccessibility *)self safeValueForKey:@"linkedAppView"];
  v3 = [v2 safeValueForKey:@"linkedApplication"];
  v4 = __UIAccessibilitySafeClass();

  if ([v4 safeBoolForKey:@"isInstalled"])
  {
    v5 = @"passbook.app.hint.open";
  }

  else
  {
    v5 = @"passbook.app.hint.view";
  }

  v6 = accessibilityLocalizedString(v5);

  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  _axGetAppView = [(PKLinkedAppViewAccessibility *)self _axGetAppView];
  v3 = [_axGetAppView safeValueForKey:@"offerButton"];
  [v3 accessibilityActivationPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

@end