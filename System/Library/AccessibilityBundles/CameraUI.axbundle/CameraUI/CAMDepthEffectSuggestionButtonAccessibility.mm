@interface CAMDepthEffectSuggestionButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityValue;
@end

@implementation CAMDepthEffectSuggestionButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDepthEffectSuggestionButton" hasInstanceMethod:@"mode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMDepthEffectSuggestionButton" hasInstanceMethod:@"setMode:animated:" withFullSignature:{"v", "q", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(CAMDepthEffectSuggestionButtonAccessibility *)self safeIntegerForKey:@"mode"];
  if ((v2 - 1) < 2)
  {
    v3 = @"depth.on";
LABEL_5:
    v5 = accessibilityCameraUILocalizedString(v3);
    goto LABEL_9;
  }

  v4 = v2;
  if (!v2)
  {
    v3 = @"depth.off";
    goto LABEL_5;
  }

  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(CAMDepthEffectSuggestionButtonAccessibility *)v4 accessibilityValue];
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDepthEffectSuggestionButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDepthEffectSuggestionButtonAccessibility *)&v3 accessibilityTraits];
}

void __68__CAMDepthEffectSuggestionButtonAccessibility_accessibilityActivate__block_invoke()
{
  v0 = __UIAccessibilitySafeClass();
  [v0 sendActionsForControlEvents:64];
}

- (void)accessibilityValue
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:self];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_29BC67000, a2, OS_LOG_TYPE_ERROR, "Missing value for depth effect suggestion button mode: %@", &v4, 0xCu);
}

@end