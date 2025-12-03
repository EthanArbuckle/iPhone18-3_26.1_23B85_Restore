@interface SongsViewController
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC16MusicApplication19SongsViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC16MusicApplication19SongsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_collectionView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (id)_sectionIndexTitlesForCollectionView:(id)view;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SongsViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SongsViewController();
  v12.receiver = self;
  v12.super_class = v8;
  selfCopy = self;
  [(SongsViewController *)&v12 viewDidAppear:appearCopy];
  v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = MetricsEvent.Page.librarySongsList.unsafeMutableAddressor();
  sub_21B7EC(v11, v7, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v10)))(v7, 0, 0, 0, 0, 0);
  sub_21B854(v7, type metadata accessor for MetricsEvent.Page);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2146D0();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_215E30(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SongsViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(SongsViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_21B770;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_CF24C;
  v11[3] = &block_descriptor_72;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for SongsViewController();
  v2 = v14.receiver;
  [(SongsViewController *)&v14 viewDidLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v5 = &v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds];
    v6 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds];
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds + 8];
    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds + 16];
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication19SongsViewController_lastKnownViewBounds + 24];
    *v5 = v10;
    *(v5 + 1) = v11;
    *(v5 + 2) = v12;
    *(v5 + 3) = v13;
    sub_216728(v6, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21AB04();
  v7 = v6;

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_21AB98(section);
  v9 = v8;

  return v9;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_216990();
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  selfCopy = self;
  sub_217080(viewCopy, v13, v15);
  v21 = v20;

  (*(v10 + 8))(v12, v9);

  return v21;
}

- (id)_sectionIndexTitlesForCollectionView:(id)view
{
  selfCopy = self;
  viewCopy = view;
  v6 = sub_21AC44();

  if (v6)
  {
    v7.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)_collectionView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  if (title)
  {
    sub_AB92A0();
    title = v12;
  }

  viewCopy = view;
  selfCopy = self;
  sub_218364(title, index, v11);

  v15 = sub_AB3820();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v11, 1, v15);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_AB3770().super.isa;
    (*(v16 + 8))(v11, v15);
    v18 = isa;
  }

  return v18;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21ACB8(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  selfCopy = self;
  sub_21AFEC(cellCopy, v12);

  (*(v10 + 8))(v12, v9);
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

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  isa = sub_AB3770().super.isa;
  v15 = [(SongsViewController *)selfCopy collectionView:viewCopy shouldSelectItemAtIndexPath:isa];
  (*(v8 + 8))(v10, v7);

  return v15;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_218FF8(viewCopy, v10);

  (*(v8 + 8))(v10, v7);
}

- (_TtC16MusicApplication19SongsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication19SongsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end