@interface RCAppIntentsManager
+ (uint64_t)registerDependencies;
+ (void)setupIntentSceneConfigurator;
- (_TtC10VoiceMemos19RCAppIntentsManager)init;
@end

@implementation RCAppIntentsManager

+ (uint64_t)registerDependencies
{
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AnyHashable.init<A>(_:)();
  AppDependencyManager.add<A>(key:dependency:)();
  sub_100003FC4(v1);
  AnyHashable.init<A>(_:)();
  sub_1000C773C(&qword_1002D1E60);
  AppDependencyManager.add<A>(key:dependency:)();
  sub_100003FC4(v1);
  AnyHashable.init<A>(_:)();
  sub_1000C773C(&qword_1002D1E68);
  AppDependencyManager.add<A>(key:dependency:)();

  return sub_100003FC4(v1);
}

+ (void)setupIntentSceneConfigurator
{
  type metadata accessor for AppManager();
  sub_100003F6C();
  static AppManager.sceneConfigurator.setter();
}

- (_TtC10VoiceMemos19RCAppIntentsManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCAppIntentsManager();
  return [(RCAppIntentsManager *)&v3 init];
}

@end