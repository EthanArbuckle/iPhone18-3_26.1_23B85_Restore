@interface DeviationsHistoryCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DeviationsHistoryCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController____lazy_storage___coordinator) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29DF2F87C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_29DF304E8();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29DF315A8();

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin41DeviationsHistoryCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end