@interface AppPromotionDetailPageContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension33AppPromotionDetailPageContentView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageContentView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_100622FBC(v13, height);
  sub_100623208(v13, v12);
  traitCollection = [(AppPromotionDetailPageContentView *)selfCopy traitCollection];
  v7 = AppPromotionDetailPageContentLayout.measure(toFit:with:)(traitCollection, width, height);
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
  selfCopy = self;
  sub_100623624();
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

- (_TtC22SubscribePageExtension33AppPromotionDetailPageContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end