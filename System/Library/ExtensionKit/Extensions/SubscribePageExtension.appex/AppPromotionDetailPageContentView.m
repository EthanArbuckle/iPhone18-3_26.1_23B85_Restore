@interface AppPromotionDetailPageContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension33AppPromotionDetailPageContentView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageContentView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_100622FBC(v13, height);
  sub_100623208(v13, v12);
  v6 = [(AppPromotionDetailPageContentView *)v5 traitCollection];
  v7 = AppPromotionDetailPageContentLayout.measure(toFit:with:)(v6, width, height);
  v9 = v8;

  sub_100582178(v12);
  sub_1005821CC(v13);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100623624();
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
  sub_100016C60(0, &qword_1009327F0);
  v11 = sub_100753FC4();

  v7 = v10;
  if (v11)
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

- (_TtC22SubscribePageExtension33AppPromotionDetailPageContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end