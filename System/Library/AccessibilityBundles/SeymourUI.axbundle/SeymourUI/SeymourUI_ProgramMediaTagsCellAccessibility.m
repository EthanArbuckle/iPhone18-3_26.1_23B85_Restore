@interface SeymourUI_ProgramMediaTagsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SeymourUI_ProgramMediaTagsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.ProgramMediaTagsCell" hasInstanceMethod:@"accessibilityMediaTags" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SeymourUI.ProgramMediaTagsCell" hasInstanceMethod:@"tagsTextLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SeymourUI_ProgramMediaTagsCellAccessibility *)self safeValueForKey:@"tagsTextLabel"];
  v4 = [(SeymourUI_ProgramMediaTagsCellAccessibility *)self safeArrayForKey:@"accessibilityMediaTags"];
  v5 = _accessibilityDescriptionForMediaTags(v4);
  v6 = [v3 accessibilityLabel];

  if (v6)
  {
    v7 = [v3 accessibilityLabel];
    v9 = _accessibilityReplaceStylsticBulletsForSpeaking(v7, v8);
  }

  else
  {
    v9 = &stru_2A22D9E70;
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end