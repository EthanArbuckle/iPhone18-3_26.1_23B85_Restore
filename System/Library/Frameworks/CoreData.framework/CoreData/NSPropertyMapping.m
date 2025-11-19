@interface NSPropertyMapping
- (BOOL)isEqual:(id)a3;
- (NSPropertyMapping)initWithCoder:(id)a3;
- (id)_initWithDestinationName:(id)a3 valueExpression:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_setPropertyTransforms:(void *)result;
- (void)_setTransformValidations:(void *)result;
- (void)_throwIfNotEditable;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(NSString *)name;
- (void)setUserInfo:(NSDictionary *)userInfo;
- (void)setValueExpression:(NSExpression *)valueExpression;
@end

@implementation NSPropertyMapping

- (void)dealloc
{
  self->_name = 0;

  self->_valueExpression = 0;
  self->_userInfo = 0;

  self->_propertyTransforms = 0;
  self->_transformValidations = 0;
  v3.receiver = self;
  v3.super_class = NSPropertyMapping;
  [(NSPropertyMapping *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v4[4] = [(NSString *)self->_name copy];
    v4[5] = [(NSExpression *)self->_valueExpression copy];
    v4[6] = [(NSDictionary *)self->_userInfo copy];
    v4[3] = [(NSArray *)self->_propertyTransforms copy];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_25;
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = [(NSPropertyMapping *)self name];
  v6 = [a3 name];
  if (v5 == v6 || (v7 = v6, LOBYTE(v6) = 0, v5) && v7 && (LODWORD(v6) = [(NSString *)v5 isEqual:?], v6))
  {
    v8 = [(NSPropertyMapping *)self valueExpression];
    v6 = [a3 valueExpression];
    if (v8 == v6 || (v9 = v6, LOBYTE(v6) = 0, v8) && v9 && (LODWORD(v6) = [(NSExpression *)v8 isEqual:?], v6))
    {
      v10 = [(NSPropertyMapping *)self userInfo];
      v6 = [a3 userInfo];
      if (v10 == v6 || (v11 = v6, LOBYTE(v6) = 0, v10) && v11 && (LODWORD(v6) = [(NSDictionary *)v10 isEqual:?], v6))
      {
        if (self)
        {
          propertyTransforms = self->_propertyTransforms;
        }

        else
        {
          propertyTransforms = 0;
        }

        v13 = *(a3 + 3);
        if (propertyTransforms != v13)
        {
          LOBYTE(v6) = 0;
          if (propertyTransforms && v13)
          {

            LOBYTE(v6) = [(NSArray *)propertyTransforms isEqual:?];
          }

          return v6;
        }

LABEL_25:
        LOBYTE(v6) = 1;
      }
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@), name %@, valueExpression %@, userInfo %@", objc_opt_class(), -[NSPropertyMapping name](self, "name"), -[NSPropertyMapping valueExpression](self, "valueExpression"), -[NSPropertyMapping userInfo](self, "userInfo")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)setName:(NSString *)name
{
  [(NSPropertyMapping *)self _throwIfNotEditable];
  v5 = self->_name;
  if (v5 != name)
  {

    self->_name = [(NSString *)name copy];
  }
}

- (void)setValueExpression:(NSExpression *)valueExpression
{
  [(NSPropertyMapping *)self _throwIfNotEditable];
  v5 = self->_valueExpression;
  if (v5 != valueExpression)
  {

    self->_valueExpression = [(NSExpression *)valueExpression copy];
  }
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  [(NSPropertyMapping *)self _throwIfNotEditable];
  v5 = self->_userInfo;
  if (v5 != userInfo)
  {

    self->_userInfo = [(NSDictionary *)userInfo copy];
  }
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[NSPropertyMapping name](self forKey:{"name"), @"NSDestinationPropertyName"}];
  [a3 encodeObject:-[NSPropertyMapping valueExpression](self forKey:{"valueExpression"), @"NSValueExpression"}];
  [a3 encodeObject:-[NSPropertyMapping userInfo](self forKey:{"userInfo"), @"NSUserInfo"}];
  if (self)
  {
    propertyTransforms = self->_propertyTransforms;
  }

  else
  {
    propertyTransforms = 0;
  }

  [a3 encodeObject:propertyTransforms forKey:@"NSPropertyTransforms"];
}

- (NSPropertyMapping)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = NSPropertyMapping;
  v4 = [(NSPropertyMapping *)&v9 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationPropertyName"];
    v4->_name = v5;
    if (v5 && ([(NSString *)v5 isNSString]& 1) == 0)
    {
      [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4354E0)}];

      return 0;
    }

    else
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v4->_valueExpression = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSValueExpression"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSExpression *)v4->_valueExpression allowEvaluation];
      }

      v4->_userInfo = [a3 decodeObjectOfClasses:+[_PFRoutines plistClassesForSecureCoding]() forKey:@"NSUserInfo"];
      v4->_propertyTransforms = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyTransforms"];
      *&v4->_propertyMappingFlags &= ~1u;
    }
  }

  return v4;
}

- (id)_initWithDestinationName:(id)a3 valueExpression:(id)a4
{
  v8.receiver = self;
  v8.super_class = NSPropertyMapping;
  v6 = [(NSPropertyMapping *)&v8 init];
  if (v6)
  {
    v6->_name = [a3 copy];
    v6->_valueExpression = [a4 copy];
    v6->_userInfo = 0;
    *&v6->_propertyMappingFlags &= ~1u;
  }

  return v6;
}

- (void)_throwIfNotEditable
{
  if (!self || (*&self->_propertyMappingFlags & 1) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't modify an immutable property mapping." userInfo:{0, v2, v3}]);
  }
}

- (void)_setPropertyTransforms:(void *)result
{
  if (result)
  {
    v3 = result;
    result = [result _throwIfNotEditable];
    v4 = v3[3];
    if (v4 != a2)
    {

      result = a2;
      v3[3] = result;
    }
  }

  return result;
}

- (void)_setTransformValidations:(void *)result
{
  if (result)
  {
    v3 = result;
    result = [result _throwIfNotEditable];
    v4 = v3[2];
    if (v4 != a2)
    {

      result = a2;
      v3[2] = result;
    }
  }

  return result;
}

@end