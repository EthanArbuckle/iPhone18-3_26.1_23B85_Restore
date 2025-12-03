@interface SKProduct
- (SKProduct)init;
- (void)_setContentVersion:(id)version;
- (void)_setDiscounts:(id)discounts;
- (void)_setDownloadContentLengths:(id)lengths;
- (void)_setIntroductoryPrice:(id)price;
- (void)_setLocalizedDescription:(id)description;
- (void)_setLocalizedTitle:(id)title;
- (void)_setPrice:(id)price;
- (void)_setPriceLocale:(id)locale;
- (void)_setProductIdentifier:(id)identifier;
- (void)_setProductKind:(id)kind;
- (void)_setSubscriptionGroupIdentifier:(id)identifier;
- (void)_setSubscriptionPeriod:(id)period;
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

- (void)_setContentVersion:(id)version
{
  internal = self->_internal;
  if (internal[1] != version)
  {
    v7 = internal;
    v5 = [version copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)_setDownloadContentLengths:(id)lengths
{
  internal = self->_internal;
  if (internal[3] != lengths)
  {
    v7 = internal;
    v5 = [lengths copy];
    v6 = internal[3];
    internal[3] = v5;
  }
}

- (void)_setIntroductoryPrice:(id)price
{
  priceCopy = price;
  internal = self->_internal;
  v8 = *(internal + 4);
  v7 = (internal + 32);
  if (v8 != priceCopy)
  {
    v9 = priceCopy;
    objc_storeStrong(v7, price);
    priceCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, priceCopy);
}

- (void)_setLocalizedDescription:(id)description
{
  internal = self->_internal;
  if (internal[5] != description)
  {
    v7 = internal;
    v5 = [description copy];
    v6 = internal[5];
    internal[5] = v5;
  }
}

- (void)_setLocalizedTitle:(id)title
{
  internal = self->_internal;
  if (internal[6] != title)
  {
    v7 = internal;
    v5 = [title copy];
    v6 = internal[6];
    internal[6] = v5;
  }
}

- (void)_setPrice:(id)price
{
  priceCopy = price;
  internal = self->_internal;
  v8 = *(internal + 7);
  v7 = (internal + 56);
  if (v8 != priceCopy)
  {
    v9 = priceCopy;
    objc_storeStrong(v7, price);
    priceCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, priceCopy);
}

- (void)_setPriceLocale:(id)locale
{
  v17 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v6 = self->_internal;
  if (v6[8] != localeCopy)
  {
    objc_storeStrong(v6 + 8, locale);
  }

  [v6[4] _setPriceLocale:localeCopy];
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

        [*(*(&v12 + 1) + 8 * i) _setPriceLocale:{localeCopy, v12}];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_setProductIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[9] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[9];
    internal[9] = v5;
  }
}

- (void)_setProductKind:(id)kind
{
  internal = self->_internal;
  if (internal[10] != kind)
  {
    v7 = internal;
    v5 = [kind copy];
    v6 = internal[10];
    internal[10] = v5;
  }
}

- (void)_setSubscriptionGroupIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[11] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[11];
    internal[11] = v5;
  }
}

- (void)_setSubscriptionPeriod:(id)period
{
  periodCopy = period;
  internal = self->_internal;
  v8 = *(internal + 12);
  v7 = (internal + 96);
  if (v8 != periodCopy)
  {
    v9 = periodCopy;
    objc_storeStrong(v7, period);
    periodCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, periodCopy);
}

- (void)_setDiscounts:(id)discounts
{
  v4 = [discounts copy];
  internal = self->_internal;
  v6 = internal[13];
  internal[13] = v4;

  MEMORY[0x1EEE66BB8](v4, v6);
}

@end