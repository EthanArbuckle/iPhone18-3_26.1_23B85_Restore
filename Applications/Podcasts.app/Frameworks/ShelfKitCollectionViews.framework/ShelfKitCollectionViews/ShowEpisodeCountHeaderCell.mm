@interface ShowEpisodeCountHeaderCell
- (UILabel)accessibilityTitle;
- (_TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell)initWithFrame:(CGRect)frame;
- (void)artworkTapped;
@end

@implementation ShowEpisodeCountHeaderCell

- (void)artworkTapped
{
  selfCopy = self;
  sub_133858();
}

- (UILabel)accessibilityTitle
{
  result = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_internalArtworkView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_title) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_episodesCount) = 0;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_model;
  v10 = sub_30A288();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell____lazy_storage___artworkTapGesture) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26ShowEpisodeCountHeaderCell_objectGraph) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(ShowEpisodeCountHeaderCell *)&v12 initWithFrame:x, y, width, height];
}

@end