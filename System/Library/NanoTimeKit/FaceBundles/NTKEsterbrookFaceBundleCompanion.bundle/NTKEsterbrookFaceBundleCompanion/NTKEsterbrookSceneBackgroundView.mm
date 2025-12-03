@interface NTKEsterbrookSceneBackgroundView
- (CALayer)backgroundDotsLayer;
- (NTKEsterbrookSceneBackgroundView)initWithFrame:(CGRect)frame;
- (void)setBackgroundDotsLayer:(id)layer;
- (void)setTritiumProgress:(double)progress;
@end

@implementation NTKEsterbrookSceneBackgroundView

- (CALayer)backgroundDotsLayer
{
  selfCopy = self;
  v3 = sub_23BE22158();

  return v3;
}

- (void)setBackgroundDotsLayer:(id)layer
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer) = layer;
  layerCopy = layer;
}

- (void)setTritiumProgress:(double)progress
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress) = progress;
  selfCopy = self;
  sub_23BE2292C();
}

- (NTKEsterbrookSceneBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end