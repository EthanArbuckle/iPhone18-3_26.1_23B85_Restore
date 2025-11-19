@interface _SSSShadowViewInnerViewWithShadow
- (UIBezierPath)shadowPath;
- (_SSSShadowViewInnerViewWithShadow)initWithFrame:(CGRect)a3;
- (void)setShadowPath:(id)a3;
@end

@implementation _SSSShadowViewInnerViewWithShadow

- (_SSSShadowViewInnerViewWithShadow)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = _SSSShadowViewInnerViewWithShadow;
  v3 = [(_SSSShadowViewInnerViewWithShadow *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  v5 = +[SSSShadowView shadowColor];
  [v4 setShadowColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  +[SSSShadowView shadowRadius];
  [v6 setShadowRadius:?];

  v7 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  +[SSSShadowView shadowOffset];
  [v7 setShadowOffset:?];

  v8 = [(_SSSShadowViewInnerViewWithShadow *)v3 layer];
  +[SSSShadowView shadowOpacity];
  *&v9 = v9;
  [v8 setShadowOpacity:v9];

  return v3;
}

- (void)setShadowPath:(id)a3
{
  v4 = a3;
  v6 = [(_SSSShadowViewInnerViewWithShadow *)self layer];
  v5 = [v4 CGPath];

  [v6 setShadowPath:v5];
}

- (UIBezierPath)shadowPath
{
  v2 = [(_SSSShadowViewInnerViewWithShadow *)self layer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v2 shadowPath]);

  return v3;
}

@end