@interface RoutePlanningTransitionContext
- (RoutePlanningTransitionContext)initWithFullTableHeight:(double)height initiatedFromFullLayout:(BOOL)layout withInitialOffsetY:(double)y heightToFrame:(double)frame originToFrameHandler:(id)handler;
- (double)currentFrameOrigin;
- (id)description;
@end

@implementation RoutePlanningTransitionContext

- (double)currentFrameOrigin
{
  originToFrameHandler = [(RoutePlanningTransitionContext *)self originToFrameHandler];
  if (originToFrameHandler)
  {
    originToFrameHandler2 = [(RoutePlanningTransitionContext *)self originToFrameHandler];
    v5 = originToFrameHandler2[2]();
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

- (RoutePlanningTransitionContext)initWithFullTableHeight:(double)height initiatedFromFullLayout:(BOOL)layout withInitialOffsetY:(double)y heightToFrame:(double)frame originToFrameHandler:(id)handler
{
  layoutCopy = layout;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = RoutePlanningTransitionContext;
  v13 = [(RoutePlanningTransitionContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(RoutePlanningTransitionContext *)v13 setTableViewHeightForFullLayout:height];
    [(RoutePlanningTransitionContext *)v14 setHeightToFrame:frame];
    [(RoutePlanningTransitionContext *)v14 setInitialOffsetY:y];
    [(RoutePlanningTransitionContext *)v14 setInitiatedFromFullLayout:layoutCopy];
    [(RoutePlanningTransitionContext *)v14 setOriginToFrameHandler:handlerCopy];
  }

  return v14;
}

@end