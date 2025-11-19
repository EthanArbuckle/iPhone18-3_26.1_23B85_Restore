@interface NSSQLCountRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (id)_createStatement;
@end

@implementation NSSQLCountRequestContext

- (id)_createStatement
{
  v2 = self;
  if (self)
  {
    self = self->super.super._sqlCore;
  }

  v3 = [(NSSQLCountRequestContext *)self adapter];

  return [(NSSQLiteAdapter *)v3 newCountStatementWithFetchRequestContext:v2];
}

- (BOOL)executeRequestCore:(id *)a3
{
  [(NSSQLStoreRequestContext *)self setResult:_executeCountRequest(self)];
  if (a3 && *a3)
  {
    if (!self)
    {
      return [(NSSQLStoreRequestContext *)self result]!= 0;
    }

    objc_setProperty_nonatomic(self, v5, *a3, 40);
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