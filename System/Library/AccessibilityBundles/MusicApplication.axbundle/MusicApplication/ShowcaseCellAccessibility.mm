@interface ShowcaseCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ShowcaseCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.ShowcaseCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicApplication.ShowcaseCell" hasInstanceMethod:@"accessibilityHeadline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.ShowcaseCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.ShowcaseCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(ShowcaseCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"];
  v4 = [(ShowcaseCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityHeadline, accessibilityTitle, accessibilitySubtitle"];
  v5 = v4;
  if (v3)
  {
    v6 = accessibilityMusicLocalizedString(@"explicit");
    v7 = __UIAXStringForVariables();
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

@end