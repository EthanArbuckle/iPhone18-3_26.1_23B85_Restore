@interface NSSQLObjectIDSetFetchRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSSQLObjectIDSetFetchRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core idSets:(id)sets columnName:(id)name;
- (void)dealloc;
@end

@implementation NSSQLObjectIDSetFetchRequestContext

- (NSSQLObjectIDSetFetchRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core idSets:(id)sets columnName:(id)name
{
  v11.receiver = self;
  v11.super_class = NSSQLObjectIDSetFetchRequestContext;
  v9 = [(NSSQLFetchRequestContext *)&v11 initWithRequest:request context:context sqlCore:core];
  if (v9)
  {
    v9->_idSets = sets;
    v9->_columnName = name;
  }

  return v9;
}

- (void)dealloc
{
  self->_idSets = 0;

  self->_columnName = 0;
  v3.receiver = self;
  v3.super_class = NSSQLObjectIDSetFetchRequestContext;
  [(NSSQLFetchRequestContext *)&v3 dealloc];
}

- (BOOL)executeRequestCore:(id *)core
{
  v5 = _newObjectIDSetsForRequest(self, self->_idSets, self->_columnName);
  [(NSSQLStoreRequestContext *)self setResult:v5];

  if (core && *core)
  {
    objc_setProperty_nonatomic(self, v6, *core, 40);
  }

  return !self->super.super._exception && !self->super.super._error && [(NSSQLStoreRequestContext *)self result]!= 0;
}

@end