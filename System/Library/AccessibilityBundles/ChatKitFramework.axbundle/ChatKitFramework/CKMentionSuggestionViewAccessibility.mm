@interface CKMentionSuggestionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKMentionSuggestionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMentionSuggestionView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKMentionSuggestionView" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKMentionSuggestionViewAccessibility;
  [(CKMentionSuggestionViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKMentionSuggestionViewAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = accessibilityLocalizedString(@"group.mentions.collection");
  [v3 setAccessibilityLabel:v4];
}

@end