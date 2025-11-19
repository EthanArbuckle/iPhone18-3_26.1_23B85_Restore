@interface RoutePlanningTransitionContext
- (RoutePlanningTransitionContext)initWithFullTableHeight:(double)a3 initiatedFromFullLayout:(BOOL)a4 withInitialOffsetY:(double)a5 heightToFrame:(double)a6 originToFrameHandler:(id)a7;
- (double)currentFrameOrigin;
- (id)description;
@end

@implementation RoutePlanningTransitionContext

- (double)currentFrameOrigin
{
  v3 = [(RoutePlanningTransitionContext *)self originToFrameHandler];
  if (v3)
  {
    v4 = [(RoutePlanningTransitionContext *)self originToFrameHandler];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = RoutePlanningTransitionContext;
  v3 = [(RoutePlanningTransitionContext *)&v9 description];
  [(RoutePlanningTransitionContext *)self tableViewHeightForFullLayout];
  v5 = v4;
  [(RoutePlanningTransitionContext *)self heightToFrame];
  v7 = [NSString stringWithFormat:@"%@ (tableViewHeightForFullLayout: %#.5lf, heightToFrame: %#.5lf)", v3, v5, v6];

  return v7;
}

- (RoutePlanningTransitionContext)initWithFullTableHeight:(double)a3 initiatedFromFullLayout:(BOOL)a4 withInitialOffsetY:(double)a5 heightToFrame:(double)a6 originToFrameHandler:(id)a7
{
  v9 = a4;
  v12 = a7;
  v16.receiver = self;
  v16.super_class = RoutePlanningTransitionContext;
  v13 = [(RoutePlanningTransitionContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(RoutePlanningTransitionContext *)v13 setTableViewHeightForFullLayout:a3];
    [(RoutePlanningTransitionContext *)v14 setHeightToFrame:a6];
    [(RoutePlanningTransitionContext *)v14 setInitialOffsetY:a5];
    [(RoutePlanningTransitionContext *)v14 setInitiatedFromFullLayout:v9];
    [(RoutePlanningTransitionContext *)v14 setOriginToFrameHandler:v12];
  }

  return v14;
}

@end