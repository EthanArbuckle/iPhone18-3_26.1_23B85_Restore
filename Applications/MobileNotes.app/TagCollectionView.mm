@interface TagCollectionView
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isEditing;
- (_TtC11MobileNotes17TagCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4;
- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4;
- (id)dataDidChange;
- (id)selectionDidChange;
- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)dataSourceDidUpdate:(id)a3;
- (void)layoutSubviews;
- (void)selectTagSelection:(id)a3 animated:(BOOL)a4;
- (void)setDataDidChange:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setSelectionDidChange:(id)a3;
- (void)setTagSelection:(id)a3;
@end

@implementation TagCollectionView

- (id)selectionDidChange
{
  v2 = (self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_selectionDidChange);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002DEFE0;
    aBlock[3] = &unk_10065B038;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectionDidChange:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1001C57D4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_selectionDidChange);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_10000C840(v7);
}

- (id)dataDidChange
{
  if (*(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange))
  {
    v2 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange + 8);
    v5[4] = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10028DCE8;
    v5[3] = &unk_10065AFE8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDataDidChange:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1003B93C0;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange);
  v8 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_dataDidChange);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_10000C840(v8);
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TagCollectionView *)&v3 isEditing];
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  v7 = [(TagCollectionView *)&v9 isEditing];
  v8.receiver = v6;
  v8.super_class = ObjectType;
  [(TagCollectionView *)&v8 setEditing:v3];
  sub_1003AD7C0(v7);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TagCollectionView *)&v3 layoutSubviews];
  sub_1003ABF94(0);
}

- (void)setTagSelection:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection);
  *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection) = a3;
  v3 = a3;
}

- (void)dataSourceDidUpdate:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1003AE104();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)selectTagSelection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self;
  sub_1003AAA40(a3, v4);
}

- (_TtC11MobileNotes17TagCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TagCollectionView *)&v12 isEditing];
  (*(v7 + 8))(v9, v6);
  return v10 ^ 1;
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_1003B7764();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_1003B7D44(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)a3 previewForHighlightingContextMenuWithConfiguration:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_1003B2940(v5, 1);

  return v7;
}

- (id)collectionView:(id)a3 previewForDismissingContextMenuWithConfiguration:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_1003B2940(v5, 0);

  return v7;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_1003B80B8(a4, v11);

  swift_unknownObjectRelease();
  sub_1000073B4(v11, &unk_1006C3FD0);

  return v16;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1003B8A50(a4);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  v5 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag;
  v6 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag);
  if (v6)
  {
    v7 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection);
    *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection) = v6;
    v8 = v6;
    v9 = self;

    sub_1003AC28C(0, 0, 0);
    v11 = *(self + v5);
  }

  else
  {
    v10 = self;
    v11 = 0;
  }

  *(self + v5) = 0;
}

- (int64_t)_collectionView:(id)a3 dataOwnerForDropSession:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  v13 = sub_1003B9170(v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return v13;
}

@end