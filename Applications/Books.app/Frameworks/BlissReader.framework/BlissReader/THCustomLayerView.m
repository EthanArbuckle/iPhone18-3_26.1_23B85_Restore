@interface THCustomLayerView
- (CGRect)contentsCenter;
- (CGRect)contentsRect;
- (NSString)contentsGravity;
- (UIColor)borderColor;
- (double)borderWidth;
- (double)contentsScale;
- (id)contents;
- (void)setBackgroundColorFromPatternImage:(id)a3;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setContents:(id)a3;
- (void)setContentsCenter:(CGRect)a3;
- (void)setContentsFromImage:(id)a3;
- (void)setContentsGravity:(id)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setContentsScale:(double)a3;
@end

@implementation THCustomLayerView

- (UIColor)borderColor
{
  v2 = [-[THCustomLayerView layer](self "layer")];

  return [UIColor colorWithCGColor:v2];
}

- (void)setBorderColor:(id)a3
{
  v4 = [a3 CGColor];
  v5 = [(THCustomLayerView *)self layer];

  [v5 setBorderColor:v4];
}

- (double)borderWidth
{
  v2 = [(THCustomLayerView *)self layer];

  [v2 borderWidth];
  return result;
}

- (void)setBorderWidth:(double)a3
{
  v4 = [(THCustomLayerView *)self layer];

  [v4 setBorderWidth:a3];
}

- (id)contents
{
  v2 = [(THCustomLayerView *)self layer];

  return [v2 contents];
}

- (void)setContents:(id)a3
{
  v4 = [(THCustomLayerView *)self layer];

  [v4 setContents:a3];
}

- (CGRect)contentsRect
{
  v2 = [(THCustomLayerView *)self layer];

  [v2 contentsRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(THCustomLayerView *)self layer];

  [v7 setContentsRect:{x, y, width, height}];
}

- (NSString)contentsGravity
{
  v2 = [(THCustomLayerView *)self layer];

  return [v2 contentsGravity];
}

- (void)setContentsGravity:(id)a3
{
  v4 = [(THCustomLayerView *)self layer];

  [v4 setContentsGravity:a3];
}

- (double)contentsScale
{
  v2 = [(THCustomLayerView *)self layer];

  [v2 contentsScale];
  return result;
}

- (void)setContentsScale:(double)a3
{
  v4 = [(THCustomLayerView *)self layer];

  [v4 setContentsScale:a3];
}

- (CGRect)contentsCenter
{
  v2 = [(THCustomLayerView *)self layer];

  [v2 contentsCenter];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setContentsCenter:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(THCustomLayerView *)self layer];

  [v7 setContentsCenter:{x, y, width, height}];
}

- (void)setBackgroundColorFromPatternImage:(id)a3
{
  v4 = [[TSUColor colorWithPatternImage:?]];

  [(THCustomLayerView *)self setBackgroundColor:v4];
}

- (void)setContentsFromImage:(id)a3
{
  -[THCustomLayerView setContents:](self, "setContents:", [a3 CGImage]);
  [a3 scale];

  [(THCustomLayerView *)self setContentsScale:?];
}

@end