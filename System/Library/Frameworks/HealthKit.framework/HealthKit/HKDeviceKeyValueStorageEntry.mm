@interface HKDeviceKeyValueStorageEntry
- (HKDeviceKeyValueStorageEntry)initWithCoder:(id)a3;
- (HKDeviceKeyValueStorageEntry)initWithDomain:(id)a3 key:(id)a4 value:(id)a5 modificationDate:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateValue:(id *)a3;
- (id)numberValue:(id *)a3;
- (id)stringValue:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDeviceKeyValueStorageEntry

- (HKDeviceKeyValueStorageEntry)initWithDomain:(id)a3 key:(id)a4 value:(id)a5 modificationDate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HKDeviceKeyValueStorageEntry;
  v15 = [(HKDeviceKeyValueStorageEntry *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domain, a3);
    objc_storeStrong(&v16->_key, a4);
    objc_storeStrong(&v16->_value, a5);
    objc_storeStrong(&v16->_modificationDate, a6);
  }

  return v16;
}

- (id)dateValue:(id *)a3
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:a3];
}

- (id)numberValue:(id *)a3
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:a3];
}

- (id)stringValue:(id *)a3
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = objc_opt_class();
  value = self->_value;

  return [v5 unarchivedObjectOfClass:v6 fromData:value error:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKDeviceKeyValueStorageEntry allocWithZone:a3];
  domain = self->_domain;
  key = self->_key;
  value = self->_value;
  modificationDate = self->_modificationDate;

  return [(HKDeviceKeyValueStorageEntry *)v4 initWithDomain:domain key:key value:value modificationDate:modificationDate];
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"Key"];
  [v5 encodeObject:self->_domain forKey:@"Domain"];
  [v5 encodeObject:self->_value forKey:@"Value"];
  [v5 encodeObject:self->_modificationDate forKey:@"ModificationDate"];
}

- (HKDeviceKeyValueStorageEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModificationDate"];

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
    v12 = 0;
  }

  else
  {
    self = [(HKDeviceKeyValueStorageEntry *)self initWithDomain:v6 key:v5 value:v7 modificationDate:v8];
    v12 = self;
  }

  return v12;
}

@end