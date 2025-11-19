@interface CardManager
- (id)indexPathForElementWithModelIdentifier:(id)a3 inView:(id)a4;
- (id)modelIdentifierForElementAtIndexPath:(id)a3 inView:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation CardManager

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_10015518C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)modelIdentifierForElementAtIndexPath:(id)a3 inView:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = self;
  sub_10015706C();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)indexPathForElementWithModelIdentifier:(id)a3 inView:(id)a4
{
  v6 = sub_10003C49C(&unk_1001FFEC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a4;
  v13 = self;
  sub_10015569C(v9, v11, v8);

  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v8, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v8, v14);
    v17 = isa;
  }

  return v17;
}

@end