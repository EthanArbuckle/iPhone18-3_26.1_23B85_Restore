@interface StickerSearchResult
- (_TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult)init;
- (void)setSticker:(id)a3;
@end

@implementation StickerSearchResult

- (void)setSticker:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker);
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker) = a3;
  v3 = a3;
}

- (_TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_sticker) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC10StickerKitP33_0209F597C25C7378B6F590430344EB1F19StickerSearchResult_index) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(StickerSearchResult *)&v5 init];
}

@end