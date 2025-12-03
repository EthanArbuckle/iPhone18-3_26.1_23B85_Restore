@interface ShelfPageCollectionLayoutViewController
- (_TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionViewDidScroll:(id)scroll;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ShelfPageCollectionLayoutViewController

- (void)loadView
{
  selfCopy = self;
  sub_62CD4();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_62DC4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_62EA0(appear, &selRef_viewWillAppear_);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_62EA0(appear, &selRef_viewDidAppear_);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_62F50();
}

- (_TtC19CoreDynamicUIPlugin39ShelfPageCollectionLayoutViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8F5F4();
  }

  bundleCopy = bundle;
  sub_65044();
}

- (void)collectionViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_651E4();
}

@end