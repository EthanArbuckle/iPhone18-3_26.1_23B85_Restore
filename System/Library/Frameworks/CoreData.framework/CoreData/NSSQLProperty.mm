@interface NSSQLProperty
- (BOOL)isEqual:(id)equal;
- (NSSQLProperty)initWithEntity:(id)entity propertyDescription:(id)description;
- (id)description;
- (void)dealloc;
- (void)setConstrained:(BOOL)constrained;
@end

@implementation NSSQLProperty

- (void)dealloc
{
  self->_propertyDescription = 0;
  self->_entity = 0;
  v2.receiver = self;
  v2.super_class = NSSQLProperty;
  [(NSSQLProperty *)&v2 dealloc];
}

- (NSSQLProperty)initWithEntity:(id)entity propertyDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = NSSQLProperty;
  v6 = [(NSSQLProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_propertyDescription = description;
    v6->_entity = entity;
    if (description)
    {
      if (-[NSEntityDescription _hasUniquedProperty:]([entity entityDescription], description))
      {
        *&v7->_flags |= 6u;
        if (entity)
        {
          rootEntity = [entity rootEntity];
          if (rootEntity)
          {
            rootEntity = rootEntity[26];
          }

          [rootEntity addObject:v7];
        }
      }
    }
  }

  return v7;
}

- (void)setConstrained:(BOOL)constrained
{
  if (constrained)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFB | v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v10.receiver = self;
    v10.super_class = NSSQLProperty;
    v7 = [(NSSQLProperty *)&v10 isEqual:?];
    if (v7)
    {
      propertyDescription = [(NSSQLProperty *)self propertyDescription];
      LOBYTE(v7) = propertyDescription == [equal propertyDescription];
    }
  }

  return v7;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  name = [(NSSQLProperty *)self name];
  if (self)
  {
    columnName = [(NSSQLProperty *)self columnName];
  }

  else
  {
    columnName = 0;
  }

  v9 = [v4 stringWithFormat:@"<%@ %@ (%@)>", v6, name, columnName];
  objc_autoreleasePoolPop(v3);

  return v9;
}

@end