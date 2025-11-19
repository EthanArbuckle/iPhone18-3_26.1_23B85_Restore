@interface ShelvesDelegate
- (_TtC23ShelfKitCollectionViews15ShelvesDelegate)init;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation ShelvesDelegate

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_301F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v10 = a3;
  v11 = self;
  ShelvesDelegate.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v9 = sub_301F38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_17FDC8(v14, v12);

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_301F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v12 = a3;
  v13 = a4;
  v14 = self;
  ShelvesDelegate.collectionView(_:willDisplay:forItemAt:)(v12, v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_301F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_180C7C(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = sub_301F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v10 = a3;
  v11 = self;
  sub_181494(v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = sub_301F38();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v13 = a3;
  v14 = self;
  v15 = ShelvesDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(v13, v12, x, y);

  (*(v10 + 8))(v12, v9);

  return v15;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController), *&self->presenter[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController + 8]);
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = self;
  sub_30A928();

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  ShelvesDelegate.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  ShelvesDelegate.scrollViewWillBeginDecelerating(_:)(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  ShelvesDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  ShelvesDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  ShelvesDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v9, a5, x, y);
}

- (_TtC23ShelfKitCollectionViews15ShelvesDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end