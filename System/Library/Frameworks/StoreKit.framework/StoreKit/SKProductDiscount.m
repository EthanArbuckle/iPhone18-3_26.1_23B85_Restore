@interface SKProductDiscount
- (SKProductDiscount)init;
- (void)_setIdentifier:(id)a3;
- (void)_setPrice:(id)a3;
- (void)_setPriceLocale:(id)a3;
- (void)_setSubscriptionPeriod:(id)a3;
@end

@implementation SKProductDiscount

- (SKProductDiscount)init
{
  v6.receiver = self;
  v6.super_class = SKProductDiscount;
  v2 = [(SKProductDiscount *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductDiscountInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (void)_setPrice:(id)a3
{
  objc_storeStrong(self->_internal + 1, a3);
  v4 = a3;
}

- (void)_setPriceLocale:(id)a3
{
  objc_storeStrong(self->_internal + 2, a3);
  v4 = a3;
}

- (void)_setSubscriptionPeriod:(id)a3
{
  objc_storeStrong(self->_internal + 4, a3);
  v4 = a3;
}

- (void)_setIdentifier:(id)a3
{
  *(self->_internal + 7) = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

@end