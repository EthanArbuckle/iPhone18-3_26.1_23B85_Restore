@interface HealthDigitalSeparationSharedResource
- (HealthDigitalSeparationSharedResource)initWithDigitalSeparationEntries:(id)entries;
@end

@implementation HealthDigitalSeparationSharedResource

- (HealthDigitalSeparationSharedResource)initWithDigitalSeparationEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = HealthDigitalSeparationSharedResource;
  v5 = [(HealthDigitalSeparationSharedResource *)&v9 init];
  if (v5)
  {
    v6 = [entriesCopy copy];
    digitalEntries = v5->_digitalEntries;
    v5->_digitalEntries = v6;
  }

  return v5;
}

@end