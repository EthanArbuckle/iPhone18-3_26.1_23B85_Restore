@interface UIView
+ (void)sss_animateWithAnimationParameters:(id)a3 animations:(id)a4 completion:(id)a5;
- (void)_sss_setConcentricCornerMaskingConfiguration;
- (void)_sss_setGlassBackground;
- (void)sss_setFrameUnanimating:(CGRect)a3;
- (void)sss_setFrameUnanimatingIfChangingFromCGSizeZero:(CGRect)a3;
- (void)sss_setFrameUnanimatingLayingOut:(CGRect)a3;
@end

@implementation UIView

- (void)sss_setFrameUnanimatingIfChangingFromCGSizeZero:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)sss_setFrameUnanimating:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)sss_setFrameUnanimatingLayingOut:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

+ (void)sss_animateWithAnimationParameters:(id)a3 animations:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100030230;
  v21[3] = &unk_1000BAC78;
  v10 = v7;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v13 = objc_retainBlock(v21);
  if ([v10 animationReason])
  {
    v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    minimum = v25.minimum;
    maximum = v25.maximum;
    preferred = v25.preferred;
    v17 = [v10 animationReason];
    *&v18 = minimum;
    *&v19 = maximum;
    *&v20 = preferred;
    [UIView _modifyAnimationsWithPreferredFrameRateRange:v17 | 0x160000u updateReason:v13 animations:v18, v19, v20];
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
  v4 = self;
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
  v10 = self;
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_1000561A4(v5);
  v11 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  UIView.cornerMaskingConfiguration.setter();
}

@end