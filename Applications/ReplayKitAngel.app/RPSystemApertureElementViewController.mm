@interface RPSystemApertureElementViewController
- (NSString)associatedAppBundleIdentifier;
- (NSString)elementIdentifier;
- (NSURL)launchURL;
- (UIColor)keyColor;
- (_TtC14ReplayKitAngel37RPSystemApertureElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)preferredHeightForBottomSafeArea;
- (int64_t)activeLayoutMode;
- (int64_t)contentRole;
- (int64_t)maximumLayoutMode;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (unint64_t)statusBarStyleOverridesToSuppress;
- (void)deleteRecording;
- (void)didEnterBackgroud;
- (void)didTapStopButton;
- (void)handleCompletionTimeout;
- (void)handleCustomViewLongPressEvent;
- (void)openSaveToDestination;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setAssociatedAppBundleIdentifier:(id)identifier;
- (void)setContentRole:(int64_t)role;
- (void)setLaunchURL:(id)l;
- (void)setMaximumLayoutMode:(int64_t)mode;
- (void)setPreferredHeightForBottomSafeArea:(double)area;
- (void)setPreferredLayoutMode:(int64_t)mode;
- (void)setPresentationBehaviors:(unint64_t)behaviors;
- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)suppress;
- (void)showBannerWithURL:(id)l identifier:(id)identifier sessionID:(id)d;
- (void)startRecording;
- (void)stopButtonTapped;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation RPSystemApertureElementViewController

- (int64_t)activeLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  *(self + v5) = mode;
}

- (int64_t)contentRole
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentRole:(int64_t)role
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  *(self + v5) = role;
}

- (int64_t)preferredLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredLayoutMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  *(self + v5) = mode;
}

- (int64_t)maximumLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMaximumLayoutMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  *(self + v5) = mode;
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)suppress
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  *(self + v5) = suppress;
}

- (double)preferredHeightForBottomSafeArea
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredHeightForBottomSafeArea:(double)area
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  *(self + v5) = area;
}

- (unint64_t)presentationBehaviors
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentationBehaviors:(unint64_t)behaviors
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  *(self + v5) = behaviors;
}

- (NSString)elementIdentifier
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  return *(self + v3);
}

- (UIColor)keyColor
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = (self + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_associatedAppBundleIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

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
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_associatedAppBundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSURL)launchURL
{
  v3 = (*(*(sub_10000B62C(&qword_100068DF0, qword_100047E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  sub_10002ADB4(self + v6, v5, &qword_100068DF0, qword_100047E90);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setLaunchURL:(id)l
{
  v5 = (*(*(sub_10000B62C(&qword_100068DF0, qword_100047E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  selfCopy = self;
  sub_1000298BC(v7, self + v10);
  swift_endAccess();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100017204();
}

- (void)handleCustomViewLongPressEvent
{
  selfCopy = self;
  sub_100019E00();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001AA74(coordinator);
  swift_unknownObjectRelease();
}

- (void)stopButtonTapped
{
  selfCopy = self;
  sub_10001F814();
}

- (void)didEnterBackgroud
{
  selfCopy = self;
  sub_100021DBC();
}

- (void)showBannerWithURL:(id)l identifier:(id)identifier sessionID:(id)d
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (identifier)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  selfCopy = self;
  sub_100022D48(v11, v12, identifier, v14, v16);

  (*(v8 + 8))(v11, v7);
}

- (void)startRecording
{
  selfCopy = self;
  sub_1000243D4();
}

- (void)didTapStopButton
{
  selfCopy = self;
  sub_100024D6C();
}

- (void)handleCompletionTimeout
{
  selfCopy = self;
  sub_1000255AC();
}

- (void)openSaveToDestination
{
  selfCopy = self;
  sub_10002746C();
}

- (void)deleteRecording
{
  selfCopy = self;
  sub_100027D3C();
}

- (_TtC14ReplayKitAngel37RPSystemApertureElementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end