@interface AFMutableDeviceContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)removeContextSnapshotForType:(id)a3;
- (void)removeHistoricalContextForType:(id)a3;
- (void)setContextSnapshot:(id)a3 withMetadata:(id)a4;
- (void)setDeviceInfo:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSerializedContextSnapshot:(id)a3 withMetadata:(id)a4;
@end

@implementation AFMutableDeviceContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AFDeviceContext allocWithZone:a3];
  v5 = [(AFMutableDeviceContext *)self serializedBackingStore];
  v6 = [(AFMutableDeviceContext *)self fromLocalDevice];
  v7 = [(AFMutableDeviceContext *)self contextCollectorSource];
  v8 = [(AFDeviceContext *)v4 initWithSerializedBackingStore:v5 fromLocalDevice:v6 contextCollectorSource:v7];

  return v8;
}

- (void)removeHistoricalContextForType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
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

    v4 = v11;
  }
}

- (void)removeContextSnapshotForType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
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

    v4 = v11;
  }
}

- (void)setSerializedContextSnapshot:(id)a3 withMetadata:(id)a4
{
  v29 = a4;
  v6 = OBJC_IVAR___AFDeviceContext__serializedBackingStore;
  v7 = *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__serializedBackingStore];
  v8 = AFDeviceContextKeyContexts;
  v9 = a3;
  v10 = [v7 objectForKey:v8];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
  }

  v12 = [v29 type];
  v13 = [v11 objectForKey:v12];
  v14 = [v13 mutableCopy];

  if (v14)
  {
    v15 = [v29 historyConfiguration];
    if ([v15 keepsHistory])
    {
      v27 = v6;
      v28 = self;
      v26 = AFDeviceContextKeyHistoricalData;
      v16 = [v14 objectForKey:?];
      v17 = AFNonNilMutableCopyOfArray();

      v25 = [v14 objectForKey:AFDeviceContextKeyData];
      v24 = AFDeviceContextKeyHistoricalMetadata;
      v18 = [v14 objectForKey:?];
      v19 = AFNonNilMutableCopyOfArray();

      v20 = [v14 objectForKey:AFDeviceContextKeyMetadata];
      v21 = [v15 historyBufferSize];
      v22 = ([v17 count] - v21);
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
      self = v28;
    }
  }

  else
  {
    v14 = objc_alloc_init(NSMutableDictionary);
  }

  [v14 setObject:v9 forKey:AFDeviceContextKeyData];

  v23 = [v29 backingStore];
  [v14 setObject:v23 forKey:AFDeviceContextKeyMetadata];

  [v11 setObject:v14 forKey:v12];
  [*&self->AFDeviceContext_opaque[v6] setObject:v11 forKey:v8];
}

- (void)setContextSnapshot:(id)a3 withMetadata:(id)a4
{
  v6 = a4;
  v7 = [a3 serializedBackingStore];
  [(AFMutableDeviceContext *)self setSerializedContextSnapshot:v7 withMetadata:v6];
}

- (void)setDeviceInfo:(id)a3
{
  v4 = [a3 copy];
  v5 = *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__deviceInfo];
  *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__deviceInfo] = v4;

  *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__dirtyFlags] |= 1uLL;
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  v5 = *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__identifier];
  *&self->AFDeviceContext_opaque[OBJC_IVAR___AFDeviceContext__identifier] = v4;

  _objc_release_x1(v4, v5);
}

@end