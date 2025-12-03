@interface NSSQLRelationshipFaultRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSSQLRelationshipFaultRequestContext)initWithObjectID:(id)d relationship:(id)relationship context:(id)context sqlCore:(id)core;
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

- (NSSQLRelationshipFaultRequestContext)initWithObjectID:(id)d relationship:(id)relationship context:(id)context sqlCore:(id)core
{
  v10.receiver = self;
  v10.super_class = NSSQLRelationshipFaultRequestContext;
  v8 = [(NSSQLStoreRequestContext *)&v10 initWithRequest:0 context:context sqlCore:core];
  if (v8)
  {
    v8->_relationship = relationship;
    v8->_objectID = d;
  }

  return v8;
}

- (BOOL)executeRequestCore:(id *)core
{
  v5 = _executeNewValuesForRelationshipFaultRequest(self);
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