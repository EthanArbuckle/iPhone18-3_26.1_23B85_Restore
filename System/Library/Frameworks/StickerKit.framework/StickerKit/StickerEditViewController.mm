@interface StickerEditViewController
- (_TtC10StickerKit25StickerEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleDoneButton;
- (void)handleLiveButton;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StickerEditViewController

- (void)loadView
{
  selfCopy = self;
  sub_19A788EAC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19A7899F8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for StickerEditViewController();
  v4 = v5.receiver;
  [(StickerEditViewController *)&v5 viewWillDisappear:disappearCopy];
  v4[OBJC_IVAR____TtC10StickerKit25StickerEditViewController_isPaused] = 1;
  sub_19A787B4C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_19A789BD4();
}

- (void)handleDoneButton
{
  selfCopy = self;
  sub_19A789DD8();
}

- (void)handleLiveButton
{
  selfCopy = self;
  sub_19A789F88();
}

- (_TtC10StickerKit25StickerEditViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end