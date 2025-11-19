@interface EXRemoteSceneDelegate
- (EXRemoteSceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation EXRemoteSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___EXRemoteSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR___EXRemoteSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D29EE718(v8, v9);
}

- (EXRemoteSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR___EXRemoteSceneDelegate_window) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EXRemoteSceneDelegate();
  return [(EXRemoteSceneDelegate *)&v3 init];
}

@end