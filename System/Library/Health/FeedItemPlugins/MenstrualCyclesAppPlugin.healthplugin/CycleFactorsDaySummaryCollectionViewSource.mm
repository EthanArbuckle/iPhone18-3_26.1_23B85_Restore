@interface CycleFactorsDaySummaryCollectionViewSource
- (_TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation CycleFactorsDaySummaryCollectionViewSource

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  else
  {
    return (*(&self->super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource_rows))[2];
  }
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
  v16 = sub_29DEEBB28(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
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
  v12 = sub_29DEEC2C8(v10, v9);

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
  sub_29DEED3A8(v9);

  (*(v7 + 8))(v9, v6);
}

- (_TtC24MenstrualCyclesAppPlugin42CycleFactorsDaySummaryCollectionViewSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end