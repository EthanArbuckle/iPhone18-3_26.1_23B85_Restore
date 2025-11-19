@interface SBInCallPresentationSessionAccessibility
- (void)_setNonModalPresentationActive:(BOOL)a3;
@end

@implementation SBInCallPresentationSessionAccessibility

- (void)_setNonModalPresentationActive:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SBInCallPresentationSessionAccessibility;
  [(SBInCallPresentationSessionAccessibility *)&v3 _setNonModalPresentationActive:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __75__SBInCallPresentationSessionAccessibility__setNonModalPresentationActive___block_invoke()
{
  v0 = [MEMORY[0x29EDBDFA8] server];
  [v0 didPotentiallyDismissNonExclusiveSystemUI];
}

@end