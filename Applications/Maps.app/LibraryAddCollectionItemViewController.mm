@interface LibraryAddCollectionItemViewController
- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4;
- (NSString)headerTitle;
- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithCoder:(id)a3;
- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)saveMapItem:(id)a3;
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

- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v8 = a3;
    v9 = self;
  }

  v10 = sub_10019D8DC(a3, v12);

  sub_1000DB2F4(v12);
  return v10 & 1;
}

- (void)saveMapItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10019DBAC(v4);
}

- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LibraryAddCollectionItemViewController();
  v9 = [(AddFromACViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC4Maps38LibraryAddCollectionItemViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LibraryAddCollectionItemViewController();
  v4 = a3;
  v5 = [(LibraryAddCollectionItemViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end