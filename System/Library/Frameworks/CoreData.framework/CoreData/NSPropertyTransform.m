@interface NSPropertyTransform
- (BOOL)isEqual:(id)a3;
- (NSPropertyTransform)initWithCoder:(id)a3;
- (NSPropertyTransform)initWithPropertyName:(id)a3 valueExpression:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPropertyTransform

- (NSPropertyTransform)initWithPropertyName:(id)a3 valueExpression:(id)a4
{
  v6 = [(NSPropertyTransform *)self init];
  v8 = v6;
  if (v6)
  {
    objc_setProperty_nonatomic(v6, v7, a3, 16);
    objc_setProperty_nonatomic(v8, v9, a4, 8);
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

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_valueExpression forKey:@"NSValueExpression"];
    [a3 encodeObject:self->_propertyName forKey:@"NSPropertyName"];
    [a3 encodeObject:self->_prerequisiteTransform forKey:@"NSPrerequisiteTransform"];
    replaceMissingValueOnly = self->_replaceMissingValueOnly;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"NSValueExpression"];
    [a3 encodeObject:0 forKey:@"NSPropertyName"];
    [a3 encodeObject:0 forKey:@"NSPrerequisiteTransform"];
    replaceMissingValueOnly = 0;
  }

  [a3 encodeBool:replaceMissingValueOnly forKey:@"NSReplaceMissingValueOnly"];
}

- (NSPropertyTransform)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSPropertyTransform;
  v4 = [(NSPropertyTransform *)&v7 init];
  if (v4)
  {
    v4->_replaceMissingValueOnly = [a3 decodeBoolForKey:@"NSReplaceMissingValueOnly"];
    v4->_prerequisiteTransform = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPrerequisiteTransform"];
    v4->_valueExpression = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSValueExpression"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSExpression *)v4->_valueExpression allowEvaluation];
    }

    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPropertyName"];
    v4->_propertyName = v5;
    if (v5 && ([(NSString *)v5 isNSString]& 1) == 0)
    {
      [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435508)}];

      return 0;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  if (!a3)
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
    if (!*(a3 + 2))
    {
      v7 = *(a3 + 1);
      if (!v7)
      {
        replaceMissingValueOnly = 0;
        if (*(a3 + 3))
        {
          return v7 & 1;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_22;
  }

  propertyName = self->_propertyName;
  v6 = *(a3 + 2);
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
  v9 = *(a3 + 1);
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
  v11 = *(a3 + 3);
  if (prerequisiteTransform == v11)
  {
LABEL_17:
    replaceMissingValueOnly = self->_replaceMissingValueOnly;
LABEL_18:
    LOBYTE(v7) = replaceMissingValueOnly ^ *(a3 + 32) ^ 1;
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