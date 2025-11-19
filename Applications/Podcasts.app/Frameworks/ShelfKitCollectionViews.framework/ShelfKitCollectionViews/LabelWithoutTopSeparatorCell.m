@interface LabelWithoutTopSeparatorCell
- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithFrame:(CGRect)a3;
@end

@implementation LabelWithoutTopSeparatorCell

- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LabelWithoutTopSeparatorCell();
  return [(LabelCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LabelWithoutTopSeparatorCell();
  v4 = a3;
  v5 = [(LabelCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end