@interface LocalCategoryViewController
- (_TtC10StickerKit27LocalCategoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LocalCategoryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19A6A3298();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19A6A5788();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_19A6A42F0();
}

- (_TtC10StickerKit27LocalCategoryViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return LocalCategoryViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end