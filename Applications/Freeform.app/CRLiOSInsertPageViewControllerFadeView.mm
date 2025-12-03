@interface CRLiOSInsertPageViewControllerFadeView
- (CRLiOSInsertPageViewControllerFadeView)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint shouldAddDividerView:(BOOL)view;
- (void)layoutSubviews;
@end

@implementation CRLiOSInsertPageViewControllerFadeView

- (CRLiOSInsertPageViewControllerFadeView)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint shouldAddDividerView:(BOOL)view
{
  viewCopy = view;
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  v24.receiver = self;
  v24.super_class = CRLiOSInsertPageViewControllerFadeView;
  v10 = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CRLiOSInsertPageViewControllerFadeView *)&v24 initWithFrame:CGRectZero.origin.x, v10, width, height];
  if (height)
  {
    v14 = +[CAGradientLayer layer];
    v15 = +[UIColor whiteColor];
    v16 = [v15 colorWithAlphaComponent:0.0];
    v25[0] = [v16 CGColor];
    v17 = +[UIColor whiteColor];
    v18 = [v17 colorWithAlphaComponent:1.0];
    v25[1] = [v18 CGColor];
    v19 = [NSArray arrayWithObjects:v25 count:2];
    [v14 setColors:v19];

    [v14 setStartPoint:{v9, v8}];
    [v14 setEndPoint:{x, y}];
    layer = [(CRLiOSInsertPageViewControllerFadeView *)height layer];
    [layer setMask:v14];

    if (viewCopy)
    {
      height2 = [[CRLiOSInspectorDividerView alloc] initWithFrame:CGRectZero.origin.x, v10, width, height];
      line = height->_line;
      height->_line = height2;

      [(CRLiOSInsertPageViewControllerFadeView *)height addSubview:height->_line];
    }
  }

  return height;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CRLiOSInsertPageViewControllerFadeView;
  [(CRLiOSInsertPageViewControllerFadeView *)&v14 layoutSubviews];
  [(CRLiOSInsertPageViewControllerFadeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layer = [(CRLiOSInsertPageViewControllerFadeView *)self layer];
  mask = [layer mask];
  [mask setFrame:{v4, v6, v8, v10}];

  if (self->_line)
  {
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    v13 = CGRectGetHeight(v15) + -1.0;
    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    [(CRLiOSInspectorDividerView *)self->_line setFrame:0.0, v13, CGRectGetWidth(v16), 1.0];
  }
}

@end