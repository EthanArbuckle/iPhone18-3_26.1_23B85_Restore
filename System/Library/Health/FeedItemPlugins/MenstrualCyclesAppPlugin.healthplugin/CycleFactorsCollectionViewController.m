@interface CycleFactorsCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation CycleFactorsCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController_launchSource) = 2;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CycleFactorsCollectionViewController();
  v2 = v6.receiver;
  [(CycleFactorsCollectionViewController *)&v6 viewDidLoad];
  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin36CycleFactorsCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end