@interface ChannelUberCollectionViewCell
- (_TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ChannelUberCollectionViewCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_15F5C8(change);
}

- (_TtC23ShelfKitCollectionViews29ChannelUberCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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