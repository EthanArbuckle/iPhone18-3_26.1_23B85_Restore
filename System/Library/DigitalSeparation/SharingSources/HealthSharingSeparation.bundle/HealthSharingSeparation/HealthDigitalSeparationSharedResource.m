@interface HealthDigitalSeparationSharedResource
- (HealthDigitalSeparationSharedResource)initWithDigitalSeparationEntries:(id)a3;
@end

@implementation HealthDigitalSeparationSharedResource

- (HealthDigitalSeparationSharedResource)initWithDigitalSeparationEntries:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HealthDigitalSeparationSharedResource;
  v5 = [(HealthDigitalSeparationSharedResource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    digitalEntries = v5->_digitalEntries;
    v5->_digitalEntries = v6;
  }

  return v5;
}

@end