@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillTerminate:(id)terminate;
- (void)sidecarServicePresenterServiceExtensionReady:(id)ready;
- (void)sidecarServicePresenterStartServiceExtension:(id)extension completion:(id)completion;
- (void)sidecarServicePresenterTerminate;
@end

@implementation AppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100003AB8(&qword_100025F90, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  sub_100001918();

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100003AB8(&qword_100025F90, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  sub_100001A10(selfCopy, optionsCopy);

  return 1;
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100001DE8(selfCopy);
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100001E48(selfCopy);
}

- (void)applicationWillTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_100001F00();
}

- (void)sidecarServicePresenterStartServiceExtension:(id)extension completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100002068(v6, v8, sub_100003850, v9);
}

- (void)sidecarServicePresenterServiceExtensionReady:(id)ready
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100002864(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)sidecarServicePresenterTerminate
{
  selfCopy = self;
  sub_100002C9C();
}

@end