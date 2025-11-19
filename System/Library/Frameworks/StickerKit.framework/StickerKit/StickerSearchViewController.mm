@interface StickerSearchViewController
- (_TtC10StickerKit27StickerSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation StickerSearchViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_19A6B33A0();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = self;
  sub_19A6B9234();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_19A6B4614(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_19A6B4D2C(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_19A6B5FC0();
}

- (_TtC10StickerKit27StickerSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return StickerSearchViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end