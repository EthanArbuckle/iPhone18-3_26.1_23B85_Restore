@interface RPSystemApertureElementViewController
- (NSString)associatedAppBundleIdentifier;
- (NSString)elementIdentifier;
- (NSURL)launchURL;
- (UIColor)keyColor;
- (_TtC14ReplayKitAngel37RPSystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setContentRole:(int64_t)a3;
- (void)setLaunchURL:(id)a3;
- (void)setMaximumLayoutMode:(int64_t)a3;
- (void)setPreferredHeightForBottomSafeArea:(double)a3;
- (void)setPreferredLayoutMode:(int64_t)a3;
- (void)setPresentationBehaviors:(unint64_t)a3;
- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)a3;
- (void)showBannerWithURL:(id)a3 identifier:(id)a4 sessionID:(id)a5;
- (void)startRecording;
- (void)stopButtonTapped;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation RPSystemApertureElementViewController

- (int64_t)activeLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)contentRole
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentRole:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)preferredLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredLayoutMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)maximumLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMaximumLayoutMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)preferredHeightForBottomSafeArea
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredHeightForBottomSafeArea:(double)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)presentationBehaviors
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentationBehaviors:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setAssociatedAppBundleIdentifier:(id)a3
{
  if (a3)
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

- (void)setLaunchURL:(id)a3
{
  v5 = (*(*(sub_10000B62C(&qword_100068DF0, qword_100047E90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  if (a3)
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
  v11 = self;
  sub_1000298BC(v7, self + v10);
  swift_endAccess();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100017204();
}

- (void)handleCustomViewLongPressEvent
{
  v2 = self;
  sub_100019E00();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10001AA74(a3);
  swift_unknownObjectRelease();
}

- (void)stopButtonTapped
{
  v2 = self;
  sub_10001F814();
}

- (void)didEnterBackgroud
{
  v2 = self;
  sub_100021DBC();
}

- (void)showBannerWithURL:(id)a3 identifier:(id)a4 sessionID:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = self;
  sub_100022D48(v11, v12, a4, v14, v16);

  (*(v8 + 8))(v11, v7);
}

- (void)startRecording
{
  v2 = self;
  sub_1000243D4();
}

- (void)didTapStopButton
{
  v2 = self;
  sub_100024D6C();
}

- (void)handleCompletionTimeout
{
  v2 = self;
  sub_1000255AC();
}

- (void)openSaveToDestination
{
  v2 = self;
  sub_10002746C();
}

- (void)deleteRecording
{
  v2 = self;
  sub_100027D3C();
}

- (_TtC14ReplayKitAngel37RPSystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end