@interface JSMultiChoiceViewController
- (BOOL)collectionView:(id)a3 tableLayout:(id)a4 shouldIndentWhileEditingRowAtIndexPath:(id)a5;
- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)collectionView:(id)a3 heightForFooterViewInTableLayout:(id)a4;
- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 editingStyleForRowAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation JSMultiChoiceViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_498420();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSMultiChoiceViewController();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(JSMultiChoiceViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_49A890();
  }

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_498890(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_498A68(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSMultiChoiceViewController();
  v2 = v3.receiver;
  [(JSMultiChoiceViewController *)&v3 music_viewInheritedLayoutInsetsDidChange];
  sub_49A890();
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_49B310();

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = sub_498CFC(v11);

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = self;
  v20 = sub_499608(v16, v13, v15);

  (*(v10 + 8))(v12, v9);

  return v20;
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
  sub_49B414(v14);

  (*(v10 + 8))(v12, v9);
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
  sub_499A70(v11, v10);

  (*(v8 + 8))(v10, v7);
}

- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  v17 = sub_49B730(v13);

  (*(v10 + 8))(v12, v9);
  return v17;
}

- (double)collectionView:(id)a3 heightForFooterViewInTableLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_49BEA4(v6);

  return v9;
}

- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 editingStyleForRowAtIndexPath:(id)a5
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (BOOL)collectionView:(id)a3 tableLayout:(id)a4 shouldIndentWhileEditingRowAtIndexPath:(id)a5
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end