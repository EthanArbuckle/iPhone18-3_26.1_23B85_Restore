@interface CosmeticAssessmentBackCaptureViewController
- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CosmeticAssessmentBackCaptureViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100081EA8();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v4 = v8.receiver;
  [(CosmeticAssessmentBackCaptureViewController *)&v8 viewIsAppearing:appearingCopy];
  v5 = *&v4[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v5 + 40);
  *(v5 + 40) = sub_100082C00;
  *(v5 + 48) = v6;

  sub_10003C52C(v7);

  sub_100044A9C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v4 = v5.receiver;
  [(CosmeticAssessmentBackCaptureViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000EBDFC(7);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v4 = v8.receiver;
  [(CosmeticAssessmentBackCaptureViewController *)&v8 viewWillDisappear:disappearCopy];
  v5 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider;
  [*(*&v4[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider] + 16) stopDeviceMotionUpdates];
  v6 = *&v4[v5];
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  sub_10003C52C(v7);
}

- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end