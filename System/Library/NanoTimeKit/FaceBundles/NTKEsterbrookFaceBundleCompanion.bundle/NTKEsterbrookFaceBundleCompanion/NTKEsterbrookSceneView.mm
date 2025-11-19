@interface NTKEsterbrookSceneView
- (NSString)liveSceneDescription;
- (NTKEsterbrookSceneView)initWithFrame:(CGRect)a3;
- (NTKEsterbrookSceneView)initWithFrame:(CGRect)a3 handsView:(id)a4 colorPalette:(id)a5 device:(id)a6;
- (void)layoutForDateChange;
- (void)layoutSubviews;
- (void)setSceneBackgroundView:(id)a3;
- (void)setScenePalette:(id)a3;
- (void)setShowSpriteDebugHelpers:(BOOL)a3;
- (void)setTritiumProgress:(double)a3;
@end

@implementation NTKEsterbrookSceneView

- (void)setSceneBackgroundView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView) = a3;
  v3 = a3;
}

- (void)setTritiumProgress:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress) = a3;
  v3 = self;
  sub_23BE05CF8();
}

- (void)setScenePalette:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette) = a3;
  v5 = a3;
  v6 = self;

  sub_23BE07904();
}

- (NSString)liveSceneDescription
{
  v2 = self;
  sub_23BE05E94();
  v4 = v3;

  if (v4)
  {
    v5 = sub_23BE32898();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setShowSpriteDebugHelpers:(BOOL)a3
{
  v4 = self;
  sub_23BE066B0(a3);
}

- (NTKEsterbrookSceneView)initWithFrame:(CGRect)a3 handsView:(id)a4 colorPalette:(id)a5 device:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  swift_unknownObjectRetain();
  return sub_23BE067E4(a4, a5, a6, x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_23BE0764C();
}

- (void)layoutForDateChange
{
  v2 = self;
  sub_23BE09AC8(1);
}

- (NTKEsterbrookSceneView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end