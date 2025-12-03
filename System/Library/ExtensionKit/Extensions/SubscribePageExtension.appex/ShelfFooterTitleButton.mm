@interface ShelfFooterTitleButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension22ShelfFooterTitleButton)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension22ShelfFooterTitleButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateConfiguration;
@end

@implementation ShelfFooterTitleButton

- (_TtC22SubscribePageExtension22ShelfFooterTitleButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921CA0 != -1)
  {
    v16 = v9;
    swift_once();
    v9 = v16;
  }

  v12 = sub_10000D0FC(v9, qword_100982D18);
  sub_10059C530(v12, v11);
  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_1006943B4(v11, x, y, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (_TtC22SubscribePageExtension22ShelfFooterTitleButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_100694B64();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ShelfFooterTitleButton *)&v5 layoutSubviews];
  sub_1006949AC(v4);
  sub_10000C888(v4, v4[3]);
  sub_1007477B4();
  traitCollection = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100695690(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end