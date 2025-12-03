@interface SearchHintCell
- (BOOL)isSelected;
- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithFrame:(CGRect)frame;
- (void)setSelected:(BOOL)selected;
@end

@implementation SearchHintCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SearchHintCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_1301A0(selected);
}

- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_objectGraph) = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  v10 = sub_3077F8();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(SearchHintCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_objectGraph) = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  v7 = sub_3077F8();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  coderCopy = coder;
  v9 = [(SearchHintCell *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end