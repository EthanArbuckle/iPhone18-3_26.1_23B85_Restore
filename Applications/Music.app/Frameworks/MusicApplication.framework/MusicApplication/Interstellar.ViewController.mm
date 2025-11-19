@interface Interstellar.ViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (NSData)playActivityRecommendationData;
- (_TtCO16MusicApplication12Interstellar14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation Interstellar.ViewController

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = _s14ViewControllerCMa();
  v2 = v6.receiver;
  [(Interstellar.ViewController *)&v6 viewDidLayoutSubviews];
  v3 = sub_2884CC();
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    [v3 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_288614();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_289784(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_289974(v3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _s14ViewControllerCMa();
  v4 = v7.receiver;
  [(Interstellar.ViewController *)&v7 viewDidDisappear:v3];
  sub_28C1E0();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);

  sub_289E34();
  v5 = sub_28C2C8();
  *(v5 + 145) = 0;
  sub_35BD84(v5, v6);
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
  sub_28A3F0(v13, v14, v12);

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
  sub_28C2C8();
  sub_470E1C(v11);
  (*(v9 + 8))(v11, v8);
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
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v10 = a4;
  v11 = self;
  sub_28ACE4();
  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_28EAD8(v9, a5);

  swift_unknownObjectRelease();
}

- (_TtCO16MusicApplication12Interstellar14ViewController)initWithNibName:(id)a3 bundle:(id)a4
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