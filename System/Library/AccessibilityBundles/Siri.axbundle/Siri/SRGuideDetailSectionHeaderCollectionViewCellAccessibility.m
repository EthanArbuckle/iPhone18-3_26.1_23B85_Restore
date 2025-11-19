@interface SRGuideDetailSectionHeaderCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SRGuideDetailSectionHeaderCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SRGuideDetailSectionHeaderCollectionViewCell" hasInstanceVariable:@"_textContainerView" withType:"SiriUITextContainerView"];
  [v3 validateClass:@"SiriUITextContainerView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SRGuideDetailSectionHeaderCollectionViewCellAccessibility *)self safeValueForKey:@"_textContainerView"];
  v4 = [v3 safeValueForKey:@"text"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

@end