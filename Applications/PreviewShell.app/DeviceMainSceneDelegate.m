@interface DeviceMainSceneDelegate
- (_TtC12PreviewShell23DeviceMainSceneDelegate)init;
- (void)setWindow:(id)a3;
@end

@implementation DeviceMainSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window) = a3;
  v3 = a3;
}

- (_TtC12PreviewShell23DeviceMainSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_window) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_mainViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PreviewShell23DeviceMainSceneDelegate_previewShellScene) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SceneDelegate *)&v5 init];
}

@end