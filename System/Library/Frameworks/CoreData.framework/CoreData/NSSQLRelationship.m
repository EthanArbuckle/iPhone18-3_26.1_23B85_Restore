@interface NSSQLRelationship
- (NSSQLRelationship)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (id)initForReadOnlyFetchWithEntity:(id)a3 propertyDescription:(id)a4;
- (void)_setInverseRelationship:(void *)a1;
- (void)copyValuesForReadOnlyFetch:(id)a3;
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

- (NSSQLRelationship)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v12.receiver = self;
  v12.super_class = NSSQLRelationship;
  v6 = [NSSQLProperty initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  if (v6)
  {
    v7 = [a4 destinationEntity];
    if (v7)
    {
      v6->_destinationEntity = [objc_msgSend(a3 "model")];
    }

    v8 = [a4 name];
    name = v6->_name;
    if (name != v8)
    {
      v10 = v8;

      v6->_name = [v10 copy];
    }
  }

  return v6;
}

- (id)initForReadOnlyFetchWithEntity:(id)a3 propertyDescription:(id)a4
{
  v12.receiver = self;
  v12.super_class = NSSQLRelationship;
  v6 = [NSSQLProperty initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  v7 = v6;
  if (v6)
  {
    v6->_destinationEntity = a3;
    v8 = [a4 name];
    name = v7->_name;
    if (name != v8)
    {
      v10 = v8;

      v7->_name = [v10 copy];
    }
  }

  return v7;
}

- (void)_setInverseRelationship:(void *)a1
{
  if (a1)
  {
    v3 = a1[7];
    if (v3 != a1 || v3 != a2)
    {
      a1[7] = a2;
      if (!a1[6])
      {
        a1[6] = [a2 sourceEntity];
      }

      v5 = [a1 foreignKey];
      v6 = a1[7];
      if (v6)
      {
        v6 = [v6 propertyDescription];
      }

      if ([v6 _isOrdered] && v5)
      {
        v7 = -[NSSQLForeignOrderKey initWithEntity:foreignKey:]([NSSQLForeignOrderKey alloc], "initWithEntity:foreignKey:", [a1 entity], v5);
        [a1 _setForeignOrderKey:v7];
      }
    }
  }
}

- (void)copyValuesForReadOnlyFetch:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLRelationship;
  [(NSSQLProperty *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(a3 "name")];
  self->_destinationEntity = [a3 destinationEntity];
}

@end