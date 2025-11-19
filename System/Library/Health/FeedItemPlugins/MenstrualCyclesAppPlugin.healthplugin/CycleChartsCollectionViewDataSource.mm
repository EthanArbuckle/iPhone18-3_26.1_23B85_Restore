@interface CycleChartsCollectionViewDataSource
- (_TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
@end

@implementation CycleChartsCollectionViewDataSource

- (_TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E0EC66C(a4);
  v9 = v8;

  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v19 = sub_29E2C31A4();
  v6 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v13 = *(&self->super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cellProvider);
  v14 = a3;
  v15 = self;
  sub_29E0EBFA8();
  v16 = v13(v14, v12, v8);

  (*(v6 + 8))(v8, v19);
  (*(v10 + 8))(v12, v9);

  return v16;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v13 = v12;
  sub_29E2BCF44();
  v14 = *(&self->super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_supplementaryViewProvider);
  v15 = a3;
  v16 = self;
  v17 = v14(v15, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v17;
}

@end