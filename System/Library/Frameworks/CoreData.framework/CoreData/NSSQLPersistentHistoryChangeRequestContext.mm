@interface NSSQLPersistentHistoryChangeRequestContext
- (BOOL)executeRequestUsingConnection:(id)a3;
- (BOOL)isWritingRequest;
- (NSPersistentHistoryChangeRequest)request;
- (NSSQLPersistentHistoryChangeRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5;
- (id)createCountRequestContextForChanges;
- (id)createDeleteTransactionsRequestContext;
- (id)createRequestContextForChangesWithTransactionIDs:(id)a3;
- (id)fetchRequestContextForChanges;
- (id)fetchRequestDescribingChanges;
- (void)dealloc;
- (void)executePrologue;
@end

@implementation NSSQLPersistentHistoryChangeRequestContext

- (BOOL)isWritingRequest
{
  if ([(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] isDelete])
  {
    return 1;
  }

  v4 = [(NSSQLPersistentHistoryChangeRequestContext *)self request];

  return [(NSPersistentHistoryChangeRequest *)v4 isPercentageDelete];
}

- (NSPersistentHistoryChangeRequest)request
{
  v3.receiver = self;
  v3.super_class = NSSQLPersistentHistoryChangeRequestContext;
  return [(NSSQLStoreRequestContext *)&v3 persistentStoreRequest];
}

- (void)executePrologue
{
  if ([(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] fetchRequest])
  {
    v3 = [(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] entityNameToFetch];
    if (self)
    {
      sqlCore = self->super._sqlCore;
    }

    else
    {
      sqlCore = 0;
    }

    if (![objc_msgSend(-[NSSQLCore ancillarySQLModels](sqlCore "ancillarySQLModels")])
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid entity for NSPersistentHistoryChangeRequest: %@", v3];
      objc_exception_throw([v5 exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0]);
    }
  }
}

- (id)fetchRequestDescribingChanges
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!result[11])
    {
      v3 = [objc_msgSend(objc_msgSend(result[1] "ancillarySQLModels")];
      if (v3)
      {
        v4 = v3;
        v5 = objc_alloc_init(NSFetchRequest);
        v1[11] = v5;
        -[NSFetchRequest setEntity:](v5, "setEntity:", [v4 entityDescription]);
        [v1[11] setIncludesSubentities:0];
        [v1[11] setPredicate:{objc_msgSend(objc_msgSend(v1, "request"), "predicateForStoreIdentifier:", objc_msgSend(v1[1], "identifier"))}];
        [v1[11] setIncludesPropertyValues:1];
        [v1[11] setIncludesPendingChanges:0];
        if ([objc_msgSend(v1 "request")])
        {
          [v1[11] setFetchLimit:{objc_msgSend(objc_msgSend(v1, "request"), "fetchLimit")}];
          if ([objc_msgSend(v1 "request")])
          {
            [v1[11] setFetchOffset:{objc_msgSend(objc_msgSend(v1, "request"), "fetchOffset")}];
          }
        }

        if ([objc_msgSend(v1 "request")] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v1, "request"), "fetchRequest"), "sortDescriptors"), "count"))
        {
          [v1[11] setSortDescriptors:{objc_msgSend(objc_msgSend(objc_msgSend(v1, "request"), "fetchRequest"), "sortDescriptors")}];
        }

        if ([objc_msgSend(v1 "request")])
        {
          [v1[11] setFetchBatchSize:{objc_msgSend(objc_msgSend(v1, "request"), "fetchBatchSize")}];
          if (![objc_msgSend(v1[11] "sortDescriptors")])
          {
            v6 = v1[11];
            v7[0] = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
            [v6 setSortDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
          }
        }
      }
    }

    result = v1[11];
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)fetchRequestContextForChanges
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSSQLPersistentHistoryChangeRequestContext *)&self->super.super.isa fetchRequestDescribingChanges];
  v4 = [(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] fetchBatchSize];
  fetchRequest = self->_fetchRequest;
  if (v4)
  {
    [(NSFetchRequest *)fetchRequest setResultType:0];
  }

  else
  {
    [(NSFetchRequest *)fetchRequest setResultType:2];
    [(NSFetchRequest *)self->_fetchRequest setAllocationType:1];
  }

  if ([(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] resultType]== NSPersistentHistoryResultTypeTransactionsAndChanges)
  {
    v14[0] = @"CHANGES";
    [v3 setRelationshipKeyPathsForPrefetching:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 1)}];
  }

  v6 = [(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] resultType]== NSPersistentHistoryResultTypeStatusOnly || [(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] resultType]== NSPersistentHistoryResultTypeCount || [(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] resultType]== (NSPersistentHistoryResultTypeChangesOnly|NSPersistentHistoryResultTypeCount);
  if ([(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] propertiesToFetch])
  {
    v7 = [(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] propertiesToFetch];
LABEL_12:
    [v3 setPropertiesToFetch:v7];
    goto LABEL_13;
  }

  if (!v6)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithArray:{-[NSPersistentHistoryChangeRequest propertiesToFetchForEntity:includeTransactionStrings:](-[NSSQLPersistentHistoryChangeRequestContext request](self, "request"), "propertiesToFetchForEntity:includeTransactionStrings:", objc_msgSend(v3, "entity"), -[NSSQLiteConnection _hasHistoryTransactionStringTable](self->super._connection))}];
    v7 = v12;
    context = self->super._context;
    if (context && (*(&context->_flags + 2) & 0x80) != 0)
    {
      [v12 removeObject:@"QUERYGEN"];
    }

    goto LABEL_12;
  }

LABEL_13:
  if ([(NSArray *)[(NSPersistentStoreRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] affectedStores] count])
  {
    [v3 setAffectedStores:{-[NSPersistentStoreRequest affectedStores](-[NSSQLPersistentHistoryChangeRequestContext request](self, "request"), "affectedStores")}];
  }

  v8 = [[NSSQLFetchRequestContext alloc] initWithRequest:v3 context:self->super._context sqlCore:self->super._sqlCore];
  v9 = v8;
  if (v8)
  {
    v8 = v8->super._context;
  }

  [(NSSQLFetchRequestContext *)v8 _setAllowAncillaryEntities:1];
  result = v9;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_fetchRequest = 0;
  v3.receiver = self;
  v3.super_class = NSSQLPersistentHistoryChangeRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (NSSQLPersistentHistoryChangeRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5
{
  v9.receiver = self;
  v9.super_class = NSSQLPersistentHistoryChangeRequestContext;
  v6 = [(NSSQLStoreRequestContext *)&v9 initWithRequest:a3 context:a4 sqlCore:a5];
  if (v6)
  {
    if ([a3 fetchBatchSize])
    {
      v7 = [a3 resultType] > 2;
    }

    else
    {
      v7 = 0;
    }

    v6->_shouldUseBatches = v7;
  }

  return v6;
}

- (id)createCountRequestContextForChanges
{
  v3 = [(NSSQLPersistentHistoryChangeRequestContext *)&self->super.super.isa fetchRequestDescribingChanges];
  [v3 setResultType:4];
  v4 = [NSSQLCountRequestContext alloc];
  if (self)
  {
    context = self->super._context;
    sqlCore = self->super._sqlCore;
  }

  else
  {
    context = 0;
    sqlCore = 0;
  }

  v7 = [(NSSQLFetchRequestContext *)v4 initWithRequest:v3 context:context sqlCore:sqlCore];

  return v7;
}

- (id)createRequestContextForChangesWithTransactionIDs:(id)a3
{
  v4 = [[NSPersistentHistoryChangeRequest alloc] initWithTransactionIDs:a3];
  v5 = [NSSQLPersistentHistoryChangeRequestContext alloc];
  if (self)
  {
    context = self->super._context;
    sqlCore = self->super._sqlCore;
  }

  else
  {
    context = 0;
    sqlCore = 0;
  }

  v8 = [(NSSQLPersistentHistoryChangeRequestContext *)v5 initWithRequest:v4 context:context sqlCore:sqlCore];

  [(NSSQLPersistentHistoryChangeRequestContext *)v8 executePrologue];

  return v8;
}

- (id)createDeleteTransactionsRequestContext
{
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:[(NSSQLPersistentHistoryChangeRequestContext *)&self->super.super.isa fetchRequestDescribingChanges]];
  [(NSBatchDeleteRequest *)v3 setResultType:2 * ([(NSPersistentHistoryChangeRequest *)[(NSSQLPersistentHistoryChangeRequestContext *)self request] resultType]!= NSPersistentHistoryResultTypeStatusOnly)];
  v4 = [NSSQLBatchDeleteRequestContext alloc];
  if (self)
  {
    context = self->super._context;
    sqlCore = self->super._sqlCore;
  }

  else
  {
    context = 0;
    sqlCore = 0;
  }

  v7 = [(NSSQLStoreRequestContext *)v4 initWithRequest:v3 context:context sqlCore:sqlCore];

  return v7;
}

- (BOOL)executeRequestUsingConnection:(id)a3
{
  newValue = 0;
  v5 = objc_autoreleasePoolPush();
  [(NSSQLStoreRequestContext *)self setConnection:a3];
  [(NSSQLiteConnection *)a3 connect];
  v7 = _executeChangeRequest(self, &newValue);
  if (v7)
  {
    v8 = [(NSSQLPersistentHistoryChangeRequestContext *)self request];
    if (self)
    {
      sqlCore = self->super._sqlCore;
    }

    else
    {
      sqlCore = 0;
    }

    [(NSSQLStoreRequestContext *)self setResult:[NSPersistentHistoryResult _processResult:v7 forRequest:v8 withProvider:sqlCore]];
  }

  v10 = newValue == 0;
  if (self && newValue)
  {
    objc_setProperty_nonatomic(self, v6, newValue, 40);
  }

  objc_autoreleasePoolPop(v5);
  [(NSSQLStoreRequestContext *)self setConnection:?];
  return v10;
}

@end