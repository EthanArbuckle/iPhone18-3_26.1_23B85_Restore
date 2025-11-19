@interface StickerEditViewController
- (_TtC10StickerKit25StickerEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleDoneButton;
- (void)handleLiveButton;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StickerEditViewController

- (void)loadView
{
  v2 = self;
  sub_19A788EAC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_19A7899F8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StickerEditViewController();
  v4 = v5.receiver;
  [(StickerEditViewController *)&v5 viewWillDisappear:v3];
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused] = 1;
  sub_19A787B4C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_19A789BD4();
}

- (void)handleDoneButton
{
  v2 = self;
  sub_19A789DD8();
}

- (void)handleLiveButton
{
  v2 = self;
  sub_19A789F88();
}

- (_TtC10StickerKit25StickerEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end