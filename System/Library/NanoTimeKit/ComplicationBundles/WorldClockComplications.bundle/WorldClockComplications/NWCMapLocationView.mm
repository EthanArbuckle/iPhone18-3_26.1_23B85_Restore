@interface NWCMapLocationView
- (NWCMapLocationView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)positionAtPoint:(CGPoint)point withinBounds:(CGRect)bounds;
@end

@implementation NWCMapLocationView

- (NWCMapLocationView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NWCMapLocationView;
  v3 = [(NWCMapLocationView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NWCMapLocationView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [whiteColor CGColor]);

  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGContextFillEllipseInRect(CurrentContext, v10);

  CGContextFillPath(CurrentContext);
}

- (void)positionAtPoint:(CGPoint)point withinBounds:(CGRect)bounds
{
  rect = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NWCMapLocationView *)self frame];
  UIRectCenteredAboutPointScale();
  v8 = v17.origin.x;
  v9 = v17.origin.y;
  v10 = v17.size.width;
  height = v17.size.height;
  if (CGRectGetMinX(v17) < 0.0)
  {
    v8 = 0.0;
  }

  v18.origin.x = v8;
  v18.origin.y = v9;
  v18.size.width = v10;
  v18.size.height = height;
  if (CGRectGetMinY(v18) < 0.0)
  {
    v9 = 0.0;
  }

  v19.origin.x = v8;
  v19.origin.y = v9;
  v19.size.width = v10;
  v19.size.height = height;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = rect;
  if (MaxX > CGRectGetWidth(v20))
  {
    v21.origin.x = x;
    v21.size.height = rect;
    v21.origin.y = y;
    v21.size.width = width;
    v13 = CGRectGetWidth(v21);
    v22.origin.x = v8;
    v22.origin.y = v9;
    v22.size.width = v10;
    v22.size.height = height;
    v8 = v13 - CGRectGetWidth(v22);
  }

  v23.origin.x = v8;
  v23.origin.y = v9;
  v23.size.width = v10;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = x;
  v24.size.height = rect;
  v24.origin.y = y;
  v24.size.width = width;
  if (MaxY > CGRectGetHeight(v24))
  {
    v25.origin.x = x;
    v25.size.height = rect;
    v25.origin.y = y;
    v25.size.width = width;
    CGRectGetHeight(v25);
    v26.origin.x = v8;
    v26.origin.y = v9;
    v26.size.width = v10;
    v26.size.height = height;
    CGRectGetHeight(v26);
  }

  MEMORY[0x2821F9670](self, sel_setFrame_);
}

@end