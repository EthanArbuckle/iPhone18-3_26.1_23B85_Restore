@interface SwiftUIViewHostingCell
- (_TtC8AppStore22SwiftUIViewHostingCell)initWithCoder:(id)a3;
- (_TtC8AppStore22SwiftUIViewHostingCell)initWithFrame:(CGRect)a3;
@end

@implementation SwiftUIViewHostingCell

- (_TtC8AppStore22SwiftUIViewHostingCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_itemLayoutContext;
  v9 = type metadata accessor for ItemLayoutContext();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview;
  type metadata accessor for FlowPreviewEnvironment();
  swift_allocObject();
  *(&self->super.super.super.super.super.isa + v10) = FlowPreviewEnvironment.init()();
  v12.receiver = self;
  v12.super_class = type metadata accessor for SwiftUIViewHostingCell();
  return [(SwiftUIViewHostingCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC8AppStore22SwiftUIViewHostingCell)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_itemLayoutContext;
  v6 = type metadata accessor for ItemLayoutContext();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview;
  type metadata accessor for FlowPreviewEnvironment();
  swift_allocObject();
  v8 = a3;
  *(&self->super.super.super.super.super.isa + v7) = FlowPreviewEnvironment.init()();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SwiftUIViewHostingCell();
  v9 = [(SwiftUIViewHostingCell *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end