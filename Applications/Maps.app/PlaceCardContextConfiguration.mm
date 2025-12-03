@interface PlaceCardContextConfiguration
- (_TtC4Maps29PlaceCardContextConfiguration)init;
- (_TtC4Maps29PlaceCardContextConfiguration)initWithPlaceCardItem:(id)item shouldInsertInHistory:(BOOL)history excludedContent:(int64_t)content buildingMultistopRoute:(BOOL)route;
@end

@implementation PlaceCardContextConfiguration

- (_TtC4Maps29PlaceCardContextConfiguration)initWithPlaceCardItem:(id)item shouldInsertInHistory:(BOOL)history excludedContent:(int64_t)content buildingMultistopRoute:(BOOL)route
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem) = item;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory) = history;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent) = content;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute) = route;
  v14.receiver = self;
  v14.super_class = ObjectType;
  itemCopy = item;
  return [(PlaceCardContextConfiguration *)&v14 init];
}

- (_TtC4Maps29PlaceCardContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end