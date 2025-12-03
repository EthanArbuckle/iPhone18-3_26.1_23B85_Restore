@interface ClimateVerticalStatusBarView
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation ClimateVerticalStatusBarView

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_100065140(contextCopy);

  return self & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_100065260(contextCopy, coordinatorCopy);
}

@end