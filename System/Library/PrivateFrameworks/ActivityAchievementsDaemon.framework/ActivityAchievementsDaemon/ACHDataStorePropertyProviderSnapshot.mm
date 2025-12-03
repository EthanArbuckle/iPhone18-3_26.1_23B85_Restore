@interface ACHDataStorePropertyProviderSnapshot
- (ACHDataStorePropertyProviderSnapshot)initWithCoder:(id)coder;
- (ACHDataStorePropertyProviderSnapshot)initWithDate:(id)date validThroughDate:(id)throughDate version:(int64_t)version properties:(id)properties;
- (ACHDataStorePropertyProviderSnapshot)initWithValidThroughDate:(id)date version:(int64_t)version properties:(id)properties;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACHDataStorePropertyProviderSnapshot

- (ACHDataStorePropertyProviderSnapshot)initWithValidThroughDate:(id)date version:(int64_t)version properties:(id)properties
{
  v8 = MEMORY[0x277CBEAA8];
  propertiesCopy = properties;
  dateCopy = date;
  date = [v8 date];
  v12 = [(ACHDataStorePropertyProviderSnapshot *)self initWithDate:date validThroughDate:dateCopy version:version properties:propertiesCopy];

  return v12;
}

- (ACHDataStorePropertyProviderSnapshot)initWithDate:(id)date validThroughDate:(id)throughDate version:(int64_t)version properties:(id)properties
{
  dateCopy = date;
  throughDateCopy = throughDate;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = ACHDataStorePropertyProviderSnapshot;
  v14 = [(ACHDataStorePropertyProviderSnapshot *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_snapshotDate, date);
    objc_storeStrong(&v15->_validThroughDate, throughDate);
    v15->_version = version;
    objc_storeStrong(&v15->_properties, properties);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  snapshotDate = [(ACHDataStorePropertyProviderSnapshot *)self snapshotDate];
  [coderCopy encodeObject:snapshotDate forKey:@"date"];

  [coderCopy encodeInteger:-[ACHDataStorePropertyProviderSnapshot version](self forKey:{"version"), @"version"}];
  validThroughDate = [(ACHDataStorePropertyProviderSnapshot *)self validThroughDate];

  if (validThroughDate)
  {
    validThroughDate2 = [(ACHDataStorePropertyProviderSnapshot *)self validThroughDate];
    [coderCopy encodeObject:validThroughDate2 forKey:@"validThroughDate"];
  }

  properties = [(ACHDataStorePropertyProviderSnapshot *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];
}

- (ACHDataStorePropertyProviderSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  if ([coderCopy containsValueForKey:@"validThroughDate"])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validThroughDate"];
  }

  else
  {
    v6 = 0;
  }

  if ([coderCopy containsValueForKey:@"version"])
  {
    v7 = [coderCopy decodeIntegerForKey:@"version"];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_class();
  v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"properties"];
  v10 = [(ACHDataStorePropertyProviderSnapshot *)self initWithDate:v5 validThroughDate:v6 version:v7 properties:v9];

  return v10;
}

@end