@interface UserGuidesContextConfiguration
- (_TtC4Maps30UserGuidesContextConfiguration)init;
- (_TtC4Maps30UserGuidesContextConfiguration)initWithCollectionHandler:(id)handler excludedPlaceCardContent:(int64_t)content;
@end

@implementation UserGuidesContextConfiguration

- (_TtC4Maps30UserGuidesContextConfiguration)initWithCollectionHandler:(id)handler excludedPlaceCardContent:(int64_t)content
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_collectionHandler) = handler;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_excludedPlaceCardContent) = content;
  v10.receiver = self;
  v10.super_class = ObjectType;
  handlerCopy = handler;
  return [(UserGuidesContextConfiguration *)&v10 init];
}

- (_TtC4Maps30UserGuidesContextConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end