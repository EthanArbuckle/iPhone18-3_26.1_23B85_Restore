@interface MFTriageInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion;
@end

@implementation MFTriageInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFTriageInteraction" hasInstanceMethod:@"swipeActionWithPreparation:completion:" withFullSignature:{"@", "@?", "@?", 0}];
  [validationsCopy validateClass:@"MFTriageInteraction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)swipeActionWithPreparation:(id)preparation completion:(id)completion
{
  v8.receiver = self;
  v8.super_class = MFTriageInteractionAccessibility;
  v5 = [(MFTriageInteractionAccessibility *)&v8 swipeActionWithPreparation:preparation completion:completion];
  v6 = [(MFTriageInteractionAccessibility *)self safeStringForKey:@"title"];
  [v5 setAccessibilityLabel:v6];

  return v5;
}

@end