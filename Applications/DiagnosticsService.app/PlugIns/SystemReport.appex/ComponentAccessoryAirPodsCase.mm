@interface ComponentAccessoryAirPodsCase
- (BOOL)isPresent;
- (ComponentAccessoryAirPodsCase)init;
- (void)populateAttributes:(id)a3;
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
  v2 = [(ComponentAccessoryAirPodsCase *)self device];
  v3 = v2 != 0;

  return v3;
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v6 = [(ComponentAccessoryAirPodsCase *)self device];
  v5 = [v6 information];
  [v4 addEntriesFromDictionary:v5];
}

@end