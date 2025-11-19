@interface UserGuideCoverPhotoImageProvider
- (_TtC4Maps32UserGuideCoverPhotoImageProvider)init;
- (void)collectionHandlerInfoUpdated:(id)a3;
- (void)dealloc;
@end

@implementation UserGuideCoverPhotoImageProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler);
  v5 = self;
  [v4 removeObserver:v5];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(UserGuideCoverPhotoImageProvider *)&v6 dealloc];
}

- (_TtC4Maps32UserGuideCoverPhotoImageProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionHandlerInfoUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100532DD8([v4 image]);
}

@end