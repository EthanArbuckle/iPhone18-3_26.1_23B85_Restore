@interface SKProductsResponse
- (SKProductsResponse)init;
- (void)_setInvalidIdentifiers:(id)a3;
- (void)_setProducts:(id)a3;
@end

@implementation SKProductsResponse

- (SKProductsResponse)init
{
  v6.receiver = self;
  v6.super_class = SKProductsResponse;
  v2 = [(SKProductsResponse *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductsResponseInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (void)_setInvalidIdentifiers:(id)a3
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

- (void)_setProducts:(id)a3
{
  internal = self->_internal;
  if (internal[2] != a3)
  {
    v7 = internal;
    v5 = [a3 copy];
    v6 = internal[2];
    internal[2] = v5;
  }
}

@end