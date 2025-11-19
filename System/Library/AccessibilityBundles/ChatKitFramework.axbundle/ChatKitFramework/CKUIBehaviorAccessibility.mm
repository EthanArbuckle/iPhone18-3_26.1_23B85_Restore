@interface CKUIBehaviorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldUseDynamicScrolling;
- (BOOL)shouldUseRotisserieScrolling;
@end

@implementation CKUIBehaviorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKUIBehavior"];
  [v3 validateClass:@"CKUIBehavior" hasInstanceMethod:@"shouldUseDynamicScrolling" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKUIBehavior" hasInstanceMethod:@"shouldUseRotisserieScrolling" withFullSignature:{"B", 0}];
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