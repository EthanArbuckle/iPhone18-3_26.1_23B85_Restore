@interface NPHCellularSetupBridgeBuddyUIPrincipalClass
- (NPHCellularSetupBridgeBuddyUIPrincipalClass)init;
- (void)miniFlowStepComplete:(id)complete;
@end

@implementation NPHCellularSetupBridgeBuddyUIPrincipalClass

- (NPHCellularSetupBridgeBuddyUIPrincipalClass)init
{
  v6.receiver = self;
  v6.super_class = NPHCellularSetupBridgeBuddyUIPrincipalClass;
  v2 = [(NPHCellularSetupBridgeBuddyUIPrincipalClass *)&v6 init];
  if (v2)
  {
    v3 = [[NPHCellularSetupViewController alloc] initWithConfiguration:2];
    [(NPHCellularSetupBridgeBuddyUIPrincipalClass *)v2 setCellularSetupViewController:v3];

    cellularSetupViewController = [(NPHCellularSetupBridgeBuddyUIPrincipalClass *)v2 cellularSetupViewController];
    [cellularSetupViewController setMiniFlowDelegate:v2];
  }

  return v2;
}

- (void)miniFlowStepComplete:(id)complete
{
  delegate = [(NPHCellularSetupBridgeBuddyUIPrincipalClass *)self delegate];
  [delegate buddyControllerDone:self];
}

@end