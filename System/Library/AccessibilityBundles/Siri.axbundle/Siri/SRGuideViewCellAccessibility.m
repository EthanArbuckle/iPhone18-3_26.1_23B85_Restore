@interface SRGuideViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SRGuideViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SRGuideViewCell" hasInstanceVariable:@"_nameLabel" withType:"SiriSharedUIContentLabel"];
  [v3 validateClass:@"SRGuideViewCell" hasInstanceVariable:@"_tagPhraseLabel" withType:"SiriSharedUIContentLabel"];
}

- (id)accessibilityLabel
{
  v2 = [(SRGuideViewCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SRGuideViewCellAccessibility *)self safeValueForKey:@"_tagPhraseLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end