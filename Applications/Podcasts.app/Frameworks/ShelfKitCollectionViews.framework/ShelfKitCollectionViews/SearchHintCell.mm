@interface SearchHintCell
- (BOOL)isSelected;
- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation SearchHintCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SearchHintCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_1301A0(a3);
}

- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_objectGraph) = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  v10 = sub_3077F8();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(SearchHintCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews14SearchHintCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_objectGraph) = 0;
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews14SearchHintCell_model;
  v7 = sub_3077F8();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(SearchHintCell *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end