@interface SingleCycleViewDataSource
- (_TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
@end

@implementation SingleCycleViewDataSource

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  sub_29DEDB978();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v21 - v9;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_today;
  v15 = self;
  sub_29E02CAF8(self + v14, v13);
  v16 = sub_29E2C31A4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v13, v16);
  v18 = *(v17 + 56);
  v18(v10, 0, 1, v16);
  v18(v7, 1, 1, v16);
  v19 = sub_29E059C18(v10, v7);

  sub_29DFAB164(v7, sub_29DEDB978);
  sub_29DFAB164(v10, sub_29DEDB978);
  sub_29DFAB164(v13, sub_29DEFCC2C);
  return v19;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v9 = a3;
  v10 = sub_29E2C33A4();
  v11 = sub_29E2BCF24();
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11];

  (*(v6 + 8))(v8, v5);
  type metadata accessor for CycleHistoryCycleDayCell();
  v13 = swift_dynamicCastClassUnconditional();

  return v13;
}

- (_TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end