@interface AVGlassBackedView
- (AVGlassBackedView)initWithFrame:(CGRect)frame;
- (UIColor)backgroundColor;
- (void)didMoveToWindow;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundMaterialStyle:(int64_t)style;
- (void)setBackgroundMaterialized:(BOOL)materialized;
- (void)setSubdued:(BOOL)subdued;
- (void)updateBackgroundMaterial;
- (void)willMoveToWindow:(id)window;
@end

@implementation AVGlassBackedView

- (void)setSubdued:(BOOL)subdued
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_subdued) = subdued;
  if (subdued)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(AVGlassBackedView *)self setBackgroundMaterialStyle:v3];
}

- (void)setBackgroundMaterialStyle:(int64_t)style
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle);
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle) = style;
  if (v3 != style)
  {
    [(AVGlassBackedView *)self updateBackgroundMaterial];
  }
}

- (void)setBackgroundMaterialized:(BOOL)materialized
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialized);
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialized) = materialized;
  if (v3 != materialized)
  {
    [(AVGlassBackedView *)self updateBackgroundMaterial];
  }
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AVGlassBackedView();
  backgroundColor = [(AVGlassBackedView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v5 = type metadata accessor for AVGlassBackedView();
  v14.receiver = self;
  v14.super_class = v5;
  selfCopy = self;
  colorCopy = color;
  backgroundColor = [(AVGlassBackedView *)&v14 backgroundColor];
  v13.receiver = selfCopy;
  v13.super_class = v5;
  [(AVGlassBackedView *)&v13 setBackgroundColor:colorCopy];
  backgroundColor2 = [(AVGlassBackedView *)selfCopy backgroundColor];
  v10 = backgroundColor2;
  if (backgroundColor)
  {
    if (backgroundColor2)
    {
      sub_18B519218();
      v11 = backgroundColor;
      v12 = sub_18B6C5A6C();

      if (v12)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if (backgroundColor2)
  {

LABEL_7:
    [(AVGlassBackedView *)selfCopy updateBackgroundMaterial];
    v11 = backgroundColor;
LABEL_8:
  }
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AVGlassBackedView();
  v4 = v6.receiver;
  windowCopy = window;
  [(AVGlassBackedView *)&v6 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    [v4 setAutomaticallyUpdatesSubviewContentIntersections_];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AVGlassBackedView();
  v2 = v3.receiver;
  [(AVGlassBackedView *)&v3 didMoveToWindow];
  [v2 updateBackgroundMaterial];
}

- (void)updateBackgroundMaterial
{
  selfCopy = self;
  if ([(AVGlassBackedView *)selfCopy backgroundMaterialized])
  {
    backgroundMaterialStyle = [(AVGlassBackedView *)selfCopy backgroundMaterialStyle];
  }

  else
  {
    backgroundMaterialStyle = 0;
  }

  [(UIView *)selfCopy avkit_setGlassBackgroundStyle:backgroundMaterialStyle];
}

- (AVGlassBackedView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_wantsCapsuleShape) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_subdued) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialized) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVGlassBackedView();
  return [(AVView *)&v8 initWithFrame:x, y, width, height];
}

@end