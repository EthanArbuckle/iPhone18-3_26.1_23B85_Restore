@interface NSSQLCountRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (id)_createStatement;
@end

@implementation NSSQLCountRequestContext

- (id)_createStatement
{
  selfCopy = self;
  if (self)
  {
    self = self->super.super._sqlCore;
  }

  adapter = [(NSSQLCountRequestContext *)self adapter];

  return [(NSSQLiteAdapter *)adapter newCountStatementWithFetchRequestContext:selfCopy];
}

- (BOOL)executeRequestCore:(id *)core
{
  [(NSSQLStoreRequestContext *)self setResult:_executeCountRequest(self)];
  if (core && *core)
  {
    if (!self)
    {
      return [(NSSQLStoreRequestContext *)self result]!= 0;
    }

    objc_setProperty_nonatomic(self, v5, *core, 40);
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