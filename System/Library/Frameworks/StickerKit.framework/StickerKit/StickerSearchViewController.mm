@interface StickerSearchViewController
- (_TtC10StickerKit27StickerSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation StickerSearchViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19A6B33A0();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_19A6B9234();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19A6B4614(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_19A6B4D2C(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_19A6B5FC0();
}

- (_TtC10StickerKit27StickerSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return StickerSearchViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end