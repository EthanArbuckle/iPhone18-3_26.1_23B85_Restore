@interface StickerProvidingViewController
- (_TtC22StickersUltraExtension30StickerProvidingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StickerProvidingViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for StickerProvidingViewController();
  v4 = v8.receiver;
  [(StickerProvidingViewController *)&v8 viewWillAppear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC22StickersUltraExtension30StickerProvidingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10007D7D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100058474(v5, v7, a4);
}

@end