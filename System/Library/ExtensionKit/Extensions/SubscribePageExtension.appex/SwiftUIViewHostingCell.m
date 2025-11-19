@interface SwiftUIViewHostingCell
- (_TtC22SubscribePageExtension22SwiftUIViewHostingCell)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension22SwiftUIViewHostingCell)initWithFrame:(CGRect)a3;
@end

@implementation SwiftUIViewHostingCell

- (_TtC22SubscribePageExtension22SwiftUIViewHostingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_itemLayoutContext;
  v9 = sub_1007469A4();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview;
  sub_100749C04();
  swift_allocObject();
  *(&self->super.super.super.super.super.isa + v10) = sub_100749BF4();
  v12.receiver = self;
  v12.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return [(SwiftUIViewHostingCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtension22SwiftUIViewHostingCell)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_itemLayoutContext;
  v6 = sub_1007469A4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview;
  sub_100749C04();
  swift_allocObject();
  v8 = a3;
  *(&self->super.super.super.super.super.isa + v7) = sub_100749BF4();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SwiftUIViewHostingCell();
  v9 = [(SwiftUIViewHostingCell *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end