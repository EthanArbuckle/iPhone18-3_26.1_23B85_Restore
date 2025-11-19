@interface GalleryViewController
- (BOOL)prefersStatusBarHidden;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (_TtC18ASMessagesProvider21GalleryViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider21GalleryViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC18ASMessagesProvider21GalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)swipeStateChangedOn:(id)a3;
- (void)tapStateChangedOn:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation GalleryViewController

- (_TtC18ASMessagesProvider21GalleryViewController)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = self;
  v3 = [(GalleryViewController *)v2 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 barHideOnTapGestureRecognizer];

    [v5 removeTarget:v2 action:0];
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for GalleryViewController();
  [(GalleryViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_659960();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_659C94(a3);
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = [(GalleryViewController *)v2 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isNavigationBarHidden];

    LOBYTE(v3) = v5;
  }

  else
  {
    __break(1u);
  }

  return v3;
}

- (void)tapStateChangedOn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_659E30(v4);
}

- (void)swipeStateChangedOn:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == &dword_0 + 3)
  {
    [(GalleryViewController *)v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider21GalleryViewController_artwork);
  if (v4 >> 62)
  {
    return sub_76A860();
  }

  else
  {
    return *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  v12 = sub_65A3F0(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  [a3 frame];
  v11 = v10;
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  type metadata accessor for ArtworkCollectionViewCell();
  swift_dynamicCastClassUnconditional();
  sub_759210();
  sub_14FA38();
  v11 = a4;
  v12 = self;
  sub_75A0C0();
  (*(v8 + 8))(v10, v7);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = self;
  sub_65A104();
}

- (_TtC18ASMessagesProvider21GalleryViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider21GalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end