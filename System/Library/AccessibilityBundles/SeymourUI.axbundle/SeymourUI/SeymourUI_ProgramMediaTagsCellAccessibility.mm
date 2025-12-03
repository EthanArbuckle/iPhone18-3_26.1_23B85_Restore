@interface SeymourUI_ProgramMediaTagsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SeymourUI_ProgramMediaTagsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.ProgramMediaTagsCell" hasInstanceMethod:@"accessibilityMediaTags" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SeymourUI.ProgramMediaTagsCell" hasInstanceMethod:@"tagsTextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SeymourUI_ProgramMediaTagsCellAccessibility *)self safeValueForKey:@"tagsTextLabel"];
  v4 = [(SeymourUI_ProgramMediaTagsCellAccessibility *)self safeArrayForKey:@"accessibilityMediaTags"];
  v5 = _accessibilityDescriptionForMediaTags(v4);
  accessibilityLabel = [v3 accessibilityLabel];

  if (accessibilityLabel)
  {
    accessibilityLabel2 = [v3 accessibilityLabel];
    v9 = _accessibilityReplaceStylsticBulletsForSpeaking(accessibilityLabel2, v8);
  }

  else
  {
    v9 = &stru_2A22D9E70;
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end