@interface BridgingEmojiAndStickerCollectionViewController
- (BOOL)handleKeyEvent:(id)a3;
- (NSArray)searchResults;
- (NSString)bundleId;
- (_TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_UIKeyboardEmojiKeyDisplayController)emojiKeyManager;
- (void)setBundleId:(id)a3;
- (void)setSearchResults:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation BridgingEmojiAndStickerCollectionViewController

- (_UIKeyboardEmojiKeyDisplayController)emojiKeyManager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSArray)searchResults
{
  if (*(self + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_searchResults))
  {

    v2 = sub_19A7AB234();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setSearchResults:(id)a3
{
  if (a3)
  {
    v4 = sub_19A7AB254();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_searchResults) = v4;
  v5 = self;

  sub_19A65F838();
}

- (NSString)bundleId
{
  if (*(self + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_bundleId + 8))
  {

    v2 = sub_19A7AAFE4();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setBundleId:(id)a3
{
  if (a3)
  {
    v4 = sub_19A7AB014();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_bundleId);
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  v9 = (*(v8 + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_collectionInputView) + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hostAppID);
  *v9 = v4;
  v9[1] = v6;
}

- (BOOL)handleKeyEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_19A66C64C(v4);

  return v6 & 1;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_19A65FC50();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_19A6603B4(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_19A66051C();
}

- (_TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end