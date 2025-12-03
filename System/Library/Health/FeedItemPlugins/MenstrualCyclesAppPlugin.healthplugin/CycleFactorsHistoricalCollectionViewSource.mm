@interface CycleFactorsHistoricalCollectionViewSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation CycleFactorsHistoricalCollectionViewSource

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_29DFB436C(section);

  return v8;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v13 = v12;
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_29DFB00E8(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_29DFB0D04(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_29DFB46A0();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  selfCopy = self;
  v10 = sub_29DFB39C4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_29E02F684(v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
}

- (_TtC24MenstrualCyclesAppPlugin42CycleFactorsHistoricalCollectionViewSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end