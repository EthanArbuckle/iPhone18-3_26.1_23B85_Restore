@interface Interstellar.ViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NSData)playActivityRecommendationData;
- (_TtCO16MusicApplication12Interstellar14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation Interstellar.ViewController

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = _s14ViewControllerCMa();
  v2 = v6.receiver;
  [(Interstellar.ViewController *)&v6 viewDidLayoutSubviews];
  v3 = sub_2884CC();
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    [v3 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_288614();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_289784(change);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_289974(appearCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = _s14ViewControllerCMa();
  v4 = v7.receiver;
  [(Interstellar.ViewController *)&v7 viewDidDisappear:disappearCopy];
  sub_28C1E0();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);

  sub_289E34();
  v5 = sub_28C2C8();
  *(v5 + 145) = 0;
  sub_35BD84(v5, v6);
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
  sub_28A3F0(viewCopy, cellCopy, v12);

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
  sub_28C2C8();
  sub_470E1C(v11);
  (*(v9 + 8))(v11, v8);
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
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  pathCopy = path;
  selfCopy = self;
  sub_28ACE4();
  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_28EAD8(configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (_TtCO16MusicApplication12Interstellar14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSData)playActivityRecommendationData
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel);
  if (v2 && (v3 = *(&stru_68.offset + (swift_isaMask & *v2)), v4 = self, v5 = v2, v6 = v3(), v8 = v7, v4, v5, v8 >> 60 != 15))
  {
    isa = sub_AB3250().super.isa;
    sub_466A4(v6, v8);
    v9 = isa;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end