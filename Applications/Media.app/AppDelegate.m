@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1000ADE14();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_1000ACFE4();

  return v8 & 1;
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000AD494(a4);
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000AD6C4(v6);
}

@end