@interface UIView
+ (BOOL)crlaxView:(id)view isDescendantOfView:(id)ofView;
+ (void)crl_animateWithKeyboardNotification:(id)notification options:(unint64_t)options animations:(id)animations completion:(id)completion;
- (BOOL)crl_isPresetRenderingInvalid;
- (CGPoint)crlaxFramePointFromBoundsPoint:(CGPoint)point;
- (CGRect)crlaxFrameFromBounds:(CGRect)bounds;
- (UIView)crlaxFirstAccessibleSubview;
- (double)crlaxScreenScale;
- (id)crl_constraintsToAllSidesOfItem:(id)item;
- (void)crl_activateEqualConstraintsForView:(id)view;
- (void)crl_setGlassBackground;
- (void)crl_setPresetRenderingInvalid:(BOOL)invalid;
@end

@implementation UIView

- (BOOL)crl_isPresetRenderingInvalid
{
  v2 = objc_getAssociatedObject(self, "crl_isPresetRenderingInvalid");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)crl_setPresetRenderingInvalid:(BOOL)invalid
{
  v4 = [NSNumber numberWithBool:invalid];
  objc_setAssociatedObject(self, "crl_isPresetRenderingInvalid", v4, 1);
}

- (id)crl_constraintsToAllSidesOfItem:(id)item
{
  itemCopy = item;
  v5 = [NSLayoutConstraint constraintWithItem:self attribute:1 relatedBy:0 toItem:itemCopy attribute:1 multiplier:1.0 constant:0.0];
  v6 = [NSLayoutConstraint constraintWithItem:self attribute:2 relatedBy:0 toItem:itemCopy attribute:2 multiplier:1.0 constant:0.0];
  v7 = [NSLayoutConstraint constraintWithItem:self attribute:3 relatedBy:0 toItem:itemCopy attribute:3 multiplier:1.0 constant:0.0];
  v8 = [NSLayoutConstraint constraintWithItem:self attribute:4 relatedBy:0 toItem:itemCopy attribute:4 multiplier:1.0 constant:0.0];

  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:4];

  return v9;
}

+ (void)crl_animateWithKeyboardNotification:(id)notification options:(unint64_t)options animations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  animationsCopy = animations;
  userInfo = [notification userInfo];
  v11 = [userInfo objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v11 doubleValue];
  v13 = v12;

  v14 = [userInfo objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v14 integerValue];

  [UIView animateWithDuration:options | (integerValue << 16) delay:animationsCopy options:completionCopy animations:v13 completion:0.0];
}

- (CGRect)crlaxFrameFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  window = [(UIView *)self window];
  [(UIView *)self convertRect:window toView:x, y, width, height];
  [window convertRect:0 toWindow:?];
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

- (CGPoint)crlaxFramePointFromBoundsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  window = [(UIView *)self window];
  [(UIView *)self convertPoint:window toView:x, y];
  [window convertPoint:window toWindow:?];
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
  window = [(UIView *)self window];
  screen = [window screen];
  [screen scale];
  v5 = v4;

  return v5;
}

+ (BOOL)crlaxView:(id)view isDescendantOfView:(id)ofView
{
  viewCopy = view;
  ofViewCopy = ofView;
  v7 = viewCopy;
  v8 = v7;
  v9 = v7 != 0;
  superview = v7;
  if (v7 != ofViewCopy && v7)
  {
    superview = v7;
    do
    {
      v11 = superview;
      superview = [superview superview];

      v9 = superview != 0;
    }

    while (superview != ofViewCopy && superview);
  }

  return v9;
}

- (UIView)crlaxFirstAccessibleSubview
{
  window = [(UIView *)self window];

  if (window)
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
      window = [v8 firstObject];
    }

    else
    {
      window = 0;
    }
  }

  return window;
}

- (void)crl_activateEqualConstraintsForView:(id)view
{
  viewCopy = view;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v15;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UIView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v7;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[2] = v10;
  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)crl_setGlassBackground
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  selfCopy = self;
  static _Glass._GlassVariant.regular.getter();
  v5[3] = type metadata accessor for _Glass();
  v5[4] = &protocol witness table for _Glass;
  sub_10002C58C(v5);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

@end