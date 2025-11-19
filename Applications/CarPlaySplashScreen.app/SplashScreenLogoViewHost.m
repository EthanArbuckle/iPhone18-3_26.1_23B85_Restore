@interface SplashScreenLogoViewHost
+ (id)logoView;
- (_TtC19CarPlaySplashScreen24SplashScreenLogoViewHost)init;
@end

@implementation SplashScreenLogoViewHost

+ (id)logoView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = objc_allocWithZone(sub_100002D04(&qword_10000D0E0, &qword_100005450));
  v3 = _UIHostingView.init(rootView:)();

  return v3;
}

- (_TtC19CarPlaySplashScreen24SplashScreenLogoViewHost)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SplashScreenLogoViewHost();
  return [(SplashScreenLogoViewHost *)&v3 init];
}

@end