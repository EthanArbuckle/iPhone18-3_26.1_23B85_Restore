@interface UIView
- (CGAffineTransform)transformToAbutToEdge:(SEL)edge ofView:(unint64_t)view;
- (double)xOriginForCenterOfSuperview;
- (double)yOriginForCenterOfSuperview;
- (void)dialer_applyClearGlassBackgroundWithTintColor:(id)color;
- (void)dialer_applySmallClearGlassBackground;
- (void)dialer_applySmallClearGlassBackgroundWithTintColor:(id)color;
@end

@implementation UIView

- (CGAffineTransform)transformToAbutToEdge:(SEL)edge ofView:(unint64_t)view
{
  v21 = a5;
  v8 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v8;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  if (view == 8)
  {
    [(UIView *)self frame];
    [(UIView *)self convertPoint:0 toView:?];
    v13 = v15;
    [v21 frame];
    v17 = v16;
    [v21 frame];
    v14 = v17 + v18;
  }

  else
  {
    if (view != 2)
    {
      goto LABEL_6;
    }

    [(UIView *)self frame];
    v10 = v9;
    [(UIView *)self frame];
    [(UIView *)self convertPoint:0 toView:v10 + v11, 0.0];
    v13 = v12;
    [v21 frame];
  }

  [(UIView *)self convertPoint:0 toView:v14, 0.0];
  *&v19 = v19 - v13;
  CGAffineTransformMakeTranslation(retstr, roundf(*&v19), 0.0);
LABEL_6:

  return result;
}

- (double)xOriginForCenterOfSuperview
{
  superview = [(UIView *)self superview];
  [superview bounds];
  v5 = v4 * 0.5;
  [(UIView *)self bounds];
  v7 = v5 - v6 * 0.5;
  v8 = floorf(v7);

  return v8;
}

- (double)yOriginForCenterOfSuperview
{
  superview = [(UIView *)self superview];
  [superview bounds];
  v5 = v4 * 0.5;
  [(UIView *)self bounds];
  v7 = v5 - v6 * 0.5;
  v8 = floorf(v7);

  return v8;
}

- (void)dialer_applyClearGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applyClearGlassBackgroundWithTintColor(_:)(colorCopy);
}

- (void)dialer_applySmallClearGlassBackground
{
  v3 = sub_2D698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  off_50840(v3);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2D6C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = off_50840(v8);
  v13 = &v16[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_50840(v11);
  selfCopy = self;
  sub_2D6B8();
  (*(v4 + 104))(v7, enum case for _Glass._GlassVariant.Size.small(_:), v3);
  sub_2D6A8();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v13, v8);
  v16[3] = sub_2D6E8();
  v16[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_2D6F8();
  sub_2D848();
}

- (void)dialer_applySmallClearGlassBackgroundWithTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  UIView.applySmallClearGlassBackgroundWithTintColor(_:)(colorCopy);
}

@end