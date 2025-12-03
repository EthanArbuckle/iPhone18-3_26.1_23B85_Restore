@interface ShelvesDelegate
- (_TtC23ShelfKitCollectionViews15ShelvesDelegate)init;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation ShelvesDelegate

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_301F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  viewCopy = view;
  selfCopy = self;
  ShelvesDelegate.collectionView(_:didSelectItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_301F38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_17FDC8(supplementaryViewCopy, v12);

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_301F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  ShelvesDelegate.collectionView(_:willDisplay:forItemAt:)(viewCopy, cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_301F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_180C7C(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v6 = sub_301F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  viewCopy = view;
  selfCopy = self;
  sub_181494(v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = sub_301F38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  viewCopy = view;
  selfCopy = self;
  v15 = ShelvesDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(viewCopy, v12, x, y);

  (*(v10 + 8))(v12, v9);

  return v15;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController), *&self->presenter[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController + 8]);
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_30A928();

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v5 = sub_301F38();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_301EB8();
  sub_301EB8();
  v15 = sub_301F08();
  v16 = sub_301F08();
  v17 = *(v6 + 8);
  v18 = v15 == v16;
  if (v15 == v16)
  {
    v19 = v11;
  }

  else
  {
    v19 = v8;
  }

  if (v18)
  {
    v20 = v8;
  }

  else
  {
    v20 = v11;
  }

  v17(v19, v5);
  (*(v6 + 32))(v14, v20, v5);
  v21.super.isa = sub_301EA8().super.isa;
  v17(v14, v5);

  return v21.super.isa;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  ShelvesDelegate.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  ShelvesDelegate.scrollViewWillBeginDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  ShelvesDelegate.scrollViewDidEndDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  ShelvesDelegate.scrollViewDidEndDragging(_:willDecelerate:)(draggingCopy, decelerate);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  ShelvesDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x, y);
}

- (_TtC23ShelfKitCollectionViews15ShelvesDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end