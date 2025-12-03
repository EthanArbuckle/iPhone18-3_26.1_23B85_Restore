@interface BLSHEnvironmentDatesEnumerator
+ (id)createWithInitialSpecifier:(id)specifier enumerator:(id)enumerator dateInterval:(id)interval environment:(id)environment sourceModel:(id)model;
- (BLSAlwaysOnDateSpecifier)specifier;
- (id)description;
- (id)initWithInitialSpecifier:(void *)specifier enumerator:(void *)enumerator dateInterval:(void *)interval environment:(void *)environment sourceModel:;
@end

@implementation BLSHEnvironmentDatesEnumerator

+ (id)createWithInitialSpecifier:(id)specifier enumerator:(id)enumerator dateInterval:(id)interval environment:(id)environment sourceModel:(id)model
{
  modelCopy = model;
  environmentCopy = environment;
  intervalCopy = interval;
  enumeratorCopy = enumerator;
  specifierCopy = specifier;
  v16 = [[BLSHEnvironmentDatesEnumerator alloc] initWithInitialSpecifier:specifierCopy enumerator:enumeratorCopy dateInterval:intervalCopy environment:environmentCopy sourceModel:modelCopy];

  return v16;
}

- (BLSAlwaysOnDateSpecifier)specifier
{
  specifier = self->_specifier;
  if (specifier)
  {
    v3 = specifier;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CF0848]);
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v3 = [v4 initWithDate:distantFuture fidelity:0];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(BLSHBacklightSceneHostEnvironment *)self->_environment identifier];
  [v3 appendString:identifier withName:@"environment"];

  bls_shortLoggingString = [(BLSAlwaysOnDateSpecifier *)self->_specifier bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"next"];

  build = [v3 build];

  return build;
}

- (id)initWithInitialSpecifier:(void *)specifier enumerator:(void *)enumerator dateInterval:(void *)interval environment:(void *)environment sourceModel:
{
  v18 = a2;
  specifierCopy = specifier;
  enumeratorCopy = enumerator;
  intervalCopy = interval;
  environmentCopy = environment;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = BLSHEnvironmentDatesEnumerator;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(self + 2, specifier);
      objc_storeStrong(self + 3, enumerator);
      objc_storeStrong(self + 4, interval);
      objc_storeStrong(self + 5, environment);
    }
  }

  return self;
}

@end