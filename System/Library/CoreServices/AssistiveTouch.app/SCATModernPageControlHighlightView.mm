@interface SCATModernPageControlHighlightView
- (SCATModernPageControlHighlightView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation SCATModernPageControlHighlightView

- (SCATModernPageControlHighlightView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SCATModernPageControlHighlightView;
  v3 = [(SCATModernPageControlHighlightView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATModernPageControlHighlightView *)v3 setContentMode:3];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = +[SCATStyleProvider sharedStyleProvider];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, 2.0, 2.0);
  v7 = [UIBezierPath roundedRectBezierPath:15 withRoundedEdges:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  [v9 menuPageControlHighlightedBorderLineWidth];
  [v7 setLineWidth:?];
  menuPageControlHighlightedBorderColor = [v9 menuPageControlHighlightedBorderColor];
  [menuPageControlHighlightedBorderColor setStroke];

  [v7 stroke];
}

@end