@interface AFDeviceContextMetadata
- (AFDeviceContextMetadata)initWithBackingStore:(id)store;
- (AFDeviceContextMetadata)initWithCoder:(id)coder;
- (AFDeviceContextMetadata)initWithType:(id)type deliveryDate:(id)date expirationDate:(id)expirationDate redactedKeyPaths:(id)paths historyConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpiredByDate:(id)date;
- (id)backingStore;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDeviceContextMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AFDeviceContextMetadata;
  v4 = [(AFDeviceContextMetadata *)&v10 description];
  type = [(AFDeviceContextMetadata *)self type];
  deliveryDate = [(AFDeviceContextMetadata *)self deliveryDate];
  expirationDate = [(AFDeviceContextMetadata *)self expirationDate];
  v8 = [v3 stringWithFormat:@"%@ (%@, %@, expires %@)", v4, type, deliveryDate, expirationDate];

  return v8;
}

- (id)backingStore
{
  backingStore = self->_backingStore;
  if (!backingStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_backingStore;
    self->_backingStore = v4;

    backingStore = self->_backingStore;
  }

  type = self->_type;
  if (type)
  {
    [(NSMutableDictionary *)backingStore setObject:type forKey:@"metadata_type"];
    backingStore = self->_backingStore;
  }

  deliveryDate = self->_deliveryDate;
  if (deliveryDate)
  {
    [(NSMutableDictionary *)backingStore setObject:deliveryDate forKey:@"metadata_timestamp"];
  }

  else
  {
    [(NSMutableDictionary *)backingStore removeObjectForKey:@"metadata_timestamp"];
  }

  expirationDate = self->_expirationDate;
  v9 = self->_backingStore;
  if (expirationDate)
  {
    [(NSMutableDictionary *)v9 setObject:expirationDate forKey:@"metadata_expirationDate"];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:@"metadata_expirationDate"];
  }

  redactedKeyPaths = self->_redactedKeyPaths;
  v11 = self->_backingStore;
  if (redactedKeyPaths)
  {
    [(NSMutableDictionary *)v11 setObject:redactedKeyPaths forKey:@"metadata_redactedKeyPaths"];
  }

  else
  {
    [(NSMutableDictionary *)v11 removeObjectForKey:@"metadata_redactedKeyPaths"];
  }

  historyConfiguration = self->_historyConfiguration;
  v13 = self->_backingStore;
  if (historyConfiguration)
  {
    buildDictionaryRepresentation = [(AFDeviceContextHistoryConfiguration *)historyConfiguration buildDictionaryRepresentation];
    [(NSMutableDictionary *)v13 setObject:buildDictionaryRepresentation forKey:@"metadata_historyConfiguration"];
  }

  else
  {
    [(NSMutableDictionary *)self->_backingStore removeObjectForKey:@"metadata_historyConfiguration"];
  }

  v15 = self->_backingStore;

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backingStore = [(AFDeviceContextMetadata *)self backingStore];
  [coderCopy encodeObject:backingStore forKey:@"serializedBackingStore"];
}

- (AFDeviceContextMetadata)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"serializedBackingStore"];

  v9 = [(AFDeviceContextMetadata *)self initWithBackingStore:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      backingStore = [(AFDeviceContextMetadata *)self backingStore];
      backingStore2 = [(AFDeviceContextMetadata *)equalCopy backingStore];
      v7 = [backingStore isEqual:backingStore2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  backingStore = [(AFDeviceContextMetadata *)self backingStore];
  v3 = [backingStore hash];

  return v3;
}

- (BOOL)isExpiredByDate:(id)date
{
  dateCopy = date;
  expirationDate = [(AFDeviceContextMetadata *)self expirationDate];
  v6 = [dateCopy compare:expirationDate];

  return v6 == 1;
}

- (AFDeviceContextMetadata)initWithBackingStore:(id)store
{
  storeCopy = store;
  v5 = [AFDeviceContextHistoryConfiguration alloc];
  v6 = [storeCopy objectForKey:@"metadata_historyConfiguration"];
  v7 = [(AFDeviceContextHistoryConfiguration *)v5 initWithDictionaryRepresentation:v6];

  v8 = [storeCopy objectForKey:@"metadata_type"];
  v9 = [storeCopy objectForKey:@"metadata_timestamp"];
  v10 = [storeCopy objectForKey:@"metadata_expirationDate"];
  v11 = [storeCopy objectForKey:@"metadata_redactedKeyPaths"];
  v12 = [(AFDeviceContextMetadata *)self initWithType:v8 deliveryDate:v9 expirationDate:v10 redactedKeyPaths:v11 historyConfiguration:v7];

  if (v12)
  {
    v13 = [storeCopy mutableCopy];
    backingStore = v12->_backingStore;
    v12->_backingStore = v13;
  }

  return v12;
}

- (AFDeviceContextMetadata)initWithType:(id)type deliveryDate:(id)date expirationDate:(id)expirationDate redactedKeyPaths:(id)paths historyConfiguration:(id)configuration
{
  typeCopy = type;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  pathsCopy = paths;
  configurationCopy = configuration;
  v29.receiver = self;
  v29.super_class = AFDeviceContextMetadata;
  v18 = [(AFDeviceContextMetadata *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_type, type);
    v20 = [dateCopy copy];
    deliveryDate = v19->_deliveryDate;
    v19->_deliveryDate = v20;

    v22 = [expirationDateCopy copy];
    expirationDate = v19->_expirationDate;
    v19->_expirationDate = v22;

    v24 = [pathsCopy copy];
    redactedKeyPaths = v19->_redactedKeyPaths;
    v19->_redactedKeyPaths = v24;

    v26 = [configurationCopy copy];
    historyConfiguration = v19->_historyConfiguration;
    v19->_historyConfiguration = v26;
  }

  return v19;
}

@end