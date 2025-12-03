@interface AvatarEditorViewController
- (_TtC10StickerKit26AvatarEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AvatarEditorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19A64BDF4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19A64BF98(appear);
}

- (_TtC10StickerKit26AvatarEditorViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return AvatarEditorViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end