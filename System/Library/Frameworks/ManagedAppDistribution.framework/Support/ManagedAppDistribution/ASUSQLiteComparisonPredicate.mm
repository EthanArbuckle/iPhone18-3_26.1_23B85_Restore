@interface ASUSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long;
+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation ASUSQLiteComparisonPredicate

+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long
{
  propertyCopy = property;
  v7 = [[NSNumber alloc] initWithLongLong:long];
  v8 = [self predicateWithProperty:propertyCopy equalToValue:v7];

  return v8;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type
{
  valueCopy = value;
  propertyCopy = property;
  v9 = objc_alloc_init(objc_opt_class());
  v9[2] = type;
  v10 = [propertyCopy copy];

  v11 = v9[1];
  v9[1] = v10;

  if ([valueCopy conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
  {
    v12 = [valueCopy copy];
  }

  else
  {
    v12 = valueCopy;
  }

  v13 = v9[3];
  v9[3] = v12;

  return v9;
}

- (void)applyBinding:(id)binding atIndex:(int *)index
{
  bindingCopy = binding;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [bindingCopy bindString:self->_value atPosition:*index];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [bindingCopy bindNumber:self->_value atPosition:*index];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [bindingCopy bindUUID:self->_value atPosition:*index];
      }
    }
  }

  ++*index;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  property = self->super._property;
  v6 = sub_100670ED8(self);
  v7 = [NSString stringWithFormat:@"<%@: %p> %@ %@ '%@'", v4, self, property, v6, self->_value];

  return v7;
}

- (unint64_t)hash
{
  property = [(ASUSQLitePropertyPredicate *)self property];
  v4 = [property hash];
  value = [(ASUSQLiteComparisonPredicate *)self value];
  v6 = [value hash];

  return v4 + v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = ASUSQLiteComparisonPredicate;
  if (-[ASUSQLitePropertyPredicate isEqual:](&v12, "isEqual:", equalCopy) && (v5 = -[ASUSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [equalCopy comparisonType]))
  {
    value = [(ASUSQLiteComparisonPredicate *)self value];
    value2 = [equalCopy value];
    if (value == value2)
    {
      v10 = 1;
    }

    else
    {
      value3 = [(ASUSQLiteComparisonPredicate *)self value];
      value4 = [equalCopy value];
      v10 = [value3 isEqual:value4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)SQLForEntityClass:(Class)class
{
  property = [(ASUSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  v7 = sub_100670ED8(self);
  v8 = [NSString stringWithFormat:@"%@ %@ ?", v6, v7];

  return v8;
}

@end