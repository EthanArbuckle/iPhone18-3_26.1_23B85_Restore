@interface ShelfPageCollectionLayoutViewController
- (_TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionViewDidScroll:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ShelfPageCollectionLayoutViewController

- (void)loadView
{
  v2 = self;
  sub_62CD4();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_62DC4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_62EA0(a3, &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_62EA0(a3, &selRef_viewDidAppear_);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_62F50();
}

- (_TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_65044();
}

- (void)collectionViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_651E4();
}

@end