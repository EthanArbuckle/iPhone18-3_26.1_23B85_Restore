@interface NSSQLRelationshipFaultRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (NSSQLRelationshipFaultRequestContext)initWithObjectID:(id)a3 relationship:(id)a4 context:(id)a5 sqlCore:(id)a6;
- (void)dealloc;
@end

@implementation NSSQLRelationshipFaultRequestContext

- (void)dealloc
{
  self->_relationship = 0;

  self->_objectID = 0;
  v3.receiver = self;
  v3.super_class = NSSQLRelationshipFaultRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (NSSQLRelationshipFaultRequestContext)initWithObjectID:(id)a3 relationship:(id)a4 context:(id)a5 sqlCore:(id)a6
{
  v10.receiver = self;
  v10.super_class = NSSQLRelationshipFaultRequestContext;
  v8 = [(NSSQLStoreRequestContext *)&v10 initWithRequest:0 context:a5 sqlCore:a6];
  if (v8)
  {
    v8->_relationship = a4;
    v8->_objectID = a3;
  }

  return v8;
}

- (BOOL)executeRequestCore:(id *)a3
{
  v5 = _executeNewValuesForRelationshipFaultRequest(self);
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