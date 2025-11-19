@interface NSSQLObjectFaultRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (NSSQLFetchRequestContext)createFetchRequestContext;
- (NSSQLObjectFaultRequestContext)initWithObjectID:(id)a3 context:(id)a4 sqlCore:(id)a5;
- (void)dealloc;
@end

@implementation NSSQLObjectFaultRequestContext

- (NSSQLFetchRequestContext)createFetchRequestContext
{
  v1 = a1;
  if (a1)
  {
    externalDataLinksDirectory = a1->_externalDataLinksDirectory;
    if (!externalDataLinksDirectory)
    {
      v3 = objc_alloc_init(NSFetchRequest);
      v1->_externalDataLinksDirectory = v3;
      [(NSFetchRequest *)v3 setEntity:[(NSString *)v1->_externalDataReferencesDirectory entity]];
      v4 = [(NSString *)v1->_externalDataReferencesDirectory _referenceData64];
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:v4];
      v6 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v5];

      v7 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:@"_pk"];
      v8 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v7];

      v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v8 rightExpression:v6 modifier:0 type:4 options:0];
      [(NSString *)v1->_externalDataLinksDirectory setPredicate:v9];
      [(NSString *)v1->_externalDataLinksDirectory setIncludesSubentities:0];

      externalDataLinksDirectory = v1->_externalDataLinksDirectory;
    }

    v1 = [[NSSQLFetchRequestContext alloc] initWithRequest:externalDataLinksDirectory context:v1->super._context sqlCore:v1->super._sqlCore];
    [(NSSQLFetchRequestContext *)v1 setIsFaultRequest:1];
  }

  return v1;
}

- (void)dealloc
{
  self->_objectID = 0;

  self->_fetchRequest = 0;
  v3.receiver = self;
  v3.super_class = NSSQLObjectFaultRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (NSSQLObjectFaultRequestContext)initWithObjectID:(id)a3 context:(id)a4 sqlCore:(id)a5
{
  v8.receiver = self;
  v8.super_class = NSSQLObjectFaultRequestContext;
  v6 = [(NSSQLStoreRequestContext *)&v8 initWithRequest:0 context:a4 sqlCore:a5];
  if (v6)
  {
    v6->_objectID = a3;
    v6->_forConflictAnalysis = 0;
  }

  return v6;
}

- (BOOL)executeRequestCore:(id *)a3
{
  v5 = _executeNewRowValuesForObjectFaultRequest(self);
  [(NSSQLStoreRequestContext *)self setResult:v5];

  if (a3 && *a3)
  {
    if (self)
    {
      objc_setProperty_nonatomic(self, v6, *a3, 40);
      return !self->super._exception && self->super._error == 0;
    }

    return 1;
  }

  if (!self)
  {
    return 1;
  }

  return !self->super._exception && self->super._error == 0;
}

@end