@interface SRGuideViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SRGuideViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SRGuideViewCell" hasInstanceVariable:@"_nameLabel" withType:"SiriSharedUIContentLabel"];
  [validationsCopy validateClass:@"SRGuideViewCell" hasInstanceVariable:@"_tagPhraseLabel" withType:"SiriSharedUIContentLabel"];
}

- (id)accessibilityLabel
{
  v2 = [(SRGuideViewCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(SRGuideViewCellAccessibility *)self safeValueForKey:@"_tagPhraseLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end