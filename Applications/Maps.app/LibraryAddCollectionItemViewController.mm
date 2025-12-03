@interface LibraryAddCollectionItemViewController
- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item;
- (NSString)headerTitle;
- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithCoder:(id)coder;
- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)saveMapItem:(id)item;
@end

@implementation LibraryAddCollectionItemViewController

- (NSString)headerTitle
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x8000000101221430;
  v2._countAndFlagsBits = 0x50206F7420646441;
  v2._object = 0xED0000736563616CLL;
  v3._object = 0x800000010121C8C0;
  v7._countAndFlagsBits = 0xD000000000000029;
  v3._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v7);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item
{
  if (item)
  {
    sourceCopy = source;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    sourceCopy2 = source;
    selfCopy2 = self;
  }

  v10 = sub_10019D8DC(source, v12);

  sub_1000DB2F4(v12);
  return v10 & 1;
}

- (void)saveMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_10019DBAC(itemCopy);
}

- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LibraryAddCollectionItemViewController();
  v9 = [(AddFromACViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryAddCollectionItemViewController();
  coderCopy = coder;
  v5 = [(LibraryAddCollectionItemViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end