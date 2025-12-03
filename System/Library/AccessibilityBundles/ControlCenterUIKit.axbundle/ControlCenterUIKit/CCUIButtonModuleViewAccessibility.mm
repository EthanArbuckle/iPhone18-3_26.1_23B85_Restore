@interface CCUIButtonModuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityPath;
- (unint64_t)_accesibilityRawTraits;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUIButtonModuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIButtonModuleView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"CCUIButtonModuleView" hasInstanceVariable:@"_highlightedBackgroundView" withType:"UIView"];
}

- (id)accessibilityPath
{
  v3 = MEMORY[0x29EDC7948];
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CCUIButtonModuleViewAccessibility *)self safeUIViewForKey:@"_highlightedBackgroundView"];
  [v13 _continuousCornerRadius];
  v15 = [v3 _bezierPathWithPillRect:v6 cornerRadius:{v8, v10, v12, v14}];
  v16 = UIAccessibilityConvertPathToScreenCoordinates(v15, self);

  return v16;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(CCUIButtonModuleViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(CCUIButtonModuleViewAccessibility *)self isAccessibilityUserDefinedElement];
    bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];
  }

  else
  {
    objc_opt_class();
    isAccessibilityUserDefinedElement2 = __UIAccessibilityCastAsClass();
    if ([isAccessibilityUserDefinedElement2 _accessibilityViewIsVisible])
    {
      superview = [isAccessibilityUserDefinedElement2 superview];
      bOOLValue = [superview _accessibilityViewIsVisible];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (unint64_t)_accesibilityRawTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  v4 = *MEMORY[0x29EDC7F70];
  if (v2)
  {
    isEnabled = [v2 isEnabled];
    v6 = *MEMORY[0x29EDC7FA8];
    if (isEnabled)
    {
      v6 = 0;
    }

    v4 |= v6;
    if ([v3 isSelected])
    {
      v4 |= *MEMORY[0x29EDC7FC0];
    }
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(CCUIButtonModuleViewAccessibility *)self _accessibilityGetBlockForAttribute:4];
  v4 = v3;
  if (v3)
  {
    _accesibilityRawTraits = (*(v3 + 16))(v3);
  }

  else
  {
    _accesibilityRawTraits = [(CCUIButtonModuleViewAccessibility *)self _accesibilityRawTraits];
  }

  v6 = _accesibilityRawTraits;

  return v6;
}

- (id)accessibilityCustomActions
{
  v5.receiver = self;
  v5.super_class = CCUIButtonModuleViewAccessibility;
  accessibilityCustomActions = [(CCUIButtonModuleViewAccessibility *)&v5 accessibilityCustomActions];
  v3 = AXGuaranteedMutableArray();

  UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();

  return v3;
}

@end