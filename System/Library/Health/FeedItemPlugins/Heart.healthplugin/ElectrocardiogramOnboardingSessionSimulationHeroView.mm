@interface ElectrocardiogramOnboardingSessionSimulationHeroView
- (_TtC5Heart52ElectrocardiogramOnboardingSessionSimulationHeroView)initWithFrame:(CGRect)frame;
- (_TtC5Heart52ElectrocardiogramOnboardingSessionSimulationHeroView)initWithFrame:(CGRect)frame isLargeDevice:(BOOL)device;
@end

@implementation ElectrocardiogramOnboardingSessionSimulationHeroView

- (_TtC5Heart52ElectrocardiogramOnboardingSessionSimulationHeroView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ElectrocardiogramOnboardingSessionSimulationHeroView();
  v3 = [(HRElectrocardiogramSessionSimulationView *)&v5 initWithFrame:0 isLargeDevice:0.0, 0.0, 161.0, 197.0];
  [(HRElectrocardiogramSessionSimulationView *)v3 setTimeRemaining:11.0];
  return v3;
}

- (_TtC5Heart52ElectrocardiogramOnboardingSessionSimulationHeroView)initWithFrame:(CGRect)frame isLargeDevice:(BOOL)device
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end