@interface THGuidedPanPageTarget
+ (id)guidedPanTargetForPageAtLocation:(id)location controller:(id)controller;
+ (id)p_childPageLayoutAtCenterFromLayout:(id)layout visibleUnscaledCenter:(CGPoint)center;
- (CGRect)guidedPanTargetUnscaledPageRect;
- (CGRect)guidedPanTargetUnscaledRect;
- (CGRect)unscaledFrame;
- (THGuidedPanPageTarget)initWithLayout:(id)layout targeted:(BOOL)targeted;
- (double)viewScaleWithController:(id)controller;
- (id)guidedPanTargetUpdatedTargetForLocation:(id)location withController:(id)controller;
- (void)dealloc;
- (void)guidedPanTargetAddWellsToArray:(id)array withController:(id)controller;
@end

@implementation THGuidedPanPageTarget

- (THGuidedPanPageTarget)initWithLayout:(id)layout targeted:(BOOL)targeted
{
  v13.receiver = self;
  v13.super_class = THGuidedPanPageTarget;
  v6 = [(THGuidedPanPageTarget *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_targeted = targeted;
    [layout frameInRoot];
    v7->_unscaledFrame.origin.x = v8;
    v7->_unscaledFrame.origin.y = v9;
    v7->_unscaledFrame.size.width = v10;
    v7->_unscaledFrame.size.height = v11;
    v7->_layout = layout;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THGuidedPanPageTarget;
  [(THGuidedPanPageTarget *)&v3 dealloc];
}

- (CGRect)guidedPanTargetUnscaledRect
{
  x = self->_unscaledFrame.origin.x;
  y = self->_unscaledFrame.origin.y;
  width = self->_unscaledFrame.size.width;
  height = self->_unscaledFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)guidedPanTargetUnscaledPageRect
{
  x = self->_unscaledFrame.origin.x;
  y = self->_unscaledFrame.origin.y;
  width = self->_unscaledFrame.size.width;
  height = self->_unscaledFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)viewScaleWithController:(id)controller
{
  delegate = [controller delegate];

  [delegate guidedPanZoomedOutViewScale];
  return result;
}

- (void)guidedPanTargetAddWellsToArray:(id)array withController:(id)controller
{
  if (self->_targeted)
  {
    v6 = [(THPageLayout *)self->_layout previousTargetFromLayout:self->_layout column:0];
    if (v6)
    {
      v7 = v6;
      [v6 guidedPanTargetUnscaledRect];
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
      MidX = CGRectGetMidX(v33);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      MinY = CGRectGetMinY(v34);
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v36.size.height = CGRectGetHeight(v35);
      v36.size.width = 0.0;
      v36.origin.x = MidX;
      v36.origin.y = MinY;
      v37 = CGRectInset(v36, -50.0, 0.0);
      v14 = v37.origin.x;
      v15 = v37.origin.y;
      v16 = v37.size.width;
      v17 = v37.size.height;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v18 = [(THGuidedPanPageTarget *)self p_wellForTarget:v7 wellRect:1 blendDistance:v14 prev:v15, v16, v17, fmax(CGRectGetWidth(v37), 300.0)];
      [v18 setIdentifier:@"prev"];
      [array addObject:v18];
    }

    firstChildTarget = [(THPageLayout *)self->_layout firstChildTarget];
    if (firstChildTarget || (firstChildTarget = [(THPageLayout *)self->_layout nextTargetFromLayout:self->_layout column:0]) != 0)
    {
      v20 = firstChildTarget;
      [firstChildTarget guidedPanTargetUnscaledRect];
      v21 = v38.origin.x;
      v22 = v38.origin.y;
      v23 = v38.size.width;
      v24 = v38.size.height;
      v25 = CGRectGetMidX(v38);
      v39.origin.x = v21;
      v39.origin.y = v22;
      v39.size.width = v23;
      v39.size.height = v24;
      v26 = CGRectGetMinY(v39);
      v40.origin.x = v21;
      v40.origin.y = v22;
      v40.size.width = v23;
      v40.size.height = v24;
      v41.size.height = CGRectGetHeight(v40);
      v41.size.width = 0.0;
      v41.origin.x = v25;
      v41.origin.y = v26;
      v42 = CGRectInset(v41, -50.0, 0.0);
      v27 = v42.origin.x;
      v28 = v42.origin.y;
      v29 = v42.size.width;
      v30 = v42.size.height;
      v42.origin.x = v21;
      v42.origin.y = v22;
      v42.size.width = v23;
      v42.size.height = v24;
      v31 = [(THGuidedPanPageTarget *)self p_wellForTarget:v20 wellRect:0 blendDistance:v27 prev:v28, v29, v30, fmax(CGRectGetWidth(v42), 300.0)];
      [v31 setIdentifier:@"next"];

      [array addObject:v31];
    }
  }
}

+ (id)p_childPageLayoutAtCenterFromLayout:(id)layout visibleUnscaledCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  children = [layout children];
  v8 = [children countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v21;
  v12 = 1.79769313e308;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(children);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      v15 = TSUDynamicCast();
      if (!v15)
      {
        v15 = [self p_childPageLayoutAtCenterFromLayout:v14 visibleUnscaledCenter:{x, y}];
        if (!v15)
        {
          continue;
        }
      }

      v16 = v15;
      [v15 frameInRoot];
      v17 = vabdd_f64(CGRectGetMidX(v25), x);
      if (v17 < v12 || v10 == 0)
      {
        v12 = v17;
        v10 = v16;
      }
    }

    v9 = [children countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v9);
  return v10;
}

+ (id)guidedPanTargetForPageAtLocation:(id)location controller:(id)controller
{
  v6 = [objc_msgSend(objc_msgSend(controller "interactiveCanvasController")];
  [location unscaledPoint];
  result = [self p_childPageLayoutAtCenterFromLayout:v6 visibleUnscaledCenter:?];
  if (result)
  {
    v8 = [[THGuidedPanPageTarget alloc] initWithLayout:result targeted:0];

    return v8;
  }

  return result;
}

- (id)guidedPanTargetUpdatedTargetForLocation:(id)location withController:(id)controller
{
  v6 = objc_opt_class();
  v7 = [objc_msgSend(objc_msgSend(controller "interactiveCanvasController")];
  [location unscaledPoint];
  result = [v6 p_childPageLayoutAtCenterFromLayout:v7 visibleUnscaledCenter:?];
  if (result)
  {
    v9 = [objc_alloc(objc_opt_class()) initWithLayout:result targeted:0];

    return v9;
  }

  return result;
}

- (CGRect)unscaledFrame
{
  x = self->_unscaledFrame.origin.x;
  y = self->_unscaledFrame.origin.y;
  width = self->_unscaledFrame.size.width;
  height = self->_unscaledFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end