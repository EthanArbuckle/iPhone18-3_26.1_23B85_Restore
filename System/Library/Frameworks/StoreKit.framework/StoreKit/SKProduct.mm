@interface SKProduct
- (SKProduct)init;
- (void)_setContentVersion:(id)a3;
- (void)_setDiscounts:(id)a3;
- (void)_setDownloadContentLengths:(id)a3;
- (void)_setIntroductoryPrice:(id)a3;
- (void)_setLocalizedDescription:(id)a3;
- (void)_setLocalizedTitle:(id)a3;
- (void)_setPrice:(id)a3;
- (void)_setPriceLocale:(id)a3;
- (void)_setProductIdentifier:(id)a3;
- (void)_setProductKind:(id)a3;
- (void)_setSubscriptionGroupIdentifier:(id)a3;
- (void)_setSubscriptionPeriod:(id)a3;
@end

@implementation SKProduct

- (SKProduct)init
{
  v6.receiver = self;
  v6.super_class = SKProduct;
  v2 = [(SKProduct *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (void)_setContentVersion:(id)a3
{
  internal = self->_internal;
  if (internal[1] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)_setDownloadContentLengths:(id)a3
{
  internal = self->_internal;
  if (internal[3] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[3];
    internal[3] = v5;
  }
}

- (void)_setIntroductoryPrice:(id)a3
{
  v5 = a3;
  internal = self->_internal;
  v8 = *(internal + 4);
  v7 = (internal + 32);
  if (v8 != v5)
  {
    v9 = v5;
    objc_storeStrong(v7, a3);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v7, v5);
}

- (void)_setLocalizedDescription:(id)a3
{
  internal = self->_internal;
  if (internal[5] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[5];
    internal[5] = v5;
  }
}

- (void)_setLocalizedTitle:(id)a3
{
  internal = self->_internal;
  if (internal[6] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[6];
    internal[6] = v5;
  }
}

- (void)_setPrice:(id)a3
{
  v5 = a3;
  internal = self->_internal;
  v8 = *(internal + 7);
  v7 = (internal + 56);
  if (v8 != v5)
  {
    v9 = v5;
    objc_storeStrong(v7, a3);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v7, v5);
}

- (void)_setPriceLocale:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_internal;
  if (v6[8] != v5)
  {
    objc_storeStrong(v6 + 8, a3);
  }

  [v6[4] _setPriceLocale:v5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6[13];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * i) _setPriceLocale:{v5, v12}];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_setProductIdentifier:(id)a3
{
  internal = self->_internal;
  if (internal[9] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[9];
    internal[9] = v5;
  }
}

- (void)_setProductKind:(id)a3
{
  internal = self->_internal;
  if (internal[10] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[10];
    internal[10] = v5;
  }
}

- (void)_setSubscriptionGroupIdentifier:(id)a3
{
  internal = self->_internal;
  if (internal[11] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[11];
    internal[11] = v5;
  }
}

- (void)_setSubscriptionPeriod:(id)a3
{
  v5 = a3;
  internal = self->_internal;
  v8 = *(internal + 12);
  v7 = (internal + 96);
  if (v8 != v5)
  {
    v9 = v5;
    objc_storeStrong(v7, a3);
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v7, v5);
}

- (void)_setDiscounts:(id)a3
{
  v4 = [a3 copy];
  internal = self->_internal;
  v6 = internal[13];
  internal[13] = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

@end