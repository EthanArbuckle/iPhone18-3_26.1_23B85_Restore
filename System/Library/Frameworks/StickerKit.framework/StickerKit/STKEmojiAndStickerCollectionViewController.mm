@interface STKEmojiAndStickerCollectionViewController
- (STKEmojiAndStickerCollectionViewConfiguration)configuration;
- (STKEmojiAndStickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (STKEmojiAndStickerCollectionViewControllerDelegate)delegate;
- (id)transitionerForConnectingHostingController:(id)controller;
- (void)didBeingDrag:(BOOL)drag;
- (void)didPinch:(double)pinch;
- (void)didSelectCreate:(id)create queryString:(id)string;
- (void)didSelectEditWithStickerIdentifer:(id)identifer sourceRect:(CGRect)rect;
- (void)didSelectEmoji:(id)emoji;
- (void)didSelectEmoji:(id)emoji dismiss:(BOOL)dismiss;
- (void)didSelectPresentPicker;
- (void)didSelectShareWithSticker:(id)sticker sourceRect:(CGRect)rect;
- (void)didSelectSticker:(id)sticker;
- (void)didSelectSticker:(id)sticker dismiss:(BOOL)dismiss;
- (void)didSelectUnicodeCharacter:(id)character;
- (void)emojiGenerationRemoteController:(id)controller didGenerateEmoji:(id)emoji shouldInsert:(BOOL)insert;
- (void)emojiGenerationRemoteControllerDidCancel:(id)cancel;
- (void)handleKeyEvent:(id)event;
- (void)searchWithQuery:(id)query;
- (void)setConfiguration:(id)configuration;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation STKEmojiAndStickerCollectionViewController

- (STKEmojiAndStickerCollectionViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (STKEmojiAndStickerCollectionViewConfiguration)configuration
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)configuration
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = configuration;
  configurationCopy = configuration;
}

- (void)viewDidLoad
{
  selfCopy = self;
  EmojiAndStickerCollectionViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  _s10StickerKit08EmojiAndA24CollectionViewControllerC15viewIsAppearingyySbF_0();
}

- (void)searchWithQuery:(id)query
{
  queryCopy = query;
  selfCopy = self;
  EmojiAndStickerCollectionViewController.search(withQuery:)(queryCopy);
}

- (void)handleKeyEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  EmojiAndStickerCollectionViewController.handleKeyEvent(_:)(eventCopy);
}

- (void)didSelectEmoji:(id)emoji
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    emojiCopy = emoji;
    [v5 didSelectEmoji_];

    swift_unknownObjectRelease();
  }
}

- (void)didSelectEmoji:(id)emoji dismiss:(BOOL)dismiss
{
  v6 = sub_19A7AB014();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  EmojiAndStickerCollectionViewController.didSelectEmoji(_:dismiss:)(v10, dismiss);
}

- (void)didSelectUnicodeCharacter:(id)character
{
  v4 = sub_19A7AB014();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  EmojiAndStickerCollectionViewController.didSelectUnicodeCharacter(_:)(v8);
}

- (void)didSelectSticker:(id)sticker
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSelectSticker_];
    swift_unknownObjectRelease();
  }
}

- (void)didSelectSticker:(id)sticker dismiss:(BOOL)dismiss
{
  stickerCopy = sticker;
  selfCopy = self;
  EmojiAndStickerCollectionViewController.didSelectSticker(_:dismiss:)(stickerCopy, dismiss);
}

- (void)didSelectEditWithStickerIdentifer:(id)identifer sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8F44();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    selfCopy = self;
    v16 = sub_19A7A8F24();
    [v14 didSelectEditWithStickerIdentifer:v16 sourceRect:{x, y, width, height}];

    swift_unknownObjectRelease();
  }

  (*(v10 + 8))(v12, v9);
}

- (void)didSelectPresentPicker
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSelectPresentPicker];
    swift_unknownObjectRelease();
  }
}

- (void)didSelectCreate:(id)create queryString:(id)string
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (create)
  {
    sub_19A7A8F44();
    v10 = sub_19A7A8F64();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_19A7A8F64();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  if (string)
  {
    v12 = sub_19A7AB014();
    string = v13;
  }

  else
  {
    v12 = 0;
  }

  selfCopy = self;
  EmojiAndStickerCollectionViewController.didSelectCreate(_:queryString:)(v9, v12, string);

  sub_19A5F2B54(v9, &qword_1EAFCD800);
}

- (void)didPinch:(double)pinch
{
  v4 = pinch < 1.0;
  v5 = objc_opt_self();
  if (v4 != [v5 isFloating])
  {

    [v5 setFloating:pinch < 1.0 positionedAtDefaultOffsetAnimated:0];
  }
}

- (void)didBeingDrag:(BOOL)drag
{
  if (drag)
  {
    v4 = objc_opt_self();
    selfCopy = self;
    defaultCenter = [v4 defaultCenter];
    v6 = sub_19A7AAFE4();
    [defaultCenter postNotificationName:v6 object:selfCopy];
  }
}

- (void)didSelectShareWithSticker:(id)sticker sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_19A7AB394();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_19A7AB354();
  stickerCopy = sticker;
  selfCopy = self;
  v16 = stickerCopy;
  v17 = sub_19A7AB344();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v17;
  *(v18 + 3) = v19;
  *(v18 + 4) = selfCopy;
  v18[5] = x;
  v18[6] = y;
  v18[7] = width;
  v18[8] = height;
  *(v18 + 9) = v16;
  sub_19A6816F0(0, 0, v12, &unk_19A7BDA28, v18);
}

- (id)transitionerForConnectingHostingController:(id)controller
{
  v5[4] = sub_19A6D26D4;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_19A6DB1A8;
  v5[3] = &block_descriptor_14;
  v3 = _Block_copy(v5);

  return v3;
}

- (STKEmojiAndStickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return EmojiAndStickerCollectionViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)emojiGenerationRemoteController:(id)controller didGenerateEmoji:(id)emoji shouldInsert:(BOOL)insert
{
  controllerCopy = controller;
  emojiCopy = emoji;
  selfCopy = self;
  EmojiAndStickerCollectionViewController.emojiGenerationRemoteController(_:didGenerateEmoji:shouldInsert:)(controllerCopy, emojiCopy, insert);
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