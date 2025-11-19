@interface NPHCellularSetupBridgeBuddyUIPrincipalClass
- (NPHCellularSetupBridgeBuddyUIPrincipalClass)init;
- (void)miniFlowStepComplete:(id)a3;
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

    v4 = [(NPHCellularSetupBridgeBuddyUIPrincipalClass *)v2 cellularSetupViewController];
    [v4 setMiniFlowDelegate:v2];
  }

  return v2;
}

- (void)miniFlowStepComplete:(id)a3
{
  v4 = [(NPHCellularSetupBridgeBuddyUIPrincipalClass *)self delegate];
  [v4 buddyControllerDone:self];
}

@end