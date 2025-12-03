@interface MPServerObjectDatabaseMediaAPIImportChildRelation
- (MPServerObjectDatabaseMediaAPIImportChildRelation)initWithItemIdentifiers:(id)identifiers type:(id)type parentIdentifiers:(id)parentIdentifiers childKey:(id)key relativeOrder:(int64_t)order;
@end

@implementation MPServerObjectDatabaseMediaAPIImportChildRelation

- (MPServerObjectDatabaseMediaAPIImportChildRelation)initWithItemIdentifiers:(id)identifiers type:(id)type parentIdentifiers:(id)parentIdentifiers childKey:(id)key relativeOrder:(int64_t)order
{
  identifiersCopy = identifiers;
  typeCopy = type;
  parentIdentifiersCopy = parentIdentifiers;
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = MPServerObjectDatabaseMediaAPIImportChildRelation;
  v16 = [(MPServerObjectDatabaseMediaAPIImportChildRelation *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_childKey = keyCopy;
    v16->_relativeOrder = order;
    v18 = [identifiersCopy copy];
    identifiers = v17->_identifiers;
    v17->_identifiers = v18;

    v20 = [parentIdentifiersCopy copy];
    parentIdentifiers = v17->_parentIdentifiers;
    v17->_parentIdentifiers = v20;

    v22 = [typeCopy copy];
    type = v17->_type;
    v17->_type = v22;
  }

  return v17;
}

@end