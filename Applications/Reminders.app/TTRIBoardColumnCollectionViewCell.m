@interface TTRIBoardColumnCollectionViewCell
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3;
- (void)prepareForReuse;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
@end

@implementation TTRIBoardColumnCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_1001C7F4C();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (v4)
  {
    v5 = v4 == a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = a3;
    v8 = self;
    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701E0, &unk_1007701B0);
    Subject<>.send()();
  }
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  type metadata accessor for IndexPath();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  sub_1001CA4B4(v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1001D1E38();

  (*(v9 + 8))(v11, v8);
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v26 = self;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - v16;
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a3;
  v21 = v26;
  sub_1001CAA98(v17, v14, v11, v19);

  v22 = *(v8 + 8);
  v22(v11, v7);
  v22(v14, v7);
  v22(v17, v7);
  v23.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22(v19, v7);

  return v23.super.isa;
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001D29C4();
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  type metadata accessor for IndexPath();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1001CB3BC(v10, v9, x, y);

  return v12;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v10 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v9);
    v11 = *(v10 + 8);
    v12 = *(v11 + 848);
    v13 = a4;
    swift_unknownObjectRetain();
    v14 = self;
    v12(v13, a5, v9, v11);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

@end