@interface SKUIPhysicalCirclesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (CGPoint)_accessibilityForceTranslationForScrollDirection:(int64_t)a3;
- (id)_accessibilityCircleBodies;
- (id)_accessibilityPushingScrollStatusInDirection:(int64_t)a3;
- (id)_accessibilityValueForAffinityCount:(int64_t)a3;
- (id)_accessibilityValueForCircle:(id)a3;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (int64_t)_accessibilityIndexOfCircle:(id)a3;
- (int64_t)accessibilityElementCount;
- (void)_accessibilityActivateCircle:(id)a3;
- (void)_accessibilityDeleteCircle:(id)a3;
- (void)_reloadDidFinish;
@end

@implementation SKUIPhysicalCirclesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIPhysicalCirclesView" hasInstanceVariable:@"_circleBodies" withType:"NSMutableArray"];
  [v3 validateClass:@"SKUIPhysicalCirclesView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIPhysicalCirclesView" hasInstanceMethod:@"removeCircleAtIndex: animated: completionBlock:" withFullSignature:{"v", "q", "B", "@?", 0}];
  [v3 validateClass:@"SKUIPhysicalCirclesView" hasInstanceMethod:@"_reloadDidFinish" withFullSignature:{"v", 0}];
  [v3 validateProtocol:@"SKUIPhysicalCirclesDelegate" hasOptionalInstanceMethod:@"circleView:didTapCircleAtIndex:"];
  [v3 validateClass:@"PKPhysicsBody"];
  [v3 validateClass:@"PKPhysicsBody" hasInstanceMethod:@"representedObject" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPhysicsBody" hasInstanceMethod:@"applyForce:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"SKUIOnboardingAffiliationCirclesViewController"];
  [v3 validateClass:@"SKUIOnboardingAffiliationCirclesViewController" hasInstanceMethod:@"_completeDeletionForCircleAtIndex:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"SKUIOnboardingAffiliationCirclesViewController" hasInstanceVariable:@"_affiliationItems" withType:"NSMutableArray"];
  [v3 validateClass:@"SKUIOnboardingAffiliationItem"];
  [v3 validateClass:@"SKUIOnboardingAffiliationItem" hasInstanceMethod:@"userAffinityCount" withFullSignature:{"q", 0}];
}

- (void)_accessibilityDeleteCircle:(id)a3
{
  v3 = a3;
  AXPerformSafeBlock();
  if (v3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilitySKUILocalizedString(@"removed.genre.circle");
    v6 = [v3 accessibilityLabel];
    v7 = [v4 stringWithFormat:v5, v6];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
  }
}

void __67__SKUIPhysicalCirclesViewAccessibility__accessibilityDeleteCircle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 _completeDeletionForCircleAtIndex:{objc_msgSend(*(a1 + 32), "_accessibilityIndexOfCircle:", *(a1 + 40))}];
}

- (void)_accessibilityActivateCircle:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

void __69__SKUIPhysicalCirclesViewAccessibility__accessibilityActivateCircle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 circleView:*(a1 + 32) didTapCircleAtIndex:{objc_msgSend(*(a1 + 32), "_accessibilityIndexOfCircle:", *(a1 + 40))}];
}

- (id)_accessibilityValueForCircle:(id)a3
{
  v4 = a3;
  v5 = [(SKUIPhysicalCirclesViewAccessibility *)self safeValueForKey:@"delegate"];
  v6 = [v5 safeValueForKey:@"_affiliationItems"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 objectAtIndex:{-[SKUIPhysicalCirclesViewAccessibility _accessibilityIndexOfCircle:](self, "_accessibilityIndexOfCircle:", v4)}];
  v9 = [v8 safeIntegerForKey:@"userAffinityCount"];

  v10 = [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityValueForAffinityCount:v9];

  return v10;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 safeValueForKey:@"representedObject"];

  return v6;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v3 = [v2 count];

  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityForceTranslationForScrollDirection:?];
  v6 = v5;
  v8 = v7;
  v9 = [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __60__SKUIPhysicalCirclesViewAccessibility_accessibilityScroll___block_invoke;
  v12[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
  v12[4] = v6;
  v12[5] = v8;
  [v9 enumerateObjectsUsingBlock:v12];

  LODWORD(v9) = *MEMORY[0x29EDC7EF0];
  v10 = [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityPushingScrollStatusInDirection:a3];
  UIAccessibilityPostNotification(v9, v10);

  return 1;
}

void __60__SKUIPhysicalCirclesViewAccessibility_accessibilityScroll___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v3 = v4;
  AXPerformSafeBlock();
}

- (id)_accessibilityPushingScrollStatusInDirection:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilitySKUILocalizedString(off_29F3043D0[a3 - 1]);
  }

  return v4;
}

- (void)_reloadDidFinish
{
  v2.receiver = self;
  v2.super_class = SKUIPhysicalCirclesViewAccessibility;
  [(SKUIPhysicalCirclesViewAccessibility *)&v2 _reloadDidFinish];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_accessibilityCircleBodies
{
  objc_opt_class();
  v3 = [(SKUIPhysicalCirclesViewAccessibility *)self safeValueForKey:@"_circleBodies"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (int64_t)_accessibilityIndexOfCircle:(id)a3
{
  v4 = a3;
  v5 = [(SKUIPhysicalCirclesViewAccessibility *)self _accessibilityCircleBodies];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __68__SKUIPhysicalCirclesViewAccessibility__accessibilityIndexOfCircle___block_invoke;
  v9[3] = &unk_29F3043B0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

BOOL __68__SKUIPhysicalCirclesViewAccessibility__accessibilityIndexOfCircle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safeValueForKey:@"representedObject"];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_accessibilityValueForAffinityCount:(int64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilitySKUILocalizedString(off_29F3043F0[a3]);
  }

  return v4;
}

- (CGPoint)_accessibilityForceTranslationForScrollDirection:(int64_t)a3
{
  v3 = *MEMORY[0x29EDB90B8];
  v4 = *(MEMORY[0x29EDB90B8] + 8);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = -4400.0;
    }

    else if (a3 == 4)
    {
      v4 = 4400.0;
    }
  }

  else if (a3 == 1)
  {
    v3 = 4400.0;
  }

  else if (a3 == 2)
  {
    v3 = -4400.0;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

@end