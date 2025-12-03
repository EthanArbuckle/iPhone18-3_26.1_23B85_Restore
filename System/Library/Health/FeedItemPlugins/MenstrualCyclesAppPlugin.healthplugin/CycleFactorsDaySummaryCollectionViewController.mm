@interface CycleFactorsDaySummaryCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController)initWithCoder:(id)coder;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)pushAddFactorView;
- (void)viewDidLoad;
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation CycleFactorsDaySummaryCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_ongoingCycleFactors) = MEMORY[0x29EDCA190];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController_collectionViewSource) = 0;
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
  sub_29E16D788();
  sub_29E16DDFC();
}

- (void)pushAddFactorView
{
  selfCopy = self;
  sub_29E16E024();
}

- (void)viewModelProviderDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_29E16E1E0(updateCopy);
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  providerCopy = provider;
  analysisCopy = analysis;
  selfCopy = self;
  sub_29E16EA1C(analysisCopy);
}

@end