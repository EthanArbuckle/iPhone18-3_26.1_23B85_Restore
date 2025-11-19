@interface TestCNUIUserActionContext
- (CNUIUserActionCurator)actionCurator;
- (CNUIUserActionDialRequestOpener)dialRequestOpener;
- (CNUIUserActionRecorder)actionRecorder;
- (CNUIUserActionURLOpener)urlOpener;
- (CNUIUserActionUserActivityOpener)userActivityOpener;
@end

@implementation TestCNUIUserActionContext

- (CNUIUserActionCurator)actionCurator
{
  [(TestCNUIUserActionContext *)self setActionExecutionWasAttemted:1];

  return [(TestCNUIUserActionContext *)self nilValue];
}

- (CNUIUserActionRecorder)actionRecorder
{
  [(TestCNUIUserActionContext *)self setActionExecutionWasAttemted:1];

  return [(TestCNUIUserActionContext *)self nilValue];
}

- (CNUIUserActionDialRequestOpener)dialRequestOpener
{
  [(TestCNUIUserActionContext *)self setActionExecutionWasAttemted:1];

  return [(TestCNUIUserActionContext *)self nilValue];
}

- (CNUIUserActionUserActivityOpener)userActivityOpener
{
  [(TestCNUIUserActionContext *)self setActionExecutionWasAttemted:1];

  return [(TestCNUIUserActionContext *)self nilValue];
}

- (CNUIUserActionURLOpener)urlOpener
{
  [(TestCNUIUserActionContext *)self setActionExecutionWasAttemted:1];

  return [(TestCNUIUserActionContext *)self nilValue];
}

@end