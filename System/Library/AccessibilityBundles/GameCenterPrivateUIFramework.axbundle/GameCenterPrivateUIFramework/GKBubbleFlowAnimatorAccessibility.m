@interface GKBubbleFlowAnimatorAccessibility
- (void)_finishTransitionWithInfo:(id)a3;
@end

@implementation GKBubbleFlowAnimatorAccessibility

- (void)_finishTransitionWithInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKBubbleFlowAnimatorAccessibility;
  v3 = a3;
  [(GKBubbleFlowAnimatorAccessibility *)&v5 _finishTransitionWithInfo:v3];
  v4 = [v3 safeBoolForKey:{@"animated", v5.receiver, v5.super_class}];

  if (v4)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end