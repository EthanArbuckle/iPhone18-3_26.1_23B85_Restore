@interface THGuidedPanPageWell
- (id)contentAnimationToFocalPointFromLocation:(id)a3 withMovement:(CGPoint)a4 velocity:(CGPoint)a5 controller:(id)a6;
@end

@implementation THGuidedPanPageWell

- (id)contentAnimationToFocalPointFromLocation:(id)a3 withMovement:(CGPoint)a4 velocity:(CGPoint)a5 controller:(id)a6
{
  [-[THGuidedPanPageWell guidedPanTargetWithController:location:](self guidedPanTargetWithController:a6 location:{a3, a4.x, a4.y, a5.x, a5.y), "guidedPanTargetUnscaledRect"}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([a6 delegate])
  {
    [objc_msgSend(a6 "delegate")];
  }

  else
  {
    [a6 viewScaleForUnscaledRect:1 forPage:{v9, v11, v13, v15}];
  }

  TSDCenterOfRect();
  v16 = [TSDContentLocation contentLocationWithUnscaledPoint:"contentLocationWithUnscaledPoint:viewScale:" viewScale:?];
  v17 = +[TSDContentPathAnimation animation];
  [v17 setContentLocations:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", a3, v16, 0)}];
  [v17 setTimingFunction:{+[CAMediaTimingFunction functionWithName:](CAMediaTimingFunction, "functionWithName:", kCAMediaTimingFunctionEaseOut)}];
  v18 = [NSNumber numberWithFloat:0.0];
  LODWORD(v19) = 1.0;
  [v17 setKeyTimes:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v18, +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v19), 0)}];
  [v17 setDuration:0.300000012];
  return v17;
}

@end