@interface CycleFactorsDaySummaryCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController)initWithCoder:(id)a3;
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)pushAddFactorView;
- (void)viewDidLoad;
- (void)viewModelProviderDidUpdate:(id)a3;
@end

@implementation CycleFactorsDaySummaryCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin46CycleFactorsDaySummaryCollectionViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_29E16E024();
}

- (void)viewModelProviderDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E16E1E0(v4);
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_29E16EA1C(v7);
}

@end