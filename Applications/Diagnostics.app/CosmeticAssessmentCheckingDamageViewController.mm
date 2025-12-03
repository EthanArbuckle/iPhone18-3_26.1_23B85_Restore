@interface CosmeticAssessmentCheckingDamageViewController
- (_TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController)initWithSpinnerText:(id)text;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CosmeticAssessmentCheckingDamageViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  v4 = v5.receiver;
  [(CosmeticAssessmentCheckingDamageViewController *)&v5 viewDidAppear:appearCopy];
  sub_1000EBDFC(8);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  v4 = v6.receiver;
  [(CosmeticAssessmentCheckingDamageViewController *)&v6 viewWillDisappear:disappearCopy];
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
  selfCopy = self;
  sub_1000CFFCC();
}

- (_TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController)initWithSpinnerText:(id)text
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end