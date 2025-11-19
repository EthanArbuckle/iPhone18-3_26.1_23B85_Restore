@interface CosmeticAssessmentBackCaptureViewController
- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CosmeticAssessmentBackCaptureViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100081EA8();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v4 = v8.receiver;
  [(CosmeticAssessmentBackCaptureViewController *)&v8 viewIsAppearing:v3];
  v5 = *&v4[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v5 + 40);
  *(v5 + 40) = sub_100082C00;
  *(v5 + 48) = v6;

  sub_10003C52C(v7);

  sub_100044A9C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v4 = v5.receiver;
  [(CosmeticAssessmentBackCaptureViewController *)&v5 viewDidAppear:v3];
  sub_1000EBDFC(7);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v4 = v8.receiver;
  [(CosmeticAssessmentBackCaptureViewController *)&v8 viewWillDisappear:v3];
  v5 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider;
  [*(*&v4[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider] + 16) stopDeviceMotionUpdates];
  v6 = *&v4[v5];
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  sub_10003C52C(v7);
}

- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end