@interface SeymourUI_WorkoutMediaTagsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SeymourUI_WorkoutMediaTagsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.WorkoutMediaTagsCell" hasInstanceMethod:@"tagsLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SeymourUI.WorkoutMediaTagsCell" hasInstanceMethod:@"accessibilityMediaTags" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = SeymourUI_WorkoutMediaTagsCellAccessibility;
  [(SeymourUI_WorkoutMediaTagsCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v16 = 0;
  objc_opt_class();
  v3 = [(SeymourUI_WorkoutMediaTagsCellAccessibility *)self safeValueForKey:@"tagsLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(SeymourUI_WorkoutMediaTagsCellAccessibility *)self safeArrayForKey:@"accessibilityMediaTags"];
  v6 = _accessibilityDescriptionForMediaTags(v5);
  text = [v4 text];

  if (text)
  {
    text2 = [v4 text];
    v10 = _accessibilityReplaceStylsticBulletsForSpeaking(text2, v9);
  }

  else
  {
    v10 = &stru_2A22D9E70;
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __89__SeymourUI_WorkoutMediaTagsCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v13[3] = &unk_29F2F6780;
  v14 = v10;
  v15 = v6;
  v11 = v6;
  v12 = v10;
  [v4 _setAccessibilityLabelBlock:v13];
}

@end