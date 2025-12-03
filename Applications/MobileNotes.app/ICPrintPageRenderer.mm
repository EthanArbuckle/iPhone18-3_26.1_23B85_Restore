@interface ICPrintPageRenderer
- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect;
@end

@implementation ICPrintPageRenderer

- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  backgroundColor = [(ICPrintPageRenderer *)self backgroundColor];

  if (backgroundColor)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    backgroundColor2 = [(ICPrintPageRenderer *)self backgroundColor];
    CGContextSetFillColorWithColor(CurrentContext, [backgroundColor2 CGColor]);

    [(ICPrintPageRenderer *)self paperRect];
    CGContextFillRect(CurrentContext, v14);
  }

  v13.receiver = self;
  v13.super_class = ICPrintPageRenderer;
  [(ICPrintPageRenderer *)&v13 drawPageAtIndex:index inRect:x, y, width, height];
}

@end