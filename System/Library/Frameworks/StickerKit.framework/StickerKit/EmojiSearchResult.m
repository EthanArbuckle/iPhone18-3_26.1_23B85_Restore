@interface EmojiSearchResult
- (NSString)emoji;
- (_TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult)init;
- (void)setEmoji:(id)a3;
@end

@implementation EmojiSearchResult

- (NSString)emoji
{

  v2 = sub_19A7AAFE4();

  return v2;
}

- (void)setEmoji:(id)a3
{
  v4 = sub_19A7AB014();
  v5 = (self + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_emoji);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_emoji);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(self + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F17EmojiSearchResult_index) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(EmojiSearchResult *)&v6 init];
}

@end