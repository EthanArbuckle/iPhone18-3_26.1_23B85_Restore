@interface NTKEsterbrookSceneDialView
- (NTKEsterbrookSceneDialView)initWithCoder:(id)coder;
- (NTKEsterbrookSceneDialView)initWithFrame:(CGRect)frame;
- (void)applyDensityTransitionWithFraction:(double)fraction from:(unint64_t)from to:(unint64_t)to;
- (void)setDensity:(unint64_t)density;
- (void)setTritiumProgress:(double)progress;
@end

@implementation NTKEsterbrookSceneDialView

- (void)setDensity:(unint64_t)density
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_density);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_density) = density;
  if (v4 != density)
  {
    selfCopy = self;
    sub_23BDE7204(density);
  }
}

- (NTKEsterbrookSceneDialView)initWithCoder:(id)coder
{
  *(&self->super.super + OBJC_IVAR___NTKEsterbrookSceneDialView_hours) = xmmword_23BE36610;
  v4 = OBJC_IVAR___NTKEsterbrookSceneDialView_hourLayers;
  *(&self->super.super.super.isa + v4) = sub_23BE2BEEC(MEMORY[0x277D84F90]);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_density) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress) = 0;

  type metadata accessor for SceneDialView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)applyDensityTransitionWithFraction:(double)fraction from:(unint64_t)from to:(unint64_t)to
{
  selfCopy = self;
  sub_23BDE6AE4(from, to, fraction);
}

- (void)setTritiumProgress:(double)progress
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress) = progress;
  selfCopy = self;
  sub_23BDE7788();
}

- (NTKEsterbrookSceneDialView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end