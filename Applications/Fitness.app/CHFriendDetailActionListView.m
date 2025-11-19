@interface CHFriendDetailActionListView
- (CHFriendDetailActionListViewDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)configureWithActionTypes:(id)a3 labelTexts:(id)a4 footerText:(id)a5;
@end

@implementation CHFriendDetailActionListView

- (CHFriendDetailActionListViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)configureWithActionTypes:(id)a3 labelTexts:(id)a4 footerText:(id)a5
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a5;
  v10 = self;
  sub_10045B458(v7, v8, v9);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_10045B9A8();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_100140278(&qword_1008EDE68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  sub_10045AADC(v10);
  sub_1000059F8(0, &qword_1008EDED8);
  v17 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);

  return v17;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [(CHFriendDetailActionListView *)v10 cellForItemAtIndexPath:isa];

  if (v13)
  {
    type metadata accessor for FriendDetailActionCell();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      if (qword_1008DA968 != -1)
      {
        v17 = v14;
        swift_once();
        v14 = v17;
      }

      v15 = qword_1008EA7D8;
      v16 = [v14 contentView];
      [(CHFriendDetailActionListView *)v16 setBackgroundColor:v15];

      v10 = v11;
      v11 = v13;
      v13 = v16;
    }

    v10 = v11;
    v11 = v13;
  }

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10045C5B8();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10045C664(v10);

  (*(v7 + 8))(v9, v6);
}

@end