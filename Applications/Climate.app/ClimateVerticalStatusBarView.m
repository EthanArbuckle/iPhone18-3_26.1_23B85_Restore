@interface ClimateVerticalStatusBarView
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation ClimateVerticalStatusBarView

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100065140(v4);

  return self & 1;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100065260(v6, v7);
}

@end