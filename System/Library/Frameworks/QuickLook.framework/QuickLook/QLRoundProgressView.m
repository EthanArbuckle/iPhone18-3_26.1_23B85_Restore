@interface QLRoundProgressView
- (QLRoundProgressView)initWithFrame:(CGRect)a3;
- (double)progress;
- (void)didMoveToWindow;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
@end

@implementation QLRoundProgressView

- (QLRoundProgressView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = QLRoundProgressView;
  v3 = [(QLRoundProgressView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(QLRoundProgressView *)v3 setBackgroundColor:v4];

    v5 = v3;
  }

  return v3;
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = QLRoundProgressView;
  [(QLRoundProgressView *)&v8 didMoveToWindow];
  v3 = [(QLRoundProgressView *)self window];
  v4 = [v3 screen];
  [v4 scale];
  v6 = v5;
  v7 = [(QLRoundProgressView *)self layer];
  [v7 setContentsScale:v6];
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  v5 = fmin(a3, 1.0);
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (a4)
  {
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"progress"];
    v8 = MEMORY[0x277CCABB0];
    v9 = [(QLRoundProgressView *)self layer];
    v10 = [v9 presentationLayer];
    [v10 progress];
    v11 = [v8 numberWithDouble:?];
    [v7 setFromValue:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [v7 setToValue:v12];

    [v7 setDuration:0.2];
    v13 = [(QLRoundProgressView *)self layer];
    [v13 addAnimation:v7 forKey:@"progress"];
  }

  [MEMORY[0x277CD9FF0] begin];
  v14 = [(QLRoundProgressView *)self layer];
  [v14 setProgress:v6];

  v15 = MEMORY[0x277CD9FF0];

  [v15 commit];
}

- (double)progress
{
  v2 = [(QLRoundProgressView *)self layer];
  [v2 progress];
  v4 = v3;

  return v4;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  [a3 progress];
  v7 = v6 * 6.28318531 + -1.57079633;
  [(QLRoundProgressView *)self bounds];
  v9 = v8 * 0.5;
  [(QLRoundProgressView *)self bounds];
  v11 = v10 * 0.5;
  [(QLRoundProgressView *)self bounds];
  if (v12 < 40.0)
  {
    v13 = 2.0;
  }

  else
  {
    v13 = 4.0;
  }

  if (v9 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14 - v13 * 0.5;
  CGContextSaveGState(a4);
  CGContextBeginPath(a4);
  CGContextMoveToPoint(a4, v9, v11);
  CGContextAddLineToPoint(a4, v9, 0.0);
  CGContextAddArc(a4, v9, v11, v15, -1.57079633, v7, 0);
  CGContextClosePath(a4);
  v16 = [MEMORY[0x277D75348] lightGrayColor];
  CGContextSetFillColorWithColor(a4, [v16 CGColor]);

  v17 = [MEMORY[0x277D75348] clearColor];
  CGContextSetStrokeColorWithColor(a4, [v17 CGColor]);

  CGContextDrawPath(a4, kCGPathFillStroke);
  CGContextRestoreGState(a4);
  CGContextSaveGState(a4);
  CGContextBeginPath(a4);
  CGContextMoveToPoint(a4, v9 + v15, v11);
  CGContextAddArc(a4, v9, v11, v15, 0.0, 3.14159265, 1);
  CGContextAddArc(a4, v9, v11, v15, 3.14159265, 6.28318531, 1);
  CGContextClosePath(a4);
  v18 = [MEMORY[0x277D75348] clearColor];
  CGContextSetFillColorWithColor(a4, [v18 CGColor]);

  v19 = [MEMORY[0x277D75348] lightGrayColor];
  CGContextSetStrokeColorWithColor(a4, [v19 CGColor]);

  CGContextSetLineWidth(a4, v13);
  CGContextDrawPath(a4, kCGPathFillStroke);

  CGContextRestoreGState(a4);
}

@end