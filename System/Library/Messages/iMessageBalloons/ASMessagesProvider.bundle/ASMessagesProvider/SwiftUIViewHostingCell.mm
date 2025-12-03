@interface SwiftUIViewHostingCell
- (_TtC18ASMessagesProvider22SwiftUIViewHostingCell)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider22SwiftUIViewHostingCell)initWithFrame:(CGRect)frame;
@end

@implementation SwiftUIViewHostingCell

- (_TtC18ASMessagesProvider22SwiftUIViewHostingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_itemLayoutContext;
  v9 = sub_75C840();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_flowPreview;
  sub_75FB70();
  swift_allocObject();
  *(&self->super.super.super.super.super.isa + v10) = sub_75FB60();
  v12.receiver = self;
  v12.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return [(SwiftUIViewHostingCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC18ASMessagesProvider22SwiftUIViewHostingCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_itemLayoutContext;
  v6 = sub_75C840();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider22SwiftUIViewHostingCell_flowPreview;
  sub_75FB70();
  swift_allocObject();
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v7) = sub_75FB60();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SwiftUIViewHostingCell();
  v9 = [(SwiftUIViewHostingCell *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end