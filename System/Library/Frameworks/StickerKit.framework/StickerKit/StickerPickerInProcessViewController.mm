@interface StickerPickerInProcessViewController
- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithCoder:(id)coder;
- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleCloseButton;
- (void)loadView;
@end

@implementation StickerPickerInProcessViewController

- (void)loadView
{
  selfCopy = self;
  sub_19A78BEEC();
}

- (void)handleCloseButton
{
  selfCopy = self;
  _hostedWindowScene = [(StickerPickerInProcessViewController *)selfCopy _hostedWindowScene];
  if (_hostedWindowScene)
  {
    v3 = _hostedWindowScene;
    actionForStickerPickerSceneDidRequestDismissal = [objc_opt_self() actionForStickerPickerSceneDidRequestDismissal];
    [v3 sendAction_];
  }
}

- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav;
  v9 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = sub_19A7AAFE4();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for StickerPickerInProcessViewController();
  v12 = [(StickerPickerInProcessViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for StickerPickerInProcessViewController();
  v8 = [(StickerPickerInProcessViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end