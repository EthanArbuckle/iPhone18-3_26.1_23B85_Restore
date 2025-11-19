@interface ChannelUberCollectionViewCell
- (_TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ChannelUberCollectionViewCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_15F5C8(a3);
}

- (_TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_innerView);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_currentModel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_sizeClass) = 8;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell_objectGraph) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(UberCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
}

@end