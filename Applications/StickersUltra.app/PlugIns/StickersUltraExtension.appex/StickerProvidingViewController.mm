@interface StickerProvidingViewController
- (_TtC22StickersUltraExtension30StickerProvidingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StickerProvidingViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StickerProvidingViewController();
  v4 = v8.receiver;
  [(StickerProvidingViewController *)&v8 viewWillAppear:appearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    clearColor = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:clearColor];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC22StickersUltraExtension30StickerProvidingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10007D7D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100058474(v5, v7, bundle);
}

@end