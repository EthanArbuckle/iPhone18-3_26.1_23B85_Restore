@interface SKProductsResponse
- (SKProductsResponse)init;
- (void)_setInvalidIdentifiers:(id)identifiers;
- (void)_setProducts:(id)products;
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

- (void)_setInvalidIdentifiers:(id)identifiers
{
  internal = self->_internal;
  if (internal[1] != identifiers)
  {
    v7 = internal;
    v5 = [identifiers copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)_setProducts:(id)products
{
  internal = self->_internal;
  if (internal[2] != products)
  {
    v7 = internal;
    v5 = [products copy];
    v6 = internal[2];
    internal[2] = v5;
  }
}

@end