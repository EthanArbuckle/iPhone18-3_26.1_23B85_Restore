@interface STKEmojiAndStickerCollectionViewController
- (STKEmojiAndStickerCollectionViewConfiguration)configuration;
- (STKEmojiAndStickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (STKEmojiAndStickerCollectionViewControllerDelegate)delegate;
- (id)transitionerForConnectingHostingController:(id)a3;
- (void)didBeingDrag:(BOOL)a3;
- (void)didPinch:(double)a3;
- (void)didSelectCreate:(id)a3 queryString:(id)a4;
- (void)didSelectEditWithStickerIdentifer:(id)a3 sourceRect:(CGRect)a4;
- (void)didSelectEmoji:(id)a3;
- (void)didSelectEmoji:(id)a3 dismiss:(BOOL)a4;
- (void)didSelectPresentPicker;
- (void)didSelectShareWithSticker:(id)a3 sourceRect:(CGRect)a4;
- (void)didSelectSticker:(id)a3;
- (void)didSelectSticker:(id)a3 dismiss:(BOOL)a4;
- (void)didSelectUnicodeCharacter:(id)a3;
- (void)emojiGenerationRemoteController:(id)a3 didGenerateEmoji:(id)a4 shouldInsert:(BOOL)a5;
- (void)emojiGenerationRemoteControllerDidCancel:(id)a3;
- (void)handleKeyEvent:(id)a3;
- (void)searchWithQuery:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
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

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  EmojiAndStickerCollectionViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = self;
  _s10StickerKit08EmojiAndA24CollectionViewControllerC15viewIsAppearingyySbF_0();
}

- (void)searchWithQuery:(id)a3
{
  v4 = a3;
  v5 = self;
  EmojiAndStickerCollectionViewController.search(withQuery:)(v4);
}

- (void)handleKeyEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  EmojiAndStickerCollectionViewController.handleKeyEvent(_:)(v4);
}

- (void)didSelectEmoji:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    [v5 didSelectEmoji_];

    swift_unknownObjectRelease();
  }
}

- (void)didSelectEmoji:(id)a3 dismiss:(BOOL)a4
{
  v6 = sub_19A7AB014();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  EmojiAndStickerCollectionViewController.didSelectEmoji(_:dismiss:)(v10, a4);
}

- (void)didSelectUnicodeCharacter:(id)a3
{
  v4 = sub_19A7AB014();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  EmojiAndStickerCollectionViewController.didSelectUnicodeCharacter(_:)(v8);
}

- (void)didSelectSticker:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didSelectSticker_];
    swift_unknownObjectRelease();
  }
}

- (void)didSelectSticker:(id)a3 dismiss:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  EmojiAndStickerCollectionViewController.didSelectSticker(_:dismiss:)(v6, a4);
}

- (void)didSelectEditWithStickerIdentifer:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
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
    v15 = self;
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

- (void)didSelectCreate:(id)a3 queryString:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (a3)
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

  if (a4)
  {
    v12 = sub_19A7AB014();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = self;
  EmojiAndStickerCollectionViewController.didSelectCreate(_:queryString:)(v9, v12, a4);

  sub_19A5F2B54(v9, &qword_1EAFCD800);
}

- (void)didPinch:(double)a3
{
  v4 = a3 < 1.0;
  v5 = objc_opt_self();
  if (v4 != [v5 isFloating])
  {

    [v5 setFloating:a3 < 1.0 positionedAtDefaultOffsetAnimated:0];
  }
}

- (void)didBeingDrag:(BOOL)a3
{
  if (a3)
  {
    v4 = objc_opt_self();
    v7 = self;
    v5 = [v4 defaultCenter];
    v6 = sub_19A7AAFE4();
    [v5 postNotificationName:v6 object:v7];
  }
}

- (void)didSelectShareWithSticker:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_19A7AB394();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_19A7AB354();
  v14 = a3;
  v15 = self;
  v16 = v14;
  v17 = sub_19A7AB344();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v17;
  *(v18 + 3) = v19;
  *(v18 + 4) = v15;
  v18[5] = x;
  v18[6] = y;
  v18[7] = width;
  v18[8] = height;
  *(v18 + 9) = v16;
  sub_19A6816F0(0, 0, v12, &unk_19A7BDA28, v18);
}

- (id)transitionerForConnectingHostingController:(id)a3
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

- (STKEmojiAndStickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return EmojiAndStickerCollectionViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)emojiGenerationRemoteController:(id)a3 didGenerateEmoji:(id)a4 shouldInsert:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  EmojiAndStickerCollectionViewController.emojiGenerationRemoteController(_:didGenerateEmoji:shouldInsert:)(v8, v9, a5);
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