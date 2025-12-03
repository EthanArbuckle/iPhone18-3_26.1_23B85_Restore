@interface NSSQLRelationship
- (NSSQLRelationship)initWithEntity:(id)entity propertyDescription:(id)description;
- (id)initForReadOnlyFetchWithEntity:(id)entity propertyDescription:(id)description;
- (void)_setInverseRelationship:(void *)relationship;
- (void)copyValuesForReadOnlyFetch:(id)fetch;
- (void)dealloc;
@end

@implementation NSSQLRelationship

- (void)dealloc
{
  self->_destinationEntity = 0;
  self->_inverse = 0;

  v3.receiver = self;
  v3.super_class = NSSQLRelationship;
  [(NSSQLProperty *)&v3 dealloc];
}

- (NSSQLRelationship)initWithEntity:(id)entity propertyDescription:(id)description
{
  v12.receiver = self;
  v12.super_class = NSSQLRelationship;
  v6 = [NSSQLProperty initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  if (v6)
  {
    destinationEntity = [description destinationEntity];
    if (destinationEntity)
    {
      v6->_destinationEntity = [objc_msgSend(entity "model")];
    }

    name = [description name];
    name = v6->_name;
    if (name != name)
    {
      v10 = name;

      v6->_name = [v10 copy];
    }
  }

  return v6;
}

- (id)initForReadOnlyFetchWithEntity:(id)entity propertyDescription:(id)description
{
  v12.receiver = self;
  v12.super_class = NSSQLRelationship;
  v6 = [NSSQLProperty initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  v7 = v6;
  if (v6)
  {
    v6->_destinationEntity = entity;
    name = [description name];
    name = v7->_name;
    if (name != name)
    {
      v10 = name;

      v7->_name = [v10 copy];
    }
  }

  return v7;
}

- (void)_setInverseRelationship:(void *)relationship
{
  if (relationship)
  {
    v3 = relationship[7];
    if (v3 != relationship || v3 != a2)
    {
      relationship[7] = a2;
      if (!relationship[6])
      {
        relationship[6] = [a2 sourceEntity];
      }

      foreignKey = [relationship foreignKey];
      propertyDescription = relationship[7];
      if (propertyDescription)
      {
        propertyDescription = [propertyDescription propertyDescription];
      }

      if ([propertyDescription _isOrdered] && foreignKey)
      {
        v7 = -[NSSQLForeignOrderKey initWithEntity:foreignKey:]([NSSQLForeignOrderKey alloc], "initWithEntity:foreignKey:", [relationship entity], foreignKey);
        [relationship _setForeignOrderKey:v7];
      }
    }
  }
}

- (void)copyValuesForReadOnlyFetch:(id)fetch
{
  v5.receiver = self;
  v5.super_class = NSSQLRelationship;
  [(NSSQLProperty *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(fetch "name")];
  self->_destinationEntity = [fetch destinationEntity];
}

@end