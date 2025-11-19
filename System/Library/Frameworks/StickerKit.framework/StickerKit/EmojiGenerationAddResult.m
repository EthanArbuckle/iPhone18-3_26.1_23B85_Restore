@interface EmojiGenerationAddResult
- (_TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult)init;
- (void)setSticker:(id)a3;
@end

@implementation EmojiGenerationAddResult

- (void)setSticker:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker);
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker) = a3;
  v3 = a3;
}

- (_TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_sticker) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_searchString);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_05A313237EDA246051A5A9ECF50D6C3A24EmojiGenerationAddResult_captionText);
  *v5 = 0;
  v5[1] = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(EmojiGenerationAddResult *)&v7 init];
}

@end