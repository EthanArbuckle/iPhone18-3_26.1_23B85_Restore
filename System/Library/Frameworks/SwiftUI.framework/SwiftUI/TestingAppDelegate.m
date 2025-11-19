@interface TestingAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (_TtC7SwiftUI18TestingAppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation TestingAppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v6];

  type metadata accessor for TestingSceneDelegate();
  [v7 setDelegateClass_];

  return v7;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = specialized TestingAppDelegate.application(_:runTest:options:)(v10, v7, v9);

  return v7 & 1;
}

- (_TtC7SwiftUI18TestingAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TestingAppDelegate();
  return [(TestingAppDelegate *)&v3 init];
}

@end