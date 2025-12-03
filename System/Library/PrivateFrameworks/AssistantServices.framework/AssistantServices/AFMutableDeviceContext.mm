@interface AFMutableDeviceContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)removeContextSnapshotForType:(id)type;
- (void)removeHistoricalContextForType:(id)type;
- (void)setContextSnapshot:(id)snapshot withMetadata:(id)metadata;
- (void)setDeviceInfo:(id)info;
- (void)setIdentifier:(id)identifier;
- (void)setSerializedContextSnapshot:(id)snapshot withMetadata:(id)metadata;
@end

@implementation AFMutableDeviceContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AFDeviceContext allocWithZone:zone];
  serializedBackingStore = [(AFMutableDeviceContext *)self serializedBackingStore];
  fromLocalDevice = [(AFMutableDeviceContext *)self fromLocalDevice];
  contextCollectorSource = [(AFMutableDeviceContext *)self contextCollectorSource];
  v8 = [(AFDeviceContext *)v4 initWithSerializedBackingStore:serializedBackingStore fromLocalDevice:fromLocalDevice contextCollectorSource:contextCollectorSource];

  return v8;
}

- (void)removeHistoricalContextForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v11 = typeCopy;
    v5 = OBJC_IVAR___AFDeviceContext__serializedBackingStore;
    v6 = AFDeviceContextKeyContexts;
    v7 = [*&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__serializedBackingStore] objectForKey:AFDeviceContextKeyContexts];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v9 = [v8 objectForKey:v11];
      v10 = [v9 mutableCopy];

      if (v10)
      {
        [v10 removeObjectForKey:AFDeviceContextKeyHistoricalData];
        [v10 removeObjectForKey:AFDeviceContextKeyHistoricalMetadata];
        [*&self->AFDeviceContext_opaque[v5] setObject:v8 forKey:v6];
      }
    }

    typeCopy = v11;
  }
}

- (void)removeContextSnapshotForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v11 = typeCopy;
    v5 = OBJC_IVAR___AFDeviceContext__serializedBackingStore;
    v6 = AFDeviceContextKeyContexts;
    v7 = [*&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__serializedBackingStore] objectForKey:AFDeviceContextKeyContexts];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v9 = [v8 objectForKey:v11];
      v10 = [v9 mutableCopy];

      if (v10)
      {
        [v10 removeObjectForKey:AFDeviceContextKeyData];
        [v10 removeObjectForKey:AFDeviceContextKeyMetadata];
        [v8 setObject:v10 forKey:v11];
        [*&self->AFDeviceContext_opaque[v5] setObject:v8 forKey:v6];
      }
    }

    typeCopy = v11;
  }
}

- (void)setSerializedContextSnapshot:(id)snapshot withMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6 = OBJC_IVAR___AFDeviceContext__serializedBackingStore;
  v7 = *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__serializedBackingStore];
  v8 = AFDeviceContextKeyContexts;
  snapshotCopy = snapshot;
  v10 = [v7 objectForKey:v8];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
  }

  type = [metadataCopy type];
  v13 = [v11 objectForKey:type];
  v14 = [v13 mutableCopy];

  if (v14)
  {
    historyConfiguration = [metadataCopy historyConfiguration];
    if ([historyConfiguration keepsHistory])
    {
      v27 = v6;
      selfCopy = self;
      v26 = AFDeviceContextKeyHistoricalData;
      v16 = [v14 objectForKey:?];
      v17 = AFNonNilMutableCopyOfArray();

      v25 = [v14 objectForKey:AFDeviceContextKeyData];
      v24 = AFDeviceContextKeyHistoricalMetadata;
      v18 = [v14 objectForKey:?];
      v19 = AFNonNilMutableCopyOfArray();

      v20 = [v14 objectForKey:AFDeviceContextKeyMetadata];
      historyBufferSize = [historyConfiguration historyBufferSize];
      v22 = ([v17 count] - historyBufferSize);
      if (v22 >= 0)
      {
        [v17 removeObjectsInRange:{0, v22 + 1}];
        [v19 removeObjectsInRange:{0, v22 + 1}];
      }

      [v17 addObject:v25];
      [v19 addObject:v20];
      [v14 setObject:v17 forKey:v26];
      [v14 setObject:v19 forKey:v24];

      v6 = v27;
      self = selfCopy;
    }
  }

  else
  {
    v14 = objc_alloc_init(NSMutableDictionary);
  }

  [v14 setObject:snapshotCopy forKey:AFDeviceContextKeyData];

  backingStore = [metadataCopy backingStore];
  [v14 setObject:backingStore forKey:AFDeviceContextKeyMetadata];

  [v11 setObject:v14 forKey:type];
  [*&self->AFDeviceContext_opaque[v6] setObject:v11 forKey:v8];
}

- (void)setContextSnapshot:(id)snapshot withMetadata:(id)metadata
{
  metadataCopy = metadata;
  serializedBackingStore = [snapshot serializedBackingStore];
  [(AFMutableDeviceContext *)self setSerializedContextSnapshot:serializedBackingStore withMetadata:metadataCopy];
}

- (void)setDeviceInfo:(id)info
{
  v4 = [info copy];
  v5 = *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__deviceInfo];
  *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__deviceInfo] = v4;

  *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__dirtyFlags] |= 1uLL;
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  v5 = *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__identifier];
  *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__identifier] = v4;

  _objc_release_x1(v4, v5);
}

@end