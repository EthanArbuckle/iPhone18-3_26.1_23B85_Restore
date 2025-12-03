@interface SBInCallPresentationSessionAccessibility
- (void)_setNonModalPresentationActive:(BOOL)active;
@end

@implementation SBInCallPresentationSessionAccessibility

- (void)_setNonModalPresentationActive:(BOOL)active
{
  v3.receiver = self;
  v3.super_class = SBInCallPresentationSessionAccessibility;
  [(SBInCallPresentationSessionAccessibility *)&v3 _setNonModalPresentationActive:active];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __75__SBInCallPresentationSessionAccessibility__setNonModalPresentationActive___block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  [v0 didPotentiallyDismissNonExclusiveSystemUI];
}

@end