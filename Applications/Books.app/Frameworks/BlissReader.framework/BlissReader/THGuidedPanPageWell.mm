@interface THGuidedPanPageWell
- (id)contentAnimationToFocalPointFromLocation:(id)location withMovement:(CGPoint)movement velocity:(CGPoint)velocity controller:(id)controller;
@end

@implementation THGuidedPanPageWell

- (id)contentAnimationToFocalPointFromLocation:(id)location withMovement:(CGPoint)movement velocity:(CGPoint)velocity controller:(id)controller
{
  [-[THGuidedPanPageWell guidedPanTargetWithController:location:](self guidedPanTargetWithController:controller location:{location, movement.x, movement.y, velocity.x, velocity.y), "guidedPanTargetUnscaledRect"}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([controller delegate])
  {
    [objc_msgSend(controller "delegate")];
  }

  else
  {
    [controller viewScaleForUnscaledRect:1 forPage:{v9, v11, v13, v15}];
  }

  TSDCenterOfRect();
  v16 = [TSDContentLocation contentLocationWithUnscaledPoint:"contentLocationWithUnscaledPoint:viewScale:" viewScale:?];
  v17 = +[TSDContentPathAnimation animation];
  [v17 setContentLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", location, v16, 0)}];
  [v17 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseOut)}];
  v18 = [NSNumber numberWithFloat:0.0];
  LODWORD(v19) = 1.0;
  [v17 setKeyTimes:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v18, +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v19), 0)}];
  [v17 setDuration:0.300000012];
  return v17;
}

@end