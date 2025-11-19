@interface AvatarEditorViewController
- (_TtC10StickerKit26AvatarEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AvatarEditorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_19A64BDF4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_19A64BF98(a3);
}

- (_TtC10StickerKit26AvatarEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return AvatarEditorViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end