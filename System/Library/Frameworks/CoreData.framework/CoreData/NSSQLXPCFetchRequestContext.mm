@interface NSSQLXPCFetchRequestContext
- (BOOL)executeRequestCore:(id *)core;
@end

@implementation NSSQLXPCFetchRequestContext

- (BOOL)executeRequestCore:(id *)core
{
  v5 = _rawRowDataForXPCRequest(self);
  [(NSSQLStoreRequestContext *)self setResult:v5];

  if (core && *core)
  {
    if (!self)
    {
      return [(NSSQLStoreRequestContext *)self result]!= 0;
    }

    objc_setProperty_nonatomic(self, v6, *core, 40);
  }

  else if (!self)
  {
    return [(NSSQLStoreRequestContext *)self result]!= 0;
  }

  if (self->super.super._exception || self->super.super._error)
  {
    return 0;
  }

  return [(NSSQLStoreRequestContext *)self result]!= 0;
}

@end