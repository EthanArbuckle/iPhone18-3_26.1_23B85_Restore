@interface AFDeviceContextMetadata
- (AFDeviceContextMetadata)initWithBackingStore:(id)a3;
- (AFDeviceContextMetadata)initWithCoder:(id)a3;
- (AFDeviceContextMetadata)initWithType:(id)a3 deliveryDate:(id)a4 expirationDate:(id)a5 redactedKeyPaths:(id)a6 historyConfiguration:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpiredByDate:(id)a3;
- (id)backingStore;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFDeviceContextMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AFDeviceContextMetadata;
  v4 = [(AFDeviceContextMetadata *)&v10 description];
  v5 = [(AFDeviceContextMetadata *)self type];
  v6 = [(AFDeviceContextMetadata *)self deliveryDate];
  v7 = [(AFDeviceContextMetadata *)self expirationDate];
  v8 = [v3 stringWithFormat:@"%@ (%@, %@, expires %@)", v4, v5, v6, v7];

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
    v14 = [(AFDeviceContextHistoryConfiguration *)historyConfiguration buildDictionaryRepresentation];
    [(NSMutableDictionary *)v13 setObject:v14 forKey:@"metadata_historyConfiguration"];
  }

  else
  {
    [(NSMutableDictionary *)self->_backingStore removeObjectForKey:@"metadata_historyConfiguration"];
  }

  v15 = self->_backingStore;

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AFDeviceContextMetadata *)self backingStore];
  [v4 encodeObject:v5 forKey:@"serializedBackingStore"];
}

- (AFDeviceContextMetadata)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"serializedBackingStore"];

  v9 = [(AFDeviceContextMetadata *)self initWithBackingStore:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFDeviceContextMetadata *)self backingStore];
      v6 = [(AFDeviceContextMetadata *)v4 backingStore];
      v7 = [v5 isEqual:v6];
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
  v2 = [(AFDeviceContextMetadata *)self backingStore];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isExpiredByDate:(id)a3
{
  v4 = a3;
  v5 = [(AFDeviceContextMetadata *)self expirationDate];
  v6 = [v4 compare:v5];

  return v6 == 1;
}

- (AFDeviceContextMetadata)initWithBackingStore:(id)a3
{
  v4 = a3;
  v5 = [AFDeviceContextHistoryConfiguration alloc];
  v6 = [v4 objectForKey:@"metadata_historyConfiguration"];
  v7 = [(AFDeviceContextHistoryConfiguration *)v5 initWithDictionaryRepresentation:v6];

  v8 = [v4 objectForKey:@"metadata_type"];
  v9 = [v4 objectForKey:@"metadata_timestamp"];
  v10 = [v4 objectForKey:@"metadata_expirationDate"];
  v11 = [v4 objectForKey:@"metadata_redactedKeyPaths"];
  v12 = [(AFDeviceContextMetadata *)self initWithType:v8 deliveryDate:v9 expirationDate:v10 redactedKeyPaths:v11 historyConfiguration:v7];

  if (v12)
  {
    v13 = [v4 mutableCopy];
    backingStore = v12->_backingStore;
    v12->_backingStore = v13;
  }

  return v12;
}

- (AFDeviceContextMetadata)initWithType:(id)a3 deliveryDate:(id)a4 expirationDate:(id)a5 redactedKeyPaths:(id)a6 historyConfiguration:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v29.receiver = self;
  v29.super_class = AFDeviceContextMetadata;
  v18 = [(AFDeviceContextMetadata *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_type, a3);
    v20 = [v14 copy];
    deliveryDate = v19->_deliveryDate;
    v19->_deliveryDate = v20;

    v22 = [v15 copy];
    expirationDate = v19->_expirationDate;
    v19->_expirationDate = v22;

    v24 = [v16 copy];
    redactedKeyPaths = v19->_redactedKeyPaths;
    v19->_redactedKeyPaths = v24;

    v26 = [v17 copy];
    historyConfiguration = v19->_historyConfiguration;
    v19->_historyConfiguration = v26;
  }

  return v19;
}

@end