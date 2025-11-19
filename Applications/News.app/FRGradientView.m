@interface FRGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (void)setColors:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setLocations:(id)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation FRGradientView

- (NSArray)colors
{
  v2 = [(FRGradientView *)self layer];
  v3 = [v2 colors];

  return v3;
}

- (void)setColors:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
          v13 = [v12 CGColor];
          [v5 addObject:v13];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = [(FRGradientView *)self layer];
  [v15 setColors:v14];
}

- (NSArray)locations
{
  v2 = [(FRGradientView *)self layer];
  v3 = [v2 locations];

  return v3;
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = [(FRGradientView *)self layer];
  [v5 setLocations:v4];
}

- (CGPoint)startPoint
{
  v2 = [(FRGradientView *)self layer];
  [v2 startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setStartPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(FRGradientView *)self layer];
  [v5 setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  v2 = [(FRGradientView *)self layer];
  [v2 endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(FRGradientView *)self layer];
  [v5 setEndPoint:{x, y}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(FRGradientView *)self passThroughTouches])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = FRGradientView;
    v8 = [(FRGradientView *)&v10 pointInside:v7 withEvent:x, y];
  }

  return v8;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FRGradientView;
  if (-[FRGradientView _shouldAnimatePropertyWithKey:](&v7, "_shouldAnimatePropertyWithKey:", v4) || ([v4 isEqualToString:@"colors"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"startPoint") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"endPoint") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"locations"];
  }

  return v5;
}

@end