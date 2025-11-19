@interface TimerApertureElementController
- (NSString)associatedAppBundleIdentifier;
- (NSURL)launchURL;
- (_TtC10ClockAngel30TimerApertureElementController)init;
- (_TtC10ClockAngel30TimerApertureElementController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)preferredHeightForBottomSafeArea;
- (id)_timelinesForDateInterval:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)collapse;
- (void)playPausedAction;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setElementIdentifier:(id)a3;
- (void)setLaunchURL:(id)a3;
- (void)setPresentationBehaviors:(unint64_t)a3;
- (void)stopAction;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TimerApertureElementController

- (void)setPresentationBehaviors:(unint64_t)a3
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors);
  *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_presentationBehaviors) = a3;
  if (v4 != a3)
  {
    v5 = self;
    [-[TimerApertureElementController systemApertureElementContext](v5 "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }
}

- (double)preferredHeightForBottomSafeArea
{
  v2 = self;
  v3 = [(TimerApertureElementController *)v2 view];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 SBUISA_systemApertureObstructedAreaLayoutGuide];

    [v6 layoutFrame];
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
  v7 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL;
  swift_beginAccess();
  sub_10002CFC4(self + v7, v6, &unk_100119A20, &qword_1000D1DC0);
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

- (void)setLaunchURL:(id)a3
{
  v5 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  if (a3)
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

  v11 = OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_launchURL;
  swift_beginAccess();
  v12 = self;
  sub_10004EC60(v8, self + v11, &unk_100119A20, &qword_1000D1DC0);
  swift_endAccess();
}

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssociatedAppBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (void)setElementIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier);
  *(self + OBJC_IVAR____TtC10ClockAngel30TimerApertureElementController_elementIdentifier) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000B4E30();
}

- (_TtC10ClockAngel30TimerApertureElementController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000B5C9C(v5, v7, a4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B6674(a3);
}

- (void)playPausedAction
{
  v2 = self;
  sub_1000BBF38();
}

- (void)stopAction
{
  v2 = self;
  sub_1000BC4BC();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1000BC698(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)collapse
{
  v2 = self;
  [-[TimerApertureElementController systemApertureElementContext](v2 "systemApertureElementContext")];
  swift_unknownObjectRelease();
}

- (_TtC10ClockAngel30TimerApertureElementController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000BF7D4(a3);
}

- (id)_timelinesForDateInterval:(id)a3
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v11 = type metadata accessor for TimerApertureElementController(0);
  v14.receiver = v9;
  v14.super_class = v11;
  v12 = [(TimerApertureElementController *)&v14 _timelinesForDateInterval:isa];

  if (!v12)
  {
    sub_10002BB3C(0, &unk_100119780, BLSAlwaysOnTimeline_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = Array._bridgeToObjectiveC()().super.isa;
  }

  (*(v5 + 8))(v8, v4);

  return v12;
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000BFE7C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1000BFEC4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B270;
  aBlock[3] = &unk_100103A30;
  v9 = _Block_copy(aBlock);
  v10 = a3;
  v11 = self;

  v12.receiver = v11;
  v12.super_class = type metadata accessor for TimerApertureElementController(0);
  [(TimerApertureElementController *)&v12 _updateWithFrameSpecifier:v10 completion:v9];

  _Block_release(v9);
}

@end