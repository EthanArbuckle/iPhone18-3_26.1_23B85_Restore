@interface LocalStickerEffectEditorViewController
- (_TtC10StickerKit38LocalStickerEffectEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LocalStickerEffectEditorViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = self;
  sub_19A745D98();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_19A744274(a3);
}

- (_TtC10StickerKit38LocalStickerEffectEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return LocalStickerEffectEditorViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end