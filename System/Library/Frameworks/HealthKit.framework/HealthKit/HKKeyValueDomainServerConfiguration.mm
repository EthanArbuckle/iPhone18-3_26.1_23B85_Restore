@interface HKKeyValueDomainServerConfiguration
- (HKKeyValueDomainServerConfiguration)initWithCategory:(int64_t)category domainName:(id)name;
- (HKKeyValueDomainServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKKeyValueDomainServerConfiguration

- (HKKeyValueDomainServerConfiguration)initWithCategory:(int64_t)category domainName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HKKeyValueDomainServerConfiguration;
  v7 = [(HKKeyValueDomainServerConfiguration *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_category = category;
    v9 = [nameCopy copy];
    domainName = v8->_domainName;
    v8->_domainName = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = [(HKKeyValueDomainServerConfiguration *)self category];
  domainName = [(HKKeyValueDomainServerConfiguration *)self domainName];
  v6 = [domainName copy];
  v7 = v4[2];
  v4[2] = v6;

  return v4;
}

- (HKKeyValueDomainServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKKeyValueDomainServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_category = [coderCopy decodeIntegerForKey:@"Category"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DomainName"];
    domainName = v5->_domainName;
    v5->_domainName = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKKeyValueDomainServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_category forKey:{@"Category", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_domainName forKey:@"DomainName"];
}

@end