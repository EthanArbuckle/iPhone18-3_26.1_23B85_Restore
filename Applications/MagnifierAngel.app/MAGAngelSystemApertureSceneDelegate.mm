@interface MAGAngelSystemApertureSceneDelegate
- (_TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation MAGAngelSystemApertureSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100030694(sceneCopy);
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