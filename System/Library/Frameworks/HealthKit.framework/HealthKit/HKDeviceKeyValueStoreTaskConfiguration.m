@interface HKDeviceKeyValueStoreTaskConfiguration
- (HKDeviceKeyValueStoreTaskConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDeviceKeyValueStoreTaskConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HKDeviceKeyValueStoreTaskConfiguration);
  v5 = [(NSString *)self->_domain copy];
  [(HKDeviceKeyValueStoreTaskConfiguration *)v4 setDomain:v5];

  return v4;
}

- (HKDeviceKeyValueStoreTaskConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKDeviceKeyValueStoreTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
    domain = v5->_domain;
    v5->_domain = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDeviceKeyValueStoreTaskConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_domain forKey:{@"Domain", v5.receiver, v5.super_class}];
}

@end