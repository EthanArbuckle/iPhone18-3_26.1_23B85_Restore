@interface SetupPregnancyModeFeaturesGenerator
- (void)experienceModelDidUpdate:(id)a3;
- (void)pregnancyModelDidUpdate:(id)a3;
@end

@implementation SetupPregnancyModeFeaturesGenerator

- (void)experienceModelDidUpdate:(id)a3
{
  v3 = a3;

  sub_29E000188(v3);
}

- (void)pregnancyModelDidUpdate:(id)a3
{
  v3 = a3;

  sub_29E2C10C4();
}

@end