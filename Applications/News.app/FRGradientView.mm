@interface FRGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation FRGradientView

- (NSArray)colors
{
  layer = [(FRGradientView *)self layer];
  colors = [layer colors];

  return colors;
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = colorsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          cGColor = [v12 CGColor];
          [v5 addObject:cGColor];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  layer = [(FRGradientView *)self layer];
  [layer setColors:v14];
}

- (NSArray)locations
{
  layer = [(FRGradientView *)self layer];
  locations = [layer locations];

  return locations;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  layer = [(FRGradientView *)self layer];
  [layer setLocations:locationsCopy];
}

- (CGPoint)startPoint
{
  layer = [(FRGradientView *)self layer];
  [layer startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(FRGradientView *)self layer];
  [layer setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  layer = [(FRGradientView *)self layer];
  [layer endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(FRGradientView *)self layer];
  [layer setEndPoint:{x, y}];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([(FRGradientView *)self passThroughTouches])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = FRGradientView;
    v8 = [(FRGradientView *)&v10 pointInside:eventCopy withEvent:x, y];
  }

  return v8;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = FRGradientView;
  if (-[FRGradientView _shouldAnimatePropertyWithKey:](&v7, "_shouldAnimatePropertyWithKey:", keyCopy) || ([keyCopy isEqualToString:@"colors"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"startPoint") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"endPoint") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"locations"];
  }

  return v5;
}

@end