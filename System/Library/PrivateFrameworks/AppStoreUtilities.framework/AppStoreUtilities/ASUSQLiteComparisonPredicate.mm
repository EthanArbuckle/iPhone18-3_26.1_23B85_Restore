@interface ASUSQLiteComparisonPredicate
+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (__CFString)_comparisonTypeString;
- (id)SQLForEntityClass:(Class)a3;
- (id)description;
- (unint64_t)hash;
- (void)applyBinding:(id)a3 atIndex:(int *)a4;
@end

@implementation ASUSQLiteComparisonPredicate

+ (id)predicateWithProperty:(id)a3 equalToLongLong:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [[v6 alloc] initWithLongLong:a4];
  v9 = [a1 predicateWithProperty:v7 equalToValue:v8];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparisonType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(objc_opt_class());
  v9[2] = a5;
  v10 = [v8 copy];

  v11 = v9[1];
  v9[1] = v10;

  if ([v7 conformsToProtocol:&unk_285218A80])
  {
    v12 = [v7 copy];
  }

  else
  {
    v12 = v7;
  }

  v13 = v9[3];
  v9[3] = v12;

  return v9;
}

- (void)applyBinding:(id)a3 atIndex:(int *)a4
{
  v11 = a3;
  value = self->_value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = self->_value;
  if (isKindOfClass)
  {
    [v11 bindString:self->_value atPosition:*a4];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v10 = self->_value;
    if (v9)
    {
      [v11 bindNumber:self->_value atPosition:*a4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 bindUUID:self->_value atPosition:*a4];
      }
    }
  }

  ++*a4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  property = self->super._property;
  v7 = [(ASUSQLiteComparisonPredicate *)self _comparisonTypeString];
  v8 = [v3 stringWithFormat:@"<%@: %p> %@ %@ '%@'", v5, self, property, v7, self->_value];

  return v8;
}

- (__CFString)_comparisonTypeString
{
  if (result)
  {
    v1 = [(__CFString *)result comparisonType];
    if ((v1 - 1) > 6)
    {
      return 0;
    }

    else
    {
      return off_278C97EB0[v1 - 1];
    }
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(ASUSQLitePropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(ASUSQLiteComparisonPredicate *)self value];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASUSQLiteComparisonPredicate;
  if (-[ASUSQLitePropertyPredicate isEqual:](&v12, sel_isEqual_, v4) && (v5 = -[ASUSQLiteComparisonPredicate comparisonType](self, "comparisonType"), v5 == [v4 comparisonType]))
  {
    v6 = [(ASUSQLiteComparisonPredicate *)self value];
    v7 = [v4 value];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(ASUSQLiteComparisonPredicate *)self value];
      v9 = [v4 value];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)SQLForEntityClass:(Class)a3
{
  v5 = [(ASUSQLitePropertyPredicate *)self property];
  v6 = [(objc_class *)a3 disambiguatedSQLForProperty:v5];

  v7 = MEMORY[0x277CCACA8];
  v8 = [(ASUSQLiteComparisonPredicate *)self _comparisonTypeString];
  v9 = [v7 stringWithFormat:@"%@ %@ ?", v6, v8];

  return v9;
}

@end