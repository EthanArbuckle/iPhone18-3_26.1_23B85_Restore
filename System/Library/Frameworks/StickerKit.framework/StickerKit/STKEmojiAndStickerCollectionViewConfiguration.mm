@interface STKEmojiAndStickerCollectionViewConfiguration
- (BOOL)didCreateSticker;
- (BOOL)doesSupportGenmoji;
- (BOOL)doesSupportImageGlyph;
- (BOOL)doesSupportStickersApp;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInPopover;
- (BOOL)isKeyboardMinorEdgeWidth;
- (BOOL)isRunningInGenmoji;
- (STKEmojiAndStickerCollectionViewConfiguration)initWithBSXPCCoder:(id)a3;
- (double)keyboardWidth;
- (double)screenToNativeScaleRatio;
- (int64_t)userInterfaceIdiom;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)setDidCreateSticker:(BOOL)a3;
- (void)setDoesSupportGenmoji:(BOOL)a3;
- (void)setDoesSupportImageGlyph:(BOOL)a3;
- (void)setDoesSupportStickersApp:(BOOL)a3;
- (void)setIsInPopover:(BOOL)a3;
- (void)setIsKeyboardMinorEdgeWidth:(BOOL)a3;
- (void)setIsRunningInGenmoji:(BOOL)a3;
- (void)setKeyboardWidth:(double)a3;
- (void)setScreenToNativeScaleRatio:(double)a3;
- (void)setUserInterfaceIdiom:(int64_t)a3;
@end

@implementation STKEmojiAndStickerCollectionViewConfiguration

- (int64_t)userInterfaceIdiom
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUserInterfaceIdiom:(int64_t)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)keyboardWidth
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeyboardWidth:(double)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_keyboardWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isKeyboardMinorEdgeWidth
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyboardMinorEdgeWidth:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isInPopover
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInPopover:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)doesSupportImageGlyph
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportImageGlyph:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)doesSupportGenmoji
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportGenmoji:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportGenmoji;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)screenToNativeScaleRatio
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenToNativeScaleRatio:(double)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)doesSupportStickersApp
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportStickersApp:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isRunningInGenmoji
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRunningInGenmoji:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)didCreateSticker
{
  v3 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDidCreateSticker:(BOOL)a3
{
  v5 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_didCreateSticker;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (STKEmojiAndStickerCollectionViewConfiguration)initWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_19A6D5F44(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  EmojiAndStickerCollectionViewConfiguration.encode(withBSXPCCoder:)(a3);
  swift_unknownObjectRelease();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = EmojiAndStickerCollectionViewConfiguration.isEqual(_:)(v8);

  sub_19A5F2B54(v8, &unk_1EAFCD750);
  return v6 & 1;
}

@end