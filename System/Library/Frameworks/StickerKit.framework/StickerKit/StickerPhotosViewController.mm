@interface StickerPhotosViewController
- (StickerPhotosViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StickerPhotosViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for StickerPhotosViewController();
  [(StickerPhotosViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19A78CB68(appear);
}

- (StickerPhotosViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return StickerPhotosViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end