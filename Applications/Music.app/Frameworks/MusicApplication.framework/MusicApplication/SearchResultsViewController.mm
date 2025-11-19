@interface SearchResultsViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC16MusicApplication27SearchResultsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SearchResultsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_34BF10();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SearchResultsViewController *)&v5 viewDidAppear:v3];
  *(sub_34F178() + 145) = (v4[OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_isHiddenBySearchController] & 1) == 0;
  sub_34B9F0();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SearchResultsViewController *)&v5 viewWillDisappear:v3];
  sub_3512A4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchResultsViewController();
  v4 = v5.receiver;
  [(SearchResultsViewController *)&v5 viewDidDisappear:v3];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_34D5F4(a3);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v10 = a3;
  v11 = a4;
  v12 = UICollectionView.isDraggingCell(at:)();
  (*(v7 + 8))(v9, v6);

  return (v12 & 1) == 0;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_35B338(v10);

  (*(v8 + 8))(v10, v7);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_34F178();
  sub_466CA8(v14, v12);

  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17)
  {
    if (v14)
    {
      v18 = *(&v16->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27SearchResultsViewController_addKeepLocalController);
      if (v18)
      {
        v19 = v17;
        ObjectType = swift_getObjectType();
        v14 = v14;

        sub_178C4(v14, v12, v18, ObjectType, v19);

        v16 = v14;
      }
    }
  }

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v12 = a4;
  v13 = a5;
  v14 = self;
  sub_34F178();
  sub_470E44(v11);
  (*(v9 + 8))(v11, v8);
}

- (_TtC16MusicApplication27SearchResultsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end