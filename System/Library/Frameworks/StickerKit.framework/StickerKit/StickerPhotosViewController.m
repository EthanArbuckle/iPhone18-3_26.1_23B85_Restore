@interface StickerPhotosViewController
- (StickerPhotosViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StickerPhotosViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for StickerPhotosViewController();
  [(StickerPhotosViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_19A78CB68(a3);
}

- (StickerPhotosViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return StickerPhotosViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end