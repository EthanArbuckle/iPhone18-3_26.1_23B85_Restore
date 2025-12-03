@interface NSSQLBatchUpdateRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSBatchUpdateRequest)request;
- (NSSQLBatchUpdateRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core;
- (id)createFetchRequestContextForObjectsToUpdate;
- (void)clearSQLiteStatements;
- (void)dealloc;
- (void)executePrologue;
@end

@implementation NSSQLBatchUpdateRequestContext

- (void)executePrologue
{
  if (self)
  {
    v3 = [[NSSQLGenerator alloc] initWithPersistentStore:self->super.super._sqlCore];
    request = [(NSSQLBatchUpdateRequestContext *)self request];
    if (v3)
    {
      v5 = [(NSSQLGenerator *)v3 newSQLStatementForRequest:request ignoreInheritance:0 countOnly:0 nestingLevel:0 nestIsWhereScoped:0 requestContext:0];
    }

    else
    {
      v5 = 0;
    }

    self->_updateStatement = v5;
  }
}

- (NSBatchUpdateRequest)request
{
  v3.receiver = self;
  v3.super_class = NSSQLBatchUpdateRequestContext;
  return [(NSSQLStoreRequestContext *)&v3 persistentStoreRequest];
}

- (void)dealloc
{
  self->_updateStatement = 0;

  self->_fetchRequest = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBatchUpdateRequestContext;
  [(NSSQLBatchOperationRequestContext *)&v3 dealloc];
}

- (void)clearSQLiteStatements
{
  if (self)
  {
    self = self->_updateStatement;
  }

  [(NSSQLiteStatement *)self clearCaches:?];
}

- (NSSQLBatchUpdateRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core
{
  v9.receiver = self;
  v9.super_class = NSSQLBatchUpdateRequestContext;
  v7 = [(NSSQLStoreRequestContext *)&v9 initWithRequest:request context:context sqlCore:core];
  if (v7)
  {
    [request _resolveEntityWithContext:context];
  }

  return v7;
}

- (id)createFetchRequestContextForObjectsToUpdate
{
  if (self)
  {
    fetchRequest = self->_fetchRequest;
    if (!fetchRequest)
    {
      v4 = objc_alloc_init(NSFetchRequest);
      self->_fetchRequest = v4;
      [(NSFetchRequest *)v4 setEntity:[(NSBatchUpdateRequest *)[(NSSQLBatchUpdateRequestContext *)self request] entity]];
      [(NSFetchRequest *)self->_fetchRequest setIncludesSubentities:[(NSBatchUpdateRequest *)[(NSSQLBatchUpdateRequestContext *)self request] includesSubentities]];
      [(NSFetchRequest *)self->_fetchRequest setPredicate:[(NSBatchUpdateRequest *)[(NSSQLBatchUpdateRequestContext *)self request] predicate]];
      [(NSFetchRequest *)self->_fetchRequest setIncludesPropertyValues:0];
      [(NSFetchRequest *)self->_fetchRequest setIncludesPendingChanges:0];
      [(NSFetchRequest *)self->_fetchRequest setResultType:1];
      fetchRequest = self->_fetchRequest;
    }

    v5 = [NSSQLFetchRequestContext alloc];
    context = self->super.super._context;
    sqlCore = self->super.super._sqlCore;
  }

  else
  {
    v5 = [NSSQLFetchRequestContext alloc];
    context = 0;
    fetchRequest = 0;
    sqlCore = 0;
  }

  return [(NSSQLFetchRequestContext *)v5 initWithRequest:fetchRequest context:context sqlCore:sqlCore];
}

- (BOOL)executeRequestCore:(id *)core
{
  [(NSSQLStoreRequestContext *)self setResult:_executeBatchUpdateRequest(self, core)];
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