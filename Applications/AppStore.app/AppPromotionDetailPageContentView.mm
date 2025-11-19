@interface AppPromotionDetailPageContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore33AppPromotionDetailPageContentView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageContentView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_10071E4D4(v13, height);
  sub_10071E720(v13, v12);
  v6 = [(AppPromotionDetailPageContentView *)v5 traitCollection];
  v7 = AppPromotionDetailPageContentLayout.measure(toFit:with:)(v6, width, height);
  v9 = v8;

  sub_100409138(v12);
  sub_10040918C(v13);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10071EB3C();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(AppPromotionDetailPageContentView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100005744(0, &qword_100978360);
  v11 = static NSObject.== infix(_:_:)();

  v7 = v10;
  if (v11)
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

- (_TtC8AppStore33AppPromotionDetailPageContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end