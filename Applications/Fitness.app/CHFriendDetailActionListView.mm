@interface CHFriendDetailActionListView
- (CHFriendDetailActionListViewDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)configureWithActionTypes:(id)types labelTexts:(id)texts footerText:(id)text;
@end

@implementation CHFriendDetailActionListView

- (CHFriendDetailActionListViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)configureWithActionTypes:(id)types labelTexts:(id)texts footerText:(id)text
{
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  textCopy = text;
  selfCopy = self;
  sub_10045B458(v7, v8, textCopy);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10045B9A8();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  sub_10045AADC(v10);
  sub_1000059F8(0, &qword_1008EDED8);
  v17 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);

  return v17;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [(CHFriendDetailActionListView *)viewCopy cellForItemAtIndexPath:isa];

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
      contentView = [v14 contentView];
      [(CHFriendDetailActionListView *)contentView setBackgroundColor:v15];

      viewCopy = selfCopy;
      selfCopy = v13;
      v13 = contentView;
    }

    viewCopy = selfCopy;
    selfCopy = v13;
  }

  (*(v7 + 8))(v9, v6);
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
  sub_10045C5B8();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10045C664(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end