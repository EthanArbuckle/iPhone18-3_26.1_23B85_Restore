@interface SwiftUIViewHostingCell
- (_TtC8AppStore22SwiftUIViewHostingCell)initWithCoder:(id)coder;
- (_TtC8AppStore22SwiftUIViewHostingCell)initWithFrame:(CGRect)frame;
@end

@implementation SwiftUIViewHostingCell

- (_TtC8AppStore22SwiftUIViewHostingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC8AppStore22SwiftUIViewHostingCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_itemLayoutContext;
  v6 = type metadata accessor for ItemLayoutContext();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview;
  type metadata accessor for FlowPreviewEnvironment();
  swift_allocObject();
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v7) = FlowPreviewEnvironment.init()();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SwiftUIViewHostingCell();
  v9 = [(SwiftUIViewHostingCell *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end