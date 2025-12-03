@interface AlarmKitApertureElementController
- (NSString)associatedAppBundleIdentifier;
- (NSURL)launchURL;
- (_TtC10ClockAngel33AlarmKitApertureElementController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeightForBottomSafeArea;
- (void)collapse;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setElementIdentifier:(id)identifier;
- (void)setLaunchURL:(id)l;
- (void)setPresentationBehaviors:(unint64_t)behaviors;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AlarmKitApertureElementController

- (void)setPresentationBehaviors:(unint64_t)behaviors
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors);
  *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors) = behaviors;
  if (v4 != behaviors)
  {
    selfCopy = self;
    [-[AlarmKitApertureElementController systemApertureElementContext](selfCopy "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  v3 = *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode);
  *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode) = mode;
  selfCopy = self;
  sub_10008CA74(v3);
}

- (void)setElementIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier);
  *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier) = identifier;
  identifierCopy = identifier;
}

- (double)preferredHeightForBottomSafeArea
{
  selfCopy = self;
  view = [(AlarmKitApertureElementController *)selfCopy view];
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

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier + 8);

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

  v6 = (self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier);
  v7 = *(self + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSURL)launchURL
{
  v3 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
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

  v11 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  swift_beginAccess();
  selfCopy = self;
  sub_10004EC60(v8, self + v11, &unk_100119A20, &qword_1000D1DC0);
  swift_endAccess();
}

- (_TtC10ClockAngel33AlarmKitApertureElementController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10008ECB0(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008F4C8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10008F614(appear);
}

- (void)collapse
{
  selfCopy = self;
  [-[AlarmKitApertureElementController systemApertureElementContext](selfCopy "systemApertureElementContext")];
  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AlarmKitApertureElementController(0);
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(AlarmKitApertureElementController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_100096874;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000C1628;
  v11[3] = &unk_100102D38;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

@end