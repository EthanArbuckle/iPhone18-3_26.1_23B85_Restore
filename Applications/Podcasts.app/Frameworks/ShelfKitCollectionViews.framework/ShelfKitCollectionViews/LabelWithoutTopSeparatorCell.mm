@interface LabelWithoutTopSeparatorCell
- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithFrame:(CGRect)frame;
@end

@implementation LabelWithoutTopSeparatorCell

- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for LabelWithoutTopSeparatorCell();
  return [(LabelCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews28LabelWithoutTopSeparatorCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LabelWithoutTopSeparatorCell();
  coderCopy = coder;
  v5 = [(LabelCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end