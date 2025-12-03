@interface TagCollectionView
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isEditing;
- (_TtC11MobileNotes17TagCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration;
- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration;
- (id)dataDidChange;
- (id)selectionDidChange;
- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)dataSourceDidUpdate:(id)update;
- (void)layoutSubviews;
- (void)selectTagSelection:(id)selection animated:(BOOL)animated;
- (void)setDataDidChange:(id)change;
- (void)setEditing:(BOOL)editing;
- (void)setSelectionDidChange:(id)change;
- (void)setTagSelection:(id)selection;
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

- (void)setSelectionDidChange:(id)change
{
  v4 = _Block_copy(change);
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
  selfCopy = self;
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

- (void)setDataDidChange:(id)change
{
  v4 = _Block_copy(change);
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
  selfCopy = self;
  sub_10000C840(v8);
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TagCollectionView *)&v3 isEditing];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  isEditing = [(TagCollectionView *)&v9 isEditing];
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(TagCollectionView *)&v8 setEditing:editingCopy];
  sub_1003AD7C0(isEditing);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TagCollectionView *)&v3 layoutSubviews];
  sub_1003ABF94(0);
}

- (void)setTagSelection:(id)selection
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection);
  *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection) = selection;
  selectionCopy = selection;
}

- (void)dataSourceDidUpdate:(id)update
{
  if (update)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1003AE104();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)selectTagSelection:(id)selection animated:(BOOL)animated
{
  animatedCopy = animated;
  selectionCopy = selection;
  selfCopy = self;
  sub_1003AAA40(selection, animatedCopy);
}

- (_TtC11MobileNotes17TagCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12.receiver = self;
  v12.super_class = ObjectType;
  isEditing = [(TagCollectionView *)&v12 isEditing];
  (*(v7 + 8))(v9, v6);
  return isEditing ^ 1;
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1003B7764();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1003B7D44(viewCopy, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)view previewForHighlightingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v7 = sub_1003B2940(configurationCopy, 1);

  return v7;
}

- (id)collectionView:(id)view previewForDismissingContextMenuWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v7 = sub_1003B2940(configurationCopy, 0);

  return v7;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_1003B80B8(update, v11);

  swift_unknownObjectRelease();
  sub_1000073B4(v11, &unk_1006C3FD0);

  return v16;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003B8A50(coordinator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  v5 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag;
  v6 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelectionBeforeDrag);
  if (v6)
  {
    v7 = *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection);
    *(self + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection) = v6;
    v8 = v6;
    selfCopy = self;

    sub_1003AC28C(0, 0, 0);
    v11 = *(self + v5);
  }

  else
  {
    selfCopy2 = self;
    v11 = 0;
  }

  *(self + v5) = 0;
}

- (int64_t)_collectionView:(id)view dataOwnerForDropSession:(id)session withDestinationIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v13 = sub_1003B9170(v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return v13;
}

@end