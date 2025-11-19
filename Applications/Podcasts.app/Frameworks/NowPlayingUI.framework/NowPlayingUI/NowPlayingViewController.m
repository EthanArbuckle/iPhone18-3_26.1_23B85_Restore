@interface NowPlayingViewController
- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4;
- (_TtC12NowPlayingUI24NowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForHeaderInSection:(int64_t)a5;
- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 tableLayout:(id)a4 trailingSwipeActionsForRowAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 editingStyleForRowAtIndexPath:(id)a5;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureCell:(id)a3 forMovie:(id)a4;
- (void)configureCell:(id)a3 forPodcastEpisode:(id)a4;
- (void)configureCell:(id)a3 forSong:(id)a4;
- (void)configureCell:(id)a3 forTVEpisode:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NowPlayingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_7D888();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_7EE30(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_7F5E4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_7F808(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_7F998();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_7FB40(v4);
}

- (_TtC12NowPlayingUI24NowPlayingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = self;
  sub_865D8();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_2B860(0, &qword_1C4A90);
  v13.super.isa = sub_1449CC().super.isa;

  return v13.super.isa;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_80AF8(v6, a4);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    sub_140BAC();
    v12 = sub_140C2C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_140C2C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = self;
  v16 = sub_86BC0(a4, v11);

  swift_unknownObjectRelease();
  sub_15340(v11, &unk_1C4A80);

  return v16;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_870B0();

  return v6;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_871F4(a4);

  return v8;
}

- (void)configureCell:(id)a3 forPodcastEpisode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_815DC(v6, v7);
}

- (void)configureCell:(id)a3 forSong:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_875F4(v6, v7);
}

- (void)configureCell:(id)a3 forTVEpisode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_87850(v6, v7);
}

- (void)configureCell:(id)a3 forMovie:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_87A50(v6, v7);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v10 = a3;
  v11 = self;
  sub_8207C(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_87CDC(v13);

  (*(v9 + 8))(v11, v8);
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_140BAC();
  sub_140BAC();
  v17 = a3;
  v18 = self;
  sub_839C8(v13, v10, v16);

  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20.super.isa = sub_140B9C().super.isa;
  v19(v16, v7);

  return v20.super.isa;
}

- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_87BEC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_140BAC();
  sub_140BAC();
  v14 = a3;
  v15 = self;
  sub_866D8(v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1448DC();
  sub_140BAC();
  v11 = a3;
  v12 = self;
  sub_84518(v11);
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v10 = a3;
  v11 = self;
  sub_84C3C(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_87E28(v8, a5);

  return v11;
}

- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_88344(v12);
  v16 = v15;

  (*(v9 + 8))(v11, v8);
  return v16;
}

- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 editingStyleForRowAtIndexPath:(id)a5
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (id)collectionView:(id)a3 tableLayout:(id)a4 trailingSwipeActionsForRowAtIndexPath:(id)a5
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = sub_888F4();

  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    sub_2B860(0, &qword_1C4A40);
    v16.super.isa = sub_1449CC().super.isa;
  }

  else
  {
    v16.super.isa = 0;
  }

  return v16.super.isa;
}

@end