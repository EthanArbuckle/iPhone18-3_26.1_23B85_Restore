@interface GKBubbleFlowAnimatorAccessibility
- (void)_finishTransitionWithInfo:(id)info;
@end

@implementation GKBubbleFlowAnimatorAccessibility

- (void)_finishTransitionWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = GKBubbleFlowAnimatorAccessibility;
  infoCopy = info;
  [(GKBubbleFlowAnimatorAccessibility *)&v5 _finishTransitionWithInfo:infoCopy];
  v4 = [infoCopy safeBoolForKey:{@"animated", v5.receiver, v5.super_class}];

  if (v4)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end