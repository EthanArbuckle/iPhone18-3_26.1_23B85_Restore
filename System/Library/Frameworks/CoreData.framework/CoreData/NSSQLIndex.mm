@interface NSSQLIndex
- (BOOL)isEqual:(id)equal;
- (id)bulkUpdateStatementsForStore:(id)store;
- (id)dropStatementsForStore:(id)store;
- (id)generateStatementsForStore:(id)store;
- (id)initForIndexDescription:(id)description sqlEntity:(id)entity;
- (void)dealloc;
@end

@implementation NSSQLIndex

- (void)dealloc
{
  self->_createStrings = 0;

  self->_dropStrings = 0;
  self->_updateStrings = 0;

  self->_indexDescription = 0;
  self->_sqlEntity = 0;
  v3.receiver = self;
  v3.super_class = NSSQLIndex;
  [(NSSQLIndex *)&v3 dealloc];
}

- (id)initForIndexDescription:(id)description sqlEntity:(id)entity
{
  v8.receiver = self;
  v8.super_class = NSSQLIndex;
  v6 = [(NSSQLIndex *)&v8 init];
  if (v6)
  {
    v6->_indexDescription = description;
    v6->_sqlEntity = entity;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  sqlEntity = self->_sqlEntity;
  if (sqlEntity != [equal sqlEntity])
  {
    return 0;
  }

  indexDescription = self->_indexDescription;
  indexDescription = [equal indexDescription];
  if (indexDescription == indexDescription)
  {
    return 1;
  }

  v9 = indexDescription;
  result = 0;
  if (indexDescription && v9)
  {

    return [(NSFetchIndexDescription *)indexDescription isEqual:?];
  }

  return result;
}

- (id)generateStatementsForStore:(id)store
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)dropStatementsForStore:(id)store
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)bulkUpdateStatementsForStore:(id)store
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end