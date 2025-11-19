@interface AVGlassBackedButton
- (AVGlassBackedButton)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)setBackgroundMaterialStyle:(int64_t)a3;
- (void)setBackgroundMaterialized:(BOOL)a3;
- (void)setSubdued:(BOOL)a3;
- (void)updateBackgroundMaterial;
@end

@implementation AVGlassBackedButton

- (void)setSubdued:(BOOL)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_subdued) = a3;
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(AVGlassBackedButton *)self setBackgroundMaterialStyle:v3];
}

- (void)setBackgroundMaterialStyle:(int64_t)a3
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle) = a3;
  if (v3 != a3)
  {
    [(AVGlassBackedButton *)self updateBackgroundMaterial];
  }
}

- (void)setBackgroundMaterialized:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized) = a3;
  if (v3 != a3)
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
  v3 = [v2 layer];
  [v3 setMasksToBounds_];

  [v2 updateBackgroundMaterial];
}

- (void)updateBackgroundMaterial
{
  v3 = self;
  if ([(AVGlassBackedButton *)v3 backgroundMaterialized])
  {
    v2 = [(AVGlassBackedButton *)v3 backgroundMaterialStyle];
  }

  else
  {
    v2 = 0;
  }

  [(UIView *)v3 avkit_setGlassBackgroundStyle:v2];
}

- (AVGlassBackedButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_wantsCapsuleShape) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_subdued) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialStyle) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___AVGlassBackedButton_backgroundMaterialized) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVGlassBackedButton();
  return [(AVGlassBackedButton *)&v8 initWithFrame:x, y, width, height];
}

@end