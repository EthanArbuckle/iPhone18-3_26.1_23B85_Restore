@interface UserGuideCoverPhotoImageProvider
- (_TtC4Maps32UserGuideCoverPhotoImageProvider)init;
- (void)collectionHandlerInfoUpdated:(id)updated;
- (void)dealloc;
@end

@implementation UserGuideCoverPhotoImageProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler);
  selfCopy = self;
  [v4 removeObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(UserGuideCoverPhotoImageProvider *)&v6 dealloc];
}

- (_TtC4Maps32UserGuideCoverPhotoImageProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionHandlerInfoUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_100532DD8([updatedCopy image]);
}

@end