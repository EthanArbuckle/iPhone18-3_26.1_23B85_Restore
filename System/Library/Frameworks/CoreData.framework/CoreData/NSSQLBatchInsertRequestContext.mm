@interface NSSQLBatchInsertRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (NSSQLBatchInsertRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5;
@end

@implementation NSSQLBatchInsertRequestContext

- (NSSQLBatchInsertRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5
{
  v6.receiver = self;
  v6.super_class = NSSQLBatchInsertRequestContext;
  return [(NSSQLStoreRequestContext *)&v6 initWithRequest:a3 context:a4 sqlCore:a5];
}

- (BOOL)executeRequestCore:(id *)a3
{
  v4 = self;
  if (self)
  {
    v8.receiver = self;
    v8.super_class = NSSQLBatchInsertRequestContext;
    self = [(NSSQLStoreRequestContext *)&v8 persistentStoreRequest];
    sqlCore = v4->super.super._sqlCore;
  }

  else
  {
    sqlCore = 0;
  }

  [(NSBatchInsertRequest *)self _resolveEntityWithSQLCore:?];
  [(NSSQLStoreRequestContext *)v4 setResult:_executeBatchInsertRequest(v4)];
  if (!a3 || !*a3)
  {
    if (v4)
    {
      goto LABEL_8;
    }

    return [(NSSQLStoreRequestContext *)v4 result]!= 0;
  }

  if (!v4)
  {
    return [(NSSQLStoreRequestContext *)v4 result]!= 0;
  }

  objc_setProperty_nonatomic(v4, v6, *a3, 40);
LABEL_8:
  if (!v4->super.super._exception && !v4->super.super._error)
  {
    return [(NSSQLStoreRequestContext *)v4 result]!= 0;
  }

  return 0;
}

@end