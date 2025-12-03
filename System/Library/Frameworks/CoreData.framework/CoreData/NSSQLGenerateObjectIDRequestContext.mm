@interface NSSQLGenerateObjectIDRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (id)initForEntitiesAndCounts:(id)counts context:(id)context sqlCore:(id)core;
- (void)dealloc;
@end

@implementation NSSQLGenerateObjectIDRequestContext

- (void)dealloc
{
  self->_entitiesAndCounts = 0;

  self->_model = 0;
  v3.receiver = self;
  v3.super_class = NSSQLGenerateObjectIDRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (id)initForEntitiesAndCounts:(id)counts context:(id)context sqlCore:(id)core
{
  v9.receiver = self;
  v9.super_class = NSSQLGenerateObjectIDRequestContext;
  v7 = [(NSSQLStoreRequestContext *)&v9 initWithRequest:0 context:context sqlCore:?];
  if (v7)
  {
    v7->_entitiesAndCounts = counts;
    v7->_model = [core model];
  }

  return v7;
}

- (BOOL)executeRequestCore:(id *)core
{
  [(NSSQLStoreRequestContext *)self setResult:_executeGenerateObjectIDRequest(self)];
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

  if (self->super._exception || self->super._error)
  {
    return 0;
  }

  return [(NSSQLStoreRequestContext *)self result]!= 0;
}

@end