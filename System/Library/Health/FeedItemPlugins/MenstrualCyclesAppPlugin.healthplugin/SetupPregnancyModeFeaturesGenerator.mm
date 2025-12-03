@interface SetupPregnancyModeFeaturesGenerator
- (void)experienceModelDidUpdate:(id)update;
- (void)pregnancyModelDidUpdate:(id)update;
@end

@implementation SetupPregnancyModeFeaturesGenerator

- (void)experienceModelDidUpdate:(id)update
{
  updateCopy = update;

  sub_29E000188(updateCopy);
}

- (void)pregnancyModelDidUpdate:(id)update
{
  updateCopy = update;

  sub_29E2C10C4();
}

@end