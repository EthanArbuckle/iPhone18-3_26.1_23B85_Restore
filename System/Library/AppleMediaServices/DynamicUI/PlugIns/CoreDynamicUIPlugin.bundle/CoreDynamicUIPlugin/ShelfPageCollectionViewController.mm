@interface ShelfPageCollectionViewController
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (_TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionViewDidScroll:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ShelfPageCollectionViewController

- (void)loadView
{
  v2 = self;
  sub_68938();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_68A18();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_68A98();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_68BB4(a3, &selRef_viewDidAppear_);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_68BB4(a3, &selRef_viewDidDisappear_);
}

- (_TtC19CoreDynamicUIPlugin33ShelfPageCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_6A290();
}

- (void)collectionViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6B3FC(v4);
}

- (void)collectionView:(id)a3 didEndDisplayingItemAtIndexPath:(id)a4
{
  v6 = sub_8E194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E154();
  v10 = a3;
  v11 = self;
  sub_6B610(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_8E194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E154();
  v10 = a3;
  v11 = self;
  sub_6BE80(v11, v9);

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = sub_8E194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8E154();
  v10 = a3;
  v11 = self;
  sub_6D5C0(v10, v9);
  LOBYTE(self) = v12;

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

@end