@interface SongsViewController
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (_TtC16MusicApplication19SongsViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC16MusicApplication19SongsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_collectionView:(id)a3 indexPathForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (id)_sectionIndexTitlesForCollectionView:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SongsViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SongsViewController();
  v12.receiver = self;
  v12.super_class = v8;
  v9 = self;
  [(SongsViewController *)&v12 viewDidAppear:v3];
  v10 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v11 = MetricsEvent.Page.librarySongsList.unsafeMutableAddressor();
  sub_21B7EC(v11, v7, type metadata accessor for MetricsEvent.Page);
  (*(&stru_68.reloff + (swift_isaMask & *v10)))(v7, 0, 0, 0, 0, 0);
  sub_21B854(v7, type metadata accessor for MetricsEvent.Page);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2146D0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_215E30(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for SongsViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(SongsViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

  [a4 animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for SongsViewController();
  v2 = v14.receiver;
  [(SongsViewController *)&v14 viewDidLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
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

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AB04();
  v7 = v6;

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_21AB98(a4);
  v9 = v8;

  return v9;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_216990();
  v15 = v14;

  (*(v8 + 8))(v10, v7);

  return v15;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = self;
  sub_217080(v16, v13, v15);
  v21 = v20;

  (*(v10 + 8))(v12, v9);

  return v21;
}

- (id)_sectionIndexTitlesForCollectionView:(id)a3
{
  v4 = self;
  v5 = a3;
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

- (id)_collectionView:(id)a3 indexPathForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  if (a4)
  {
    sub_AB92A0();
    a4 = v12;
  }

  v13 = a3;
  v14 = self;
  sub_218364(a4, a5, v11);

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

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_21ACB8(v9, a5);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_21AFEC(v14, v12);

  (*(v10 + 8))(v12, v9);
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

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  isa = sub_AB3770().super.isa;
  v15 = [(SongsViewController *)v13 collectionView:v11 shouldSelectItemAtIndexPath:isa];
  (*(v8 + 8))(v10, v7);

  return v15;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_218FF8(v11, v10);

  (*(v8 + 8))(v10, v7);
}

- (_TtC16MusicApplication19SongsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication19SongsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end