@interface STKStickerSearchConfiguration
- (BOOL)visible;
- (STKStickerSearchConfiguration)init;
- (double)fontSize;
- (double)margin;
- (double)spacing;
- (void)setFontSize:(double)a3;
- (void)setMargin:(double)a3;
- (void)setSpacing:(double)a3;
- (void)setVisible:(BOOL)a3;
@end

@implementation STKStickerSearchConfiguration

- (double)fontSize
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_fontSize;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFontSize:(double)a3
{
  v5 = OBJC_IVAR___STKStickerSearchConfiguration_fontSize;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)margin
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_margin;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMargin:(double)a3
{
  v5 = OBJC_IVAR___STKStickerSearchConfiguration_margin;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)spacing
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSpacing:(double)a3
{
  v5 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)visible
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVisible:(BOOL)a3
{
  v5 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (STKStickerSearchConfiguration)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___STKStickerSearchConfiguration_fontSize) = 0x4040000000000000;
  *(&self->super.isa + OBJC_IVAR___STKStickerSearchConfiguration_margin) = 0;
  *(&self->super.isa + OBJC_IVAR___STKStickerSearchConfiguration_spacing) = 0;
  *(&self->super.isa + OBJC_IVAR___STKStickerSearchConfiguration_visible) = 1;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(STKStickerSearchConfiguration *)&v5 init];
}

@end