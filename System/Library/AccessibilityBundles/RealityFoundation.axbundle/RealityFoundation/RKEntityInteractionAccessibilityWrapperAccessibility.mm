@interface RKEntityInteractionAccessibilityWrapperAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)didFire;
@end

@implementation RKEntityInteractionAccessibilityWrapperAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RealityFoundation.RKEntityInteractionAccessibilityWrapper" hasInstanceMethod:@"didFire" withFullSignature:{"v", 0}];
  [v3 validateClass:@"RealityFoundation.RKEntityInteractionAccessibilityWrapper" hasInstanceMethod:@"accessibilityDescription" withFullSignature:{"@", 0}];
}

- (void)didFire
{
  v4.receiver = self;
  v4.super_class = RKEntityInteractionAccessibilityWrapperAccessibility;
  [(RKEntityInteractionAccessibilityWrapperAccessibility *)&v4 didFire];
  v3 = [(RKEntityInteractionAccessibilityWrapperAccessibility *)self safeStringForKey:@"accessibilityDescription"];
  [v3 _accessibilityEnumerateDelayedDescriptionsWithBlock:&__block_literal_global_0];
}

void __63__RKEntityInteractionAccessibilityWrapperAccessibility_didFire__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AXPerformBlockOnMainThreadAfterDelay();
}

uint64_t __63__RKEntityInteractionAccessibilityWrapperAccessibility_didFire__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  UIAccessibilitySpeakOrQueueIfNeeded();

  return AXPerformBlockOnMainThreadAfterDelay();
}

@end