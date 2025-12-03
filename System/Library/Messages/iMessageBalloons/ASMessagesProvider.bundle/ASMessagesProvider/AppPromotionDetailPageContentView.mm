@interface AppPromotionDetailPageContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider33AppPromotionDetailPageContentView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppPromotionDetailPageContentView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_3D1D40(v13, height);
  sub_3D1F8C(v13, v12);
  traitCollection = [(AppPromotionDetailPageContentView *)selfCopy traitCollection];
  v7 = AppPromotionDetailPageContentLayout.measure(toFit:with:)(traitCollection, width, height);
  v9 = v8;

  sub_3D6758(v12);
  sub_3D67AC(v13);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3D23A8();
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
  sub_BE70(0, &qword_94AB00);
  v11 = sub_76A1C0();

  v7 = v10;
  if (v11)
  {
LABEL_5:

    v10 = 0;
  }

  return v10;
}

- (_TtC18ASMessagesProvider33AppPromotionDetailPageContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end