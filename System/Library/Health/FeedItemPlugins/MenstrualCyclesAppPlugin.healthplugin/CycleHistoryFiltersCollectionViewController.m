@interface CycleHistoryFiltersCollectionViewController
- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)doneAndDismiss;
- (void)viewDidLoad;
@end

@implementation CycleHistoryFiltersCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_selectedItem) = 51;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController____lazy_storage___filterMapping) = 0;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleHistoryFiltersCollectionViewController();
  v2 = v3.receiver;
  [(CycleHistoryFiltersCollectionViewController *)&v3 viewDidLoad];
  sub_29DFC5290();
  sub_29DFC5C9C();
  sub_29DFC574C();
}

- (void)doneAndDismiss
{
  v4 = self;
  v2 = [(CycleHistoryFiltersCollectionViewController *)v4 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4 > 9)
  {
    __break(1u);
  }

  else
  {
    v4 = *(sub_29DED2F28(byte_2A24AE210[a4 + 32]) + 2);

    return v4;
  }

  return self;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  v12 = sub_29DFC5F28(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_29DFC64C4(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v13 = v12;
  sub_29E2BCF44();
  v14 = a3;
  v15 = self;
  v16 = sub_29DFC7CCC(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin43CycleHistoryFiltersCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end