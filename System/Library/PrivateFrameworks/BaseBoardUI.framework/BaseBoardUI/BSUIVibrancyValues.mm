@interface BSUIVibrancyValues
- (BSUIVibrancyValues)init;
- (BSUIVibrancyValues)initWithConfiguration:(id)configuration;
@end

@implementation BSUIVibrancyValues

- (BSUIVibrancyValues)init
{
  v3 = objc_alloc_init(BSUIVibrancyConfiguration);
  v4 = [(BSUIVibrancyValues *)self initWithConfiguration:v3];

  return v4;
}

- (BSUIVibrancyValues)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = BSUIVibrancyValues;
  v5 = [(BSUIVibrancyValues *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BSUIVibrancyValues *)v5 calculateValuesForConfiguration:configurationCopy];
  }

  return v6;
}

@end