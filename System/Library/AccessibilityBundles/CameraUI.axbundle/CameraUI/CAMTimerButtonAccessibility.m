@interface CAMTimerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)startExpansionWithProposedFrame:(CGRect)a3;
@end

@implementation CAMTimerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMTimerButton" hasInstanceMethod:@"duration" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMTimerButton" hasInstanceMethod:@"setDuration:animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"CAMExpandableMenuButton" hasInstanceMethod:@"startExpansionWithProposedFrame:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"CAMTimerButton" isKindOfClass:@"CAMExpandableMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMTimerButtonAccessibility *)self safeValueForKey:@"duration"];
    v4 = [v3 integerValue];

    v5 = 3;
    if (v4 != 1)
    {
      v5 = 1;
    }

    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __52__CAMTimerButtonAccessibility_accessibilityActivate__block_invoke;
    v11 = &unk_29F2ACC58;
    if (v4 == 3)
    {
      v5 = 0;
    }

    v12 = self;
    v13 = v5;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMTimerButtonAccessibility;
    return [(CAMTimerButtonAccessibility *)&v7 accessibilityActivate];
  }
}

void __52__CAMTimerButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDuration:*(a1 + 40) animated:1];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMTimerButtonAccessibility *)self safeValueForKey:@"duration"];
  v3 = [v2 integerValue];

  return accessibilityStringForTimeDuration(v3, v4);
}

- (void)startExpansionWithProposedFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CAMTimerButtonAccessibility;
  [(CAMTimerButtonAccessibility *)&v5 startExpansionWithProposedFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  v4 = [(CAMTimerButtonAccessibility *)self safeArrayForKey:@"_menuItems"];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_16];
}

void __63__CAMTimerButtonAccessibility_startExpansionWithProposedFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __63__CAMTimerButtonAccessibility_startExpansionWithProposedFrame___block_invoke_2;
  v5[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v5[4] = a3;
  [v4 _setAccessibilityLabelBlock:v5];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMTimerButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMTimerButtonAccessibility *)&v3 accessibilityTraits];
}

@end