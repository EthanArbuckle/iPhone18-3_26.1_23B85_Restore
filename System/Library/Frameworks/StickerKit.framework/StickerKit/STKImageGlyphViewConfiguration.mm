@interface STKImageGlyphViewConfiguration
- (BOOL)doesSupportImageGlyph;
- (BOOL)doesSupportStickersApp;
- (BOOL)isInPopover;
- (BOOL)isKeyboardMinorEdgeWidth;
- (BOOL)isRunningInGenmoji;
- (STKImageGlyphViewConfiguration)init;
- (double)keyboardWidth;
- (double)scale;
- (double)screenToNativeScaleRatio;
- (void)setDoesSupportImageGlyph:(BOOL)glyph;
- (void)setDoesSupportStickersApp:(BOOL)app;
- (void)setIsInPopover:(BOOL)popover;
- (void)setIsKeyboardMinorEdgeWidth:(BOOL)width;
- (void)setIsRunningInGenmoji:(BOOL)genmoji;
- (void)setKeyboardWidth:(double)width;
- (void)setScale:(double)scale;
- (void)setScreenToNativeScaleRatio:(double)ratio;
@end

@implementation STKImageGlyphViewConfiguration

- (double)keyboardWidth
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeyboardWidth:(double)width
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (BOOL)isKeyboardMinorEdgeWidth
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyboardMinorEdgeWidth:(BOOL)width
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (BOOL)isInPopover
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInPopover:(BOOL)popover
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  *(&self->super.isa + v5) = popover;
}

- (BOOL)doesSupportImageGlyph
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportImageGlyph:(BOOL)glyph
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  *(&self->super.isa + v5) = glyph;
}

- (double)scale
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScale:(double)scale
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  swift_beginAccess();
  *(&self->super.isa + v5) = scale;
}

- (double)screenToNativeScaleRatio
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenToNativeScaleRatio:(double)ratio
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  *(&self->super.isa + v5) = ratio;
}

- (BOOL)doesSupportStickersApp
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportStickersApp:(BOOL)app
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  *(&self->super.isa + v5) = app;
}

- (BOOL)isRunningInGenmoji
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRunningInGenmoji:(BOOL)genmoji
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  *(&self->super.isa + v5) = genmoji;
}

- (STKImageGlyphViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end