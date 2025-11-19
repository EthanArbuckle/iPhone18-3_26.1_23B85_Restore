@interface ICPrintPageRenderer
- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
@end

@implementation ICPrintPageRenderer

- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(ICPrintPageRenderer *)self backgroundColor];

  if (v10)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v12 = [(ICPrintPageRenderer *)self backgroundColor];
    CGContextSetFillColorWithColor(CurrentContext, [v12 CGColor]);

    [(ICPrintPageRenderer *)self paperRect];
    CGContextFillRect(CurrentContext, v14);
  }

  v13.receiver = self;
  v13.super_class = ICPrintPageRenderer;
  [(ICPrintPageRenderer *)&v13 drawPageAtIndex:a3 inRect:x, y, width, height];
}

@end