@interface TopLineView
- (TopLineView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation TopLineView

- (TopLineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TopLineView;
  v3 = [(TopLineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TopLineView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v5 = CurrentContext;
    [(TopLineView *)self bounds];
    v7 = v6;
    +[CompactMonthWeekView grayLineHeight];
    v9 = v8;
    v10 = +[CompactMonthWeekView grayLineColor];
    [v10 set];

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = v7;
    v12.size.height = v9;
    CGContextFillRect(v5, v12);

    CGContextFlush(v5);
  }
}

@end