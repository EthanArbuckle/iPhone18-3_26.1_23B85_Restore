@interface TSWBackgroundView
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
@end

@implementation TSWBackgroundView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->mGradient)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetFillColorWithColor(CurrentContext, [+[TSUColor clearColor](TSUColor "clearColor")]);
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    CGContextFillRect(CurrentContext, v10);
    CGContextRestoreGState(CurrentContext);
    [(TSDGradient *)self->mGradient paintRect:CurrentContext inContext:x, y, width, height];
  }

  v9.receiver = self;
  v9.super_class = TSWBackgroundView;
  [(TSWBackgroundView *)&v9 drawRect:x, y, width, height];
}

- (void)dealloc
{
  self->mGradient = 0;
  v3.receiver = self;
  v3.super_class = TSWBackgroundView;
  [(TSWBackgroundView *)&v3 dealloc];
}

@end