@interface SQLiteBetweenPredicate
+ (id)predicateWithProperty:(id)property lowerValue:(id)value upperValue:(id)upperValue;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)applyBinding:(id)binding atIndex:(int *)index;
- (void)applyBinding:(id)binding value:(id)value atIndex:(int *)index;
@end

@implementation SQLiteBetweenPredicate

+ (id)predicateWithProperty:(id)property lowerValue:(id)value upperValue:(id)upperValue
{
  valueCopy = value;
  upperValueCopy = upperValue;
  propertyCopy = property;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [propertyCopy copy];

  v12 = v10[1];
  v10[1] = v11;

  if ([valueCopy conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
  {
    v13 = [valueCopy copy];
  }

  else
  {
    v13 = valueCopy;
  }

  v14 = v10[3];
  v10[3] = v13;

  if ([upperValueCopy conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
  {
    v15 = [upperValueCopy copy];
  }

  else
  {
    v15 = upperValueCopy;
  }

  v16 = v10[4];
  v10[4] = v15;

  return v10;
}

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  v7.receiver = self;
  v7.super_class = SQLiteBetweenPredicate;
  bindingCopy = binding;
  [(SQLitePropertyPredicate *)&v7 applyBinding:bindingCopy atIndex:index];
  [(SQLiteBetweenPredicate *)self applyBinding:bindingCopy value:self->_lowerValue atIndex:index, v7.receiver, v7.super_class];
  [(SQLiteBetweenPredicate *)self applyBinding:bindingCopy value:self->_upperValue atIndex:index];
}

- (void)applyBinding:(id)binding value:(id)value atIndex:(int *)index
{
  bindingCopy = binding;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [bindingCopy bindString:valueCopy atPosition:*index];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [bindingCopy bindNumber:valueCopy atPosition:*index];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [bindingCopy bindUUID:valueCopy atPosition:*index];
      }
    }
  }

  ++*index;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p> %@ BETWEEN '%@' AND '%@'", v4, self, self->super._property, self->_lowerValue, self->_upperValue];

  return v5;
}

- (unint64_t)hash
{
  property = [(SQLitePropertyPredicate *)self property];
  v4 = [property hash];
  lowerValue = [(SQLiteBetweenPredicate *)self lowerValue];
  v6 = &v4[[lowerValue hash]];
  upperValue = [(SQLiteBetweenPredicate *)self upperValue];
  v8 = [upperValue hash];

  return v8 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = SQLiteBetweenPredicate;
  if ([(SQLitePropertyPredicate *)&v16 isEqual:equalCopy])
  {
    lowerValue = [(SQLiteBetweenPredicate *)self lowerValue];
    lowerValue2 = [equalCopy lowerValue];
    if (lowerValue == lowerValue2 || (-[SQLiteBetweenPredicate lowerValue](self, "lowerValue"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy lowerValue], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      upperValue = [(SQLiteBetweenPredicate *)self upperValue];
      upperValue2 = [equalCopy upperValue];
      v12 = upperValue2;
      if (upperValue == upperValue2)
      {

        v9 = 1;
      }

      else
      {
        upperValue3 = [(SQLiteBetweenPredicate *)self upperValue];
        upperValue4 = [equalCopy upperValue];
        v9 = [upperValue3 isEqual:upperValue4];
      }

      if (lowerValue == lowerValue2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)SQLForEntityClass:(Class)class
{
  v3 = [(SQLitePropertyPredicate *)self _transformedSQLForEntityClass:class];
  v4 = [NSString stringWithFormat:@"%@ BETWEEN ? AND ?", v3];

  return v4;
}

@end