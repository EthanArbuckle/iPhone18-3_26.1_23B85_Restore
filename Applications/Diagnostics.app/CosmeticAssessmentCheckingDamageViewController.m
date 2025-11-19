@interface CosmeticAssessmentCheckingDamageViewController
- (_TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController)initWithSpinnerText:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CosmeticAssessmentCheckingDamageViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  v4 = v5.receiver;
  [(CosmeticAssessmentCheckingDamageViewController *)&v5 viewDidAppear:v3];
  sub_1000EBDFC(8);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  v4 = v6.receiver;
  [(CosmeticAssessmentCheckingDamageViewController *)&v6 viewWillDisappear:v3];
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v5 = qword_10020A3C8;

  *(v5 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000CFFCC();
}

- (_TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController)initWithSpinnerText:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end