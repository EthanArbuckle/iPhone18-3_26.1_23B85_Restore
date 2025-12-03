@interface NSSQLBatchInsertRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSSQLBatchInsertRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core;
@end

@implementation NSSQLBatchInsertRequestContext

- (NSSQLBatchInsertRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core
{
  v6.receiver = self;
  v6.super_class = NSSQLBatchInsertRequestContext;
  return [(NSSQLStoreRequestContext *)&v6 initWithRequest:request context:context sqlCore:core];
}

- (BOOL)executeRequestCore:(id *)core
{
  selfCopy = self;
  if (self)
  {
    v8.receiver = self;
    v8.super_class = NSSQLBatchInsertRequestContext;
    self = [(NSSQLStoreRequestContext *)&v8 persistentStoreRequest];
    sqlCore = selfCopy->super.super._sqlCore;
  }

  else
  {
    sqlCore = 0;
  }

  [(NSBatchInsertRequest *)self _resolveEntityWithSQLCore:?];
  [(NSSQLStoreRequestContext *)selfCopy setResult:_executeBatchInsertRequest(selfCopy)];
  if (!core || !*core)
  {
    if (selfCopy)
    {
      goto LABEL_8;
    }

    return [(NSSQLStoreRequestContext *)selfCopy result]!= 0;
  }

  if (!selfCopy)
  {
    return [(NSSQLStoreRequestContext *)selfCopy result]!= 0;
  }

  objc_setProperty_nonatomic(selfCopy, v6, *core, 40);
LABEL_8:
  if (!selfCopy->super.super._exception && !selfCopy->super.super._error)
  {
    return [(NSSQLStoreRequestContext *)selfCopy result]!= 0;
  }

  return 0;
}

@end