@interface STKEmojiAndStickerCollectionViewConfiguration
- (BOOL)didCreateSticker;
- (BOOL)doesSupportGenmoji;
- (BOOL)doesSupportImageGlyph;
- (BOOL)doesSupportStickersApp;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInPopover;
- (BOOL)isKeyboardMinorEdgeWidth;
- (BOOL)isRunningInGenmoji;
- (STKEmojiAndStickerCollectionViewConfiguration)initWithBSXPCCoder:(id)coder;
- (double)keyboardWidth;
- (double)screenToNativeScaleRatio;
- (int64_t)userInterfaceIdiom;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)setDidCreateSticker:(BOOL)sticker;
- (void)setDoesSupportGenmoji:(BOOL)genmoji;
- (void)setDoesSupportImageGlyph:(BOOL)glyph;
- (void)setDoesSupportStickersApp:(BOOL)app;
- (void)setIsInPopover:(BOOL)popover;
- (void)setIsKeyboardMinorEdgeWidth:(BOOL)width;
- (void)setIsRunningInGenmoji:(BOOL)genmoji;
- (void)setKeyboardWidth:(double)width;
- (void)setScreenToNativeScaleRatio:(double)ratio;
- (void)setUserInterfaceIdiom:(int64_t)idiom;
@end

@implementation STKEmojiAndStickerCollectionViewConfiguration

- (int64_t)userInterfaceIdiom
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUserInterfaceIdiom:(int64_t)idiom
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  *(&self->super.isa + v5) = idiom;
}

- (double)keyboardWidth
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeyboardWidth:(double)width
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (BOOL)isKeyboardMinorEdgeWidth
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyboardMinorEdgeWidth:(BOOL)width
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (BOOL)isInPopover
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInPopover:(BOOL)popover
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  swift_beginAccess();
  *(&self->super.isa + v5) = popover;
}

- (BOOL)doesSupportImageGlyph
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportImageGlyph:(BOOL)glyph
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  *(&self->super.isa + v5) = glyph;
}

- (BOOL)doesSupportGenmoji
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportGenmoji:(BOOL)genmoji
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  swift_beginAccess();
  *(&self->super.isa + v5) = genmoji;
}

- (double)screenToNativeScaleRatio
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenToNativeScaleRatio:(double)ratio
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  *(&self->super.isa + v5) = ratio;
}

- (BOOL)doesSupportStickersApp
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportStickersApp:(BOOL)app
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  *(&self->super.isa + v5) = app;
}

- (BOOL)isRunningInGenmoji
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRunningInGenmoji:(BOOL)genmoji
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  *(&self->super.isa + v5) = genmoji;
}

- (BOOL)didCreateSticker
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDidCreateSticker:(BOOL)sticker
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  swift_beginAccess();
  *(&self->super.isa + v5) = sticker;
}

- (STKEmojiAndStickerCollectionViewConfiguration)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  v4 = sub_19A6D5F44(coder);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  EmojiAndStickerCollectionViewConfiguration.encode(withBSXPCCoder:)(coder);
  swift_unknownObjectRelease();
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

  v6 = EmojiAndStickerCollectionViewConfiguration.isEqual(_:)(v8);

  sub_19A5F2B54(v8, &unk_1EAFCD750);
  return v6 & 1;
}

@end