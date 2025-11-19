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
- (void)setDoesSupportImageGlyph:(BOOL)a3;
- (void)setDoesSupportStickersApp:(BOOL)a3;
- (void)setIsInPopover:(BOOL)a3;
- (void)setIsKeyboardMinorEdgeWidth:(BOOL)a3;
- (void)setIsRunningInGenmoji:(BOOL)a3;
- (void)setKeyboardWidth:(double)a3;
- (void)setScale:(double)a3;
- (void)setScreenToNativeScaleRatio:(double)a3;
@end

@implementation STKImageGlyphViewConfiguration

- (double)keyboardWidth
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setKeyboardWidth:(double)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isKeyboardMinorEdgeWidth
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyboardMinorEdgeWidth:(BOOL)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isInPopover
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInPopover:(BOOL)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)doesSupportImageGlyph
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportImageGlyph:(BOOL)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)scale
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScale:(double)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_scale;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)screenToNativeScaleRatio
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScreenToNativeScaleRatio:(double)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)doesSupportStickersApp
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoesSupportStickersApp:(BOOL)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isRunningInGenmoji
{
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRunningInGenmoji:(BOOL)a3
{
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (STKImageGlyphViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end