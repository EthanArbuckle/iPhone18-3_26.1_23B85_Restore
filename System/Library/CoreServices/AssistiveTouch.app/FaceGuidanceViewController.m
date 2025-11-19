@interface FaceGuidanceViewController
- (_TtC15assistivetouchd26FaceGuidanceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapScreen;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FaceGuidanceViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1001035C0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1001036C4();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FaceGuidanceViewController();
  v4 = v6.receiver;
  v5 = [(FaceGuidanceViewController *)&v6 viewDidAppear:v3];
  (*((swift_isaMask & **&v4[OBJC_IVAR____TtC15assistivetouchd26FaceGuidanceViewController_faceDetector]) + 0x88))(v5);
  UIAccessibilityPostNotification(UIAccessibilityEyeTrackingCalibrationStartNotification, 0);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FaceGuidanceViewController();
  v4 = v6.receiver;
  v5 = [(FaceGuidanceViewController *)&v6 viewWillDisappear:v3];
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
  v5 = self;

  [(FaceGuidanceViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (_TtC15assistivetouchd26FaceGuidanceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end