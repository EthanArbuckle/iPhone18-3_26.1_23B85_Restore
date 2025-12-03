@interface NTKEsterbrookSceneView
- (NSString)liveSceneDescription;
- (NTKEsterbrookSceneView)initWithFrame:(CGRect)frame;
- (NTKEsterbrookSceneView)initWithFrame:(CGRect)frame handsView:(id)view colorPalette:(id)palette device:(id)device;
- (void)layoutForDateChange;
- (void)layoutSubviews;
- (void)setSceneBackgroundView:(id)view;
- (void)setScenePalette:(id)palette;
- (void)setShowSpriteDebugHelpers:(BOOL)helpers;
- (void)setTritiumProgress:(double)progress;
@end

@implementation NTKEsterbrookSceneView

- (void)setSceneBackgroundView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_sceneBackgroundView) = view;
  viewCopy = view;
}

- (void)setTritiumProgress:(double)progress
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_tritiumProgress) = progress;
  selfCopy = self;
  sub_23BE05CF8();
}

- (void)setScenePalette:(id)palette
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneView_scenePalette) = palette;
  paletteCopy = palette;
  selfCopy = self;

  sub_23BE07904();
}

- (NSString)liveSceneDescription
{
  selfCopy = self;
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

- (void)setShowSpriteDebugHelpers:(BOOL)helpers
{
  selfCopy = self;
  sub_23BE066B0(helpers);
}

- (NTKEsterbrookSceneView)initWithFrame:(CGRect)frame handsView:(id)view colorPalette:(id)palette device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  swift_unknownObjectRetain();
  return sub_23BE067E4(view, palette, device, x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23BE0764C();
}

- (void)layoutForDateChange
{
  selfCopy = self;
  sub_23BE09AC8(1);
}

- (NTKEsterbrookSceneView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end