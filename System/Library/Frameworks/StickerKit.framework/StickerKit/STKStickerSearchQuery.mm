@interface STKStickerSearchQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsEmoji;
- (BOOL)supportsGenmoji;
- (BOOL)supportsImages;
- (NSArray)multilingualSearchLocales;
- (STKStickerSearchQuery)init;
- (id)trimmedEmojiSearchQuery;
- (void)setMultilingualSearchLocales:(id)locales;
- (void)setSupportsEmoji:(BOOL)emoji;
- (void)setSupportsGenmoji:(BOOL)genmoji;
- (void)setSupportsImages:(BOOL)images;
@end

@implementation STKStickerSearchQuery

- (NSArray)multilingualSearchLocales
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_19A7AB234();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMultilingualSearchLocales:(id)locales
{
  if (locales)
  {
    v4 = sub_19A7AB254();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)supportsImages
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsImages:(BOOL)images
{
  v5 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  swift_beginAccess();
  *(self + v5) = images;
}

- (BOOL)supportsGenmoji
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsGenmoji:(BOOL)genmoji
{
  v5 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
  swift_beginAccess();
  *(self + v5) = genmoji;
}

- (BOOL)supportsEmoji
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSupportsEmoji:(BOOL)emoji
{
  v5 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  swift_beginAccess();
  *(self + v5) = emoji;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = StickerSearchQuery.isEqual(_:)(v8);

  sub_19A612E20(v8);
  return v6 & 1;
}

- (id)trimmedEmojiSearchQuery
{
  v3 = sub_19A7A8BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (self + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v12[1] = *v7;
    v12[2] = v8;
    selfCopy = self;

    sub_19A7A8B94();
    sub_19A639920();
    sub_19A7ABAF4();

    (*(v4 + 8))(v6, v3);

    v10 = sub_19A7AAFE4();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (STKStickerSearchQuery)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery);
  *v5 = 0;
  v5[1] = 0;
  v6 = (self + OBJC_IVAR___STKStickerSearchQuery_locale);
  *v6 = 0;
  v6[1] = 0;
  *(self + OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales) = 0;
  *(self + OBJC_IVAR___STKStickerSearchQuery_supportsImages) = 1;
  *(self + OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji) = 1;
  *(self + OBJC_IVAR___STKStickerSearchQuery_supportsEmoji) = 1;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(STKStickerSearchQuery *)&v8 init];
}

@end