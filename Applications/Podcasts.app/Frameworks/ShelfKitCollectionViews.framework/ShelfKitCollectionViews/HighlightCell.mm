@interface HighlightCell
- (_TtC23ShelfKitCollectionViews13HighlightCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews13HighlightCell)initWithFrame:(CGRect)frame;
@end

@implementation HighlightCell

- (_TtC23ShelfKitCollectionViews13HighlightCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_highlightView;
  *(&self->super.super.super.super.super.isa + v9) = [objc_allocWithZone(SLAttributionView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_objectGraph) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(HighlightCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews13HighlightCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_highlightView;
  v6 = objc_allocWithZone(SLAttributionView);
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v5) = [v6 init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13HighlightCell_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

@end