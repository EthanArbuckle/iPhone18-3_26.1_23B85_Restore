@interface CKUIBehaviorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)shouldUseDynamicScrolling;
- (BOOL)shouldUseRotisserieScrolling;
@end

@implementation CKUIBehaviorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKUIBehavior"];
  [validationsCopy validateClass:@"CKUIBehavior" hasInstanceMethod:@"shouldUseDynamicScrolling" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKUIBehavior" hasInstanceMethod:@"shouldUseRotisserieScrolling" withFullSignature:{"B", 0}];
}

- (BOOL)shouldUseDynamicScrolling
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKUIBehaviorAccessibility;
  return [(CKUIBehaviorAccessibility *)&v4 shouldUseDynamicScrolling];
}

- (BOOL)shouldUseRotisserieScrolling
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKUIBehaviorAccessibility;
  return [(CKUIBehaviorAccessibility *)&v4 shouldUseRotisserieScrolling];
}

@end