@interface GAXUITabBarButtonOverride
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation GAXUITabBarButtonOverride

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v8 = +[GAXClient sharedInstance];
  serverMode = [v8 serverMode];

  if (serverMode == 2)
  {
    v10 = [(GAXUITabBarButtonOverride *)self safeValueForKey:@"bounds"];
    [v10 CGRectValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    v23.x = x;
    v23.y = y;
    v19 = CGRectContainsPoint(v24, v23);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = GAXUITabBarButtonOverride;
    v19 = [(GAXUITabBarButtonOverride *)&v22 pointInside:eventCopy withEvent:x, y];
  }

  v20 = v19;

  return v20;
}

@end