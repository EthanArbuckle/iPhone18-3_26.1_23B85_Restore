@interface SCATModernPageControlHighlightView
- (SCATModernPageControlHighlightView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation SCATModernPageControlHighlightView

- (SCATModernPageControlHighlightView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SCATModernPageControlHighlightView;
  v3 = [(SCATModernPageControlHighlightView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATModernPageControlHighlightView *)v3 setContentMode:3];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = +[SCATStyleProvider sharedStyleProvider];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, 2.0, 2.0);
  v7 = [UIBezierPath roundedRectBezierPath:15 withRoundedEdges:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  [v9 menuPageControlHighlightedBorderLineWidth];
  [v7 setLineWidth:?];
  v8 = [v9 menuPageControlHighlightedBorderColor];
  [v8 setStroke];

  [v7 stroke];
}

@end