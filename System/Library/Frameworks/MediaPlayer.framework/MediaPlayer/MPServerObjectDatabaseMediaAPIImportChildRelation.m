@interface MPServerObjectDatabaseMediaAPIImportChildRelation
- (MPServerObjectDatabaseMediaAPIImportChildRelation)initWithItemIdentifiers:(id)a3 type:(id)a4 parentIdentifiers:(id)a5 childKey:(id)a6 relativeOrder:(int64_t)a7;
@end

@implementation MPServerObjectDatabaseMediaAPIImportChildRelation

- (MPServerObjectDatabaseMediaAPIImportChildRelation)initWithItemIdentifiers:(id)a3 type:(id)a4 parentIdentifiers:(id)a5 childKey:(id)a6 relativeOrder:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25.receiver = self;
  v25.super_class = MPServerObjectDatabaseMediaAPIImportChildRelation;
  v16 = [(MPServerObjectDatabaseMediaAPIImportChildRelation *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_childKey = v15;
    v16->_relativeOrder = a7;
    v18 = [v12 copy];
    identifiers = v17->_identifiers;
    v17->_identifiers = v18;

    v20 = [v14 copy];
    parentIdentifiers = v17->_parentIdentifiers;
    v17->_parentIdentifiers = v20;

    v22 = [v13 copy];
    type = v17->_type;
    v17->_type = v22;
  }

  return v17;
}

@end