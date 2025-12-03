@interface FaceGuidanceViewController
- (_TtC15assistivetouchd26FaceGuidanceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapScreen;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FaceGuidanceViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001035C0();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1001036C4();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FaceGuidanceViewController();
  v4 = v6.receiver;
  v5 = [(FaceGuidanceViewController *)&v6 viewDidAppear:appearCopy];
  (*((swift_isaMask & **&v4[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector]) + 0x88))(v5);
  UIAccessibilityPostNotification(UIAccessibilityEyeTrackingCalibrationStartNotification, 0);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FaceGuidanceViewController();
  v4 = v6.receiver;
  v5 = [(FaceGuidanceViewController *)&v6 viewWillDisappear:disappearCopy];
  (*((swift_isaMask & **&v4[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector]) + 0x90))(v5);
  UIAccessibilityPostNotification(UIAccessibilityEyeTrackingCalibrationEndNotification, 0);
}

- (void)didTapScreen
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1001072C4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000F55D8;
  v6[3] = &unk_1001D8AB0;
  v4 = _Block_copy(v6);
  selfCopy = self;

  [(FaceGuidanceViewController *)selfCopy dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (_TtC15assistivetouchd26FaceGuidanceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end