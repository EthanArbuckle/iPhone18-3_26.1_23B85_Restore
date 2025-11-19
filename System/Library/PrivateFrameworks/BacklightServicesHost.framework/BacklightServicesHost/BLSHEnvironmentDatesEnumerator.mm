@interface BLSHEnvironmentDatesEnumerator
+ (id)createWithInitialSpecifier:(id)a3 enumerator:(id)a4 dateInterval:(id)a5 environment:(id)a6 sourceModel:(id)a7;
- (BLSAlwaysOnDateSpecifier)specifier;
- (id)description;
- (id)initWithInitialSpecifier:(void *)a3 enumerator:(void *)a4 dateInterval:(void *)a5 environment:(void *)a6 sourceModel:;
@end

@implementation BLSHEnvironmentDatesEnumerator

+ (id)createWithInitialSpecifier:(id)a3 enumerator:(id)a4 dateInterval:(id)a5 environment:(id)a6 sourceModel:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[BLSHEnvironmentDatesEnumerator alloc] initWithInitialSpecifier:v15 enumerator:v14 dateInterval:v13 environment:v12 sourceModel:v11];

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
    v5 = [MEMORY[0x277CBEAA8] distantFuture];
    v3 = [v4 initWithDate:v5 fidelity:0];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLSHBacklightSceneHostEnvironment *)self->_environment identifier];
  [v3 appendString:v4 withName:@"environment"];

  v5 = [(BLSAlwaysOnDateSpecifier *)self->_specifier bls_shortLoggingString];
  [v3 appendString:v5 withName:@"next"];

  v6 = [v3 build];

  return v6;
}

- (id)initWithInitialSpecifier:(void *)a3 enumerator:(void *)a4 dateInterval:(void *)a5 environment:(void *)a6 sourceModel:
{
  v18 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = BLSHEnvironmentDatesEnumerator;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      objc_storeStrong(a1 + 5, a6);
    }
  }

  return a1;
}

@end