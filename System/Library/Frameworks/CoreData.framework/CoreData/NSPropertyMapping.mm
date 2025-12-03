@interface NSPropertyMapping
- (BOOL)isEqual:(id)equal;
- (NSPropertyMapping)initWithCoder:(id)coder;
- (id)_initWithDestinationName:(id)name valueExpression:(id)expression;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_setPropertyTransforms:(void *)result;
- (void)_setTransformValidations:(void *)result;
- (void)_throwIfNotEditable;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[4] = [(NSString *)self->_name copy];
    v4[5] = [(NSExpression *)self->_valueExpression copy];
    v4[6] = [(NSDictionary *)self->_userInfo copy];
    v4[3] = [(NSArray *)self->_propertyTransforms copy];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_25;
  }

  if (!equal || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(name2) = 0;
    return name2;
  }

  name = [(NSPropertyMapping *)self name];
  name2 = [equal name];
  if (name == name2 || (v7 = name2, LOBYTE(name2) = 0, name) && v7 && (LODWORD(name2) = [(NSString *)name isEqual:?], name2))
  {
    valueExpression = [(NSPropertyMapping *)self valueExpression];
    name2 = [equal valueExpression];
    if (valueExpression == name2 || (v9 = name2, LOBYTE(name2) = 0, valueExpression) && v9 && (LODWORD(name2) = [(NSExpression *)valueExpression isEqual:?], name2))
    {
      userInfo = [(NSPropertyMapping *)self userInfo];
      name2 = [equal userInfo];
      if (userInfo == name2 || (v11 = name2, LOBYTE(name2) = 0, userInfo) && v11 && (LODWORD(name2) = [(NSDictionary *)userInfo isEqual:?], name2))
      {
        if (self)
        {
          propertyTransforms = self->_propertyTransforms;
        }

        else
        {
          propertyTransforms = 0;
        }

        v13 = *(equal + 3);
        if (propertyTransforms != v13)
        {
          LOBYTE(name2) = 0;
          if (propertyTransforms && v13)
          {

            LOBYTE(name2) = [(NSArray *)propertyTransforms isEqual:?];
          }

          return name2;
        }

LABEL_25:
        LOBYTE(name2) = 1;
      }
    }
  }

  return name2;
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[NSPropertyMapping name](self forKey:{"name"), @"NSDestinationPropertyName"}];
  [coder encodeObject:-[NSPropertyMapping valueExpression](self forKey:{"valueExpression"), @"NSValueExpression"}];
  [coder encodeObject:-[NSPropertyMapping userInfo](self forKey:{"userInfo"), @"NSUserInfo"}];
  if (self)
  {
    propertyTransforms = self->_propertyTransforms;
  }

  else
  {
    propertyTransforms = 0;
  }

  [coder encodeObject:propertyTransforms forKey:@"NSPropertyTransforms"];
}

- (NSPropertyMapping)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = NSPropertyMapping;
  v4 = [(NSPropertyMapping *)&v9 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDestinationPropertyName"];
    v4->_name = v5;
    if (v5 && ([(NSString *)v5 isNSString]& 1) == 0)
    {
      [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4354E0)}];

      return 0;
    }

    else
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v4->_valueExpression = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSValueExpression"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSExpression *)v4->_valueExpression allowEvaluation];
      }

      v4->_userInfo = [coder decodeObjectOfClasses:+[_PFRoutines plistClassesForSecureCoding]() forKey:@"NSUserInfo"];
      v4->_propertyTransforms = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyTransforms"];
      *&v4->_propertyMappingFlags &= ~1u;
    }
  }

  return v4;
}

- (id)_initWithDestinationName:(id)name valueExpression:(id)expression
{
  v8.receiver = self;
  v8.super_class = NSPropertyMapping;
  v6 = [(NSPropertyMapping *)&v8 init];
  if (v6)
  {
    v6->_name = [name copy];
    v6->_valueExpression = [expression copy];
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