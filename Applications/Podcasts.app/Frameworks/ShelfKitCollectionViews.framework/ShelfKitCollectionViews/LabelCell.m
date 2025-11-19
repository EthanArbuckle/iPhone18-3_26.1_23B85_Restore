@interface LabelCell
- (_TtC23ShelfKitCollectionViews9LabelCell)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews9LabelCell)initWithFrame:(CGRect)a3;
@end

@implementation LabelCell

- (_TtC23ShelfKitCollectionViews9LabelCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9LabelCell_objectGraph) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LabelCell();
  return [(LabelCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews9LabelCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9LabelCell_objectGraph) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LabelCell();
  v4 = a3;
  v5 = [(LabelCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end