@interface MAGAngelSystemApertureSceneDelegate
- (_TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation MAGAngelSystemApertureSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100030694(v8);
}

- (_TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate_window) = 0;
  v4 = OBJC_IVAR____TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate_systemApertureElementProvider;
  type metadata accessor for MAGAngelSystemApertureViewController();
  *(&self->super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MAGAngelSystemApertureSceneDelegate *)&v6 init];
}

@end