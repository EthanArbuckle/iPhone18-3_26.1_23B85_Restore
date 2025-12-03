@interface LabelCell
- (_TtC23ShelfKitCollectionViews9LabelCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews9LabelCell)initWithFrame:(CGRect)frame;
@end

@implementation LabelCell

- (_TtC23ShelfKitCollectionViews9LabelCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9LabelCell_objectGraph) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LabelCell();
  return [(LabelCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews9LabelCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9LabelCell_objectGraph) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LabelCell();
  coderCopy = coder;
  v5 = [(LabelCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end