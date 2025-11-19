@interface ACHDataStorePropertyProviderSnapshot
- (ACHDataStorePropertyProviderSnapshot)initWithCoder:(id)a3;
- (ACHDataStorePropertyProviderSnapshot)initWithDate:(id)a3 validThroughDate:(id)a4 version:(int64_t)a5 properties:(id)a6;
- (ACHDataStorePropertyProviderSnapshot)initWithValidThroughDate:(id)a3 version:(int64_t)a4 properties:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACHDataStorePropertyProviderSnapshot

- (ACHDataStorePropertyProviderSnapshot)initWithValidThroughDate:(id)a3 version:(int64_t)a4 properties:(id)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a5;
  v10 = a3;
  v11 = [v8 date];
  v12 = [(ACHDataStorePropertyProviderSnapshot *)self initWithDate:v11 validThroughDate:v10 version:a4 properties:v9];

  return v12;
}

- (ACHDataStorePropertyProviderSnapshot)initWithDate:(id)a3 validThroughDate:(id)a4 version:(int64_t)a5 properties:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ACHDataStorePropertyProviderSnapshot;
  v14 = [(ACHDataStorePropertyProviderSnapshot *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_snapshotDate, a3);
    objc_storeStrong(&v15->_validThroughDate, a4);
    v15->_version = a5;
    objc_storeStrong(&v15->_properties, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ACHDataStorePropertyProviderSnapshot *)self snapshotDate];
  [v8 encodeObject:v4 forKey:@"date"];

  [v8 encodeInteger:-[ACHDataStorePropertyProviderSnapshot version](self forKey:{"version"), @"version"}];
  v5 = [(ACHDataStorePropertyProviderSnapshot *)self validThroughDate];

  if (v5)
  {
    v6 = [(ACHDataStorePropertyProviderSnapshot *)self validThroughDate];
    [v8 encodeObject:v6 forKey:@"validThroughDate"];
  }

  v7 = [(ACHDataStorePropertyProviderSnapshot *)self properties];
  [v8 encodeObject:v7 forKey:@"properties"];
}

- (ACHDataStorePropertyProviderSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if ([v4 containsValueForKey:@"validThroughDate"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validThroughDate"];
  }

  else
  {
    v6 = 0;
  }

  if ([v4 containsValueForKey:@"version"])
  {
    v7 = [v4 decodeIntegerForKey:@"version"];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_class();
  v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"properties"];
  v10 = [(ACHDataStorePropertyProviderSnapshot *)self initWithDate:v5 validThroughDate:v6 version:v7 properties:v9];

  return v10;
}

@end