@interface CameraAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC9CarCamera17CameraAppDelegate)init;
@end

@implementation CameraAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  selfCopy = self;
  CAFSignpostEmit_Launched();
  v5 = qword_10003CE20;
  qword_10003CE20 = selfCopy;

  return 1;
}

- (_TtC9CarCamera17CameraAppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9CarCamera17CameraAppDelegate_layoutConfig) = 2;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CameraAppDelegate();
  return [(CameraAppDelegate *)&v3 init];
}

@end