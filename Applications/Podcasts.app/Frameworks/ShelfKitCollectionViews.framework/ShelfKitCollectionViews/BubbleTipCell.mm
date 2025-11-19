@interface BubbleTipCell
- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithFrame:(CGRect)a3;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)prepareForReuse;
@end

@implementation BubbleTipCell

- (void)prepareForReuse
{
  v2 = self;
  sub_11FE8C();
}

- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(BubbleTipCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews13BubbleTipCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BubbleTipCell_messageViewController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(BubbleTipCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1205C4(v6, v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1220B0(a4);
}

@end