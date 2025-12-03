@interface HKDeviceKeyValueStoreTaskConfiguration
- (HKDeviceKeyValueStoreTaskConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDeviceKeyValueStoreTaskConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKDeviceKeyValueStoreTaskConfiguration);
  v5 = [(NSString *)self->_domain copy];
  [(HKDeviceKeyValueStoreTaskConfiguration *)v4 setDomain:v5];

  return v4;
}

- (HKDeviceKeyValueStoreTaskConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKDeviceKeyValueStoreTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
    domain = v5->_domain;
    v5->_domain = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKDeviceKeyValueStoreTaskConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_domain forKey:{@"Domain", v5.receiver, v5.super_class}];
}

@end