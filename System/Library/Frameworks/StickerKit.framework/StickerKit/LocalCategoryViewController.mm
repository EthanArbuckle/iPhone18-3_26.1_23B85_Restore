@interface LocalCategoryViewController
- (_TtC10StickerKit27LocalCategoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LocalCategoryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_19A6A3298();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_19A6A5788();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_19A6A42F0();
}

- (_TtC10StickerKit27LocalCategoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return LocalCategoryViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end