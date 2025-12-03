@interface SidebarCollectionView.Coordinator
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtCV5Books21SidebarCollectionView11Coordinator)init;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)hoveringChevron:(id)chevron;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateChevronVisibilityForAccessibilityOnCell:(id)cell;
@end

@implementation SidebarCollectionView.Coordinator

- (_TtCV5Books21SidebarCollectionView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  sub_100523FE4(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  if ([viewCopy isEditing])
  {
    sub_1005243DC();
  }

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100524824(viewCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_100796E74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1005274C4();

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
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
  selfCopy = self;
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

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100527790();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = sub_1001F1160(&qword_100AECD00);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_100525848(viewCopy, update, v11);

  swift_unknownObjectRelease();
  sub_100007840(v11, &qword_100AECD00);

  return v16;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10052792C(coordinator);

  swift_unknownObjectRelease();
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_100526064(editingCopy);
}

- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  sub_1007A2254();
  barCopy = bar;
  selfCopy = self;
  text = [barCopy text];
  if (text)
  {
    v11 = text;
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

- (void)searchBar:(id)bar textDidChange:(id)change
{
  sub_1007A2254();
  selfCopy = self;

  sub_10079B8C4();
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1005263C4(editingCopy);
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_1005263C4(clickedCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_1005263C4(clickedCopy);
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10052650C(editingCopy);
}

- (void)hoveringChevron:(id)chevron
{
  chevronCopy = chevron;
  selfCopy = self;
  sub_1005280BC(chevronCopy);
}

- (void)updateChevronVisibilityForAccessibilityOnCell:(id)cell
{
  cellCopy = cell;
  selfCopy = self;
  sub_10052892C(cell);
}

@end