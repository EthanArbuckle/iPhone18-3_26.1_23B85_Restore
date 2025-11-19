@interface LocalSceneDelegate
- (_TtC12PreviewShell18LocalSceneDelegate)init;
@end

@implementation LocalSceneDelegate

- (_TtC12PreviewShell18LocalSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell18LocalSceneDelegate_previewShellScene);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(SceneDelegate *)&v6 init];
}

@end