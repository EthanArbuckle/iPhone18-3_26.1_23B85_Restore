@interface ComponentAccessoryAirPodsCase
- (BOOL)isPresent;
- (ComponentAccessoryAirPodsCase)init;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentAccessoryAirPodsCase

- (ComponentAccessoryAirPodsCase)init
{
  v6.receiver = self;
  v6.super_class = ComponentAccessoryAirPodsCase;
  v2 = [(ComponentAccessoryAirPodsCase *)&v6 init];
  if (v2)
  {
    v3 = [DSEADevice deviceWithModelNumber:@"A1602"];
    device = v2->_device;
    v2->_device = v3;
  }

  return v2;
}

- (BOOL)isPresent
{
  device = [(ComponentAccessoryAirPodsCase *)self device];
  v3 = device != 0;

  return v3;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  device = [(ComponentAccessoryAirPodsCase *)self device];
  information = [device information];
  [attributesCopy addEntriesFromDictionary:information];
}

@end