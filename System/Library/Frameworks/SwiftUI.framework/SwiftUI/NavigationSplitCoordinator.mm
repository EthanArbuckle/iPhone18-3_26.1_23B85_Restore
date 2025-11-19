@interface NavigationSplitCoordinator
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (void)_splitViewController:(id)a3 didChangeFromDisplayMode:(int64_t)a4 toDisplayMode:(int64_t)a5;
@end

@implementation NavigationSplitCoordinator

- (void)_splitViewController:(id)a3 didChangeFromDisplayMode:(int64_t)a4 toDisplayMode:(int64_t)a5
{
  v6 = a3;

  specialized NavigationSplitSidebarStateMachine.splitViewController(_:didChangeTo:)(a5);
}

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  v5 = a3;

  v6 = specialized NavigationSplitCoordinator.splitViewController(_:displayModeForExpandingToProposedDisplayMode:)(a4);

  return v6;
}

@end