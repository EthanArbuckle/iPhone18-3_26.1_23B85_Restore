@interface NTKEsterbrookSceneBackgroundView
- (CALayer)backgroundDotsLayer;
- (NTKEsterbrookSceneBackgroundView)initWithFrame:(CGRect)a3;
- (void)setBackgroundDotsLayer:(id)a3;
- (void)setTritiumProgress:(double)a3;
@end

@implementation NTKEsterbrookSceneBackgroundView

- (CALayer)backgroundDotsLayer
{
  v2 = self;
  v3 = sub_23BE22158();

  return v3;
}

- (void)setBackgroundDotsLayer:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneBackgroundView____lazy_storage___backgroundDotsLayer) = a3;
  v3 = a3;
}

- (void)setTritiumProgress:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneBackgroundView_tritiumProgress) = a3;
  v3 = self;
  sub_23BE2292C();
}

- (NTKEsterbrookSceneBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end