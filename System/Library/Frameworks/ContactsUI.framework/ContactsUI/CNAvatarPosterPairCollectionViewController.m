@interface CNAvatarPosterPairCollectionViewController
- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithConfiguration:(id)a3 contact:(id)a4 contactForSharedProfile:(id)a5 mode:(int64_t)a6 delegate:(id)a7;
- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4;
- (void)pageControlDidChangePage:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(_BYTE *)a1;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNAvatarPosterPairCollectionViewController

- (void)scrollViewDidEndScrollingAnimation:(_BYTE *)a1
{
  v2 = a1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling];
  a1[OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling] = 0;
  if (v2 == 1)
  {
    v3 = a1;
    sub_199B683B0(0, 1);
  }
}

- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithConfiguration:(id)a3 contact:(id)a4 contactForSharedProfile:(id)a5 mode:(int64_t)a6 delegate:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  return sub_199B61334(v10, v11, v12, a6);
}

- (void)dealloc
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModelSubscriber))
  {
    v3 = self;

    sub_199DF83AC();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  [(CNAvatarPosterPairCollectionViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_199B619D0();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(CNAvatarPosterPairCollectionViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_199B6B654;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_199B61ED8;
  v11[3] = &block_descriptor_118;
  v9 = _Block_copy(v11);
  v10 = v7;

  [a4 animateAlongsideTransition:v9 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v9);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewController();
  v2 = v3.receiver;
  [(CNAvatarPosterPairCollectionViewController *)&v3 viewWillLayoutSubviews];
  sub_199B67650();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_199B620C8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_199B62AF0(a3);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = self;
  v7 = v5;
  sub_199DF841C();

  if (v10 >> 62)
  {
    v8 = sub_199DFA87C();
  }

  else
  {
    v8 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF732C();
  v11 = a3;
  v12 = self;
  sub_199B62CE8(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_199DF738C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9F8C();
  sub_199DF732C();
  v12 = a3;
  v13 = self;
  sub_199B631DC(v12);
  v15 = v14;

  (*(v8 + 8))(v11, v7);

  return v15;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_199DF738C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF732C();
  v11 = a3;
  v12 = self;
  sub_199B6B178();

  (*(v7 + 8))(v10, v6);
}

- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_199B64398(v6, a4);
}

- (void)pageControlDidChangePage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199B68098(v4);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199B695AC(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  v9 = self;
  sub_199B6B2C4(&a5->x, x);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling);
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10ContactsUI42CNAvatarPosterPairCollectionViewController_isScrollingOrSettling) = 0;
    if (v4)
    {
      v5 = self;
      sub_199B683B0(0, 1);
    }
  }
}

- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10ContactsUI42CNAvatarPosterPairCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end