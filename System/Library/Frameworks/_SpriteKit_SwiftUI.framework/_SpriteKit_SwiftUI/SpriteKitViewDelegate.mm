@interface SpriteKitViewDelegate
- (BOOL)view:(id)view shouldRenderAtTime:(double)time;
- (_TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5321SpriteKitViewDelegate)init;
@end

@implementation SpriteKitViewDelegate

- (BOOL)view:(id)view shouldRenderAtTime:(double)time
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5321SpriteKitViewDelegate_callback);
  v5 = *&self->callback[OBJC_IVAR____TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5321SpriteKitViewDelegate_callback];
  selfCopy = self;

  LOBYTE(v6) = v6(v8, time);

  return v6 & 1;
}

- (_TtC18_SpriteKit_SwiftUIP33_4A29C38A751B2448A1E2FA85CDDEAA5321SpriteKitViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end