@interface LocalStickerEffectEditorViewController
- (_TtC10StickerKit38LocalStickerEffectEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LocalStickerEffectEditorViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_19A745D98();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_19A744274(disappear);
}

- (_TtC10StickerKit38LocalStickerEffectEditorViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return LocalStickerEffectEditorViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end