@interface ScreenshotsGalleryViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)swipeStateChangedOn:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ScreenshotsGalleryViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_60D688(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_60D8A4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_60DDD4(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_60DF08(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)swipeStateChangedOn:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == &dword_0 + 3)
  {
    [(ScreenshotsGalleryViewController *)v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks);
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
  v12 = sub_60E384(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_60F2E4();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a3;
  v11 = self;
  v12 = sub_7575C0();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex;
  if (v12 == *(&v11->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex))
  {

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    isa = sub_757550().super.isa;
    [v10 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];

    v15 = sub_7575C0();
    (*(v7 + 8))(v9, v6);
    *(&v11->super.super.super.super.super.isa + v13) = v15;
  }
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_60F8A0(v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_60FF8C(v12);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_60EAC0(v4);
}

@end