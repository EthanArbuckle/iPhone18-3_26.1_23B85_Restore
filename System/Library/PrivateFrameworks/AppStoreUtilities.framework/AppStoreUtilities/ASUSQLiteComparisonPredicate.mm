@interface ASUSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long;
+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (__CFString)_comparisonTypeString;
- (id)SQLForEntityClass:(Class)class;
- (id)description;
- (unint64_t)hash;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation ASUSQLiteComparisonPredicate

+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long
{
  v6 = MEMORY[0x277CCABB0];
  propertyCopy = property;
  v8 = [[v6 alloc] initWithLongLong:long];
  v9 = [self predicateWithProperty:propertyCopy equalToValue:v8];

  return v9;
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

  if ([valueCopy conformsToProtocol:&unk_285218A80])
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
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = self->_value;
  if (isKindOfClass)
  {
    [bindingCopy bindString:self->_value atPosition:*index];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v10 = self->_value;
    if (v9)
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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  property = self->super._property;
  _comparisonTypeString = [(ASUSQLiteComparisonPredicate *)self _comparisonTypeString];
  v8 = [v3 stringWithFormat:@"<%@: %p> %@ %@ '%@'", v5, self, property, _comparisonTypeString, self->_value];

  return v8;
}

- (__CFString)_comparisonTypeString
{
  if (result)
  {
    comparisonType = [(__CFString *)result comparisonType];
    if ((comparisonType - 1) > 6)
    {
      return 0;
    }

    else
    {
      return off_278C97EB0[comparisonType - 1];
    }
  }

  return result;
}

- (unint64_t)hash
{
  property = [(ASUSQLitePropertyPredicate *)self property];
  v4 = [property hash];
  value = [(ASUSQLiteComparisonPredicate *)self value];
  v6 = [value hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = ASUSQLiteComparisonPredicate;
  if (-[ASUSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, equalCopy) && (v5 = -[ASUSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [equalCopy comparisonType]))
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

  v7 = MEMORY[0x277CCACA8];
  _comparisonTypeString = [(ASUSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"%@ %@ ?", v6, _comparisonTypeString];

  return v9;
}

@end