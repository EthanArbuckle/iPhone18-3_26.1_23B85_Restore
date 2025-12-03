@interface SearchResultsViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC16MusicApplication27SearchResultsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SearchResultsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_34BF10();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SearchResultsViewController *)&v5 viewDidAppear:appearCopy];
  *(sub_34F178() + 145) = (v4[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isHiddenBySearchController] & 1) == 0;
  sub_34B9F0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SearchResultsViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_3512A4();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SearchResultsViewController *)&v5 viewDidDisappear:disappearCopy];
  *(sub_34F178() + 145) = 0;
  sub_34B9F0();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchResultsViewController();
  v2 = v3.receiver;
  [(SearchResultsViewController *)&v3 viewDidLayoutSubviews];
  sub_350D7C();
  sub_3B18B4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_34D5F4(change);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  v12 = UICollectionView.isDraggingCell(at:)();
  (*(v7 + 8))(v9, v6);

  return (v12 & 1) == 0;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_35B338(v10);

  (*(v8 + 8))(v10, v7);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  selfCopy = self;
  sub_34F178();
  sub_466CA8(cellCopy, v12);

  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17)
  {
    if (cellCopy)
    {
      v18 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController);
      if (v18)
      {
        v19 = v17;
        ObjectType = swift_getObjectType();
        cellCopy = cellCopy;

        sub_178C4(cellCopy, v12, v18, ObjectType, v19);

        selfCopy = cellCopy;
      }
    }
  }

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  cellCopy = cell;
  pathCopy = path;
  selfCopy = self;
  sub_34F178();
  sub_470E44(v11);
  (*(v9 + 8))(v11, v8);
}

- (_TtC16MusicApplication27SearchResultsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end