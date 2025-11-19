@interface CSLPRFWatchChoiceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CSLPRFWatchChoiceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSLPRFWatchChoiceView" hasInstanceVariable:@"_button" withType:"CSLPRFAppViewChoiceButton"];
  [v3 validateClass:@"CSLPRFAppViewChoiceButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"CSLPRFWatchChoiceView" hasInstanceMethod:@"choice" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CSLPRFWatchChoiceViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  v4 = v3;
  if (!v3)
  {
    v6 = [(CSLPRFWatchChoiceViewAccessibility *)self safeIntegerForKey:@"choice"];
    if (v6 == 1)
    {
      v7 = @"CHOICE_GRID_VIEW";
    }

    else
    {
      if (v6 != 2)
      {
LABEL_8:
        v10.receiver = self;
        v10.super_class = CSLPRFWatchChoiceViewAccessibility;
        v5 = [(CSLPRFWatchChoiceViewAccessibility *)&v10 accessibilityLabel];
        goto LABEL_9;
      }

      v7 = @"CHOICE_LIST_VIEW";
    }

    v8 = accessibilityLocalizedString(v7);
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v5 = [v3 accessibilityLabel];
LABEL_9:
  v8 = v5;
LABEL_10:

  return v8;
}

uint64_t __56__CSLPRFWatchChoiceViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)accessibilityTraits
{
  v10 = 0;
  objc_opt_class();
  v3 = [(CSLPRFWatchChoiceViewAccessibility *)self safeValueForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 isSelected];
    v6 = [v4 accessibilityTraits];
    v7 = v6;
    if (v5)
    {
      v7 = *MEMORY[0x29EDC7FC0] | v6;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSLPRFWatchChoiceViewAccessibility;
    v7 = [(CSLPRFWatchChoiceViewAccessibility *)&v9 accessibilityTraits];
  }

  return v7;
}

@end