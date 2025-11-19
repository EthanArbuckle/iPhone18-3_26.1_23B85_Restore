@interface CCUIButtonModuleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityPath;
- (unint64_t)_accesibilityRawTraits;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUIButtonModuleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIButtonModuleView" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"CCUIButtonModuleView" hasInstanceVariable:@"_highlightedBackgroundView" withType:"UIView"];
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
  v3 = [(CCUIButtonModuleViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (v3)
  {
    v4 = [(CCUIButtonModuleViewAccessibility *)self isAccessibilityUserDefinedElement];
    v5 = [v4 BOOLValue];
  }

  else
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    if ([v4 _accessibilityViewIsVisible])
    {
      v6 = [v4 superview];
      v5 = [v6 _accessibilityViewIsVisible];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)_accesibilityRawTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  v4 = *MEMORY[0x29EDC7F70];
  if (v2)
  {
    v5 = [v2 isEnabled];
    v6 = *MEMORY[0x29EDC7FA8];
    if (v5)
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
    v5 = (*(v3 + 16))(v3);
  }

  else
  {
    v5 = [(CCUIButtonModuleViewAccessibility *)self _accesibilityRawTraits];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityCustomActions
{
  v5.receiver = self;
  v5.super_class = CCUIButtonModuleViewAccessibility;
  v2 = [(CCUIButtonModuleViewAccessibility *)&v5 accessibilityCustomActions];
  v3 = AXGuaranteedMutableArray();

  UIAccessibilityControlCenterAttachOpenCloseCustomActionsIfNeeded();

  return v3;
}

@end