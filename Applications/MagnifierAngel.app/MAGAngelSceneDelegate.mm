@interface MAGAngelSceneDelegate
- (_TtC14MagnifierAngel21MAGAngelSceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation MAGAngelSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000303B0(sceneCopy);
}

- (_TtC14MagnifierAngel21MAGAngelSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MAGAngelSceneDelegate *)&v5 init];
}

@end