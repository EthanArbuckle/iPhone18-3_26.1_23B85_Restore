@interface HomeOutlineLibrarySectionController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel;
- (NSArray)dataProviders;
- (NSArray)itemSnapshots;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation HomeOutlineLibrarySectionController

- (MapsUIDiffableDataSourceViewModel)sectionHeaderViewModel
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v9._object = 0x800000010121DB50;
  v2._countAndFlagsBits = 0x736563616C50;
  v3._object = 0x800000010121DB20;
  v9._countAndFlagsBits = 0xD000000000000035;
  v3._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v9);
  v4 = objc_allocWithZone(SectionHeaderBasicOutlineCellModel);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithTitle:v5];

  return v6;
}

- (NSArray)dataProviders
{
  sub_1000CE6B8(&unk_101919370);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSArray)itemSnapshots
{
  selfCopy = self;
  sub_100130AB4();

  sub_100131C5C();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10013113C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100131B80();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

@end