@interface THWScrollableCanvasViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (id)backgroundColorForMagnifier;
- (void)dealloc;
- (void)teardown;
@end

@implementation THWScrollableCanvasViewController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWScrollableCanvasViewController;
  [(THWScrollableCanvasViewController *)&v3 dealloc];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ("menuCopy:" != a3)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = THWScrollableCanvasViewController;
  return [THWScrollableCanvasViewController canPerformAction:"canPerformAction:withSender:" withSender:?];
}

- (void)teardown
{
  v3.receiver = self;
  v3.super_class = THWScrollableCanvasViewController;
  [(THWScrollableCanvasViewController *)&v3 teardown];

  self->_magnifierBackgroundColor = 0;
}

- (id)backgroundColorForMagnifier
{
  if (![(THWScrollableCanvasViewController *)self magnifierBackgroundColor])
  {
    [(THWScrollableCanvasViewController *)self setMagnifierBackgroundColor:+[TSUColor whiteColor]];
  }

  return [(THWScrollableCanvasViewController *)self magnifierBackgroundColor];
}

@end