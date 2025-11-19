@interface MUPlaceReviewPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MUPlaceReviewPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUPlaceReviewPlatterView" hasInstanceVariable:@"_reviewTextView" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUPlaceReviewPlatterView" hasInstanceVariable:@"_userLabel" withType:"UIView<MULabelViewProtocol>"];
  [v3 validateClass:@"MUPlaceReviewPlatterView" hasInstanceVariable:@"_viewModel" withType:"MUPlaceReviewViewModel"];
}

- (id)accessibilityLabel
{
  v3 = [(MUPlaceReviewPlatterViewAccessibility *)self safeValueForKey:@"_viewModel"];
  [v3 safeFloatForKey:@"normalizedScore"];
  v5 = round(v4 + v4) * 0.5;
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityLocalizedString(@"stars.rating");
  v8 = [v6 localizedStringWithFormat:v7, *&v5];

  v9 = [(MUPlaceReviewPlatterViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_userLabel"];
  v12 = [(MUPlaceReviewPlatterViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_reviewTextView"];
  v10 = __UIAXStringForVariables();

  return v10;
}

@end