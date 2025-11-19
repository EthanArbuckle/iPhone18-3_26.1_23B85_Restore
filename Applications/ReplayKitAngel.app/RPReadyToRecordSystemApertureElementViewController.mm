@interface RPReadyToRecordSystemApertureElementViewController
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)associatedAppBundleIdentifier;
- (NSString)elementIdentifier;
- (NSURL)launchURL;
- (UIColor)keyColor;
- (_TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)preferredHeightForBottomSafeArea;
- (int64_t)activeLayoutMode;
- (int64_t)contentRole;
- (int64_t)maximumLayoutMode;
- (int64_t)preferredLayoutMode;
- (unint64_t)presentationBehaviors;
- (unint64_t)statusBarStyleOverridesToSuppress;
- (void)customViewTapped:(id)a3;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setContentRole:(int64_t)a3;
- (void)setLaunchURL:(id)a3;
- (void)setMaximumLayoutMode:(int64_t)a3;
- (void)setPreferredHeightForBottomSafeArea:(double)a3;
- (void)setPreferredLayoutMode:(int64_t)a3;
- (void)setPresentationBehaviors:(unint64_t)a3;
- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation RPReadyToRecordSystemApertureElementViewController

- (int64_t)activeLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)contentRole
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentRole:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)preferredLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredLayoutMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)maximumLayoutMode
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMaximumLayoutMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)statusBarStyleOverridesToSuppress
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStatusBarStyleOverridesToSuppress:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSSet)backgroundActivitiesToSuppress
{
  sub_1000405FC();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_100040D28(&unk_1000696E0, type metadata accessor for STBackgroundActivityIdentifier);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (double)preferredHeightForBottomSafeArea
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreferredHeightForBottomSafeArea:(double)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)presentationBehaviors
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentationBehaviors:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)elementIdentifier
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  return *(self + v3);
}

- (UIColor)keyColor
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = (self + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_associatedAppBundleIdentifier);
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

  v7 = (self + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_associatedAppBundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSURL)launchURL
{
  v3 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  sub_1000406CC(self + v7, v6);
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
  v5 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
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

  v11 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  v12 = self;
  sub_1000298BC(v8, self + v11);
  swift_endAccess();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10003B4D4();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10003C914(a3);
  swift_unknownObjectRelease();
}

- (void)customViewTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100040ED8();
}

- (_TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end