@interface _SSSShadowViewInnerViewWithShadow
- (UIBezierPath)shadowPath;
- (_SSSShadowViewInnerViewWithShadow)initWithFrame:(CGRect)frame;
- (void)setShadowPath:(id)path;
@end

@implementation _SSSShadowViewInnerViewWithShadow

- (_SSSShadowViewInnerViewWithShadow)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _SSSShadowViewInnerViewWithShadow;
  v3 = [(_SSSShadowViewInnerViewWithShadow *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  layer = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  v5 = +[SSSShadowView shadowColor];
  [layer setShadowColor:{objc_msgSend(v5, "CGColor")}];

  layer2 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  +[SSSShadowView shadowRadius];
  [layer2 setShadowRadius:?];

  layer3 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  +[SSSShadowView shadowOffset];
  [layer3 setShadowOffset:?];

  layer4 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  +[SSSShadowView shadowOpacity];
  *&v9 = v9;
  [layer4 setShadowOpacity:v9];

  return v3;
}

- (void)setShadowPath:(id)path
{
  pathCopy = path;
  layer = [(_SSSShadowViewInnerViewWithShadow *)self layer];
  cGPath = [pathCopy CGPath];

  [layer setShadowPath:cGPath];
}

- (UIBezierPath)shadowPath
{
  layer = [(_SSSShadowViewInnerViewWithShadow *)self layer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [layer shadowPath]);

  return v3;
}

@end