@interface UIView
+ (BOOL)crlaxView:(id)a3 isDescendantOfView:(id)a4;
+ (void)crl_animateWithKeyboardNotification:(id)a3 options:(unint64_t)a4 animations:(id)a5 completion:(id)a6;
- (BOOL)crl_isPresetRenderingInvalid;
- (CGPoint)crlaxFramePointFromBoundsPoint:(CGPoint)a3;
- (CGRect)crlaxFrameFromBounds:(CGRect)a3;
- (UIView)crlaxFirstAccessibleSubview;
- (double)crlaxScreenScale;
- (id)crl_constraintsToAllSidesOfItem:(id)a3;
- (void)crl_activateEqualConstraintsForView:(id)a3;
- (void)crl_setGlassBackground;
- (void)crl_setPresetRenderingInvalid:(BOOL)a3;
@end

@implementation UIView

- (BOOL)crl_isPresetRenderingInvalid
{
  v2 = objc_getAssociatedObject(self, "crl_isPresetRenderingInvalid");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)crl_setPresetRenderingInvalid:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, "crl_isPresetRenderingInvalid", v4, 1);
}

- (id)crl_constraintsToAllSidesOfItem:(id)a3
{
  v4 = a3;
  v5 = [NSLayoutConstraint constraintWithItem:self attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
  v6 = [NSLayoutConstraint constraintWithItem:self attribute:2 relatedBy:0 toItem:v4 attribute:2 multiplier:1.0 constant:0.0];
  v7 = [NSLayoutConstraint constraintWithItem:self attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:0.0];
  v8 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];

  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:4];

  return v9;
}

+ (void)crl_animateWithKeyboardNotification:(id)a3 options:(unint64_t)a4 animations:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v16 = [a3 userInfo];
  v11 = [v16 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v16 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  v15 = [v14 integerValue];

  [UIView animateWithDuration:a4 | (v15 << 16) delay:v10 options:v9 animations:v13 completion:0.0];
}

- (CGRect)crlaxFrameFromBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self window];
  [(UIView *)self convertRect:v8 toView:x, y, width, height];
  [v8 convertRect:0 toWindow:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGPoint)crlaxFramePointFromBoundsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIView *)self window];
  [(UIView *)self convertPoint:v6 toView:x, y];
  [v6 convertPoint:v6 toWindow:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)crlaxScreenScale
{
  v2 = [(UIView *)self window];
  v3 = [v2 screen];
  [v3 scale];
  v5 = v4;

  return v5;
}

+ (BOOL)crlaxView:(id)a3 isDescendantOfView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  v9 = v7 != 0;
  v10 = v7;
  if (v7 != v6 && v7)
  {
    v10 = v7;
    do
    {
      v11 = v10;
      v10 = [v10 superview];

      v9 = v10 != 0;
    }

    while (v10 != v6 && v10);
  }

  return v9;
}

- (UIView)crlaxFirstAccessibleSubview
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    v12 = 0;
    v4 = [(UIView *)self crlaxValueForKey:@"_accessibleSubviews"];
    v5 = objc_opt_class();
    v6 = __CRLAccessibilityCastAsClass(v5, v4, 1, &v12);
    if (v12 == 1)
    {
      abort();
    }

    v7 = v6;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10049D10C;
      v10[3] = &unk_1018671A8;
      v11 = 0;
      v8 = [v7 crlaxObjectsPassingTest:v10];
      v3 = [v8 firstObject];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)crl_activateEqualConstraintsForView:(id)a3
{
  v4 = a3;
  v17 = [v4 leadingAnchor];
  v16 = [(UIView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v5 = [v4 trailingAnchor];
  v6 = [(UIView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[1] = v7;
  v8 = [v4 topAnchor];
  v9 = [(UIView *)self topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v18[2] = v10;
  v11 = [v4 bottomAnchor];

  v12 = [(UIView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)crl_setGlassBackground
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  v4 = self;
  static _Glass._GlassVariant.regular.getter();
  v5[3] = type metadata accessor for _Glass();
  v5[4] = &protocol witness table for _Glass;
  sub_10002C58C(v5);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

@end