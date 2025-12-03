@interface SUUIPhysicalCirclesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGPoint)_accessibilityForceTranslationForScrollDirection:(int64_t)direction;
- (id)_accessibilityCircleBodies;
- (id)_accessibilityPushingScrollStatusInDirection:(int64_t)direction;
- (id)_accessibilityValueForAffinityCount:(int64_t)count;
- (id)_accessibilityValueForCircle:(id)circle;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (int64_t)_accessibilityIndexOfCircle:(id)circle;
- (int64_t)accessibilityElementCount;
- (void)_accessibilityActivateCircle:(id)circle;
- (void)_accessibilityDeleteCircle:(id)circle;
- (void)_reloadDidFinish;
@end

@implementation SUUIPhysicalCirclesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIPhysicalCirclesView" hasInstanceVariable:@"_circleBodies" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"SUUIPhysicalCirclesView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIPhysicalCirclesView" hasInstanceMethod:@"removeCircleAtIndex: animated: completionBlock:" withFullSignature:{"v", "q", "B", "@?", 0}];
  [validationsCopy validateClass:@"SUUIPhysicalCirclesView" hasInstanceMethod:@"_reloadDidFinish" withFullSignature:{"v", 0}];
  [validationsCopy validateProtocol:@"SUUIPhysicalCirclesDelegate" hasOptionalInstanceMethod:@"circleView:didTapCircleAtIndex:"];
  [validationsCopy validateClass:@"PKPhysicsBody"];
  [validationsCopy validateClass:@"PKPhysicsBody" hasInstanceMethod:@"representedObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPhysicsBody" hasInstanceMethod:@"applyForce:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SUUIOnboardingAffiliationCirclesViewController"];
  [validationsCopy validateClass:@"SUUIOnboardingAffiliationCirclesViewController" hasInstanceMethod:@"_completeDeletionForCircleAtIndex:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"SUUIOnboardingAffiliationCirclesViewController" hasInstanceVariable:@"_affiliationItems" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"SUUIOnboardingAffiliationItem"];
  [validationsCopy validateClass:@"SUUIOnboardingAffiliationItem" hasInstanceMethod:@"userAffinityCount" withFullSignature:{"q", 0}];
}

- (void)_accessibilityDeleteCircle:(id)circle
{
  circleCopy = circle;
  AXPerformSafeBlock();
  if (circleCopy)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"removed.genre.circle");
    accessibilityLabel = [circleCopy accessibilityLabel];
    v7 = [v4 stringWithFormat:v5, accessibilityLabel];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
  }
}

void __67__SUUIPhysicalCirclesViewAccessibility__accessibilityDeleteCircle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 _completeDeletionForCircleAtIndex:{objc_msgSend(*(a1 + 32), "_accessibilityIndexOfCircle:", *(a1 + 40))}];
}

- (void)_accessibilityActivateCircle:(id)circle
{
  circleCopy = circle;
  v3 = circleCopy;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

void __69__SUUIPhysicalCirclesViewAccessibility__accessibilityActivateCircle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 circleView:*(a1 + 32) didTapCircleAtIndex:{objc_msgSend(*(a1 + 32), "_accessibilityIndexOfCircle:", *(a1 + 40))}];
}

- (id)_accessibilityValueForCircle:(id)circle
{
  circleCopy = circle;
  v5 = [(SUUIPhysicalCirclesViewAccessibility *)self safeValueForKey:@"delegate"];
  v6 = [v5 safeValueForKey:@"_affiliationItems"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 objectAtIndex:{-[SUUIPhysicalCirclesViewAccessibility _accessibilityIndexOfCircle:](self, "_accessibilityIndexOfCircle:", circleCopy)}];
  v9 = [v8 safeIntegerForKey:@"userAffinityCount"];

  v10 = [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityValueForAffinityCount:v9];

  return v10;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  _accessibilityCircleBodies = [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v5 = [_accessibilityCircleBodies objectAtIndex:index];
  v6 = [v5 safeValueForKey:@"representedObject"];

  return v6;
}

- (int64_t)accessibilityElementCount
{
  _accessibilityCircleBodies = [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v3 = [_accessibilityCircleBodies count];

  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityForceTranslationForScrollDirection:?];
  v6 = v5;
  v8 = v7;
  _accessibilityCircleBodies = [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __60__SUUIPhysicalCirclesViewAccessibility_accessibilityScroll___block_invoke;
  v12[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
  v12[4] = v6;
  v12[5] = v8;
  [_accessibilityCircleBodies enumerateObjectsUsingBlock:v12];

  LODWORD(_accessibilityCircleBodies) = *MEMORY[0x29EDC7EF0];
  v10 = [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityPushingScrollStatusInDirection:scroll];
  UIAccessibilityPostNotification(_accessibilityCircleBodies, v10);

  return 1;
}

void __60__SUUIPhysicalCirclesViewAccessibility_accessibilityScroll___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v3 = v4;
  AXPerformSafeBlock();
}

- (id)_accessibilityPushingScrollStatusInDirection:(int64_t)direction
{
  if ((direction - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2D9160[direction - 1]);
  }

  return v4;
}

- (void)_reloadDidFinish
{
  v2.receiver = self;
  v2.super_class = SUUIPhysicalCirclesViewAccessibility;
  [(SUUIPhysicalCirclesViewAccessibility *)&v2 _reloadDidFinish];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_accessibilityCircleBodies
{
  objc_opt_class();
  v3 = [(SUUIPhysicalCirclesViewAccessibility *)self safeValueForKey:@"_circleBodies"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (int64_t)_accessibilityIndexOfCircle:(id)circle
{
  circleCopy = circle;
  _accessibilityCircleBodies = [(SUUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __68__SUUIPhysicalCirclesViewAccessibility__accessibilityIndexOfCircle___block_invoke;
  v9[3] = &unk_29F2D90A8;
  v10 = circleCopy;
  v6 = circleCopy;
  v7 = [_accessibilityCircleBodies indexOfObjectPassingTest:v9];

  return v7;
}

BOOL __68__SUUIPhysicalCirclesViewAccessibility__accessibilityIndexOfCircle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safeValueForKey:@"representedObject"];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_accessibilityValueForAffinityCount:(int64_t)count
{
  if (count > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2D9180[count]);
  }

  return v4;
}

- (CGPoint)_accessibilityForceTranslationForScrollDirection:(int64_t)direction
{
  v3 = *MEMORY[0x29EDB90B8];
  v4 = *(MEMORY[0x29EDB90B8] + 8);
  if (direction > 2)
  {
    if (direction == 3)
    {
      v4 = -4400.0;
    }

    else if (direction == 4)
    {
      v4 = 4400.0;
    }
  }

  else if (direction == 1)
  {
    v3 = 4400.0;
  }

  else if (direction == 2)
  {
    v3 = -4400.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

@end