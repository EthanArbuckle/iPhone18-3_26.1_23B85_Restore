@interface NSSQLObjectFaultRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSSQLFetchRequestContext)createFetchRequestContext;
- (NSSQLObjectFaultRequestContext)initWithObjectID:(id)d context:(id)context sqlCore:(id)core;
- (void)dealloc;
@end

@implementation NSSQLObjectFaultRequestContext

- (NSSQLFetchRequestContext)createFetchRequestContext
{
  selfCopy = self;
  if (self)
  {
    externalDataLinksDirectory = self->_externalDataLinksDirectory;
    if (!externalDataLinksDirectory)
    {
      v3 = objc_alloc_init(NSFetchRequest);
      selfCopy->_externalDataLinksDirectory = v3;
      [(NSFetchRequest *)v3 setEntity:[(NSString *)selfCopy->_externalDataReferencesDirectory entity]];
      _referenceData64 = [(NSString *)selfCopy->_externalDataReferencesDirectory _referenceData64];
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:_referenceData64];
      v6 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v5];

      v7 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:@"_pk"];
      v8 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v7];

      v9 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v8 rightExpression:v6 modifier:0 type:4 options:0];
      [(NSString *)selfCopy->_externalDataLinksDirectory setPredicate:v9];
      [(NSString *)selfCopy->_externalDataLinksDirectory setIncludesSubentities:0];

      externalDataLinksDirectory = selfCopy->_externalDataLinksDirectory;
    }

    selfCopy = [[NSSQLFetchRequestContext alloc] initWithRequest:externalDataLinksDirectory context:selfCopy->super._context sqlCore:selfCopy->super._sqlCore];
    [(NSSQLFetchRequestContext *)selfCopy setIsFaultRequest:1];
  }

  return selfCopy;
}

- (void)dealloc
{
  self->_objectID = 0;

  self->_fetchRequest = 0;
  v3.receiver = self;
  v3.super_class = NSSQLObjectFaultRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (NSSQLObjectFaultRequestContext)initWithObjectID:(id)d context:(id)context sqlCore:(id)core
{
  v8.receiver = self;
  v8.super_class = NSSQLObjectFaultRequestContext;
  v6 = [(NSSQLStoreRequestContext *)&v8 initWithRequest:0 context:context sqlCore:core];
  if (v6)
  {
    v6->_objectID = d;
    v6->_forConflictAnalysis = 0;
  }

  return v6;
}

- (BOOL)executeRequestCore:(id *)core
{
  v5 = _executeNewRowValuesForObjectFaultRequest(self);
  [(NSSQLStoreRequestContext *)self setResult:v5];

  if (core && *core)
  {
    if (self)
    {
      objc_setProperty_nonatomic(self, v6, *core, 40);
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