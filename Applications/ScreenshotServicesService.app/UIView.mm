@interface UIView
+ (void)sss_animateWithAnimationParameters:(id)parameters animations:(id)animations completion:(id)completion;
- (void)_sss_setConcentricCornerMaskingConfiguration;
- (void)_sss_setGlassBackground;
- (void)sss_setFrameUnanimating:(CGRect)unanimating;
- (void)sss_setFrameUnanimatingIfChangingFromCGSizeZero:(CGRect)zero;
- (void)sss_setFrameUnanimatingLayingOut:(CGRect)out;
@end

@implementation UIView

- (void)sss_setFrameUnanimatingIfChangingFromCGSizeZero:(CGRect)zero
{
  height = zero.size.height;
  width = zero.size.width;
  y = zero.origin.y;
  x = zero.origin.x;
  [(UIView *)self frame];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v12, v13))
  {
    [(UIView *)self frame];
    if (v9 == CGSizeZero.width && v8 == CGSizeZero.height)
    {

      [(UIView *)self sss_setFrameUnanimating:x, y, width, height];
    }

    else
    {

      [(UIView *)self setFrame:x, y, width, height];
    }
  }
}

- (void)sss_setFrameUnanimating:(CGRect)unanimating
{
  height = unanimating.size.height;
  width = unanimating.size.width;
  y = unanimating.origin.y;
  x = unanimating.origin.x;
  [(UIView *)self frame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000219B4;
    v8[3] = &unk_1000BA090;
    v8[4] = self;
    *&v8[5] = x;
    *&v8[6] = y;
    *&v8[7] = width;
    *&v8[8] = height;
    [UIView performWithoutAnimation:v8];
  }
}

- (void)sss_setFrameUnanimatingLayingOut:(CGRect)out
{
  height = out.size.height;
  width = out.size.width;
  y = out.origin.y;
  x = out.origin.x;
  [(UIView *)self frame];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100021A8C;
    v8[3] = &unk_1000BA090;
    v8[4] = self;
    *&v8[5] = x;
    *&v8[6] = y;
    *&v8[7] = width;
    *&v8[8] = height;
    [UIView performWithoutAnimation:v8];
  }
}

+ (void)sss_animateWithAnimationParameters:(id)parameters animations:(id)animations completion:(id)completion
{
  parametersCopy = parameters;
  animationsCopy = animations;
  completionCopy = completion;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100030230;
  v21[3] = &unk_1000BAC78;
  v10 = parametersCopy;
  v22 = v10;
  v11 = animationsCopy;
  v23 = v11;
  v12 = completionCopy;
  v24 = v12;
  v13 = objc_retainBlock(v21);
  if ([v10 animationReason])
  {
    v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    minimum = v25.minimum;
    maximum = v25.maximum;
    preferred = v25.preferred;
    animationReason = [v10 animationReason];
    *&v18 = minimum;
    *&v19 = maximum;
    *&v20 = preferred;
    [UIView _modifyAnimationsWithPreferredFrameRateRange:animationReason | 0x160000u updateReason:v13 animations:v18, v19, v20];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)_sss_setGlassBackground
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  selfCopy = self;
  static _Glass._GlassVariant.regular.getter();
  v5[3] = type metadata accessor for _Glass();
  v5[4] = &protocol witness table for _Glass;
  sub_100055E20(v5);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

- (void)_sss_setConcentricCornerMaskingConfiguration
{
  v3 = sub_100055840(&qword_1000D4088);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_100055840(&qword_1000D4090);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  selfCopy = self;
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_1000561A4(v5);
  v11 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  UIView.cornerMaskingConfiguration.setter();
}

@end