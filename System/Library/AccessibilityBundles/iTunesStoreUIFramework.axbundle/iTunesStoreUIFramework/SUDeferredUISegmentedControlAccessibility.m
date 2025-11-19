@interface SUDeferredUISegmentedControlAccessibility
- (void)_commitDeferredInterfaceUpdates;
@end

@implementation SUDeferredUISegmentedControlAccessibility

- (void)_commitDeferredInterfaceUpdates
{
  v2.receiver = self;
  v2.super_class = SUDeferredUISegmentedControlAccessibility;
  [(SUDeferredUISegmentedControlAccessibility *)&v2 _commitDeferredInterfaceUpdates];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end