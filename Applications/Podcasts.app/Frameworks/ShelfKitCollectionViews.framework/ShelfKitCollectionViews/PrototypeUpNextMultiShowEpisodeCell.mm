@interface PrototypeUpNextMultiShowEpisodeCell
- (_TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell)initWithFrame:(CGRect)frame;
- (void)buttonPressed;
@end

@implementation PrototypeUpNextMultiShowEpisodeCell

- (_TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton) = 0;
  v9 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid);
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(MultiShowEpisodeCell *)&v14 initWithFrame:x, y, width, height];
  contentView = [(PrototypeUpNextMultiShowEpisodeCell *)height contentView];
  v12 = sub_FE7E8();
  [contentView addSubview:v12];

  return height;
}

- (void)buttonPressed
{
  selfCopy = self;
  sub_FED44();
}

@end