@interface BKGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (NSArray)colors;
- (NSArray)locations;
- (id)color;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setStartPoint:(CGPoint)point;
@end

@implementation BKGradientView

- (id)color
{
  layer = [(BKGradientView *)self layer];
  colors = [layer colors];

  return colors;
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  layer = [(BKGradientView *)self layer];
  [layer setColors:colorsCopy];
}

- (NSArray)colors
{
  layer = [(BKGradientView *)self layer];
  colors = [layer colors];

  return colors;
}

- (NSArray)locations
{
  layer = [(BKGradientView *)self layer];
  locations = [layer locations];

  return locations;
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  layer = [(BKGradientView *)self layer];
  [layer setLocations:locationsCopy];
}

- (CGPoint)startPoint
{
  layer = [(BKGradientView *)self layer];
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
  layer = [(BKGradientView *)self layer];
  [layer setStartPoint:{x, y}];
}

- (CGPoint)endPoint
{
  layer = [(BKGradientView *)self layer];
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
  layer = [(BKGradientView *)self layer];
  [layer setEndPoint:{x, y}];
}

@end