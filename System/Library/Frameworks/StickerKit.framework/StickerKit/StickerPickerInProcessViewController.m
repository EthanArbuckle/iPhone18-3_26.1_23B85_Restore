@interface StickerPickerInProcessViewController
- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithCoder:(id)a3;
- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleCloseButton;
- (void)loadView;
@end

@implementation StickerPickerInProcessViewController

- (void)loadView
{
  v2 = self;
  sub_19A78BEEC();
}

- (void)handleCloseButton
{
  v5 = self;
  v2 = [(StickerPickerInProcessViewController *)v5 _hostedWindowScene];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() actionForStickerPickerSceneDidRequestDismissal];
    [v3 sendAction_];
  }
}

- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
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
  v10 = a4;
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
  v12 = [(StickerPickerInProcessViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC10StickerKit36StickerPickerInProcessViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC10StickerKit36StickerPickerInProcessViewController_nav;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for StickerPickerInProcessViewController();
  v8 = [(StickerPickerInProcessViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end