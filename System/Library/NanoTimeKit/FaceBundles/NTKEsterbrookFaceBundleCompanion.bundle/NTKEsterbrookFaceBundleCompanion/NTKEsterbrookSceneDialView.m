@interface NTKEsterbrookSceneDialView
- (NTKEsterbrookSceneDialView)initWithCoder:(id)a3;
- (NTKEsterbrookSceneDialView)initWithFrame:(CGRect)a3;
- (void)applyDensityTransitionWithFraction:(double)a3 from:(unint64_t)a4 to:(unint64_t)a5;
- (void)setDensity:(unint64_t)a3;
- (void)setTritiumProgress:(double)a3;
@end

@implementation NTKEsterbrookSceneDialView

- (void)setDensity:(unint64_t)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_density);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_density) = a3;
  if (v4 != a3)
  {
    v6 = self;
    sub_23BDE7204(a3);
  }
}

- (NTKEsterbrookSceneDialView)initWithCoder:(id)a3
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

- (void)applyDensityTransitionWithFraction:(double)a3 from:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = self;
  sub_23BDE6AE4(a4, a5, a3);
}

- (void)setTritiumProgress:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___NTKEsterbrookSceneDialView_tritiumProgress) = a3;
  v3 = self;
  sub_23BDE7788();
}

- (NTKEsterbrookSceneDialView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end