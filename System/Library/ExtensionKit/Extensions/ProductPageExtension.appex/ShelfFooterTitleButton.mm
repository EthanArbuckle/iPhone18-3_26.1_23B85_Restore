@interface ShelfFooterTitleButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension22ShelfFooterTitleButton)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension22ShelfFooterTitleButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateConfiguration;
@end

@implementation ShelfFooterTitleButton

- (_TtC20ProductPageExtension22ShelfFooterTitleButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940958 != -1)
  {
    v16 = v9;
    swift_once();
    v9 = v16;
  }

  v12 = sub_10000A61C(v9, qword_1009A0A50);
  sub_100181D74(v12, v11);
  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_1005AE468(v11, x, y, width, height);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (_TtC20ProductPageExtension22ShelfFooterTitleButton)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  v2 = self;
  sub_1005AEC18();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ShelfFooterTitleButton *)&v5 layoutSubviews];
  sub_1005AEA60(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  v3 = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1005AF744(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end