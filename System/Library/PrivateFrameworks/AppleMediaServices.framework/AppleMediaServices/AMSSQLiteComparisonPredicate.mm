@interface AMSSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long;
+ (id)predicateWithProperty:(id)property value:(id)value comparisonType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)SQLForEntityClass:(Class)class;
- (id)_comparisonTypeString;
- (unint64_t)hash;
- (void)applyBinding:(id)binding atIndex:(int *)index;
@end

@implementation AMSSQLiteComparisonPredicate

+ (id)predicateWithProperty:(id)property equalToLongLong:(int64_t)long
{
  v6 = MEMORY[0x1E696AD98];
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

  if ([valueCopy conformsToProtocol:&unk_1F077B560])
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
  }

  ++*index;
}

- (unint64_t)hash
{
  property = [(AMSSQLitePropertyPredicate *)self property];
  v4 = [property hash];
  value = [(AMSSQLiteComparisonPredicate *)self value];
  v6 = [value hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = AMSSQLiteComparisonPredicate;
  if (-[AMSSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, equalCopy) && (v5 = -[AMSSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [equalCopy comparisonType]))
  {
    value = [(AMSSQLiteComparisonPredicate *)self value];
    value2 = [equalCopy value];
    if (value == value2)
    {
      v10 = 1;
    }

    else
    {
      value3 = [(AMSSQLiteComparisonPredicate *)self value];
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
  property = [(AMSSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)class disambiguatedSQLForProperty:property];

  v7 = MEMORY[0x1E696AEC0];
  _comparisonTypeString = [(AMSSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"%@ %@ ?", v6, _comparisonTypeString];

  return v9;
}

- (id)_comparisonTypeString
{
  comparisonType = [(AMSSQLiteComparisonPredicate *)self comparisonType];
  if ((comparisonType - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E73BC160[comparisonType - 1];
  }
}

@end