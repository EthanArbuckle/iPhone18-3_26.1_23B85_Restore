@interface THCustomLayerView
- (CGRect)contentsCenter;
- (CGRect)contentsRect;
- (NSString)contentsGravity;
- (UIColor)borderColor;
- (double)borderWidth;
- (double)contentsScale;
- (id)contents;
- (void)setBackgroundColorFromPatternImage:(id)image;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setContents:(id)contents;
- (void)setContentsCenter:(CGRect)center;
- (void)setContentsFromImage:(id)image;
- (void)setContentsGravity:(id)gravity;
- (void)setContentsRect:(CGRect)rect;
- (void)setContentsScale:(double)scale;
@end

@implementation THCustomLayerView

- (UIColor)borderColor
{
  v2 = [-[THCustomLayerView layer](self "layer")];

  return [UIColor colorWithCGColor:v2];
}

- (void)setBorderColor:(id)color
{
  cGColor = [color CGColor];
  layer = [(THCustomLayerView *)self layer];

  [layer setBorderColor:cGColor];
}

- (double)borderWidth
{
  layer = [(THCustomLayerView *)self layer];

  [layer borderWidth];
  return result;
}

- (void)setBorderWidth:(double)width
{
  layer = [(THCustomLayerView *)self layer];

  [layer setBorderWidth:width];
}

- (id)contents
{
  layer = [(THCustomLayerView *)self layer];

  return [layer contents];
}

- (void)setContents:(id)contents
{
  layer = [(THCustomLayerView *)self layer];

  [layer setContents:contents];
}

- (CGRect)contentsRect
{
  layer = [(THCustomLayerView *)self layer];

  [layer contentsRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layer = [(THCustomLayerView *)self layer];

  [layer setContentsRect:{x, y, width, height}];
}

- (NSString)contentsGravity
{
  layer = [(THCustomLayerView *)self layer];

  return [layer contentsGravity];
}

- (void)setContentsGravity:(id)gravity
{
  layer = [(THCustomLayerView *)self layer];

  [layer setContentsGravity:gravity];
}

- (double)contentsScale
{
  layer = [(THCustomLayerView *)self layer];

  [layer contentsScale];
  return result;
}

- (void)setContentsScale:(double)scale
{
  layer = [(THCustomLayerView *)self layer];

  [layer setContentsScale:scale];
}

- (CGRect)contentsCenter
{
  layer = [(THCustomLayerView *)self layer];

  [layer contentsCenter];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setContentsCenter:(CGRect)center
{
  height = center.size.height;
  width = center.size.width;
  y = center.origin.y;
  x = center.origin.x;
  layer = [(THCustomLayerView *)self layer];

  [layer setContentsCenter:{x, y, width, height}];
}

- (void)setBackgroundColorFromPatternImage:(id)image
{
  v4 = [[TSUColor colorWithPatternImage:?]];

  [(THCustomLayerView *)self setBackgroundColor:v4];
}

- (void)setContentsFromImage:(id)image
{
  -[THCustomLayerView setContents:](self, "setContents:", [image CGImage]);
  [image scale];

  [(THCustomLayerView *)self setContentsScale:?];
}

@end