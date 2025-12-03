@interface CKSuggestedRepliesBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKSuggestedRepliesBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.CKSuggestedRepliesBalloonView" hasSwiftField:@"view" withSwiftType:"Optional<CKSuggestedRepliesView>"];
  [validationsCopy validateClass:@"ChatKit.CKSuggestedReplyButton"];
}

- (id)accessibilityLabel
{
  v3 = [(CKSuggestedRepliesBalloonViewAccessibility *)self safeSwiftValueForKey:@"view"];
  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_0];

  v8.receiver = self;
  v8.super_class = CKSuggestedRepliesBalloonViewAccessibility;
  accessibilityLabel = [(CKSuggestedRepliesBalloonViewAccessibility *)&v8 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

uint64_t __64__CKSuggestedRepliesBalloonViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_ChatkitCksugge_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end