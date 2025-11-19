@interface SubscriptionLinkCell
- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithFrame:(CGRect)a3;
@end

@implementation SubscriptionLinkCell

- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20SubscriptionLinkCell_objectGraph) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SubscriptionLinkCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20SubscriptionLinkCell_objectGraph) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(SubscriptionLinkCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end