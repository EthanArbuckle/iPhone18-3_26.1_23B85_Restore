@interface COSTargetOutlineView
- (COSTargetOutlineView)initWithOutlinePath:(id)path;
- (void)drawRect:(CGRect)rect;
@end

@implementation COSTargetOutlineView

- (COSTargetOutlineView)initWithOutlinePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = COSTargetOutlineView;
  v6 = [(COSTargetOutlineView *)&v9 init];
  if (v6)
  {
    v7 = +[UIColor clearColor];
    [(COSTargetOutlineView *)v6 setBackgroundColor:v7];

    objc_storeStrong(&v6->_outlinePath, path);
  }

  return v6;
}

- (void)drawRect:(CGRect)rect
{
  v5.receiver = self;
  v5.super_class = COSTargetOutlineView;
  [(COSTargetOutlineView *)&v5 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (self->_outlinePath)
  {
    v4 = +[UIColor systemYellowColor];
    [v4 setStroke];

    [(UIBezierPath *)self->_outlinePath stroke];
  }
}

@end