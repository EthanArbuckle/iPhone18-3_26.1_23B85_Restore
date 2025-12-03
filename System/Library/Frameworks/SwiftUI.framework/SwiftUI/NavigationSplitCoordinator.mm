@interface NavigationSplitCoordinator
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (void)_splitViewController:(id)controller didChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode;
@end

@implementation NavigationSplitCoordinator

- (void)_splitViewController:(id)controller didChangeFromDisplayMode:(int64_t)mode toDisplayMode:(int64_t)displayMode
{
  controllerCopy = controller;

  specialized NavigationSplitSidebarStateMachine.splitViewController(_:didChangeTo:)(displayMode);
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  controllerCopy = controller;

  v6 = specialized NavigationSplitCoordinator.splitViewController(_:displayModeForExpandingToProposedDisplayMode:)(mode);

  return v6;
}

@end