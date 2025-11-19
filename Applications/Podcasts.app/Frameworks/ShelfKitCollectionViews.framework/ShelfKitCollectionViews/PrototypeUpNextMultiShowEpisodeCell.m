@interface PrototypeUpNextMultiShowEpisodeCell
- (_TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell)initWithFrame:(CGRect)a3;
- (void)buttonPressed;
@end

@implementation PrototypeUpNextMultiShowEpisodeCell

- (_TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell____lazy_storage___infoButton) = 0;
  v9 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews35PrototypeUpNextMultiShowEpisodeCell_podcastUuid);
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v10 = [(MultiShowEpisodeCell *)&v14 initWithFrame:x, y, width, height];
  v11 = [(PrototypeUpNextMultiShowEpisodeCell *)v10 contentView];
  v12 = sub_FE7E8();
  [v11 addSubview:v12];

  return v10;
}

- (void)buttonPressed
{
  v2 = self;
  sub_FED44();
}

@end