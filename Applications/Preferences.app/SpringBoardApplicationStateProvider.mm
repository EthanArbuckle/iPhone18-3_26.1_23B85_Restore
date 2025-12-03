@interface SpringBoardApplicationStateProvider
- (void)homeScreenServiceHomeScreenApplicationsDidChange:(id)change;
@end

@implementation SpringBoardApplicationStateProvider

- (void)homeScreenServiceHomeScreenApplicationsDidChange:(id)change
{
  v4 = sub_10004DED0(&unk_10015C7A0, &unk_100112A90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  changeCopy = change;

  allHomeScreenApplicationBundleIdentifiers = [changeCopy allHomeScreenApplicationBundleIdentifiers];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12[1] = v11;
  sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  AsyncStream.Continuation.yield(_:)();

  (*(v5 + 8))(v8, v4);
}

@end