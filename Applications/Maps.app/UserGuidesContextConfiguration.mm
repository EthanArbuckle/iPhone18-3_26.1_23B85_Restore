@interface UserGuidesContextConfiguration
- (_TtC4Maps30UserGuidesContextConfiguration)init;
- (_TtC4Maps30UserGuidesContextConfiguration)initWithCollectionHandler:(id)a3 excludedPlaceCardContent:(int64_t)a4;
@end

@implementation UserGuidesContextConfiguration

- (_TtC4Maps30UserGuidesContextConfiguration)initWithCollectionHandler:(id)a3 excludedPlaceCardContent:(int64_t)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_collectionHandler) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_excludedPlaceCardContent) = a4;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = a3;
  return [(UserGuidesContextConfiguration *)&v10 init];
}

- (_TtC4Maps30UserGuidesContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end