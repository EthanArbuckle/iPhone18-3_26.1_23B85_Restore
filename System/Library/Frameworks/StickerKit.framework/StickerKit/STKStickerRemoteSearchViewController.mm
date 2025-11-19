@interface STKStickerRemoteSearchViewController
- (STKStickerRemoteSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (STKStickerRemoteSearchViewControllerDelegate)delegate;
- (void)configureWithConfiguration:(id)a3;
- (void)didSelectEmoji:(id)a3 indexPath:(id)a4;
- (void)didSelectSticker:(id)a3 indexPath:(id)a4;
- (void)emojiGenerationRemoteController:(id)a3 didGenerateEmoji:(id)a4 shouldInsert:(BOOL)a5;
- (void)emojiGenerationRemoteControllerDidCancel:(id)a3;
- (void)layoutDirectionDidChange;
- (void)searchWithQuery:(id)a3;
- (void)toggleGlow:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation STKStickerRemoteSearchViewController

- (STKStickerRemoteSearchViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  StickerRemoteSearchViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  StickerRemoteSearchViewController.viewDidAppear(_:)(a3);
}

- (void)layoutDirectionDidChange
{
  v2 = self;
  sub_19A7735D8();
}

- (void)searchWithQuery:(id)a3
{
  v4 = a3;
  v5 = self;
  StickerRemoteSearchViewController.search(withQuery:)(v4);
}

- (void)configureWithConfiguration:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  sub_19A7AB644();

  v7 = sub_19A6D51D0(1, v5, 0, 0);
  [v8 sendAction_];
}

- (void)didSelectEmoji:(id)a3 indexPath:(id)a4
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A7AB014();
  v11 = v10;
  sub_19A7A9024();
  v12 = self;
  StickerRemoteSearchViewController.didSelectEmoji(_:indexPath:)(v9, v11);

  (*(v6 + 8))(v8, v5);
}

- (void)didSelectSticker:(id)a3 indexPath:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_19A7AB354();
  v13 = a3;
  v14 = sub_19A7AB344();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_19A6816F0(0, 0, v7, &unk_19A7C2538, v15);

  (*(v9 + 8))(v11, v8);
}

- (void)toggleGlow:(BOOL)a3
{
  v4 = self;
  StickerRemoteSearchViewController.toggleGlow(_:)(a3);
}

- (STKStickerRemoteSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return StickerRemoteSearchViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)emojiGenerationRemoteController:(id)a3 didGenerateEmoji:(id)a4 shouldInsert:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  StickerRemoteSearchViewController.emojiGenerationRemoteController(_:didGenerateEmoji:shouldInsert:)(v8, v9, a5);
}

- (void)emojiGenerationRemoteControllerDidCancel:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  [v5 setRestoresToEmojiInputMode];
  sub_19A70255C(v6, 0, 0, 0, 0);
}

@end