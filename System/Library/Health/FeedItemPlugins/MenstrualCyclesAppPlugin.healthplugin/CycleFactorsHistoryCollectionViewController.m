@interface CycleFactorsHistoryCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController)initWithCoder:(id)a3;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)pushAddFactorView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CycleFactorsHistoryCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSections) = MEMORY[0x29EDCA190];
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_numOngoingFactors;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController_collectionViewSource) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CycleFactorsCollectionViewController *)&v3 viewDidLoad];
  sub_29E2575E8();
  sub_29E0A46A0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_29DF304E8();
}

- (void)pushAddFactorView
{
  v2 = self;
  sub_29E2582F4();
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E25A568(v7);
}

@end