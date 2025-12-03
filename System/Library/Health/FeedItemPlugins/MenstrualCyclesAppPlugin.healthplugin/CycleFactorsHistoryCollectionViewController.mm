@interface CycleFactorsHistoryCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController)initWithCoder:(id)coder;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)pushAddFactorView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CycleFactorsHistoryCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin43CycleFactorsHistoryCollectionViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_29DF304E8();
}

- (void)pushAddFactorView
{
  selfCopy = self;
  sub_29E2582F4();
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;
  selfCopy = self;
  sub_29E25A568(analysisCopy);
}

@end