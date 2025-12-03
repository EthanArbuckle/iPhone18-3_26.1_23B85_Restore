@interface NSPropertyTransform
- (BOOL)isEqual:(id)equal;
- (NSPropertyTransform)initWithCoder:(id)coder;
- (NSPropertyTransform)initWithPropertyName:(id)name valueExpression:(id)expression;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPropertyTransform

- (NSPropertyTransform)initWithPropertyName:(id)name valueExpression:(id)expression
{
  v6 = [(NSPropertyTransform *)self init];
  v8 = v6;
  if (v6)
  {
    objc_setProperty_nonatomic(v6, v7, name, 16);
    objc_setProperty_nonatomic(v8, v9, expression, 8);
  }

  return v8;
}

- (void)dealloc
{
  self->_prerequisiteTransform = 0;

  self->_valueExpression = 0;
  self->_propertyName = 0;
  v3.receiver = self;
  v3.super_class = NSPropertyTransform;
  [(NSPropertyTransform *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_valueExpression forKey:@"NSValueExpression"];
    [coder encodeObject:self->_propertyName forKey:@"NSPropertyName"];
    [coder encodeObject:self->_prerequisiteTransform forKey:@"NSPrerequisiteTransform"];
    replaceMissingValueOnly = self->_replaceMissingValueOnly;
  }

  else
  {
    [coder encodeObject:0 forKey:@"NSValueExpression"];
    [coder encodeObject:0 forKey:@"NSPropertyName"];
    [coder encodeObject:0 forKey:@"NSPrerequisiteTransform"];
    replaceMissingValueOnly = 0;
  }

  [coder encodeBool:replaceMissingValueOnly forKey:@"NSReplaceMissingValueOnly"];
}

- (NSPropertyTransform)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NSPropertyTransform;
  v4 = [(NSPropertyTransform *)&v7 init];
  if (v4)
  {
    v4->_replaceMissingValueOnly = [coder decodeBoolForKey:@"NSReplaceMissingValueOnly"];
    v4->_prerequisiteTransform = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPrerequisiteTransform"];
    v4->_valueExpression = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSValueExpression"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSExpression *)v4->_valueExpression allowEvaluation];
    }

    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyName"];
    v4->_propertyName = v5;
    if (v5 && ([(NSString *)v5 isNSString]& 1) == 0)
    {
      [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435508)}];

      return 0;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if (!equal)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!self)
  {
    if (!*(equal + 2))
    {
      v7 = *(equal + 1);
      if (!v7)
      {
        replaceMissingValueOnly = 0;
        if (*(equal + 3))
        {
          return v7 & 1;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  propertyName = self->_propertyName;
  v6 = *(equal + 2);
  if (propertyName != v6)
  {
    LOBYTE(v7) = 0;
    if (!propertyName || !v6)
    {
      return v7 & 1;
    }

    if (([(NSString *)propertyName isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  valueExpression = self->_valueExpression;
  v9 = *(equal + 1);
  if (valueExpression != v9)
  {
    LOBYTE(v7) = 0;
    if (!valueExpression || !v9)
    {
      return v7 & 1;
    }

    if (([(NSExpression *)valueExpression isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  prerequisiteTransform = self->_prerequisiteTransform;
  v11 = *(equal + 3);
  if (prerequisiteTransform == v11)
  {
LABEL_17:
    replaceMissingValueOnly = self->_replaceMissingValueOnly;
LABEL_18:
    LOBYTE(v7) = replaceMissingValueOnly ^ *(equal + 32) ^ 1;
    return v7 & 1;
  }

  LOBYTE(v7) = 0;
  if (prerequisiteTransform && v11)
  {
    if ([(NSPropertyTransform *)prerequisiteTransform isEqual:?])
    {
      goto LABEL_17;
    }

LABEL_22:
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = @"NO";
  if (self)
  {
    valueExpression = self->_valueExpression;
    propertyName = self->_propertyName;
    prerequisiteTransform = self->_prerequisiteTransform;
    if (self->_replaceMissingValueOnly)
    {
      v6 = @"YES";
    }
  }

  else
  {
    valueExpression = 0;
    propertyName = 0;
    prerequisiteTransform = 0;
  }

  v10 = [v4 stringWithFormat:@"(%@), propertyName %@, valueExpression %@, prerequisiteTransform %@, replaceMissingValueOnly %@", v5, propertyName, valueExpression, prerequisiteTransform, v6];
  objc_autoreleasePoolPop(v3);

  return v10;
}

@end