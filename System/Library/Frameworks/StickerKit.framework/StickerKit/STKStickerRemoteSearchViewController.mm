@interface STKStickerRemoteSearchViewController
- (STKStickerRemoteSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (STKStickerRemoteSearchViewControllerDelegate)delegate;
- (void)configureWithConfiguration:(id)configuration;
- (void)didSelectEmoji:(id)emoji indexPath:(id)path;
- (void)didSelectSticker:(id)sticker indexPath:(id)path;
- (void)emojiGenerationRemoteController:(id)controller didGenerateEmoji:(id)emoji shouldInsert:(BOOL)insert;
- (void)emojiGenerationRemoteControllerDidCancel:(id)cancel;
- (void)layoutDirectionDidChange;
- (void)searchWithQuery:(id)query;
- (void)toggleGlow:(BOOL)glow;
- (void)viewDidAppear:(BOOL)appear;
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
  selfCopy = self;
  StickerRemoteSearchViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  StickerRemoteSearchViewController.viewDidAppear(_:)(appear);
}

- (void)layoutDirectionDidChange
{
  selfCopy = self;
  sub_19A7735D8();
}

- (void)searchWithQuery:(id)query
{
  queryCopy = query;
  selfCopy = self;
  StickerRemoteSearchViewController.search(withQuery:)(queryCopy);
}

- (void)configureWithConfiguration:(id)configuration
{
  swift_getKeyPath();
  swift_getKeyPath();
  configurationCopy = configuration;
  selfCopy = self;
  sub_19A7AB644();

  v7 = sub_19A6D51D0(1, configurationCopy, 0, 0);
  [v8 sendAction_];
}

- (void)didSelectEmoji:(id)emoji indexPath:(id)path
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A7AB014();
  v11 = v10;
  sub_19A7A9024();
  selfCopy = self;
  StickerRemoteSearchViewController.didSelectEmoji(_:indexPath:)(v9, v11);

  (*(v6 + 8))(v8, v5);
}

- (void)didSelectSticker:(id)sticker indexPath:(id)path
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
  stickerCopy = sticker;
  v14 = sub_19A7AB344();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = stickerCopy;
  sub_19A6816F0(0, 0, v7, &unk_19A7C2538, v15);

  (*(v9 + 8))(v11, v8);
}

- (void)toggleGlow:(BOOL)glow
{
  selfCopy = self;
  StickerRemoteSearchViewController.toggleGlow(_:)(glow);
}

- (STKStickerRemoteSearchViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return StickerRemoteSearchViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)emojiGenerationRemoteController:(id)controller didGenerateEmoji:(id)emoji shouldInsert:(BOOL)insert
{
  controllerCopy = controller;
  emojiCopy = emoji;
  selfCopy = self;
  StickerRemoteSearchViewController.emojiGenerationRemoteController(_:didGenerateEmoji:shouldInsert:)(controllerCopy, emojiCopy, insert);
}

- (void)emojiGenerationRemoteControllerDidCancel:(id)cancel
{
  v5 = objc_opt_self();
  cancelCopy = cancel;
  selfCopy = self;
  [v5 setRestoresToEmojiInputMode];
  sub_19A70255C(cancelCopy, 0, 0, 0, 0);
}

@end