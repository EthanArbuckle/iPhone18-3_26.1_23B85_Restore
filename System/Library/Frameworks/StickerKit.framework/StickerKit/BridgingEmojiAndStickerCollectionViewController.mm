@interface BridgingEmojiAndStickerCollectionViewController
- (BOOL)handleKeyEvent:(id)event;
- (NSArray)searchResults;
- (NSString)bundleId;
- (_TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_UIKeyboardEmojiKeyDisplayController)emojiKeyManager;
- (void)setBundleId:(id)id;
- (void)setSearchResults:(id)results;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
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

- (void)setSearchResults:(id)results
{
  if (results)
  {
    v4 = sub_19A7AB254();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_searchResults) = v4;
  selfCopy = self;

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

- (void)setBundleId:(id)id
{
  if (id)
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
  selfCopy = self;

  v9 = (*(selfCopy + OBJC_IVAR____TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController_collectionInputView) + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hostAppID);
  *v9 = v4;
  v9[1] = v6;
}

- (BOOL)handleKeyEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v6 = sub_19A66C64C(eventCopy);

  return v6 & 1;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19A65FC50();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_19A6603B4(appearing);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_19A66051C();
}

- (_TtC10StickerKit47BridgingEmojiAndStickerCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end