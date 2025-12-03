@interface StopwatchApertureController
- (NSString)associatedAppBundleIdentifier;
- (NSURL)launchURL;
- (_TtC10ClockAngel27StopwatchApertureController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeightForBottomSafeArea;
- (void)didPauseLapTimer;
- (void)didResumeLapTimer;
- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setElementIdentifier:(id)identifier;
- (void)setLaunchURL:(id)l;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation StopwatchApertureController

- (double)preferredHeightForBottomSafeArea
{
  selfCopy = self;
  view = [(StopwatchApertureController *)selfCopy view];
  if (view)
  {
    v5 = view;
    sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];

    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v16.origin.x = v8;
    v16.origin.y = v10;
    v16.size.width = v12;
    v16.size.height = v14;
    Height = CGRectGetHeight(v16);

    return 84.0 - Height;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSURL)launchURL
{
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL;
  swift_beginAccess();
  sub_1000574B0(self + v7, v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

- (void)setLaunchURL:(id)l
{
  v5 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_launchURL;
  swift_beginAccess();
  selfCopy = self;
  sub_100057440(v8, self + v11);
  swift_endAccess();
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssociatedAppBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier);
  *(self + OBJC_IVAR____TtC10ClockAngel27StopwatchApertureController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000C3700(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)didUpdateCurrentInterval:(double)interval adjustedCurrentInterval:(double)currentInterval totalInterval:(double)totalInterval adjustedTotalInterval:(double)adjustedTotalInterval isStopwatchRunning:(BOOL)running isStopwatchStopped:(BOOL)stopped
{
  selfCopy = self;
  sub_1000C4A50(running, stopped, interval, currentInterval, totalInterval, adjustedTotalInterval);
}

- (void)didPauseLapTimer
{
  selfCopy = self;
  sub_1000C4EA0(&selRef_didPauseLapTimer);
}

- (void)didResumeLapTimer
{
  selfCopy = self;
  sub_1000C4EA0(&selRef_didResumeLapTimer);
}

- (_TtC10ClockAngel27StopwatchApertureController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000C57D0(v5, v7, bundle);
}

@end