@interface NSSQLObjectIDSetFetchRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (NSSQLObjectIDSetFetchRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5 idSets:(id)a6 columnName:(id)a7;
- (void)dealloc;
@end

@implementation NSSQLObjectIDSetFetchRequestContext

- (NSSQLObjectIDSetFetchRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5 idSets:(id)a6 columnName:(id)a7
{
  v11.receiver = self;
  v11.super_class = NSSQLObjectIDSetFetchRequestContext;
  v9 = [(NSSQLFetchRequestContext *)&v11 initWithRequest:a3 context:a4 sqlCore:a5];
  if (v9)
  {
    v9->_idSets = a6;
    v9->_columnName = a7;
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

- (BOOL)executeRequestCore:(id *)a3
{
  v5 = _newObjectIDSetsForRequest(self, self->_idSets, self->_columnName);
  [(NSSQLStoreRequestContext *)self setResult:v5];

  if (a3 && *a3)
  {
    objc_setProperty_nonatomic(self, v6, *a3, 40);
  }

  return !self->super.super._exception && !self->super.super._error && [(NSSQLStoreRequestContext *)self result]!= 0;
}

@end