@interface SidebarCollectionView.Coordinator
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtCV5Books21SidebarCollectionView11Coordinator)init;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)hoveringChevron:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateChevronVisibilityForAccessibilityOnCell:(id)a3;
@end

@implementation SidebarCollectionView.Coordinator

- (_TtCV5Books21SidebarCollectionView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  sub_100523FE4(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  if ([v10 isEditing])
  {
    sub_1005243DC();
  }

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100524824(v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_100796E74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v11 = a3;
  v12 = self;
  v13 = sub_1005274C4();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  sub_100796E14();
  sub_100796E14();
  sub_1000229CC(&qword_100AE8DA8, &type metadata accessor for IndexPath);
  v16 = self;
  if (sub_1007A28A4())
  {
    v17 = sub_100525158();

    if (v17)
    {
      v18 = v12;
    }

    else
    {
      v18 = v9;
    }

    if (v17)
    {
      v12 = v9;
    }

    v9 = v18;
  }

  else
  {
  }

  v19 = *(v7 + 8);
  v19(v9, v6);
  (*(v7 + 32))(v15, v12, v6);
  v20.super.isa = sub_100796DF4().super.isa;
  v19(v15, v6);

  return v20.super.isa;
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100527790();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    sub_100796E14();
    v12 = sub_100796E74();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_100796E74();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_100525848(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_100007840(v11, &qword_100AECD00);

  return v16;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10052792C(a4);

  swift_unknownObjectRelease();
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100526064(v4);
}

- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  sub_1007A2254();
  v8 = a3;
  v9 = self;
  v10 = [v8 text];
  if (v10)
  {
    v11 = v10;
    sub_1007A2254();

    v12 = sub_1007A23A4();

    return v12 < 500;
  }

  v13 = sub_1007A23A4();

  v15 = __OFSUB__(v13, length);
  v12 = v13 - length;
  if (!v15)
  {
    return v12 < 500;
  }

  __break(1u);
  return result;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  sub_1007A2254();
  v5 = self;

  sub_10079B8C4();
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005263C4(v4);
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005263C4(v4);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005263C4(v4);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10052650C(v4);
}

- (void)hoveringChevron:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005280BC(v4);
}

- (void)updateChevronVisibilityForAccessibilityOnCell:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10052892C(a3);
}

@end