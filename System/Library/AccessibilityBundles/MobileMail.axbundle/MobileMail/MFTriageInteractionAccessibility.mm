@interface MFTriageInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4;
@end

@implementation MFTriageInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFTriageInteraction" hasInstanceMethod:@"swipeActionWithPreparation:completion:" withFullSignature:{"@", "@?", "@?", 0}];
  [v3 validateClass:@"MFTriageInteraction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)swipeActionWithPreparation:(id)a3 completion:(id)a4
{
  v8.receiver = self;
  v8.super_class = MFTriageInteractionAccessibility;
  v5 = [(MFTriageInteractionAccessibility *)&v8 swipeActionWithPreparation:a3 completion:a4];
  v6 = [(MFTriageInteractionAccessibility *)self safeStringForKey:@"title"];
  [v5 setAccessibilityLabel:v6];

  return v5;
}

@end