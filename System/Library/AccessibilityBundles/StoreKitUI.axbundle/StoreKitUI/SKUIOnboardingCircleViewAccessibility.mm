@interface SKUIOnboardingCircleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityRemoveCircle;
- (BOOL)_accessibilityScrollToVisible;
- (id)_accessibilityPhysicalCirclesViewSuperview;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (void)_accessibilityActivateCircle;
@end

@implementation SKUIOnboardingCircleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIOnboardingCircleView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SKUIOnboardingCircleView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPhysicsBody" hasInstanceMethod:@"applyForce:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SKUIPhysicalCirclesView"];
}

- (id)accessibilityPath
{
  [(SKUIOnboardingCircleViewAccessibility *)self accessibilityFrame];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v6 = MEMORY[0x29EDC7948];
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetWidth(v14) * 0.5;

  return [v6 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 clockwise:{0.0, 6.28318531}];
}

- (BOOL)_accessibilityScrollToVisible
{
  v17 = 0;
  superview = [(SKUIOnboardingCircleViewAccessibility *)self superview];
  v4 = __UIAccessibilitySafeClass();

  [(SKUIOnboardingCircleViewAccessibility *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 bounds];
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v13 = CGRectContainsRect(v18, v19);
  if (!v13)
  {
    v14 = [v4 safeValueForKey:@"_accessibilityCircleBodies"];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __70__SKUIOnboardingCircleViewAccessibility__accessibilityScrollToVisible__block_invoke;
    v16[3] = &__block_descriptor_64_e15_v32__0_8Q16_B24l;
    *&v16[4] = v6;
    *&v16[5] = v8;
    *&v16[6] = v10;
    *&v16[7] = v12;
    [v14 enumerateObjectsUsingBlock:v16];
  }

  return !v13;
}

void __70__SKUIOnboardingCircleViewAccessibility__accessibilityScrollToVisible__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5 = v3;
  v4 = v3;
  AXPerformSafeBlock();
}

- (id)accessibilityLabel
{
  v2 = [(SKUIOnboardingCircleViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityCustomActions
{
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilitySKUILocalizedString(@"remove.circle.action");
  v5 = [v3 initWithName:v4 target:self selector:sel__accessibilityRemoveCircle];

  [v5 setSortPriority:*MEMORY[0x29EDC72F8]];
  v6 = [MEMORY[0x29EDB8D80] arrayWithObject:v5];

  return v6;
}

- (id)accessibilityValue
{
  _accessibilityPhysicalCirclesViewSuperview = [(SKUIOnboardingCircleViewAccessibility *)self _accessibilityPhysicalCirclesViewSuperview];
  v4 = [_accessibilityPhysicalCirclesViewSuperview _accessibilityValueForCircle:self];

  return v4;
}

- (BOOL)_accessibilityRemoveCircle
{
  _accessibilityPhysicalCirclesViewSuperview = [(SKUIOnboardingCircleViewAccessibility *)self _accessibilityPhysicalCirclesViewSuperview];
  [_accessibilityPhysicalCirclesViewSuperview _accessibilityDeleteCircle:self];

  return 1;
}

- (void)_accessibilityActivateCircle
{
  _accessibilityPhysicalCirclesViewSuperview = [(SKUIOnboardingCircleViewAccessibility *)self _accessibilityPhysicalCirclesViewSuperview];
  [_accessibilityPhysicalCirclesViewSuperview _accessibilityActivateCircle:self];
}

- (id)_accessibilityPhysicalCirclesViewSuperview
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  superview = [v2 superview];
  v4 = __UIAccessibilitySafeClass();

  return v4;
}

@end