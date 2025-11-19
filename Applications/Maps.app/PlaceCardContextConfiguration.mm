@interface PlaceCardContextConfiguration
- (_TtC4Maps29PlaceCardContextConfiguration)init;
- (_TtC4Maps29PlaceCardContextConfiguration)initWithPlaceCardItem:(id)a3 shouldInsertInHistory:(BOOL)a4 excludedContent:(int64_t)a5 buildingMultistopRoute:(BOOL)a6;
@end

@implementation PlaceCardContextConfiguration

- (_TtC4Maps29PlaceCardContextConfiguration)initWithPlaceCardItem:(id)a3 shouldInsertInHistory:(BOOL)a4 excludedContent:(int64_t)a5 buildingMultistopRoute:(BOOL)a6
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute) = a6;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = a3;
  return [(PlaceCardContextConfiguration *)&v14 init];
}

- (_TtC4Maps29PlaceCardContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end