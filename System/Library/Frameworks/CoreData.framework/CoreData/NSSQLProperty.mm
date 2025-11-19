@interface NSSQLProperty
- (BOOL)isEqual:(id)a3;
- (NSSQLProperty)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (id)description;
- (void)dealloc;
- (void)setConstrained:(BOOL)a3;
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

- (NSSQLProperty)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v10.receiver = self;
  v10.super_class = NSSQLProperty;
  v6 = [(NSSQLProperty *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_propertyDescription = a4;
    v6->_entity = a3;
    if (a4)
    {
      if (-[NSEntityDescription _hasUniquedProperty:]([a3 entityDescription], a4))
      {
        *&v7->_flags |= 6u;
        if (a3)
        {
          v8 = [a3 rootEntity];
          if (v8)
          {
            v8 = v8[26];
          }

          [v8 addObject:v7];
        }
      }
    }
  }

  return v7;
}

- (void)setConstrained:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFFFB | v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
      v8 = [(NSSQLProperty *)self propertyDescription];
      LOBYTE(v7) = v8 == [a3 propertyDescription];
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
  v7 = [(NSSQLProperty *)self name];
  if (self)
  {
    v8 = [(NSSQLProperty *)self columnName];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 stringWithFormat:@"<%@ %@ (%@)>", v6, v7, v8];
  objc_autoreleasePoolPop(v3);

  return v9;
}

@end