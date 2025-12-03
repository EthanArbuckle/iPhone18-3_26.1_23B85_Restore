@interface TestingAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (_TtC7SwiftUI18TestingAppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation TestingAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:role];

  type metadata accessor for TestingSceneDelegate();
  [v7 setDelegateClass_];

  return v7;
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  LOBYTE(v7) = specialized TestingAppDelegate.application(_:runTest:options:)(applicationCopy, v7, v9);

  return v7 & 1;
}

- (_TtC7SwiftUI18TestingAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TestingAppDelegate();
  return [(TestingAppDelegate *)&v3 init];
}

@end