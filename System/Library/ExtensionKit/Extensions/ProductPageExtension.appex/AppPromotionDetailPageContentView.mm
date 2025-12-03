@interface AppPromotionDetailPageContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension33AppPromotionDetailPageContentView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageContentView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1006CFFDC(v13, height);
  sub_1006D0228(v13, v12);
  traitCollection = [(AppPromotionDetailPageContentView *)selfCopy traitCollection];
  v7 = AppPromotionDetailPageContentLayout.measure(toFit:with:)(traitCollection, width, height);
  v9 = v8;

  sub_10050770C(v12);
  sub_100507760(v13);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006D0644();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(AppPromotionDetailPageContentView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100016F40(0, &qword_10094D040);
  v11 = sub_100770EEC();

  v7 = v10;
  if (v11)
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

- (_TtC20ProductPageExtension33AppPromotionDetailPageContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end