@interface HKHealthServiceDiscovery
- (HKHealthServiceDiscovery)initWithType:(int64_t)a3;
- (id)initForAllTypes;
@end

@implementation HKHealthServiceDiscovery

- (HKHealthServiceDiscovery)initWithType:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = HKHealthServiceDiscovery;
  v4 = [(HKHealthServiceDiscovery *)&v12 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (a3 >= 4)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 raise:v8 format:{@"%@, HKHealthServiceType parameter requires a valid type.", v10}];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v4->_serviceType = a3;
  v4->_discoveryIdentifier = 0;
  v6 = v4;
LABEL_6:

  return v6;
}

- (id)initForAllTypes
{
  v6.receiver = self;
  v6.super_class = HKHealthServiceDiscovery;
  v2 = [(HKHealthServiceDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_serviceType = -2;
    v2->_discoveryIdentifier = 0;
    v4 = v2;
  }

  return v3;
}

@end