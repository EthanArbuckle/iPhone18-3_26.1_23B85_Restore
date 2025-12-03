@interface HKDeviceKeyValueStorageEntry
- (HKDeviceKeyValueStorageEntry)initWithCoder:(id)coder;
- (HKDeviceKeyValueStorageEntry)initWithDomain:(id)domain key:(id)key value:(id)value modificationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateValue:(id *)value;
- (id)numberValue:(id *)value;
- (id)stringValue:(id *)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDeviceKeyValueStorageEntry

- (HKDeviceKeyValueStorageEntry)initWithDomain:(id)domain key:(id)key value:(id)value modificationDate:(id)date
{
  domainCopy = domain;
  keyCopy = key;
  valueCopy = value;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = HKDeviceKeyValueStorageEntry;
  v15 = [(HKDeviceKeyValueStorageEntry *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domain, domain);
    objc_storeStrong(&v16->_key, key);
    objc_storeStrong(&v16->_value, value);
    objc_storeStrong(&v16->_modificationDate, date);
  }

  return v16;
}

- (id)dateValue:(id *)value
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:value];
}

- (id)numberValue:(id *)value
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:value];
}

- (id)stringValue:(id *)value
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:value];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKDeviceKeyValueStorageEntry allocWithZone:zone];
  domain = self->_domain;
  key = self->_key;
  value = self->_value;
  modificationDate = self->_modificationDate;

  return [(HKDeviceKeyValueStorageEntry *)v4 initWithDomain:domain key:key value:value modificationDate:modificationDate];
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"Key"];
  [coderCopy encodeObject:self->_domain forKey:@"Domain"];
  [coderCopy encodeObject:self->_value forKey:@"Value"];
  [coderCopy encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

- (HKDeviceKeyValueStorageEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0 || v8 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HKDeviceKeyValueStorageEntry *)self initWithDomain:v6 key:v5 value:v7 modificationDate:v8];
    selfCopy = self;
  }

  return selfCopy;
}

@end