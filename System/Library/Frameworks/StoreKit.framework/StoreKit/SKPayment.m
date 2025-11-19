@interface SKPayment
+ (SKPayment)paymentWithProduct:(SKProduct *)product;
+ (id)paymentFromPurchaseIntentWithProduct:(id)a3;
+ (id)paymentWithProductIdentifier:(NSString *)identifier;
- (BOOL)isEqual:(id)a3;
- (SKPayment)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SKPayment

- (SKPayment)init
{
  v6.receiver = self;
  v6.super_class = SKPayment;
  v2 = [(SKPayment *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKPaymentInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[SKPayment allocWithZone:](SKPayment init];
  v6 = [self->_internal copyWithZone:a3];
  internal = v5->_internal;
  v5->_internal = v6;

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(SKPayment *)+[SKMutablePayment allocWithZone:](SKMutablePayment init];
  v6 = [self->_internal copyWithZone:a3];
  internal = v5->super._internal;
  v5->super._internal = v6;

  return v5;
}

+ (SKPayment)paymentWithProduct:(SKProduct *)product
{
  v4 = product;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v7 = [(SKProduct *)v4 productIdentifier];
  v8 = [v7 copy];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(SKProduct *)v4 _productKind];
  v11 = [v10 copy];
  v12 = v6[5];
  v6[5] = v11;

  v13 = [(SKProduct *)v4 subscriptionPeriod];
  v14 = v6[10];
  v6[10] = v13;

  if (__currentPurchaseIntentProductIdentifier)
  {
    v15 = [(SKProduct *)v4 productIdentifier];
    v16 = [v15 isEqualToString:__currentPurchaseIntentProductIdentifier];

    if (v16)
    {
      *(v6 + 88) = 1;
    }
  }

  return v5;
}

+ (id)paymentFromPurchaseIntentWithProduct:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v7 = [v4 productIdentifier];
  v8 = [v7 copy];
  v9 = v6[4];
  v6[4] = v8;

  *(v6 + 88) = 1;
  v10 = __currentPurchaseIntentProductIdentifier;
  if (__currentPurchaseIntentProductIdentifier)
  {
    __currentPurchaseIntentProductIdentifier = 0;
  }

  v11 = [v4 productIdentifier];
  v12 = [v11 copy];
  v13 = __currentPurchaseIntentProductIdentifier;
  __currentPurchaseIntentProductIdentifier = v12;

  return v5;
}

+ (id)paymentWithProductIdentifier:(NSString *)identifier
{
  v4 = identifier;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v7 = [(NSString *)v4 copy];

  v8 = v6[4];
  v6[4] = v7;

  return v5;
}

- (unint64_t)hash
{
  v3 = *(self->_internal + 4);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SKPayment;
    v5 = [(SKPayment *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && *(self->_internal + 6) == *(v4[1] + 48);
  v6 = *(self->_internal + 4);
  v7 = *(v4[1] + 32);
  v8 = v7;
  if (v5)
  {
    if (v6 == v7)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = [v6 isEqualToString:v7];
    }
  }

  return v5;
}

@end