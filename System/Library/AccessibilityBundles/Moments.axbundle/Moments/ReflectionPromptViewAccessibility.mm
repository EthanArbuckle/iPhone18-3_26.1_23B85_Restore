@interface ReflectionPromptViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation ReflectionPromptViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MomentsUIService.ReflectionPromptView" hasSwiftField:@"categoryLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.ReflectionPromptView" hasSwiftField:@"reflectionPrompt" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MomentsUIService.ReflectionPromptView" hasInstanceMethod:@"updatePromptIndex:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(ReflectionPromptViewAccessibility *)self safeSwiftValueForKey:@"categoryLabel"];
  v4 = [(ReflectionPromptViewAccessibility *)self safeSwiftValueForKey:@"reflectionPrompt"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityCustomActions
{
  v9.receiver = self;
  v9.super_class = ReflectionPromptViewAccessibility;
  accessibilityCustomActions = [(ReflectionPromptViewAccessibility *)&v9 accessibilityCustomActions];
  array = [accessibilityCustomActions mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v5 = objc_alloc(MEMORY[0x29EDC78E0]);
  v6 = accessibilityJurassicLocalizedString(@"shuffle.reflection");
  v7 = [v5 initWithName:v6 target:self selector:sel__axShuffle_];
  [array addObject:v7];

  return array;
}

void __48__ReflectionPromptViewAccessibility__axShuffle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updatePromptIndex:0];
  v2 = *MEMORY[0x29EDC7ED8];
  v3 = *(a1 + 32);

  UIAccessibilityPostNotification(v2, v3);
}

@end