@interface NowPlayingViewController
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (_TtC12NowPlayingUI24NowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)collectionView:(id)view tableLayout:(id)layout heightForHeaderInSection:(int64_t)section;
- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureCell:(id)cell forMovie:(id)movie;
- (void)configureCell:(id)cell forPodcastEpisode:(id)episode;
- (void)configureCell:(id)cell forSong:(id)song;
- (void)configureCell:(id)cell forTVEpisode:(id)episode;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NowPlayingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_7D888();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_7EE30(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_7F5E4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_7F808(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_7F998();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_7FB40(scrollCopy);
}

- (_TtC12NowPlayingUI24NowPlayingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_865D8();

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_2B860(0, &qword_1C4A90);
  v13.super.isa = sub_1449CC().super.isa;

  return v13.super.isa;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_80AF8(viewCopy, coordinator);

  swift_unknownObjectRelease();
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (path)
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

  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v16 = sub_86BC0(update, v11);

  swift_unknownObjectRelease();
  sub_15340(v11, &unk_1C4A80);

  return v16;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_870B0();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_871F4(section);

  return v8;
}

- (void)configureCell:(id)cell forPodcastEpisode:(id)episode
{
  cellCopy = cell;
  episodeCopy = episode;
  selfCopy = self;
  sub_815DC(cellCopy, episodeCopy);
}

- (void)configureCell:(id)cell forSong:(id)song
{
  cellCopy = cell;
  songCopy = song;
  selfCopy = self;
  sub_875F4(cellCopy, songCopy);
}

- (void)configureCell:(id)cell forTVEpisode:(id)episode
{
  cellCopy = cell;
  episodeCopy = episode;
  selfCopy = self;
  sub_87850(cellCopy, episodeCopy);
}

- (void)configureCell:(id)cell forMovie:(id)movie
{
  cellCopy = cell;
  movieCopy = movie;
  selfCopy = self;
  sub_87A50(cellCopy, movieCopy);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  sub_8207C(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_87CDC(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
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
  viewCopy = view;
  selfCopy = self;
  sub_839C8(v13, v10, v16);

  v19 = *(v8 + 8);
  v19(v10, v7);
  v19(v13, v7);
  v20.super.isa = sub_140B9C().super.isa;
  v19(v16, v7);

  return v20.super.isa;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_87BEC();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_140BAC();
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  sub_866D8(v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  v16(v13, v7);
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1448DC();
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  sub_84518(viewCopy);
  v14 = v13;

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  sub_84C3C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v11 = sub_87E28(viewCopy, section);

  return v11;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_88344(viewCopy);
  v16 = v15;

  (*(v9 + 8))(v11, v8);
  return v16;
}

- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (id)collectionView:(id)view tableLayout:(id)layout trailingSwipeActionsForRowAtIndexPath:(id)path
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
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