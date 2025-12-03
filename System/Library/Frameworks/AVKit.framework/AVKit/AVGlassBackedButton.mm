@interface AVGlassBackedButton
- (AVGlassBackedButton)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)setBackgroundMaterialStyle:(int64_t)style;
- (void)setBackgroundMaterialized:(BOOL)materialized;
- (void)setSubdued:(BOOL)subdued;
- (void)updateBackgroundMaterial;
@end

@implementation AVGlassBackedButton

- (void)setSubdued:(BOOL)subdued
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_subdued) = subdued;
  if (subdued)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(AVGlassBackedButton *)self setBackgroundMaterialStyle:v3];
}

- (void)setBackgroundMaterialStyle:(int64_t)style
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle) = style;
  if (v3 != style)
  {
    [(AVGlassBackedButton *)self updateBackgroundMaterial];
  }
}

- (void)setBackgroundMaterialized:(BOOL)materialized
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized) = materialized;
  if (v3 != materialized)
  {
    [(AVGlassBackedButton *)self updateBackgroundMaterial];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AVGlassBackedButton();
  v2 = v4.receiver;
  [(AVGlassBackedButton *)&v4 didMoveToWindow];
  layer = [v2 layer];
  [layer setMasksToBounds_];

  [v2 updateBackgroundMaterial];
}

- (void)updateBackgroundMaterial
{
  selfCopy = self;
  if ([(AVGlassBackedButton *)selfCopy backgroundMaterialized])
  {
    backgroundMaterialStyle = [(AVGlassBackedButton *)selfCopy backgroundMaterialStyle];
  }

  else
  {
    backgroundMaterialStyle = 0;
  }

  [(UIView *)selfCopy avkit_setGlassBackgroundStyle:backgroundMaterialStyle];
}

- (AVGlassBackedButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_wantsCapsuleShape) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_subdued) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVGlassBackedButton();
  return [(AVGlassBackedButton *)&v8 initWithFrame:x, y, width, height];
}

@end