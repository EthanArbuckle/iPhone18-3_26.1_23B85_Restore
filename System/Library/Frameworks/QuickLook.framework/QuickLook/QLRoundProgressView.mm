@interface QLRoundProgressView
- (QLRoundProgressView)initWithFrame:(CGRect)frame;
- (double)progress;
- (void)didMoveToWindow;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)setProgress:(double)progress animated:(BOOL)animated;
@end

@implementation QLRoundProgressView

- (QLRoundProgressView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = QLRoundProgressView;
  v3 = [(QLRoundProgressView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(QLRoundProgressView *)v3 setBackgroundColor:clearColor];

    v5 = v3;
  }

  return v3;
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = QLRoundProgressView;
  [(QLRoundProgressView *)&v8 didMoveToWindow];
  window = [(QLRoundProgressView *)self window];
  screen = [window screen];
  [screen scale];
  v6 = v5;
  layer = [(QLRoundProgressView *)self layer];
  [layer setContentsScale:v6];
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  v5 = fmin(progress, 1.0);
  if (v5 >= 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (animated)
  {
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"progress"];
    v8 = MEMORY[0x277CCABB0];
    layer = [(QLRoundProgressView *)self layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer progress];
    v11 = [v8 numberWithDouble:?];
    [v7 setFromValue:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    [v7 setToValue:v12];

    [v7 setDuration:0.2];
    layer2 = [(QLRoundProgressView *)self layer];
    [layer2 addAnimation:v7 forKey:@"progress"];
  }

  [MEMORY[0x277CD9FF0] begin];
  layer3 = [(QLRoundProgressView *)self layer];
  [layer3 setProgress:v6];

  v15 = MEMORY[0x277CD9FF0];

  [v15 commit];
}

- (double)progress
{
  layer = [(QLRoundProgressView *)self layer];
  [layer progress];
  v4 = v3;

  return v4;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  [layer progress];
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
  CGContextSaveGState(context);
  CGContextBeginPath(context);
  CGContextMoveToPoint(context, v9, v11);
  CGContextAddLineToPoint(context, v9, 0.0);
  CGContextAddArc(context, v9, v11, v15, -1.57079633, v7, 0);
  CGContextClosePath(context);
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  CGContextSetFillColorWithColor(context, [lightGrayColor CGColor]);

  clearColor = [MEMORY[0x277D75348] clearColor];
  CGContextSetStrokeColorWithColor(context, [clearColor CGColor]);

  CGContextDrawPath(context, kCGPathFillStroke);
  CGContextRestoreGState(context);
  CGContextSaveGState(context);
  CGContextBeginPath(context);
  CGContextMoveToPoint(context, v9 + v15, v11);
  CGContextAddArc(context, v9, v11, v15, 0.0, 3.14159265, 1);
  CGContextAddArc(context, v9, v11, v15, 3.14159265, 6.28318531, 1);
  CGContextClosePath(context);
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  CGContextSetFillColorWithColor(context, [clearColor2 CGColor]);

  lightGrayColor2 = [MEMORY[0x277D75348] lightGrayColor];
  CGContextSetStrokeColorWithColor(context, [lightGrayColor2 CGColor]);

  CGContextSetLineWidth(context, v13);
  CGContextDrawPath(context, kCGPathFillStroke);

  CGContextRestoreGState(context);
}

@end