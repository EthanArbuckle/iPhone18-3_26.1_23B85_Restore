@interface SubscriptionLinkCell
- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithFrame:(CGRect)frame;
@end

@implementation SubscriptionLinkCell

- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20SubscriptionLinkCell_objectGraph) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SubscriptionLinkCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews20SubscriptionLinkCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20SubscriptionLinkCell_objectGraph) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(SubscriptionLinkCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end