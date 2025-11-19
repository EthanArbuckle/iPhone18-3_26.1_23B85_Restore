@interface AVGlassBackedView
- (AVGlassBackedView)initWithFrame:(CGRect)a3;
- (UIColor)backgroundColor;
- (void)didMoveToWindow;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundMaterialStyle:(int64_t)a3;
- (void)setBackgroundMaterialized:(BOOL)a3;
- (void)setSubdued:(BOOL)a3;
- (void)updateBackgroundMaterial;
- (void)willMoveToWindow:(id)a3;
@end

@implementation AVGlassBackedView

- (void)setSubdued:(BOOL)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_subdued) = a3;
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(AVGlassBackedView *)self setBackgroundMaterialStyle:v3];
}

- (void)setBackgroundMaterialStyle:(int64_t)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle);
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle) = a3;
  if (v3 != a3)
  {
    [(AVGlassBackedView *)self updateBackgroundMaterial];
  }
}

- (void)setBackgroundMaterialized:(BOOL)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialized);
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialized) = a3;
  if (v3 != a3)
  {
    [(AVGlassBackedView *)self updateBackgroundMaterial];
  }
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AVGlassBackedView();
  v2 = [(AVGlassBackedView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = type metadata accessor for AVGlassBackedView();
  v14.receiver = self;
  v14.super_class = v5;
  v6 = self;
  v7 = a3;
  v8 = [(AVGlassBackedView *)&v14 backgroundColor];
  v13.receiver = v6;
  v13.super_class = v5;
  [(AVGlassBackedView *)&v13 setBackgroundColor:v7];
  v9 = [(AVGlassBackedView *)v6 backgroundColor];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      sub_18B519218();
      v11 = v8;
      v12 = sub_18B6C5A6C();

      if (v12)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if (v9)
  {

LABEL_7:
    [(AVGlassBackedView *)v6 updateBackgroundMaterial];
    v11 = v8;
LABEL_8:
  }
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AVGlassBackedView();
  v4 = v6.receiver;
  v5 = a3;
  [(AVGlassBackedView *)&v6 willMoveToWindow:v5];
  if (v5)
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
  v3 = self;
  if ([(AVGlassBackedView *)v3 backgroundMaterialized])
  {
    v2 = [(AVGlassBackedView *)v3 backgroundMaterialStyle];
  }

  else
  {
    v2 = 0;
  }

  [(UIView *)v3 avkit_setGlassBackgroundStyle:v2];
}

- (AVGlassBackedView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_wantsCapsuleShape) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_subdued) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialStyle) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR___AVGlassBackedView_backgroundMaterialized) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AVGlassBackedView();
  return [(AVView *)&v8 initWithFrame:x, y, width, height];
}

@end